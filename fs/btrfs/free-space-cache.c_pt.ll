; ModuleID = '/llk/IR_all_yes/fs/btrfs/free-space-cache.c_pt.bc'
source_filename = "../fs/btrfs/free-space-cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.btrfs_free_space_op = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_block_group = type { ptr, ptr, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.rw_semaphore, i32, i32, i8, i32, i32, ptr, i64, ptr, ptr, %struct.rb_node, %struct.list_head, %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, i32, i64, i64, i32, %struct.list_head, %struct.list_head, %struct.btrfs_io_ctl, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i8, i32, %struct.btrfs_full_stripe_locks_tree, i64, i64, i64, i64, ptr, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_io_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.86, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.86 = type { i64 }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.79 = type { ptr }
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_truncate_control = type { ptr, i64, i64, i64, i64, i64, i32, i8, i8 }
%struct.btrfs_transaction = type { i64, %struct.atomic_t, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.extent_io_tree, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.btrfs_delayed_ref_root, ptr, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.list_head }
%struct.btrfs_delayed_ref_root = type { %struct.rb_root_cached, %struct.rb_root, %struct.spinlock, %struct.atomic_t, i32, i32, i64, i32, i64, i64 }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.btrfs_free_space_ctl = type { %struct.spinlock, %struct.rb_root, %struct.rb_root_cached, i64, i32, i32, i32, i32, i64, [2 x i32], [2 x i64], ptr, ptr, %struct.mutex, %struct.list_head }
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
%struct.btrfs_free_space = type { %struct.rb_node, %struct.rb_node, i64, i64, i64, ptr, %struct.list_head, i32, i32 }
%struct.btrfs_trim_range = type { i64, i64, %struct.list_head }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.btrfs_free_space_entry = type <{ i64, i64, i8 }>
%struct.btrfs_space_info = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8, i32, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, %struct.rw_semaphore, [9 x %struct.list_head], %struct.kobject, [9 x ptr] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016Old style space inode found, converting.\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fs/btrfs/free-space-cache.c\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@btrfs_truncate_free_space_cache.__UNIQUE_ID_ddebug932 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.5, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"btrfs_truncate_free_space_cache\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014block group %llu has wrong amount of free space\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014failed to load free space cache for block group %llu, rebuilding it now\00", [54 x i8] zeroinitializer }, align 32
@btrfs_write_out_cache.__UNIQUE_ID_ddebug942 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.9, ptr @.str.1, ptr @.str.10, i8 1, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btrfs_write_out_cache\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"failed to write free space cache for block group %llu error %d\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017failed to write free space cache for block group %llu error %d\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"!btrfs_is_zoned(fs_info)\00", [39 x i8] zeroinitializer }, align 32
@btrfs_free_space_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\012unable to add free space :%d\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ret != -EEXIST\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016free space %llu active %d\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\012entry offset %llu, bytes %llu, bitmap %s\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016block group has cluster?: %s\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%d blocks of free space at or bigger than bytes is\00", [43 x i8] zeroinitializer }, align 32
@btrfs_init_free_space_ctl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctl->tree_lock\00", [16 x i8] zeroinitializer }, align 32
@free_space_op = internal constant { %struct.btrfs_free_space_op, [28 x i8] } { %struct.btrfs_free_space_op { ptr @use_bitmap }, [28 x i8] zeroinitializer }, align 32
@btrfs_init_free_space_ctl.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&ctl->cache_writeout_mutex\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"!btrfs_is_zoned(block_group->fs_info)\00", [58 x i8] zeroinitializer }, align 32
@btrfs_free_space_bitmap_cachep = external dso_local local_unnamed_addr global ptr, align 4
@btrfs_init_free_cluster.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cluster->lock\00", [17 x i8] zeroinitializer }, align 32
@btrfs_init_free_cluster.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&cluster->refill_lock\00", [42 x i8] zeroinitializer }, align 32
@btrfs_set_free_space_cache_v1_active.__UNIQUE_ID_ddebug980 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.28, ptr @.str.1, ptr @.str.5, i8 4, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"btrfs_set_free_space_cache_v1_active\00", [59 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016the free space cache file (%llu) is invalid, skip it\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013free space inode generation (%llu) did not match free space cache generation (%llu)\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Duplicate entries in free space cache, dumping\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"num_bitmaps\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013free space cache page truncated\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013error reading free space cache\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@io_ctl_check_crc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.io_ctl_check_crc = private unnamed_addr constant [17 x i8] c"io_ctl_check_crc\00", align 1
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013csum mismatch on free space cache\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"io_ctl->index < io_ctl->num_pages\00", [62 x i8] zeroinitializer }, align 32
@io_ctl_check_generation._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.io_ctl_check_generation = private unnamed_addr constant [24 x i8] c"io_ctl_check_generation\00", align 1
@.str.43 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013space cache generation (%llu) does not match inode (%llu)\00", [36 x i8] zeroinitializer }, align 32
@__btrfs_wait_cache_io.__UNIQUE_ID_ddebug941 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.1, ptr @.str.10, i8 1, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__btrfs_wait_cache_io\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"path->slots[0]\00", [17 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.48, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"added == 0\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"!info->bitmap\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RB_EMPTY_NODE(&info->offset_index)\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"offset >= bitmap_start\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"info->bytes || info->bitmap\00", [36 x i8] zeroinitializer }, align 32
@tree_insert_offset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tree_insert_offset.__already_done.54 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"entry->offset <= offset\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"end <= BITS_PER_BITMAP\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"info->bitmap\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ctl->total_bitmaps <= max_bitmaps\00", [62 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_find_cluster = external dso_local global %struct.tracepoint, align 4
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_btrfs_find_cluster.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"!ret\00", [27 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_setup_cluster = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_setup_cluster.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_btrfs_failed_cluster_setup = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_failed_cluster_setup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016cleaning free space cache v1\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 100]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 123, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 358, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1005, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1018, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1502, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2570, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2618, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2619, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2858, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2869, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2874, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2876, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2885, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"free_space_op\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2249, i32 41 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2892, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 3061, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 3599, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 3600, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 4105, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 271, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 766, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 773, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 825, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 831, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 471, i32 5 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 477, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 717, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 260, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 788, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 563, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 415, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 519, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1284, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1132, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3491, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2316, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2543, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 2544, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1524, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1785, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1720, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1829, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1806, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 696, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1251, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 108, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 3454, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private constant [31 x i8] c"../fs/btrfs/free-space-cache.c\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 4070, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @btrfs_init_free_space_ctl.__key, ptr @.str.21, ptr @free_space_op, ptr @btrfs_init_free_space_ctl.__key.22, ptr @.str.23, ptr @.str.24, ptr @btrfs_init_free_cluster.__key, ptr @.str.25, ptr @btrfs_init_free_cluster.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @io_ctl_check_crc._rs, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @io_ctl_check_generation._rs, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_free_space_ctl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_space_op to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_free_space_ctl.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_free_cluster.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_free_cluster.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_ctl_check_crc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_ctl_check_generation._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lookup_free_space_inode(ptr noundef %block_group, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.btrfs_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %inode2 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 1
  %2 = ptrtoint ptr %inode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %if.end7

if.end:                                           ; preds = %entry
  %call = tail call ptr @igrab(ptr noundef nonnull %3) #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.thread
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tree_root, align 4
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_info1.i, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #14
  %10 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %12 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  %13 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -11, ptr %key.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %7, ptr %11, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %10, align 8
  %call.i = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %5, ptr noundef nonnull %key.i, ptr noundef %path, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %16 = inttoptr i32 %call.i to ptr
  br label %__lookup_free_space_inode.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.not.i, label %if.end7.i, label %__lookup_free_space_inode.exit.thread

__lookup_free_space_inode.exit.thread:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_release_path(ptr noundef %path) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #14
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %path, align 4
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %19 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slots.i, align 4
  %mul.i.i.i.i = mul i32 %20, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %21 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %18, ptr noundef %21, i32 noundef 17) #14
  %add.i = add i32 %call.i.i.i, 101
  call void @read_extent_buffer(ptr noundef %18, ptr noundef nonnull %disk_key.i, i32 noundef %add.i, i32 noundef 17) #14
  %22 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %disk_key.i, align 8
  %24 = call i64 @llvm.bswap.i64(i64 %23) #14
  call void @btrfs_release_path(ptr noundef %path) #14
  %25 = call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %30, 262144
  %or.i.i = or i32 %30, 262144
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %sb.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %9, i32 0, i32 45
  %31 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sb.i, align 8
  %call12.i = call ptr @btrfs_iget_path(ptr noundef %32, i64 noundef %24, ptr noundef %5, ptr noundef %path) #14
  call void @btrfs_release_path(ptr noundef %path) #14
  %33 = call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i41.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i41.i to ptr
  %task.i42.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i42.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i42.i, align 8
  %flags1.i43.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %flags1.i43.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags1.i43.i, align 4
  %and.i44.i = and i32 %38, -262145
  %or.i45.i = or i32 %and.i44.i, %and.i.i
  store i32 %or.i45.i, ptr %flags1.i43.i, align 4
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end7.i.__lookup_free_space_inode.exit_crit_edge, label %if.end15.i

if.end7.i.__lookup_free_space_inode.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__lookup_free_space_inode.exit

if.end15.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call12.i, i32 0, i32 9
  %39 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_mapping.i, align 8
  %gfp_mask.i.i.i = getelementptr inbounds %struct.address_space, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %gfp_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gfp_mask.i.i.i, align 4
  %and.i46.i = and i32 %42, -131
  store i32 %and.i46.i, ptr %gfp_mask.i.i.i, align 4
  br label %__lookup_free_space_inode.exit

__lookup_free_space_inode.exit:                   ; preds = %if.end15.i, %if.end7.i.__lookup_free_space_inode.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %16, %if.then.i ], [ %call12.i, %if.end15.i ], [ %call12.i, %if.end7.i.__lookup_free_space_inode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #14
  %cmp.i49 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %__lookup_free_space_inode.exit.cleanup_crit_edge, label %if.end11

__lookup_free_space_inode.exit.cleanup_crit_edge: ; preds = %__lookup_free_space_inode.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %__lookup_free_space_inode.exit
  call void @_raw_spin_lock(ptr noundef %lock) #14
  %flags14 = getelementptr i8, ptr %retval.0.i, i32 -240
  %43 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags14, align 8
  %and = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %if.end11.if.end18_crit_edge, label %if.then15

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str) #17
  %45 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags14, align 8
  %or = or i32 %46, 3
  store i32 %or, ptr %flags14, align 8
  %disk_cache_state = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 18
  %47 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %disk_cache_state, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end11.if.end18_crit_edge
  %iref = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 17
  %48 = ptrtoint ptr %iref to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %iref, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool19.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %call21 = call ptr @igrab(ptr noundef %retval.0.i) #14
  %49 = ptrtoint ptr %inode2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call21, ptr %inode2, align 4
  %50 = ptrtoint ptr %iref to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load24 = load i8, ptr %iref, align 8
  %bf.set = or i8 %bf.load24, -128
  store i8 %bf.set, ptr %iref, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end18.if.end25_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %__lookup_free_space_inode.exit.cleanup_crit_edge, %__lookup_free_space_inode.exit.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %if.end25 ], [ %call, %if.end.cleanup_crit_edge ], [ %retval.0.i, %__lookup_free_space_inode.exit.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %__lookup_free_space_inode.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_free_space_inode(ptr noundef %trans, ptr nocapture noundef readonly %block_group, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i.i = alloca i32, align 4
  %batch.i.i = alloca %struct.btrfs_item_batch, align 4
  %key.i = alloca %struct.btrfs_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %ino = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ino) #14
  %0 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %ino, align 8, !annotation !149
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %1 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fs_info, align 4
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tree_root, align 4
  %call = call i32 @btrfs_get_free_objectid(ptr noundef %4, ptr noundef nonnull %ino) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fs_info, align 4
  %tree_root2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tree_root2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tree_root2, align 4
  %9 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ino, align 8
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #14
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %13 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  %call.i = call i32 @btrfs_insert_empty_inode(ptr noundef %trans, ptr noundef %8, ptr noundef %path, i64 noundef %10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.__create_free_space_inode.exit_crit_edge

if.end.__create_free_space_inode.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__create_free_space_inode.exit

if.end.i:                                         ; preds = %if.end
  %14 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %16 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %path, align 4
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %18 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slots.i, align 4
  %mul.i.i.i.i = mul i32 %19, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %20 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %17, ptr noundef %20, i32 noundef 17) #14
  %add.i = add i32 %call.i.i.i, 101
  %21 = inttoptr i32 %add.i to ptr
  %22 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slots.i, align 4
  %mul.i.i.i67.i = mul i32 %23, 25
  %add.i.i.i68.i = add i32 %mul.i.i.i67.i, 101
  call void @read_extent_buffer(ptr noundef %17, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i68.i, i32 noundef 17) #14
  call void @memzero_extent_buffer(ptr noundef %17, i32 noundef %add.i, i32 noundef 160) #14
  %24 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %17, ptr noundef %21, i32 noundef 0, i64 noundef %25) #14
  call void @btrfs_set_64(ptr noundef %17, ptr noundef %21, i32 noundef 16, i64 noundef 0) #14
  call void @btrfs_set_64(ptr noundef %17, ptr noundef %21, i32 noundef 24, i64 noundef 0) #14
  call void @btrfs_set_32(ptr noundef %17, ptr noundef %21, i32 noundef 44, i32 noundef 0) #14
  call void @btrfs_set_32(ptr noundef %17, ptr noundef %21, i32 noundef 48, i32 noundef 0) #14
  call void @btrfs_set_32(ptr noundef %17, ptr noundef %21, i32 noundef 52, i32 noundef 33152) #14
  call void @btrfs_set_64(ptr noundef %17, ptr noundef %21, i32 noundef 64, i64 noundef 27) #14
  call void @btrfs_set_32(ptr noundef %17, ptr noundef %21, i32 noundef 40, i32 noundef 1) #14
  %26 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %17, ptr noundef %21, i32 noundef 8, i64 noundef %27) #14
  call void @btrfs_set_64(ptr noundef %17, ptr noundef %21, i32 noundef 32, i64 noundef %12) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %17) #14
  call void @btrfs_release_path(ptr noundef %path) #14
  %28 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -11, ptr %key.i, align 8
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %12, ptr %14, align 1
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i.i) #14
  %31 = ptrtoint ptr %data_size.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 41, ptr %data_size.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i.i) #14
  %32 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 1
  %33 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 2
  %34 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %batch.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %key.i, ptr %batch.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %data_size.addr.i.i, ptr %32, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 41, ptr %33, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %34, align 4
  %call.i.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %8, ptr noundef %path, ptr noundef nonnull %batch.i.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end9.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %path, align 4
  %41 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slots.i, align 4
  %mul.i.i.i69.i = mul i32 %42, 25
  %add.i.i.i70.i = add i32 %mul.i.i.i69.i, 101
  %43 = inttoptr i32 %add.i.i.i70.i to ptr
  %call.i.i71.i = call i32 @btrfs_get_32(ptr noundef %40, ptr noundef %43, i32 noundef 17) #14
  %add15.i = add i32 %call.i.i71.i, 101
  call void @memzero_extent_buffer(ptr noundef %40, i32 noundef %add15.i, i32 noundef 41) #14
  call void @write_extent_buffer(ptr noundef %40, ptr noundef nonnull %disk_key.i, i32 noundef %add15.i, i32 noundef 17) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %40) #14
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end9.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ 0, %if.end9.i ], [ %call.i.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  call void @btrfs_release_path(ptr noundef %path) #14
  br label %__create_free_space_inode.exit

__create_free_space_inode.exit:                   ; preds = %cleanup.sink.split.i, %if.end.__create_free_space_inode.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.__create_free_space_inode.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #14
  br label %cleanup

cleanup:                                          ; preds = %__create_free_space_inode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__create_free_space_inode.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_free_objectid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_remove_free_space_inode(ptr noundef %trans, ptr noundef %inode, ptr noundef %block_group) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = call ptr @memset(ptr %key, i32 255, i32 17)
  %call = tail call ptr @btrfs_alloc_path() #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %inode, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call ptr @lookup_free_space_inode(ptr noundef %block_group, ptr noundef nonnull %call)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %inode.addr.0 = phi ptr [ %inode, %if.end.if.end4_crit_edge ], [ %call3, %if.then2 ]
  %cmp.i = icmp ugt ptr %inode.addr.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %inode.addr.0 to i32
  %cmp.not = icmp eq ptr %inode.addr.0, inttoptr (i32 -2 to ptr)
  %spec.select = select i1 %cmp.not, i32 0, i32 %3
  br label %out

if.end11:                                         ; preds = %if.end4
  %add.ptr.i = getelementptr i8, ptr %inode.addr.0, i32 -864
  %call13 = tail call i32 @btrfs_orphan_add(ptr noundef %trans, ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_add_delayed_iput(ptr noundef %inode.addr.0) #14
  br label %out

if.end16:                                         ; preds = %if.end11
  tail call void @clear_nlink(ptr noundef %inode.addr.0) #14
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %iref = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 17
  %4 = ptrtoint ptr %iref to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %iref, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool17.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear = and i8 %bf.load, 127
  %5 = ptrtoint ptr %iref to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.clear, ptr %iref, align 8
  %inode21 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 1
  %6 = ptrtoint ptr %inode21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %inode21, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  tail call void @iput(ptr noundef %inode.addr.0) #14
  br label %if.end24

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then18
  tail call void @btrfs_add_delayed_iput(ptr noundef %inode.addr.0) #14
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -11, ptr %key, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %0, align 8
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %1, align 1
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %12 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs_info, align 4
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tree_root, align 4
  %call25 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %15, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef -1, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %16 = call i32 @llvm.smin.i32(i32 %call25, i32 0)
  br label %out

if.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fs_info, align 4
  %tree_root33 = getelementptr inbounds %struct.btrfs_fs_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %tree_root33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tree_root33, align 4
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slots.i, align 4
  %call.i = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %20, ptr noundef nonnull %call, i32 noundef %22, i32 noundef 1) #14
  br label %out

out:                                              ; preds = %if.end31, %if.then27, %if.then15, %if.then6
  %ret.0 = phi i32 [ %call13, %if.then15 ], [ %16, %if.then27 ], [ %call.i, %if.end31 ], [ %spec.select, %if.then6 ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_orphan_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_add_delayed_iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_trunc_cache_free_space(ptr nocapture noundef readonly %fs_info, ptr noundef %rsv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %0 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nodesize.i, align 8
  %conv.i = zext i32 %1 to i64
  %add = mul nuw nsw i64 %conv.i, 24
  %lock = getelementptr inbounds %struct.btrfs_block_rsv, ptr %rsv, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %reserved = getelementptr inbounds %struct.btrfs_block_rsv, ptr %rsv, i32 0, i32 1
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %add)
  %cmp = icmp ult i64 %3, %add
  %. = select i1 %cmp, i32 -28, i32 0
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_truncate_free_space_cache(ptr noundef %trans, ptr noundef %block_group, ptr noundef %vfs_inode) local_unnamed_addr #0 align 64 {
entry:
  %control = alloca %struct.btrfs_truncate_control, align 8
  %cached_state = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %control) #14
  %0 = call ptr @memset(ptr %control, i32 255, i32 56)
  %add.ptr.i = getelementptr i8, ptr %vfs_inode, i32 -864
  %1 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr.i, ptr %control, align 8
  %new_size = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 1
  %last_size = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 3
  %sub_bytes = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 4
  %ino = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 5
  %location.i = getelementptr i8, ptr %vfs_inode, i32 -860
  %2 = call ptr @memset(ptr %new_size, i32 0, i32 32)
  %3 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not.i = icmp eq i64 %4, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr i8, ptr %vfs_inode, i32 -852
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %6)
  %cmp.i = icmp eq i8 %6, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i_ino.i = getelementptr i8, ptr %vfs_inode, i32 40
  %7 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %8 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %4, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %9 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %ino.0.i, ptr %ino, align 8
  %min_type = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 6
  %10 = ptrtoint ptr %min_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 108, ptr %min_type, align 8
  %skip_ref_updates = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 7
  %11 = ptrtoint ptr %skip_ref_updates to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %skip_ref_updates, align 4
  %clear_extent_range = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 8
  %12 = ptrtoint ptr %clear_extent_range to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %clear_extent_range, align 1
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cached_state) #14
  %15 = ptrtoint ptr %cached_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cached_state, align 4
  %tobool.not = icmp eq ptr %block_group, null
  br i1 %tobool.not, label %btrfs_ino.exit.if.end16_crit_edge, label %if.then

btrfs_ino.exit.if.end16_crit_edge:                ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then:                                          ; preds = %btrfs_ino.exit
  %call6 = tail call ptr @btrfs_alloc_path() #14
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then.do.body_crit_edge, label %if.end

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end:                                           ; preds = %if.then
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %16 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transaction, align 4
  %cache_write_mutex = getelementptr inbounds %struct.btrfs_transaction, ptr %17, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %cache_write_mutex, i32 noundef 0) #14
  %io_list = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 37
  %18 = ptrtoint ptr %io_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %io_list, align 4
  %cmp.i125.not = icmp eq ptr %19, %io_list
  br i1 %cmp.i125.not, label %if.end.cleanup.thread_crit_edge, label %if.then11

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.then11:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del_init.exit_crit_edge

if.then11.list_del_init.exit_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 37, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %io_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then11.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %io_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %io_list, ptr %io_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 37, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %io_list, ptr %prev.i3.i, align 4
  %28 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %block_group, align 8
  %tree_root.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %tree_root.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tree_root.i, align 4
  %io_ctl.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38
  %start.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %32 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %start.i, align 8
  %call.i = tail call fastcc i32 @__btrfs_wait_cache_io(ptr noundef %31, ptr noundef %trans, ptr noundef nonnull %block_group, ptr noundef %io_ctl.i, ptr noundef nonnull %call6, i64 noundef %33) #14
  tail call void @btrfs_put_block_group(ptr noundef nonnull %block_group) #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %list_del_init.exit, %if.end.cleanup.thread_crit_edge
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %disk_cache_state = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 18
  %34 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %disk_cache_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  tail call void @btrfs_free_path(ptr noundef nonnull %call6) #14
  br label %if.end16

if.end16:                                         ; preds = %cleanup.thread, %btrfs_ino.exit.if.end16_crit_edge
  %35 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %39 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i, label %if.end16.btrfs_i_size_write.exit_crit_edge, label %land.lhs.true.i.i.i

if.end16.btrfs_i_size_write.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_i_size_write.exit

land.lhs.true.i.i.i:                              ; preds = %if.end16
  %40 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !151
  %44 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i3.i.i = add i32 %49, ptrtoint (ptr @lockdep_recursion to i32)
  %50 = inttoptr i32 %add.i3.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !152
  %53 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i7.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool20.not.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.btrfs_i_size_write.exit_crit_edge

land.lhs.true.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_i_size_write.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %57 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i4.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i4.i.i to ptr
  %preempt_count.i.i5.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.btrfs_i_size_write.exit_crit_edge

land.rhs.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_i_size_write.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %61 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i9.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %64, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !153
  %65 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %68, ptrtoint (ptr @hardirqs_enabled to i32)
  %69 = inttoptr i32 %add47.i.i.i to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !154
  %72 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i12.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool54.not.i.i.i = icmp eq i32 %71, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.btrfs_i_size_write.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_i_size_write.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.btrfs_i_size_write.exit_crit_edge, label %if.then.i.i.i, !prof !155

land.rhs58.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_i_size_write.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %btrfs_i_size_write.exit

btrfs_i_size_write.exit:                          ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.btrfs_i_size_write.exit_crit_edge, %land.rhs22.i.i.i.btrfs_i_size_write.exit_crit_edge, %land.rhs.i.i.i.btrfs_i_size_write.exit_crit_edge, %land.lhs.true.i.i.i.btrfs_i_size_write.exit_crit_edge, %if.end16.btrfs_i_size_write.exit_crit_edge
  %i_size_seqcount.i.i = getelementptr i8, ptr %vfs_inode, i32 168
  %76 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i.i = add i32 %77, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !156
  %dep_map.i.i.i.i = getelementptr i8, ptr %vfs_inode, i32 172
  %78 = tail call ptr @llvm.returnaddress(i32 0) #14
  %79 = ptrtoint ptr %78 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %79) #14
  %i_size8.i.i = getelementptr i8, ptr %vfs_inode, i32 56
  %80 = ptrtoint ptr %i_size8.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 0, ptr %i_size8.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %79) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !157
  %81 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i = add i32 %82, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !158
  %83 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i1.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %86, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  %disk_i_size.i = getelementptr i8, ptr %vfs_inode, i32 -288
  %87 = ptrtoint ptr %disk_i_size.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 0, ptr %disk_i_size.i, align 8
  tail call void @truncate_pagecache(ptr noundef %vfs_inode, i64 noundef 0) #14
  %io_tree = getelementptr i8, ptr %vfs_inode, i32 -736
  %call17 = call i32 @lock_extent_bits(ptr noundef %io_tree, i64 noundef 0, i64 noundef -1, ptr noundef nonnull %cached_state) #14
  call void @btrfs_drop_extent_cache(ptr noundef %add.ptr.i, i64 noundef 0, i64 noundef -1, i32 noundef 0) #14
  %call18 = call i32 @btrfs_truncate_inode_items(ptr noundef %trans, ptr noundef %14, ptr noundef nonnull %control) #14
  %88 = ptrtoint ptr %sub_bytes to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %sub_bytes, align 8
  call void @inode_sub_bytes(ptr noundef %vfs_inode, i64 noundef %89) #14
  %90 = ptrtoint ptr %last_size to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %last_size, align 8
  call void @btrfs_inode_safe_disk_i_size_write(ptr noundef %add.ptr.i, i64 noundef %91) #14
  %call.i126 = call i32 @__clear_extent_bit(ptr noundef %io_tree, i64 noundef 0, i64 noundef -1, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %cached_state, i32 noundef 3136, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool24.not = icmp eq i32 %call18, 0
  br i1 %tobool24.not, label %if.end26, label %fail

if.end26:                                         ; preds = %btrfs_i_size_write.exit
  %call27 = call i32 @btrfs_update_inode(ptr noundef %trans, ptr noundef %14, ptr noundef %add.ptr.i) #14
  br i1 %tobool.not, label %if.end26.if.end32_crit_edge, label %if.end26.if.then29_crit_edge

if.end26.if.then29_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

fail:                                             ; preds = %btrfs_i_size_write.exit
  br i1 %tobool.not, label %fail.do.body_crit_edge, label %fail.if.then29_crit_edge

fail.if.then29_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

fail.do.body_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then29:                                        ; preds = %fail.if.then29_crit_edge, %if.end26.if.then29_crit_edge
  %ret.1135 = phi i32 [ %call27, %if.end26.if.then29_crit_edge ], [ %call18, %fail.if.then29_crit_edge ]
  %transaction30 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %92 = ptrtoint ptr %transaction30 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %transaction30, align 4
  %cache_write_mutex31 = getelementptr inbounds %struct.btrfs_transaction, ptr %93, i32 0, i32 19
  call void @mutex_unlock(ptr noundef %cache_write_mutex31) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %ret.1132 = phi i32 [ %ret.1135, %if.then29 ], [ %call27, %if.end26.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1132)
  %tobool33.not = icmp eq i32 %ret.1132, 0
  br i1 %tobool33.not, label %if.end32.cleanup78_crit_edge, label %if.end32.do.body_crit_edge

if.end32.do.body_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end32.cleanup78_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup78

do.body:                                          ; preds = %if.end32.do.body_crit_edge, %fail.do.body_crit_edge, %if.then.do.body_crit_edge
  %ret.1132138 = phi i32 [ %ret.1132, %if.end32.do.body_crit_edge ], [ %call18, %fail.do.body_crit_edge ], [ -12, %if.then.do.body_crit_edge ]
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %94 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fs_info, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %95, i32 0, i32 149
  %call35 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %do.body.if.end74_crit_edge

do.body.if.end74_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then37:                                        ; preds = %do.body
  %96 = zext i32 %ret.1132138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.1132138, label %do.end [
    i32 -5, label %if.then37.do.body58_crit_edge
    i32 -30, label %if.then37.do.body58_crit_edge140
  ]

if.then37.do.body58_crit_edge140:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body58

if.then37.do.body58_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body58

do.end:                                           ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 358, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %ret.1132138) #14
  br label %if.end74

do.body58:                                        ; preds = %if.then37.do.body58_crit_edge, %if.then37.do.body58_crit_edge140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_truncate_free_space_cache.__UNIQUE_ID_ddebug932, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_truncate_free_space_cache, %if.then68)) #14
          to label %if.end74 [label %if.then68], !srcloc !159

if.then68:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fs_info, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %98, ptr noundef nonnull @.str.6, i32 noundef %ret.1132138) #17
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %do.body58, %do.end, %do.body.if.end74_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.4, i32 noundef 358, i32 noundef %ret.1132138) #17
  br label %cleanup78

cleanup78:                                        ; preds = %if.end74, %if.end32.cleanup78_crit_edge
  %ret.1134 = phi i32 [ 0, %if.end32.cleanup78_crit_edge ], [ %ret.1132138, %if.end74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %control) #14
  ret i32 %ret.1134
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_wait_cache_io(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tree_root, align 4
  %io_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %call = tail call fastcc i32 @__btrfs_wait_cache_io(ptr noundef %3, ptr noundef %trans, ptr noundef %block_group, ptr noundef %io_ctl, ptr noundef %path, i64 noundef %5)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_block_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_extent_bits(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_drop_extent_cache(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_truncate_inode_items(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_sub_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_inode_safe_disk_i_size_write(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_update_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @load_free_space_cache(ptr noundef %block_group) local_unnamed_addr #0 align 64 {
entry:
  %offset3.i = alloca i64, align 8
  %bytes5.i = alloca i64, align 8
  %ractl.i.i.i = alloca %struct.readahead_control, align 4
  %ra.i.i = alloca %struct.file_ra_state, align 8
  %io_ctl.i = alloca %struct.btrfs_io_ctl, align 4
  %key.i = alloca %struct.btrfs_key, align 8
  %bitmaps.i = alloca %struct.list_head, align 4
  %type.i = alloca i8, align 1
  %tmp_ctl = alloca %struct.btrfs_free_space_ctl, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_space_ctl, align 4
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %tmp_ctl) #14
  %4 = call ptr @memset(ptr %tmp_ctl, i32 0, i32 224)
  %used2 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 7
  %5 = ptrtoint ptr %used2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %used2, align 8
  call void @__raw_spin_lock_init(ptr noundef nonnull %tmp_ctl, ptr noundef nonnull @.str.21, ptr noundef nonnull @btrfs_init_free_space_ctl.__key, i16 noundef signext 3) #14
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  %7 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sectorsize.i, align 4
  %unit.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 7
  %9 = ptrtoint ptr %unit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %unit.i, align 4
  %start.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %10 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start.i, align 8
  %start2.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 8
  %12 = ptrtoint ptr %start2.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %start2.i, align 8
  %block_group3.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 12
  %13 = ptrtoint ptr %block_group3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %block_group, ptr %block_group3.i, align 4
  %op.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 11
  %14 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @free_space_op, ptr %op.i, align 8
  %free_space_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 2
  %15 = ptrtoint ptr %free_space_bytes.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %free_space_bytes.i, align 8
  %.compoundliteral.sroa.2.0.free_space_bytes.sroa_idx.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %.compoundliteral.sroa.2.0.free_space_bytes.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %.compoundliteral.sroa.2.0.free_space_bytes.sroa_idx.i, align 4
  %trimming_ranges.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 14
  %17 = ptrtoint ptr %trimming_ranges.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %trimming_ranges.i, ptr %trimming_ranges.i, align 4
  %prev.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %trimming_ranges.i, ptr %prev.i.i, align 8
  %cache_writeout_mutex.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 13
  call void @__mutex_init(ptr noundef %cache_writeout_mutex.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @btrfs_init_free_space_ctl.__key.22) #14
  %extents_thresh.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 4
  %19 = ptrtoint ptr %extents_thresh.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 227, ptr %extents_thresh.i, align 8
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock) #14
  %disk_cache_state = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 18
  %20 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %disk_cache_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not = icmp eq i32 %21, 0
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @btrfs_alloc_path() #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %search_commit_root = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 5
  %22 = ptrtoint ptr %search_commit_root to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %search_commit_root, align 2
  %bf.set9 = or i8 %bf.load, 48
  store i8 %bf.set9, ptr %search_commit_root, align 2
  %call10 = call ptr @lookup_free_space_inode(ptr noundef %block_group, ptr noundef nonnull %call)
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_free_path(ptr noundef nonnull %call) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @_raw_spin_lock(ptr noundef %lock) #14
  %23 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %disk_cache_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp16.not = icmp eq i32 %24, 0
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  br i1 %cmp16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_free_path(ptr noundef nonnull %call) #14
  br label %if.end41

if.end19:                                         ; preds = %if.end13
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tree_root, align 4
  %27 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start.i, align 8
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %26, i32 0, i32 8
  %29 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fs_info1.i, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %io_ctl.i) #14
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bitmaps.i) #14
  %31 = getelementptr inbounds %struct.list_head, ptr %bitmaps.i, i32 0, i32 1
  %32 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %bitmaps.i, ptr %bitmaps.i, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %bitmaps.i, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.i) #14
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %type.i, align 1, !annotation !149
  %call.i = call fastcc i64 @i_size_read(ptr noundef %call10) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %tobool.not.i = icmp eq i64 %call.i, 0
  br i1 %tobool.not.i, label %if.end19.__load_free_space_cache.exit.thread_crit_edge, label %if.end.i

if.end19.__load_free_space_cache.exit.thread_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %__load_free_space_cache.exit.thread

if.end.i:                                         ; preds = %if.end19
  %35 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %36 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %37 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -11, ptr %key.i, align 8
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %28, ptr %35, align 1
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %36, align 8
  %call4.i = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %26, ptr noundef nonnull %key.i, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i87 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i87, label %if.end.i.__load_free_space_cache.exit.thread_crit_edge, label %if.else.i

if.end.i.__load_free_space_cache.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__load_free_space_cache.exit.thread

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp6.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp6.not.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_release_path(ptr noundef nonnull %call) #14
  br label %__load_free_space_cache.exit.thread

if.end9.i:                                        ; preds = %if.else.i
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call, align 4
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %42 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slots.i, align 4
  %mul.i.i.i.i = mul i32 %43, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %44 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %41, ptr noundef %44, i32 noundef 17) #14
  %add.i = add i32 %call.i.i.i, 101
  %45 = inttoptr i32 %add.i to ptr
  %call.i.i = call i64 @btrfs_get_64(ptr noundef %41, ptr noundef %45, i32 noundef 25) #14
  %call.i177.i = call i64 @btrfs_get_64(ptr noundef %41, ptr noundef %45, i32 noundef 33) #14
  %call.i178.i = call i64 @btrfs_get_64(ptr noundef %41, ptr noundef %45, i32 noundef 17) #14
  call void @btrfs_release_path(ptr noundef nonnull %call) #14
  %generation16.i = getelementptr i8, ptr %call10, i32 -344
  %46 = ptrtoint ptr %generation16.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %generation16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool17.not.i = icmp eq i64 %47, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end19.i

if.then18.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %30, ptr noundef nonnull @.str.30, i64 noundef %28) #17
  br label %__load_free_space_cache.exit.thread

if.end19.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %call.i178.i)
  %cmp22.not.i = icmp eq i64 %47, %call.i178.i
  br i1 %cmp22.not.i, label %if.end26.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %30, ptr noundef nonnull @.str.31, i64 noundef %47, i64 noundef %call.i178.i) #17
  br label %__load_free_space_cache.exit.thread

if.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %tobool27.not.i = icmp eq i64 %call.i.i, 0
  br i1 %tobool27.not.i, label %if.end26.i.__load_free_space_cache.exit.thread_crit_edge, label %if.end29.i

if.end26.i.__load_free_space_cache.exit.thread_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__load_free_space_cache.exit.thread

if.end29.i:                                       ; preds = %if.end26.i
  %call.i181.i = call fastcc i64 @i_size_read(ptr noundef %call10) #14
  %sub.i.i = add i64 %call.i181.i, 4095
  %div.i.i = sdiv i64 %sub.i.i, 4096
  %conv.i.i = trunc i64 %div.i.i to i32
  %48 = call ptr @memset(ptr %io_ctl.i, i32 0, i32 44)
  %49 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv.i.i, i32 4) #14
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %if.end29.i.__load_free_space_cache.exit.thread_crit_edge, label %if.end7.i.i.i.i, !prof !160

if.end29.i.__load_free_space_cache.exit.thread_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__load_free_space_cache.exit.thread

if.end7.i.i.i.i:                                  ; preds = %if.end29.i
  %51 = extractvalue { i32, i1 } %49, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %51, i32 noundef 3392) #18
  %pages.i.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl.i, i32 0, i32 3
  %52 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call8.i.i.i.i, ptr %pages.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end7.i.i.i.i.__load_free_space_cache.exit.thread_crit_edge, label %if.end33.i

if.end7.i.i.i.i.__load_free_space_cache.exit.thread_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__load_free_space_cache.exit.thread

if.end33.i:                                       ; preds = %if.end7.i.i.i.i
  %num_pages8.i.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl.i, i32 0, i32 8
  %53 = ptrtoint ptr %num_pages8.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv.i.i, ptr %num_pages8.i.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 8
  %54 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 33
  %56 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl.i, i32 0, i32 4
  %58 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %fs_info.i.i, align 4
  %inode10.i.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl.i, i32 0, i32 5
  %59 = ptrtoint ptr %inode10.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call10, ptr %inode10.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ra.i.i) #14
  %60 = call ptr @memset(ptr %ra.i.i, i32 255, i32 32)
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %call10, i32 0, i32 9
  %61 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_mapping.i.i, align 8
  call void @file_ra_state_init(ptr noundef nonnull %ra.i.i, ptr noundef %62) #14
  %call.i182.i = call fastcc i64 @i_size_read(ptr noundef %call10) #14
  %sub.i183.i = add i64 %call.i182.i, 17592186044415
  %63 = lshr i64 %sub.i183.i, 12
  %conv.i184.i = trunc i64 %63 to i32
  %64 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_mapping.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ractl.i.i.i) #14
  %66 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i.i.i, i32 0, i32 1
  %67 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i.i.i, i32 0, i32 2
  %68 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i.i.i, i32 0, i32 3
  %69 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i.i.i, i32 0, i32 4
  %70 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i.i.i, i32 0, i32 5
  %71 = ptrtoint ptr %ractl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %ractl.i.i.i, align 4
  %72 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %65, ptr %66, align 4
  %73 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %ra.i.i, ptr %67, align 4
  %74 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %68, align 4
  %75 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %69, align 4
  %76 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %70, align 4
  call void @page_cache_sync_ra(ptr noundef nonnull %ractl.i.i.i, i32 noundef %conv.i184.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ractl.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ra.i.i) #14
  %call34.i = call fastcc i32 @io_ctl_prepare_pages(ptr noundef nonnull %io_ctl.i, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.__load_free_space_cache.exit_crit_edge

if.end33.i.__load_free_space_cache.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__load_free_space_cache.exit

if.end37.i:                                       ; preds = %if.end33.i
  %call38.i = call fastcc i32 @io_ctl_check_crc(ptr noundef nonnull %io_ctl.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end37.i.free_cache.i_crit_edge

if.end37.i.free_cache.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cache.i

if.end41.i:                                       ; preds = %if.end37.i
  %call42.i = call fastcc i32 @io_ctl_check_generation(ptr noundef nonnull %io_ctl.i, i64 noundef %call.i178.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %while.body.lr.ph.i, label %if.end41.i.free_cache.i_crit_edge

if.end41.i.free_cache.i_crit_edge:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cache.i

while.body.lr.ph.i:                               ; preds = %if.end41.i
  %total_bitmaps.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %if.end81.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %num_bitmaps.0207.i = phi i64 [ %call.i177.i, %while.body.lr.ph.i ], [ %num_bitmaps.1.i, %if.end81.i.while.body.i_crit_edge ]
  %num_entries.0206.i = phi i64 [ %call.i.i, %while.body.lr.ph.i ], [ %dec82.i, %if.end81.i.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %77 = load ptr, ptr @btrfs_free_space_cachep, align 4
  %call.i185.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %77, i32 noundef 3392) #14
  %tobool48.not.i = icmp eq ptr %call.i185.i, null
  br i1 %tobool48.not.i, label %while.body.i.free_cache.i_crit_edge, label %if.end50.i

while.body.i.free_cache.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cache.i

if.end50.i:                                       ; preds = %while.body.i
  %call51.i = call fastcc i32 @io_ctl_read_entry(ptr noundef nonnull %io_ctl.i, ptr noundef nonnull %call.i185.i, ptr noundef nonnull %type.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %if.end50.i.free_cache.sink.split.i_crit_edge

if.end50.i.free_cache.sink.split.i_crit_edge:     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cache.sink.split.i

if.end54.i:                                       ; preds = %if.end50.i
  %bytes.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i185.i, i32 0, i32 3
  %78 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %tobool55.not.i = icmp eq i64 %79, 0
  br i1 %tobool55.not.i, label %if.end54.i.free_cache.sink.split.i_crit_edge, label %if.end57.i

if.end54.i.free_cache.sink.split.i_crit_edge:     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cache.sink.split.i

if.end57.i:                                       ; preds = %if.end54.i
  %80 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %81)
  %cmp58.i = icmp eq i8 %81, 1
  br i1 %cmp58.i, label %if.then60.i, label %if.else66.i

if.then60.i:                                      ; preds = %if.end57.i
  call void @_raw_spin_lock(ptr noundef nonnull %tmp_ctl) #14
  %call61.i = call fastcc i32 @link_free_space(ptr noundef nonnull %tmp_ctl, ptr noundef nonnull %call.i185.i) #14
  call void @_raw_spin_unlock(ptr noundef nonnull %tmp_ctl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool63.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool63.not.i, label %if.then60.i.if.end81.i_crit_edge, label %if.then60.i.free_cache.sink.split.sink.split.i_crit_edge

if.then60.i.free_cache.sink.split.sink.split.i_crit_edge: ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cache.sink.split.sink.split.i

if.then60.i.if.end81.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81.i

if.else66.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %num_bitmaps.0207.i)
  %tobool67.not.i = icmp eq i64 %num_bitmaps.0207.i, 0
  br i1 %tobool67.not.i, label %cond.false.i, label %cond.end.i, !prof !160

cond.false.i:                                     ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.33, i32 noundef 831) #19
  unreachable

cond.end.i:                                       ; preds = %if.else66.i
  %dec.i = add i64 %num_bitmaps.0207.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_bitmap_cachep to i32))
  %82 = load ptr, ptr @btrfs_free_space_bitmap_cachep, align 4
  %call.i186.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %82, i32 noundef 3392) #14
  %bitmap.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i185.i, i32 0, i32 5
  %83 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i186.i, ptr %bitmap.i, align 8
  %tobool72.not.i = icmp eq ptr %call.i186.i, null
  br i1 %tobool72.not.i, label %cond.end.i.free_cache.sink.split.i_crit_edge, label %if.end74.i

cond.end.i.free_cache.sink.split.i_crit_edge:     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cache.sink.split.i

if.end74.i:                                       ; preds = %cond.end.i
  call void @_raw_spin_lock(ptr noundef nonnull %tmp_ctl) #14
  %call76.i = call fastcc i32 @link_free_space(ptr noundef nonnull %tmp_ctl, ptr noundef nonnull %call.i185.i) #14
  %84 = ptrtoint ptr %total_bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %total_bitmaps.i, align 8
  %inc.i = add i32 %85, 1
  store i32 %inc.i, ptr %total_bitmaps.i, align 8
  call fastcc void @recalculate_thresholds(ptr noundef nonnull %tmp_ctl) #14
  call void @_raw_spin_unlock(ptr noundef nonnull %tmp_ctl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool78.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool78.not.i, label %if.end80.i, label %if.end74.i.free_cache.sink.split.sink.split.i_crit_edge

if.end74.i.free_cache.sink.split.sink.split.i_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cache.sink.split.sink.split.i

if.end80.i:                                       ; preds = %if.end74.i
  %list.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i185.i, i32 0, i32 6
  %86 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %31, align 4
  %call.i.i187.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %87, ptr noundef nonnull %bitmaps.i) #14
  br i1 %call.i.i187.i, label %if.end.i.i.i, label %if.end80.i.if.end81.i_crit_edge

if.end80.i.if.end81.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81.i

if.end.i.i.i:                                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #16
  %88 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %list.i, ptr %31, align 4
  %89 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %bitmaps.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i185.i, i32 0, i32 6, i32 1
  %90 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev3.i.i.i, align 8
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %list.i, ptr %87, align 4
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.end.i.i.i, %if.end80.i.if.end81.i_crit_edge, %if.then60.i.if.end81.i_crit_edge
  %num_bitmaps.1.i = phi i64 [ %num_bitmaps.0207.i, %if.then60.i.if.end81.i_crit_edge ], [ %dec.i, %if.end80.i.if.end81.i_crit_edge ], [ %dec.i, %if.end.i.i.i ]
  %dec82.i = add i64 %num_entries.0206.i, -1
  %tobool46.not.i = icmp eq i64 %dec82.i, 0
  br i1 %tobool46.not.i, label %while.end.i, label %if.end81.i.while.body.i_crit_edge

if.end81.i.while.body.i_crit_edge:                ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %if.end81.i
  %92 = ptrtoint ptr %io_ctl.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %io_ctl.i, align 4
  %tobool.not.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i.i, label %while.end.i.io_ctl_unmap_page.exit.i_crit_edge, label %if.then.i.i

while.end.i.io_ctl_unmap_page.exit.i_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %io_ctl_unmap_page.exit.i

if.then.i.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %io_ctl.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %io_ctl.i, align 4
  %orig.i.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl.i, i32 0, i32 1
  %95 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %orig.i.i, align 4
  br label %io_ctl_unmap_page.exit.i

io_ctl_unmap_page.exit.i:                         ; preds = %if.then.i.i, %while.end.i.io_ctl_unmap_page.exit.i_crit_edge
  %96 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bitmaps.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %list_del_init.exit.i.for.cond.i_crit_edge, %io_ctl_unmap_page.exit.i
  %.pn.in.i = phi ptr [ %97, %io_ctl_unmap_page.exit.i ], [ %.pn.i, %list_del_init.exit.i.for.cond.i_crit_edge ]
  %98 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp90.not.i = icmp eq ptr %.pn.in.i, %bitmaps.i
  br i1 %cmp90.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %e.0.i = getelementptr i8, ptr %.pn.in.i, i32 -52
  %call.i.i188.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #14
  br i1 %call.i.i188.i, label %if.end.i.i189.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i189.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i.i, align 4
  %101 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev1.i.i.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %102, ptr %100, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i189.i, %for.body.i.list_del_init.exit.i_crit_edge
  %105 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %.pn.in.i, ptr %.pn.in.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %.pn.in.i, ptr %prev.i3.i.i, align 4
  %call95.i = call fastcc i32 @io_ctl_read_bitmap(ptr noundef nonnull %io_ctl.i, ptr noundef %e.0.i) #14
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %list_del_init.exit.i.for.cond.i_crit_edge, label %list_del_init.exit.i.free_cache.i_crit_edge

list_del_init.exit.i.free_cache.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_cache.i

list_del_init.exit.i.for.cond.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @io_ctl_drop_pages(ptr noundef nonnull %io_ctl.i) #14
  br label %__load_free_space_cache.exit

free_cache.sink.split.sink.split.i:               ; preds = %if.end74.i.free_cache.sink.split.sink.split.i_crit_edge, %if.then60.i.free_cache.sink.split.sink.split.i_crit_edge
  %ret.1.ph.ph.i = phi i32 [ %call61.i, %if.then60.i.free_cache.sink.split.sink.split.i_crit_edge ], [ %call76.i, %if.end74.i.free_cache.sink.split.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %30, ptr noundef nonnull @.str.32) #17
  br label %free_cache.sink.split.i

free_cache.sink.split.i:                          ; preds = %free_cache.sink.split.sink.split.i, %cond.end.i.free_cache.sink.split.i_crit_edge, %if.end54.i.free_cache.sink.split.i_crit_edge, %if.end50.i.free_cache.sink.split.i_crit_edge
  %ret.1.ph.i = phi i32 [ %ret.1.ph.ph.i, %free_cache.sink.split.sink.split.i ], [ -12, %cond.end.i.free_cache.sink.split.i_crit_edge ], [ -1, %if.end54.i.free_cache.sink.split.i_crit_edge ], [ %call51.i, %if.end50.i.free_cache.sink.split.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %107 = load ptr, ptr @btrfs_free_space_cachep, align 4
  call void @kmem_cache_free(ptr noundef %107, ptr noundef nonnull %call.i185.i) #14
  br label %free_cache.i

free_cache.i:                                     ; preds = %free_cache.sink.split.i, %list_del_init.exit.i.free_cache.i_crit_edge, %while.body.i.free_cache.i_crit_edge, %if.end41.i.free_cache.i_crit_edge, %if.end37.i.free_cache.i_crit_edge
  %ret.1.i = phi i32 [ %call38.i, %if.end37.i.free_cache.i_crit_edge ], [ %call42.i, %if.end41.i.free_cache.i_crit_edge ], [ %ret.1.ph.i, %free_cache.sink.split.i ], [ %call95.i, %list_del_init.exit.i.free_cache.i_crit_edge ], [ -12, %while.body.i.free_cache.i_crit_edge ]
  call fastcc void @io_ctl_drop_pages(ptr noundef nonnull %io_ctl.i) #14
  call void @__btrfs_remove_free_space_cache(ptr noundef nonnull %tmp_ctl) #14
  br label %__load_free_space_cache.exit

__load_free_space_cache.exit.thread:              ; preds = %if.end7.i.i.i.i.__load_free_space_cache.exit.thread_crit_edge, %if.end29.i.__load_free_space_cache.exit.thread_crit_edge, %if.end26.i.__load_free_space_cache.exit.thread_crit_edge, %if.then23.i, %if.then18.i, %if.then7.i, %if.end.i.__load_free_space_cache.exit.thread_crit_edge, %if.end19.__load_free_space_cache.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end29.i.__load_free_space_cache.exit.thread_crit_edge ], [ -12, %if.end7.i.i.i.i.__load_free_space_cache.exit.thread_crit_edge ], [ 0, %if.end26.i.__load_free_space_cache.exit.thread_crit_edge ], [ 0, %if.end.i.__load_free_space_cache.exit.thread_crit_edge ], [ 0, %if.end19.__load_free_space_cache.exit.thread_crit_edge ], [ 0, %if.then18.i ], [ 0, %if.then23.i ], [ 0, %if.then7.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bitmaps.i) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %io_ctl.i) #14
  call void @btrfs_free_path(ptr noundef nonnull %call) #14
  br label %out

__load_free_space_cache.exit:                     ; preds = %free_cache.i, %for.end.i, %if.end33.i.__load_free_space_cache.exit_crit_edge
  %ret.0.i = phi i32 [ %call34.i, %if.end33.i.__load_free_space_cache.exit_crit_edge ], [ %ret.1.i, %free_cache.i ], [ 1, %for.end.i ]
  %pages.i190.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl.i, i32 0, i32 3
  %108 = ptrtoint ptr %pages.i190.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pages.i190.i, align 4
  call void @kfree(ptr noundef %109) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bitmaps.i) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %io_ctl.i) #14
  call void @btrfs_free_path(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i)
  %cmp22 = icmp slt i32 %ret.0.i, 1
  br i1 %cmp22, label %__load_free_space_cache.exit.if.then36_crit_edge, label %if.end24

__load_free_space_cache.exit.if.then36_crit_edge: ; preds = %__load_free_space_cache.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

if.end24:                                         ; preds = %__load_free_space_cache.exit
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 3
  %110 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %free_space, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %112 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %length, align 8
  %bytes_super = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 9
  %114 = ptrtoint ptr %bytes_super to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %bytes_super, align 8
  %116 = add i64 %6, %115
  %sub25 = sub i64 %113, %116
  call void @__sanitizer_cov_trace_cmp8(i64 %111, i64 %sub25)
  %cmp26 = icmp eq i64 %111, %sub25
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end24
  %free_space_offset.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 1
  %free_extents.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 5
  %discardable_extents.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 9
  %discardable_bytes.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %tmp_ctl, i32 0, i32 10
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end17.i.land.rhs.i_crit_edge, %if.then28
  %call.i89 = call ptr @rb_first(ptr noundef %free_space_offset.i) #14
  %cmp.not.i = icmp eq ptr %call.i89, null
  br i1 %cmp.not.i, label %land.rhs.i.if.end41_crit_edge, label %while.body.i91

land.rhs.i.if.end41_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

while.body.i91:                                   ; preds = %land.rhs.i
  %bitmap.i90 = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i89, i32 0, i32 5
  %117 = ptrtoint ptr %bitmap.i90 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bitmap.i90, align 8
  %tobool1.not.i = icmp eq ptr %118, null
  br i1 %tobool1.not.i, label %if.then.i, label %if.else.i96

if.then.i:                                        ; preds = %while.body.i91
  call void @rb_erase(ptr noundef nonnull %call.i89, ptr noundef %free_space_offset.i) #14
  %bytes_index.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i89, i32 0, i32 1
  %119 = ptrtoint ptr %.compoundliteral.sroa.2.0.free_space_bytes.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %.compoundliteral.sroa.2.0.free_space_bytes.sroa_idx.i, align 4
  %cmp.i.i.i = icmp eq ptr %120, %bytes_index.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i.rb_erase_cached.exit.i.i_crit_edge

if.then.i.rb_erase_cached.exit.i.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i92 = call ptr @rb_next(ptr noundef %bytes_index.i.i) #14
  %121 = ptrtoint ptr %.compoundliteral.sroa.2.0.free_space_bytes.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i.i.i92, ptr %.compoundliteral.sroa.2.0.free_space_bytes.sroa_idx.i, align 4
  br label %rb_erase_cached.exit.i.i

rb_erase_cached.exit.i.i:                         ; preds = %if.then.i.i.i, %if.then.i.rb_erase_cached.exit.i.i_crit_edge
  call void @rb_erase(ptr noundef %bytes_index.i.i, ptr noundef %free_space_bytes.i) #14
  %122 = ptrtoint ptr %free_extents.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %free_extents.i.i, align 4
  %dec.i.i = add i32 %123, -1
  store i32 %dec.i.i, ptr %free_extents.i.i, align 4
  %124 = ptrtoint ptr %bitmap.i90 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bitmap.i90, align 8
  %tobool.not.i.i93 = icmp eq ptr %125, null
  br i1 %tobool.not.i.i93, label %land.lhs.true.i.i, label %rb_erase_cached.exit.i.i.unlink_free_space.exit.i_crit_edge

rb_erase_cached.exit.i.i.unlink_free_space.exit.i_crit_edge: ; preds = %rb_erase_cached.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit.i

land.lhs.true.i.i:                                ; preds = %rb_erase_cached.exit.i.i
  %trim_state.i.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i89, i32 0, i32 7
  %126 = ptrtoint ptr %trim_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %trim_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp.i19.i.i = icmp eq i32 %127, 1
  br i1 %cmp.i19.i.i, label %land.lhs.true.i.i.unlink_free_space.exit.i_crit_edge, label %if.then.i.i95

land.lhs.true.i.i.unlink_free_space.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit.i

if.then.i.i95:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %128 = ptrtoint ptr %discardable_extents.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %discardable_extents.i.i, align 8
  %dec2.i.i = add i32 %129, -1
  store i32 %dec2.i.i, ptr %discardable_extents.i.i, align 8
  %bytes.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i89, i32 0, i32 3
  %130 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %bytes.i.i, align 8
  %132 = ptrtoint ptr %discardable_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %discardable_bytes.i.i, align 8
  %sub.i.i94 = sub i64 %133, %131
  store i64 %sub.i.i94, ptr %discardable_bytes.i.i, align 8
  br label %unlink_free_space.exit.i

unlink_free_space.exit.i:                         ; preds = %if.then.i.i95, %land.lhs.true.i.i.unlink_free_space.exit.i_crit_edge, %rb_erase_cached.exit.i.i.unlink_free_space.exit.i_crit_edge
  %bytes6.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i89, i32 0, i32 3
  %134 = ptrtoint ptr %bytes6.i.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %bytes6.i.i, align 8
  %136 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %free_space, align 8
  %sub7.i.i = sub i64 %137, %135
  store i64 %sub7.i.i, ptr %free_space, align 8
  %offset.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i89, i32 0, i32 2
  %138 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %offset.i, align 8
  %140 = load i64, ptr %bytes6.i.i, align 8
  %141 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %block_group, align 8
  %143 = getelementptr inbounds %struct.btrfs_fs_info, ptr %142, i32 0, i32 176
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %143, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %145)
  %cmp.i.not.i.i = icmp eq i64 %145, 0
  br i1 %cmp.i.not.i.i, label %if.end.i.i, label %if.then.i39.i

if.then.i39.i:                                    ; preds = %unlink_free_space.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @__btrfs_add_free_space_zoned(ptr noundef %block_group, i64 noundef %139, i64 noundef %140, i1 noundef zeroext true) #14
  br label %btrfs_add_free_space.exit.i

if.end.i.i:                                       ; preds = %unlink_free_space.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %mount_opt.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %142, i32 0, i32 31
  %146 = ptrtoint ptr %mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %mount_opt.i.i, align 8
  %and.i.i = lshr i32 %147, 10
  %and.lobit.i.i = and i32 %and.i.i, 1
  %call5.i.i = call i32 @__btrfs_add_free_space(ptr noundef %block_group, i64 noundef %139, i64 noundef %140, i32 noundef %and.lobit.i.i) #14
  br label %btrfs_add_free_space.exit.i

btrfs_add_free_space.exit.i:                      ; preds = %if.end.i.i, %if.then.i39.i
  %retval.0.i.i = phi i32 [ 0, %if.then.i39.i ], [ %call5.i.i, %if.end.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %148 = load ptr, ptr @btrfs_free_space_cachep, align 4
  call void @kmem_cache_free(ptr noundef %148, ptr noundef nonnull %call.i89) #14
  br label %if.end17.i

if.else.i96:                                      ; preds = %while.body.i91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset3.i) #14
  %offset4.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i89, i32 0, i32 2
  %149 = ptrtoint ptr %offset4.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %offset4.i, align 8
  %151 = ptrtoint ptr %offset3.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %150, ptr %offset3.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes5.i) #14
  %152 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %storemerge.in51.i = load i32, ptr %unit.i, align 4
  %storemerge52.i = sext i32 %storemerge.in51.i to i64
  %153 = ptrtoint ptr %bytes5.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %storemerge52.i, ptr %bytes5.i, align 8
  %call753.i = call fastcc i32 @search_bitmap(ptr noundef nonnull %tmp_ctl, ptr noundef nonnull %call.i89, ptr noundef nonnull %offset3.i, ptr noundef nonnull %bytes5.i, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call753.i)
  %cmp854.i = icmp eq i32 %call753.i, 0
  br i1 %cmp854.i, label %if.else.i96.while.body10.i_crit_edge, label %if.else.i96.while.end.i98_crit_edge

if.else.i96.while.end.i98_crit_edge:              ; preds = %if.else.i96
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i98

if.else.i96.while.body10.i_crit_edge:             ; preds = %if.else.i96
  br label %while.body10.i

while.body10.i:                                   ; preds = %if.end.i97.while.body10.i_crit_edge, %if.else.i96.while.body10.i_crit_edge
  %154 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %offset3.i, align 8
  %156 = ptrtoint ptr %bytes5.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %bytes5.i, align 8
  %158 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %block_group, align 8
  %160 = getelementptr inbounds %struct.btrfs_fs_info, ptr %159, i32 0, i32 176
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %160, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %162)
  %cmp.i.not.i40.i = icmp eq i64 %162, 0
  br i1 %cmp.i.not.i40.i, label %btrfs_add_free_space.exit48.i, label %btrfs_add_free_space.exit48.thread.i

btrfs_add_free_space.exit48.thread.i:             ; preds = %while.body10.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @__btrfs_add_free_space_zoned(ptr noundef %block_group, i64 noundef %155, i64 noundef %157, i1 noundef zeroext true) #14
  br label %if.end.i97

btrfs_add_free_space.exit48.i:                    ; preds = %while.body10.i
  %mount_opt.i42.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %159, i32 0, i32 31
  %163 = ptrtoint ptr %mount_opt.i42.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mount_opt.i42.i, align 8
  %and.i43.i = lshr i32 %164, 10
  %and.lobit.i44.i = and i32 %and.i43.i, 1
  %call5.i45.i = call i32 @__btrfs_add_free_space(ptr noundef %block_group, i64 noundef %155, i64 noundef %157, i32 noundef %and.lobit.i44.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i45.i)
  %tobool12.not.i = icmp eq i32 %call5.i45.i, 0
  br i1 %tobool12.not.i, label %btrfs_add_free_space.exit48.i.if.end.i97_crit_edge, label %btrfs_add_free_space.exit48.i.while.end.i98_crit_edge

btrfs_add_free_space.exit48.i.while.end.i98_crit_edge: ; preds = %btrfs_add_free_space.exit48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i98

btrfs_add_free_space.exit48.i.if.end.i97_crit_edge: ; preds = %btrfs_add_free_space.exit48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i97

if.end.i97:                                       ; preds = %btrfs_add_free_space.exit48.i.if.end.i97_crit_edge, %btrfs_add_free_space.exit48.thread.i
  call fastcc void @bitmap_clear_bits(ptr noundef nonnull %tmp_ctl, ptr noundef nonnull %call.i89, i64 noundef %155, i64 noundef %157, i1 noundef zeroext true) #14
  %165 = ptrtoint ptr %offset4.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %offset4.i, align 8
  %167 = ptrtoint ptr %offset3.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %offset3.i, align 8
  %168 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %storemerge.in.i = load i32, ptr %unit.i, align 4
  %storemerge.i = sext i32 %storemerge.in.i to i64
  %169 = ptrtoint ptr %bytes5.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %storemerge.i, ptr %bytes5.i, align 8
  %call7.i = call fastcc i32 @search_bitmap(ptr noundef nonnull %tmp_ctl, ptr noundef nonnull %call.i89, ptr noundef nonnull %offset3.i, ptr noundef nonnull %bytes5.i, i1 noundef zeroext false) #14
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i97.while.body10.i_crit_edge, label %if.end.i97.while.end.i98_crit_edge

if.end.i97.while.end.i98_crit_edge:               ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i98

if.end.i97.while.body10.i_crit_edge:              ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body10.i

while.end.i98:                                    ; preds = %if.end.i97.while.end.i98_crit_edge, %btrfs_add_free_space.exit48.i.while.end.i98_crit_edge, %if.else.i96.while.end.i98_crit_edge
  %ret.2.i = phi i32 [ 0, %if.else.i96.while.end.i98_crit_edge ], [ 0, %if.end.i97.while.end.i98_crit_edge ], [ %call5.i45.i, %btrfs_add_free_space.exit48.i.while.end.i98_crit_edge ]
  call fastcc void @free_bitmap(ptr noundef nonnull %tmp_ctl, ptr noundef nonnull %call.i89) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes5.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset3.i) #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %while.end.i98, %btrfs_add_free_space.exit.i
  %ret.3.i = phi i32 [ %ret.2.i, %while.end.i98 ], [ %retval.0.i.i, %btrfs_add_free_space.exit.i ]
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 912, i32 noundef 0) #14
  %call.i.i99 = call i32 @__cond_resched() #14
  %tobool.not.i100 = icmp eq i32 %ret.3.i, 0
  br i1 %tobool.not.i100, label %if.end17.i.land.rhs.i_crit_edge, label %if.end17.i.out_crit_edge

if.end17.i.out_crit_edge:                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end17.i.land.rhs.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  call void @__btrfs_remove_free_space_cache(ptr noundef nonnull %tmp_ctl)
  %170 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %start.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.7, i64 noundef %171) #17
  br label %if.then36

out:                                              ; preds = %if.end17.i.out_crit_edge, %__load_free_space_cache.exit.thread
  %ret.0 = phi i32 [ %retval.0.i.ph, %__load_free_space_cache.exit.thread ], [ %ret.3.i, %if.end17.i.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp35 = icmp slt i32 %ret.0, 0
  br i1 %cmp35, label %out.if.then36_crit_edge, label %out.if.end41_crit_edge

out.if.end41_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

out.if.then36_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

if.then36:                                        ; preds = %out.if.then36_crit_edge, %if.else, %__load_free_space_cache.exit.if.then36_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock) #14
  %172 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 2, ptr %disk_cache_state, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  %173 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %start.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.8, i64 noundef %174) #17
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %out.if.end41_crit_edge, %land.rhs.i.if.end41_crit_edge, %if.then17
  %ret.1 = phi i32 [ 0, %if.then36 ], [ %ret.0, %out.if.end41_crit_edge ], [ 0, %if.then17 ], [ 1, %land.rhs.i.if.end41_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %3) #14
  call void @btrfs_discard_update_discardable(ptr noundef %block_group) #14
  call void @_raw_spin_unlock(ptr noundef %3) #14
  call void @iput(ptr noundef %call10) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then12 ], [ %ret.1, %if.end41 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %tmp_ctl) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_init_free_space_ctl(ptr noundef %block_group, ptr noundef %ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  tail call void @__raw_spin_lock_init(ptr noundef %ctl, ptr noundef nonnull @.str.21, ptr noundef nonnull @btrfs_init_free_space_ctl.__key, i16 noundef signext 3) #14
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  %2 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sectorsize, align 4
  %unit = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %unit, align 4
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start, align 8
  %start2 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 8
  %7 = ptrtoint ptr %start2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %start2, align 8
  %block_group3 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 12
  %8 = ptrtoint ptr %block_group3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %block_group, ptr %block_group3, align 4
  %op = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 11
  %9 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @free_space_op, ptr %op, align 8
  %free_space_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2
  %10 = ptrtoint ptr %free_space_bytes to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %free_space_bytes, align 8
  %.compoundliteral.sroa.2.0.free_space_bytes.sroa_idx = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %.compoundliteral.sroa.2.0.free_space_bytes.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %.compoundliteral.sroa.2.0.free_space_bytes.sroa_idx, align 4
  %trimming_ranges = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 14
  %12 = ptrtoint ptr %trimming_ranges to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %trimming_ranges, ptr %trimming_ranges, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %trimming_ranges, ptr %prev.i, align 4
  %cache_writeout_mutex = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %cache_writeout_mutex, ptr noundef nonnull @.str.23, ptr noundef nonnull @btrfs_init_free_space_ctl.__key.22) #14
  %extents_thresh = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 4
  %14 = ptrtoint ptr %extents_thresh to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 227, ptr %extents_thresh, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__btrfs_remove_free_space_cache(ptr noundef %ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %ctl) #14
  tail call fastcc void @__btrfs_remove_free_space_cache_locked(ptr noundef %ctl)
  %block_group = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 12
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_discard_update_discardable(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctl) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_discard_update_discardable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__btrfs_wait_cache_io(ptr noundef %root, ptr noundef %trans, ptr noundef %block_group, ptr nocapture noundef %io_ctl, ptr noundef %path, i64 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 5
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @btrfs_wait_ordered_range(ptr noundef nonnull %1, i64 noundef 0, i64 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %out, label %out.thread

out.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %io_tree.i = getelementptr i8, ptr %1, i32 -736
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %3, -1
  %call2.i = tail call i32 @clear_extent_bit(ptr noundef %io_tree.i, i64 noundef 0, i64 noundef %sub.i, i32 noundef 16, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  br label %if.then7

out:                                              ; preds = %if.end
  %entries = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 9
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entries, align 4
  %bitmaps = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 10
  %6 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bitmaps, align 4
  %call5 = tail call fastcc i32 @update_cache_item(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %1, ptr noundef %path, i64 noundef %offset, i32 noundef %5, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %out.if.end19_crit_edge, label %out.if.then7_crit_edge

out.if.then7_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

out.if.end19_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then7:                                         ; preds = %out.if.then7_crit_edge, %out.thread
  %ret.068 = phi i32 [ %call.i, %out.thread ], [ %call5, %out.if.then7_crit_edge ]
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %call8 = tail call i32 @invalidate_inode_pages2(ptr noundef %9) #14
  %generation = getelementptr i8, ptr %1, i32 -344
  %10 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %generation, align 8
  %tobool10.not = icmp eq ptr %block_group, null
  br i1 %tobool10.not, label %if.end19.thread, label %do.body

if.end19.thread:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i6575 = getelementptr i8, ptr %1, i32 -864
  %call2176 = tail call i32 @btrfs_update_inode(ptr noundef %trans, ptr noundef %root, ptr noundef %add.ptr.i6575) #14
  br label %cleanup

do.body:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__btrfs_wait_cache_io.__UNIQUE_ID_ddebug941, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__btrfs_wait_cache_io, %if.end19.thread78)) #14
          to label %if.end19 [label %if.end19.thread78], !srcloc !159

if.end19.thread78:                                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %11 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_info, align 8
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %start, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %12, ptr noundef nonnull @.str.11, i64 noundef %14, i32 noundef %ret.068) #17
  %add.ptr.i6581 = getelementptr i8, ptr %1, i32 -864
  %call2182 = tail call i32 @btrfs_update_inode(ptr noundef %trans, ptr noundef %root, ptr noundef %add.ptr.i6581) #14
  br label %if.then23

if.end19:                                         ; preds = %do.body, %out.if.end19_crit_edge
  %tobool6.not71 = phi i1 [ true, %out.if.end19_crit_edge ], [ false, %do.body ]
  %ret.069 = phi i32 [ 0, %out.if.end19_crit_edge ], [ %ret.068, %do.body ]
  %add.ptr.i65 = getelementptr i8, ptr %1, i32 -864
  %call21 = tail call i32 @btrfs_update_inode(ptr noundef %trans, ptr noundef %root, ptr noundef %add.ptr.i65) #14
  %tobool22.not = icmp eq ptr %block_group, null
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.end19.if.then23_crit_edge

if.end19.if.then23_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %if.end19.if.then23_crit_edge, %if.end19.thread78
  %ret.06985 = phi i32 [ %ret.068, %if.end19.thread78 ], [ %ret.069, %if.end19.if.then23_crit_edge ]
  %tobool6.not7184 = phi i1 [ false, %if.end19.thread78 ], [ %tobool6.not71, %if.end19.if.then23_crit_edge ]
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %15 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transaction, align 4
  %dirty_bgs_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %16, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock) #14
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  br i1 %tobool6.not7184, label %land.lhs.true, label %if.then23.if.end32.sink.split_crit_edge

if.then23.if.end32.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split

land.lhs.true:                                    ; preds = %if.then23
  %dirty_list = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 36
  %17 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %dirty_list, align 4
  %cmp.i.not = icmp eq ptr %18, %dirty_list
  br i1 %cmp.i.not, label %land.lhs.true.if.end32.sink.split_crit_edge, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

land.lhs.true.if.end32.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %land.lhs.true.if.end32.sink.split_crit_edge, %if.then23.if.end32.sink.split_crit_edge
  %.sink = phi i32 [ 0, %land.lhs.true.if.end32.sink.split_crit_edge ], [ 1, %if.then23.if.end32.sink.split_crit_edge ]
  %disk_cache_state30 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 18
  %19 = ptrtoint ptr %disk_cache_state30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %disk_cache_state30, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %land.lhs.true.if.end32_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %20 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transaction, align 4
  %dirty_bgs_lock35 = getelementptr inbounds %struct.btrfs_transaction, ptr %21, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock35) #14
  %22 = ptrtoint ptr %inode1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %inode1, align 4
  tail call void @iput(ptr noundef nonnull %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end19.cleanup_crit_edge, %if.end19.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.06985, %if.end32 ], [ %ret.069, %if.end19.cleanup_crit_edge ], [ %ret.068, %if.end19.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_write_out_cache(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  %cached_state.i = alloca ptr, align 4
  %bitmap_list.i = alloca %struct.list_head, align 4
  %entries.i = alloca i32, align 4
  %bitmaps.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_space_ctl, align 4
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %disk_cache_state = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 18
  %4 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %disk_cache_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp slt i32 %5, 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @lookup_free_space_inode(ptr noundef %block_group, ptr noundef %path)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tree_root, align 4
  %io_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cached_state.i) #14
  %8 = ptrtoint ptr %cached_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cached_state.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bitmap_list.i) #14
  %9 = getelementptr inbounds %struct.list_head, ptr %bitmap_list.i, i32 0, i32 1
  %10 = ptrtoint ptr %bitmap_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bitmap_list.i, ptr %bitmap_list.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bitmap_list.i, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entries.i) #14
  %12 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %entries.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmaps.i) #14
  %13 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bitmaps.i, align 4
  %call.i = call fastcc i64 @i_size_read(ptr noundef %call) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %tobool.not.i = icmp eq i64 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.__btrfs_write_out_cache.exit.thread_crit_edge, label %if.end.i

if.end6.__btrfs_write_out_cache.exit.thread_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %__btrfs_write_out_cache.exit.thread

if.end.i:                                         ; preds = %if.end6
  %pages.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38, i32 3
  %14 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %if.end.i.if.end16.i_crit_edge, label %do.end.i, !prof !155

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1356, i32 noundef 9, ptr noundef null) #14
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end.i, %if.end.i.if.end16.i_crit_edge
  %call.i.i = call fastcc i64 @i_size_read(ptr noundef %call) #14
  %sub.i.i = add i64 %call.i.i, 4095
  %div.i.i = sdiv i64 %sub.i.i, 4096
  %conv.i.i = trunc i64 %div.i.i to i32
  %mul.i.i = shl i32 %conv.i.i, 2
  %16 = add i32 %mul.i.i, -4089
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4097, i32 %16)
  %cmp.i.i = icmp ult i32 %16, -4097
  br i1 %cmp.i.i, label %if.end16.i.__btrfs_write_out_cache.exit.thread_crit_edge, label %if.end.i.i

if.end16.i.__btrfs_write_out_cache.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__btrfs_write_out_cache.exit.thread

if.end.i.i:                                       ; preds = %if.end16.i
  %17 = call ptr @memset(ptr %io_ctl, i32 0, i32 44)
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv.i.i, i32 4) #14
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.end.i.i.__btrfs_write_out_cache.exit.thread_crit_edge, label %if.end7.i.i.i.i, !prof !160

if.end.i.i.__btrfs_write_out_cache.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__btrfs_write_out_cache.exit.thread

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3392) #18
  %21 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i.i.i, ptr %pages.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end7.i.i.i.i.__btrfs_write_out_cache.exit.thread_crit_edge, label %if.end26.i

if.end7.i.i.i.i.__btrfs_write_out_cache.exit.thread_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__btrfs_write_out_cache.exit.thread

if.end26.i:                                       ; preds = %if.end7.i.i.i.i
  %num_pages8.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38, i32 8
  %22 = ptrtoint ptr %num_pages8.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i.i, ptr %num_pages8.i.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38, i32 4
  %27 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %fs_info.i.i, align 4
  %inode10.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38, i32 5
  %28 = ptrtoint ptr %inode10.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call, ptr %inode10.i.i, align 4
  %tobool27.not.i = icmp eq ptr %block_group, null
  br i1 %tobool27.not.i, label %if.end26.i.if.end37.i_crit_edge, label %land.lhs.true.i

if.end26.i.if.end37.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %flags.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 10
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %30, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool28.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i.if.end37.i_crit_edge, label %if.then29.i

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  %data_rwsem.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 14
  call void @down_write(ptr noundef %data_rwsem.i) #14
  call void @_raw_spin_lock(ptr noundef %lock) #14
  %delalloc_bytes.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 8
  %31 = ptrtoint ptr %delalloc_bytes.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %delalloc_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool30.not.i = icmp eq i64 %32, 0
  br i1 %tobool30.not.i, label %if.end35.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %disk_cache_state, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  call void @up_write(ptr noundef %data_rwsem.i) #14
  %generation.i = getelementptr i8, ptr %call, i32 -344
  %34 = ptrtoint ptr %generation.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %generation.i, align 8
  br label %out.i

if.end35.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end35.i, %land.lhs.true.i.if.end37.i_crit_edge, %if.end26.i.if.end37.i_crit_edge
  %call38.i = call fastcc i32 @io_ctl_prepare_pages(ptr noundef %io_ctl, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end37.i.out_unlock.i_crit_edge

if.end37.i.out_unlock.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock.i

if.end41.i:                                       ; preds = %if.end37.i
  %add.ptr.i176.i = getelementptr i8, ptr %call, i32 -864
  %io_tree.i = getelementptr i8, ptr %call, i32 -736
  %call43.i = call fastcc i64 @i_size_read(ptr noundef %call) #14
  %sub.i = add i64 %call43.i, -1
  %call44.i = call i32 @lock_extent_bits(ptr noundef %io_tree.i, i64 noundef 0, i64 noundef %sub.i, ptr noundef nonnull %cached_state.i) #14
  %index.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38, i32 7
  %35 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i.i, align 4
  %37 = ptrtoint ptr %num_pages8.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_pages8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.i.i.i = icmp slt i32 %36, %38
  br i1 %cmp.i.i.i, label %io_ctl_set_generation.exit.i, label %cond.false.i.i.i, !prof !155

cond.false.i.i.i:                                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.42, i32 noundef 415) #19
  unreachable

io_ctl_set_generation.exit.i:                     ; preds = %if.end41.i
  %39 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %trans, align 8
  %41 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pages.i, align 4
  %inc.i.i.i = add nsw i32 %36, 1
  %43 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc.i.i.i, ptr %index.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %42, i32 %36
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i.i, align 4
  %page.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38, i32 2
  %46 = ptrtoint ptr %page.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %page.i.i.i, align 4
  %call.i.i.i = call ptr @page_address(ptr noundef %45) #14
  %47 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i.i, ptr %io_ctl, align 4
  %orig.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38, i32 1
  %48 = ptrtoint ptr %orig.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.i.i, ptr %orig.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38, i32 6
  %49 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4096, ptr %size.i.i.i, align 4
  %50 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 4096)
  %51 = ptrtoint ptr %num_pages8.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_pages8.i.i, align 4
  %mul.i177.i = shl i32 %52, 2
  %53 = load ptr, ptr %io_ctl, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %53, i32 %mul.i177.i
  store ptr %add.ptr.i178.i, ptr %io_ctl, align 4
  %mul2.neg.i.i = mul i32 %52, -4
  %add.neg.i.i = add i32 %mul2.neg.i.i, -8
  %54 = load i32, ptr %size.i.i.i, align 4
  %sub.i179.i = add i32 %add.neg.i.i, %54
  store i32 %sub.i179.i, ptr %size.i.i.i, align 4
  %55 = call i64 @llvm.bswap.i64(i64 %40) #14
  %56 = ptrtoint ptr %add.ptr.i178.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %55, ptr %add.ptr.i178.i, align 1
  %57 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_ctl, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %58, i32 8
  store ptr %add.ptr5.i.i, ptr %io_ctl, align 4
  %cache_writeout_mutex.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %cache_writeout_mutex.i, i32 noundef 0) #14
  call void @_raw_spin_lock(ptr noundef %3) #14
  %call45.i = call fastcc i32 @write_cache_extent_entries(ptr noundef %io_ctl, ptr noundef %3, ptr noundef %block_group, ptr noundef nonnull %entries.i, ptr noundef nonnull %bitmaps.i, ptr noundef nonnull %bitmap_list.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %io_ctl_set_generation.exit.i.out_nospc_locked.i_crit_edge

io_ctl_set_generation.exit.i.out_nospc_locked.i_crit_edge: ; preds = %io_ctl_set_generation.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_nospc_locked.i

if.end48.i:                                       ; preds = %io_ctl_set_generation.exit.i
  %call49.i = call fastcc i32 @write_pinned_extent_entries(ptr noundef %trans, ptr noundef %block_group, ptr noundef %io_ctl, ptr noundef nonnull %entries.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end48.i.out_nospc_locked.i_crit_edge

if.end48.i.out_nospc_locked.i_crit_edge:          ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_nospc_locked.i

if.end52.i:                                       ; preds = %if.end48.i
  %call53.i = call fastcc i32 @write_bitmap_entries(ptr noundef %io_ctl, ptr noundef nonnull %bitmap_list.i) #14
  call void @_raw_spin_unlock(ptr noundef %3) #14
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool56.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool56.not.i, label %if.end58.i, label %if.end52.i.out_nospc.i_crit_edge

if.end52.i.out_nospc.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_nospc.i

if.end58.i:                                       ; preds = %if.end52.i
  call fastcc void @io_ctl_zero_remaining_pages(ptr noundef %io_ctl) #14
  %59 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pages.i, align 4
  %61 = ptrtoint ptr %num_pages8.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_pages8.i.i, align 4
  %call61.i = call fastcc i64 @i_size_read(ptr noundef %call) #14
  %conv.i = trunc i64 %call61.i to i32
  %call62.i = call i32 @btrfs_dirty_pages(ptr noundef %add.ptr.i176.i, ptr noundef %60, i32 noundef %62, i64 noundef 0, i32 noundef %conv.i, ptr noundef nonnull %cached_state.i, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.end65.i, label %if.end58.i.out_nospc.i_crit_edge

if.end58.i.out_nospc.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_nospc.i

if.end65.i:                                       ; preds = %if.end58.i
  br i1 %tobool27.not.i, label %if.end65.i.if.end73.i_crit_edge, label %land.lhs.true67.i

if.end65.i.if.end73.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

land.lhs.true67.i:                                ; preds = %if.end65.i
  %flags68.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 10
  %63 = ptrtoint ptr %flags68.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %flags68.i, align 8
  %and69.i = and i64 %64, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and69.i)
  %tobool70.not.i = icmp eq i64 %and69.i, 0
  br i1 %tobool70.not.i, label %land.lhs.true67.i.if.end73.i_crit_edge, label %if.then71.i

land.lhs.true67.i.if.end73.i_crit_edge:           ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

if.then71.i:                                      ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #16
  %data_rwsem72.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 14
  call void @up_write(ptr noundef %data_rwsem72.i) #14
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then71.i, %land.lhs.true67.i.if.end73.i_crit_edge, %if.end65.i.if.end73.i_crit_edge
  call fastcc void @io_ctl_drop_pages(ptr noundef %io_ctl) #14
  %65 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pages.i, align 4
  call void @kfree(ptr noundef %66) #14
  %67 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %pages.i, align 4
  %call76.i = call fastcc i64 @i_size_read(ptr noundef %call) #14
  %sub77.i = add i64 %call76.i, -1
  %call.i183.i = call i32 @__clear_extent_bit(ptr noundef %io_tree.i, i64 noundef 0, i64 noundef %sub77.i, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %cached_state.i, i32 noundef 3136, ptr noundef null) #14
  %68 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %entries.i, align 4
  %entries79.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38, i32 9
  %70 = ptrtoint ptr %entries79.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %entries79.i, align 4
  %71 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bitmaps.i, align 4
  %bitmaps80.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38, i32 10
  %73 = ptrtoint ptr %bitmaps80.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %bitmaps80.i, align 4
  %call81.i = call i32 @btrfs_fdatawrite_range(ptr noundef %call, i64 noundef 0, i64 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %__btrfs_write_out_cache.exit.thread46, label %if.end73.i.out.i_crit_edge

if.end73.i.out.i_crit_edge:                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

__btrfs_write_out_cache.exit.thread46:            ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmaps.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entries.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bitmap_list.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state.i) #14
  br label %cleanup

out_nospc_locked.i:                               ; preds = %if.end48.i.out_nospc_locked.i_crit_edge, %io_ctl_set_generation.exit.i.out_nospc_locked.i_crit_edge
  %ret.0.i = phi i32 [ %call45.i, %io_ctl_set_generation.exit.i.out_nospc_locked.i_crit_edge ], [ %call49.i, %if.end48.i.out_nospc_locked.i_crit_edge ]
  call fastcc void @cleanup_bitmap_list(ptr noundef nonnull %bitmap_list.i) #14
  call void @_raw_spin_unlock(ptr noundef %3) #14
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex.i) #14
  br label %out_nospc.i

out_nospc.i:                                      ; preds = %out_nospc_locked.i, %if.end58.i.out_nospc.i_crit_edge, %if.end52.i.out_nospc.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %out_nospc_locked.i ], [ %call53.i, %if.end52.i.out_nospc.i_crit_edge ], [ %call62.i, %if.end58.i.out_nospc.i_crit_edge ]
  call fastcc void @cleanup_write_cache_enospc(ptr noundef %call, ptr noundef %io_ctl, ptr noundef nonnull %cached_state.i) #14
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %out_nospc.i, %if.end37.i.out_unlock.i_crit_edge
  %ret.2.i = phi i32 [ %call38.i, %if.end37.i.out_unlock.i_crit_edge ], [ %ret.1.i, %out_nospc.i ]
  br i1 %tobool27.not.i, label %out_unlock.i.out.i_crit_edge, label %land.lhs.true88.i

out_unlock.i.out.i_crit_edge:                     ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

land.lhs.true88.i:                                ; preds = %out_unlock.i
  %flags89.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 10
  %74 = ptrtoint ptr %flags89.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %flags89.i, align 8
  %and90.i = and i64 %75, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and90.i)
  %tobool91.not.i = icmp eq i64 %and90.i, 0
  br i1 %tobool91.not.i, label %land.lhs.true88.i.out.i_crit_edge, label %if.then92.i

land.lhs.true88.i.out.i_crit_edge:                ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then92.i:                                      ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #16
  %data_rwsem93.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 14
  call void @up_write(ptr noundef %data_rwsem93.i) #14
  br label %out.i

out.i:                                            ; preds = %if.then92.i, %land.lhs.true88.i.out.i_crit_edge, %out_unlock.i.out.i_crit_edge, %if.end73.i.out.i_crit_edge, %if.then31.i
  %ret.3.i = phi i32 [ 0, %if.then31.i ], [ %ret.2.i, %if.then92.i ], [ %ret.2.i, %land.lhs.true88.i.out.i_crit_edge ], [ %ret.2.i, %out_unlock.i.out.i_crit_edge ], [ %call81.i, %if.end73.i.out.i_crit_edge ]
  %tobool104.not.i = phi i1 [ false, %if.then31.i ], [ true, %if.then92.i ], [ true, %land.lhs.true88.i.out.i_crit_edge ], [ true, %out_unlock.i.out.i_crit_edge ], [ true, %if.end73.i.out.i_crit_edge ]
  %76 = ptrtoint ptr %inode10.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %inode10.i.i, align 4
  %77 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pages.i, align 4
  call void @kfree(ptr noundef %78) #14
  %79 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool96.not.i = icmp eq i32 %ret.3.i, 0
  br i1 %tobool96.not.i, label %out.i.if.end101.i_crit_edge, label %if.then97.i

out.i.if.end101.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101.i

if.then97.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %80 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i_mapping.i, align 8
  %call98.i = call i32 @invalidate_inode_pages2(ptr noundef %81) #14
  %generation100.i = getelementptr i8, ptr %call, i32 -344
  %82 = ptrtoint ptr %generation100.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 0, ptr %generation100.i, align 8
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then97.i, %out.i.if.end101.i_crit_edge
  %add.ptr.i186.i = getelementptr i8, ptr %call, i32 -864
  %call103.i = call i32 @btrfs_update_inode(ptr noundef %trans, ptr noundef %7, ptr noundef %add.ptr.i186.i) #14
  br i1 %tobool104.not.i, label %if.end101.i.__btrfs_write_out_cache.exit_crit_edge, label %if.then105.i

if.end101.i.__btrfs_write_out_cache.exit_crit_edge: ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__btrfs_write_out_cache.exit

if.then105.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef %call) #14
  br label %__btrfs_write_out_cache.exit

__btrfs_write_out_cache.exit.thread:              ; preds = %if.end7.i.i.i.i.__btrfs_write_out_cache.exit.thread_crit_edge, %if.end.i.i.__btrfs_write_out_cache.exit.thread_crit_edge, %if.end16.i.__btrfs_write_out_cache.exit.thread_crit_edge, %if.end6.__btrfs_write_out_cache.exit.thread_crit_edge
  %retval.0.i42.ph = phi i32 [ -28, %if.end16.i.__btrfs_write_out_cache.exit.thread_crit_edge ], [ -12, %if.end7.i.i.i.i.__btrfs_write_out_cache.exit.thread_crit_edge ], [ -12, %if.end.i.i.__btrfs_write_out_cache.exit.thread_crit_edge ], [ -5, %if.end6.__btrfs_write_out_cache.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmaps.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entries.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bitmap_list.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state.i) #14
  br label %do.body

__btrfs_write_out_cache.exit:                     ; preds = %if.then105.i, %if.end101.i.__btrfs_write_out_cache.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmaps.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entries.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bitmap_list.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state.i) #14
  br i1 %tobool96.not.i, label %__btrfs_write_out_cache.exit.cleanup_crit_edge, label %__btrfs_write_out_cache.exit.do.body_crit_edge

__btrfs_write_out_cache.exit.do.body_crit_edge:   ; preds = %__btrfs_write_out_cache.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

__btrfs_write_out_cache.exit.cleanup_crit_edge:   ; preds = %__btrfs_write_out_cache.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %__btrfs_write_out_cache.exit.do.body_crit_edge, %__btrfs_write_out_cache.exit.thread
  %retval.0.i4245 = phi i32 [ %retval.0.i42.ph, %__btrfs_write_out_cache.exit.thread ], [ %ret.3.i, %__btrfs_write_out_cache.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_write_out_cache.__UNIQUE_ID_ddebug942, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_write_out_cache, %if.then13)) #14
          to label %do.end [label %if.then13], !srcloc !159

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %83 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %start, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.11, i64 noundef %84, i32 noundef %retval.0.i4245) #17
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  call void @_raw_spin_lock(ptr noundef %lock) #14
  %85 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %disk_cache_state, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  %inode19 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 38, i32 5
  %86 = ptrtoint ptr %inode19 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %inode19, align 4
  call void @iput(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__btrfs_write_out_cache.exit.cleanup_crit_edge, %__btrfs_write_out_cache.exit.thread46, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i4245, %do.end ], [ 0, %__btrfs_write_out_cache.exit.cleanup_crit_edge ], [ 0, %__btrfs_write_out_cache.exit.thread46 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__btrfs_add_free_space(ptr noundef %block_group, i64 noundef %offset, i64 noundef %bytes, i32 noundef %trim_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_space_ctl, align 4
  %4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.i.not = icmp eq i64 %6, 0
  br i1 %cmp.i.not, label %cond.end, label %cond.false, !prof !155

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.12, i32 noundef 2570) #20
  unreachable

cond.end:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %7 = load ptr, ptr @btrfs_free_space_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3392) #14
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %offset6 = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %offset6 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %offset, ptr %offset6, align 8
  %bytes7 = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %bytes7 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %bytes, ptr %bytes7, align 8
  %trim_state8 = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %trim_state8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %trim_state, ptr %trim_state8, align 4
  %11 = ptrtoint ptr %call.i to i32
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i, align 8
  %bytes_index = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %bytes_index to i32
  %14 = ptrtoint ptr %bytes_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bytes_index, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  %call12 = tail call fastcc zeroext i1 @try_merge_free_space(ptr noundef %3, ptr noundef nonnull %call.i, i1 noundef zeroext true)
  br i1 %call12, label %if.end.link_crit_edge, label %if.end14

if.end.link_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %link

if.end14:                                         ; preds = %if.end
  %15 = ptrtoint ptr %bytes7 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bytes7, align 8
  %17 = ptrtoint ptr %offset6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %offset6, align 8
  %19 = ptrtoint ptr %trim_state8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %trim_state8, align 4
  %op.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %op.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i86 = tail call zeroext i1 %24(ptr noundef %3, ptr noundef nonnull %call.i) #14
  br i1 %call.i86, label %if.end.i, label %if.end14.link_crit_edge

if.end14.link_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %link

if.end.i:                                         ; preds = %if.end14
  %25 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %op.i, align 8
  %cmp.i87 = icmp eq ptr %26, @free_space_op
  br i1 %cmp.i87, label %if.then5.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %block_group6.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 12
  %27 = ptrtoint ptr %block_group6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %block_group6.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %block_group.0.i = phi ptr [ %28, %if.then5.i ], [ null, %if.end.i.if.end7.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %block_group.0.i, null
  %cluster_list.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group.0.i, i32 0, i32 27
  %unit.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 7
  %start.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 8
  %free_space_offset.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 1
  br label %again.outer.i

again.outer.i:                                    ; preds = %again.outer.i.backedge, %if.end7.i
  %cmp42.ph.i = phi i1 [ true, %if.end7.i ], [ %cmp42.ph.i.be, %again.outer.i.backedge ]
  %bytes.0.ph.i = phi i64 [ %16, %if.end7.i ], [ %bytes.3.i, %again.outer.i.backedge ]
  %offset.0.ph.i = phi i64 [ %18, %if.end7.i ], [ %offset.3.i, %again.outer.i.backedge ]
  %info.addr.0.ph.i = phi ptr [ %call.i, %if.end7.i ], [ %info.addr.0.ph.i.be, %again.outer.i.backedge ]
  br label %again.i

again.i:                                          ; preds = %if.end45.i.again.i_crit_edge, %again.outer.i
  %cmp42.i = phi i1 [ true, %if.end45.i.again.i_crit_edge ], [ %cmp42.ph.i, %again.outer.i ]
  %bytes.0.i = phi i64 [ %sub47.i, %if.end45.i.again.i_crit_edge ], [ %bytes.0.ph.i, %again.outer.i ]
  %offset.0.i = phi i64 [ %add48.i, %if.end45.i.again.i_crit_edge ], [ %offset.0.ph.i, %again.outer.i ]
  br i1 %tobool.not.i, label %again.i.no_cluster_bitmap.i_crit_edge, label %land.lhs.true.i

again.i.no_cluster_bitmap.i_crit_edge:            ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_cluster_bitmap.i

land.lhs.true.i:                                  ; preds = %again.i
  %29 = ptrtoint ptr %cluster_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %cluster_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %30, %cluster_list.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i.no_cluster_bitmap.i_crit_edge, label %if.then10.i

land.lhs.true.i.no_cluster_bitmap.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_cluster_bitmap.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %add.ptr.i = getelementptr i8, ptr %30, i32 -120
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #14
  %root.i = getelementptr i8, ptr %30, i32 -32
  %call13.i = tail call ptr @rb_first(ptr noundef %root.i) #14
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.then10.i.no_cluster_bitmap.sink.split.i_crit_edge, label %if.end17.i

if.then10.i.no_cluster_bitmap.sink.split.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_cluster_bitmap.sink.split.i

if.end17.i:                                       ; preds = %if.then10.i
  %bitmap.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call13.i, i32 0, i32 5
  %31 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bitmap.i, align 8
  %tobool21.not.i = icmp eq ptr %32, null
  br i1 %tobool21.not.i, label %if.end17.i.no_cluster_bitmap.sink.split.i_crit_edge, label %if.end24.i

if.end17.i.no_cluster_bitmap.sink.split.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_cluster_bitmap.sink.split.i

if.end24.i:                                       ; preds = %if.end17.i
  %offset25.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call13.i, i32 0, i32 2
  %33 = ptrtoint ptr %offset25.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %offset25.i, align 8
  %35 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %unit.i.i, align 4
  %mul.i.i = shl i32 %36, 15
  %conv.i141.i = zext i32 %mul.i.i to i64
  %37 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start.i.i, align 8
  %sub.i.i = sub i64 %offset.0.i, %38
  %call.i.i = tail call i64 @div64_u64(i64 noundef %sub.i.i, i64 noundef %conv.i141.i) #14
  %mul1.i.i = mul i64 %call.i.i, %conv.i141.i
  %39 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %start.i.i, align 8
  %add.i.i = add i64 %mul1.i.i, %40
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %add.i.i)
  %cmp27.i = icmp eq i64 %34, %add.i.i
  br i1 %cmp27.i, label %if.then28.i, label %if.end24.i.if.end30.i_crit_edge

if.end24.i.if.end30.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %call29.i = tail call fastcc i64 @add_bytes_to_bitmap(ptr noundef %3, ptr noundef nonnull %call13.i, i64 noundef %offset.0.i, i64 noundef %bytes.0.i, i32 noundef %20) #14
  %sub.i = sub i64 %bytes.0.i, %call29.i
  %add.i = add i64 %call29.i, %offset.0.i
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end24.i.if.end30.i_crit_edge
  %bytes.1.i = phi i64 [ %sub.i, %if.then28.i ], [ %bytes.0.i, %if.end24.i.if.end30.i_crit_edge ]
  %offset.1.i = phi i64 [ %add.i, %if.then28.i ], [ %offset.0.i, %if.end24.i.if.end30.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bytes.1.i)
  %tobool32.not.i = icmp eq i64 %bytes.1.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.out.i_crit_edge, label %if.end30.i.no_cluster_bitmap.i_crit_edge

if.end30.i.no_cluster_bitmap.i_crit_edge:         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %no_cluster_bitmap.i

if.end30.i.out.i_crit_edge:                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

no_cluster_bitmap.sink.split.i:                   ; preds = %if.end17.i.no_cluster_bitmap.sink.split.i_crit_edge, %if.then10.i.no_cluster_bitmap.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #14
  br label %no_cluster_bitmap.i

no_cluster_bitmap.i:                              ; preds = %no_cluster_bitmap.sink.split.i, %if.end30.i.no_cluster_bitmap.i_crit_edge, %land.lhs.true.i.no_cluster_bitmap.i_crit_edge, %again.i.no_cluster_bitmap.i_crit_edge
  %bytes.3.i = phi i64 [ %bytes.0.i, %land.lhs.true.i.no_cluster_bitmap.i_crit_edge ], [ %bytes.0.i, %again.i.no_cluster_bitmap.i_crit_edge ], [ %bytes.1.i, %if.end30.i.no_cluster_bitmap.i_crit_edge ], [ %bytes.0.i, %no_cluster_bitmap.sink.split.i ]
  %offset.3.i = phi i64 [ %offset.0.i, %land.lhs.true.i.no_cluster_bitmap.i_crit_edge ], [ %offset.0.i, %again.i.no_cluster_bitmap.i_crit_edge ], [ %offset.1.i, %if.end30.i.no_cluster_bitmap.i_crit_edge ], [ %offset.0.i, %no_cluster_bitmap.sink.split.i ]
  %41 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %unit.i.i, align 4
  %mul.i143.i = shl i32 %42, 15
  %conv.i144.i = zext i32 %mul.i143.i to i64
  %43 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %start.i.i, align 8
  %sub.i146.i = sub i64 %offset.3.i, %44
  %call.i147.i = tail call i64 @div64_u64(i64 noundef %sub.i146.i, i64 noundef %conv.i144.i) #14
  %mul1.i148.i = mul i64 %call.i147.i, %conv.i144.i
  %45 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %start.i.i, align 8
  %add.i149.i = add i64 %mul1.i148.i, %46
  %47 = ptrtoint ptr %free_space_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %n.0252.i.i = load ptr, ptr %free_space_offset.i.i, align 4
  %tobool.not253.i.i = icmp eq ptr %n.0252.i.i, null
  br i1 %tobool.not253.i.i, label %no_cluster_bitmap.i.if.then41.i_crit_edge, label %no_cluster_bitmap.i.while.body.i.i_crit_edge

no_cluster_bitmap.i.while.body.i.i_crit_edge:     ; preds = %no_cluster_bitmap.i
  br label %while.body.i.i

no_cluster_bitmap.i.if.then41.i_crit_edge:        ; preds = %no_cluster_bitmap.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41.i

while.body.i.i:                                   ; preds = %if.end7.i.i.while.body.i.i_crit_edge, %no_cluster_bitmap.i.while.body.i.i_crit_edge
  %n.0254.i.i = phi ptr [ %n.0.i.i, %if.end7.i.i.while.body.i.i_crit_edge ], [ %n.0252.i.i, %no_cluster_bitmap.i.while.body.i.i_crit_edge ]
  %offset2.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %offset2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %add.i149.i)
  %cmp.i150.i = icmp ugt i64 %49, %add.i149.i
  br i1 %cmp.i150.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i.i, i32 0, i32 2
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %add.i149.i)
  %cmp4.i.i = icmp ult i64 %49, %add.i149.i
  br i1 %cmp4.i.i, label %if.then5.i.i, label %while.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i.i, i32 0, i32 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then5.i.i ]
  %50 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.if.then41.i_crit_edge, label %if.end7.i.i.while.body.i.i_crit_edge

if.end7.i.i.while.body.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

if.end7.i.i.if.then41.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41.i

while.end.i.i:                                    ; preds = %if.else.i.i
  %bitmap54.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %bitmap54.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bitmap54.i.i, align 8
  %tobool55.not.i.i = icmp eq ptr %52, null
  br i1 %tobool55.not.i.i, label %if.end15.i.i, label %while.end.i.i.if.end45.i_crit_edge

while.end.i.i.if.end45.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.end15.i.i:                                     ; preds = %while.end.i.i
  %call.i151.i = tail call ptr @rb_next(ptr noundef nonnull %n.0254.i.i) #14
  %tobool16.not.i.i = icmp eq ptr %call.i151.i, null
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.then41.i_crit_edge, label %if.end18.i.i

if.end15.i.i.if.then41.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41.i

if.end18.i.i:                                     ; preds = %if.end15.i.i
  %offset22.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i151.i, i32 0, i32 2
  %53 = ptrtoint ptr %offset22.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %offset22.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %add.i149.i)
  %cmp23.not.i.i = icmp eq i64 %54, %add.i149.i
  br i1 %cmp23.not.i.i, label %if.end25.i.i, label %if.end18.i.i.if.then41.i_crit_edge

if.end18.i.i.if.then41.i_crit_edge:               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41.i

if.end25.i.i:                                     ; preds = %if.end18.i.i
  %bitmap26.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i151.i, i32 0, i32 5
  %55 = ptrtoint ptr %bitmap26.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bitmap26.i.i, align 8
  %tobool27.not.i.i = icmp eq ptr %56, null
  br i1 %tobool27.not.i.i, label %do.end.i.i, label %if.end25.i.i.if.end45.i_crit_edge, !prof !160

if.end25.i.i.if.end45.i_crit_edge:                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

do.end.i.i:                                       ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1690, i32 noundef 9, ptr noundef null) #14
  br label %if.end45.i

if.then41.i:                                      ; preds = %if.end18.i.i.if.then41.i_crit_edge, %if.end15.i.i.if.then41.i_crit_edge, %if.end7.i.i.if.then41.i_crit_edge, %no_cluster_bitmap.i.if.then41.i_crit_edge
  br i1 %cmp42.i, label %new_bitmap.i, label %cond.false.i, !prof !155

cond.false.i:                                     ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.49, i32 noundef 2316) #19
  unreachable

if.end45.i:                                       ; preds = %do.end.i.i, %if.end25.i.i.if.end45.i_crit_edge, %while.end.i.i.if.end45.i_crit_edge
  %retval.0.i.i = phi ptr [ %n.0254.i.i, %while.end.i.i.if.end45.i_crit_edge ], [ %call.i151.i, %do.end.i.i ], [ %call.i151.i, %if.end25.i.i.if.end45.i_crit_edge ]
  %call46.i = tail call fastcc i64 @add_bytes_to_bitmap(ptr noundef %3, ptr noundef nonnull %retval.0.i.i, i64 noundef %offset.3.i, i64 noundef %bytes.3.i, i32 noundef %20) #14
  %sub47.i = sub i64 %bytes.3.i, %call46.i
  %add48.i = add i64 %call46.i, %offset.3.i
  %tobool49.not.i = icmp eq i64 %sub47.i, 0
  br i1 %tobool49.not.i, label %if.end45.i.out.i_crit_edge, label %if.end45.i.again.i_crit_edge

if.end45.i.again.i_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.i

if.end45.i.out.i_crit_edge:                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

new_bitmap.i:                                     ; preds = %if.then41.i
  %tobool51.not.i = icmp eq ptr %info.addr.0.ph.i, null
  br i1 %tobool51.not.i, label %if.then58.critedge.i, label %land.lhs.true52.i

land.lhs.true52.i:                                ; preds = %new_bitmap.i
  %bitmap53.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info.addr.0.ph.i, i32 0, i32 5
  %57 = ptrtoint ptr %bitmap53.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bitmap53.i, align 8
  %tobool54.not.i = icmp eq ptr %58, null
  br i1 %tobool54.not.i, label %if.end64.critedge.i, label %if.then55.i

if.then55.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @add_new_bitmap(ptr noundef %3, ptr noundef nonnull %info.addr.0.ph.i, i64 noundef %offset.3.i) #14
  br label %again.outer.i.backedge

if.then58.critedge.i:                             ; preds = %new_bitmap.i
  tail call void @_raw_spin_unlock(ptr noundef %3) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %59 = load ptr, ptr @btrfs_free_space_cachep, align 4
  %call.i152.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %59, i32 noundef 3392) #14
  %tobool60.not.i = icmp eq ptr %call.i152.i, null
  br i1 %tobool60.not.i, label %insert_into_bitmap.exit.thread91, label %if.then58.critedge.i.if.end64.i_crit_edge

if.then58.critedge.i.if.end64.i_crit_edge:        ; preds = %if.then58.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i

insert_into_bitmap.exit.thread91:                 ; preds = %if.then58.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  br label %out

if.end64.critedge.i:                              ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %3) #14
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.end64.critedge.i, %if.then58.critedge.i.if.end64.i_crit_edge
  %info.addr.1.i = phi ptr [ %call.i152.i, %if.then58.critedge.i.if.end64.i_crit_edge ], [ %info.addr.0.ph.i, %if.end64.critedge.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_bitmap_cachep to i32))
  %60 = load ptr, ptr @btrfs_free_space_bitmap_cachep, align 4
  %call.i153.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %60, i32 noundef 3392) #14
  %bitmap66.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info.addr.1.i, i32 0, i32 5
  %61 = ptrtoint ptr %bitmap66.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i153.i, ptr %bitmap66.i, align 8
  %trim_state67.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info.addr.1.i, i32 0, i32 7
  %62 = ptrtoint ptr %trim_state67.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %trim_state67.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  %63 = ptrtoint ptr %bitmap66.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bitmap66.i, align 8
  %tobool70.not.i = icmp eq ptr %64, null
  br i1 %tobool70.not.i, label %if.end64.i.if.then74.i_crit_edge, label %if.end64.i.again.outer.i.backedge_crit_edge

if.end64.i.again.outer.i.backedge_crit_edge:      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.outer.i.backedge

if.end64.i.if.then74.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then74.i

again.outer.i.backedge:                           ; preds = %if.end64.i.again.outer.i.backedge_crit_edge, %if.then55.i
  %cmp42.ph.i.be = phi i1 [ false, %if.then55.i ], [ true, %if.end64.i.again.outer.i.backedge_crit_edge ]
  %info.addr.0.ph.i.be = phi ptr [ null, %if.then55.i ], [ %info.addr.1.i, %if.end64.i.again.outer.i.backedge_crit_edge ]
  br label %again.outer.i

out.i:                                            ; preds = %if.end45.i.out.i_crit_edge, %if.end30.i.out.i_crit_edge
  %tobool73.not.i = icmp eq ptr %info.addr.0.ph.i, null
  br i1 %tobool73.not.i, label %out.i.out_crit_edge, label %out.i.if.then74.i_crit_edge

out.i.if.then74.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then74.i

out.i.out_crit_edge:                              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then74.i:                                      ; preds = %out.i.if.then74.i_crit_edge, %if.end64.i.if.then74.i_crit_edge
  %info.addr.2168.i = phi ptr [ %info.addr.0.ph.i, %out.i.if.then74.i_crit_edge ], [ %info.addr.1.i, %if.end64.i.if.then74.i_crit_edge ]
  %cmp = phi i32 [ 0, %out.i.if.then74.i_crit_edge ], [ -12, %if.end64.i.if.then74.i_crit_edge ]
  %bitmap75.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info.addr.2168.i, i32 0, i32 5
  %65 = ptrtoint ptr %bitmap75.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bitmap75.i, align 8
  %tobool76.not.i = icmp eq ptr %66, null
  br i1 %tobool76.not.i, label %if.then74.i.insert_into_bitmap.exit_crit_edge, label %if.then77.i

if.then74.i.insert_into_bitmap.exit_crit_edge:    ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %insert_into_bitmap.exit

if.then77.i:                                      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_bitmap_cachep to i32))
  %67 = load ptr, ptr @btrfs_free_space_bitmap_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %67, ptr noundef nonnull %66) #14
  br label %insert_into_bitmap.exit

insert_into_bitmap.exit:                          ; preds = %if.then77.i, %if.then74.i.insert_into_bitmap.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %68 = load ptr, ptr @btrfs_free_space_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %68, ptr noundef nonnull %info.addr.2168.i) #14
  br label %out

link:                                             ; preds = %if.end14.link_crit_edge, %if.end.link_crit_edge
  tail call fastcc void @steal_from_bitmap(ptr noundef %3, ptr noundef nonnull %call.i, i1 noundef zeroext true)
  %69 = ptrtoint ptr %bytes7 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %bytes7, align 8
  %71 = tail call i64 @llvm.umax.i64(i64 %70, i64 %bytes)
  %call26 = tail call fastcc i32 @link_free_space(ptr noundef %3, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %link.out_crit_edge, label %if.then28

link.out_crit_edge:                               ; preds = %link
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then28:                                        ; preds = %link
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %72 = load ptr, ptr @btrfs_free_space_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %72, ptr noundef nonnull %call.i) #14
  br label %out

out:                                              ; preds = %if.then28, %link.out_crit_edge, %insert_into_bitmap.exit, %out.i.out_crit_edge, %insert_into_bitmap.exit.thread91
  %ret.0 = phi i32 [ %call26, %if.then28 ], [ 0, %link.out_crit_edge ], [ -12, %insert_into_bitmap.exit.thread91 ], [ 0, %out.i.out_crit_edge ], [ %cmp, %insert_into_bitmap.exit ]
  %filter_bytes.0 = phi i64 [ %71, %if.then28 ], [ %71, %link.out_crit_edge ], [ %bytes, %insert_into_bitmap.exit.thread91 ], [ %bytes, %out.i.out_crit_edge ], [ %bytes, %insert_into_bitmap.exit ]
  tail call void @btrfs_discard_update_discardable(ptr noundef %block_group) #14
  tail call void @_raw_spin_unlock(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool31.not = icmp eq i32 %ret.0, 0
  br i1 %tobool31.not, label %out.if.end43_crit_edge, label %if.then32

out.if.end43_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then32:                                        ; preds = %out
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %ret.0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %ret.0)
  %cmp33.not = icmp eq i32 %ret.0, -17
  br i1 %cmp33.not, label %cond.false41, label %if.then32.if.end43_crit_edge, !prof !160

if.then32.if.end43_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

cond.false41:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.14, i32 noundef 2619) #20
  unreachable

if.end43:                                         ; preds = %if.then32.if.end43_crit_edge, %out.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %trim_state)
  %cmp44.not = icmp eq i32 %trim_state, 1
  br i1 %cmp44.not, label %if.end43.cleanup_crit_edge, label %if.then45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_discard_check_filter(ptr noundef %block_group, i64 noundef %filter_bytes.0) #14
  %discard_ctl = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 134
  tail call void @btrfs_discard_queue_work(ptr noundef %discard_ctl, ptr noundef %block_group) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end43.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %cond.end.cleanup_crit_edge ], [ %ret.0, %if.then45 ], [ %ret.0, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #4 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #14, !srcloc !161
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @try_merge_free_space(ptr noundef %ctl, ptr nocapture noundef %info, i1 noundef zeroext %update_stat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset1, align 8
  %bytes2 = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %bytes2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytes2, align 8
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 7
  %4 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %add = add i64 %3, %1
  %call4 = tail call fastcc ptr @tree_search_offset(ptr noundef %ctl, i64 noundef %add, i32 noundef 0, i32 noundef 0)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call ptr @rb_prev(ptr noundef nonnull %call4) #14
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %land.lhs.true.land.lhs.true14_crit_edge, label %if.then

land.lhs.true.land.lhs.true14_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true14

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call ptr @rb_prev(ptr noundef nonnull %call4) #14
  br label %land.lhs.true14

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add i64 %1, -1
  %call11 = tail call fastcc ptr @tree_search_offset(ptr noundef %ctl, i64 noundef %sub, i32 noundef 0, i32 noundef 0)
  br label %if.end24

land.lhs.true14:                                  ; preds = %if.then, %land.lhs.true.land.lhs.true14_crit_edge
  %left_info.0.ph = phi ptr [ null, %land.lhs.true.land.lhs.true14_crit_edge ], [ %call8, %if.then ]
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %call4, i32 0, i32 5
  %6 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap, align 8
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %land.lhs.true16, label %land.lhs.true14.if.end24_crit_edge

land.lhs.true14.if.end24_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true16:                                  ; preds = %land.lhs.true14
  br i1 %cmp.i, label %lor.lhs.false, label %land.lhs.true16.if.then19_crit_edge

land.lhs.true16.if.then19_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

lor.lhs.false:                                    ; preds = %land.lhs.true16
  %trim_state.i78 = getelementptr inbounds %struct.btrfs_free_space, ptr %call4, i32 0, i32 7
  %8 = ptrtoint ptr %trim_state.i78 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trim_state.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i79 = icmp eq i32 %9, 1
  br i1 %cmp.i79, label %lor.lhs.false.if.then19_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %land.lhs.true16.if.then19_crit_edge
  %free_space_offset.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 1
  tail call void @rb_erase(ptr noundef nonnull %call4, ptr noundef %free_space_offset.i) #14
  %bytes_index.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call4, i32 0, i32 1
  %free_space_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2
  %rb_leftmost.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i = icmp eq ptr %11, %bytes_index.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then19.rb_erase_cached.exit.i_crit_edge

if.then19.rb_erase_cached.exit.i_crit_edge:       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call ptr @rb_next(ptr noundef %bytes_index.i) #14
  %12 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %rb_leftmost.i.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.then19.rb_erase_cached.exit.i_crit_edge
  tail call void @rb_erase(ptr noundef %bytes_index.i, ptr noundef %free_space_bytes.i) #14
  %free_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 5
  %13 = ptrtoint ptr %free_extents.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %free_extents.i, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %free_extents.i, align 4
  %15 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitmap, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rb_erase_cached.exit.i.if.end.i_crit_edge

rb_erase_cached.exit.i.if.end.i_crit_edge:        ; preds = %rb_erase_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %rb_erase_cached.exit.i
  %trim_state.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call4, i32 0, i32 7
  %17 = ptrtoint ptr %trim_state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %trim_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i19.i = icmp eq i32 %18, 1
  br i1 %cmp.i19.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %discardable_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 9
  %19 = ptrtoint ptr %discardable_extents.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %discardable_extents.i, align 8
  %dec2.i = add i32 %20, -1
  store i32 %dec2.i, ptr %discardable_extents.i, align 8
  %bytes.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call4, i32 0, i32 3
  %21 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes.i, align 8
  %discardable_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 10
  %23 = ptrtoint ptr %discardable_bytes.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %discardable_bytes.i, align 8
  %sub.i = sub i64 %24, %22
  store i64 %sub.i, ptr %discardable_bytes.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %rb_erase_cached.exit.i.if.end.i_crit_edge
  br i1 %update_stat, label %if.then5.i, label %if.end.i.unlink_free_space.exit_crit_edge

if.end.i.unlink_free_space.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %bytes6.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call4, i32 0, i32 3
  %25 = ptrtoint ptr %bytes6.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bytes6.i, align 8
  %free_space.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 3
  %27 = ptrtoint ptr %free_space.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %free_space.i, align 8
  %sub7.i = sub i64 %28, %26
  store i64 %sub7.i, ptr %free_space.i, align 8
  br label %unlink_free_space.exit

unlink_free_space.exit:                           ; preds = %if.then5.i, %if.end.i.unlink_free_space.exit_crit_edge
  %bytes21 = getelementptr inbounds %struct.btrfs_free_space, ptr %call4, i32 0, i32 3
  %29 = ptrtoint ptr %bytes21 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bytes21, align 8
  %31 = ptrtoint ptr %bytes2 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes2, align 8
  %add23 = add i64 %32, %30
  store i64 %add23, ptr %bytes2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %33 = load ptr, ptr @btrfs_free_space_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %33, ptr noundef nonnull %call4) #14
  br label %if.end24

if.end24:                                         ; preds = %unlink_free_space.exit, %lor.lhs.false.if.end24_crit_edge, %land.lhs.true14.if.end24_crit_edge, %if.end12
  %left_info.0111 = phi ptr [ %left_info.0.ph, %land.lhs.true14.if.end24_crit_edge ], [ %left_info.0.ph, %unlink_free_space.exit ], [ %left_info.0.ph, %lor.lhs.false.if.end24_crit_edge ], [ %call11, %if.end12 ]
  %merged.0.off0 = phi i1 [ false, %land.lhs.true14.if.end24_crit_edge ], [ true, %unlink_free_space.exit ], [ false, %lor.lhs.false.if.end24_crit_edge ], [ false, %if.end12 ]
  %tobool25.not = icmp eq ptr %left_info.0111, null
  br i1 %tobool25.not, label %if.end24.if.end44_crit_edge, label %land.lhs.true26

if.end24.if.end44_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

land.lhs.true26:                                  ; preds = %if.end24
  %bitmap27 = getelementptr inbounds %struct.btrfs_free_space, ptr %left_info.0111, i32 0, i32 5
  %34 = ptrtoint ptr %bitmap27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bitmap27, align 8
  %tobool28.not = icmp eq ptr %35, null
  br i1 %tobool28.not, label %land.lhs.true29, label %land.lhs.true26.if.end44_crit_edge

land.lhs.true26.if.end44_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %offset30 = getelementptr inbounds %struct.btrfs_free_space, ptr %left_info.0111, i32 0, i32 2
  %36 = ptrtoint ptr %offset30 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %offset30, align 8
  %bytes31 = getelementptr inbounds %struct.btrfs_free_space, ptr %left_info.0111, i32 0, i32 3
  %38 = ptrtoint ptr %bytes31 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %bytes31, align 8
  %add32 = add i64 %39, %37
  call void @__sanitizer_cov_trace_cmp8(i64 %add32, i64 %1)
  %cmp = icmp eq i64 %add32, %1
  br i1 %cmp, label %land.lhs.true33, label %land.lhs.true29.if.end44_crit_edge

land.lhs.true29.if.end44_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

land.lhs.true33:                                  ; preds = %land.lhs.true29
  br i1 %cmp.i, label %lor.lhs.false35, label %land.lhs.true33.if.then37_crit_edge

land.lhs.true33.if.then37_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

lor.lhs.false35:                                  ; preds = %land.lhs.true33
  %trim_state.i80 = getelementptr inbounds %struct.btrfs_free_space, ptr %left_info.0111, i32 0, i32 7
  %40 = ptrtoint ptr %trim_state.i80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %trim_state.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i81 = icmp eq i32 %41, 1
  br i1 %cmp.i81, label %lor.lhs.false35.if.then37_crit_edge, label %lor.lhs.false35.if.end44_crit_edge

lor.lhs.false35.if.end44_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

lor.lhs.false35.if.then37_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false35.if.then37_crit_edge, %land.lhs.true33.if.then37_crit_edge
  %free_space_offset.i82 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 1
  tail call void @rb_erase(ptr noundef nonnull %left_info.0111, ptr noundef %free_space_offset.i82) #14
  %bytes_index.i83 = getelementptr inbounds %struct.btrfs_free_space, ptr %left_info.0111, i32 0, i32 1
  %free_space_bytes.i84 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2
  %rb_leftmost.i.i85 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %rb_leftmost.i.i85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rb_leftmost.i.i85, align 4
  %cmp.i.i86 = icmp eq ptr %43, %bytes_index.i83
  br i1 %cmp.i.i86, label %if.then.i.i88, label %if.then37.rb_erase_cached.exit.i93_crit_edge

if.then37.rb_erase_cached.exit.i93_crit_edge:     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit.i93

if.then.i.i88:                                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i87 = tail call ptr @rb_next(ptr noundef %bytes_index.i83) #14
  %44 = ptrtoint ptr %rb_leftmost.i.i85 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i87, ptr %rb_leftmost.i.i85, align 4
  br label %rb_erase_cached.exit.i93

rb_erase_cached.exit.i93:                         ; preds = %if.then.i.i88, %if.then37.rb_erase_cached.exit.i93_crit_edge
  tail call void @rb_erase(ptr noundef %bytes_index.i83, ptr noundef %free_space_bytes.i84) #14
  %free_extents.i89 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 5
  %45 = ptrtoint ptr %free_extents.i89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %free_extents.i89, align 4
  %dec.i90 = add i32 %46, -1
  store i32 %dec.i90, ptr %free_extents.i89, align 4
  %47 = ptrtoint ptr %bitmap27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bitmap27, align 8
  %tobool.not.i92 = icmp eq ptr %48, null
  br i1 %tobool.not.i92, label %land.lhs.true.i96, label %rb_erase_cached.exit.i93.if.end.i103_crit_edge

rb_erase_cached.exit.i93.if.end.i103_crit_edge:   ; preds = %rb_erase_cached.exit.i93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i103

land.lhs.true.i96:                                ; preds = %rb_erase_cached.exit.i93
  %trim_state.i.i94 = getelementptr inbounds %struct.btrfs_free_space, ptr %left_info.0111, i32 0, i32 7
  %49 = ptrtoint ptr %trim_state.i.i94 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %trim_state.i.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i19.i95 = icmp eq i32 %50, 1
  br i1 %cmp.i19.i95, label %land.lhs.true.i96.if.end.i103_crit_edge, label %if.then.i102

land.lhs.true.i96.if.end.i103_crit_edge:          ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i103

if.then.i102:                                     ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #16
  %discardable_extents.i97 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 9
  %51 = ptrtoint ptr %discardable_extents.i97 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %discardable_extents.i97, align 8
  %dec2.i98 = add i32 %52, -1
  store i32 %dec2.i98, ptr %discardable_extents.i97, align 8
  %53 = ptrtoint ptr %bytes31 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bytes31, align 8
  %discardable_bytes.i100 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 10
  %55 = ptrtoint ptr %discardable_bytes.i100 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %discardable_bytes.i100, align 8
  %sub.i101 = sub i64 %56, %54
  store i64 %sub.i101, ptr %discardable_bytes.i100, align 8
  br label %if.end.i103

if.end.i103:                                      ; preds = %if.then.i102, %land.lhs.true.i96.if.end.i103_crit_edge, %rb_erase_cached.exit.i93.if.end.i103_crit_edge
  br i1 %update_stat, label %if.then5.i107, label %if.end.i103.unlink_free_space.exit108_crit_edge

if.end.i103.unlink_free_space.exit108_crit_edge:  ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit108

if.then5.i107:                                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %bytes31 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %bytes31, align 8
  %free_space.i105 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 3
  %59 = ptrtoint ptr %free_space.i105 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %free_space.i105, align 8
  %sub7.i106 = sub i64 %60, %58
  store i64 %sub7.i106, ptr %free_space.i105, align 8
  br label %unlink_free_space.exit108

unlink_free_space.exit108:                        ; preds = %if.then5.i107, %if.end.i103.unlink_free_space.exit108_crit_edge
  %61 = ptrtoint ptr %offset30 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %offset30, align 8
  %63 = ptrtoint ptr %offset1 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %offset1, align 8
  %64 = ptrtoint ptr %bytes31 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %bytes31, align 8
  %66 = ptrtoint ptr %bytes2 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %bytes2, align 8
  %add43 = add i64 %67, %65
  store i64 %add43, ptr %bytes2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %68 = load ptr, ptr @btrfs_free_space_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %68, ptr noundef nonnull %left_info.0111) #14
  br label %if.end44

if.end44:                                         ; preds = %unlink_free_space.exit108, %lor.lhs.false35.if.end44_crit_edge, %land.lhs.true29.if.end44_crit_edge, %land.lhs.true26.if.end44_crit_edge, %if.end24.if.end44_crit_edge
  %merged.1.off0 = phi i1 [ %merged.0.off0, %land.lhs.true26.if.end44_crit_edge ], [ true, %unlink_free_space.exit108 ], [ %merged.0.off0, %lor.lhs.false35.if.end44_crit_edge ], [ %merged.0.off0, %land.lhs.true29.if.end44_crit_edge ], [ %merged.0.off0, %if.end24.if.end44_crit_edge ]
  ret i1 %merged.1.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @steal_from_bitmap(ptr noundef %ctl, ptr noundef %info, i1 noundef zeroext %update_stat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.end, label %cond.false, !prof !155

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.50, i32 noundef 2543) #20
  unreachable

cond.end:                                         ; preds = %entry
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 8
  %4 = ptrtoint ptr %info to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %cond.end13, label %cond.false12, !prof !155

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.51, i32 noundef 2544) #20
  unreachable

cond.end13:                                       ; preds = %cond.end
  %total_bitmaps = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 6
  %5 = ptrtoint ptr %total_bitmaps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total_bitmaps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp14 = icmp sgt i32 %6, 0
  br i1 %cmp14, label %if.then, label %cond.end13.if.end29_crit_edge

cond.end13.if.end29_crit_edge:                    ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %cond.end13
  %offset.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset.i, align 8
  %bytes.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bytes.i, align 8
  %add.i = add i64 %10, %8
  %unit.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  %11 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unit.i.i, align 4
  %mul.i.i = shl i32 %12, 15
  %conv.i.i = zext i32 %mul.i.i to i64
  %start.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 8
  %13 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %start.i.i, align 8
  %sub.i.i = sub i64 %add.i, %14
  %call.i.i = tail call i64 @div64_u64(i64 noundef %sub.i.i, i64 noundef %conv.i.i) #14
  %mul1.i.i = mul i64 %call.i.i, %conv.i.i
  %15 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %start.i.i, align 8
  %add.i.i = add i64 %mul1.i.i, %16
  %free_space_offset.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 1
  %17 = ptrtoint ptr %free_space_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %n.0252.i.i = load ptr, ptr %free_space_offset.i.i, align 4
  %tobool.not253.i.i = icmp eq ptr %n.0252.i.i, null
  br i1 %tobool.not253.i.i, label %if.then.steal_from_bitmap_to_end.exit_crit_edge, label %if.then.while.body.i.i_crit_edge

if.then.while.body.i.i_crit_edge:                 ; preds = %if.then
  br label %while.body.i.i

if.then.steal_from_bitmap_to_end.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %steal_from_bitmap_to_end.exit

while.body.i.i:                                   ; preds = %if.end7.i.i.while.body.i.i_crit_edge, %if.then.while.body.i.i_crit_edge
  %n.0254.i.i = phi ptr [ %n.0.i.i, %if.end7.i.i.while.body.i.i_crit_edge ], [ %n.0252.i.i, %if.then.while.body.i.i_crit_edge ]
  %offset2.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offset2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %add.i.i)
  %cmp.i.i = icmp ugt i64 %19, %add.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i.i, i32 0, i32 2
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %add.i.i)
  %cmp4.i.i = icmp ult i64 %19, %add.i.i
  br i1 %cmp4.i.i, label %if.then5.i.i, label %while.end.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i.i, i32 0, i32 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then5.i.i ]
  %20 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.steal_from_bitmap_to_end.exit_crit_edge, label %if.end7.i.i.while.body.i.i_crit_edge

if.end7.i.i.while.body.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

if.end7.i.i.steal_from_bitmap_to_end.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %steal_from_bitmap_to_end.exit

while.end.i.i:                                    ; preds = %if.else.i.i
  %bitmap54.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %bitmap54.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bitmap54.i.i, align 8
  %tobool55.not.i.i = icmp eq ptr %22, null
  br i1 %tobool55.not.i.i, label %if.end15.i.i, label %while.end.i.i.if.end.i_crit_edge

while.end.i.i.if.end.i_crit_edge:                 ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end15.i.i:                                     ; preds = %while.end.i.i
  %call.i45.i = tail call ptr @rb_next(ptr noundef nonnull %n.0254.i.i) #14
  %tobool16.not.i.i = icmp eq ptr %call.i45.i, null
  br i1 %tobool16.not.i.i, label %if.end15.i.i.steal_from_bitmap_to_end.exit_crit_edge, label %if.end18.i.i

if.end15.i.i.steal_from_bitmap_to_end.exit_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %steal_from_bitmap_to_end.exit

if.end18.i.i:                                     ; preds = %if.end15.i.i
  %offset22.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i45.i, i32 0, i32 2
  %23 = ptrtoint ptr %offset22.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %offset22.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %add.i.i)
  %cmp23.not.i.i = icmp eq i64 %24, %add.i.i
  br i1 %cmp23.not.i.i, label %if.end25.i.i, label %if.end18.i.i.steal_from_bitmap_to_end.exit_crit_edge

if.end18.i.i.steal_from_bitmap_to_end.exit_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %steal_from_bitmap_to_end.exit

if.end25.i.i:                                     ; preds = %if.end18.i.i
  %bitmap26.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i45.i, i32 0, i32 5
  %25 = ptrtoint ptr %bitmap26.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bitmap26.i.i, align 8
  %tobool27.not.i.i = icmp eq ptr %26, null
  br i1 %tobool27.not.i.i, label %do.end.i.i, label %if.end25.i.i.if.end.i_crit_edge, !prof !160

if.end25.i.i.if.end.i_crit_edge:                  ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i.i:                                       ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1690, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i.i, %if.end25.i.i.if.end.i_crit_edge, %while.end.i.i.if.end.i_crit_edge
  %retval.0.i.i = phi ptr [ %n.0254.i.i, %while.end.i.i.if.end.i_crit_edge ], [ %call.i45.i, %do.end.i.i ], [ %call.i45.i, %if.end25.i.i.if.end.i_crit_edge ]
  %offset3.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %offset3.i, align 8
  %29 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %unit.i.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %28)
  %cmp.not.i.i = icmp ult i64 %add.i, %28
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.end.i.i, !prof !160

cond.false.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.52, i32 noundef 1524) #19
  unreachable

cond.end.i.i:                                     ; preds = %if.end.i
  %sub.i46.i = sub i64 %add.i, %28
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i46.i)
  %cmp164.i.i.i.i = icmp ult i64 %sub.i46.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !155

if.then168.i.i.i.i:                               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i.i = trunc i64 %sub.i46.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %30
  br label %offset_to_bit.exit.i

if.else174.i.i.i.i:                               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %sub.i46.i) #21, !srcloc !162
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %31, 1
  %extract.t6.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %offset_to_bit.exit.i

offset_to_bit.exit.i:                             ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.off0.i.i = phi i32 [ %div172.i.i.i.i, %if.then168.i.i.i.i ], [ %extract.t6.i.i, %if.else174.i.i.i.i ]
  %bitmap5.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %bitmap5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bitmap5.i, align 8
  %call6.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %33, i32 noundef 32768, i32 noundef %dividend.addr.0.i.i.off0.i.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %dividend.addr.0.i.i.off0.i.i)
  %cmp.i = icmp eq i32 %call6.i, %dividend.addr.0.i.i.off0.i.i
  br i1 %cmp.i, label %offset_to_bit.exit.i.steal_from_bitmap_to_end.exit_crit_edge, label %if.end8.i

offset_to_bit.exit.i.steal_from_bitmap_to_end.exit_crit_edge: ; preds = %offset_to_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %steal_from_bitmap_to_end.exit

if.end8.i:                                        ; preds = %offset_to_bit.exit.i
  %sub.i = sub i32 %call6.i, %dividend.addr.0.i.i.off0.i.i
  %34 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %unit.i.i, align 4
  %mul.i = mul i32 %35, %sub.i
  %conv.i = zext i32 %mul.i to i64
  %36 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bytes.i, align 8
  %add11.i = add i64 %37, %conv.i
  store i64 %add11.i, ptr %bytes.i, align 8
  %trim_state.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %trim_state.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %trim_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i47.i = icmp eq i32 %39, 1
  br i1 %cmp.i47.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then13.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 7
  %40 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %trim_state.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end8.i.if.end14.i_crit_edge
  tail call fastcc void @bitmap_clear_bits(ptr noundef %ctl, ptr noundef nonnull %retval.0.i.i, i64 noundef %add.i, i64 noundef %conv.i, i1 noundef zeroext %update_stat) #14
  %bytes16.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %bytes16.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %bytes16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %tobool17.not.i = icmp eq i64 %42, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end14.i.steal_from_bitmap_to_end.exit_crit_edge

if.end14.i.steal_from_bitmap_to_end.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %steal_from_bitmap_to_end.exit

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @free_bitmap(ptr noundef %ctl, ptr noundef nonnull %retval.0.i.i) #14
  br label %steal_from_bitmap_to_end.exit

steal_from_bitmap_to_end.exit:                    ; preds = %if.then18.i, %if.end14.i.steal_from_bitmap_to_end.exit_crit_edge, %offset_to_bit.exit.i.steal_from_bitmap_to_end.exit_crit_edge, %if.end18.i.i.steal_from_bitmap_to_end.exit_crit_edge, %if.end15.i.i.steal_from_bitmap_to_end.exit_crit_edge, %if.end7.i.i.steal_from_bitmap_to_end.exit_crit_edge, %if.then.steal_from_bitmap_to_end.exit_crit_edge
  %retval.0.i = phi i1 [ false, %offset_to_bit.exit.i.steal_from_bitmap_to_end.exit_crit_edge ], [ true, %if.then18.i ], [ true, %if.end14.i.steal_from_bitmap_to_end.exit_crit_edge ], [ false, %if.end15.i.i.steal_from_bitmap_to_end.exit_crit_edge ], [ false, %if.end18.i.i.steal_from_bitmap_to_end.exit_crit_edge ], [ false, %if.then.steal_from_bitmap_to_end.exit_crit_edge ], [ false, %if.end7.i.i.steal_from_bitmap_to_end.exit_crit_edge ]
  %43 = ptrtoint ptr %total_bitmaps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %total_bitmaps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp18 = icmp sgt i32 %44, 0
  br i1 %cmp18, label %if.then19, label %steal_from_bitmap_to_end.exit.if.end_crit_edge

steal_from_bitmap_to_end.exit.if.end_crit_edge:   ; preds = %steal_from_bitmap_to_end.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then19:                                        ; preds = %steal_from_bitmap_to_end.exit
  %45 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %offset.i, align 8
  %47 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %unit.i.i, align 4
  %mul.i.i43 = shl i32 %48, 15
  %conv.i.i44 = zext i32 %mul.i.i43 to i64
  %49 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %start.i.i, align 8
  %sub.i.i46 = sub i64 %46, %50
  %call.i.i47 = tail call i64 @div64_u64(i64 noundef %sub.i.i46, i64 noundef %conv.i.i44) #14
  %mul1.i.i48 = mul i64 %call.i.i47, %conv.i.i44
  %51 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %start.i.i, align 8
  %add.i.i49 = add i64 %mul1.i.i48, %52
  %53 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i49, i64 %54)
  %cmp.i50 = icmp eq i64 %add.i.i49, %54
  br i1 %cmp.i50, label %if.then.i, label %if.then19.if.end7.i_crit_edge

if.then19.if.end7.i_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i49)
  %cmp3.i = icmp eq i64 %add.i.i49, 0
  br i1 %cmp3.i, label %if.then.i.if.end_crit_edge, label %if.end.i51

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i51:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %unit.i.i, align 4
  %mul.i88.i = shl i32 %56, 15
  %conv.i89.i = zext i32 %mul.i88.i to i64
  %sub.i91.i = add i64 %mul1.i.i48, -1
  %call.i92.i = tail call i64 @div64_u64(i64 noundef %sub.i91.i, i64 noundef %conv.i89.i) #14
  %mul1.i93.i = mul i64 %call.i92.i, %conv.i89.i
  %57 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %start.i.i, align 8
  %add.i94.i = add i64 %mul1.i93.i, %58
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i51, %if.then19.if.end7.i_crit_edge
  %bitmap_offset.0.i = phi i64 [ %add.i94.i, %if.end.i51 ], [ %add.i.i49, %if.then19.if.end7.i_crit_edge ]
  %59 = ptrtoint ptr %free_space_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %n.0252.i.i53 = load ptr, ptr %free_space_offset.i.i, align 4
  %tobool.not253.i.i54 = icmp eq ptr %n.0252.i.i53, null
  br i1 %tobool.not253.i.i54, label %if.end7.i.if.end_crit_edge, label %if.end7.i.while.body.i.i58_crit_edge

if.end7.i.while.body.i.i58_crit_edge:             ; preds = %if.end7.i
  br label %while.body.i.i58

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.body.i.i58:                                 ; preds = %if.end7.i.i68.while.body.i.i58_crit_edge, %if.end7.i.while.body.i.i58_crit_edge
  %n.0254.i.i55 = phi ptr [ %n.0.i.i66, %if.end7.i.i68.while.body.i.i58_crit_edge ], [ %n.0252.i.i53, %if.end7.i.while.body.i.i58_crit_edge ]
  %offset2.i.i56 = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i.i55, i32 0, i32 2
  %60 = ptrtoint ptr %offset2.i.i56 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %offset2.i.i56, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %bitmap_offset.0.i)
  %cmp.i.i57 = icmp ugt i64 %61, %bitmap_offset.0.i
  br i1 %cmp.i.i57, label %if.then.i.i60, label %if.else.i.i62

if.then.i.i60:                                    ; preds = %while.body.i.i58
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i59 = getelementptr inbounds %struct.rb_node, ptr %n.0254.i.i55, i32 0, i32 2
  br label %if.end7.i.i68

if.else.i.i62:                                    ; preds = %while.body.i.i58
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %bitmap_offset.0.i)
  %cmp4.i.i61 = icmp ult i64 %61, %bitmap_offset.0.i
  br i1 %cmp4.i.i61, label %if.then5.i.i64, label %while.end.i.i71

if.then5.i.i64:                                   ; preds = %if.else.i.i62
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i63 = getelementptr inbounds %struct.rb_node, ptr %n.0254.i.i55, i32 0, i32 1
  br label %if.end7.i.i68

if.end7.i.i68:                                    ; preds = %if.then5.i.i64, %if.then.i.i60
  %n.1.in.i.i65 = phi ptr [ %rb_left.i.i59, %if.then.i.i60 ], [ %rb_right.i.i63, %if.then5.i.i64 ]
  %62 = ptrtoint ptr %n.1.in.i.i65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %n.0.i.i66 = load ptr, ptr %n.1.in.i.i65, align 4
  %tobool.not.i.i67 = icmp eq ptr %n.0.i.i66, null
  br i1 %tobool.not.i.i67, label %if.end7.i.i68.if.end_crit_edge, label %if.end7.i.i68.while.body.i.i58_crit_edge

if.end7.i.i68.while.body.i.i58_crit_edge:         ; preds = %if.end7.i.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i58

if.end7.i.i68.if.end_crit_edge:                   ; preds = %if.end7.i.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.end.i.i71:                                  ; preds = %if.else.i.i62
  %bitmap54.i.i69 = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i.i55, i32 0, i32 5
  %63 = ptrtoint ptr %bitmap54.i.i69 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bitmap54.i.i69, align 8
  %tobool55.not.i.i70 = icmp eq ptr %64, null
  br i1 %tobool55.not.i.i70, label %if.end15.i.i73, label %while.end.i.i71.if.end10.i_crit_edge

while.end.i.i71.if.end10.i_crit_edge:             ; preds = %while.end.i.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.end15.i.i73:                                   ; preds = %while.end.i.i71
  %call.i95.i = tail call ptr @rb_next(ptr noundef nonnull %n.0254.i.i55) #14
  %tobool16.not.i.i72 = icmp eq ptr %call.i95.i, null
  br i1 %tobool16.not.i.i72, label %if.end15.i.i73.if.end_crit_edge, label %if.end18.i.i76

if.end15.i.i73.if.end_crit_edge:                  ; preds = %if.end15.i.i73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end18.i.i76:                                   ; preds = %if.end15.i.i73
  %offset22.i.i74 = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i95.i, i32 0, i32 2
  %65 = ptrtoint ptr %offset22.i.i74 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %offset22.i.i74, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %bitmap_offset.0.i)
  %cmp23.not.i.i75 = icmp eq i64 %66, %bitmap_offset.0.i
  br i1 %cmp23.not.i.i75, label %if.end25.i.i79, label %if.end18.i.i76.if.end_crit_edge

if.end18.i.i76.if.end_crit_edge:                  ; preds = %if.end18.i.i76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end25.i.i79:                                   ; preds = %if.end18.i.i76
  %bitmap26.i.i77 = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i95.i, i32 0, i32 5
  %67 = ptrtoint ptr %bitmap26.i.i77 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bitmap26.i.i77, align 8
  %tobool27.not.i.i78 = icmp eq ptr %68, null
  br i1 %tobool27.not.i.i78, label %do.end.i.i80, label %if.end25.i.i79.if.end10.i_crit_edge, !prof !160

if.end25.i.i79.if.end10.i_crit_edge:              ; preds = %if.end25.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

do.end.i.i80:                                     ; preds = %if.end25.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1690, i32 noundef 9, ptr noundef null) #14
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i.i80, %if.end25.i.i79.if.end10.i_crit_edge, %while.end.i.i71.if.end10.i_crit_edge
  %retval.0.i.i81 = phi ptr [ %n.0254.i.i55, %while.end.i.i71.if.end10.i_crit_edge ], [ %call.i95.i, %do.end.i.i80 ], [ %call.i95.i, %if.end25.i.i79.if.end10.i_crit_edge ]
  %offset11.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i.i81, i32 0, i32 2
  %69 = ptrtoint ptr %offset11.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %offset11.i, align 8
  %71 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %unit.i.i, align 4
  %73 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %74, i64 %70)
  %cmp.not.i.i82 = icmp ult i64 %74, %70
  br i1 %cmp.not.i.i82, label %cond.false.i.i83, label %cond.end.i.i85, !prof !160

cond.false.i.i83:                                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.52, i32 noundef 1524) #19
  unreachable

cond.end.i.i85:                                   ; preds = %if.end10.i
  %sub.i96.i = sub i64 %74, %70
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i96.i)
  %cmp164.i.i.i.i191 = icmp ult i64 %sub.i96.i, 4294967296
  br i1 %cmp164.i.i.i.i191, label %if.then168.i.i.i.i195, label %if.else174.i.i.i.i198, !prof !155

if.then168.i.i.i.i195:                            ; preds = %cond.end.i.i85
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i.i193 = trunc i64 %sub.i96.i to i32
  %div172.i.i.i.i194 = udiv i32 %conv169.i.i.i.i193, %72
  br label %offset_to_bit.exit.i200

if.else174.i.i.i.i198:                            ; preds = %cond.end.i.i85
  call void @__sanitizer_cov_trace_pc() #16
  %75 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %72, i64 %sub.i96.i) #21, !srcloc !162
  %asmresult1.i.i.i.i.i196 = extractvalue { i64, i64 } %75, 1
  %extract.t6.i.i197 = trunc i64 %asmresult1.i.i.i.i.i196 to i32
  br label %offset_to_bit.exit.i200

offset_to_bit.exit.i200:                          ; preds = %if.else174.i.i.i.i198, %if.then168.i.i.i.i195
  %dividend.addr.0.i.i.off0.i.i199 = phi i32 [ %div172.i.i.i.i194, %if.then168.i.i.i.i195 ], [ %extract.t6.i.i197, %if.else174.i.i.i.i198 ]
  %sub14.i = add i32 %dividend.addr.0.i.i.off0.i.i199, -1
  %bitmap15.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i.i81, i32 0, i32 5
  %76 = ptrtoint ptr %bitmap15.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bitmap15.i, align 8
  %call16.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %77, i32 noundef 32768, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %call16.i)
  %cmp17101.i = icmp ugt i32 %call16.i, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %sub14.i)
  %cmp18102.i = icmp ugt i32 %call16.i, %sub14.i
  %or.cond103.i = select i1 %cmp17101.i, i1 true, i1 %cmp18102.i
  br i1 %or.cond103.i, label %for.end.thread.i, label %offset_to_bit.exit.i200.if.end20.i_crit_edge

offset_to_bit.exit.i200.if.end20.i_crit_edge:     ; preds = %offset_to_bit.exit.i200
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.i.if.end20.i_crit_edge, %offset_to_bit.exit.i200.if.end20.i_crit_edge
  %j.0104.i = phi i32 [ %call22.i, %if.end20.i.if.end20.i_crit_edge ], [ %call16.i, %offset_to_bit.exit.i200.if.end20.i_crit_edge ]
  %78 = ptrtoint ptr %bitmap15.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bitmap15.i, align 8
  %add.i201 = add nuw nsw i32 %j.0104.i, 1
  %call22.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %79, i32 noundef 32768, i32 noundef %add.i201) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %call22.i)
  %cmp17.i = icmp ugt i32 %call22.i, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %call22.i, i32 %sub14.i)
  %cmp18.i = icmp ugt i32 %call22.i, %sub14.i
  %or.cond.i = select i1 %cmp17.i, i1 true, i1 %cmp18.i
  br i1 %or.cond.i, label %for.end.i, label %if.end20.i.if.end20.i_crit_edge

if.end20.i.if.end20.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

for.end.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14.i, i32 %j.0104.i)
  %cmp23.i = icmp eq i32 %sub14.i, %j.0104.i
  br i1 %cmp23.i, label %for.end.i.if.end_crit_edge, label %if.else.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.end.thread.i:                                 ; preds = %offset_to_bit.exit.i200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dividend.addr.0.i.i.off0.i.i199)
  %cmp23107.i = icmp eq i32 %dividend.addr.0.i.i.off0.i.i199, 0
  br i1 %cmp23107.i, label %for.end.thread.i.if.end_crit_edge, label %for.end.thread.i.if.end34.i_crit_edge

for.end.thread.i.if.end34.i_crit_edge:            ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.i

for.end.thread.i.if.end_crit_edge:                ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub30.i = sub i32 %sub14.i, %j.0104.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %for.end.thread.i.if.end34.i_crit_edge
  %sub30.sink.i = phi i32 [ %sub30.i, %if.else.i ], [ %dividend.addr.0.i.i.off0.i.i199, %for.end.thread.i.if.end34.i_crit_edge ]
  %80 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %unit.i.i, align 4
  %mul32.i = mul i32 %81, %sub30.sink.i
  %bytes.0.i = zext i32 %mul32.i to i64
  %82 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %offset.i, align 8
  %sub36.i = sub i64 %83, %bytes.0.i
  store i64 %sub36.i, ptr %offset.i, align 8
  %84 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %bytes.i, align 8
  %add38.i = add i64 %85, %bytes.0.i
  store i64 %add38.i, ptr %bytes.i, align 8
  %trim_state.i.i202 = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i.i81, i32 0, i32 7
  %86 = ptrtoint ptr %trim_state.i.i202 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %trim_state.i.i202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp.i97.i = icmp eq i32 %87, 1
  br i1 %cmp.i97.i, label %if.end34.i.if.end41.i_crit_edge, label %if.then40.i

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

if.then40.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  %trim_state.i203 = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 7
  %88 = ptrtoint ptr %trim_state.i203 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %trim_state.i203, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then40.i, %if.end34.i.if.end41.i_crit_edge
  tail call fastcc void @bitmap_clear_bits(ptr noundef %ctl, ptr noundef nonnull %retval.0.i.i81, i64 noundef %sub36.i, i64 noundef %bytes.0.i, i1 noundef zeroext %update_stat) #14
  %bytes44.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i.i81, i32 0, i32 3
  %89 = ptrtoint ptr %bytes44.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %bytes44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %90)
  %tobool45.not.i = icmp eq i64 %90, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end41.i.if.then25_crit_edge

if.end41.i.if.then25_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

if.then46.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @free_bitmap(ptr noundef %ctl, ptr noundef nonnull %retval.0.i.i81) #14
  br label %if.then25

if.end:                                           ; preds = %for.end.thread.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %if.end18.i.i76.if.end_crit_edge, %if.end15.i.i73.if.end_crit_edge, %if.end7.i.i68.if.end_crit_edge, %if.end7.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %steal_from_bitmap_to_end.exit.if.end_crit_edge
  br i1 %retval.0.i, label %if.end.if.then25_crit_edge, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.end.if.then25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

if.then25:                                        ; preds = %if.end.if.then25_crit_edge, %if.then46.i, %if.end41.i.if.then25_crit_edge
  %call27 = tail call fastcc zeroext i1 @try_merge_free_space(ptr noundef %ctl, ptr noundef %info, i1 noundef zeroext %update_stat)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end.if.end29_crit_edge, %cond.end13.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @link_free_space(ptr noundef %ctl, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes = getelementptr %struct.btrfs_free_space, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

lor.rhs:                                          ; preds = %entry
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bitmap, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %cond.false, label %lor.rhs.cond.end_crit_edge, !prof !160

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.53, i32 noundef 1785) #20
  unreachable

cond.end:                                         ; preds = %lor.rhs.cond.end_crit_edge, %entry.cond.end_crit_edge
  %free_space_offset = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 1
  %offset = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  %bitmap4 = getelementptr %struct.btrfs_free_space, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %bitmap4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap4, align 8
  %cmp = icmp ne ptr %7, null
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @tree_insert_offset(ptr noundef %free_space_offset, i64 noundef %5, ptr noundef %info, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %bytes_index = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 1
  %free_space_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2
  %8 = ptrtoint ptr %free_space_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_space_bytes, align 4
  %tobool.not2.i = icmp eq ptr %9, null
  br i1 %tobool.not2.i, label %if.then.i.critedge.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end
  %10 = ptrtoint ptr %bitmap4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap4, align 8
  %tobool.not.i7.i.i = icmp eq ptr %11, null
  %max_extent_size.i8.i.i = getelementptr %struct.btrfs_free_space, ptr %info, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %entry_less.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %12 = phi ptr [ %9, %while.body.lr.ph.i ], [ %24, %entry_less.exit.i.while.body.i_crit_edge ]
  %leftmost.0.off03.i = phi i1 [ true, %while.body.lr.ph.i ], [ %leftmost.1.off0.i, %entry_less.exit.i.while.body.i_crit_edge ]
  %bitmap.i.i.i = getelementptr i8, ptr %12, i32 36
  %13 = ptrtoint ptr %bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bitmap.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %while.body.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

while.body.i.if.end.i.i.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %while.body.i
  %max_extent_size.i.i.i = getelementptr i8, ptr %12, i32 28
  %15 = ptrtoint ptr %max_extent_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %max_extent_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool2.not.i.i.i = icmp eq i64 %16, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge

land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_max_extent_size.exit.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %while.body.i.if.end.i.i.i_crit_edge
  %bytes.i.i.i = getelementptr i8, ptr %12, i32 20
  %17 = ptrtoint ptr %bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bytes.i.i.i, align 8
  br label %get_max_extent_size.exit.i.i

get_max_extent_size.exit.i.i:                     ; preds = %if.end.i.i.i, %land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i64 [ %18, %if.end.i.i.i ], [ %16, %land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge ]
  br i1 %tobool.not.i7.i.i, label %get_max_extent_size.exit.i.i.if.end.i12.i.i_crit_edge, label %land.lhs.true.i10.i.i

get_max_extent_size.exit.i.i.if.end.i12.i.i_crit_edge: ; preds = %get_max_extent_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i12.i.i

land.lhs.true.i10.i.i:                            ; preds = %get_max_extent_size.exit.i.i
  %19 = ptrtoint ptr %max_extent_size.i8.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %max_extent_size.i8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool2.not.i9.i.i = icmp eq i64 %20, 0
  br i1 %tobool2.not.i9.i.i, label %land.lhs.true.i10.i.i.if.end.i12.i.i_crit_edge, label %land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge

land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge: ; preds = %land.lhs.true.i10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %entry_less.exit.i

land.lhs.true.i10.i.i.if.end.i12.i.i_crit_edge:   ; preds = %land.lhs.true.i10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i12.i.i

if.end.i12.i.i:                                   ; preds = %land.lhs.true.i10.i.i.if.end.i12.i.i_crit_edge, %get_max_extent_size.exit.i.i.if.end.i12.i.i_crit_edge
  %21 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes, align 8
  br label %entry_less.exit.i

entry_less.exit.i:                                ; preds = %if.end.i12.i.i, %land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge
  %retval.0.i13.i.i = phi i64 [ %22, %if.end.i12.i.i ], [ %20, %land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i.i, i64 %retval.0.i13.i.i)
  %cmp.i.i = icmp ult i64 %retval.0.i.i.i, %retval.0.i13.i.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  %link.1.i = select i1 %cmp.i.i, ptr %rb_left.i, ptr %rb_right.i
  %leftmost.1.off0.i = select i1 %cmp.i.i, i1 %leftmost.0.off03.i, i1 false
  %23 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %entry_less.exit.i.while.body.i_crit_edge

entry_less.exit.i.while.body.i_crit_edge:         ; preds = %entry_less.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %entry_less.exit.i
  %phi.cast.le.i = ptrtoint ptr %12 to i32
  %25 = ptrtoint ptr %bytes_index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %phi.cast.le.i, ptr %bytes_index, align 4
  %rb_right.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_left.i.i, align 4
  %28 = ptrtoint ptr %link.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %bytes_index, ptr %link.1.i, align 4
  br i1 %leftmost.1.off0.i, label %while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge, label %while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge

while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_add_cached.exit

while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.then.i.critedge.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %bytes_index to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bytes_index, align 4
  %rb_right.i.c.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %rb_right.i.c.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rb_right.i.c.i, align 4
  %rb_left.i.c.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %rb_left.i.c.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rb_left.i.c.i, align 4
  %32 = ptrtoint ptr %free_space_bytes to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %bytes_index, ptr %free_space_bytes, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.critedge.i, %while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge
  %rb_leftmost.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %bytes_index, ptr %rb_leftmost.i.i, align 4
  br label %rb_add_cached.exit

rb_add_cached.exit:                               ; preds = %if.then.i.i, %while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge
  tail call void @rb_insert_color(ptr noundef %bytes_index, ptr noundef %free_space_bytes) #14
  %34 = ptrtoint ptr %bitmap4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bitmap4, align 8
  %tobool8.not = icmp eq ptr %35, null
  br i1 %tobool8.not, label %land.lhs.true, label %rb_add_cached.exit.if.end13_crit_edge

rb_add_cached.exit.if.end13_crit_edge:            ; preds = %rb_add_cached.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true:                                    ; preds = %rb_add_cached.exit
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 7
  %36 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i = icmp eq i32 %37, 1
  br i1 %cmp.i, label %land.lhs.true.if.end13_crit_edge, label %if.then10

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %discardable_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 9
  %38 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %discardable_extents, align 8
  %inc = add i32 %39, 1
  store i32 %inc, ptr %discardable_extents, align 8
  %40 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %bytes, align 8
  %discardable_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 10
  %42 = ptrtoint ptr %discardable_bytes to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %discardable_bytes, align 8
  %add = add i64 %43, %41
  store i64 %add, ptr %discardable_bytes, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true.if.end13_crit_edge, %rb_add_cached.exit.if.end13_crit_edge
  %44 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %bytes, align 8
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 3
  %46 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %free_space, align 8
  %add15 = add i64 %47, %45
  store i64 %add15, ptr %free_space, align 8
  %free_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 5
  %48 = ptrtoint ptr %free_extents to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %free_extents, align 4
  %inc16 = add i32 %49, 1
  store i32 %inc16, ptr %free_extents, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %cond.end.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_discard_check_filter(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_discard_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_free_space(ptr noundef %block_group, i64 noundef %bytenr, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__btrfs_add_free_space_zoned(ptr noundef %block_group, i64 noundef %bytenr, i64 noundef %size, i1 noundef zeroext true)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mount_opt, align 8
  %and = lshr i32 %6, 10
  %and.lobit = and i32 %and, 1
  %call5 = tail call i32 @__btrfs_add_free_space(ptr noundef %block_group, i64 noundef %bytenr, i64 noundef %size, i32 noundef %and.lobit)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__btrfs_add_free_space_zoned(ptr noundef %block_group, i64 noundef %bytenr, i64 noundef %size, i1 noundef zeroext %used) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_space_ctl, align 4
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %sub = sub i64 %bytenr, %5
  %bg_reclaim_threshold2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 161
  %6 = ptrtoint ptr %bg_reclaim_threshold2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bg_reclaim_threshold2, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %size)
  %cmp = icmp eq i64 %9, %size
  br i1 %cmp, label %if.end.thread, label %land.rhs

land.rhs:                                         ; preds = %entry
  %add = add i64 %sub, %size
  %zone_capacity = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 48
  %10 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %zone_capacity, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %11)
  %cmp4 = icmp ugt i64 %add, %11
  br i1 %cmp4, label %do.end15, label %land.rhs.if.end_crit_edge, !prof !160

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end15:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2641, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end15, %land.rhs.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  br i1 %used, label %if.else33, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.end.thread:                                    ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  br i1 %used, label %if.then31, label %if.end.thread.if.end48_crit_edge

if.end.thread.if.end48_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then31:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  %zone_capacity32 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 48
  %12 = ptrtoint ptr %zone_capacity32 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %zone_capacity32, align 8
  br label %if.end48

if.else33:                                        ; preds = %if.end
  %alloc_offset = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 46
  %14 = ptrtoint ptr %alloc_offset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %alloc_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %15)
  %cmp34.not = icmp ult i64 %sub, %15
  br i1 %cmp34.not, label %if.else36, label %if.else33.if.end48_crit_edge

if.else33.if.end48_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.else36:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #16
  %16 = tail call i64 @llvm.usub.sat.i64(i64 %add, i64 %15)
  br label %if.end48

if.end48:                                         ; preds = %if.else36, %if.else33.if.end48_crit_edge, %if.then31, %if.end.thread.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %to_free.0 = phi i64 [ %13, %if.then31 ], [ %size, %if.end.if.end48_crit_edge ], [ %size, %if.else33.if.end48_crit_edge ], [ %16, %if.else36 ], [ %size, %if.end.thread.if.end48_crit_edge ]
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %free_space, align 8
  %add50 = add i64 %18, %to_free.0
  store i64 %add50, ptr %free_space, align 8
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 16
  %19 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool51.not = icmp eq i32 %20, 0
  br i1 %tobool51.not, label %if.then52, label %if.end48.if.end54_crit_edge

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %sub49 = sub i64 %size, %to_free.0
  %zone_unusable = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 47
  %21 = ptrtoint ptr %zone_unusable to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %zone_unusable, align 8
  %add53 = add i64 %sub49, %22
  store i64 %add53, ptr %zone_unusable, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end48.if.end54_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %3) #14
  br i1 %used, label %if.end54.if.end61_crit_edge, label %if.then57

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %alloc_offset58 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 46
  %23 = ptrtoint ptr %alloc_offset58 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %alloc_offset58, align 8
  %sub59 = sub i64 %24, %size
  store i64 %sub59, ptr %alloc_offset58, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end54.if.end61_crit_edge
  %zone_unusable62 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 47
  %25 = ptrtoint ptr %zone_unusable62 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %zone_unusable62, align 8
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %length, align 8
  %zone_capacity64 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 48
  %29 = ptrtoint ptr %zone_capacity64 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %zone_capacity64, align 8
  %sub65.neg = sub i64 %26, %28
  %sub66 = add i64 %sub65.neg, %30
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp69 = icmp eq i64 %26, %28
  br i1 %cmp69, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_mark_bg_unused(ptr noundef %block_group) #14
  br label %if.end77

if.else71:                                        ; preds = %if.end61
  %31 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %7, label %if.end.i [
    i32 0, label %if.else71.if.end77_crit_edge
    i32 100, label %if.else71.div_factor_fine.exit_crit_edge
  ]

if.else71.div_factor_fine.exit_crit_edge:         ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #16
  br label %div_factor_fine.exit

if.else71.if.end77_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77

if.end.i:                                         ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = sext i32 %7 to i64
  %mul.i = mul i64 %30, %conv.i
  %32 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i32 0) #21, !srcloc !163
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %32, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %32, 1
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #21, !srcloc !164
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %33, 0
  %div158.i.i4.i = lshr i64 %asmresult10.i.i.i.i, 6
  br label %div_factor_fine.exit

div_factor_fine.exit:                             ; preds = %if.end.i, %if.else71.div_factor_fine.exit_crit_edge
  %retval.0.i = phi i64 [ %div158.i.i4.i, %if.end.i ], [ %30, %if.else71.div_factor_fine.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %sub66, i64 %retval.0.i)
  %cmp74.not = icmp ult i64 %sub66, %retval.0.i
  br i1 %cmp74.not, label %div_factor_fine.exit.if.end77_crit_edge, label %if.then75

div_factor_fine.exit.if.end77_crit_edge:          ; preds = %div_factor_fine.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77

if.then75:                                        ; preds = %div_factor_fine.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_mark_bg_to_reclaim(ptr noundef %block_group) #14
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %div_factor_fine.exit.if.end77_crit_edge, %if.else71.if.end77_crit_edge, %if.then70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_free_space_unused(ptr noundef %block_group, i64 noundef %bytenr, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  br i1 %cmp.i.not, label %btrfs_add_free_space.exit, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__btrfs_add_free_space_zoned(ptr noundef %block_group, i64 noundef %bytenr, i64 noundef %size, i1 noundef zeroext false)
  br label %return

btrfs_add_free_space.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mount_opt.i, align 8
  %and.i = lshr i32 %6, 10
  %and.lobit.i = and i32 %and.i, 1
  %call5.i = tail call i32 @__btrfs_add_free_space(ptr noundef %block_group, i64 noundef %bytenr, i64 noundef %size, i32 noundef %and.lobit.i) #14
  br label %return

return:                                           ; preds = %btrfs_add_free_space.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call5.i, %btrfs_add_free_space.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_free_space_async_trimmed(ptr noundef %block_group, i64 noundef %bytenr, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__btrfs_add_free_space_zoned(ptr noundef %block_group, i64 noundef %bytenr, i64 noundef %size, i1 noundef zeroext true)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mount_opt, align 8
  %7 = and i32 %6, 268436480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp ne i32 %7, 0
  %trim_state.0 = zext i1 %8 to i32
  %call9 = tail call i32 @__btrfs_add_free_space(ptr noundef %block_group, i64 noundef %bytenr, i64 noundef %size, i32 noundef %trim_state.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call9, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_remove_free_space(ptr noundef %block_group, i64 noundef %offset, i64 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  %offset.addr = alloca i64, align 8
  %bytes.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offset, ptr %offset.addr, align 8
  %1 = ptrtoint ptr %bytes.addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %bytes, ptr %bytes.addr, align 8
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_space_ctl, align 4
  %4 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %block_group, align 8
  %6 = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 176
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.i.not = icmp eq i64 %8, 0
  br i1 %cmp.i.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start, align 8
  %alloc_offset = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 46
  %11 = ptrtoint ptr %alloc_offset to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %alloc_offset, align 8
  %add = add i64 %12, %10
  %add1 = add i64 %bytes, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add1)
  %cmp = icmp ult i64 %add, %add1
  br i1 %cmp, label %if.then2, label %if.then.cleanup185_crit_edge

if.then.cleanup185_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup185

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i64 %add1, %10
  %13 = ptrtoint ptr %alloc_offset to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %sub, ptr %alloc_offset, align 8
  br label %cleanup185

if.end6:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  %14 = ptrtoint ptr %bytes.addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %.pr296 = load i64, ptr %bytes.addr, align 8
  %15 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %offset.addr.promoted297 = load i64, ptr %offset.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr296)
  %tobool.not289299 = icmp eq i64 %.pr296, 0
  br i1 %tobool.not289299, label %if.end6.out_lock.loopexit_crit_edge, label %if.end8.lr.ph.lr.ph

if.end6.out_lock.loopexit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock.loopexit

if.end8.lr.ph.lr.ph:                              ; preds = %if.end6
  %unit.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 7
  %start.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 8
  %free_space_offset.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 1
  %free_space_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 2
  %rb_leftmost.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 2, i32 1
  %free_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 5
  %discardable_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 9
  %discardable_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 10
  %free_space.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 3
  br label %if.end8

if.end8:                                          ; preds = %if.end8.backedge, %if.end8.lr.ph.lr.ph
  %re_search.0.off0292 = phi i1 [ false, %if.end8.lr.ph.lr.ph ], [ %re_search.0.off0292.be, %if.end8.backedge ]
  %16 = phi i64 [ %.pr296, %if.end8.lr.ph.lr.ph ], [ %.be, %if.end8.backedge ]
  %add88279291 = phi i64 [ %offset.addr.promoted297, %if.end8.lr.ph.lr.ph ], [ %add88279291.be, %if.end8.backedge ]
  %call9 = tail call fastcc ptr @tree_search_offset(ptr noundef %3, i64 noundef %add88279291, i32 noundef 0, i32 noundef 0)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end39_crit_edge

if.end8.if.end39_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then11:                                        ; preds = %if.end8
  %17 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unit.i, align 4
  %mul.i = shl i32 %18, 15
  %conv.i = zext i32 %mul.i to i64
  %19 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start.i, align 8
  %sub.i = sub i64 %add88279291, %20
  %call.i = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i) #14
  %mul1.i = mul i64 %call.i, %conv.i
  %21 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start.i, align 8
  %add.i = add i64 %mul1.i, %22
  %23 = ptrtoint ptr %free_space_offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %n.0252.i = load ptr, ptr %free_space_offset.i, align 4
  %tobool.not253.i = icmp eq ptr %n.0252.i, null
  br i1 %tobool.not253.i, label %if.then11.if.then15_crit_edge, label %if.then11.while.body.i_crit_edge

if.then11.while.body.i_crit_edge:                 ; preds = %if.then11
  br label %while.body.i

if.then11.if.then15_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %if.then11.while.body.i_crit_edge
  %n.0254.i = phi ptr [ %n.0.i, %if.end7.i.while.body.i_crit_edge ], [ %n.0252.i, %if.then11.while.body.i_crit_edge ]
  %offset2.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 2
  %24 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %offset2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %add.i)
  %cmp.i243 = icmp ugt i64 %25, %add.i
  br i1 %cmp.i243, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 2
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %add.i)
  %cmp4.i = icmp ult i64 %25, %add.i
  br i1 %cmp4.i, label %if.then5.i, label %while.end.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %26 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end7.i.if.then15_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end7.i.if.then15_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

while.end.i:                                      ; preds = %if.else.i
  %bitmap54.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 5
  %27 = ptrtoint ptr %bitmap54.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bitmap54.i, align 8
  %tobool55.not.i = icmp eq ptr %28, null
  br i1 %tobool55.not.i, label %if.end15.i, label %while.end.i.if.end39_crit_edge

while.end.i.if.end39_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.end15.i:                                       ; preds = %while.end.i
  %call.i244 = tail call ptr @rb_next(ptr noundef nonnull %n.0254.i) #14
  %tobool16.not.i = icmp eq ptr %call.i244, null
  br i1 %tobool16.not.i, label %if.end15.i.if.then15_crit_edge, label %if.end18.i

if.end15.i.if.then15_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

if.end18.i:                                       ; preds = %if.end15.i
  %offset22.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i244, i32 0, i32 2
  %29 = ptrtoint ptr %offset22.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %offset22.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %add.i)
  %cmp23.not.i = icmp eq i64 %30, %add.i
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end18.i.if.then15_crit_edge

if.end18.i.if.then15_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

if.end25.i:                                       ; preds = %if.end18.i
  %bitmap26.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i244, i32 0, i32 5
  %31 = ptrtoint ptr %bitmap26.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bitmap26.i, align 8
  %tobool27.not.i = icmp eq ptr %32, null
  br i1 %tobool27.not.i, label %do.end.i, label %if.end25.i.if.end39_crit_edge, !prof !160

if.end25.i.if.end39_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

do.end.i:                                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1690, i32 noundef 9, ptr noundef null) #14
  br label %if.end39

if.then15:                                        ; preds = %if.end18.i.if.then15_crit_edge, %if.end15.i.if.then15_crit_edge, %if.end7.i.if.then15_crit_edge, %if.then11.if.then15_crit_edge
  %33 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add88279291, ptr %offset.addr, align 8
  %34 = ptrtoint ptr %bytes.addr to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %16, ptr %bytes.addr, align 8
  br i1 %re_search.0.off0292, label %do.end, label %if.then15.out_lock_crit_edge, !prof !160

if.then15.out_lock_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2780, i32 noundef 9, ptr noundef null) #14
  br label %out_lock

if.end39:                                         ; preds = %do.end.i, %if.end25.i.if.end39_crit_edge, %while.end.i.if.end39_crit_edge, %if.end8.if.end39_crit_edge
  %info.0 = phi ptr [ %call9, %if.end8.if.end39_crit_edge ], [ %n.0254.i, %while.end.i.if.end39_crit_edge ], [ %call.i244, %do.end.i ], [ %call.i244, %if.end25.i.if.end39_crit_edge ]
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %info.0, i32 0, i32 5
  %35 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bitmap, align 8
  %tobool40.not = icmp eq ptr %36, null
  br i1 %tobool40.not, label %if.then41, label %if.end179

if.then41:                                        ; preds = %if.end39
  tail call void @rb_erase(ptr noundef nonnull %info.0, ptr noundef %free_space_offset.i) #14
  %bytes_index.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info.0, i32 0, i32 1
  %37 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i = icmp eq ptr %38, %bytes_index.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then41.rb_erase_cached.exit.i_crit_edge

if.then41.rb_erase_cached.exit.i_crit_edge:       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call ptr @rb_next(ptr noundef %bytes_index.i) #14
  %39 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %rb_leftmost.i.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.then41.rb_erase_cached.exit.i_crit_edge
  tail call void @rb_erase(ptr noundef %bytes_index.i, ptr noundef %free_space_bytes.i) #14
  %40 = ptrtoint ptr %free_extents.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %free_extents.i, align 4
  %dec.i = add i32 %41, -1
  store i32 %dec.i, ptr %free_extents.i, align 4
  %42 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bitmap, align 8
  %tobool.not.i246 = icmp eq ptr %43, null
  br i1 %tobool.not.i246, label %land.lhs.true.i, label %rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge

rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge: ; preds = %rb_erase_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit

land.lhs.true.i:                                  ; preds = %rb_erase_cached.exit.i
  %trim_state.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info.0, i32 0, i32 7
  %44 = ptrtoint ptr %trim_state.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %trim_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i19.i = icmp eq i32 %45, 1
  br i1 %cmp.i19.i, label %land.lhs.true.i.unlink_free_space.exit_crit_edge, label %if.then.i248

land.lhs.true.i.unlink_free_space.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit

if.then.i248:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %discardable_extents.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %discardable_extents.i, align 8
  %dec2.i = add i32 %47, -1
  store i32 %dec2.i, ptr %discardable_extents.i, align 8
  %bytes.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info.0, i32 0, i32 3
  %48 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %bytes.i, align 8
  %50 = ptrtoint ptr %discardable_bytes.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %discardable_bytes.i, align 8
  %sub.i247 = sub i64 %51, %49
  store i64 %sub.i247, ptr %discardable_bytes.i, align 8
  br label %unlink_free_space.exit

unlink_free_space.exit:                           ; preds = %if.then.i248, %land.lhs.true.i.unlink_free_space.exit_crit_edge, %rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge
  %bytes6.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info.0, i32 0, i32 3
  %52 = ptrtoint ptr %bytes6.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %bytes6.i, align 8
  %54 = ptrtoint ptr %free_space.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %free_space.i, align 8
  %sub7.i = sub i64 %55, %53
  store i64 %sub7.i, ptr %free_space.i, align 8
  %offset42 = getelementptr inbounds %struct.btrfs_free_space, ptr %info.0, i32 0, i32 2
  %56 = ptrtoint ptr %offset42 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %offset42, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add88279291, i64 %57)
  %cmp43 = icmp eq i64 %add88279291, %57
  %58 = ptrtoint ptr %bytes6.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %bytes6.i, align 8
  br i1 %cmp43, label %if.then44, label %if.else90

if.then44:                                        ; preds = %unlink_free_space.exit
  %60 = tail call i64 @llvm.umin.i64(i64 %16, i64 %59)
  %sub49 = sub i64 %59, %60
  %61 = ptrtoint ptr %bytes6.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %sub49, ptr %bytes6.i, align 8
  %add51 = add i64 %60, %add88279291
  %62 = ptrtoint ptr %offset42 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add51, ptr %offset42, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %16)
  %tobool53.not.not = icmp ugt i64 %59, %16
  br i1 %tobool53.not.not, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.then44
  %call55 = tail call fastcc i32 @link_free_space(ptr noundef %3, ptr noundef nonnull %info.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool57.not = icmp eq i32 %call55, 0
  br i1 %tobool57.not, label %if.then54.if.end87_crit_edge, label %do.end73, !prof !155

if.then54.if.end87_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

do.end73:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2795, i32 noundef 9, ptr noundef null) #14
  br label %if.end87

if.else:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %63 = load ptr, ptr @btrfs_free_space_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %63, ptr noundef nonnull %info.0) #14
  br label %if.end87

if.end87:                                         ; preds = %if.else, %do.end73, %if.then54.if.end87_crit_edge
  %sub89 = sub i64 %16, %60
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub89)
  %tobool.not = icmp eq i64 %sub89, 0
  br i1 %tobool.not, label %if.end87.out_lock.loopexit_crit_edge, label %if.end87.if.end8.backedge_crit_edge

if.end87.if.end8.backedge_crit_edge:              ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.backedge

if.end87.out_lock.loopexit_crit_edge:             ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock.loopexit

if.end8.backedge:                                 ; preds = %againthread-pre-split.backedge.if.end8.backedge_crit_edge, %if.end87.if.end8.backedge_crit_edge
  %re_search.0.off0292.be = phi i1 [ false, %if.end87.if.end8.backedge_crit_edge ], [ %72, %againthread-pre-split.backedge.if.end8.backedge_crit_edge ]
  %.be = phi i64 [ %sub89, %if.end87.if.end8.backedge_crit_edge ], [ %.pr, %againthread-pre-split.backedge.if.end8.backedge_crit_edge ]
  %add88279291.be = phi i64 [ %add51, %if.end87.if.end8.backedge_crit_edge ], [ %offset.addr.promoted, %againthread-pre-split.backedge.if.end8.backedge_crit_edge ]
  br label %if.end8

if.else90:                                        ; preds = %unlink_free_space.exit
  %add93 = add i64 %59, %57
  %sub95 = sub i64 %add88279291, %57
  %64 = ptrtoint ptr %bytes6.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %sub95, ptr %bytes6.i, align 8
  %call97 = tail call fastcc i32 @link_free_space(ptr noundef %3, ptr noundef nonnull %info.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool99.not = icmp eq i32 %call97, 0
  br i1 %tobool99.not, label %if.end131, label %do.end115, !prof !155

do.end115:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2808, i32 noundef 9, ptr noundef null) #14
  br label %out_lock

if.end131:                                        ; preds = %if.else90
  %add132 = add i64 %add88279291, %16
  call void @__sanitizer_cov_trace_cmp8(i64 %add132, i64 %add93)
  %cmp133 = icmp ugt i64 %add132, %add93
  br i1 %cmp133, label %cleanup, label %if.else137

if.else137:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_cmp8(i64 %add93, i64 %add132)
  %cmp139 = icmp eq i64 %add93, %add132
  br i1 %cmp139, label %if.else137.out_lock_crit_edge, label %if.end142

if.else137.out_lock_crit_edge:                    ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock

if.end142:                                        ; preds = %if.else137
  tail call void @_raw_spin_unlock(ptr noundef %3) #14
  %sub146 = sub i64 %add93, %add132
  %trim_state = getelementptr inbounds %struct.btrfs_free_space, ptr %info.0, i32 0, i32 7
  %65 = ptrtoint ptr %trim_state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %trim_state, align 4
  %call147 = tail call i32 @__btrfs_add_free_space(ptr noundef %block_group, i64 noundef %add132, i64 noundef %sub146, i32 noundef %66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool149.not = icmp eq i32 %call147, 0
  br i1 %tobool149.not, label %if.end142.cleanup185_crit_edge, label %do.end165, !prof !155

if.end142.cleanup185_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup185

do.end165:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2827, i32 noundef 9, ptr noundef null) #14
  br label %cleanup185

cleanup:                                          ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #16
  %sub136 = sub i64 %add132, %add93
  %67 = ptrtoint ptr %bytes.addr to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %sub136, ptr %bytes.addr, align 8
  %68 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %add93, ptr %offset.addr, align 8
  br label %againthread-pre-split.backedge

if.end179:                                        ; preds = %if.end39
  %69 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %add88279291, ptr %offset.addr, align 8
  %70 = ptrtoint ptr %bytes.addr to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %16, ptr %bytes.addr, align 8
  %call180 = call fastcc i32 @remove_from_bitmap(ptr noundef %3, ptr noundef nonnull %info.0, ptr noundef nonnull %offset.addr, ptr noundef nonnull %bytes.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call180)
  %cmp181 = icmp eq i32 %call180, -11
  br i1 %cmp181, label %againthread-pre-split.backedgethread-pre-split, label %if.end179.out_lock_crit_edge

if.end179.out_lock_crit_edge:                     ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock

againthread-pre-split.backedgethread-pre-split:   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %bytes.addr to i32
  call void @__asan_load8_noabort(i32 %71)
  %.pr.pr = load i64, ptr %bytes.addr, align 8
  br label %againthread-pre-split.backedge

againthread-pre-split.backedge:                   ; preds = %againthread-pre-split.backedgethread-pre-split, %cleanup
  %.pr = phi i64 [ %.pr.pr, %againthread-pre-split.backedgethread-pre-split ], [ %sub136, %cleanup ]
  %72 = xor i1 %tobool40.not, true
  %73 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load8_noabort(i32 %73)
  %offset.addr.promoted = load i64, ptr %offset.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr)
  %tobool.not289 = icmp eq i64 %.pr, 0
  br i1 %tobool.not289, label %againthread-pre-split.backedge.out_lock.loopexit_crit_edge, label %againthread-pre-split.backedge.if.end8.backedge_crit_edge

againthread-pre-split.backedge.if.end8.backedge_crit_edge: ; preds = %againthread-pre-split.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.backedge

againthread-pre-split.backedge.out_lock.loopexit_crit_edge: ; preds = %againthread-pre-split.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_lock.loopexit

out_lock.loopexit:                                ; preds = %againthread-pre-split.backedge.out_lock.loopexit_crit_edge, %if.end87.out_lock.loopexit_crit_edge, %if.end6.out_lock.loopexit_crit_edge
  %add88279.lcssa = phi i64 [ %offset.addr.promoted297, %if.end6.out_lock.loopexit_crit_edge ], [ %offset.addr.promoted, %againthread-pre-split.backedge.out_lock.loopexit_crit_edge ], [ %add51, %if.end87.out_lock.loopexit_crit_edge ]
  %74 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %add88279.lcssa, ptr %offset.addr, align 8
  %75 = ptrtoint ptr %bytes.addr to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 0, ptr %bytes.addr, align 8
  br label %out_lock

out_lock:                                         ; preds = %out_lock.loopexit, %if.end179.out_lock_crit_edge, %if.else137.out_lock_crit_edge, %do.end115, %do.end, %if.then15.out_lock_crit_edge
  %ret.1 = phi i32 [ 0, %do.end ], [ 0, %if.then15.out_lock_crit_edge ], [ 0, %if.else137.out_lock_crit_edge ], [ %call97, %do.end115 ], [ 0, %out_lock.loopexit ], [ %call180, %if.end179.out_lock_crit_edge ]
  tail call void @btrfs_discard_update_discardable(ptr noundef %block_group) #14
  tail call void @_raw_spin_unlock(ptr noundef %3) #14
  br label %cleanup185

cleanup185:                                       ; preds = %out_lock, %do.end165, %if.end142.cleanup185_crit_edge, %if.then2, %if.then.cleanup185_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then.cleanup185_crit_edge ], [ %ret.1, %out_lock ], [ %call147, %do.end165 ], [ 0, %if.end142.cleanup185_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tree_search_offset(ptr nocapture noundef readonly %ctl, i64 noundef %offset, i32 noundef %bitmap_only, i32 noundef %fuzzy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_offset = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 1
  %0 = ptrtoint ptr %free_space_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.0252 = load ptr, ptr %free_space_offset, align 4
  %tobool.not253 = icmp eq ptr %n.0252, null
  br i1 %tobool.not253, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %entry.while.body_crit_edge
  %n.0254 = phi ptr [ %n.0, %if.end7.while.body_crit_edge ], [ %n.0252, %entry.while.body_crit_edge ]
  %offset2 = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254, i32 0, i32 2
  %1 = ptrtoint ptr %offset2 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %offset2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %offset)
  %cmp = icmp ugt i64 %2, %offset
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %n.0254, i32 0, i32 2
  br label %if.end7

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %offset)
  %cmp4 = icmp ult i64 %2, %offset
  br i1 %cmp4, label %if.then5, label %while.end

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %n.0254, i32 0, i32 1
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then
  %n.1.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then5 ]
  %3 = ptrtoint ptr %n.1.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.0 = load ptr, ptr %n.1.in, align 4
  %tobool.not = icmp eq ptr %n.0, null
  br i1 %tobool.not, label %while.end.thread, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmap_only)
  %tobool8.not = icmp eq i32 %bitmap_only, 0
  %bitmap54 = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254, i32 0, i32 5
  %4 = ptrtoint ptr %bitmap54 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bitmap54, align 8
  %tobool55.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.then53, label %if.end12

while.end.thread:                                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmap_only)
  %tobool8.not240.not = icmp eq i32 %bitmap_only, 0
  br i1 %tobool8.not240.not, label %if.end75, label %while.end.thread.cleanup_crit_edge

while.end.thread.cleanup_crit_edge:               ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %while.end
  br i1 %tobool55.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %call = tail call ptr @rb_next(ptr noundef nonnull %n.0254) #14
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.end18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %offset22 = getelementptr inbounds %struct.btrfs_free_space, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %offset22 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset22, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %offset)
  %cmp23.not = icmp eq i64 %7, %offset
  br i1 %cmp23.not, label %if.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %bitmap26 = getelementptr inbounds %struct.btrfs_free_space, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %bitmap26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmap26, align 8
  %tobool27.not = icmp eq ptr %9, null
  br i1 %tobool27.not, label %do.end, label %if.end25.cleanup_crit_edge, !prof !160

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1690, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.then53:                                        ; preds = %while.end
  br i1 %tobool55.not, label %if.then53.cleanup_crit_edge, label %if.then56

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then56:                                        ; preds = %if.then53
  %call57 = tail call ptr @rb_prev(ptr noundef nonnull %n.0254) #14
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.then56.cleanup_crit_edge, label %if.then59

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then59:                                        ; preds = %if.then56
  %bitmap63 = getelementptr inbounds %struct.btrfs_free_space, ptr %call57, i32 0, i32 5
  %10 = ptrtoint ptr %bitmap63 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap63, align 8
  %tobool64.not = icmp eq ptr %11, null
  br i1 %tobool64.not, label %land.lhs.true, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  %offset65 = getelementptr inbounds %struct.btrfs_free_space, ptr %call57, i32 0, i32 2
  %12 = ptrtoint ptr %offset65 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset65, align 8
  %bytes = getelementptr inbounds %struct.btrfs_free_space, ptr %call57, i32 0, i32 3
  %14 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bytes, align 8
  %add = add i64 %15, %13
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %offset)
  %cmp66 = icmp ugt i64 %add, %offset
  %spec.select = select i1 %cmp66, ptr %call57, ptr %n.0254
  br label %cleanup

if.end75:                                         ; preds = %while.end.thread
  %offset76 = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254, i32 0, i32 2
  %16 = ptrtoint ptr %offset76 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offset76, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %offset)
  %cmp77 = icmp ugt i64 %17, %offset
  br i1 %cmp77, label %if.then78, label %if.end75.if.end99_crit_edge

if.end75.if.end99_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

if.then78:                                        ; preds = %if.end75
  %call80 = tail call ptr @rb_prev(ptr noundef nonnull %n.0254) #14
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.else94, label %if.then82

if.then82:                                        ; preds = %if.then78
  %offset86 = getelementptr inbounds %struct.btrfs_free_space, ptr %call80, i32 0, i32 2
  %18 = ptrtoint ptr %offset86 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offset86, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %offset)
  %cmp87.not = icmp ugt i64 %19, %offset
  br i1 %cmp87.not, label %cond.false, label %if.then82.if.end99_crit_edge, !prof !160

if.then82.if.end99_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

cond.false:                                       ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.55, i32 noundef 1720) #20
  unreachable

if.else94:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fuzzy)
  %tobool95.not = icmp eq i32 %fuzzy, 0
  %.prev.1 = select i1 %tobool95.not, ptr null, ptr %n.0254
  br label %cleanup

if.end99:                                         ; preds = %if.then82.if.end99_crit_edge, %if.end75.if.end99_crit_edge
  %entry1.3 = phi ptr [ %call80, %if.then82.if.end99_crit_edge ], [ %n.0254, %if.end75.if.end99_crit_edge ]
  %bitmap100 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.3, i32 0, i32 5
  %20 = ptrtoint ptr %bitmap100 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bitmap100, align 8
  %tobool101.not = icmp eq ptr %21, null
  br i1 %tobool101.not, label %if.else126, label %if.then102

if.then102:                                       ; preds = %if.end99
  %call104 = tail call ptr @rb_prev(ptr noundef nonnull %entry1.3) #14
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %if.then102.if.end119_crit_edge, label %if.then106

if.then102.if.end119_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then106:                                       ; preds = %if.then102
  %bitmap110 = getelementptr inbounds %struct.btrfs_free_space, ptr %call104, i32 0, i32 5
  %22 = ptrtoint ptr %bitmap110 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bitmap110, align 8
  %tobool111.not = icmp eq ptr %23, null
  br i1 %tobool111.not, label %land.lhs.true112, label %if.then106.if.end119_crit_edge

if.then106.if.end119_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

land.lhs.true112:                                 ; preds = %if.then106
  %offset113 = getelementptr inbounds %struct.btrfs_free_space, ptr %call104, i32 0, i32 2
  %24 = ptrtoint ptr %offset113 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %offset113, align 8
  %bytes114 = getelementptr inbounds %struct.btrfs_free_space, ptr %call104, i32 0, i32 3
  %26 = ptrtoint ptr %bytes114 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bytes114, align 8
  %add115 = add i64 %27, %25
  call void @__sanitizer_cov_trace_cmp8(i64 %add115, i64 %offset)
  %cmp116 = icmp ugt i64 %add115, %offset
  br i1 %cmp116, label %land.lhs.true112.cleanup_crit_edge, label %land.lhs.true112.if.end119_crit_edge

land.lhs.true112.if.end119_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

land.lhs.true112.cleanup_crit_edge:               ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end119:                                        ; preds = %land.lhs.true112.if.end119_crit_edge, %if.then106.if.end119_crit_edge, %if.then102.if.end119_crit_edge
  %offset120 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.3, i32 0, i32 2
  %28 = ptrtoint ptr %offset120 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %offset120, align 8
  %unit = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  %30 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %unit, align 4
  %mul = shl i32 %31, 15
  %conv = zext i32 %mul to i64
  %add121 = add i64 %29, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add121, i64 %offset)
  %cmp122 = icmp ugt i64 %add121, %offset
  br i1 %cmp122, label %if.end119.cleanup_crit_edge, label %if.end119.if.end134_crit_edge

if.end119.if.end134_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else126:                                       ; preds = %if.end99
  %offset127 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.3, i32 0, i32 2
  %32 = ptrtoint ptr %offset127 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %offset127, align 8
  %bytes128 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.3, i32 0, i32 3
  %34 = ptrtoint ptr %bytes128 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bytes128, align 8
  %add129 = add i64 %35, %33
  call void @__sanitizer_cov_trace_cmp8(i64 %add129, i64 %offset)
  %cmp130 = icmp ugt i64 %add129, %offset
  br i1 %cmp130, label %if.else126.cleanup_crit_edge, label %if.else126.if.end134_crit_edge

if.else126.if.end134_crit_edge:                   ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.else126.cleanup_crit_edge:                     ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end134:                                        ; preds = %if.else126.if.end134_crit_edge, %if.end119.if.end134_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fuzzy)
  %tobool135.not = icmp eq i32 %fuzzy, 0
  br i1 %tobool135.not, label %if.end134.cleanup_crit_edge, label %while.cond138.preheader

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond138.preheader:                          ; preds = %if.end134
  %call141255 = tail call ptr @rb_next(ptr noundef nonnull %entry1.3) #14
  %tobool142.not256 = icmp eq ptr %call141255, null
  br i1 %tobool142.not256, label %while.cond138.preheader.cleanup_crit_edge, label %if.end144.lr.ph

while.cond138.preheader.cleanup_crit_edge:        ; preds = %while.cond138.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end144.lr.ph:                                  ; preds = %while.cond138.preheader
  %unit152 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  br label %if.end144

if.end144:                                        ; preds = %if.end168.if.end144_crit_edge, %if.end144.lr.ph
  %call141257 = phi ptr [ %call141255, %if.end144.lr.ph ], [ %call141, %if.end168.if.end144_crit_edge ]
  %bitmap148 = getelementptr inbounds %struct.btrfs_free_space, ptr %call141257, i32 0, i32 5
  %36 = ptrtoint ptr %bitmap148 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bitmap148, align 8
  %tobool149.not = icmp eq ptr %37, null
  %offset161 = getelementptr inbounds %struct.btrfs_free_space, ptr %call141257, i32 0, i32 2
  %38 = ptrtoint ptr %offset161 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %offset161, align 8
  br i1 %tobool149.not, label %if.else160, label %if.then150

if.then150:                                       ; preds = %if.end144
  %40 = ptrtoint ptr %unit152 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %unit152, align 4
  %mul153 = shl i32 %41, 15
  %conv154 = zext i32 %mul153 to i64
  %add155 = add i64 %39, %conv154
  call void @__sanitizer_cov_trace_cmp8(i64 %add155, i64 %offset)
  %cmp156 = icmp ugt i64 %add155, %offset
  br i1 %cmp156, label %if.then150.cleanup_crit_edge, label %if.then150.if.end168_crit_edge

if.then150.if.end168_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168

if.then150.cleanup_crit_edge:                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else160:                                       ; preds = %if.end144
  %bytes162 = getelementptr inbounds %struct.btrfs_free_space, ptr %call141257, i32 0, i32 3
  %42 = ptrtoint ptr %bytes162 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %bytes162, align 8
  %add163 = add i64 %43, %39
  call void @__sanitizer_cov_trace_cmp8(i64 %add163, i64 %offset)
  %cmp164 = icmp ugt i64 %add163, %offset
  br i1 %cmp164, label %if.else160.cleanup_crit_edge, label %if.else160.if.end168_crit_edge

if.else160.if.end168_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168

if.else160.cleanup_crit_edge:                     ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end168:                                        ; preds = %if.else160.if.end168_crit_edge, %if.then150.if.end168_crit_edge
  %call141 = tail call ptr @rb_next(ptr noundef nonnull %call141257) #14
  %tobool142.not = icmp eq ptr %call141, null
  br i1 %tobool142.not, label %if.end168.cleanup_crit_edge, label %if.end168.if.end144_crit_edge

if.end168.if.end144_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end144

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end168.cleanup_crit_edge, %if.else160.cleanup_crit_edge, %if.then150.cleanup_crit_edge, %while.cond138.preheader.cleanup_crit_edge, %if.end134.cleanup_crit_edge, %if.else126.cleanup_crit_edge, %if.end119.cleanup_crit_edge, %land.lhs.true112.cleanup_crit_edge, %if.else94, %land.lhs.true, %if.then59.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %do.end, %if.end25.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %while.end.thread.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %n.0254, %if.end12.cleanup_crit_edge ], [ null, %if.end15.cleanup_crit_edge ], [ null, %if.end18.cleanup_crit_edge ], [ %call, %do.end ], [ %call, %if.end25.cleanup_crit_edge ], [ %n.0254, %if.then59.cleanup_crit_edge ], [ %n.0254, %if.then56.cleanup_crit_edge ], [ %n.0254, %if.then53.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ], [ %.prev.1, %if.else94 ], [ %call104, %land.lhs.true112.cleanup_crit_edge ], [ %entry1.3, %if.end119.cleanup_crit_edge ], [ %entry1.3, %if.else126.cleanup_crit_edge ], [ null, %if.end134.cleanup_crit_edge ], [ null, %while.end.thread.cleanup_crit_edge ], [ null, %while.cond138.preheader.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end168.cleanup_crit_edge ], [ %call141257, %if.else160.cleanup_crit_edge ], [ %call141257, %if.then150.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_from_bitmap(ptr noundef %ctl, ptr noundef %bitmap_info, ptr nocapture noundef %offset, ptr nocapture noundef %bytes) unnamed_addr #5 align 64 {
entry:
  %search_start = alloca i64, align 8
  %search_bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %search_start) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %search_bytes) #14
  %unit = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  br label %again

again:                                            ; preds = %cleanup.again_crit_edge, %entry
  %bitmap_info.addr.0 = phi ptr [ %bitmap_info, %entry ], [ %call30, %cleanup.again_crit_edge ]
  %offset1 = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info.addr.0, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset1, align 8
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unit, align 4
  %mul = shl i32 %3, 15
  %conv = zext i32 %mul to i64
  %add = add i64 %1, -1
  %sub = add i64 %add, %conv
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  %6 = ptrtoint ptr %search_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %search_start, align 8
  %conv3 = sext i32 %3 to i64
  %sub4 = sub i64 1, %5
  %add5 = add i64 %sub4, %sub
  %7 = tail call i64 @llvm.umin.i64(i64 %add5, i64 %conv3)
  %8 = ptrtoint ptr %search_bytes to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %search_bytes, align 8
  %call = call fastcc i32 @search_bitmap(ptr noundef %ctl, ptr noundef %bitmap_info.addr.0, ptr noundef nonnull %search_start, ptr noundef nonnull %search_bytes, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %again.cleanup57_crit_edge, label %lor.lhs.false

again.cleanup57_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

lor.lhs.false:                                    ; preds = %again
  %9 = ptrtoint ptr %search_start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %search_start, align 8
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp9.not = icmp eq i64 %10, %12
  br i1 %cmp9.not, label %if.end, label %lor.lhs.false.cleanup57_crit_edge

lor.lhs.false.cleanup57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

if.end:                                           ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %search_bytes to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %search_bytes, align 8
  %15 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bytes, align 8
  %17 = tail call i64 @llvm.umin.i64(i64 %14, i64 %16)
  %sub18 = add i64 %1, %conv
  %add19 = sub i64 %sub18, %10
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 %add19)
  tail call fastcc void @bitmap_clear_bits(ptr noundef %ctl, ptr noundef %bitmap_info.addr.0, i64 noundef %10, i64 noundef %18, i1 noundef zeroext true)
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset, align 8
  %add27 = add i64 %20, %18
  store i64 %add27, ptr %offset, align 8
  %21 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes, align 8
  %sub28 = sub i64 %22, %18
  store i64 %sub28, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %18)
  %tobool.not = icmp eq i64 %22, %18
  br i1 %tobool.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end
  %call30 = tail call ptr @rb_next(ptr noundef %bitmap_info.addr.0) #14
  %bytes31 = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info.addr.0, i32 0, i32 3
  %23 = ptrtoint ptr %bytes31 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bytes31, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool32.not = icmp eq i64 %24, 0
  br i1 %tobool32.not, label %if.then33, label %if.then29.if.end34_crit_edge

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @free_bitmap(ptr noundef %ctl, ptr noundef %bitmap_info.addr.0)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then29.if.end34_crit_edge
  %tobool35.not = icmp eq ptr %call30, null
  br i1 %tobool35.not, label %if.end34.cleanup57_crit_edge, label %if.end37

if.end34.cleanup57_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

if.end37:                                         ; preds = %if.end34
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %call30, i32 0, i32 5
  %25 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bitmap, align 8
  %tobool39.not = icmp eq ptr %26, null
  br i1 %tobool39.not, label %if.end37.cleanup57_crit_edge, label %if.end41

if.end37.cleanup57_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

if.end41:                                         ; preds = %if.end37
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %offset, align 8
  %29 = ptrtoint ptr %search_start to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %search_start, align 8
  %30 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %unit, align 4
  %conv43 = sext i32 %31 to i64
  %32 = ptrtoint ptr %search_bytes to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv43, ptr %search_bytes, align 8
  %call44 = call fastcc i32 @search_bitmap(ptr noundef %ctl, ptr noundef nonnull %call30, ptr noundef nonnull %search_start, ptr noundef nonnull %search_bytes, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end41.cleanup57_crit_edge, label %cleanup

if.end41.cleanup57_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

cleanup:                                          ; preds = %if.end41
  %33 = ptrtoint ptr %search_start to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %search_start, align 8
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %offset, align 8
  %cmp48.not = icmp eq i64 %34, %36
  br i1 %cmp48.not, label %cleanup.again_crit_edge, label %cleanup.cleanup57_crit_edge

cleanup.cleanup57_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

cleanup.again_crit_edge:                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %again

if.else:                                          ; preds = %if.end
  %bytes52 = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info.addr.0, i32 0, i32 3
  %37 = ptrtoint ptr %bytes52 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bytes52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool53.not = icmp eq i64 %38, 0
  br i1 %tobool53.not, label %if.then54, label %if.else.cleanup57_crit_edge

if.else.cleanup57_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @free_bitmap(ptr noundef %ctl, ptr noundef %bitmap_info.addr.0)
  br label %cleanup57

cleanup57:                                        ; preds = %if.then54, %if.else.cleanup57_crit_edge, %cleanup.cleanup57_crit_edge, %if.end41.cleanup57_crit_edge, %if.end37.cleanup57_crit_edge, %if.end34.cleanup57_crit_edge, %lor.lhs.false.cleanup57_crit_edge, %again.cleanup57_crit_edge
  %retval.2 = phi i32 [ 0, %if.else.cleanup57_crit_edge ], [ 0, %if.then54 ], [ -22, %if.end34.cleanup57_crit_edge ], [ -11, %if.end37.cleanup57_crit_edge ], [ -11, %if.end41.cleanup57_crit_edge ], [ -22, %again.cleanup57_crit_edge ], [ -22, %lor.lhs.false.cleanup57_crit_edge ], [ -11, %cleanup.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %search_bytes) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %search_start) #14
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_dump_free_space(ptr noundef %block_group, i64 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_space_ctl, align 4
  %4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.i.not = icmp eq i64 %6, 0
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %zone_capacity = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 48
  %7 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %zone_capacity, align 8
  %alloc_offset = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 46
  %9 = ptrtoint ptr %alloc_offset to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %alloc_offset, align 8
  %sub = sub i64 %8, %10
  %zone_is_active = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 17
  %11 = ptrtoint ptr %zone_is_active to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %zone_is_active, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.15, i64 noundef %sub, i32 noundef %bf.cast) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  %free_space_offset = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 1
  %call2 = tail call ptr @rb_first(ptr noundef %free_space_offset) #14
  %tobool.not37 = icmp eq ptr %call2, null
  br i1 %tobool.not37, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.body.lr.ph
  %count.039 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %if.end6.for.body_crit_edge ]
  %n.038 = phi ptr [ %call2, %for.body.lr.ph ], [ %call9, %if.end6.for.body_crit_edge ]
  %bytes3 = getelementptr inbounds %struct.btrfs_free_space, ptr %n.038, i32 0, i32 3
  %12 = ptrtoint ptr %bytes3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bytes3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %bytes)
  %cmp.not = icmp ult i64 %13, %bytes
  br i1 %cmp.not, label %for.body.if.end6_crit_edge, label %land.lhs.true

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp eq i32 %15, 0
  %inc = zext i1 %tobool4.not to i32
  %spec.select = add i32 %count.039, %inc
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %for.body.if.end6_crit_edge
  %count.1 = phi i32 [ %count.039, %for.body.if.end6_crit_edge ], [ %spec.select, %land.lhs.true ]
  %offset = getelementptr inbounds %struct.btrfs_free_space, ptr %n.038, i32 0, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offset, align 8
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %n.038, i32 0, i32 5
  %18 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bitmap, align 8
  %tobool8.not = icmp eq ptr %19, null
  %cond = select i1 %tobool8.not, ptr @.str.18, ptr @.str.17
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.16, i64 noundef %17, i64 noundef %13, ptr noundef nonnull %cond) #17
  %call9 = tail call ptr @rb_next(ptr noundef nonnull %n.038) #14
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %if.end.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %count.1, %if.end6.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %3) #14
  %cluster_list = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 27
  %20 = ptrtoint ptr %cluster_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %cluster_list, align 4
  %cmp.i36.not = icmp eq ptr %21, %cluster_list
  %cond13 = select i1 %cmp.i36.not, ptr @.str.18, ptr @.str.17
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond13) #17
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %count.0.lcssa) #17
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__btrfs_remove_free_space_cache_locked(ptr noundef %ctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_offset = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 1
  %call9 = tail call ptr @rb_last(ptr noundef %free_space_offset) #14
  %cmp.not10 = icmp eq ptr %call9, null
  br i1 %cmp.not10, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %free_space_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2
  %rb_leftmost.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2, i32 1
  %free_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 5
  %discardable_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 9
  %discardable_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 10
  %free_space.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call11 = phi ptr [ %call9, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %call11, i32 0, i32 5
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  tail call void @rb_erase(ptr noundef nonnull %call11, ptr noundef %free_space_offset) #14
  %bytes_index.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call11, i32 0, i32 1
  %2 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, %bytes_index.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.rb_erase_cached.exit.i_crit_edge

if.then.rb_erase_cached.exit.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call ptr @rb_next(ptr noundef %bytes_index.i) #14
  %4 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %rb_leftmost.i.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.then.rb_erase_cached.exit.i_crit_edge
  tail call void @rb_erase(ptr noundef %bytes_index.i, ptr noundef %free_space_bytes.i) #14
  %5 = ptrtoint ptr %free_extents.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %free_extents.i, align 4
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %free_extents.i, align 4
  %7 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bitmap, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge

rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge: ; preds = %rb_erase_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit

land.lhs.true.i:                                  ; preds = %rb_erase_cached.exit.i
  %trim_state.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call11, i32 0, i32 7
  %9 = ptrtoint ptr %trim_state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %trim_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i19.i = icmp eq i32 %10, 1
  br i1 %cmp.i19.i, label %land.lhs.true.i.unlink_free_space.exit_crit_edge, label %if.then.i

land.lhs.true.i.unlink_free_space.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %discardable_extents.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %discardable_extents.i, align 8
  %dec2.i = add i32 %12, -1
  store i32 %dec2.i, ptr %discardable_extents.i, align 8
  %bytes.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call11, i32 0, i32 3
  %13 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bytes.i, align 8
  %15 = ptrtoint ptr %discardable_bytes.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %discardable_bytes.i, align 8
  %sub.i = sub i64 %16, %14
  store i64 %sub.i, ptr %discardable_bytes.i, align 8
  br label %unlink_free_space.exit

unlink_free_space.exit:                           ; preds = %if.then.i, %land.lhs.true.i.unlink_free_space.exit_crit_edge, %rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge
  %bytes6.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call11, i32 0, i32 3
  %17 = ptrtoint ptr %bytes6.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bytes6.i, align 8
  %19 = ptrtoint ptr %free_space.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %free_space.i, align 8
  %sub7.i = sub i64 %20, %18
  store i64 %sub7.i, ptr %free_space.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %21 = load ptr, ptr @btrfs_free_space_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %call11) #14
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @free_bitmap(ptr noundef %ctl, ptr noundef nonnull %call11)
  br label %if.end

if.end:                                           ; preds = %if.else, %unlink_free_space.exit
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 2979, i32 noundef 1) #14
  %call2 = tail call i32 @__cond_resched_lock(ptr noundef %ctl) #14
  %call = tail call ptr @rb_last(ptr noundef %free_space_offset) #14
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_remove_free_space_cache(ptr noundef %block_group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %cluster_list = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 27
  %2 = ptrtoint ptr %cluster_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cluster_list, align 8
  %cmp.not36 = icmp eq ptr %3, %cluster_list
  br i1 %cmp.not36, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %8, %if.end.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -120
  %block_group2 = getelementptr i8, ptr %4, i32 -4
  %5 = ptrtoint ptr %block_group2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %block_group2, align 4
  %cmp3.not = icmp eq ptr %6, %block_group
  br i1 %cmp3.not, label %while.body.if.end_crit_edge, label %do.end, !prof !155

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3004, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  tail call fastcc void @__btrfs_return_cluster_to_free_space(ptr noundef %block_group, ptr noundef %add.ptr)
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 3007, i32 noundef 1) #14
  %call = tail call i32 @__cond_resched_lock(ptr noundef %1) #14
  %7 = ptrtoint ptr %cluster_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cluster_list, align 8
  %cmp.not = icmp eq ptr %8, %cluster_list
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call fastcc void @__btrfs_remove_free_space_cache_locked(ptr noundef %1)
  tail call void @btrfs_discard_update_discardable(ptr noundef %block_group) #14
  tail call void @_raw_spin_unlock(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__btrfs_return_cluster_to_free_space(ptr noundef %block_group, ptr noundef %cluster) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  tail call void @_raw_spin_lock(ptr noundef %cluster) #14
  %block_group2 = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 6
  %2 = ptrtoint ptr %block_group2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_group2, align 4
  %cmp.not = icmp eq ptr %3, %block_group
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %cluster) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %block_group2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %block_group2, align 4
  %window_start = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 4
  %5 = ptrtoint ptr %window_start to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %window_start, align 8
  %block_group_list = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %block_group_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %block_group_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %block_group_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %block_group_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %block_group_list, ptr %block_group_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %block_group_list, ptr %prev.i3.i, align 4
  %root = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 2
  %call = tail call ptr @rb_first(ptr noundef %root) #14
  %tobool.not71 = icmp eq ptr %call, null
  br i1 %tobool.not71, label %list_del_init.exit.while.end_crit_edge, label %while.body.lr.ph

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %list_del_init.exit
  %discardable_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 9
  %discardable_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 10
  %free_space_offset = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 1
  %free_space_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 2
  %rb_leftmost.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %rb_add_cached.exit.while.body_crit_edge, %while.body.lr.ph
  %node.072 = phi ptr [ %call, %while.body.lr.ph ], [ %call5, %rb_add_cached.exit.while.body_crit_edge ]
  %call5 = tail call ptr @rb_next(ptr noundef nonnull %node.072) #14
  tail call void @rb_erase(ptr noundef nonnull %node.072, ptr noundef %root) #14
  %14 = ptrtoint ptr %node.072 to i32
  %15 = ptrtoint ptr %node.072 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %node.072, align 8
  %bitmap10 = getelementptr %struct.btrfs_free_space, ptr %node.072, i32 0, i32 5
  %16 = ptrtoint ptr %bitmap10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitmap10, align 8
  %cmp11 = icmp ne ptr %17, null
  br i1 %cmp11, label %while.body.if.end27_crit_edge, label %if.then13

while.body.if.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then13:                                        ; preds = %while.body
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %node.072, i32 0, i32 7
  %18 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp eq i32 %19, 1
  br i1 %cmp.i, label %if.then13.if.end17_crit_edge, label %if.then15

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %discardable_extents, align 8
  %dec = add i32 %21, -1
  store i32 %dec, ptr %discardable_extents, align 8
  %bytes = getelementptr inbounds %struct.btrfs_free_space, ptr %node.072, i32 0, i32 3
  %22 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes, align 8
  %24 = ptrtoint ptr %discardable_bytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %discardable_bytes, align 8
  %sub = sub i64 %25, %23
  store i64 %sub, ptr %discardable_bytes, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then13.if.end17_crit_edge
  %call18 = tail call fastcc zeroext i1 @try_merge_free_space(ptr noundef %1, ptr noundef nonnull %node.072, i1 noundef zeroext false)
  tail call fastcc void @steal_from_bitmap(ptr noundef %1, ptr noundef nonnull %node.072, i1 noundef zeroext false)
  %26 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i70 = icmp eq i32 %27, 1
  br i1 %cmp.i70, label %if.end17.if.end27_crit_edge, label %if.then20

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %discardable_extents, align 8
  %inc = add i32 %29, 1
  store i32 %inc, ptr %discardable_extents, align 8
  %bytes23 = getelementptr inbounds %struct.btrfs_free_space, ptr %node.072, i32 0, i32 3
  %30 = ptrtoint ptr %bytes23 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bytes23, align 8
  %32 = ptrtoint ptr %discardable_bytes to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %discardable_bytes, align 8
  %add = add i64 %33, %31
  store i64 %add, ptr %discardable_bytes, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.end17.if.end27_crit_edge, %while.body.if.end27_crit_edge
  %offset = getelementptr inbounds %struct.btrfs_free_space, ptr %node.072, i32 0, i32 2
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %offset, align 8
  %conv = zext i1 %cmp11 to i32
  %call30 = tail call fastcc i32 @tree_insert_offset(ptr noundef %free_space_offset, i64 noundef %35, ptr noundef nonnull %node.072, i32 noundef %conv)
  %bytes_index = getelementptr inbounds %struct.btrfs_free_space, ptr %node.072, i32 0, i32 1
  %36 = ptrtoint ptr %free_space_bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free_space_bytes, align 4
  %tobool.not2.i = icmp eq ptr %37, null
  br i1 %tobool.not2.i, label %if.then.i.critedge.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end27
  %38 = ptrtoint ptr %bitmap10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bitmap10, align 8
  %tobool.not.i7.i.i = icmp eq ptr %39, null
  %max_extent_size.i8.i.i = getelementptr %struct.btrfs_free_space, ptr %node.072, i32 0, i32 4
  %bytes.i11.i.i = getelementptr %struct.btrfs_free_space, ptr %node.072, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %entry_less.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %40 = phi ptr [ %37, %while.body.lr.ph.i ], [ %52, %entry_less.exit.i.while.body.i_crit_edge ]
  %leftmost.0.off03.i = phi i1 [ true, %while.body.lr.ph.i ], [ %leftmost.1.off0.i, %entry_less.exit.i.while.body.i_crit_edge ]
  %bitmap.i.i.i = getelementptr i8, ptr %40, i32 36
  %41 = ptrtoint ptr %bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bitmap.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i, label %while.body.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

while.body.i.if.end.i.i.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %while.body.i
  %max_extent_size.i.i.i = getelementptr i8, ptr %40, i32 28
  %43 = ptrtoint ptr %max_extent_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %max_extent_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %tobool2.not.i.i.i = icmp eq i64 %44, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge

land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_max_extent_size.exit.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %while.body.i.if.end.i.i.i_crit_edge
  %bytes.i.i.i = getelementptr i8, ptr %40, i32 20
  %45 = ptrtoint ptr %bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %bytes.i.i.i, align 8
  br label %get_max_extent_size.exit.i.i

get_max_extent_size.exit.i.i:                     ; preds = %if.end.i.i.i, %land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i64 [ %46, %if.end.i.i.i ], [ %44, %land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge ]
  br i1 %tobool.not.i7.i.i, label %get_max_extent_size.exit.i.i.if.end.i12.i.i_crit_edge, label %land.lhs.true.i10.i.i

get_max_extent_size.exit.i.i.if.end.i12.i.i_crit_edge: ; preds = %get_max_extent_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i12.i.i

land.lhs.true.i10.i.i:                            ; preds = %get_max_extent_size.exit.i.i
  %47 = ptrtoint ptr %max_extent_size.i8.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %max_extent_size.i8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %tobool2.not.i9.i.i = icmp eq i64 %48, 0
  br i1 %tobool2.not.i9.i.i, label %land.lhs.true.i10.i.i.if.end.i12.i.i_crit_edge, label %land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge

land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge: ; preds = %land.lhs.true.i10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %entry_less.exit.i

land.lhs.true.i10.i.i.if.end.i12.i.i_crit_edge:   ; preds = %land.lhs.true.i10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i12.i.i

if.end.i12.i.i:                                   ; preds = %land.lhs.true.i10.i.i.if.end.i12.i.i_crit_edge, %get_max_extent_size.exit.i.i.if.end.i12.i.i_crit_edge
  %49 = ptrtoint ptr %bytes.i11.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bytes.i11.i.i, align 8
  br label %entry_less.exit.i

entry_less.exit.i:                                ; preds = %if.end.i12.i.i, %land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge
  %retval.0.i13.i.i = phi i64 [ %50, %if.end.i12.i.i ], [ %48, %land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i.i, i64 %retval.0.i13.i.i)
  %cmp.i.i = icmp ult i64 %retval.0.i.i.i, %retval.0.i13.i.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 1
  %link.1.i = select i1 %cmp.i.i, ptr %rb_left.i, ptr %rb_right.i
  %leftmost.1.off0.i = select i1 %cmp.i.i, i1 %leftmost.0.off03.i, i1 false
  %51 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %entry_less.exit.i.while.body.i_crit_edge

entry_less.exit.i.while.body.i_crit_edge:         ; preds = %entry_less.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %entry_less.exit.i
  %phi.cast.le.i = ptrtoint ptr %40 to i32
  %53 = ptrtoint ptr %bytes_index to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %phi.cast.le.i, ptr %bytes_index, align 4
  %rb_right.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %node.072, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %node.072, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %rb_left.i.i, align 4
  %56 = ptrtoint ptr %link.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %bytes_index, ptr %link.1.i, align 4
  br i1 %leftmost.1.off0.i, label %while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge, label %while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge

while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_add_cached.exit

while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.then.i.critedge.i:                             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %bytes_index to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %bytes_index, align 4
  %rb_right.i.c.i = getelementptr inbounds %struct.btrfs_free_space, ptr %node.072, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %rb_right.i.c.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rb_right.i.c.i, align 4
  %rb_left.i.c.i = getelementptr inbounds %struct.btrfs_free_space, ptr %node.072, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %rb_left.i.c.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rb_left.i.c.i, align 4
  %60 = ptrtoint ptr %free_space_bytes to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %bytes_index, ptr %free_space_bytes, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.critedge.i, %while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge
  %61 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %bytes_index, ptr %rb_leftmost.i.i, align 4
  br label %rb_add_cached.exit

rb_add_cached.exit:                               ; preds = %if.then.i.i, %while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge
  tail call void @rb_insert_color(ptr noundef %bytes_index, ptr noundef %free_space_bytes) #14
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %rb_add_cached.exit.while.end_crit_edge, label %rb_add_cached.exit.while.body_crit_edge

rb_add_cached.exit.while.body_crit_edge:          ; preds = %rb_add_cached.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

rb_add_cached.exit.while.end_crit_edge:           ; preds = %rb_add_cached.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %rb_add_cached.exit.while.end_crit_edge, %list_del_init.exit.while.end_crit_edge
  %62 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %root, align 8
  tail call void @_raw_spin_unlock(ptr noundef %cluster) #14
  tail call void @btrfs_put_block_group(ptr noundef %block_group) #14
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_is_free_space_trimmed(ptr nocapture noundef readonly %block_group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %free_space_offset = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 1
  %call = tail call ptr @rb_first(ptr noundef %free_space_offset) #14
  %tobool.not9 = icmp eq ptr %call, null
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %node.010 = phi ptr [ %call2, %if.end.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %node.010, i32 0, i32 7
  %2 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end:                                           ; preds = %while.body
  %call2 = tail call ptr @rb_next(ptr noundef nonnull %node.010) #14
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %tobool.not.lcssa = phi i1 [ true, %entry.while.end_crit_edge ], [ %cmp.i, %while.body.while.end_crit_edge ], [ %cmp.i, %if.end.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %1) #14
  ret i1 %tobool.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @btrfs_find_space_for_alloc(ptr noundef %block_group, i64 noundef %offset, i64 noundef %bytes, i64 noundef %empty_size, ptr nocapture noundef %max_extent_size) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  %size.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  %2 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_group, align 8
  %add = add i64 %empty_size, %bytes
  %4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 176
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.i.not = icmp eq i64 %6, 0
  br i1 %cmp.i.not, label %cond.end, label %cond.false, !prof !155

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.24, i32 noundef 3061) #20
  unreachable

cond.end:                                         ; preds = %entry
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %7 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %offset)
  %cmp = icmp eq i64 %8, %offset
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %full_stripe_len = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 15
  %9 = ptrtoint ptr %full_stripe_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %full_stripe_len, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #14
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %tmp.i, align 8, !annotation !149
  %free_space_offset.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %free_space_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_space_offset.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %cond.end.find_free_space.exit.thread_crit_edge, label %again.i

cond.end.find_free_space.exit.thread_crit_edge:   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_free_space.exit.thread

again.i:                                          ; preds = %cond.end
  br i1 %cmp, label %again.i.if.end8.i_crit_edge, label %if.else.i

again.i.if.end8.i_crit_edge:                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.else.i:                                        ; preds = %again.i
  %unit.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %unit.i.i, align 4
  %mul.i.i = shl i32 %15, 15
  %conv.i.i = zext i32 %mul.i.i to i64
  %start.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %start.i.i, align 8
  %sub.i.i = sub i64 %offset, %17
  %call.i.i109 = tail call i64 @div64_u64(i64 noundef %sub.i.i, i64 noundef %conv.i.i) #14
  %mul1.i.i = mul i64 %call.i.i109, %conv.i.i
  %18 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start.i.i, align 8
  %add.i.i = add i64 %mul1.i.i, %19
  %call4.i = tail call fastcc ptr @tree_search_offset(ptr noundef %1, i64 noundef %add.i.i, i32 noundef 0, i32 noundef 1) #14
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.else.i.find_free_space.exit.thread_crit_edge, label %if.else.i.for.body.lr.ph.i_crit_edge

if.else.i.for.body.lr.ph.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph.i

if.else.i.find_free_space.exit.thread_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_free_space.exit.thread

if.end8.i:                                        ; preds = %cleanup.i, %again.i.if.end8.i_crit_edge
  %rb_leftmost.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool9.not172.i = icmp eq ptr %21, null
  br i1 %tobool9.not172.i, label %if.end8.i.find_free_space.exit.thread_crit_edge, label %if.end8.i.for.body.lr.ph.i_crit_edge

if.end8.i.for.body.lr.ph.i_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph.i

if.end8.i.find_free_space.exit.thread_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_free_space.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end8.i.for.body.lr.ph.i_crit_edge, %if.else.i.for.body.lr.ph.i_crit_edge
  %node.0184.i = phi ptr [ %21, %if.end8.i.for.body.lr.ph.i_crit_edge ], [ %call4.i, %if.else.i.for.body.lr.ph.i_crit_edge ]
  %entry1.0.idx.i = select i1 %cmp, i32 -12, i32 0
  %conv.i = zext i32 %10 to i64
  %start.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 8
  %sub.i = add nsw i64 %conv.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv.i)
  %cmp27.not.i = icmp ult i64 %add, %conv.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %node.1173.i = phi ptr [ %node.0184.i, %for.body.lr.ph.i ], [ %call84.i, %for.inc.i.for.body.i_crit_edge ]
  %entry1.0.i = getelementptr i8, ptr %node.1173.i, i32 %entry1.0.idx.i
  %bytes18.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %bytes18.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes18.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %add)
  %cmp.i110 = icmp ult i64 %23, %add
  br i1 %cmp.i110, label %if.then19.i, label %if.end26.i

if.then19.i:                                      ; preds = %for.body.i
  %bitmap.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0.i, i32 0, i32 5
  %24 = ptrtoint ptr %bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bitmap.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.then19.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then19.i.if.end.i.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then19.i
  %max_extent_size.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0.i, i32 0, i32 4
  %26 = ptrtoint ptr %max_extent_size.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %max_extent_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool2.not.i.i = icmp eq i64 %27, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.get_max_extent_size.exit.i_crit_edge

land.lhs.true.i.i.get_max_extent_size.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_max_extent_size.exit.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then19.i.if.end.i.i_crit_edge
  br label %get_max_extent_size.exit.i

get_max_extent_size.exit.i:                       ; preds = %if.end.i.i, %land.lhs.true.i.i.get_max_extent_size.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ %23, %if.end.i.i ], [ %27, %land.lhs.true.i.i.get_max_extent_size.exit.i_crit_edge ]
  %28 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %max_extent_size, align 8
  %30 = tail call i64 @llvm.umax.i64(i64 %retval.0.i.i, i64 %29) #14
  %31 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %max_extent_size, align 8
  br i1 %cmp, label %get_max_extent_size.exit.i.find_free_space.exit.thread_crit_edge, label %get_max_extent_size.exit.i.for.inc.i_crit_edge

get_max_extent_size.exit.i.for.inc.i_crit_edge:   ; preds = %get_max_extent_size.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

get_max_extent_size.exit.i.find_free_space.exit.thread_crit_edge: ; preds = %get_max_extent_size.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_free_space.exit.thread

if.end26.i:                                       ; preds = %for.body.i
  %offset41.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0.i, i32 0, i32 2
  %32 = ptrtoint ptr %offset41.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %offset41.i, align 8
  br i1 %cmp27.not.i, label %if.else40.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %start.i, align 8
  %add.i = add i64 %sub.i, %33
  %sub32.i = sub i64 %add.i, %35
  %call34.i = tail call i64 @div64_u64(i64 noundef %sub32.i, i64 noundef %conv.i) #14
  %mul.i = mul i64 %call34.i, %conv.i
  %36 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %start.i, align 8
  %add37.i = add i64 %37, %mul.i
  %38 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add37.i, ptr %tmp.i, align 8
  %39 = ptrtoint ptr %offset41.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %offset41.i, align 8
  %sub39.i = sub i64 %add37.i, %40
  br label %if.end42.i

if.else40.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %33, ptr %tmp.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else40.i, %if.then29.i
  %align_off.0.i = phi i64 [ %sub39.i, %if.then29.i ], [ 0, %if.else40.i ]
  %42 = ptrtoint ptr %bytes18.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %bytes18.i, align 8
  %add44.i = add i64 %align_off.0.i, %add
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %add44.i)
  %cmp45.i = icmp ult i64 %43, %add44.i
  %bitmap.i143.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %bitmap.i143.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bitmap.i143.i, align 8
  %tobool.not.i144.i = icmp eq ptr %45, null
  br i1 %cmp45.i, label %if.then47.i, label %if.end56.i

if.then47.i:                                      ; preds = %if.end42.i
  br i1 %tobool.not.i144.i, label %if.then47.i.if.end.i149.i_crit_edge, label %land.lhs.true.i147.i

if.then47.i.if.end.i149.i_crit_edge:              ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i149.i

land.lhs.true.i147.i:                             ; preds = %if.then47.i
  %max_extent_size.i145.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0.i, i32 0, i32 4
  %46 = ptrtoint ptr %max_extent_size.i145.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %max_extent_size.i145.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool2.not.i146.i = icmp eq i64 %47, 0
  br i1 %tobool2.not.i146.i, label %land.lhs.true.i147.i.if.end.i149.i_crit_edge, label %land.lhs.true.i147.i.get_max_extent_size.exit151.i_crit_edge

land.lhs.true.i147.i.get_max_extent_size.exit151.i_crit_edge: ; preds = %land.lhs.true.i147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_max_extent_size.exit151.i

land.lhs.true.i147.i.if.end.i149.i_crit_edge:     ; preds = %land.lhs.true.i147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i149.i

if.end.i149.i:                                    ; preds = %land.lhs.true.i147.i.if.end.i149.i_crit_edge, %if.then47.i.if.end.i149.i_crit_edge
  br label %get_max_extent_size.exit151.i

get_max_extent_size.exit151.i:                    ; preds = %if.end.i149.i, %land.lhs.true.i147.i.get_max_extent_size.exit151.i_crit_edge
  %retval.0.i150.i = phi i64 [ %43, %if.end.i149.i ], [ %47, %land.lhs.true.i147.i.get_max_extent_size.exit151.i_crit_edge ]
  %48 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %max_extent_size, align 8
  %50 = tail call i64 @llvm.umax.i64(i64 %retval.0.i150.i, i64 %49) #14
  %51 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %max_extent_size, align 8
  br label %for.inc.i

if.end56.i:                                       ; preds = %if.end42.i
  br i1 %tobool.not.i144.i, label %if.end81.i, label %if.then58.i

if.then58.i:                                      ; preds = %if.end56.i
  %call59.i = tail call ptr @rb_next(ptr noundef nonnull %node.1173.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size.i) #14
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %add, ptr %size.i, align 8
  %call60.i = call fastcc i32 @search_bitmap(ptr noundef %1, ptr noundef %entry1.0.i, ptr noundef nonnull %tmp.i, ptr noundef nonnull %size.i, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %cleanup.thread.i, label %if.else63.i

cleanup.thread.i:                                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size.i) #14
  br label %find_free_space.exit

if.else63.i:                                      ; preds = %if.then58.i
  %55 = ptrtoint ptr %bitmap.i143.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bitmap.i143.i, align 8
  %tobool.not.i153.i = icmp eq ptr %56, null
  br i1 %tobool.not.i153.i, label %if.else63.i.if.end.i158.i_crit_edge, label %land.lhs.true.i156.i

if.else63.i.if.end.i158.i_crit_edge:              ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i158.i

land.lhs.true.i156.i:                             ; preds = %if.else63.i
  %max_extent_size.i154.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0.i, i32 0, i32 4
  %57 = ptrtoint ptr %max_extent_size.i154.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %max_extent_size.i154.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %58)
  %tobool2.not.i155.i = icmp eq i64 %58, 0
  br i1 %tobool2.not.i155.i, label %land.lhs.true.i156.i.if.end.i158.i_crit_edge, label %land.lhs.true.i156.i.get_max_extent_size.exit160.i_crit_edge

land.lhs.true.i156.i.get_max_extent_size.exit160.i_crit_edge: ; preds = %land.lhs.true.i156.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_max_extent_size.exit160.i

land.lhs.true.i156.i.if.end.i158.i_crit_edge:     ; preds = %land.lhs.true.i156.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i158.i

if.end.i158.i:                                    ; preds = %land.lhs.true.i156.i.if.end.i158.i_crit_edge, %if.else63.i.if.end.i158.i_crit_edge
  %59 = ptrtoint ptr %bytes18.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %bytes18.i, align 8
  br label %get_max_extent_size.exit160.i

get_max_extent_size.exit160.i:                    ; preds = %if.end.i158.i, %land.lhs.true.i156.i.get_max_extent_size.exit160.i_crit_edge
  %retval.0.i159.i = phi i64 [ %60, %if.end.i158.i ], [ %58, %land.lhs.true.i156.i.get_max_extent_size.exit160.i_crit_edge ]
  %61 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %max_extent_size, align 8
  %63 = tail call i64 @llvm.umax.i64(i64 %retval.0.i159.i, i64 %62) #14
  %64 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %max_extent_size, align 8
  br i1 %cmp, label %land.lhs.true.i, label %get_max_extent_size.exit160.i.cleanup.thread163.i_crit_edge

get_max_extent_size.exit160.i.cleanup.thread163.i_crit_edge: ; preds = %get_max_extent_size.exit160.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread163.i

land.lhs.true.i:                                  ; preds = %get_max_extent_size.exit160.i
  %call75.i = tail call ptr @rb_next(ptr noundef nonnull %node.1173.i) #14
  %cmp76.not.i = icmp eq ptr %call59.i, %call75.i
  br i1 %cmp76.not.i, label %land.lhs.true.i.cleanup.thread163.i_crit_edge, label %cleanup.i

land.lhs.true.i.cleanup.thread163.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread163.i

cleanup.thread163.i:                              ; preds = %land.lhs.true.i.cleanup.thread163.i_crit_edge, %get_max_extent_size.exit160.i.cleanup.thread163.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size.i) #14
  br label %for.inc.i

cleanup.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size.i) #14
  br label %if.end8.i

if.end81.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %tmp.i, align 8
  br label %find_free_space.exit

for.inc.i:                                        ; preds = %cleanup.thread163.i, %get_max_extent_size.exit151.i, %get_max_extent_size.exit.i.for.inc.i_crit_edge
  %call84.i = tail call ptr @rb_next(ptr noundef nonnull %node.1173.i) #14
  %tobool9.not.i = icmp eq ptr %call84.i, null
  br i1 %tobool9.not.i, label %for.inc.i.find_free_space.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.find_free_space.exit.thread_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_free_space.exit.thread

find_free_space.exit.thread:                      ; preds = %for.inc.i.find_free_space.exit.thread_crit_edge, %get_max_extent_size.exit.i.find_free_space.exit.thread_crit_edge, %if.end8.i.find_free_space.exit.thread_crit_edge, %if.else.i.find_free_space.exit.thread_crit_edge, %cond.end.find_free_space.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #14
  br label %out

find_free_space.exit:                             ; preds = %if.end81.i, %cleanup.thread.i
  %offset.addr.0 = phi i64 [ %66, %if.end81.i ], [ %54, %cleanup.thread.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #14
  %tobool8.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool8.not, label %find_free_space.exit.out_crit_edge, label %if.end

find_free_space.exit.out_crit_edge:               ; preds = %find_free_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %find_free_space.exit
  %67 = ptrtoint ptr %bitmap.i143.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bitmap.i143.i, align 8
  %tobool9.not = icmp eq ptr %68, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  tail call fastcc void @bitmap_clear_bits(ptr noundef %1, ptr noundef nonnull %entry1.0.i, i64 noundef %offset.addr.0, i64 noundef %bytes, i1 noundef zeroext true)
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0.i, i32 0, i32 7
  %69 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i111 = icmp eq i32 %70, 1
  br i1 %cmp.i111, label %if.then10.if.end13_crit_edge, label %if.then12

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %discard_bytes_saved = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 134, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %discard_bytes_saved, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef %bytes, ptr noundef %discard_bytes_saved) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then10.if.end13_crit_edge
  %71 = ptrtoint ptr %bytes18.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %bytes18.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %tobool15.not = icmp eq i64 %72, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @free_bitmap(ptr noundef %1, ptr noundef nonnull %entry1.0.i)
  br label %out

if.else:                                          ; preds = %if.end
  tail call void @rb_erase(ptr noundef nonnull %entry1.0.i, ptr noundef %free_space_offset.i) #14
  %bytes_index.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0.i, i32 0, i32 1
  %free_space_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 2
  %rb_leftmost.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i = icmp eq ptr %74, %bytes_index.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.rb_erase_cached.exit.i_crit_edge

if.else.rb_erase_cached.exit.i_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i113 = tail call ptr @rb_next(ptr noundef %bytes_index.i) #14
  %75 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i.i113, ptr %rb_leftmost.i.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.else.rb_erase_cached.exit.i_crit_edge
  tail call void @rb_erase(ptr noundef %bytes_index.i, ptr noundef %free_space_bytes.i) #14
  %free_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 5
  %76 = ptrtoint ptr %free_extents.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %free_extents.i, align 4
  %dec.i = add i32 %77, -1
  store i32 %dec.i, ptr %free_extents.i, align 4
  %78 = ptrtoint ptr %bitmap.i143.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bitmap.i143.i, align 8
  %tobool.not.i114 = icmp eq ptr %79, null
  br i1 %tobool.not.i114, label %land.lhs.true.i115, label %rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge

rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge: ; preds = %rb_erase_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit

land.lhs.true.i115:                               ; preds = %rb_erase_cached.exit.i
  %trim_state.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0.i, i32 0, i32 7
  %80 = ptrtoint ptr %trim_state.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %trim_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i19.i = icmp eq i32 %81, 1
  br i1 %cmp.i19.i, label %land.lhs.true.i115.unlink_free_space.exit_crit_edge, label %if.then.i

land.lhs.true.i115.unlink_free_space.exit_crit_edge: ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit

if.then.i:                                        ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #16
  %discardable_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 9
  %82 = ptrtoint ptr %discardable_extents.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %discardable_extents.i, align 8
  %dec2.i = add i32 %83, -1
  store i32 %dec2.i, ptr %discardable_extents.i, align 8
  %84 = ptrtoint ptr %bytes18.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %bytes18.i, align 8
  %discardable_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 10
  %86 = ptrtoint ptr %discardable_bytes.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %discardable_bytes.i, align 8
  %sub.i116 = sub i64 %87, %85
  store i64 %sub.i116, ptr %discardable_bytes.i, align 8
  br label %unlink_free_space.exit

unlink_free_space.exit:                           ; preds = %if.then.i, %land.lhs.true.i115.unlink_free_space.exit_crit_edge, %rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge
  %88 = ptrtoint ptr %bytes18.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %bytes18.i, align 8
  %free_space.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %free_space.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %free_space.i, align 8
  %sub7.i = sub i64 %91, %89
  store i64 %sub7.i, ptr %free_space.i, align 8
  %92 = ptrtoint ptr %offset41.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %offset41.i, align 8
  %sub = sub i64 %offset.addr.0, %93
  %trim_state = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0.i, i32 0, i32 7
  %94 = ptrtoint ptr %trim_state to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %trim_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp.i119 = icmp eq i32 %95, 1
  br i1 %cmp.i119, label %unlink_free_space.exit.if.end23_crit_edge, label %if.then21

unlink_free_space.exit.if.end23_crit_edge:        ; preds = %unlink_free_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then21:                                        ; preds = %unlink_free_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  %discard_bytes_saved22 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 134, i32 15
  %call.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef %discard_bytes_saved22, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef %bytes, ptr noundef %discard_bytes_saved22) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %unlink_free_space.exit.if.end23_crit_edge
  %add24 = add i64 %offset.addr.0, %bytes
  %96 = ptrtoint ptr %offset41.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %add24, ptr %offset41.i, align 8
  %97 = ptrtoint ptr %bytes18.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %bytes18.i, align 8
  %add27 = add i64 %sub, %bytes
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %add27)
  %cmp28 = icmp ult i64 %98, %add27
  br i1 %cmp28, label %do.end, label %if.end23.if.end47_crit_edge, !prof !160

if.end23.if.end47_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3089, i32 noundef 9, ptr noundef null) #14
  br label %if.end47

if.end47:                                         ; preds = %do.end, %if.end23.if.end47_crit_edge
  %99 = ptrtoint ptr %bytes18.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %bytes18.i, align 8
  %sub56 = sub i64 %100, %add27
  store i64 %sub56, ptr %bytes18.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %add27)
  %tobool58.not = icmp eq i64 %100, %add27
  br i1 %tobool58.not, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %101 = load ptr, ptr @btrfs_free_space_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %101, ptr noundef nonnull %entry1.0.i) #14
  br label %out

if.else60:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %call61 = tail call fastcc i32 @link_free_space(ptr noundef %1, ptr noundef nonnull %entry1.0.i)
  br label %out

out:                                              ; preds = %if.else60, %if.then59, %if.then16, %if.end13.out_crit_edge, %find_free_space.exit.out_crit_edge, %find_free_space.exit.thread
  %ret.0 = phi i64 [ %offset.addr.0, %if.end13.out_crit_edge ], [ %offset.addr.0, %if.then16 ], [ %offset.addr.0, %if.else60 ], [ %offset.addr.0, %if.then59 ], [ 0, %find_free_space.exit.out_crit_edge ], [ 0, %find_free_space.exit.thread ]
  %align_gap.0 = phi i64 [ 0, %if.end13.out_crit_edge ], [ 0, %if.then16 ], [ %93, %if.else60 ], [ %93, %if.then59 ], [ 0, %find_free_space.exit.out_crit_edge ], [ 0, %find_free_space.exit.thread ]
  %align_gap_len.0 = phi i64 [ 0, %if.end13.out_crit_edge ], [ 0, %if.then16 ], [ %sub, %if.else60 ], [ %sub, %if.then59 ], [ 0, %find_free_space.exit.out_crit_edge ], [ 0, %find_free_space.exit.thread ]
  %align_gap_trim_state.0 = phi i32 [ 0, %if.end13.out_crit_edge ], [ 0, %if.then16 ], [ %95, %if.else60 ], [ %95, %if.then59 ], [ 0, %find_free_space.exit.out_crit_edge ], [ 0, %find_free_space.exit.thread ]
  tail call void @btrfs_discard_update_discardable(ptr noundef %block_group) #14
  tail call void @_raw_spin_unlock(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %align_gap_len.0)
  %tobool65.not = icmp eq i64 %align_gap_len.0, 0
  br i1 %tobool65.not, label %out.if.end68_crit_edge, label %if.then66

out.if.end68_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then66:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %call67 = tail call i32 @__btrfs_add_free_space(ptr noundef %block_group, i64 noundef %align_gap.0, i64 noundef %align_gap_len.0, i32 noundef %align_gap_trim_state.0)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %out.if.end68_crit_edge
  ret i64 %ret.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bitmap_clear_bits(ptr noundef %ctl, ptr noundef %info, i64 noundef %offset, i64 noundef %bytes, i1 noundef zeroext %update_stat) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %offset1 = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset1, align 8
  %unit = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unit, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %offset)
  %cmp.not.i = icmp ugt i64 %1, %offset
  br i1 %cmp.not.i, label %cond.false.i, label %cond.end.i, !prof !160

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.52, i32 noundef 1524) #19
  unreachable

cond.end.i:                                       ; preds = %entry
  %sub.i = sub i64 %offset, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp164.i.i.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !155

if.then168.i.i.i:                                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i = trunc i64 %sub.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %3
  br label %if.else162.i.i.i176

if.else174.i.i.i:                                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub.i) #21, !srcloc !162
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %4, 1
  %extract.t6.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.else162.i.i.i176

if.else162.i.i.i176:                              ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t6.i, %if.else174.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %bytes)
  %cmp164.i.i.i175 = icmp ult i64 %bytes, 4294967296
  br i1 %cmp164.i.i.i175, label %if.then168.i.i.i179, label %if.else174.i.i.i181, !prof !155

if.then168.i.i.i179:                              ; preds = %if.else162.i.i.i176
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i177 = trunc i64 %bytes to i32
  %div172.i.i.i178 = udiv i32 %conv169.i.i.i177, %3
  br label %bytes_to_bits.exit

if.else174.i.i.i181:                              ; preds = %if.else162.i.i.i176
  call void @__sanitizer_cov_trace_pc() #16
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %bytes) #21, !srcloc !162
  %asmresult1.i.i.i.i180 = extractvalue { i64, i64 } %5, 1
  %extract.t2.i = trunc i64 %asmresult1.i.i.i.i180 to i32
  br label %bytes_to_bits.exit

bytes_to_bits.exit:                               ; preds = %if.else174.i.i.i181, %if.then168.i.i.i179
  %dividend.addr.0.i.i.off0.i182 = phi i32 [ %div172.i.i.i178, %if.then168.i.i.i179 ], [ %extract.t2.i, %if.else174.i.i.i181 ]
  %add = add i32 %dividend.addr.0.i.i.off0.i182, %dividend.addr.0.i.i.off0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %add)
  %cmp = icmp ult i32 %add, 32769
  br i1 %cmp, label %cond.end, label %cond.false, !prof !155

cond.false:                                       ; preds = %bytes_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.56, i32 noundef 1829) #20
  unreachable

cond.end:                                         ; preds = %bytes_to_bits.exit
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap, align 8
  tail call void @__bitmap_clear(ptr noundef %7, i32 noundef %dividend.addr.0.i.i.off0.i, i32 noundef %dividend.addr.0.i.i.off0.i182) #14
  %bytes5 = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %bytes5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytes5, align 8
  %sub = sub i64 %9, %bytes
  store i64 %sub, ptr %bytes5, align 8
  %max_extent_size = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 4
  %10 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %max_extent_size, align 8
  %12 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %unit, align 4
  %conv = sext i32 %13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv)
  %cmp7 = icmp ugt i64 %11, %conv
  br i1 %cmp7, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %max_extent_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  tail call fastcc void @relink_bitmap_entry(ptr noundef %ctl, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dividend.addr.0.i.i.off0.i)
  %tobool10.not = icmp eq i32 %dividend.addr.0.i.i.off0.i, 0
  br i1 %tobool10.not, label %if.end.if.end16_crit_edge, label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub11 = add i32 %dividend.addr.0.i.i.off0.i, -1
  %15 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitmap, align 8
  %div3.i = lshr i32 %sub11, 5
  %arrayidx.i = getelementptr i32, ptr %16, i32 %div3.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %sub11, 31
  %19 = shl nuw i32 1, %and.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  %spec.select = sext i1 %tobool14.not to i32
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true, %if.end.if.end16_crit_edge
  %extent_delta.0 = phi i32 [ -1, %if.end.if.end16_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add)
  %cmp17 = icmp ult i32 %add, 32768
  br i1 %cmp17, label %land.lhs.true19, label %if.end16.if.end25_crit_edge

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true19:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bitmap, align 8
  %div3.i65 = lshr i32 %add, 5
  %arrayidx.i66 = getelementptr i32, ptr %22, i32 %div3.i65
  %23 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i66, align 4
  %and.i67 = and i32 %add, 31
  %25 = lshr i32 %24, %and.i67
  %26 = and i32 %25, 1
  %spec.select64 = add nsw i32 %26, %extent_delta.0
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true19, %if.end16.if.end25_crit_edge
  %extent_delta.1 = phi i32 [ %extent_delta.0, %if.end16.if.end25_crit_edge ], [ %spec.select64, %land.lhs.true19 ]
  %bitmap_extents = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 8
  %27 = ptrtoint ptr %bitmap_extents to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bitmap_extents, align 8
  %add26 = add i32 %28, %extent_delta.1
  store i32 %add26, ptr %bitmap_extents, align 8
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 7
  %29 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i183 = icmp eq i32 %30, 1
  br i1 %cmp.i183, label %if.end25.if.end32_crit_edge, label %if.then28

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %discardable_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 9
  %31 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %discardable_extents, align 8
  %add29 = add i32 %32, %extent_delta.1
  store i32 %add29, ptr %discardable_extents, align 8
  %discardable_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 10
  %33 = ptrtoint ptr %discardable_bytes to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %discardable_bytes, align 8
  %sub31 = sub i64 %34, %bytes
  store i64 %sub31, ptr %discardable_bytes, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end25.if.end32_crit_edge
  br i1 %update_stat, label %if.then34, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 3
  %35 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %free_space, align 8
  %sub35 = sub i64 %36, %bytes
  store i64 %sub35, ptr %free_space, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_bitmap(ptr noundef %ctl, ptr noundef %bitmap_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info, i32 0, i32 3
  %0 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info, i32 0, i32 7
  %2 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %bitmap_extents = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info, i32 0, i32 8
  %4 = ptrtoint ptr %bitmap_extents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bitmap_extents, align 8
  %discardable_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 9
  %6 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %discardable_extents, align 8
  %sub = sub i32 %7, %5
  store i32 %sub, ptr %discardable_extents, align 8
  %8 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytes, align 8
  %discardable_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 10
  %10 = ptrtoint ptr %discardable_bytes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %discardable_bytes, align 8
  %sub3 = sub i64 %11, %9
  store i64 %sub3, ptr %discardable_bytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %free_space_offset.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %bitmap_info, ptr noundef %free_space_offset.i) #14
  %bytes_index.i = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info, i32 0, i32 1
  %free_space_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2
  %rb_leftmost.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i = icmp eq ptr %13, %bytes_index.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.rb_erase_cached.exit.i_crit_edge

if.end.rb_erase_cached.exit.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call ptr @rb_next(ptr noundef %bytes_index.i) #14
  %14 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %rb_leftmost.i.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.end.rb_erase_cached.exit.i_crit_edge
  tail call void @rb_erase(ptr noundef %bytes_index.i, ptr noundef %free_space_bytes.i) #14
  %free_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 5
  %15 = ptrtoint ptr %free_extents.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %free_extents.i, align 4
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %free_extents.i, align 4
  %bitmap.i = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info, i32 0, i32 5
  %17 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bitmap.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge

rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge: ; preds = %rb_erase_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit

land.lhs.true.i:                                  ; preds = %rb_erase_cached.exit.i
  %trim_state.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info, i32 0, i32 7
  %19 = ptrtoint ptr %trim_state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %trim_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i19.i = icmp eq i32 %20, 1
  br i1 %cmp.i19.i, label %land.lhs.true.i.unlink_free_space.exit_crit_edge, label %if.then.i

land.lhs.true.i.unlink_free_space.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %discardable_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 9
  %21 = ptrtoint ptr %discardable_extents.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %discardable_extents.i, align 8
  %dec2.i = add i32 %22, -1
  store i32 %dec2.i, ptr %discardable_extents.i, align 8
  %23 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bytes, align 8
  %discardable_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 10
  %25 = ptrtoint ptr %discardable_bytes.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %discardable_bytes.i, align 8
  %sub.i = sub i64 %26, %24
  store i64 %sub.i, ptr %discardable_bytes.i, align 8
  br label %unlink_free_space.exit

unlink_free_space.exit:                           ; preds = %if.then.i, %land.lhs.true.i.unlink_free_space.exit_crit_edge, %rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge
  %27 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bytes, align 8
  %free_space.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 3
  %29 = ptrtoint ptr %free_space.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %free_space.i, align 8
  %sub7.i = sub i64 %30, %28
  store i64 %sub7.i, ptr %free_space.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_bitmap_cachep to i32))
  %31 = load ptr, ptr @btrfs_free_space_bitmap_cachep, align 4
  %32 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bitmap.i, align 8
  tail call void @kmem_cache_free(ptr noundef %31, ptr noundef %33) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %34 = load ptr, ptr @btrfs_free_space_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %34, ptr noundef %bitmap_info) #14
  %total_bitmaps = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 6
  %35 = ptrtoint ptr %total_bitmaps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %total_bitmaps, align 8
  %dec = add i32 %36, -1
  store i32 %dec, ptr %total_bitmaps, align 8
  %block_group1.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 12
  %37 = ptrtoint ptr %block_group1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %block_group1.i, align 4
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %length.i, align 8
  %unit.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  %41 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %unit.i, align 4
  %mul.i = shl i32 %42, 15
  %conv.i = zext i32 %mul.i to i64
  %add.i = add i64 %40, -1
  %sub.i14 = add i64 %add.i, %conv.i
  %call.i = tail call i64 @div64_u64(i64 noundef %sub.i14, i64 noundef %conv.i) #14
  %43 = tail call i64 @llvm.umax.i64(i64 %call.i, i64 1) #14
  %44 = ptrtoint ptr %total_bitmaps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %total_bitmaps, align 8
  %conv3.i = sext i32 %45 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %conv3.i)
  %cmp4.not.i = icmp ult i64 %43, %conv3.i
  br i1 %cmp4.not.i, label %cond.false8.i, label %recalculate_thresholds.exit, !prof !160

cond.false8.i:                                    ; preds = %unlink_free_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.58, i32 noundef 696) #19
  unreachable

recalculate_thresholds.exit:                      ; preds = %unlink_free_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %40)
  %cmp10.i = icmp ult i64 %40, 1073741824
  %46 = lshr i64 %40, 14
  %mul13.i = and i64 %46, 1125899906777088
  %max_bytes.0.i = select i1 %cmp10.i, i64 65536, i64 %mul13.i
  %47 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %unit.i, align 4
  %mul16.i = mul i32 %48, %45
  %conv17.i = sext i32 %mul16.i to i64
  %sub18.i = sub nsw i64 %max_bytes.0.i, %conv17.i
  %shr.i = lshr exact i64 %max_bytes.0.i, 1
  %49 = tail call i64 @llvm.umin.i64(i64 %sub18.i, i64 %shr.i) #14
  %50 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2049638230412172401, i64 %49) #21, !srcloc !165
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2049638230412172401, i64 %49, i64 %50, i32 0) #21, !srcloc !164
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %51, 0
  %div158.i.i43.i = lshr i64 %asmresult10.i.i.i.i, 6
  %conv27.i = trunc i64 %div158.i.i43.i to i32
  %extents_thresh.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 4
  %52 = ptrtoint ptr %extents_thresh.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv27.i, ptr %extents_thresh.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_return_cluster_to_free_space(ptr noundef %block_group, ptr noundef %cluster) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %cluster) #14
  %tobool.not = icmp eq ptr %block_group, null
  %block_group1 = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 6
  %0 = ptrtoint ptr %block_group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group1, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %cluster) #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %1, %block_group
  br i1 %cmp.not, label %if.else.if.end9_crit_edge, label %if.then6

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %cluster) #14
  br label %cleanup

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %block_group.addr.0 = phi ptr [ %block_group, %if.else.if.end9_crit_edge ], [ %1, %if.then.if.end9_crit_edge ]
  tail call void @btrfs_get_block_group(ptr noundef nonnull %block_group.addr.0) #14
  tail call void @_raw_spin_unlock(ptr noundef %cluster) #14
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group.addr.0, i32 0, i32 23
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_space_ctl, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  tail call fastcc void @__btrfs_return_cluster_to_free_space(ptr noundef nonnull %block_group.addr.0, ptr noundef %cluster)
  tail call void @_raw_spin_unlock(ptr noundef %3) #14
  %4 = ptrtoint ptr %block_group.addr.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %block_group.addr.0, align 8
  %discard_ctl = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 134
  tail call void @btrfs_discard_queue_work(ptr noundef %discard_ctl, ptr noundef nonnull %block_group.addr.0) #14
  tail call void @btrfs_put_block_group(ptr noundef nonnull %block_group.addr.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_get_block_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @btrfs_alloc_from_cluster(ptr noundef readonly %block_group, ptr noundef %cluster, i64 noundef %bytes, i64 noundef %min_start, ptr nocapture noundef %max_extent_size) local_unnamed_addr #0 align 64 {
entry:
  %search_start.i = alloca i64, align 8
  %search_bytes.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  %2 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_group, align 8
  %4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 176
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.i.not = icmp eq i64 %6, 0
  br i1 %cmp.i.not, label %cond.end, label %cond.false, !prof !155

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.24, i32 noundef 3194) #20
  unreachable

cond.end:                                         ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %cluster) #14
  %max_size = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 3
  %7 = ptrtoint ptr %max_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %max_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %bytes)
  %cmp = icmp ult i64 %8, %bytes
  br i1 %cmp, label %cond.end.cleanup.sink.split_crit_edge, label %if.end

cond.end.cleanup.sink.split_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end:                                           ; preds = %cond.end
  %block_group6 = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 6
  %9 = ptrtoint ptr %block_group6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %block_group6, align 4
  %cmp7.not = icmp eq ptr %10, %block_group
  br i1 %cmp7.not, label %if.end9, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %root = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 2
  %call10 = tail call ptr @rb_first(ptr noundef %root) #14
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup.sink.split_crit_edge, label %while.cond.preheader

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

while.cond.preheader:                             ; preds = %if.end9
  %window_start = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %entry2.0 = phi ptr [ %call10, %while.cond.preheader ], [ %entry2.0.be, %while.cond.backedge ]
  %bytes14 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 3
  %11 = ptrtoint ptr %bytes14 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %bytes)
  %cmp15 = icmp ult i64 %12, %bytes
  br i1 %cmp15, label %if.then16, label %while.cond.if.end23_crit_edge

while.cond.if.end23_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then16:                                        ; preds = %while.cond
  %bitmap.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 5
  %13 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bitmap.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then16.if.end.i_crit_edge, label %land.lhs.true.i

if.then16.if.end.i_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then16
  %max_extent_size.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 4
  %15 = ptrtoint ptr %max_extent_size.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %max_extent_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool2.not.i = icmp eq i64 %16, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.get_max_extent_size.exit_crit_edge

land.lhs.true.i.get_max_extent_size.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_max_extent_size.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then16.if.end.i_crit_edge
  br label %get_max_extent_size.exit

get_max_extent_size.exit:                         ; preds = %if.end.i, %land.lhs.true.i.get_max_extent_size.exit_crit_edge
  %retval.0.i = phi i64 [ %12, %if.end.i ], [ %16, %land.lhs.true.i.get_max_extent_size.exit_crit_edge ]
  %17 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %max_extent_size, align 8
  %19 = tail call i64 @llvm.umax.i64(i64 %retval.0.i, i64 %18)
  %20 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %max_extent_size, align 8
  br label %if.end23

if.end23:                                         ; preds = %get_max_extent_size.exit, %while.cond.if.end23_crit_edge
  %21 = ptrtoint ptr %bytes14 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %bytes)
  %cmp25 = icmp ult i64 %22, %bytes
  br i1 %cmp25, label %if.end23.if.then28_crit_edge, label %lor.lhs.false

if.end23.if.then28_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end23
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 5
  %23 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bitmap, align 8
  %tobool26.not = icmp eq ptr %24, null
  br i1 %tobool26.not, label %land.lhs.true, label %if.then39

land.lhs.true:                                    ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 2
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %min_start)
  %cmp27 = icmp ult i64 %26, %min_start
  br i1 %cmp27, label %land.lhs.true.if.then28_crit_edge, label %out

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

if.then28:                                        ; preds = %land.lhs.true.if.then28_crit_edge, %if.end23.if.then28_crit_edge
  %call29 = tail call ptr @rb_next(ptr noundef nonnull %entry2.0) #14
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.then28.cleanup.sink.split_crit_edge, label %if.then28.while.cond.backedge_crit_edge

if.then28.while.cond.backedge_crit_edge:          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then28.cleanup.sink.split_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

while.cond.backedge:                              ; preds = %if.then42.while.cond.backedge_crit_edge, %if.then28.while.cond.backedge_crit_edge
  %entry2.0.be = phi ptr [ %call29, %if.then28.while.cond.backedge_crit_edge ], [ %call44, %if.then42.while.cond.backedge_crit_edge ]
  br label %while.cond

if.then39:                                        ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %window_start to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %window_start, align 8
  %29 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %free_space_ctl, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %search_start.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %search_bytes.i) #14
  %31 = ptrtoint ptr %search_start.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %28, ptr %search_start.i, align 8
  %32 = ptrtoint ptr %search_bytes.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %bytes, ptr %search_bytes.i, align 8
  %call.i = call fastcc i32 @search_bitmap(ptr noundef %30, ptr noundef nonnull %entry2.0, ptr noundef nonnull %search_start.i, ptr noundef nonnull %search_bytes.i, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i160 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i160, label %btrfs_alloc_from_bitmap.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then39
  %33 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bitmap, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %max_extent_size.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 4
  %35 = ptrtoint ptr %max_extent_size.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %max_extent_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool2.not.i.i = icmp eq i64 %36, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.btrfs_alloc_from_bitmap.exit.thread_crit_edge

land.lhs.true.i.i.btrfs_alloc_from_bitmap.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_alloc_from_bitmap.exit.thread

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge
  %37 = ptrtoint ptr %bytes14 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bytes14, align 8
  br label %btrfs_alloc_from_bitmap.exit.thread

btrfs_alloc_from_bitmap.exit.thread:              ; preds = %if.end.i.i, %land.lhs.true.i.i.btrfs_alloc_from_bitmap.exit.thread_crit_edge
  %retval.0.i.i = phi i64 [ %38, %if.end.i.i ], [ %36, %land.lhs.true.i.i.btrfs_alloc_from_bitmap.exit.thread_crit_edge ]
  %39 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %max_extent_size, align 8
  %41 = tail call i64 @llvm.umax.i64(i64 %retval.0.i.i, i64 %40) #14
  %42 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %max_extent_size, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %search_bytes.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %search_start.i) #14
  br label %if.then42

btrfs_alloc_from_bitmap.exit:                     ; preds = %if.then39
  %43 = ptrtoint ptr %search_start.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %search_start.i, align 8
  tail call fastcc void @bitmap_clear_bits(ptr noundef %30, ptr noundef nonnull %entry2.0, i64 noundef %44, i64 noundef %bytes, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %search_bytes.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %search_start.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %cmp41 = icmp eq i64 %44, 0
  br i1 %cmp41, label %btrfs_alloc_from_bitmap.exit.if.then42_crit_edge, label %out.thread174

btrfs_alloc_from_bitmap.exit.if.then42_crit_edge: ; preds = %btrfs_alloc_from_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42

if.then42:                                        ; preds = %btrfs_alloc_from_bitmap.exit.if.then42_crit_edge, %btrfs_alloc_from_bitmap.exit.thread
  %call44 = tail call ptr @rb_next(ptr noundef nonnull %entry2.0) #14
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.then42.cleanup.sink.split_crit_edge, label %if.then42.while.cond.backedge_crit_edge

if.then42.while.cond.backedge_crit_edge:          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then42.cleanup.sink.split_crit_edge:           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

out.thread174:                                    ; preds = %btrfs_alloc_from_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %window_start to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %window_start, align 8
  %add = add i64 %46, %bytes
  store i64 %add, ptr %window_start, align 8
  tail call void @_raw_spin_unlock(ptr noundef %cluster) #14
  br label %if.end61

out:                                              ; preds = %land.lhs.true
  %47 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %offset, align 8
  %add55 = add i64 %48, %bytes
  store i64 %add55, ptr %offset, align 8
  %sub = sub i64 %22, %bytes
  %49 = ptrtoint ptr %bytes14 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %sub, ptr %bytes14, align 8
  tail call void @_raw_spin_unlock(ptr noundef %cluster) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %tobool59.not = icmp eq i64 %48, 0
  br i1 %tobool59.not, label %out.cleanup_crit_edge, label %out.if.end61_crit_edge

out.if.end61_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end61:                                         ; preds = %out.if.end61_crit_edge, %out.thread174
  %ret.1178 = phi i64 [ %44, %out.thread174 ], [ %48, %out.if.end61_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 7
  %50 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp.i163 = icmp eq i32 %51, 1
  br i1 %cmp.i163, label %if.end61.if.end64_crit_edge, label %if.then63

if.end61.if.end64_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %discard_bytes_saved = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 134, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %discard_bytes_saved, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef %bytes, ptr noundef %discard_bytes_saved) #14
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end61.if.end64_crit_edge
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %free_space, align 8
  %sub65 = sub i64 %53, %bytes
  store i64 %sub65, ptr %free_space, align 8
  %54 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bitmap, align 8
  %tobool67.not = icmp eq ptr %55, null
  br i1 %tobool67.not, label %land.lhs.true68, label %if.end64.if.end72_crit_edge

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

land.lhs.true68:                                  ; preds = %if.end64
  %56 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i165 = icmp eq i32 %57, 1
  br i1 %cmp.i165, label %land.lhs.true68.if.end72_crit_edge, label %if.then70

land.lhs.true68.if.end72_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then70:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  %discardable_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 10
  %58 = ptrtoint ptr %discardable_bytes to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %discardable_bytes, align 8
  %sub71 = sub i64 %59, %bytes
  store i64 %sub71, ptr %discardable_bytes, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %land.lhs.true68.if.end72_crit_edge, %if.end64.if.end72_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %cluster) #14
  %60 = ptrtoint ptr %bytes14 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %bytes14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %cmp75 = icmp eq i64 %61, 0
  br i1 %cmp75, label %if.then76, label %if.end72.if.end91_crit_edge

if.end72.if.end91_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

if.then76:                                        ; preds = %if.end72
  tail call void @rb_erase(ptr noundef nonnull %entry2.0, ptr noundef %root) #14
  %free_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %free_extents to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %free_extents, align 4
  %dec = add i32 %63, -1
  store i32 %dec, ptr %free_extents, align 4
  %64 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bitmap, align 8
  %tobool80.not = icmp eq ptr %65, null
  br i1 %tobool80.not, label %if.else84, label %if.then81

if.then81:                                        ; preds = %if.then76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_bitmap_cachep to i32))
  %66 = load ptr, ptr @btrfs_free_space_bitmap_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %66, ptr noundef nonnull %65) #14
  %total_bitmaps = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 6
  %67 = ptrtoint ptr %total_bitmaps to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %total_bitmaps, align 8
  %dec83 = add i32 %68, -1
  store i32 %dec83, ptr %total_bitmaps, align 8
  %block_group1.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 12
  %69 = ptrtoint ptr %block_group1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %block_group1.i, align 4
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %length.i, align 8
  %unit.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 7
  %73 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %unit.i, align 4
  %mul.i = shl i32 %74, 15
  %conv.i = zext i32 %mul.i to i64
  %add.i = add i64 %72, -1
  %sub.i = add i64 %add.i, %conv.i
  %call.i166 = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i) #14
  %75 = tail call i64 @llvm.umax.i64(i64 %call.i166, i64 1) #14
  %76 = ptrtoint ptr %total_bitmaps to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %total_bitmaps, align 8
  %conv3.i = sext i32 %77 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %conv3.i)
  %cmp4.not.i = icmp ult i64 %75, %conv3.i
  br i1 %cmp4.not.i, label %cond.false8.i, label %recalculate_thresholds.exit, !prof !160

cond.false8.i:                                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.58, i32 noundef 696) #19
  unreachable

recalculate_thresholds.exit:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %72)
  %cmp10.i = icmp ult i64 %72, 1073741824
  %78 = lshr i64 %72, 14
  %mul13.i = and i64 %78, 1125899906777088
  %max_bytes.0.i = select i1 %cmp10.i, i64 65536, i64 %mul13.i
  %79 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %unit.i, align 4
  %mul16.i = mul i32 %80, %77
  %conv17.i = sext i32 %mul16.i to i64
  %sub18.i = sub nsw i64 %max_bytes.0.i, %conv17.i
  %shr.i = lshr exact i64 %max_bytes.0.i, 1
  %81 = tail call i64 @llvm.umin.i64(i64 %sub18.i, i64 %shr.i) #14
  %82 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2049638230412172401, i64 %81) #21, !srcloc !165
  %83 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2049638230412172401, i64 %81, i64 %82, i32 0) #21, !srcloc !164
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %83, 0
  %div158.i.i43.i = lshr i64 %asmresult10.i.i.i.i, 6
  %conv27.i = trunc i64 %div158.i.i43.i to i32
  %extents_thresh.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %extents_thresh.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv27.i, ptr %extents_thresh.i, align 8
  br label %if.end90

if.else84:                                        ; preds = %if.then76
  %85 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i168 = icmp eq i32 %86, 1
  br i1 %cmp.i168, label %if.else84.if.end90_crit_edge, label %if.then86

if.else84.if.end90_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then86:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #16
  %discardable_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 9
  %87 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %discardable_extents, align 8
  %dec88 = add i32 %88, -1
  store i32 %dec88, ptr %discardable_extents, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.else84.if.end90_crit_edge, %recalculate_thresholds.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %89 = load ptr, ptr @btrfs_free_space_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %89, ptr noundef nonnull %entry2.0) #14
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end72.if.end91_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cluster) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end91, %if.then42.cleanup.sink.split_crit_edge, %if.then28.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %cond.end.cleanup.sink.split_crit_edge
  %cluster.sink = phi ptr [ %1, %if.end91 ], [ %cluster, %cond.end.cleanup.sink.split_crit_edge ], [ %cluster, %if.end.cleanup.sink.split_crit_edge ], [ %cluster, %if.end9.cleanup.sink.split_crit_edge ], [ %cluster, %if.then28.cleanup.sink.split_crit_edge ], [ %cluster, %if.then42.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i64 [ %ret.1178, %if.end91 ], [ 0, %cond.end.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.end9.cleanup.sink.split_crit_edge ], [ 0, %if.then28.cleanup.sink.split_crit_edge ], [ 0, %if.then42.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %cluster.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %out.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @recalculate_thresholds(ptr nocapture noundef %ctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %block_group1 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 12
  %0 = ptrtoint ptr %block_group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group1, align 4
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %length, align 8
  %unit = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unit, align 4
  %mul = shl i32 %5, 15
  %conv = zext i32 %mul to i64
  %add = add i64 %3, -1
  %sub = add i64 %add, %conv
  %call = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef %conv) #14
  %6 = tail call i64 @llvm.umax.i64(i64 %call, i64 1)
  %total_bitmaps = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 6
  %7 = ptrtoint ptr %total_bitmaps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total_bitmaps, align 8
  %conv3 = sext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv3)
  %cmp4.not = icmp ult i64 %6, %conv3
  br i1 %cmp4.not, label %cond.false8, label %cond.end9, !prof !160

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.58, i32 noundef 696) #20
  unreachable

cond.end9:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %3)
  %cmp10 = icmp ult i64 %3, 1073741824
  %9 = lshr i64 %3, 14
  %mul13 = and i64 %9, 1125899906777088
  %max_bytes.0 = select i1 %cmp10, i64 65536, i64 %mul13
  %10 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unit, align 4
  %mul16 = mul i32 %11, %8
  %conv17 = sext i32 %mul16 to i64
  %sub18 = sub nsw i64 %max_bytes.0, %conv17
  %shr = lshr exact i64 %max_bytes.0, 1
  %12 = tail call i64 @llvm.umin.i64(i64 %sub18, i64 %shr)
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2049638230412172401, i64 %12) #21, !srcloc !165
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2049638230412172401, i64 %12, i64 %13, i32 0) #21, !srcloc !164
  %asmresult10.i.i.i = extractvalue { i64, i32 } %14, 0
  %div158.i.i43 = lshr i64 %asmresult10.i.i.i, 6
  %conv27 = trunc i64 %div158.i.i43 to i32
  %extents_thresh = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 4
  %15 = ptrtoint ptr %extents_thresh to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv27, ptr %extents_thresh, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_find_space_cluster(ptr noundef %block_group, ptr noundef %cluster, i64 noundef %offset, i64 noundef %bytes, i64 noundef %empty_size) local_unnamed_addr #0 align 64 {
entry:
  %bitmaps = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_space_ctl, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bitmaps) #14
  %4 = getelementptr inbounds %struct.list_head, ptr %bitmaps, i32 0, i32 1
  %5 = ptrtoint ptr %bitmaps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bitmaps, ptr %bitmaps, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bitmaps, ptr %4, align 4
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %7 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mount_opt, align 8
  %and = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i64 %empty_size, %bytes
  br label %if.end12

if.else:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 10
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %flags, align 8
  %and3 = and i64 %10, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  %11 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %12 to i64
  br label %if.end12

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %add7 = add i64 %empty_size, %bytes
  %shr = lshr i64 %add7, 2
  %13 = call i64 @llvm.umax.i64(i64 %shr, i64 %bytes)
  %sectorsize10 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  %14 = ptrtoint ptr %sectorsize10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sectorsize10, align 4
  %conv11 = zext i32 %15 to i64
  br label %if.end12

if.end12:                                         ; preds = %if.else6, %if.then5, %if.then
  %cont1_bytes.0 = phi i64 [ %add, %if.then ], [ %bytes, %if.then5 ], [ %13, %if.else6 ]
  %min_bytes.0 = phi i64 [ %add, %if.then ], [ %conv, %if.then5 ], [ %conv11, %if.else6 ]
  call void @_raw_spin_lock(ptr noundef %3) #14
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %free_space, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %bytes)
  %cmp13 = icmp ult i64 %17, %bytes
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @_raw_spin_lock(ptr noundef %cluster) #14
  %block_group18 = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 6
  %18 = ptrtoint ptr %block_group18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %block_group18, align 4
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %if.end21, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end21:                                         ; preds = %if.end17
  call fastcc void @trace_btrfs_find_cluster(ptr noundef %block_group, i64 noundef %offset, i64 noundef %bytes, i64 noundef %empty_size, i64 noundef %min_bytes.0)
  %add22 = add i64 %empty_size, %bytes
  %call = call fastcc i32 @setup_cluster_no_bitmap(ptr noundef %block_group, ptr noundef %cluster, ptr noundef nonnull %bitmaps, i64 noundef %offset, i64 noundef %add22, i64 noundef %cont1_bytes.0, i64 noundef %min_bytes.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = call fastcc i32 @setup_cluster_bitmap(ptr noundef %block_group, ptr noundef %cluster, ptr noundef nonnull %bitmaps, i64 noundef %offset, i64 noundef %add22, i64 noundef %cont1_bytes.0, i64 noundef %min_bytes.0)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %ret.0 = phi i32 [ %call26, %if.then24 ], [ 0, %if.end21.if.end27_crit_edge ]
  %20 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bitmaps, align 4
  %cmp35.not102 = icmp eq ptr %21, %bitmaps
  br i1 %cmp35.not102, label %if.end27.for.end_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  br label %for.body

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %if.end27.for.body_crit_edge
  %22 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %21, %if.end27.for.body_crit_edge ]
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %22, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %22, ptr %22, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %22, ptr %prev.i3.i, align 4
  %cmp35.not = icmp eq ptr %.pn, %bitmaps
  br i1 %cmp35.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %if.end27.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool43.not = icmp eq i32 %ret.0, 0
  br i1 %tobool43.not, label %if.then44, label %if.else46

if.then44:                                        ; preds = %for.end
  call void @btrfs_get_block_group(ptr noundef %block_group) #14
  %block_group_list = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 7
  %cluster_list = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 27
  %prev.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 27, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i100 = call zeroext i1 @__list_add_valid(ptr noundef %block_group_list, ptr noundef %33, ptr noundef %cluster_list) #14
  br i1 %call.i.i100, label %if.end.i.i101, label %if.then44.list_add_tail.exit_crit_edge

if.then44.list_add_tail.exit_crit_edge:           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i101:                                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %block_group_list, ptr %prev.i, align 4
  %35 = ptrtoint ptr %block_group_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cluster_list, ptr %block_group_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %block_group_list, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i101, %if.then44.list_add_tail.exit_crit_edge
  %38 = ptrtoint ptr %block_group18 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %block_group, ptr %block_group18, align 4
  br label %out

if.else46:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @trace_btrfs_failed_cluster_setup(ptr noundef %block_group)
  br label %out

out:                                              ; preds = %if.else46, %list_add_tail.exit, %if.end17.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.else46 ], [ 0, %list_add_tail.exit ], [ 0, %if.end17.out_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %cluster) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -28, %if.end12.cleanup_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bitmaps) #14
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_find_cluster(ptr noundef %block_group, i64 noundef %start, i64 noundef %bytes, i64 noundef %empty_size, i64 noundef %min_bytes) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_find_cluster, i32 0, i32 1), ptr blockaddress(@trace_btrfs_find_cluster, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !159

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !155

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !166
  %call42 = tail call i32 @__traceiter_btrfs_find_cluster(ptr noundef null, ptr noundef %block_group, i64 noundef %start, i64 noundef %bytes, i64 noundef %empty_size, i64 noundef %min_bytes) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !167
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !155

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_find_cluster, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_find_cluster, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_find_cluster.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_btrfs_find_cluster.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 1282, ptr noundef nonnull @.str.60) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
define internal fastcc i32 @setup_cluster_no_bitmap(ptr noundef %block_group, ptr noundef %cluster, ptr noundef %bitmaps, i64 noundef %offset, i64 noundef %bytes, i64 noundef %cont1_bytes, i64 noundef %min_bytes) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  %call = tail call fastcc ptr @tree_search_offset(ptr noundef %1, i64 noundef %offset, i32 noundef 0, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup76_crit_edge, label %while.cond.preheader

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup76

while.cond.preheader:                             ; preds = %entry
  %prev.i = getelementptr inbounds %struct.list_head, ptr %bitmaps, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end10.while.cond_crit_edge, %while.cond.preheader
  %entry1.0 = phi ptr [ %call11, %if.end10.while.cond_crit_edge ], [ %call, %while.cond.preheader ]
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0, i32 0, i32 5
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bitmap, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.rhs, label %land.lhs.true

lor.rhs:                                          ; preds = %while.cond
  %bytes3 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0, i32 0, i32 3
  %4 = ptrtoint ptr %bytes3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bytes3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %min_bytes)
  %cmp = icmp ult i64 %5, %min_bytes
  br i1 %cmp, label %lor.rhs.if.end10_crit_edge, label %while.end

lor.rhs.if.end10_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true:                                    ; preds = %while.cond
  %list = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0, i32 0, i32 6
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %7, %list
  br i1 %cmp.i.not, label %if.then8, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %9, ptr noundef %bitmaps) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.if.end10_crit_edge

if.then8.if.end10_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bitmaps, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end.i.i, %if.then8.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %lor.rhs.if.end10_crit_edge
  %call11 = tail call ptr @rb_next(ptr noundef nonnull %entry1.0) #14
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup76_crit_edge, label %if.end10.while.cond_crit_edge

if.end10.while.cond_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end10.cleanup76_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup76

while.end:                                        ; preds = %lor.rhs
  %call18 = tail call ptr @rb_next(ptr noundef nonnull %entry1.0) #14
  %tobool19.not148 = icmp eq ptr %call18, null
  br i1 %tobool19.not148, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.end.for.body_crit_edge
  %last.0153 = phi ptr [ %last.1, %for.inc.for.body_crit_edge ], [ %entry1.0, %while.end.for.body_crit_edge ]
  %node.0151 = phi ptr [ %call44, %for.inc.for.body_crit_edge ], [ %call18, %while.end.for.body_crit_edge ]
  %max_extent.0150 = phi i64 [ %max_extent.1, %for.inc.for.body_crit_edge ], [ %5, %while.end.for.body_crit_edge ]
  %window_free.0149 = phi i64 [ %window_free.1, %for.inc.for.body_crit_edge ], [ %5, %while.end.for.body_crit_edge ]
  %bitmap23 = getelementptr inbounds %struct.btrfs_free_space, ptr %node.0151, i32 0, i32 5
  %14 = ptrtoint ptr %bitmap23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitmap23, align 8
  %tobool24.not = icmp eq ptr %15, null
  br i1 %tobool24.not, label %if.end32, label %if.then25

if.then25:                                        ; preds = %for.body
  %list26 = getelementptr inbounds %struct.btrfs_free_space, ptr %node.0151, i32 0, i32 6
  %16 = ptrtoint ptr %list26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %list26, align 4
  %cmp.i134.not = icmp eq ptr %17, %list26
  br i1 %cmp.i134.not, label %if.then29, label %if.then25.for.inc_crit_edge

if.then25.for.inc_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then29:                                        ; preds = %if.then25
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i137 = tail call zeroext i1 @__list_add_valid(ptr noundef %list26, ptr noundef %19, ptr noundef %bitmaps) #14
  br i1 %call.i.i137, label %if.end.i.i139, label %if.then29.for.inc_crit_edge

if.then29.for.inc_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i.i139:                                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list26, ptr %prev.i, align 4
  %21 = ptrtoint ptr %list26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %bitmaps, ptr %list26, align 4
  %prev3.i.i138 = getelementptr inbounds %struct.btrfs_free_space, ptr %node.0151, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %prev3.i.i138 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i138, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list26, ptr %19, align 4
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %bytes33 = getelementptr inbounds %struct.btrfs_free_space, ptr %node.0151, i32 0, i32 3
  %24 = ptrtoint ptr %bytes33 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bytes33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %min_bytes)
  %cmp34 = icmp ult i64 %25, %min_bytes
  br i1 %cmp34, label %if.end32.for.inc_crit_edge, label %if.end36

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i64 %25, %window_free.0149
  %26 = tail call i64 @llvm.umax.i64(i64 %25, i64 %max_extent.0150)
  br label %for.inc

for.inc:                                          ; preds = %if.end36, %if.end32.for.inc_crit_edge, %if.end.i.i139, %if.then29.for.inc_crit_edge, %if.then25.for.inc_crit_edge
  %window_free.1 = phi i64 [ %window_free.0149, %if.then25.for.inc_crit_edge ], [ %window_free.0149, %if.end32.for.inc_crit_edge ], [ %add, %if.end36 ], [ %window_free.0149, %if.then29.for.inc_crit_edge ], [ %window_free.0149, %if.end.i.i139 ]
  %max_extent.1 = phi i64 [ %max_extent.0150, %if.then25.for.inc_crit_edge ], [ %max_extent.0150, %if.end32.for.inc_crit_edge ], [ %26, %if.end36 ], [ %max_extent.0150, %if.then29.for.inc_crit_edge ], [ %max_extent.0150, %if.end.i.i139 ]
  %last.1 = phi ptr [ %last.0153, %if.then25.for.inc_crit_edge ], [ %last.0153, %if.end32.for.inc_crit_edge ], [ %node.0151, %if.end36 ], [ %last.0153, %if.then29.for.inc_crit_edge ], [ %last.0153, %if.end.i.i139 ]
  %call44 = tail call ptr @rb_next(ptr noundef nonnull %node.0151) #14
  %tobool19.not = icmp eq ptr %call44, null
  br i1 %tobool19.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.end.for.end_crit_edge
  %window_free.0.lcssa = phi i64 [ %5, %while.end.for.end_crit_edge ], [ %window_free.1, %for.inc.for.end_crit_edge ]
  %max_extent.0.lcssa = phi i64 [ %5, %while.end.for.end_crit_edge ], [ %max_extent.1, %for.inc.for.end_crit_edge ]
  %last.0.lcssa = phi ptr [ %entry1.0, %while.end.for.end_crit_edge ], [ %last.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %window_free.0.lcssa, i64 %bytes)
  %cmp45 = icmp ult i64 %window_free.0.lcssa, %bytes
  call void @__sanitizer_cov_trace_cmp8(i64 %max_extent.0.lcssa, i64 %cont1_bytes)
  %cmp46 = icmp ult i64 %max_extent.0.lcssa, %cont1_bytes
  %or.cond = select i1 %cmp45, i1 true, i1 %cmp46
  br i1 %or.cond, label %for.end.cleanup76_crit_edge, label %if.end48

for.end.cleanup76_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup76

if.end48:                                         ; preds = %for.end
  %offset49 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1.0, i32 0, i32 2
  %27 = ptrtoint ptr %offset49 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %offset49, align 8
  %window_start = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 4
  %29 = ptrtoint ptr %window_start to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %window_start, align 8
  %free_space_offset = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 1
  %free_space_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 2
  %rb_leftmost.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 2, i32 1
  %root = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %if.end48
  %total_size.0 = phi i64 [ 0, %if.end48 ], [ %total_size.1, %cleanup.do.body_crit_edge ]
  %node.1 = phi ptr [ %entry1.0, %if.end48 ], [ %call55, %cleanup.do.body_crit_edge ]
  %call55 = tail call ptr @rb_next(ptr noundef %node.1) #14
  %bitmap56 = getelementptr inbounds %struct.btrfs_free_space, ptr %node.1, i32 0, i32 5
  %30 = ptrtoint ptr %bitmap56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bitmap56, align 8
  %tobool57.not = icmp eq ptr %31, null
  br i1 %tobool57.not, label %lor.lhs.false58, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false58:                                  ; preds = %do.body
  %bytes59 = getelementptr inbounds %struct.btrfs_free_space, ptr %node.1, i32 0, i32 3
  %32 = ptrtoint ptr %bytes59 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bytes59, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %min_bytes)
  %cmp60 = icmp ult i64 %33, %min_bytes
  br i1 %cmp60, label %lor.lhs.false58.cleanup_crit_edge, label %if.end62

lor.lhs.false58.cleanup_crit_edge:                ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end62:                                         ; preds = %lor.lhs.false58
  tail call void @rb_erase(ptr noundef %node.1, ptr noundef %free_space_offset) #14
  %bytes_index = getelementptr inbounds %struct.btrfs_free_space, ptr %node.1, i32 0, i32 1
  %34 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i141 = icmp eq ptr %35, %bytes_index
  br i1 %cmp.i141, label %if.then.i, label %if.end62.rb_erase_cached.exit_crit_edge

if.end62.rb_erase_cached.exit_crit_edge:          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit

if.then.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @rb_next(ptr noundef %bytes_index) #14
  %36 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit

rb_erase_cached.exit:                             ; preds = %if.then.i, %if.end62.rb_erase_cached.exit_crit_edge
  tail call void @rb_erase(ptr noundef %bytes_index, ptr noundef %free_space_bytes) #14
  %offset65 = getelementptr inbounds %struct.btrfs_free_space, ptr %node.1, i32 0, i32 2
  %37 = ptrtoint ptr %offset65 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %offset65, align 8
  %39 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %root, align 4
  %tobool.not132.i = icmp eq ptr %40, null
  br i1 %tobool.not132.i, label %rb_erase_cached.exit.cond.end_crit_edge, label %rb_erase_cached.exit.while.body.i_crit_edge

rb_erase_cached.exit.while.body.i_crit_edge:      ; preds = %rb_erase_cached.exit
  br label %while.body.i

rb_erase_cached.exit.cond.end_crit_edge:          ; preds = %rb_erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

while.body.i:                                     ; preds = %if.end104.i.while.body.i_crit_edge, %rb_erase_cached.exit.while.body.i_crit_edge
  %41 = phi ptr [ %47, %if.end104.i.while.body.i_crit_edge ], [ %40, %rb_erase_cached.exit.while.body.i_crit_edge ]
  %offset1.i = getelementptr inbounds %struct.btrfs_free_space, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %offset1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %38)
  %cmp.i142 = icmp ugt i64 %43, %38
  br i1 %cmp.i142, label %if.then.i143, label %if.else.i

if.then.i143:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %41, i32 0, i32 2
  br label %if.end104.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %38)
  %cmp3.i = icmp ult i64 %43, %38
  br i1 %cmp3.i, label %if.then4.i, label %if.else5.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %41, i32 0, i32 1
  br label %if.end104.i

if.else5.i:                                       ; preds = %if.else.i
  %bitmap49.i = getelementptr inbounds %struct.btrfs_free_space, ptr %41, i32 0, i32 5
  %44 = ptrtoint ptr %bitmap49.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bitmap49.i, align 8
  %tobool50.not.i = icmp eq ptr %45, null
  br i1 %tobool50.not.i, label %land.end58.i, label %if.end100.i

land.end58.i:                                     ; preds = %if.else5.i
  %.b125126.i = load i1, ptr @tree_insert_offset.__already_done.54, align 1
  br i1 %.b125126.i, label %land.end58.i.cond.false_crit_edge, label %if.then65.i, !prof !155

land.end58.i.cond.false_crit_edge:                ; preds = %land.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false

if.then65.i:                                      ; preds = %land.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tree_insert_offset.__already_done.54, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1586, i32 noundef 9, ptr noundef null) #14
  br label %cond.false

if.end100.i:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left101.i = getelementptr inbounds %struct.rb_node, ptr %41, i32 0, i32 2
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.end100.i, %if.then4.i, %if.then.i143
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i143 ], [ %rb_right.i, %if.then4.i ], [ %rb_left101.i, %if.end100.i ]
  %46 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end104.i.while.body.i_crit_edge

if.end104.i.while.body.i_crit_edge:               ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i = ptrtoint ptr %41 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then65.i, %land.end58.i.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.62, i32 noundef 3454) #20
  unreachable

cond.end:                                         ; preds = %while.cond.while.end_crit_edge.i, %rb_erase_cached.exit.cond.end_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %rb_erase_cached.exit.cond.end_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %root, %rb_erase_cached.exit.cond.end_crit_edge ]
  %48 = ptrtoint ptr %node.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %parent.0.lcssa.i, ptr %node.1, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.1, i32 0, i32 1
  %49 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.1, i32 0, i32 2
  %50 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %rb_left.i.i, align 4
  %51 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %node.1, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.1, ptr noundef %root) #14
  %52 = ptrtoint ptr %bytes59 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %bytes59, align 8
  %add69 = add i64 %53, %total_size.0
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %lor.lhs.false58.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %total_size.1 = phi i64 [ %add69, %cond.end ], [ %total_size.0, %lor.lhs.false58.cleanup_crit_edge ], [ %total_size.0, %do.body.cleanup_crit_edge ]
  %tobool74.not = icmp eq ptr %call55, null
  %cmp75.not = icmp eq ptr %node.1, %last.0.lcssa
  %or.cond133 = select i1 %tobool74.not, i1 true, i1 %cmp75.not
  br i1 %or.cond133, label %do.end, label %cleanup.do.body_crit_edge

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  %max_size = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 3
  %54 = ptrtoint ptr %max_size to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %max_extent.0.lcssa, ptr %max_size, align 8
  tail call fastcc void @trace_btrfs_setup_cluster(ptr noundef %block_group, ptr noundef %cluster, i64 noundef %total_size.1, i32 noundef 0)
  br label %cleanup76

cleanup76:                                        ; preds = %do.end, %for.end.cleanup76_crit_edge, %if.end10.cleanup76_crit_edge, %entry.cleanup76_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -28, %entry.cleanup76_crit_edge ], [ -28, %for.end.cleanup76_crit_edge ], [ -28, %if.end10.cleanup76_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_cluster_bitmap(ptr noundef %block_group, ptr noundef %cluster, ptr noundef %bitmaps, i64 noundef %offset, i64 noundef %bytes, i64 noundef %cont1_bytes, i64 noundef %min_bytes) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  %unit.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unit.i, align 4
  %mul.i = shl i32 %3, 15
  %conv.i = zext i32 %mul.i to i64
  %start.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start.i, align 8
  %sub.i = sub i64 %offset, %5
  %call.i = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i) #14
  %mul1.i = mul i64 %call.i, %conv.i
  %6 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start.i, align 8
  %add.i = add i64 %mul1.i, %7
  %total_bitmaps = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %total_bitmaps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_bitmaps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %bitmaps, align 4
  %cmp.i.not = icmp eq ptr %11, %bitmaps
  %add.ptr = getelementptr i8, ptr %11, i32 -52
  %tobool5.not = icmp eq ptr %add.ptr, null
  %or.cond = or i1 %cmp.i.not, %tobool5.not
  br i1 %or.cond, label %if.end.if.then8_crit_edge, label %lor.lhs.false

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %offset6 = getelementptr i8, ptr %11, i32 -28
  %12 = ptrtoint ptr %offset6 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add.i)
  %cmp7.not = icmp eq i64 %13, %add.i
  br i1 %cmp7.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %free_space_offset.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %free_space_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %n.0252.i = load ptr, ptr %free_space_offset.i, align 4
  %tobool.not253.i = icmp eq ptr %n.0252.i, null
  br i1 %tobool.not253.i, label %if.then8.if.end16_crit_edge, label %if.then8.while.body.i_crit_edge

if.then8.while.body.i_crit_edge:                  ; preds = %if.then8
  br label %while.body.i

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %if.then8.while.body.i_crit_edge
  %n.0254.i = phi ptr [ %n.0.i, %if.end7.i.while.body.i_crit_edge ], [ %n.0252.i, %if.then8.while.body.i_crit_edge ]
  %offset2.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 2
  %15 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %add.i)
  %cmp.i58 = icmp ugt i64 %16, %add.i
  br i1 %cmp.i58, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 2
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %add.i)
  %cmp4.i = icmp ult i64 %16, %add.i
  br i1 %cmp4.i, label %if.then5.i, label %while.end.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %17 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end7.i.if.end16_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end7.i.if.end16_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

while.end.i:                                      ; preds = %if.else.i
  %bitmap54.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 5
  %18 = ptrtoint ptr %bitmap54.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bitmap54.i, align 8
  %tobool55.not.i = icmp eq ptr %19, null
  br i1 %tobool55.not.i, label %if.end15.i, label %while.end.i.land.lhs.true_crit_edge

while.end.i.land.lhs.true_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end15.i:                                       ; preds = %while.end.i
  %call.i59 = tail call ptr @rb_next(ptr noundef nonnull %n.0254.i) #14
  %tobool16.not.i = icmp eq ptr %call.i59, null
  br i1 %tobool16.not.i, label %if.end15.i.if.end16_crit_edge, label %if.end18.i

if.end15.i.if.end16_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end18.i:                                       ; preds = %if.end15.i
  %offset22.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i59, i32 0, i32 2
  %20 = ptrtoint ptr %offset22.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %offset22.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %add.i)
  %cmp23.not.i = icmp eq i64 %21, %add.i
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end18.i.if.end16_crit_edge

if.end18.i.if.end16_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end25.i:                                       ; preds = %if.end18.i
  %bitmap26.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i59, i32 0, i32 5
  %22 = ptrtoint ptr %bitmap26.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bitmap26.i, align 8
  %tobool27.not.i = icmp eq ptr %23, null
  br i1 %tobool27.not.i, label %do.end.i, label %if.end25.i.land.lhs.true_crit_edge, !prof !160

if.end25.i.land.lhs.true_crit_edge:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

do.end.i:                                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1690, i32 noundef 9, ptr noundef null) #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end.i, %if.end25.i.land.lhs.true_crit_edge, %while.end.i.land.lhs.true_crit_edge
  %retval.0.i = phi ptr [ %n.0254.i, %while.end.i.land.lhs.true_crit_edge ], [ %call.i59, %do.end.i ], [ %call.i59, %if.end25.i.land.lhs.true_crit_edge ]
  %list = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 6
  %24 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %list, align 4
  %cmp.i60.not = icmp eq ptr %25, %list
  br i1 %cmp.i60.not, label %if.then13, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  %26 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bitmaps, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %bitmaps, ptr noundef %27) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.if.end16_crit_edge

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %bitmaps, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %bitmaps to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list, ptr %bitmaps, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end.i.i, %if.then13.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end18.i.if.end16_crit_edge, %if.end15.i.if.end16_crit_edge, %if.end7.i.if.end16_crit_edge, %if.then8.if.end16_crit_edge, %lor.lhs.false.if.end16_crit_edge
  %32 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn91 = load ptr, ptr %bitmaps, align 4
  %cmp22.not92 = icmp eq ptr %.pn91, %bitmaps
  br i1 %cmp22.not92, label %if.end16.cleanup_crit_edge, label %for.body.lr.ph

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %bytes)
  %cmp164.i.i.i251.i = icmp ult i64 %bytes, 4294967296
  %conv169.i.i.i253.i = trunc i64 %bytes to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %min_bytes)
  %cmp164.i.i.i365.i = icmp ult i64 %min_bytes, 4294967296
  %conv169.i.i.i367.i = trunc i64 %min_bytes to i32
  %max_size.i = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn93 = phi ptr [ %.pn91, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %bytes23 = getelementptr i8, ptr %.pn93, i32 -20
  %33 = ptrtoint ptr %bytes23 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bytes23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %bytes)
  %cmp24 = icmp ult i64 %34, %bytes
  br i1 %cmp24, label %for.body.for.inc_crit_edge, label %if.end26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %35 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %free_space_ctl, align 4
  %offset2.i62 = getelementptr i8, ptr %.pn93, i32 -28
  %37 = ptrtoint ptr %offset2.i62 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %offset2.i62, align 8
  %unit.i63 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %36, i32 0, i32 7
  %39 = ptrtoint ptr %unit.i63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %unit.i63, align 4
  %41 = tail call i64 @llvm.usub.sat.i64(i64 %offset, i64 %38) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %41)
  %cmp164.i.i.i.i = icmp ult i64 %41, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !155

if.then168.i.i.i.i:                               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i.i = trunc i64 %41 to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %40
  br label %if.else162.i.i.i252.i

if.else174.i.i.i.i:                               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %41) #21, !srcloc !162
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %42, 1
  %extract.t6.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %if.else162.i.i.i252.i

if.else162.i.i.i252.i:                            ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.off0.i.i = phi i32 [ %div172.i.i.i.i, %if.then168.i.i.i.i ], [ %extract.t6.i.i, %if.else174.i.i.i.i ]
  br i1 %cmp164.i.i.i251.i, label %if.then168.i.i.i255.i, label %if.else174.i.i.i257.i, !prof !155

if.then168.i.i.i255.i:                            ; preds = %if.else162.i.i.i252.i
  call void @__sanitizer_cov_trace_pc() #16
  %div172.i.i.i254.i = udiv i32 %conv169.i.i.i253.i, %40
  br label %if.else162.i.i.i366.i

if.else174.i.i.i257.i:                            ; preds = %if.else162.i.i.i252.i
  call void @__sanitizer_cov_trace_pc() #16
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %bytes) #21, !srcloc !162
  %asmresult1.i.i.i.i256.i = extractvalue { i64, i64 } %43, 1
  %extract.t2.i.i = trunc i64 %asmresult1.i.i.i.i256.i to i32
  br label %if.else162.i.i.i366.i

if.else162.i.i.i366.i:                            ; preds = %if.else174.i.i.i257.i, %if.then168.i.i.i255.i
  %dividend.addr.0.i.i.off0.i258.i = phi i32 [ %div172.i.i.i254.i, %if.then168.i.i.i255.i ], [ %extract.t2.i.i, %if.else174.i.i.i257.i ]
  br i1 %cmp164.i.i.i365.i, label %if.then168.i.i.i369.i, label %if.else174.i.i.i372.i, !prof !155

if.then168.i.i.i369.i:                            ; preds = %if.else162.i.i.i366.i
  call void @__sanitizer_cov_trace_pc() #16
  %div172.i.i.i368.i = udiv i32 %conv169.i.i.i367.i, %40
  br label %bytes_to_bits.exit374.i

if.else174.i.i.i372.i:                            ; preds = %if.else162.i.i.i366.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %min_bytes) #21, !srcloc !162
  %asmresult1.i.i.i.i370.i = extractvalue { i64, i64 } %44, 1
  %extract.t2.i371.i = trunc i64 %asmresult1.i.i.i.i370.i to i32
  br label %bytes_to_bits.exit374.i

bytes_to_bits.exit374.i:                          ; preds = %if.else174.i.i.i372.i, %if.then168.i.i.i369.i
  %dividend.addr.0.i.i.off0.i373.i = phi i32 [ %div172.i.i.i368.i, %if.then168.i.i.i369.i ], [ %extract.t2.i371.i, %if.else174.i.i.i372.i ]
  %max_extent_size.i = getelementptr i8, ptr %.pn93, i32 -12
  %45 = ptrtoint ptr %max_extent_size.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %max_extent_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool.not.i64 = icmp ne i64 %46, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %cont1_bytes)
  %cmp9.i = icmp ult i64 %46, %cont1_bytes
  %or.cond.i = and i1 %tobool.not.i64, %cmp9.i
  br i1 %or.cond.i, label %bytes_to_bits.exit374.i.for.inc_crit_edge, label %again.preheader.i

bytes_to_bits.exit374.i.for.inc_crit_edge:        ; preds = %bytes_to_bits.exit374.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

again.preheader.i:                                ; preds = %bytes_to_bits.exit374.i
  %bitmap.i = getelementptr i8, ptr %.pn93, i32 -4
  %47 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bitmap.i, align 8
  %call10402.i = tail call i32 @_find_next_bit_be(ptr noundef %48, i32 noundef 32768, i32 noundef %dividend.addr.0.i.i.off0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call10402.i)
  %cmp11398403.i = icmp ult i32 %call10402.i, 32768
  br i1 %cmp11398403.i, label %again.preheader.i.for.body.lr.ph.i_crit_edge, label %again.preheader.i.if.then29.i_crit_edge

again.preheader.i.if.then29.i_crit_edge:          ; preds = %again.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29.i

again.preheader.i.for.body.lr.ph.i_crit_edge:     ; preds = %again.preheader.i
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then55.i.for.body.lr.ph.i_crit_edge, %again.preheader.i.for.body.lr.ph.i_crit_edge
  %call10407.i = phi i32 [ %call10.i, %if.then55.i.for.body.lr.ph.i_crit_edge ], [ %call10402.i, %again.preheader.i.for.body.lr.ph.i_crit_edge ]
  %total_found.0406.i = phi i32 [ %add37.i, %if.then55.i.for.body.lr.ph.i_crit_edge ], [ 0, %again.preheader.i.for.body.lr.ph.i_crit_edge ]
  %start.0405.i = phi i32 [ %start.1.i, %if.then55.i.for.body.lr.ph.i_crit_edge ], [ 0, %again.preheader.i.for.body.lr.ph.i_crit_edge ]
  %max_bits.0404.i = phi i32 [ %51, %if.then55.i.for.body.lr.ph.i_crit_edge ], [ 0, %again.preheader.i.for.body.lr.ph.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %if.end20.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %max_bits.1400.i = phi i32 [ %max_bits.0404.i, %for.body.lr.ph.i ], [ %51, %if.end20.i.for.body.i_crit_edge ]
  %i.1399.i = phi i32 [ %call10407.i, %for.body.lr.ph.i ], [ %call27.i, %if.end20.i.for.body.i_crit_edge ]
  %49 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bitmap.i, align 8
  %call13.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %50, i32 noundef 32768, i32 noundef %i.1399.i) #14
  %sub.i65 = sub i32 %call13.i, %i.1399.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i65, i32 %dividend.addr.0.i.i.off0.i373.i)
  %cmp14.not.i = icmp ult i32 %sub.i65, %dividend.addr.0.i.i.off0.i373.i
  %51 = tail call i32 @llvm.umax.i32(i32 %sub.i65, i32 %max_bits.1400.i) #14
  br i1 %cmp14.not.i, label %if.end20.i, label %for.end.i

if.end20.i:                                       ; preds = %for.body.i
  %52 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bitmap.i, align 8
  %add.i66 = add i32 %call13.i, 1
  %call27.i = tail call i32 @_find_next_bit_be(ptr noundef %53, i32 noundef 32768, i32 noundef %add.i66) #14
  %cmp11.i = icmp ult i32 %call27.i, 32768
  br i1 %cmp11.i, label %if.end20.i.for.body.i_crit_edge, label %if.end20.i.if.then29.i_crit_edge

if.end20.i.if.then29.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29.i

if.end20.i.for.body.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %i.1399.i)
  %tobool28.not.i = icmp eq i32 %call13.i, %i.1399.i
  br i1 %tobool28.not.i, label %for.end.i.if.then29.i_crit_edge, label %if.end33.i

for.end.i.if.then29.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29.i

if.then29.i:                                      ; preds = %if.then55.i.if.then29.i_crit_edge, %for.end.i.if.then29.i_crit_edge, %if.end20.i.if.then29.i_crit_edge, %again.preheader.i.if.then29.i_crit_edge
  %max_bits.3390.i = phi i32 [ 0, %again.preheader.i.if.then29.i_crit_edge ], [ %51, %if.end20.i.if.then29.i_crit_edge ], [ %51, %for.end.i.if.then29.i_crit_edge ], [ %51, %if.then55.i.if.then29.i_crit_edge ]
  %conv.i67 = zext i32 %max_bits.3390.i to i64
  %54 = ptrtoint ptr %unit.i63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %unit.i63, align 4
  %conv31.i = sext i32 %55 to i64
  %mul.i68 = mul nsw i64 %conv31.i, %conv.i67
  %56 = ptrtoint ptr %max_extent_size.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %mul.i68, ptr %max_extent_size.i, align 8
  br label %for.inc

if.end33.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_found.0406.i)
  %tobool34.not.i = icmp eq i32 %total_found.0406.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end33.i.if.end36.i_crit_edge

if.end33.i.if.end36.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %max_size.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %max_size.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end36.i_crit_edge
  %start.1.i = phi i32 [ %start.0405.i, %if.end33.i.if.end36.i_crit_edge ], [ %i.1399.i, %if.then35.i ]
  %add37.i = add i32 %sub.i65, %total_found.0406.i
  %58 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %max_size.i, align 8
  %60 = ptrtoint ptr %unit.i63 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %unit.i63, align 4
  %mul40.i = mul i32 %61, %sub.i65
  %conv41.i = zext i32 %mul40.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %conv41.i)
  %cmp42.i = icmp ult i64 %59, %conv41.i
  br i1 %cmp42.i, label %if.then44.i, label %if.end36.i.if.end49.i_crit_edge

if.end36.i.if.end49.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.i

if.then44.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %max_size.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv41.i, ptr %max_size.i, align 8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i, %if.end36.i.if.end49.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add37.i, i32 %dividend.addr.0.i.i.off0.i258.i)
  %cmp50.i = icmp ult i32 %add37.i, %dividend.addr.0.i.i.off0.i258.i
  br i1 %cmp50.i, label %if.end49.i.if.then55.i_crit_edge, label %lor.lhs.false.i

if.end49.i.if.then55.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55.i

lor.lhs.false.i:                                  ; preds = %if.end49.i
  %63 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %max_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %cont1_bytes)
  %cmp53.i = icmp ult i64 %64, %cont1_bytes
  br i1 %cmp53.i, label %lor.lhs.false.i.if.then55.i_crit_edge, label %if.end57.i

lor.lhs.false.i.if.then55.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55.i

if.then55.i:                                      ; preds = %lor.lhs.false.i.if.then55.i_crit_edge, %if.end49.i.if.then55.i_crit_edge
  %add56.i = add i32 %call13.i, 1
  %65 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bitmap.i, align 8
  %call10.i = tail call i32 @_find_next_bit_be(ptr noundef %66, i32 noundef 32768, i32 noundef %add56.i) #14
  %cmp11398.i = icmp ult i32 %call10.i, 32768
  br i1 %cmp11398.i, label %if.then55.i.for.body.lr.ph.i_crit_edge, label %if.then55.i.if.then29.i_crit_edge

if.then55.i.if.then29.i_crit_edge:                ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29.i

if.then55.i.for.body.lr.ph.i_crit_edge:           ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.lr.ph.i

if.end57.i:                                       ; preds = %lor.lhs.false.i
  %offset2.i62.le = getelementptr i8, ptr %.pn93, i32 -28
  %entry1.1.le = getelementptr i8, ptr %.pn93, i32 -52
  %67 = ptrtoint ptr %unit.i63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %unit.i63, align 4
  %mul59.i = mul i32 %68, %start.1.i
  %conv60.i = zext i32 %mul59.i to i64
  %69 = ptrtoint ptr %offset2.i62.le to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %offset2.i62.le, align 8
  %add62.i = add i64 %70, %conv60.i
  %window_start.i = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 4
  %71 = ptrtoint ptr %window_start.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %add62.i, ptr %window_start.i, align 8
  %free_space_offset.i69 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %36, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %entry1.1.le, ptr noundef %free_space_offset.i69) #14
  %bytes_index.i = getelementptr i8, ptr %.pn93, i32 -40
  %free_space_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %36, i32 0, i32 2
  %rb_leftmost.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %36, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i = icmp eq ptr %73, %bytes_index.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end57.i.rb_erase_cached.exit.i_crit_edge

if.end57.i.rb_erase_cached.exit.i_crit_edge:      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i70 = tail call ptr @rb_next(ptr noundef %bytes_index.i) #14
  %74 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i70, ptr %rb_leftmost.i.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.end57.i.rb_erase_cached.exit.i_crit_edge
  tail call void @rb_erase(ptr noundef %bytes_index.i, ptr noundef %free_space_bytes.i) #14
  %75 = ptrtoint ptr %bytes_index.i to i32
  %76 = ptrtoint ptr %bytes_index.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %bytes_index.i, align 4
  %root.i = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 2
  %77 = ptrtoint ptr %offset2.i62.le to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %offset2.i62.le, align 8
  %79 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %root.i, align 4
  %tobool.not132.i.i = icmp eq ptr %80, null
  br i1 %tobool.not132.i.i, label %rb_erase_cached.exit.i.btrfs_bitmap_cluster.exit_crit_edge, label %rb_erase_cached.exit.i.while.body.i.i_crit_edge

rb_erase_cached.exit.i.while.body.i.i_crit_edge:  ; preds = %rb_erase_cached.exit.i
  br label %while.body.i.i

rb_erase_cached.exit.i.btrfs_bitmap_cluster.exit_crit_edge: ; preds = %rb_erase_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_bitmap_cluster.exit

while.body.i.i:                                   ; preds = %if.end104.i.i.while.body.i.i_crit_edge, %rb_erase_cached.exit.i.while.body.i.i_crit_edge
  %81 = phi ptr [ %87, %if.end104.i.i.while.body.i.i_crit_edge ], [ %80, %rb_erase_cached.exit.i.while.body.i.i_crit_edge ]
  %offset1.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %offset1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %83, i64 %78)
  %cmp.i375.i = icmp ugt i64 %83, %78
  br i1 %cmp.i375.i, label %if.then.i376.i, label %if.else.i.i

if.then.i376.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %81, i32 0, i32 2
  br label %if.end104.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %83, i64 %78)
  %cmp3.i.i = icmp ult i64 %83, %78
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else5.i.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %81, i32 0, i32 1
  br label %if.end104.i.i

if.else5.i.i:                                     ; preds = %if.else.i.i
  %bitmap49.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %81, i32 0, i32 5
  %84 = ptrtoint ptr %bitmap49.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bitmap49.i.i, align 8
  %tobool50.not.i.i = icmp eq ptr %85, null
  br i1 %tobool50.not.i.i, label %if.end46.i.i, label %land.end.i.i

land.end.i.i:                                     ; preds = %if.else5.i.i
  %.b127.i.i = load i1, ptr @tree_insert_offset.__already_done, align 1
  br i1 %.b127.i.i, label %land.end.i.i.cond.false74.i_crit_edge, label %if.then16.i.i, !prof !155

land.end.i.i.cond.false74.i_crit_edge:            ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false74.i

if.then16.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tree_insert_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1580, i32 noundef 9, ptr noundef null) #14
  br label %cond.false74.i

if.end46.i.i:                                     ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right47.i.i = getelementptr inbounds %struct.rb_node, ptr %81, i32 0, i32 1
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %if.end46.i.i, %if.then4.i.i, %if.then.i376.i
  %p.1.i.i = phi ptr [ %rb_left.i.i, %if.then.i376.i ], [ %rb_right.i.i, %if.then4.i.i ], [ %rb_right47.i.i, %if.end46.i.i ]
  %86 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %p.1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %if.end104.i.i.while.body.i.i_crit_edge

if.end104.i.i.while.body.i.i_crit_edge:           ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le.i.i = ptrtoint ptr %81 to i32
  br label %btrfs_bitmap_cluster.exit

cond.false74.i:                                   ; preds = %if.then16.i.i, %land.end.i.i.cond.false74.i_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.62, i32 noundef 3362) #19
  unreachable

btrfs_bitmap_cluster.exit:                        ; preds = %while.cond.while.end_crit_edge.i.i, %rb_erase_cached.exit.i.btrfs_bitmap_cluster.exit_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %rb_erase_cached.exit.i.btrfs_bitmap_cluster.exit_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %root.i, %rb_erase_cached.exit.i.btrfs_bitmap_cluster.exit_crit_edge ]
  %88 = ptrtoint ptr %entry1.1.le to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %parent.0.lcssa.i.i, ptr %entry1.1.le, align 4
  %rb_right.i.i.i = getelementptr i8, ptr %.pn93, i32 -48
  %89 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr i8, ptr %.pn93, i32 -44
  %90 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %91 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %entry1.1.le, ptr %p.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %entry1.1.le, ptr noundef %root.i) #14
  %92 = ptrtoint ptr %unit.i63 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %unit.i63, align 4
  %mul77.i = mul i32 %93, %add37.i
  %conv78.i = zext i32 %mul77.i to i64
  tail call fastcc void @trace_btrfs_setup_cluster(ptr noundef %block_group, ptr noundef %cluster, i64 noundef %conv78.i, i32 noundef 1) #14
  br label %cleanup

for.inc:                                          ; preds = %if.then29.i, %bytes_to_bits.exit374.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %94 = ptrtoint ptr %.pn93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pn = load ptr, ptr %.pn93, align 4
  %cmp22.not = icmp eq ptr %.pn, %bitmaps
  br i1 %cmp22.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %btrfs_bitmap_cluster.exit, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ 0, %btrfs_bitmap_cluster.exit ], [ -28, %if.end16.cleanup_crit_edge ], [ -28, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_failed_cluster_setup(ptr noundef %block_group) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_failed_cluster_setup, i32 0, i32 1), ptr blockaddress(@trace_btrfs_failed_cluster_setup, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !159

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !155

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !170
  %call42 = tail call i32 @__traceiter_btrfs_failed_cluster_setup(ptr noundef null, ptr noundef %block_group) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !171
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !155

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_failed_cluster_setup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_failed_cluster_setup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_failed_cluster_setup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_btrfs_failed_cluster_setup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 1299, ptr noundef nonnull @.str.60) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
define dso_local void @btrfs_init_free_cluster(ptr noundef %cluster) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %cluster, ptr noundef nonnull @.str.25, ptr noundef nonnull @btrfs_init_free_cluster.__key, i16 noundef signext 3) #14
  %refill_lock = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %refill_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @btrfs_init_free_cluster.__key.26, i16 noundef signext 3) #14
  %root = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 2
  %0 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %root, align 8
  %max_size = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 3
  %1 = ptrtoint ptr %max_size to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %max_size, align 8
  %fragmented = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 5
  %2 = ptrtoint ptr %fragmented to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fragmented, align 8
  %block_group_list = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 7
  %3 = ptrtoint ptr %block_group_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %block_group_list, ptr %block_group_list, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %block_group_list, ptr %prev.i, align 4
  %block_group = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster, i32 0, i32 6
  %5 = ptrtoint ptr %block_group to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %block_group, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_trim_block_group(ptr noundef %block_group, ptr nocapture noundef %trimmed, i64 noundef %start, i64 noundef %end, i64 noundef %minlen) local_unnamed_addr #0 align 64 {
entry:
  %rem = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem) #14
  %2 = ptrtoint ptr %rem to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %rem, align 8
  %3 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %block_group, align 8
  %5 = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 176
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.i.not = icmp eq i64 %7, 0
  br i1 %cmp.i.not, label %cond.end, label %cond.false, !prof !155

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.24, i32 noundef 3986) #20
  unreachable

cond.end:                                         ; preds = %entry
  %8 = ptrtoint ptr %trimmed to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %trimmed, align 8
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %removed = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 17
  %9 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %removed, align 8
  %10 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  tail call void @btrfs_freeze_block_group(ptr noundef %block_group) #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %call6 = tail call fastcc i32 @trim_no_bitmap(ptr noundef %block_group, ptr noundef %trimmed, i64 noundef %start, i64 noundef %end, i64 noundef %minlen, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @trim_bitmaps(ptr noundef %block_group, ptr noundef %trimmed, i64 noundef %start, i64 noundef %end, i64 noundef %minlen, i64 noundef 0, i1 noundef zeroext false)
  %unit = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unit, align 4
  %mul = shl i32 %12, 15
  %conv = zext i32 %mul to i64
  %call11 = call i64 @div64_u64_rem(i64 noundef %end, i64 noundef %conv, ptr noundef nonnull %rem) #14
  %13 = ptrtoint ptr %rem to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rem, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool12.not = icmp eq i64 %14, 0
  br i1 %tobool12.not, label %if.end9.out_crit_edge, label %if.then13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %unit, align 4
  %mul.i = shl i32 %16, 15
  %conv.i = zext i32 %mul.i to i64
  %start.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start.i, align 8
  %sub.i = sub i64 %end, %18
  %call.i = call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i) #14
  %mul1.i = mul i64 %call.i, %conv.i
  %19 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start.i, align 8
  %add.i = add i64 %mul1.i, %20
  call fastcc void @reset_trimming_bitmap(ptr noundef %1, i64 noundef %add.i)
  br label %out

out:                                              ; preds = %if.then13, %if.end9.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.out_crit_edge ], [ %call10, %if.then13 ], [ %call10, %if.end9.out_crit_edge ]
  call void @btrfs_unfreeze_block_group(ptr noundef %block_group) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_freeze_block_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trim_no_bitmap(ptr noundef %block_group, ptr nocapture noundef %total_trimmed, i64 noundef %start, i64 noundef %end, i64 noundef %minlen, i1 noundef zeroext %async) unnamed_addr #0 align 64 {
entry:
  %trim_entry = alloca %struct.btrfs_trim_range, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free_space_ctl, align 4
  %max_discard_size3 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 134, i32 9
  %4 = ptrtoint ptr %max_discard_size3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load volatile i64, ptr %max_discard_size3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %start, i64 %end)
  %cmp244 = icmp ult i64 %start, %end
  br i1 %cmp244, label %while.body.lr.ph, label %entry.cleanup84_crit_edge

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup84

while.body.lr.ph:                                 ; preds = %entry
  %6 = getelementptr inbounds %struct.btrfs_trim_range, ptr %trim_entry, i32 0, i32 1
  %7 = getelementptr inbounds %struct.btrfs_trim_range, ptr %trim_entry, i32 0, i32 2
  %8 = getelementptr inbounds %struct.btrfs_trim_range, ptr %trim_entry, i32 0, i32 2, i32 1
  %cache_writeout_mutex = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 13
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 3
  %free_space_offset.i169 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 1
  %free_space_bytes.i171 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 2
  %rb_leftmost.i.i172 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 2, i32 1
  %free_extents.i176 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 5
  %discardable_extents.i184 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 9
  %discardable_bytes.i187 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 10
  %discard_cursor66219 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 34
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool31.not = icmp eq i64 %5, 0
  %add = add i64 %5, 32768
  %trimming_ranges = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %3, i32 0, i32 14, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %start.addr.0245 = phi i64 [ %start, %while.body.lr.ph ], [ %add65212, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %trim_entry) #14
  %9 = call ptr @memset(ptr %trim_entry, i32 255, i32 24)
  call void @mutex_lock_nested(ptr noundef %cache_writeout_mutex, i32 noundef 0) #14
  call void @_raw_spin_lock(ptr noundef %3) #14
  %10 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %free_space, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %minlen)
  %cmp4 = icmp ult i64 %11, %minlen
  br i1 %cmp4, label %while.body.out_unlock_crit_edge, label %if.end

while.body.out_unlock_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end:                                           ; preds = %while.body
  %call = call fastcc ptr @tree_search_offset(ptr noundef %3, i64 noundef %start.addr.0245, i32 noundef 0, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.out_unlock_crit_edge, label %if.end.while.cond7_crit_edge

if.end.while.cond7_crit_edge:                     ; preds = %if.end
  br label %while.cond7

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

while.cond7:                                      ; preds = %while.body11.while.cond7_crit_edge, %if.end.while.cond7_crit_edge
  %entry2.0 = phi ptr [ %call12, %while.body11.while.cond7_crit_edge ], [ %call, %if.end.while.cond7_crit_edge ]
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 5
  %12 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bitmap, align 8
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %lor.rhs, label %while.cond7.while.body11_crit_edge

while.cond7.while.body11_crit_edge:               ; preds = %while.cond7
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body11

lor.rhs:                                          ; preds = %while.cond7
  br i1 %async, label %land.rhs, label %while.end.thread

land.rhs:                                         ; preds = %lor.rhs
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 7
  %14 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  br i1 %cmp.i, label %land.rhs.while.body11_crit_edge, label %while.end

land.rhs.while.body11_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body11

while.body11:                                     ; preds = %land.rhs.while.body11_crit_edge, %while.cond7.while.body11_crit_edge
  %call12 = call ptr @rb_next(ptr noundef nonnull %entry2.0) #14
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %while.body11.out_unlock_crit_edge, label %while.body11.while.cond7_crit_edge

while.body11.while.cond7_crit_edge:               ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond7

while.body11.out_unlock_crit_edge:                ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

while.end:                                        ; preds = %land.rhs
  %bitmap.le = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 5
  %trim_state.i.le = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 7
  %offset = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %end)
  %cmp17.not = icmp ult i64 %17, %end
  br i1 %cmp17.not, label %if.then23, label %while.end.out_unlock_crit_edge

while.end.out_unlock_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

while.end.thread:                                 ; preds = %lor.rhs
  %bitmap.le257 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 5
  %offset196 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 2
  %18 = ptrtoint ptr %offset196 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offset196, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %end)
  %cmp17.not197 = icmp ult i64 %19, %end
  br i1 %cmp17.not197, label %if.else39, label %while.end.thread.out_unlock_crit_edge

while.end.thread.out_unlock_crit_edge:            ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then23:                                        ; preds = %while.end
  %bytes21 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 3
  %20 = ptrtoint ptr %bytes21 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bytes21, align 8
  %22 = ptrtoint ptr %trim_state.i.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trim_state.i.le, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %minlen)
  %cmp26 = icmp ult i64 %21, %minlen
  br i1 %cmp26, label %next.thread, label %if.end30

next.thread:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock(ptr noundef %3) #14
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex) #14
  %add65208 = add i64 %21, %17
  %24 = ptrtoint ptr %discard_cursor66219 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add65208, ptr %discard_cursor66219, align 8
  br label %land.lhs.true68

if.end30:                                         ; preds = %if.then23
  call void @rb_erase(ptr noundef nonnull %entry2.0, ptr noundef %free_space_offset.i169) #14
  %bytes_index.i = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 1
  %25 = ptrtoint ptr %rb_leftmost.i.i172 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rb_leftmost.i.i172, align 4
  %cmp.i.i = icmp eq ptr %26, %bytes_index.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end30.rb_erase_cached.exit.i_crit_edge

if.end30.rb_erase_cached.exit.i_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = call ptr @rb_next(ptr noundef %bytes_index.i) #14
  %27 = ptrtoint ptr %rb_leftmost.i.i172 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i, ptr %rb_leftmost.i.i172, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.end30.rb_erase_cached.exit.i_crit_edge
  call void @rb_erase(ptr noundef %bytes_index.i, ptr noundef %free_space_bytes.i171) #14
  %28 = ptrtoint ptr %free_extents.i176 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %free_extents.i176, align 4
  %dec.i = add i32 %29, -1
  store i32 %dec.i, ptr %free_extents.i176, align 4
  %30 = ptrtoint ptr %bitmap.le to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bitmap.le, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge

rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge: ; preds = %rb_erase_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit

land.lhs.true.i:                                  ; preds = %rb_erase_cached.exit.i
  %32 = ptrtoint ptr %trim_state.i.le to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %trim_state.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i19.i = icmp eq i32 %33, 1
  br i1 %cmp.i19.i, label %land.lhs.true.i.unlink_free_space.exit_crit_edge, label %if.then.i

land.lhs.true.i.unlink_free_space.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %discardable_extents.i184 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %discardable_extents.i184, align 8
  %dec2.i = add i32 %35, -1
  store i32 %dec2.i, ptr %discardable_extents.i184, align 8
  %36 = ptrtoint ptr %bytes21 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bytes21, align 8
  %38 = ptrtoint ptr %discardable_bytes.i187 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %discardable_bytes.i187, align 8
  %sub.i = sub i64 %39, %37
  store i64 %sub.i, ptr %discardable_bytes.i187, align 8
  br label %unlink_free_space.exit

unlink_free_space.exit:                           ; preds = %if.then.i, %land.lhs.true.i.unlink_free_space.exit_crit_edge, %rb_erase_cached.exit.i.unlink_free_space.exit_crit_edge
  %40 = ptrtoint ptr %bytes21 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %bytes21, align 8
  %42 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %free_space, align 8
  %sub7.i = sub i64 %43, %41
  store i64 %sub7.i, ptr %free_space, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %add)
  %cmp32.not = icmp ult i64 %21, %add
  %or.cond = select i1 %tobool31.not, i1 true, i1 %cmp32.not
  br i1 %or.cond, label %if.else, label %if.then33

if.then33:                                        ; preds = %unlink_free_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %offset, align 8
  %add35 = add i64 %45, %5
  store i64 %add35, ptr %offset, align 8
  %46 = ptrtoint ptr %bytes21 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bytes21, align 8
  %sub = sub i64 %47, %5
  store i64 %sub, ptr %bytes21, align 8
  %call37 = call fastcc i32 @link_free_space(ptr noundef %3, ptr noundef nonnull %entry2.0)
  br label %if.end55

if.else:                                          ; preds = %unlink_free_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %48 = load ptr, ptr @btrfs_free_space_cachep, align 4
  call void @kmem_cache_free(ptr noundef %48, ptr noundef nonnull %entry2.0) #14
  br label %if.end55

if.else39:                                        ; preds = %while.end.thread
  %bytes21200 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 3
  %49 = ptrtoint ptr %bytes21200 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bytes21200, align 8
  %trim_state201 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 7
  %51 = ptrtoint ptr %trim_state201 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %trim_state201, align 4
  %53 = call i64 @llvm.umax.i64(i64 %start.addr.0245, i64 %19)
  %add42 = add i64 %19, %50
  %54 = call i64 @llvm.umin.i64(i64 %add42, i64 %end)
  %sub49 = sub i64 %54, %53
  call void @__sanitizer_cov_trace_cmp8(i64 %sub49, i64 %minlen)
  %cmp50 = icmp ult i64 %sub49, %minlen
  br i1 %cmp50, label %next.thread214, label %if.end54

next.thread214:                                   ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock(ptr noundef %3) #14
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex) #14
  %55 = ptrtoint ptr %discard_cursor66219 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %discard_cursor66219, align 8
  br label %if.end71

if.end54:                                         ; preds = %if.else39
  call void @rb_erase(ptr noundef nonnull %entry2.0, ptr noundef %free_space_offset.i169) #14
  %bytes_index.i170 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry2.0, i32 0, i32 1
  %56 = ptrtoint ptr %rb_leftmost.i.i172 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rb_leftmost.i.i172, align 4
  %cmp.i.i173 = icmp eq ptr %57, %bytes_index.i170
  br i1 %cmp.i.i173, label %if.then.i.i175, label %if.end54.rb_erase_cached.exit.i180_crit_edge

if.end54.rb_erase_cached.exit.i180_crit_edge:     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit.i180

if.then.i.i175:                                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i174 = call ptr @rb_next(ptr noundef %bytes_index.i170) #14
  %58 = ptrtoint ptr %rb_leftmost.i.i172 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i174, ptr %rb_leftmost.i.i172, align 4
  br label %rb_erase_cached.exit.i180

rb_erase_cached.exit.i180:                        ; preds = %if.then.i.i175, %if.end54.rb_erase_cached.exit.i180_crit_edge
  call void @rb_erase(ptr noundef %bytes_index.i170, ptr noundef %free_space_bytes.i171) #14
  %59 = ptrtoint ptr %free_extents.i176 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %free_extents.i176, align 4
  %dec.i177 = add i32 %60, -1
  store i32 %dec.i177, ptr %free_extents.i176, align 4
  %61 = ptrtoint ptr %bitmap.le257 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bitmap.le257, align 8
  %tobool.not.i179 = icmp eq ptr %62, null
  br i1 %tobool.not.i179, label %land.lhs.true.i183, label %rb_erase_cached.exit.i180.unlink_free_space.exit193_crit_edge

rb_erase_cached.exit.i180.unlink_free_space.exit193_crit_edge: ; preds = %rb_erase_cached.exit.i180
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit193

land.lhs.true.i183:                               ; preds = %rb_erase_cached.exit.i180
  %63 = ptrtoint ptr %trim_state201 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %trim_state201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp.i19.i182 = icmp eq i32 %64, 1
  br i1 %cmp.i19.i182, label %land.lhs.true.i183.unlink_free_space.exit193_crit_edge, label %if.then.i189

land.lhs.true.i183.unlink_free_space.exit193_crit_edge: ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_free_space.exit193

if.then.i189:                                     ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %discardable_extents.i184 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %discardable_extents.i184, align 8
  %dec2.i185 = add i32 %66, -1
  store i32 %dec2.i185, ptr %discardable_extents.i184, align 8
  %67 = ptrtoint ptr %bytes21200 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %bytes21200, align 8
  %69 = ptrtoint ptr %discardable_bytes.i187 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %discardable_bytes.i187, align 8
  %sub.i188 = sub i64 %70, %68
  store i64 %sub.i188, ptr %discardable_bytes.i187, align 8
  br label %unlink_free_space.exit193

unlink_free_space.exit193:                        ; preds = %if.then.i189, %land.lhs.true.i183.unlink_free_space.exit193_crit_edge, %rb_erase_cached.exit.i180.unlink_free_space.exit193_crit_edge
  %71 = ptrtoint ptr %bytes21200 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %bytes21200, align 8
  %73 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %free_space, align 8
  %sub7.i192 = sub i64 %74, %72
  store i64 %sub7.i192, ptr %free_space, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %75 = load ptr, ptr @btrfs_free_space_cachep, align 4
  call void @kmem_cache_free(ptr noundef %75, ptr noundef nonnull %entry2.0) #14
  br label %if.end55

if.end55:                                         ; preds = %unlink_free_space.exit193, %if.else, %if.then33
  %76 = phi i32 [ %23, %if.then33 ], [ %23, %if.else ], [ %52, %unlink_free_space.exit193 ]
  %77 = phi i64 [ %17, %if.then33 ], [ %17, %if.else ], [ %19, %unlink_free_space.exit193 ]
  %extent_bytes.0 = phi i64 [ %5, %if.then33 ], [ %21, %if.else ], [ %50, %unlink_free_space.exit193 ]
  %bytes.0 = phi i64 [ %5, %if.then33 ], [ %21, %if.else ], [ %sub49, %unlink_free_space.exit193 ]
  %start.addr.1 = phi i64 [ %17, %if.then33 ], [ %17, %if.else ], [ %53, %unlink_free_space.exit193 ]
  call void @_raw_spin_unlock(ptr noundef %3) #14
  %78 = ptrtoint ptr %trim_entry to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %trim_entry, align 8
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %extent_bytes.0, ptr %6, align 8
  %80 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i, align 4
  %call.i.i194 = call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %81, ptr noundef %trimming_ranges) #14
  br i1 %call.i.i194, label %if.end.i.i, label %if.end55.list_add_tail.exit_crit_edge

if.end55.list_add_tail.exit_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %7, ptr %prev.i, align 4
  %83 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %trimming_ranges, ptr %7, align 8
  %84 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %8, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %7, ptr %81, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end55.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex) #14
  %call60 = call fastcc i32 @do_trimming(ptr noundef %block_group, ptr noundef %total_trimmed, i64 noundef %start.addr.1, i64 noundef %bytes.0, i64 noundef %77, i64 noundef %extent_bytes.0, i32 noundef %76, ptr noundef nonnull %trim_entry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  %add65 = add i64 %start.addr.1, %bytes.0
  %86 = ptrtoint ptr %discard_cursor66219 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %add65, ptr %discard_cursor66219, align 8
  br i1 %tobool61.not, label %next, label %list_add_tail.exit.cleanup.thread226_crit_edge

list_add_tail.exit.cleanup.thread226_crit_edge:   ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread226

next:                                             ; preds = %list_add_tail.exit
  br i1 %async, label %next.land.lhs.true68_crit_edge, label %next.if.end71_crit_edge

next.if.end71_crit_edge:                          ; preds = %next
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

next.land.lhs.true68_crit_edge:                   ; preds = %next
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true68

land.lhs.true68:                                  ; preds = %next.land.lhs.true68_crit_edge, %next.thread
  %add65213 = phi i64 [ %add65208, %next.thread ], [ %add65, %next.land.lhs.true68_crit_edge ]
  %87 = ptrtoint ptr %total_trimmed to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %total_trimmed, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %tobool69.not = icmp eq i64 %88, 0
  br i1 %tobool69.not, label %land.lhs.true68.if.end71_crit_edge, label %land.lhs.true68.cleanup.thread226_crit_edge

land.lhs.true68.cleanup.thread226_crit_edge:      ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread226

land.lhs.true68.if.end71_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.end71:                                         ; preds = %land.lhs.true68.if.end71_crit_edge, %next.if.end71_crit_edge, %next.thread214
  %add65212 = phi i64 [ %add65213, %land.lhs.true68.if.end71_crit_edge ], [ %add65, %next.if.end71_crit_edge ], [ %54, %next.thread214 ]
  %89 = call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %stack.i.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %94, align 4
  %and1.i.i.i.i.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i195 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i195, label %if.end71.cleanup_crit_edge, label %fatal_signal_pending.exit

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

fatal_signal_pending.exit:                        ; preds = %if.end71
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 116, i32 1
  %97 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %signal.i.i, align 4
  %99 = and i32 %98, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool74.not = icmp eq i32 %99, 0
  br i1 %tobool74.not, label %fatal_signal_pending.exit.cleanup_crit_edge, label %fatal_signal_pending.exit.cleanup.thread226_crit_edge

fatal_signal_pending.exit.cleanup.thread226_crit_edge: ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread226

fatal_signal_pending.exit.cleanup_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.thread226:                                ; preds = %fatal_signal_pending.exit.cleanup.thread226_crit_edge, %land.lhs.true68.cleanup.thread226_crit_edge, %list_add_tail.exit.cleanup.thread226_crit_edge
  %ret.2.ph = phi i32 [ %call60, %list_add_tail.exit.cleanup.thread226_crit_edge ], [ -512, %fatal_signal_pending.exit.cleanup.thread226_crit_edge ], [ 0, %land.lhs.true68.cleanup.thread226_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %trim_entry) #14
  br label %cleanup84

cleanup:                                          ; preds = %fatal_signal_pending.exit.cleanup_crit_edge, %if.end71.cleanup_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 3776, i32 noundef 0) #14
  %call.i = call i32 @__cond_resched() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %trim_entry) #14
  %cmp = icmp ult i64 %add65212, %end
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup84_crit_edge

cleanup.cleanup84_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup84

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

out_unlock:                                       ; preds = %while.end.thread.out_unlock_crit_edge, %while.end.out_unlock_crit_edge, %while.body11.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %while.body.out_unlock_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %trim_entry) #14
  %start.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %100 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %start.i, align 8
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %102 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %length.i, align 8
  %add.i = add i64 %103, %101
  %104 = ptrtoint ptr %discard_cursor66219 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %add.i, ptr %discard_cursor66219, align 8
  call void @_raw_spin_unlock(ptr noundef %3) #14
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex) #14
  br label %cleanup84

cleanup84:                                        ; preds = %out_unlock, %cleanup.cleanup84_crit_edge, %cleanup.thread226, %entry.cleanup84_crit_edge
  %retval.0 = phi i32 [ 0, %out_unlock ], [ %ret.2.ph, %cleanup.thread226 ], [ 0, %entry.cleanup84_crit_edge ], [ 0, %cleanup.cleanup84_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trim_bitmaps(ptr noundef %block_group, ptr nocapture noundef %total_trimmed, i64 noundef %start, i64 noundef %end, i64 noundef %minlen, i64 noundef %maxlen, i1 noundef zeroext %async) unnamed_addr #0 align 64 {
entry:
  %start.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %trim_entry = alloca %struct.btrfs_trim_range, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %start.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %start, ptr %start.addr, align 8
  %1 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %block_group, align 8
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %3 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %free_space_ctl, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #14
  %unit.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %unit.i, align 4
  %mul.i = shl i32 %6, 15
  %conv.i = zext i32 %mul.i to i64
  %start.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start.i, align 8
  %sub.i = sub i64 %start, %8
  %call.i = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i) #14
  %mul1.i = mul i64 %call.i, %conv.i
  %9 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start.i, align 8
  %add.i = add i64 %mul1.i, %10
  %max_discard_size3 = getelementptr inbounds %struct.btrfs_fs_info, ptr %2, i32 0, i32 134, i32 9
  %11 = ptrtoint ptr %max_discard_size3 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load volatile i64, ptr %max_discard_size3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %end)
  %cmp220 = icmp ult i64 %add.i, %end
  br i1 %cmp220, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %13 = getelementptr inbounds %struct.btrfs_trim_range, ptr %trim_entry, i32 0, i32 1
  %14 = getelementptr inbounds %struct.btrfs_trim_range, ptr %trim_entry, i32 0, i32 2
  %15 = getelementptr inbounds %struct.btrfs_trim_range, ptr %trim_entry, i32 0, i32 2, i32 1
  %cache_writeout_mutex = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %4, i32 0, i32 13
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %4, i32 0, i32 3
  %free_space_offset.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %4, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %minlen)
  %tobool10.not = icmp ne i64 %minlen, 0
  %16 = and i1 %tobool10.not, %async
  call void @__sanitizer_cov_trace_const_cmp8(i64 32769, i64 %minlen)
  %cmp29 = icmp ult i64 %minlen, 32769
  %discardable_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %4, i32 0, i32 9
  %discardable_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %4, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %maxlen)
  %tobool49.not = icmp ne i64 %maxlen, 0
  %17 = and i1 %tobool49.not, %async
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool58.not = icmp ne i64 %12, 0
  %or.cond183.not = select i1 %async, i1 %tobool58.not, i1 false
  %add = add i64 %12, %minlen
  %trimming_ranges = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %4, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %4, i32 0, i32 14, i32 1
  %discard_cursor83 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 34
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offset.0221 = phi i64 [ %add.i, %while.body.lr.ph ], [ %offset.1, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %trim_entry) #14
  %18 = call ptr @memset(ptr %trim_entry, i32 255, i32 24)
  call void @mutex_lock_nested(ptr noundef %cache_writeout_mutex, i32 noundef 0) #14
  call void @_raw_spin_lock(ptr noundef %4) #14
  %19 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %free_space, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %minlen)
  %cmp4 = icmp ult i64 %20, %minlen
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %start.i184 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %21 = ptrtoint ptr %start.i184 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start.i184, align 8
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %length.i, align 8
  %add.i185 = add i64 %24, %22
  %25 = ptrtoint ptr %discard_cursor83 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.i185, ptr %discard_cursor83, align 8
  call void @_raw_spin_unlock(ptr noundef %4) #14
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex) #14
  br label %cleanup.thread

if.end:                                           ; preds = %while.body
  %26 = ptrtoint ptr %free_space_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %n.0252.i = load ptr, ptr %free_space_offset.i, align 4
  %tobool.not253.i = icmp eq ptr %n.0252.i, null
  br i1 %tobool.not253.i, label %if.end.if.then78_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.then78_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then78

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %n.0254.i = phi ptr [ %n.0.i, %if.end7.i.while.body.i_crit_edge ], [ %n.0252.i, %if.end.while.body.i_crit_edge ]
  %offset2.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 2
  %27 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %offset2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %offset.0221)
  %cmp.i = icmp ugt i64 %28, %offset.0221
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 2
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %offset.0221)
  %cmp4.i = icmp ult i64 %28, %offset.0221
  br i1 %cmp4.i, label %if.then5.i, label %while.end.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %29 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end7.i.if.then78_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end7.i.if.then78_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then78

while.end.i:                                      ; preds = %if.else.i
  %bitmap54.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 5
  %30 = ptrtoint ptr %bitmap54.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bitmap54.i, align 8
  %tobool55.not.i = icmp eq ptr %31, null
  br i1 %tobool55.not.i, label %if.end15.i, label %while.end.i.lor.lhs.false_crit_edge

while.end.i.lor.lhs.false_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

if.end15.i:                                       ; preds = %while.end.i
  %call.i186 = call ptr @rb_next(ptr noundef nonnull %n.0254.i) #14
  %tobool16.not.i = icmp eq ptr %call.i186, null
  br i1 %tobool16.not.i, label %if.end15.i.if.then78_crit_edge, label %if.end18.i

if.end15.i.if.then78_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then78

if.end18.i:                                       ; preds = %if.end15.i
  %offset22.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i186, i32 0, i32 2
  %32 = ptrtoint ptr %offset22.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %offset22.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %offset.0221)
  %cmp23.not.i = icmp eq i64 %33, %offset.0221
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end18.i.if.then78_crit_edge

if.end18.i.if.then78_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then78

if.end25.i:                                       ; preds = %if.end18.i
  %bitmap26.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i186, i32 0, i32 5
  %34 = ptrtoint ptr %bitmap26.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bitmap26.i, align 8
  %tobool27.not.i = icmp eq ptr %35, null
  br i1 %tobool27.not.i, label %do.end.i, label %if.end25.i.lor.lhs.false_crit_edge, !prof !160

if.end25.i.lor.lhs.false_crit_edge:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

do.end.i:                                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1690, i32 noundef 9, ptr noundef null) #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.i, %if.end25.i.lor.lhs.false_crit_edge, %while.end.i.lor.lhs.false_crit_edge
  %retval.0.i = phi ptr [ %n.0254.i, %while.end.i.lor.lhs.false_crit_edge ], [ %call.i186, %do.end.i ], [ %call.i186, %if.end25.i.lor.lhs.false_crit_edge ]
  br i1 %16, label %land.lhs.true11, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %36 = ptrtoint ptr %start.addr to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %start.addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %offset.0221)
  %cmp12 = icmp eq i64 %37, %offset.0221
  br i1 %cmp12, label %land.lhs.true13, label %land.lhs.true11.if.end18_crit_edge

land.lhs.true11.if.end18_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

land.lhs.true13:                                  ; preds = %land.lhs.true11
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 7
  %38 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i187 = icmp eq i32 %39, 1
  br i1 %cmp.i187, label %land.lhs.true13.if.then78_crit_edge, label %land.lhs.true13.if.end18_crit_edge

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

land.lhs.true13.if.then78_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then78

if.end18:                                         ; preds = %land.lhs.true13.if.end18_crit_edge, %land.lhs.true11.if.end18_crit_edge, %lor.lhs.false.if.end18_crit_edge
  %40 = ptrtoint ptr %start.addr to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %start.addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %offset.0221)
  %cmp19 = icmp eq i64 %41, %offset.0221
  br i1 %cmp19, label %if.then20, label %if.end18.if.end21_crit_edge

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %trim_state = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 7
  %42 = ptrtoint ptr %trim_state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %trim_state, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %43 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %minlen, ptr %bytes, align 8
  %call22 = call fastcc i32 @search_bitmap(ptr noundef %4, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %start.addr, ptr noundef nonnull %bytes, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %land.lhs.true28.critedge

lor.lhs.false24:                                  ; preds = %if.end21
  %44 = ptrtoint ptr %start.addr to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %start.addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %end)
  %cmp25.not = icmp ult i64 %45, %end
  br i1 %cmp25.not, label %if.end35, label %lor.lhs.false24.if.else_crit_edge

lor.lhs.false24.if.else_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true28.critedge:                         ; preds = %if.end21
  br i1 %cmp29, label %if.then30, label %land.lhs.true28.critedge.if.else_crit_edge

land.lhs.true28.critedge.if.else_crit_edge:       ; preds = %land.lhs.true28.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then30:                                        ; preds = %land.lhs.true28.critedge
  %trim_state.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 7
  %46 = ptrtoint ptr %trim_state.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %trim_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.i.i = icmp eq i32 %47, 2
  br i1 %cmp.i.i, label %if.then.i189, label %if.then30.if.then78_crit_edge

if.then30.if.then78_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then78

if.then.i189:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %trim_state.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %trim_state.i.i, align 4
  %bitmap_extents.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 8
  %49 = ptrtoint ptr %bitmap_extents.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bitmap_extents.i, align 8
  %51 = ptrtoint ptr %discardable_extents.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %discardable_extents.i, align 8
  %sub.i188 = sub i32 %52, %50
  store i32 %sub.i188, ptr %discardable_extents.i, align 8
  %bytes.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 3
  %53 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bytes.i, align 8
  %55 = ptrtoint ptr %discardable_bytes.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %discardable_bytes.i, align 8
  %sub3.i = sub i64 %56, %54
  store i64 %sub3.i, ptr %discardable_bytes.i, align 8
  br label %if.then78

if.else:                                          ; preds = %land.lhs.true28.critedge.if.else_crit_edge, %lor.lhs.false24.if.else_crit_edge
  %trim_state31 = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 7
  %57 = ptrtoint ptr %trim_state31 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %trim_state31, align 4
  br label %if.then78

if.end35:                                         ; preds = %lor.lhs.false24
  br i1 %async, label %land.lhs.true37, label %if.end35.if.end42_crit_edge

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.lhs.true37:                                  ; preds = %if.end35
  %58 = ptrtoint ptr %total_trimmed to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %total_trimmed, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool38.not = icmp eq i64 %59, 0
  br i1 %tobool38.not, label %land.lhs.true37.if.end42_crit_edge, label %cleanup.thread206

land.lhs.true37.if.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

cleanup.thread206:                                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock(ptr noundef %4) #14
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %trim_entry) #14
  br label %cleanup101

if.end42:                                         ; preds = %land.lhs.true37.if.end42_crit_edge, %if.end35.if.end42_crit_edge
  %60 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %bytes, align 8
  %sub = sub i64 %end, %45
  %62 = call i64 @llvm.umin.i64(i64 %61, i64 %sub)
  %63 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %minlen)
  %cmp45 = icmp ult i64 %62, %minlen
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %maxlen)
  %cmp51 = icmp ugt i64 %62, %maxlen
  %or.cond181 = select i1 %17, i1 %cmp51, i1 false
  %or.cond = or i1 %cmp45, %or.cond181
  br i1 %or.cond, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock(ptr noundef %4) #14
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex) #14
  br label %if.else80

if.end55:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %add)
  %cmp60 = icmp ugt i64 %62, %add
  %or.cond210 = select i1 %or.cond183.not, i1 %cmp60, i1 false
  br i1 %or.cond210, label %if.then61, label %if.end55.if.end62_crit_edge

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %12, ptr %bytes, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end55.if.end62_crit_edge
  %65 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %bytes, align 8
  call fastcc void @bitmap_clear_bits(ptr noundef %4, ptr noundef nonnull %retval.0.i, i64 noundef %45, i64 noundef %66, i1 noundef zeroext true)
  %bytes63 = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 3
  %67 = ptrtoint ptr %bytes63 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %bytes63, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %cmp64 = icmp eq i64 %68, 0
  br i1 %cmp64, label %if.then65, label %if.end62.if.end66_crit_edge

if.end62.if.end66_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @free_bitmap(ptr noundef %4, ptr noundef nonnull %retval.0.i)
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end62.if.end66_crit_edge
  call void @_raw_spin_unlock(ptr noundef %4) #14
  %69 = ptrtoint ptr %trim_entry to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %45, ptr %trim_entry, align 8
  %70 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %66, ptr %13, align 8
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %14, ptr noundef %72, ptr noundef %trimming_ranges) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end66.list_add_tail.exit_crit_edge

if.end66.list_add_tail.exit_crit_edge:            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %14, ptr %prev.i, align 4
  %74 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %trimming_ranges, ptr %14, align 8
  %75 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %15, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %14, ptr %72, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end66.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex) #14
  %call71 = call fastcc i32 @do_trimming(ptr noundef %block_group, ptr noundef %total_trimmed, i64 noundef %45, i64 noundef %66, i64 noundef %45, i64 noundef %66, i32 noundef 0, ptr noundef nonnull %trim_entry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %list_add_tail.exit.if.else80_crit_edge, label %if.then73

list_add_tail.exit.if.else80_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else80

if.then73:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @reset_trimming_bitmap(ptr noundef %4, i64 noundef %offset.0221)
  %start.i190 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %77 = ptrtoint ptr %start.i190 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %start.i190, align 8
  %length.i191 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %79 = ptrtoint ptr %length.i191 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %length.i191, align 8
  %add.i192 = add i64 %80, %78
  %81 = ptrtoint ptr %discard_cursor83 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add.i192, ptr %discard_cursor83, align 8
  br label %cleanup.thread

if.then78:                                        ; preds = %if.else, %if.then.i189, %if.then30.if.then78_crit_edge, %land.lhs.true13.if.then78_crit_edge, %if.end18.i.if.then78_crit_edge, %if.end15.i.if.then78_crit_edge, %if.end7.i.if.then78_crit_edge, %if.end.if.then78_crit_edge
  call void @_raw_spin_unlock(ptr noundef %4) #14
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex) #14
  %82 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %unit.i, align 4
  %mul = shl i32 %83, 15
  %conv = zext i32 %mul to i64
  %add79 = add i64 %offset.0221, %conv
  br label %if.end82

if.else80:                                        ; preds = %list_add_tail.exit.if.else80_crit_edge, %if.then52
  %84 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %bytes, align 8
  %86 = ptrtoint ptr %start.addr to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %start.addr, align 8
  %add81 = add i64 %87, %85
  br label %if.end82

if.end82:                                         ; preds = %if.else80, %if.then78
  %storemerge = phi i64 [ %add81, %if.else80 ], [ %add79, %if.then78 ]
  %offset.1 = phi i64 [ %offset.0221, %if.else80 ], [ %add79, %if.then78 ]
  %88 = ptrtoint ptr %start.addr to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %storemerge, ptr %start.addr, align 8
  %89 = ptrtoint ptr %discard_cursor83 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %storemerge, ptr %discard_cursor83, align 8
  %90 = call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %stack.i.i.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 4
  %and1.i.i.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i193 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i193, label %if.end82.cleanup_crit_edge, label %fatal_signal_pending.exit

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

fatal_signal_pending.exit:                        ; preds = %if.end82
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 116, i32 1
  %98 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %signal.i.i, align 4
  %100 = and i32 %99, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool86.not = icmp eq i32 %100, 0
  br i1 %tobool86.not, label %fatal_signal_pending.exit.cleanup_crit_edge, label %if.then87

fatal_signal_pending.exit.cleanup_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then87:                                        ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %storemerge, i64 %offset.1)
  %cmp88.not = icmp eq i64 %storemerge, %offset.1
  br i1 %cmp88.not, label %if.then87.cleanup.thread_crit_edge, label %if.then90

if.then87.cleanup.thread_crit_edge:               ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.then90:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @reset_trimming_bitmap(ptr noundef %4, i64 noundef %offset.1)
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then90, %if.then87.cleanup.thread_crit_edge, %if.then73, %if.then
  %ret.2.ph = phi i32 [ -512, %if.then87.cleanup.thread_crit_edge ], [ -512, %if.then90 ], [ %call71, %if.then73 ], [ 0, %if.then ]
  %offset.2.ph = phi i64 [ %storemerge, %if.then87.cleanup.thread_crit_edge ], [ %offset.1, %if.then90 ], [ %offset.0221, %if.then73 ], [ %offset.0221, %if.then ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %trim_entry) #14
  br label %while.end

cleanup:                                          ; preds = %fatal_signal_pending.exit.cleanup_crit_edge, %if.end82.cleanup_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 3969, i32 noundef 0) #14
  %call.i194 = call i32 @__cond_resched() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %trim_entry) #14
  %cmp = icmp ult i64 %offset.1, %end
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %entry.while.end_crit_edge
  %ret.3 = phi i32 [ %ret.2.ph, %cleanup.thread ], [ 0, %entry.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %offset.3 = phi i64 [ %offset.2.ph, %cleanup.thread ], [ %add.i, %entry.while.end_crit_edge ], [ %offset.1, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.3, i64 %end)
  %cmp96.not = icmp ult i64 %offset.3, %end
  br i1 %cmp96.not, label %while.end.cleanup101_crit_edge, label %if.then98

while.end.cleanup101_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup101

if.then98:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %discard_cursor99 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 34
  %101 = ptrtoint ptr %discard_cursor99 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %end, ptr %discard_cursor99, align 8
  br label %cleanup101

cleanup101:                                       ; preds = %if.then98, %while.end.cleanup101_crit_edge, %cleanup.thread206
  %retval.0 = phi i32 [ %ret.3, %if.then98 ], [ %ret.3, %while.end.cleanup101_crit_edge ], [ 0, %cleanup.thread206 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_trimming_bitmap(ptr noundef %ctl, i64 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %ctl) #14
  %free_space_offset.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 1
  %0 = ptrtoint ptr %free_space_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.0252.i = load ptr, ptr %free_space_offset.i, align 4
  %tobool.not253.i = icmp eq ptr %n.0252.i, null
  br i1 %tobool.not253.i, label %entry.if.end6_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %n.0254.i = phi ptr [ %n.0.i, %if.end7.i.while.body.i_crit_edge ], [ %n.0252.i, %entry.while.body.i_crit_edge ]
  %offset2.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 2
  %1 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %offset2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %offset)
  %cmp.i = icmp ugt i64 %2, %offset
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 2
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %offset)
  %cmp4.i = icmp ult i64 %2, %offset
  br i1 %cmp4.i, label %if.then5.i, label %while.end.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %3 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end7.i.if.end6_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end7.i.if.end6_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

while.end.i:                                      ; preds = %if.else.i
  %bitmap54.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 5
  %4 = ptrtoint ptr %bitmap54.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bitmap54.i, align 8
  %tobool55.not.i = icmp eq ptr %5, null
  br i1 %tobool55.not.i, label %if.end15.i, label %while.end.i.if.then_crit_edge

while.end.i.if.then_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end15.i:                                       ; preds = %while.end.i
  %call.i = tail call ptr @rb_next(ptr noundef nonnull %n.0254.i) #14
  %tobool16.not.i = icmp eq ptr %call.i, null
  br i1 %tobool16.not.i, label %if.end15.i.if.end6_crit_edge, label %if.end18.i

if.end15.i.if.end6_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end18.i:                                       ; preds = %if.end15.i
  %offset22.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %offset22.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset22.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %offset)
  %cmp23.not.i = icmp eq i64 %7, %offset
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end18.i.if.end6_crit_edge

if.end18.i.if.end6_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end25.i:                                       ; preds = %if.end18.i
  %bitmap26.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %bitmap26.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmap26.i, align 8
  %tobool27.not.i = icmp eq ptr %9, null
  br i1 %tobool27.not.i, label %do.end.i, label %if.end25.i.if.then_crit_edge, !prof !160

if.end25.i.if.then_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

do.end.i:                                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1690, i32 noundef 9, ptr noundef null) #14
  br label %if.then

if.then:                                          ; preds = %do.end.i, %if.end25.i.if.then_crit_edge, %while.end.i.if.then_crit_edge
  %retval.0.i = phi ptr [ %n.0254.i, %while.end.i.if.then_crit_edge ], [ %call.i, %do.end.i ], [ %call.i, %if.end25.i.if.then_crit_edge ]
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 7
  %10 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i16 = icmp eq i32 %11, 1
  br i1 %cmp.i16, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %bitmap_extents = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 8
  %12 = ptrtoint ptr %bitmap_extents to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bitmap_extents, align 8
  %discardable_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 9
  %14 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %discardable_extents, align 8
  %add = add i32 %15, %13
  store i32 %add, ptr %discardable_extents, align 8
  %bytes = getelementptr inbounds %struct.btrfs_free_space, ptr %retval.0.i, i32 0, i32 3
  %16 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bytes, align 8
  %discardable_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 10
  %18 = ptrtoint ptr %discardable_bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %discardable_bytes, align 8
  %add5 = add i64 %19, %17
  store i64 %add5, ptr %discardable_bytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %20 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %trim_state.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.end18.i.if.end6_crit_edge, %if.end15.i.if.end6_crit_edge, %if.end7.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctl) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_unfreeze_block_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_trim_block_group_extents(ptr noundef %block_group, ptr nocapture noundef %trimmed, i64 noundef %start, i64 noundef %end, i64 noundef %minlen, i1 noundef zeroext %async) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %trimmed to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %trimmed, align 8
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %removed = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 17
  %1 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %removed, align 8
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_freeze_block_group(ptr noundef %block_group) #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %call = tail call fastcc i32 @trim_no_bitmap(ptr noundef %block_group, ptr noundef %trimmed, i64 noundef %start, i64 noundef %end, i64 noundef %minlen, i1 noundef zeroext %async)
  tail call void @btrfs_unfreeze_block_group(ptr noundef %block_group) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_trim_block_group_bitmaps(ptr noundef %block_group, ptr nocapture noundef %trimmed, i64 noundef %start, i64 noundef %end, i64 noundef %minlen, i64 noundef %maxlen, i1 noundef zeroext %async) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %trimmed to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %trimmed, align 8
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %removed = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 17
  %1 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %removed, align 8
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_freeze_block_group(ptr noundef %block_group) #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %call = tail call fastcc i32 @trim_bitmaps(ptr noundef %block_group, ptr noundef %trimmed, i64 noundef %start, i64 noundef %end, i64 noundef %minlen, i64 noundef %maxlen, i1 noundef zeroext %async)
  tail call void @btrfs_unfreeze_block_group(ptr noundef %block_group) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @btrfs_free_space_cache_v1_active(ptr nocapture noundef readonly %fs_info) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  %0 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %super_copy, align 8
  %cache_generation.i = getelementptr inbounds %struct.btrfs_super_block, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %cache_generation.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %cache_generation.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool = icmp ne i64 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_set_free_space_cache_v1_active(ptr noundef %fs_info, i1 noundef zeroext %active) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 2
  %0 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tree_root, align 4
  %call = tail call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 0) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %active, label %if.end.if.end53_crit_edge, label %if.then3

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then3:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags) #14
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.63) #17
  %block_group_cache_tree.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 16
  %call.i = tail call ptr @rb_first(ptr noundef %block_group_cache_tree.i) #14
  %tobool.not8.i = icmp eq ptr %call.i, null
  br i1 %tobool.not8.i, label %if.then3.if.end53_crit_edge, label %if.then3.while.body.i_crit_edge

if.then3.while.body.i_crit_edge:                  ; preds = %if.then3
  br label %while.body.i

if.then3.if.end53_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then3.while.body.i_crit_edge
  %node.09.i = phi ptr [ %call3.i, %if.end.i.while.body.i_crit_edge ], [ %call.i, %if.then3.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %node.09.i, i32 -272
  %call1.i = tail call i32 @btrfs_remove_free_space_inode(ptr noundef %call, ptr noundef null, ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %do.body

if.end.i:                                         ; preds = %while.body.i
  %call3.i = tail call ptr @rb_next(ptr noundef nonnull %node.09.i) #14
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end53_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end.i.if.end53_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

do.body:                                          ; preds = %while.body.i
  %fs_info7 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call, i32 0, i32 16
  %3 = ptrtoint ptr %fs_info7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fs_info7, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 149
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %do.body.if.end48_crit_edge

do.body.if.end48_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then10:                                        ; preds = %do.body
  %5 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call1.i, label %do.end [
    i32 -5, label %if.then10.do.body31_crit_edge
    i32 -30, label %if.then10.do.body31_crit_edge84
  ]

if.then10.do.body31_crit_edge84:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body31

if.then10.do.body31_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body31

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 4105, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call1.i) #14
  br label %if.end48

do.body31:                                        ; preds = %if.then10.do.body31_crit_edge, %if.then10.do.body31_crit_edge84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_set_free_space_cache_v1_active.__UNIQUE_ID_ddebug980, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_set_free_space_cache_v1_active, %if.then42)) #14
          to label %if.end48 [label %if.then42], !srcloc !159

if.then42:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %fs_info7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info7, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef %call1.i) #17
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %do.body31, %do.end, %do.body.if.end48_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %call, ptr noundef nonnull @.str.28, i32 noundef 4105, i32 noundef %call1.i) #17
  %call51 = tail call i32 @btrfs_end_transaction(ptr noundef %call) #14
  br label %out

if.end53:                                         ; preds = %if.end.i.if.end53_crit_edge, %if.then3.if.end53_crit_edge, %if.end.if.end53_crit_edge
  %call54 = tail call i32 @btrfs_commit_transaction(ptr noundef %call) #14
  br label %out

out:                                              ; preds = %if.end53, %if.end48
  %ret.0 = phi i32 [ %call54, %if.end53 ], [ %call1.i, %if.end48 ]
  %flags55 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags55) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_start_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_commit_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @test_add_free_space_entry(ptr nocapture noundef readonly %cache, i64 noundef %offset, i64 noundef %bytes, i1 noundef zeroext %bitmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  %unit.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 7
  %start.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 8
  %free_space_offset.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 1
  br label %again

again:                                            ; preds = %if.end27.again_crit_edge, %entry
  %offset.addr.0 = phi i64 [ %offset, %entry ], [ %add, %if.end27.again_crit_edge ]
  %bytes.addr.0 = phi i64 [ %bytes, %entry ], [ %sub, %if.end27.again_crit_edge ]
  %info.0 = phi ptr [ null, %entry ], [ %info.2, %if.end27.again_crit_edge ]
  %map.0 = phi ptr [ null, %entry ], [ %map.2, %if.end27.again_crit_edge ]
  %tobool.not = icmp eq ptr %info.0, null
  br i1 %tobool.not, label %if.then, label %again.if.end3_crit_edge

again.if.end3_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then:                                          ; preds = %again
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %2 = load ptr, ptr @btrfs_free_space_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3392) #14
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %again.if.end3_crit_edge
  %info.1 = phi ptr [ %info.0, %again.if.end3_crit_edge ], [ %call.i, %if.then.if.end3_crit_edge ]
  br i1 %bitmap, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.end3
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %offset6 = getelementptr inbounds %struct.btrfs_free_space, ptr %info.1, i32 0, i32 2
  %3 = ptrtoint ptr %offset6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %offset, ptr %offset6, align 8
  %bytes7 = getelementptr inbounds %struct.btrfs_free_space, ptr %info.1, i32 0, i32 3
  %4 = ptrtoint ptr %bytes7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %bytes, ptr %bytes7, align 8
  %max_extent_size = getelementptr inbounds %struct.btrfs_free_space, ptr %info.1, i32 0, i32 4
  %5 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %max_extent_size, align 8
  %call8 = tail call fastcc i32 @link_free_space(ptr noundef %1, ptr noundef nonnull %info.1)
  tail call void @_raw_spin_unlock(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  %tobool14.not = icmp eq ptr %map.0, null
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then15:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_bitmap_cachep to i32))
  %6 = load ptr, ptr @btrfs_free_space_bitmap_cachep, align 4
  %call.i79 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3392) #14
  %tobool17.not = icmp eq ptr %call.i79, null
  br i1 %tobool17.not, label %if.then15.cleanup.sink.split_crit_edge, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then15.cleanup.sink.split_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.then15.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %map.1 = phi ptr [ %map.0, %if.end13.if.end20_crit_edge ], [ %call.i79, %if.then15.if.end20_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %7 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %unit.i, align 4
  %mul.i = shl i32 %8, 15
  %conv.i = zext i32 %mul.i to i64
  %9 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start.i, align 8
  %sub.i = sub i64 %offset.addr.0, %10
  %call.i80 = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i) #14
  %mul1.i = mul i64 %call.i80, %conv.i
  %11 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start.i, align 8
  %add.i = add i64 %mul1.i, %12
  %13 = ptrtoint ptr %free_space_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %n.0252.i = load ptr, ptr %free_space_offset.i, align 4
  %tobool.not253.i = icmp eq ptr %n.0252.i, null
  br i1 %tobool.not253.i, label %if.end20.if.then25_crit_edge, label %if.end20.while.body.i_crit_edge

if.end20.while.body.i_crit_edge:                  ; preds = %if.end20
  br label %while.body.i

if.end20.if.then25_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %if.end20.while.body.i_crit_edge
  %n.0254.i = phi ptr [ %n.0.i, %if.end7.i.while.body.i_crit_edge ], [ %n.0252.i, %if.end20.while.body.i_crit_edge ]
  %offset2.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 2
  %14 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %add.i)
  %cmp.i = icmp ugt i64 %15, %add.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 2
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %add.i)
  %cmp4.i = icmp ult i64 %15, %add.i
  br i1 %cmp4.i, label %if.then5.i, label %while.end.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %16 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end7.i.if.then25_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end7.i.if.then25_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

while.end.i:                                      ; preds = %if.else.i
  %bitmap54.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 5
  %17 = ptrtoint ptr %bitmap54.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bitmap54.i, align 8
  %tobool55.not.i = icmp eq ptr %18, null
  br i1 %tobool55.not.i, label %if.end15.i, label %while.end.i.if.end27_crit_edge

while.end.i.if.end27_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end15.i:                                       ; preds = %while.end.i
  %call.i81 = tail call ptr @rb_next(ptr noundef nonnull %n.0254.i) #14
  %tobool16.not.i = icmp eq ptr %call.i81, null
  br i1 %tobool16.not.i, label %if.end15.i.if.then25_crit_edge, label %if.end18.i

if.end15.i.if.then25_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

if.end18.i:                                       ; preds = %if.end15.i
  %offset22.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i81, i32 0, i32 2
  %19 = ptrtoint ptr %offset22.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset22.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %add.i)
  %cmp23.not.i = icmp eq i64 %20, %add.i
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end18.i.if.then25_crit_edge

if.end18.i.if.then25_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

if.end25.i:                                       ; preds = %if.end18.i
  %bitmap26.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i81, i32 0, i32 5
  %21 = ptrtoint ptr %bitmap26.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bitmap26.i, align 8
  %tobool27.not.i = icmp eq ptr %22, null
  br i1 %tobool27.not.i, label %do.end.i, label %if.end25.i.if.end27_crit_edge, !prof !160

if.end25.i.if.end27_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

do.end.i:                                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1690, i32 noundef 9, ptr noundef null) #14
  br label %if.end27

if.then25:                                        ; preds = %if.end18.i.if.then25_crit_edge, %if.end15.i.if.then25_crit_edge, %if.end7.i.if.then25_crit_edge, %if.end20.if.then25_crit_edge
  %bitmap26 = getelementptr inbounds %struct.btrfs_free_space, ptr %info.1, i32 0, i32 5
  %23 = ptrtoint ptr %bitmap26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %map.1, ptr %bitmap26, align 8
  tail call fastcc void @add_new_bitmap(ptr noundef %1, ptr noundef %info.1, i64 noundef %offset.addr.0)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %do.end.i, %if.end25.i.if.end27_crit_edge, %while.end.i.if.end27_crit_edge
  %info.2 = phi ptr [ null, %if.then25 ], [ %info.1, %while.end.i.if.end27_crit_edge ], [ %info.1, %if.end25.i.if.end27_crit_edge ], [ %info.1, %do.end.i ]
  %bitmap_info.0 = phi ptr [ %info.1, %if.then25 ], [ %n.0254.i, %while.end.i.if.end27_crit_edge ], [ %call.i81, %if.end25.i.if.end27_crit_edge ], [ %call.i81, %do.end.i ]
  %map.2 = phi ptr [ null, %if.then25 ], [ %map.1, %while.end.i.if.end27_crit_edge ], [ %map.1, %if.end25.i.if.end27_crit_edge ], [ %map.1, %do.end.i ]
  %call28 = tail call fastcc i64 @add_bytes_to_bitmap(ptr noundef %1, ptr noundef %bitmap_info.0, i64 noundef %offset.addr.0, i64 noundef %bytes.addr.0, i32 noundef 1)
  %sub = sub i64 %bytes.addr.0, %call28
  %add = add i64 %call28, %offset.addr.0
  tail call void @_raw_spin_unlock(ptr noundef %1) #14
  %tobool30.not = icmp eq i64 %sub, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.again_crit_edge

if.end27.again_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %again

if.end32:                                         ; preds = %if.end27
  %tobool33.not = icmp eq ptr %info.2, null
  br i1 %tobool33.not, label %if.end32.if.end35_crit_edge, label %if.then34

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_free_space_cachep to i32))
  %24 = load ptr, ptr @btrfs_free_space_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef nonnull %info.2) #14
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32.if.end35_crit_edge
  %tobool36.not = icmp eq ptr %map.2, null
  br i1 %tobool36.not, label %if.end35.cleanup_crit_edge, label %if.end35.cleanup.sink.split_crit_edge

if.end35.cleanup.sink.split_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end35.cleanup.sink.split_crit_edge, %if.then15.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %btrfs_free_space_bitmap_cachep.sink = phi ptr [ @btrfs_free_space_cachep, %if.then5.cleanup.sink.split_crit_edge ], [ @btrfs_free_space_bitmap_cachep, %if.end35.cleanup.sink.split_crit_edge ], [ @btrfs_free_space_cachep, %if.then15.cleanup.sink.split_crit_edge ]
  %map.2.lcssa.sink = phi ptr [ %info.1, %if.then5.cleanup.sink.split_crit_edge ], [ %map.2, %if.end35.cleanup.sink.split_crit_edge ], [ %info.1, %if.then15.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call8, %if.then5.cleanup.sink.split_crit_edge ], [ 0, %if.end35.cleanup.sink.split_crit_edge ], [ -12, %if.then15.cleanup.sink.split_crit_edge ]
  %25 = ptrtoint ptr %btrfs_free_space_bitmap_cachep.sink to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %btrfs_free_space_bitmap_cachep.sink, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef nonnull %map.2.lcssa.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end35.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_new_bitmap(ptr noundef %ctl, ptr noundef %info, i64 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %unit.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  %0 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %unit.i, align 4
  %mul.i = shl i32 %1, 15
  %conv.i = zext i32 %mul.i to i64
  %start.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 8
  %2 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start.i, align 8
  %sub.i = sub i64 %offset, %3
  %call.i = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i) #14
  %mul1.i = mul i64 %call.i, %conv.i
  %4 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start.i, align 8
  %add.i = add i64 %mul1.i, %5
  %offset1 = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %offset1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add.i, ptr %offset1, align 8
  %bytes = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %bytes, align 8
  %bitmap_extents = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 8
  %8 = ptrtoint ptr %bitmap_extents to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bitmap_extents, align 8
  %list = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 6
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %call2 = tail call fastcc i32 @link_free_space(ptr noundef %ctl, ptr noundef %info)
  %total_bitmaps = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 6
  %11 = ptrtoint ptr %total_bitmaps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_bitmaps, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %total_bitmaps, align 8
  %block_group1.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 12
  %13 = ptrtoint ptr %block_group1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %block_group1.i, align 4
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %length.i, align 8
  %17 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unit.i, align 4
  %mul.i11 = shl i32 %18, 15
  %conv.i12 = zext i32 %mul.i11 to i64
  %add.i13 = add i64 %16, -1
  %sub.i14 = add i64 %add.i13, %conv.i12
  %call.i15 = tail call i64 @div64_u64(i64 noundef %sub.i14, i64 noundef %conv.i12) #14
  %19 = tail call i64 @llvm.umax.i64(i64 %call.i15, i64 1) #14
  %20 = ptrtoint ptr %total_bitmaps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_bitmaps, align 8
  %conv3.i = sext i32 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv3.i)
  %cmp4.not.i = icmp ult i64 %19, %conv3.i
  br i1 %cmp4.not.i, label %cond.false8.i, label %recalculate_thresholds.exit, !prof !160

cond.false8.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.58, i32 noundef 696) #19
  unreachable

recalculate_thresholds.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %16)
  %cmp10.i = icmp ult i64 %16, 1073741824
  %22 = lshr i64 %16, 14
  %mul13.i = and i64 %22, 1125899906777088
  %max_bytes.0.i = select i1 %cmp10.i, i64 65536, i64 %mul13.i
  %23 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %unit.i, align 4
  %mul16.i = mul i32 %24, %21
  %conv17.i = sext i32 %mul16.i to i64
  %sub18.i = sub nsw i64 %max_bytes.0.i, %conv17.i
  %shr.i = lshr exact i64 %max_bytes.0.i, 1
  %25 = tail call i64 @llvm.umin.i64(i64 %sub18.i, i64 %shr.i) #14
  %26 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2049638230412172401, i64 %25) #21, !srcloc !165
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2049638230412172401, i64 %25, i64 %26, i32 0) #21, !srcloc !164
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %27, 0
  %div158.i.i43.i = lshr i64 %asmresult10.i.i.i.i, 6
  %conv27.i = trunc i64 %div158.i.i43.i to i32
  %extents_thresh.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 4
  %28 = ptrtoint ptr %extents_thresh.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv27.i, ptr %extents_thresh.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @add_bytes_to_bitmap(ptr noundef %ctl, ptr noundef %info, i64 noundef %offset, i64 noundef %bytes, i32 noundef %trim_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trim_state)
  %cmp = icmp eq i32 %trim_state, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry
  %trim_state.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trim_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %bitmap_extents = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 8
  %2 = ptrtoint ptr %bitmap_extents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bitmap_extents, align 8
  %discardable_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 9
  %4 = ptrtoint ptr %discardable_extents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %discardable_extents, align 8
  %add = add i32 %5, %3
  store i32 %add, ptr %discardable_extents, align 8
  %bytes2 = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %bytes2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes2, align 8
  %discardable_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 10
  %8 = ptrtoint ptr %discardable_bytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %discardable_bytes, align 8
  %add4 = add i64 %9, %7
  store i64 %add4, ptr %discardable_bytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %trim_state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %trim_state.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %offset7 = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %offset7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset7, align 8
  %unit = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  %13 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unit, align 4
  %mul = shl i32 %14, 15
  %conv = zext i32 %mul to i64
  %add8 = sub i64 %12, %offset
  %sub = add i64 %add8, %conv
  %15 = tail call i64 @llvm.umin.i64(i64 %sub, i64 %bytes)
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %offset)
  %cmp.not.i.i = icmp ugt i64 %12, %offset
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.end.i.i, !prof !160

cond.false.i.i:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.52, i32 noundef 1524) #19
  unreachable

cond.end.i.i:                                     ; preds = %if.end6
  %sub.i.i = sub i64 %offset, %12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp164.i.i.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !155

if.then168.i.i.i.i:                               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i.i = trunc i64 %sub.i.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %14
  br label %if.else162.i.i.i164.i

if.else174.i.i.i.i:                               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %sub.i.i) #21, !srcloc !162
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t6.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %if.else162.i.i.i164.i

if.else162.i.i.i164.i:                            ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.off0.i.i = phi i32 [ %div172.i.i.i.i, %if.then168.i.i.i.i ], [ %extract.t6.i.i, %if.else174.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %15)
  %cmp164.i.i.i163.i = icmp ult i64 %15, 4294967296
  br i1 %cmp164.i.i.i163.i, label %if.then168.i.i.i167.i, label %if.else174.i.i.i169.i, !prof !155

if.then168.i.i.i167.i:                            ; preds = %if.else162.i.i.i164.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i165.i = trunc i64 %15 to i32
  %div172.i.i.i166.i = udiv i32 %conv169.i.i.i165.i, %14
  br label %bytes_to_bits.exit.i

if.else174.i.i.i169.i:                            ; preds = %if.else162.i.i.i164.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %15) #21, !srcloc !162
  %asmresult1.i.i.i.i168.i = extractvalue { i64, i64 } %17, 1
  %extract.t2.i.i = trunc i64 %asmresult1.i.i.i.i168.i to i32
  br label %bytes_to_bits.exit.i

bytes_to_bits.exit.i:                             ; preds = %if.else174.i.i.i169.i, %if.then168.i.i.i167.i
  %dividend.addr.0.i.i.off0.i170.i = phi i32 [ %div172.i.i.i166.i, %if.then168.i.i.i167.i ], [ %extract.t2.i.i, %if.else174.i.i.i169.i ]
  %add.i = add i32 %dividend.addr.0.i.i.off0.i170.i, %dividend.addr.0.i.i.off0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %add.i)
  %cmp.i23 = icmp ult i32 %add.i, 32769
  br i1 %cmp.i23, label %cond.end.i, label %cond.false.i, !prof !155

cond.false.i:                                     ; preds = %bytes_to_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.56, i32 noundef 1865) #19
  unreachable

cond.end.i:                                       ; preds = %bytes_to_bits.exit.i
  %bitmap.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 5
  %18 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bitmap.i, align 8
  tail call void @__bitmap_set(ptr noundef %19, i32 noundef %dividend.addr.0.i.i.off0.i.i, i32 noundef %dividend.addr.0.i.i.off0.i170.i) #14
  %max_extent_size.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 4
  %20 = ptrtoint ptr %max_extent_size.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %max_extent_size.i, align 8
  %bytes5.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 3
  %21 = ptrtoint ptr %bytes5.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes5.i, align 8
  %add6.i = add i64 %22, %15
  store i64 %add6.i, ptr %bytes5.i, align 8
  %free_space.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 3
  %23 = ptrtoint ptr %free_space.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %free_space.i, align 8
  %add7.i = add i64 %24, %15
  store i64 %add7.i, ptr %free_space.i, align 8
  tail call fastcc void @relink_bitmap_entry(ptr noundef %ctl, ptr noundef %info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dividend.addr.0.i.i.off0.i.i)
  %tobool8.not.i = icmp eq i32 %dividend.addr.0.i.i.off0.i.i, 0
  br i1 %tobool8.not.i, label %cond.end.i.if.end.i_crit_edge, label %land.lhs.true.i

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add i32 %dividend.addr.0.i.i.off0.i.i, -1
  %25 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bitmap.i, align 8
  %div3.i.i = lshr i32 %sub.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %26, i32 %div3.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %sub.i, 31
  %29 = xor i32 %28, -1
  %30 = lshr i32 %29, %and.i.i
  %31 = and i32 %30, 1
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %cond.end.i.if.end.i_crit_edge
  %extent_delta.0.i = phi i32 [ 1, %cond.end.i.if.end.i_crit_edge ], [ %31, %land.lhs.true.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add.i)
  %cmp12.i = icmp ult i32 %add.i, 32768
  br i1 %cmp12.i, label %land.lhs.true13.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

land.lhs.true13.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bitmap.i, align 8
  %div3.i53.i = lshr i32 %add.i, 5
  %arrayidx.i54.i = getelementptr i32, ptr %33, i32 %div3.i53.i
  %34 = ptrtoint ptr %arrayidx.i54.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i54.i, align 4
  %and.i55.i = and i32 %add.i, 31
  %36 = shl nuw i32 1, %and.i55.i
  %37 = and i32 %35, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool16.not.i = icmp ne i32 %37, 0
  %dec18.i = sext i1 %tobool16.not.i to i32
  %spec.select52.i = add nsw i32 %extent_delta.0.i, %dec18.i
  br label %if.end19.i

if.end19.i:                                       ; preds = %land.lhs.true13.i, %if.end.i.if.end19.i_crit_edge
  %extent_delta.1.i = phi i32 [ %extent_delta.0.i, %if.end.i.if.end19.i_crit_edge ], [ %spec.select52.i, %land.lhs.true13.i ]
  %bitmap_extents.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 8
  %38 = ptrtoint ptr %bitmap_extents.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bitmap_extents.i, align 8
  %add20.i = add i32 %39, %extent_delta.1.i
  store i32 %add20.i, ptr %bitmap_extents.i, align 8
  %trim_state.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 7
  %40 = ptrtoint ptr %trim_state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %trim_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i171.i = icmp eq i32 %41, 1
  br i1 %cmp.i171.i, label %if.end19.i.bitmap_set_bits.exit_crit_edge, label %if.then22.i

if.end19.i.bitmap_set_bits.exit_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bitmap_set_bits.exit

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  %discardable_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 9
  %42 = ptrtoint ptr %discardable_extents.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %discardable_extents.i, align 8
  %add23.i = add i32 %43, %extent_delta.1.i
  store i32 %add23.i, ptr %discardable_extents.i, align 8
  %discardable_bytes.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 10
  %44 = ptrtoint ptr %discardable_bytes.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %discardable_bytes.i, align 8
  %add25.i = add i64 %45, %15
  store i64 %add25.i, ptr %discardable_bytes.i, align 8
  br label %bitmap_set_bits.exit

bitmap_set_bits.exit:                             ; preds = %if.then22.i, %if.end19.i.bitmap_set_bits.exit_crit_edge
  ret i64 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @test_check_exists(ptr nocapture noundef readonly %cache, i64 noundef %offset, i64 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  %bit_off = alloca i64, align 8
  %bit_bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %call = tail call fastcc ptr @tree_search_offset(ptr noundef %1, i64 noundef %offset, i32 noundef 0, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %unit.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unit.i, align 4
  %mul.i = shl i32 %3, 15
  %conv.i = zext i32 %mul.i to i64
  %start.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start.i, align 8
  %sub.i = sub i64 %offset, %5
  %call.i = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %conv.i) #14
  %mul1.i = mul i64 %call.i, %conv.i
  %6 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start.i, align 8
  %add.i = add i64 %mul1.i, %7
  %free_space_offset.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %free_space_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %n.0252.i = load ptr, ptr %free_space_offset.i, align 4
  %tobool.not253.i = icmp eq ptr %n.0252.i, null
  br i1 %tobool.not253.i, label %if.then.out_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %n.0254.i = phi ptr [ %n.0.i, %if.end7.i.while.body.i_crit_edge ], [ %n.0252.i, %if.then.while.body.i_crit_edge ]
  %offset2.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 2
  %9 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %offset2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %add.i)
  %cmp.i = icmp ugt i64 %10, %add.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 2
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %add.i)
  %cmp4.i = icmp ult i64 %10, %add.i
  br i1 %cmp4.i, label %if.then5.i, label %while.end.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0254.i, i32 0, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %11 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end7.i.out_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.end.i:                                      ; preds = %if.else.i
  %bitmap54.i = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0254.i, i32 0, i32 5
  %12 = ptrtoint ptr %bitmap54.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bitmap54.i, align 8
  %tobool55.not.i = icmp eq ptr %13, null
  br i1 %tobool55.not.i, label %if.end15.i, label %while.end.i.if.end5_crit_edge

while.end.i.if.end5_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end15.i:                                       ; preds = %while.end.i
  %call.i132 = tail call ptr @rb_next(ptr noundef nonnull %n.0254.i) #14
  %tobool16.not.i = icmp eq ptr %call.i132, null
  br i1 %tobool16.not.i, label %if.end15.i.out_crit_edge, label %if.end18.i

if.end15.i.out_crit_edge:                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end18.i:                                       ; preds = %if.end15.i
  %offset22.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i132, i32 0, i32 2
  %14 = ptrtoint ptr %offset22.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset22.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %add.i)
  %cmp23.not.i = icmp eq i64 %15, %add.i
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end18.i.out_crit_edge

if.end18.i.out_crit_edge:                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end25.i:                                       ; preds = %if.end18.i
  %bitmap26.i = getelementptr inbounds %struct.btrfs_free_space, ptr %call.i132, i32 0, i32 5
  %16 = ptrtoint ptr %bitmap26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitmap26.i, align 8
  %tobool27.not.i = icmp eq ptr %17, null
  br i1 %tobool27.not.i, label %do.end.i, label %if.end25.i.if.end5_crit_edge, !prof !160

if.end25.i.if.end5_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

do.end.i:                                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1690, i32 noundef 9, ptr noundef null) #14
  br label %if.end5

if.end5:                                          ; preds = %do.end.i, %if.end25.i.if.end5_crit_edge, %while.end.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %info.0 = phi ptr [ %call, %entry.if.end5_crit_edge ], [ %n.0254.i, %while.end.i.if.end5_crit_edge ], [ %call.i132, %do.end.i ], [ %call.i132, %if.end25.i.if.end5_crit_edge ]
  %bitmap153 = getelementptr inbounds %struct.btrfs_free_space, ptr %info.0, i32 0, i32 5
  %18 = ptrtoint ptr %bitmap153 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bitmap153, align 8
  %tobool6.not154 = icmp eq ptr %19, null
  br i1 %tobool6.not154, label %if.end5.if.end66_crit_edge, label %if.then7.lr.ph

if.end5.if.end66_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then7.lr.ph:                                   ; preds = %if.end5
  %unit = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 7
  %add = add i64 %bytes, %offset
  br label %if.then7

if.then7:                                         ; preds = %cleanup.if.then7_crit_edge, %if.then7.lr.ph
  %info.1155 = phi ptr [ %info.0, %if.then7.lr.ph ], [ %info.2, %cleanup.if.then7_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bit_off) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bit_bytes) #14
  %20 = ptrtoint ptr %bit_off to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %offset, ptr %bit_off, align 8
  %21 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unit, align 4
  %conv = sext i32 %22 to i64
  %23 = ptrtoint ptr %bit_bytes to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %bit_bytes, align 8
  %call8 = call fastcc i32 @search_bitmap(ptr noundef %1, ptr noundef nonnull %info.1155, ptr noundef nonnull %bit_off, ptr noundef nonnull %bit_bytes, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.if.end20_crit_edge

if.then7.if.end20_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then10:                                        ; preds = %if.then7
  %24 = ptrtoint ptr %bit_off to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bit_off, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %offset)
  %cmp = icmp eq i64 %25, %offset
  br i1 %cmp, label %if.then10.cleanup.thread_crit_edge, label %if.else

if.then10.cleanup.thread_crit_edge:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %offset)
  %cmp13 = icmp ugt i64 %25, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %25)
  %cmp15 = icmp ugt i64 %add, %25
  %or.cond = and i1 %cmp13, %cmp15
  br i1 %or.cond, label %if.else.cleanup.thread_crit_edge, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.then7.if.end20_crit_edge
  %call21 = tail call ptr @rb_prev(ptr noundef nonnull %info.1155) #14
  %tobool22.not149 = icmp eq ptr %call21, null
  br i1 %tobool22.not149, label %if.end20.while.end_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  br label %while.body

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.then35.while.body_crit_edge, %if.end20.while.body_crit_edge
  %n.0150 = phi ptr [ %call37, %if.then35.while.body_crit_edge ], [ %call21, %if.end20.while.body_crit_edge ]
  %offset24 = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0150, i32 0, i32 2
  %26 = ptrtoint ptr %offset24 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %offset24, align 8
  %bytes25 = getelementptr inbounds %struct.btrfs_free_space, ptr %n.0150, i32 0, i32 3
  %28 = ptrtoint ptr %bytes25 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bytes25, align 8
  %add26 = add i64 %29, %27
  call void @__sanitizer_cov_trace_cmp8(i64 %add26, i64 %offset)
  %cmp27 = icmp ult i64 %add26, %offset
  br i1 %cmp27, label %while.body.while.end_crit_edge, label %if.end30

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end30:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %27)
  %cmp33 = icmp ult i64 %add, %27
  br i1 %cmp33, label %if.then35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then35:                                        ; preds = %if.end30
  %call37 = tail call ptr @rb_prev(ptr noundef nonnull %n.0150) #14
  %tobool22.not = icmp eq ptr %call37, null
  br i1 %tobool22.not, label %if.then35.while.end_crit_edge, label %if.then35.while.body_crit_edge

if.then35.while.body_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.then35.while.end_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.then35.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end20.while.end_crit_edge
  %call40 = tail call ptr @rb_next(ptr noundef %info.1155) #14
  %tobool42.not151 = icmp eq ptr %call40, null
  br i1 %tobool42.not151, label %while.end.cleanup.thread_crit_edge, label %while.end.while.body43_crit_edge

while.end.while.body43_crit_edge:                 ; preds = %while.end
  br label %while.body43

while.end.cleanup.thread_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

while.body43:                                     ; preds = %if.then58.while.body43_crit_edge, %while.end.while.body43_crit_edge
  %n.1152 = phi ptr [ %call60, %if.then58.while.body43_crit_edge ], [ %call40, %while.end.while.body43_crit_edge ]
  %offset48 = getelementptr inbounds %struct.btrfs_free_space, ptr %n.1152, i32 0, i32 2
  %30 = ptrtoint ptr %offset48 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %offset48, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %31)
  %cmp49 = icmp ult i64 %add, %31
  br i1 %cmp49, label %while.body43.cleanup.thread_crit_edge, label %if.end52

while.body43.cleanup.thread_crit_edge:            ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end52:                                         ; preds = %while.body43
  %bytes54 = getelementptr inbounds %struct.btrfs_free_space, ptr %n.1152, i32 0, i32 3
  %32 = ptrtoint ptr %bytes54 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bytes54, align 8
  %add55 = add i64 %33, %31
  call void @__sanitizer_cov_trace_cmp8(i64 %add55, i64 %offset)
  %cmp56 = icmp ult i64 %add55, %offset
  br i1 %cmp56, label %if.then58, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then58:                                        ; preds = %if.end52
  %call60 = tail call ptr @rb_next(ptr noundef nonnull %n.1152) #14
  %tobool42.not = icmp eq ptr %call60, null
  br i1 %tobool42.not, label %if.then58.cleanup.thread_crit_edge, label %if.then58.while.body43_crit_edge

if.then58.while.body43_crit_edge:                 ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body43

if.then58.cleanup.thread_crit_edge:               ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then58.cleanup.thread_crit_edge, %while.body43.cleanup.thread_crit_edge, %while.end.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge, %if.then10.cleanup.thread_crit_edge
  %ret.1.ph = phi i32 [ 0, %while.body43.cleanup.thread_crit_edge ], [ 0, %if.then58.cleanup.thread_crit_edge ], [ 0, %while.end.cleanup.thread_crit_edge ], [ 1, %if.else.cleanup.thread_crit_edge ], [ 1, %if.then10.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bit_bytes) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bit_off) #14
  br label %out

cleanup:                                          ; preds = %if.end52.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %info.2 = phi ptr [ %n.1152, %if.end52.cleanup_crit_edge ], [ %n.0150, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bit_bytes) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bit_off) #14
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %info.2, i32 0, i32 5
  %34 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bitmap, align 8
  %tobool6.not = icmp eq ptr %35, null
  br i1 %tobool6.not, label %cleanup.if.end66_crit_edge, label %cleanup.if.then7_crit_edge

cleanup.if.then7_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

cleanup.if.end66_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.end66:                                         ; preds = %cleanup.if.end66_crit_edge, %if.end5.if.end66_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end5.if.end66_crit_edge ], [ %call8, %cleanup.if.end66_crit_edge ]
  %info.1.lcssa = phi ptr [ %info.0, %if.end5.if.end66_crit_edge ], [ %info.2, %cleanup.if.end66_crit_edge ]
  %offset67 = getelementptr inbounds %struct.btrfs_free_space, ptr %info.1.lcssa, i32 0, i32 2
  %36 = ptrtoint ptr %offset67 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %offset67, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %offset)
  %cmp68 = icmp eq i64 %37, %offset
  br i1 %cmp68, label %if.end66.out_crit_edge, label %if.end71

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end71:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %offset)
  %cmp73 = icmp ult i64 %37, %offset
  br i1 %cmp73, label %land.lhs.true75, label %if.end71.out_crit_edge

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true75:                                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %bytes77 = getelementptr inbounds %struct.btrfs_free_space, ptr %info.1.lcssa, i32 0, i32 3
  %38 = ptrtoint ptr %bytes77 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %bytes77, align 8
  %add78 = add i64 %39, %37
  call void @__sanitizer_cov_trace_cmp8(i64 %add78, i64 %offset)
  %cmp79 = icmp ugt i64 %add78, %offset
  %spec.select = select i1 %cmp79, i32 1, i32 %ret.0.lcssa
  br label %out

out:                                              ; preds = %land.lhs.true75, %if.end71.out_crit_edge, %if.end66.out_crit_edge, %cleanup.thread, %if.end18.i.out_crit_edge, %if.end15.i.out_crit_edge, %if.end7.i.out_crit_edge, %if.then.out_crit_edge
  %ret.2 = phi i32 [ %ret.0.lcssa, %if.end71.out_crit_edge ], [ 1, %if.end66.out_crit_edge ], [ %spec.select, %land.lhs.true75 ], [ %ret.1.ph, %cleanup.thread ], [ 0, %if.end15.i.out_crit_edge ], [ 0, %if.end18.i.out_crit_edge ], [ 0, %if.then.out_crit_edge ], [ 0, %if.end7.i.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %1) #14
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @search_bitmap(ptr noundef %ctl, ptr noundef %bitmap_info, ptr nocapture noundef %offset, ptr nocapture noundef %bytes, i1 noundef zeroext %for_alloc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %for_alloc, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %max_extent_size = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info, i32 0, i32 4
  %0 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %max_extent_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool1.not = icmp eq i64 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %1, ptr %bytes, align 8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %offset5 = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info, i32 0, i32 2
  %5 = ptrtoint ptr %offset5 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %offset5, align 8
  %unit = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  %7 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %unit, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %offset, align 8
  %11 = tail call i64 @llvm.usub.sat.i64(i64 %10, i64 %6)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %11)
  %cmp164.i.i.i = icmp ult i64 %11, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !155

if.then168.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i = trunc i64 %11 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %8
  br label %if.else162.i.i.i191

if.else174.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %11) #21, !srcloc !162
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %12, 1
  %extract.t6.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.else162.i.i.i191

if.else162.i.i.i191:                              ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t6.i, %if.else174.i.i.i ]
  %13 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %14)
  %cmp164.i.i.i190 = icmp ult i64 %14, 4294967296
  br i1 %cmp164.i.i.i190, label %if.then168.i.i.i194, label %if.else174.i.i.i196, !prof !155

if.then168.i.i.i194:                              ; preds = %if.else162.i.i.i191
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i192 = trunc i64 %14 to i32
  %div172.i.i.i193 = udiv i32 %conv169.i.i.i192, %8
  br label %bytes_to_bits.exit

if.else174.i.i.i196:                              ; preds = %if.else162.i.i.i191
  call void @__sanitizer_cov_trace_pc() #16
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %14) #21, !srcloc !162
  %asmresult1.i.i.i.i195 = extractvalue { i64, i64 } %15, 1
  %extract.t2.i = trunc i64 %asmresult1.i.i.i.i195 to i32
  br label %bytes_to_bits.exit

bytes_to_bits.exit:                               ; preds = %if.else174.i.i.i196, %if.then168.i.i.i194
  %dividend.addr.0.i.i.off0.i197 = phi i32 [ %div172.i.i.i193, %if.then168.i.i.i194 ], [ %extract.t2.i, %if.else174.i.i.i196 ]
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info, i32 0, i32 5
  %16 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitmap, align 8
  %call10 = tail call i32 @_find_next_bit_be(ptr noundef %17, i32 noundef 32768, i32 noundef %dividend.addr.0.i.i.off0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call10)
  %cmp11213 = icmp ult i32 %call10, 32768
  br i1 %cmp11213, label %for.body.lr.ph, label %bytes_to_bits.exit.if.end36_crit_edge

bytes_to_bits.exit.if.end36_crit_edge:            ; preds = %bytes_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

for.body.lr.ph:                                   ; preds = %bytes_to_bits.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dividend.addr.0.i.i.off0.i197)
  %cmp14 = icmp eq i32 %dividend.addr.0.i.i.off0.i197, 1
  %or.cond = select i1 %for_alloc, i1 %cmp14, i1 false
  br label %for.body

for.body:                                         ; preds = %if.else.for.body_crit_edge, %for.body.lr.ph
  %i.0215 = phi i32 [ %call10, %for.body.lr.ph ], [ %call26, %if.else.for.body_crit_edge ]
  %max_bits.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %20, %if.else.for.body_crit_edge ]
  br i1 %or.cond, label %for.body.if.then28_crit_edge, label %if.end16

for.body.if.then28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

if.end16:                                         ; preds = %for.body
  %18 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bitmap, align 8
  %call18 = tail call i32 @_find_next_zero_bit_be(ptr noundef %19, i32 noundef 32768, i32 noundef %i.0215) #14
  %sub = sub i32 %call18, %i.0215
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %dividend.addr.0.i.i.off0.i197)
  %cmp19.not = icmp ult i32 %sub, %dividend.addr.0.i.i.off0.i197
  br i1 %cmp19.not, label %if.else, label %for.end

if.else:                                          ; preds = %if.end16
  %20 = tail call i32 @llvm.umax.i32(i32 %sub, i32 %max_bits.0214)
  %21 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bitmap, align 8
  %add = add i32 %call18, 1
  %call26 = tail call i32 @_find_next_bit_be(ptr noundef %22, i32 noundef 32768, i32 noundef %add) #14
  %cmp11 = icmp ult i32 %call26, 32768
  br i1 %cmp11, label %if.else.for.body_crit_edge, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.else.for.body_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool27.not = icmp eq i32 %sub, 0
  br i1 %tobool27.not, label %for.end.if.end36_crit_edge, label %for.end.if.then28_crit_edge

for.end.if.then28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then28:                                        ; preds = %for.end.if.then28_crit_edge, %for.body.if.then28_crit_edge
  %i.0215220 = phi i32 [ %i.0215, %for.end.if.then28_crit_edge ], [ %call10, %for.body.if.then28_crit_edge ]
  %found_bits.0206 = phi i32 [ %sub, %for.end.if.then28_crit_edge ], [ 1, %for.body.if.then28_crit_edge ]
  %23 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %unit, align 4
  %mul = mul i32 %24, %i.0215220
  %conv = zext i32 %mul to i64
  %25 = ptrtoint ptr %offset5 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %offset5, align 8
  %add31 = add i64 %26, %conv
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add31, ptr %offset, align 8
  %conv32 = zext i32 %found_bits.0206 to i64
  %28 = load i32, ptr %unit, align 4
  %conv34 = sext i32 %28 to i64
  %mul35 = mul nsw i64 %conv34, %conv32
  %29 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %mul35, ptr %bytes, align 8
  br label %cleanup

if.end36:                                         ; preds = %for.end.if.end36_crit_edge, %if.else.if.end36_crit_edge, %bytes_to_bits.exit.if.end36_crit_edge
  %max_bits.0212 = phi i32 [ %max_bits.0214, %for.end.if.end36_crit_edge ], [ 0, %bytes_to_bits.exit.if.end36_crit_edge ], [ %20, %if.else.if.end36_crit_edge ]
  %conv37 = zext i32 %max_bits.0212 to i64
  %30 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %unit, align 4
  %conv39 = sext i32 %31 to i64
  %mul40 = mul nsw i64 %conv39, %conv37
  %32 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %mul40, ptr %bytes, align 8
  %max_extent_size41 = getelementptr inbounds %struct.btrfs_free_space, ptr %bitmap_info, i32 0, i32 4
  %33 = ptrtoint ptr %max_extent_size41 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %mul40, ptr %max_extent_size41, align 8
  tail call fastcc void @relink_bitmap_entry(ptr noundef %ctl, ptr noundef %bitmap_info)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then28, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then28 ], [ -1, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_iget_path(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_inode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memzero_extent_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !172
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %1 = tail call ptr @llvm.returnaddress(i32 0) #14
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #14
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !173
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !160

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !174
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !175
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !176
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !177
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !178
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @io_ctl_prepare_pages(ptr nocapture noundef %io_ctl, i1 noundef zeroext %uptodate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 5
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %gfp_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gfp_mask.i.i.i, align 4
  %and.i.i = and i32 %5, -129
  %num_pages = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 8
  %6 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp137 = icmp sgt i32 %7, 0
  br i1 %cmp137, label %for.body.lr.ph, label %entry.cleanup36_crit_edge

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

for.body.lr.ph:                                   ; preds = %entry
  %pages = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 3
  br label %for.body

for.cond26.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp28139 = icmp sgt i32 %68, 0
  br i1 %cmp28139, label %for.body29.lr.ph, label %for.cond26.preheader.cleanup36_crit_edge

for.cond26.preheader.cleanup36_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

for.body29.lr.ph:                                 ; preds = %for.cond26.preheader
  %pages30 = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 3
  br label %for.body29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %9, i32 noundef %i.0138, i32 noundef 7, i32 noundef %and.i.i) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.cleanup36.sink.split_crit_edge, label %if.end

for.body.cleanup36.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36.sink.split

if.end:                                           ; preds = %for.body
  %call4 = tail call i32 @set_page_extent_mapped(ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @unlock_page(ptr noundef nonnull %call.i) #14
  %10 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i68 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i68)
  %tobool.not.i.i = icmp eq i32 %and.i.i68, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !155

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !160

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.36) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !179
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !181
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@io_ctl_prepare_pages, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !159

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup36.sink.split_crit_edge

folio_put_testzero.exit.i.i.cleanup36.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36.sink.split

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %14) #14
  br label %cleanup36.sink.split

if.end7:                                          ; preds = %if.end
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %19, i32 %i.0138
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %arrayidx, align 4
  br i1 %uptodate, label %land.lhs.true, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end7
  %21 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i69 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i69)
  %tobool.not.i.i70 = icmp eq i32 %and.i.i69, 0
  br i1 %tobool.not.i.i70, label %if.end.i.i73, label %if.then.i.i72, !prof !155

if.then.i.i72:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i71 = add i32 %23, -1
  br label %_compound_head.exit.i75

if.end.i.i73:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i75

_compound_head.exit.i75:                          ; preds = %if.end.i.i73, %if.then.i.i72
  %retval.0.i.i74 = phi i32 [ %sub.i.i71, %if.then.i.i72 ], [ %24, %if.end.i.i73 ]
  %25 = inttoptr i32 %retval.0.i.i74 to ptr
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !155

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i75
  call void @__sanitizer_cov_trace_pc() #16
  %29 = inttoptr i32 %retval.0.i.i74 to ptr
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.37) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !183
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i75
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %25, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i, label %if.then11, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !184
  br label %for.inc

if.then11:                                        ; preds = %folio_flags.exit.i.i
  %call12 = tail call i32 @btrfs_readpage(ptr noundef null, ptr noundef nonnull %call.i) #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.39, i32 noundef 788) #14
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %21, align 4
  %and.i.i76 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %and.i.i76, 0
  br i1 %tobool.not.i.i77, label %if.end.i.i80, label %if.then.i.i79, !prof !155

if.then.i.i79:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i78 = add i32 %34, -1
  br label %_compound_head.exit.i84

if.end.i.i80:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i84

_compound_head.exit.i84:                          ; preds = %if.end.i.i80, %if.then.i.i79
  %retval.0.i.i81 = phi i32 [ %sub.i.i78, %if.then.i.i79 ], [ %35, %if.end.i.i80 ]
  %36 = inttoptr i32 %retval.0.i.i81 to ptr
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i.i.i82 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i82)
  %tobool.not.i.i.i83 = icmp eq i32 %and.i.i.i.i82, 0
  br i1 %tobool.not.i.i.i83, label %folio_flags.exit.i.i86, label %if.then.i.i.i85, !prof !155

if.then.i.i.i85:                                  ; preds = %_compound_head.exit.i84
  call void @__sanitizer_cov_trace_pc() #16
  %40 = inttoptr i32 %retval.0.i.i81 to ptr
  tail call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.37) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !183
  unreachable

folio_flags.exit.i.i86:                           ; preds = %_compound_head.exit.i84
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %36, i32 noundef 4) #14
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %36, align 4
  %and.i.i4.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i86.if.then.i_crit_edge

folio_flags.exit.i.i86.if.then.i_crit_edge:       ; preds = %folio_flags.exit.i.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i86
  tail call void @llvm.prefetch.p0(ptr %36, i32 1, i32 3, i32 1) #14
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #14, !srcloc !185
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !186
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i86.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %36) #14
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %mapping = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mapping, align 4
  %46 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_mapping, align 8
  %cmp14.not = icmp eq ptr %45, %47
  br i1 %cmp14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %1, i32 -864
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fs_info, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %51, ptr noundef nonnull @.str.34) #17
  br label %cleanup36.sink.split

if.end17:                                         ; preds = %lock_page.exit
  %52 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %21, align 4
  %and.i.i87 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i87)
  %tobool.not.i.i88 = icmp eq i32 %and.i.i87, 0
  br i1 %tobool.not.i.i88, label %if.end.i.i91, label %if.then.i.i90, !prof !155

if.then.i.i90:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i89 = add i32 %53, -1
  br label %_compound_head.exit.i95

if.end.i.i91:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i95

_compound_head.exit.i95:                          ; preds = %if.end.i.i91, %if.then.i.i90
  %retval.0.i.i92 = phi i32 [ %sub.i.i89, %if.then.i.i90 ], [ %54, %if.end.i.i91 ]
  %55 = inttoptr i32 %retval.0.i.i92 to ptr
  %56 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %and.i.i.i.i93 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i93)
  %tobool.not.i.i.i94 = icmp eq i32 %and.i.i.i.i93, 0
  br i1 %tobool.not.i.i.i94, label %folio_flags.exit.i.i98, label %if.then.i.i.i96, !prof !155

if.then.i.i.i96:                                  ; preds = %_compound_head.exit.i95
  call void @__sanitizer_cov_trace_pc() #16
  %59 = inttoptr i32 %retval.0.i.i92 to ptr
  tail call void @dump_page(ptr noundef %59, ptr noundef nonnull @.str.37) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !183
  unreachable

folio_flags.exit.i.i98:                           ; preds = %_compound_head.exit.i95
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %55, align 4
  %62 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not.i97 = icmp eq i32 %62, 0
  br i1 %tobool.i.not.i97, label %if.then20, label %PageUptodate.exit101

PageUptodate.exit101:                             ; preds = %folio_flags.exit.i.i98
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !184
  br label %for.inc

if.then20:                                        ; preds = %folio_flags.exit.i.i98
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i102 = getelementptr i8, ptr %1, i32 -864
  %63 = ptrtoint ptr %add.ptr.i102 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i102, align 8
  %fs_info23 = getelementptr inbounds %struct.btrfs_root, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %fs_info23 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fs_info23, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %66, ptr noundef nonnull @.str.35) #17
  br label %cleanup36.sink.split

for.inc:                                          ; preds = %PageUptodate.exit101, %PageUptodate.exit, %if.end7.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0138, 1
  %67 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_pages, align 4
  %cmp = icmp slt i32 %inc, %68
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.cond26.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.body29.lr.ph
  %i.1140 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc34, %for.body29.for.body29_crit_edge ]
  %69 = ptrtoint ptr %pages30 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pages30, align 4
  %arrayidx31 = getelementptr ptr, ptr %70, i32 %i.1140
  %71 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx31, align 4
  %call32 = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %72) #14
  %inc34 = add nuw nsw i32 %i.1140, 1
  %73 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_pages, align 4
  %cmp28 = icmp slt i32 %inc34, %74
  br i1 %cmp28, label %for.body29.for.body29_crit_edge, label %for.body29.cleanup36_crit_edge

for.body29.cleanup36_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body29

cleanup36.sink.split:                             ; preds = %if.then20, %if.then15, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup36.sink.split_crit_edge, %for.body.cleanup36.sink.split_crit_edge
  %retval.2.ph = phi i32 [ -5, %if.then15 ], [ -5, %if.then20 ], [ %call4, %folio_put_testzero.exit.i.i.cleanup36.sink.split_crit_edge ], [ %call4, %if.then.i4.i ], [ -12, %for.body.cleanup36.sink.split_crit_edge ]
  tail call fastcc void @io_ctl_drop_pages(ptr noundef %io_ctl)
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup36.sink.split, %for.body29.cleanup36_crit_edge, %for.cond26.preheader.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.2 = phi i32 [ 0, %for.cond26.preheader.cleanup36_crit_edge ], [ 0, %entry.cleanup36_crit_edge ], [ %retval.2.ph, %cleanup36.sink.split ], [ 0, %for.body29.cleanup36_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @io_ctl_check_crc(ptr nocapture noundef %io_ctl, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %num_pages = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 8
  %0 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages, align 4
  %mul = shl i32 %1, 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %offset.0 = phi i32 [ %mul, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %pages = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 3
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call ptr @page_address(ptr noundef %5) #14
  %index.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 7
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %num_pages.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 8
  %8 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp slt i32 %7, %9
  br i1 %cmp.i, label %io_ctl_map_page.exit, label %cond.false.i, !prof !155

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.42, i32 noundef 415) #19
  unreachable

io_ctl_map_page.exit:                             ; preds = %if.end
  %add.ptr = getelementptr i32, ptr %call, i32 %index
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages, align 4
  %inc.i = add nsw i32 %7, 1
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i, ptr %index.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %7
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %page.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 2
  %17 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %page.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %16) #14
  %18 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %io_ctl, align 4
  %orig.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 1
  %19 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %orig.i, align 4
  %size.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 6
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4096, ptr %size.i, align 4
  %add.ptr1 = getelementptr i8, ptr %call.i, i32 %offset.0
  %sub = sub i32 4096, %offset.0
  %call.i20 = tail call i32 @crc32c(i32 noundef -1, ptr noundef %add.ptr1, i32 noundef %sub) #14
  %neg.i = xor i32 %call.i20, -1
  %21 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %21)
  %cmp3.not = icmp eq i32 %11, %21
  br i1 %cmp3.not, label %io_ctl_map_page.exit.cleanup_crit_edge, label %do.body

io_ctl_map_page.exit.cleanup_crit_edge:           ; preds = %io_ctl_map_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %io_ctl_map_page.exit
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @io_ctl_check_crc._rs, ptr noundef nonnull @__func__.io_ctl_check_crc) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then6

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 4
  %22 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fs_info, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %23, ptr noundef nonnull @.str.41) #17
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body.do.end_crit_edge
  %24 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_ctl, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.then.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %io_ctl, align 4
  %27 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %orig.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end.cleanup_crit_edge, %io_ctl_map_page.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %io_ctl_map_page.exit.cleanup_crit_edge ], [ -5, %do.end.cleanup_crit_edge ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @io_ctl_check_generation(ptr nocapture noundef %io_ctl, i64 noundef %generation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pages = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 8
  %0 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages, align 4
  %mul = shl i32 %1, 2
  %2 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_ctl, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  store ptr %add.ptr, ptr %io_ctl, align 4
  %mul2.neg = mul i32 %1, -4
  %add.neg = add i32 %mul2.neg, -8
  %size = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 6
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %sub = add i32 %add.neg, %5
  store i32 %sub, ptr %size, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %add.ptr, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %generation)
  %cmp.not = icmp eq i64 %8, %generation
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @io_ctl_check_generation._rs, ptr noundef nonnull @__func__.io_ctl_check_generation) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then5

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 4
  %9 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %10, ptr noundef nonnull @.str.43, i64 noundef %8, i64 noundef %generation) #17
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  %11 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_ctl, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.then.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %io_ctl, align 4
  %orig.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 1
  %14 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %orig.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 8
  %15 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr8, ptr %io_ctl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -5, %do.end.cleanup_crit_edge ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @io_ctl_read_entry(ptr nocapture noundef %io_ctl, ptr nocapture noundef writeonly %entry1, ptr nocapture noundef writeonly %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_ctl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 7
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %call = tail call fastcc i32 @io_ctl_check_crc(ptr noundef %io_ctl, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %4 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_ctl, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %5, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #14
  %offset7 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1, i32 0, i32 2
  %9 = ptrtoint ptr %offset7 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %offset7, align 8
  %bytes = getelementptr inbounds %struct.btrfs_free_space_entry, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %bytes to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %bytes, align 1
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #14
  %bytes9 = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1, i32 0, i32 3
  %13 = ptrtoint ptr %bytes9 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %bytes9, align 8
  %type10 = getelementptr inbounds %struct.btrfs_free_space_entry, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %type10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type10, align 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %type, align 1
  %17 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_ctl, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 17
  store ptr %add.ptr, ptr %io_ctl, align 4
  %size = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 6
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %sub = add i32 %20, -17
  store i32 %sub, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp = icmp ugt i32 %sub, 16
  %tobool.not.i = icmp eq ptr %add.ptr, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %if.end4.cleanup_crit_edge, label %if.then.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %io_ctl, align 4
  %orig.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 1
  %22 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %orig.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @io_ctl_read_bitmap(ptr nocapture noundef %io_ctl, ptr nocapture noundef readonly %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 7
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc i32 @io_ctl_check_crc(ptr noundef %io_ctl, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %entry1, i32 0, i32 5
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bitmap, align 8
  %4 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_ctl, align 4
  tail call void @copy_page(ptr noundef %3, ptr noundef %5) #14
  %6 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_ctl, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %io_ctl, align 4
  %orig.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 1
  %9 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %orig.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @io_ctl_drop_pages(ptr nocapture noundef %io_ctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_ctl, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.io_ctl_unmap_page.exit_crit_edge, label %if.then.i

entry.io_ctl_unmap_page.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %io_ctl_unmap_page.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %io_ctl, align 4
  %orig.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 1
  %3 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %orig.i, align 4
  br label %io_ctl_unmap_page.exit

io_ctl_unmap_page.exit:                           ; preds = %if.then.i, %entry.io_ctl_unmap_page.exit_crit_edge
  %num_pages = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 8
  %4 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22 = icmp sgt i32 %5, 0
  br i1 %cmp22, label %for.body.lr.ph, label %io_ctl_unmap_page.exit.for.end_crit_edge

io_ctl_unmap_page.exit.for.end_crit_edge:         ; preds = %io_ctl_unmap_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %io_ctl_unmap_page.exit
  %pages = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 3
  %fs_info = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.023
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  %10 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_info, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %13 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  tail call void @btrfs_page_clear_checked(ptr noundef %11, ptr noundef nonnull %9, i64 noundef %shl.i, i32 noundef 4096) #14
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages, align 4
  %arrayidx6 = getelementptr ptr, ptr %15, i32 %i.023
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6, align 4
  tail call void @unlock_page(ptr noundef %17) #14
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages, align 4
  %arrayidx8 = getelementptr ptr, ptr %19, i32 %i.023
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx8, align 4
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !155

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %24, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %21 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %25, %if.end.i.i ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %27 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !160

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.36) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !179
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !181
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@io_ctl_drop_pages, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !159

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %26, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %26) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %31 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_pages, align 4
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %io_ctl_unmap_page.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @file_ra_state_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_sync_ra(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_extent_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_page_clear_checked(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_cache_item(ptr noundef %trans, ptr noundef %root, ptr noundef %inode, ptr noundef %path, i64 noundef %offset, i32 noundef %entries, i32 noundef %bitmaps) unnamed_addr #5 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -11, ptr %key, align 8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %offset, ptr %1, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %call = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %io_tree = getelementptr i8, ptr %inode, i32 -736
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  %sub = add i64 %6, -1
  %call3 = call i32 @clear_extent_bit(ptr noundef %io_tree, i64 noundef 0, i64 noundef %sub, i32 noundef 16, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  br label %cleanup31

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4.not = icmp eq i32 %call, 0
  br i1 %cmp4.not, label %if.end.if.end24_crit_edge, label %if.then5

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then5:                                         ; preds = %if.end
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %9 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !160

cond.false:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.45, i32 noundef 1132) #20
  unreachable

cond.end:                                         ; preds = %if.then5
  %dec = add i32 %10, -1
  %11 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %12 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %dec, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %13 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %8, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %12, align 1
  %16 = call i64 @llvm.bswap.i64(i64 %15) #14
  %17 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %disk_key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 -720575940379279361, i64 %18)
  %cmp14.not = icmp eq i64 %18, -720575940379279361
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %offset)
  %cmp16.not = icmp eq i64 %16, %offset
  %or.cond = select i1 %cmp14.not, i1 %cmp16.not, i1 false
  br i1 %or.cond, label %cond.end.if.end24_crit_edge, label %cleanup

cond.end.if.end24_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

cleanup:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %io_tree19 = getelementptr i8, ptr %inode, i32 -736
  %i_size20 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %19 = ptrtoint ptr %i_size20 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_size20, align 8
  %sub21 = add i64 %20, -1
  %call22 = call i32 @clear_extent_bit(ptr noundef %io_tree19, i64 noundef 0, i64 noundef %sub21, i32 noundef 16, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  call void @btrfs_release_path(ptr noundef %path) #14
  br label %cleanup31

if.end24:                                         ; preds = %cond.end.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %21 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %trans, align 8
  %generation = getelementptr i8, ptr %inode, i32 -344
  %23 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %generation, align 8
  %slots26 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %24 = ptrtoint ptr %slots26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots26, align 4
  %mul.i.i.i = mul i32 %25, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %26 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %8, ptr noundef %26, i32 noundef 17) #14
  %add = add i32 %call.i.i, 101
  %27 = inttoptr i32 %add to ptr
  %conv = sext i32 %entries to i64
  call void @btrfs_set_64(ptr noundef %8, ptr noundef %27, i32 noundef 25, i64 noundef %conv) #14
  %conv29 = sext i32 %bitmaps to i64
  call void @btrfs_set_64(ptr noundef %8, ptr noundef %27, i32 noundef 33, i64 noundef %conv29) #14
  %28 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %8, ptr noundef %27, i32 noundef 17, i64 noundef %29) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %8) #14
  call void @btrfs_release_path(ptr noundef %path) #14
  br label %cleanup31

cleanup31:                                        ; preds = %if.end24, %cleanup, %if.then
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -1, %cleanup ], [ -1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_wait_ordered_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_cache_extent_entries(ptr nocapture noundef %io_ctl, ptr noundef %ctl, ptr noundef %block_group, ptr nocapture noundef %entries, ptr nocapture noundef %bitmaps, ptr noundef %bitmap_list) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_offset = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 1
  %call = tail call ptr @rb_first(ptr noundef %free_space_offset) #14
  %tobool.not = icmp eq ptr %block_group, null
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end:                                           ; preds = %entry
  %cluster_list = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 27
  %0 = ptrtoint ptr %cluster_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cluster_list, align 4
  %cmp.i.not = icmp eq ptr %1, %cluster_list
  %add.ptr = getelementptr i8, ptr %1, i32 -120
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %land.lhs.true5, label %if.end.while.body.lr.ph_crit_edge

if.end.while.body.lr.ph_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.lr.ph

if.end.thread:                                    ; preds = %entry
  %tobool4.not112 = icmp eq ptr %call, null
  br i1 %tobool4.not112, label %if.end.thread.if.end35_crit_edge, label %if.end.thread.while.body.lr.ph_crit_edge

if.end.thread.while.body.lr.ph_crit_edge:         ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.lr.ph

if.end.thread.if.end35_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true5:                                   ; preds = %if.end
  %tobool6.not = icmp eq ptr %spec.select, null
  br i1 %tobool6.not, label %land.lhs.true5.if.end35_crit_edge, label %if.end9

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.end9:                                          ; preds = %land.lhs.true5
  tail call void @_raw_spin_lock(ptr noundef nonnull %spec.select) #14
  %root = getelementptr inbounds %struct.btrfs_free_cluster, ptr %spec.select, i32 0, i32 2
  %call8 = tail call ptr @rb_first(ptr noundef %root) #14
  %tobool10.not99 = icmp eq ptr %call8, null
  br i1 %tobool10.not99, label %if.end9.if.then33_crit_edge, label %if.end9.while.body.lr.ph_crit_edge

if.end9.while.body.lr.ph_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.lr.ph

if.end9.if.then33_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33

while.body.lr.ph:                                 ; preds = %if.end9.while.body.lr.ph_crit_edge, %if.end.thread.while.body.lr.ph_crit_edge, %if.end.while.body.lr.ph_crit_edge
  %cluster.1128 = phi ptr [ null, %if.end9.while.body.lr.ph_crit_edge ], [ null, %if.end.thread.while.body.lr.ph_crit_edge ], [ %spec.select, %if.end.while.body.lr.ph_crit_edge ]
  %cluster_locked.0127 = phi ptr [ %spec.select, %if.end9.while.body.lr.ph_crit_edge ], [ null, %if.end.thread.while.body.lr.ph_crit_edge ], [ null, %if.end.while.body.lr.ph_crit_edge ]
  %node.0126 = phi ptr [ %call8, %if.end9.while.body.lr.ph_crit_edge ], [ %call, %if.end.thread.while.body.lr.ph_crit_edge ], [ %call, %if.end.while.body.lr.ph_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %bitmap_list, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %cluster.2104 = phi ptr [ %cluster.1128, %while.body.lr.ph ], [ %cluster.4, %cleanup.while.body_crit_edge ]
  %cluster_locked.1103 = phi ptr [ %cluster_locked.0127, %while.body.lr.ph ], [ %cluster_locked.3, %cleanup.while.body_crit_edge ]
  %node.1100 = phi ptr [ %node.0126, %while.body.lr.ph ], [ %node.3, %cleanup.while.body_crit_edge ]
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entries, align 4
  %add = add i32 %3, 1
  store i32 %add, ptr %entries, align 4
  %offset = getelementptr inbounds %struct.btrfs_free_space, ptr %node.1100, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  %bytes = getelementptr inbounds %struct.btrfs_free_space, ptr %node.1100, i32 0, i32 3
  %6 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes, align 8
  %bitmap = getelementptr inbounds %struct.btrfs_free_space, ptr %node.1100, i32 0, i32 5
  %8 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmap, align 8
  %call14 = tail call fastcc i32 @io_ctl_add_entry(ptr noundef %io_ctl, i64 noundef %5, i64 noundef %7, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %fail

if.end17:                                         ; preds = %while.body
  %10 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap, align 8
  %tobool19.not = icmp eq ptr %11, null
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  %list = getelementptr inbounds %struct.btrfs_free_space, ptr %node.1100, i32 0, i32 6
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %13, ptr noundef %bitmap_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then20.list_add_tail.exit_crit_edge

if.then20.list_add_tail.exit_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %bitmap_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %node.1100, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then20.list_add_tail.exit_crit_edge
  %18 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bitmaps, align 4
  %add21 = add i32 %19, 1
  store i32 %add21, ptr %bitmaps, align 4
  br label %if.end22

if.end22:                                         ; preds = %list_add_tail.exit, %if.end17.if.end22_crit_edge
  %call23 = tail call ptr @rb_next(ptr noundef nonnull %node.1100) #14
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %land.lhs.true25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true25:                                  ; preds = %if.end22
  %tobool26.not = icmp eq ptr %cluster.2104, null
  br i1 %tobool26.not, label %land.lhs.true25.while.end_crit_edge, label %if.then27

land.lhs.true25.while.end_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  %root28 = getelementptr inbounds %struct.btrfs_free_cluster, ptr %cluster.2104, i32 0, i32 2
  %call29 = tail call ptr @rb_first(ptr noundef %root28) #14
  tail call void @_raw_spin_lock(ptr noundef nonnull %cluster.2104) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end22.cleanup_crit_edge
  %node.3 = phi ptr [ %call23, %if.end22.cleanup_crit_edge ], [ %call29, %if.then27 ]
  %cluster_locked.3 = phi ptr [ %cluster_locked.1103, %if.end22.cleanup_crit_edge ], [ %cluster.2104, %if.then27 ]
  %cluster.4 = phi ptr [ %cluster.2104, %if.end22.cleanup_crit_edge ], [ null, %if.then27 ]
  %tobool10.not = icmp eq ptr %node.3, null
  br i1 %tobool10.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %land.lhs.true25.while.end_crit_edge
  %cluster_locked.1.lcssa = phi ptr [ %cluster_locked.3, %cleanup.while.end_crit_edge ], [ %cluster_locked.1103, %land.lhs.true25.while.end_crit_edge ]
  %tobool32.not = icmp eq ptr %cluster_locked.1.lcssa, null
  br i1 %tobool32.not, label %while.end.if.end35_crit_edge, label %while.end.if.then33_crit_edge

while.end.if.then33_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33

while.end.if.end35_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then33:                                        ; preds = %while.end.if.then33_crit_edge, %if.end9.if.then33_crit_edge
  %cluster_locked.1.lcssa139 = phi ptr [ %cluster_locked.1.lcssa, %while.end.if.then33_crit_edge ], [ %spec.select, %if.end9.if.then33_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %cluster_locked.1.lcssa139) #14
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %while.end.if.end35_crit_edge, %land.lhs.true5.if.end35_crit_edge, %if.end.thread.if.end35_crit_edge
  %trimming_ranges = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 14
  %20 = ptrtoint ptr %trimming_ranges to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn105 = load ptr, ptr %trimming_ranges, align 4
  %cmp.not106 = icmp eq ptr %.pn105, %trimming_ranges
  br i1 %cmp.not106, label %if.end35.cleanup57_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

if.end35.cleanup57_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

for.body:                                         ; preds = %if.end46.for.body_crit_edge, %if.end35.for.body_crit_edge
  %.pn107 = phi ptr [ %.pn, %if.end46.for.body_crit_edge ], [ %.pn105, %if.end35.for.body_crit_edge ]
  %trim_entry.0 = getelementptr i8, ptr %.pn107, i32 -16
  %21 = ptrtoint ptr %trim_entry.0 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %trim_entry.0, align 8
  %bytes42 = getelementptr i8, ptr %.pn107, i32 -8
  %23 = ptrtoint ptr %bytes42 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bytes42, align 8
  %call43 = tail call fastcc i32 @io_ctl_add_entry(ptr noundef %io_ctl, i64 noundef %22, i64 noundef %24, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %for.body.cleanup57_crit_edge

for.body.cleanup57_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

if.end46:                                         ; preds = %for.body
  %25 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %entries, align 4
  %add47 = add i32 %26, 1
  store i32 %add47, ptr %entries, align 4
  %27 = ptrtoint ptr %.pn107 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn107, align 4
  %cmp.not = icmp eq ptr %.pn, %trimming_ranges
  br i1 %cmp.not, label %if.end46.cleanup57_crit_edge, label %if.end46.for.body_crit_edge

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end46.cleanup57_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

fail:                                             ; preds = %while.body
  %tobool53.not = icmp eq ptr %cluster_locked.1103, null
  br i1 %tobool53.not, label %fail.cleanup57_crit_edge, label %if.then54

fail.cleanup57_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

if.then54:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull %cluster_locked.1103) #14
  br label %cleanup57

cleanup57:                                        ; preds = %if.then54, %fail.cleanup57_crit_edge, %if.end46.cleanup57_crit_edge, %for.body.cleanup57_crit_edge, %if.end35.cleanup57_crit_edge
  %retval.0 = phi i32 [ -28, %if.then54 ], [ -28, %fail.cleanup57_crit_edge ], [ 0, %if.end35.cleanup57_crit_edge ], [ 0, %if.end46.cleanup57_crit_edge ], [ -28, %for.body.cleanup57_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_pinned_extent_entries(ptr nocapture noundef readonly %trans, ptr noundef readonly %block_group, ptr nocapture noundef %io_ctl, ptr nocapture noundef %entries) unnamed_addr #5 align 64 {
entry:
  %extent_start = alloca i64, align 8
  %extent_end = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %extent_start) #14
  %0 = ptrtoint ptr %extent_start to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %extent_start, align 8, !annotation !149
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %extent_end) #14
  %1 = ptrtoint ptr %extent_end to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %extent_end, align 8, !annotation !149
  %tobool.not = icmp eq ptr %block_group, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction, align 4
  %pinned_extents = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 18
  %start1 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %if.end11.while.cond_crit_edge, %if.end
  %start.0.in = phi ptr [ %start1, %if.end ], [ %extent_end, %if.end11.while.cond_crit_edge ]
  %4 = ptrtoint ptr %start.0.in to i32
  call void @__asan_load8_noabort(i32 %4)
  %start.0 = load i64, ptr %start.0.in, align 8
  %5 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start1, align 8
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %length, align 8
  %add = add i64 %8, %6
  call void @__sanitizer_cov_trace_cmp8(i64 %start.0, i64 %add)
  %cmp = icmp ult i64 %start.0, %add
  br i1 %cmp, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %call = call i32 @find_first_extent_bit(ptr noundef %pinned_extents, i64 noundef %start.0, ptr noundef nonnull %extent_start, ptr noundef nonnull %extent_end, i32 noundef 1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %while.body
  %9 = ptrtoint ptr %extent_start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %extent_start, align 8
  %11 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start1, align 8
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %length, align 8
  %add8 = add i64 %14, %12
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %add8)
  %cmp9.not = icmp ult i64 %10, %add8
  br i1 %cmp9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %15 = call i64 @llvm.umax.i64(i64 %10, i64 %start.0)
  %16 = ptrtoint ptr %extent_start to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %extent_start, align 8
  %17 = ptrtoint ptr %extent_end to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %extent_end, align 8
  %add16 = add i64 %18, 1
  %19 = call i64 @llvm.umin.i64(i64 %add8, i64 %add16)
  %20 = ptrtoint ptr %extent_end to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %extent_end, align 8
  %sub = sub i64 %19, %15
  %21 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %entries, align 4
  %add23 = add i32 %22, 1
  store i32 %add23, ptr %entries, align 4
  %call24 = call fastcc i32 @io_ctl_add_entry(ptr noundef %io_ctl, i64 noundef %15, i64 noundef %sub, ptr noundef null)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end11.while.cond_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11.while.cond_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ -28, %if.end11.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %extent_end) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %extent_start) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_bitmap_entries(ptr noundef %io_ctl, ptr noundef readonly %bitmap_list) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bitmap_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap_list, align 4
  %cmp.not27 = icmp eq ptr %1, %bitmap_list
  br i1 %cmp.not27, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %orig.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 1
  %index.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 7
  %num_pages.i.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 8
  %pages.i.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 3
  %page.i.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 2
  %size.i.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in28 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn30, %list_del_init.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn30 = load ptr, ptr %.pn.in28, align 4
  %bitmap = getelementptr i8, ptr %.pn.in28, i32 -4
  %3 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bitmap, align 8
  %5 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_ctl, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %7 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %orig.i, align 4
  %cmp.not.i = icmp eq ptr %6, %8
  br i1 %cmp.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then2.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  %sub.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then2.i.if.end.i.i_crit_edge

if.then2.i.if.end.i.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_pages.i.i, align 4
  %mul.i.i = shl i32 %12, 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then2.i.if.end.i.i_crit_edge
  %offset.0.i.i = phi i32 [ %mul.i.i, %if.then.i.i ], [ 0, %if.then2.i.if.end.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %offset.0.i.i
  %sub.i.i = sub i32 4096, %offset.0.i.i
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #14
  %13 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_ctl, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.io_ctl_set_crc.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.i.io_ctl_set_crc.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %io_ctl_set_crc.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %io_ctl, align 4
  %16 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %orig.i, align 4
  br label %io_ctl_set_crc.exit.i

io_ctl_set_crc.exit.i:                            ; preds = %if.then.i.i.i, %if.end.i.i.io_ctl_set_crc.exit.i_crit_edge
  %neg.i.i.i = xor i32 %call.i.i.i, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i.i) #14
  %18 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call1.i.i = tail call ptr @page_address(ptr noundef %21) #14
  %add.ptr2.i.i = getelementptr i32, ptr %call1.i.i, i32 %sub.i
  %22 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %add.ptr2.i.i, align 4
  %23 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i, align 4
  %25 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_pages.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp4.not.i = icmp slt i32 %24, %26
  br i1 %cmp4.not.i, label %io_ctl_map_page.exit.i, label %io_ctl_set_crc.exit.i.cleanup_crit_edge

io_ctl_set_crc.exit.i.cleanup_crit_edge:          ; preds = %io_ctl_set_crc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

io_ctl_map_page.exit.i:                           ; preds = %io_ctl_set_crc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i.i, align 4
  %inc.i.i = add nsw i32 %24, 1
  %29 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i.i, ptr %index.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %28, i32 %24
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %32 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %page.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %31) #14
  %33 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i, ptr %io_ctl, align 4
  %34 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i, ptr %orig.i, align 4
  %35 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4096, ptr %size.i.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %io_ctl_map_page.exit.i, %if.end.i.if.end7.i_crit_edge
  %36 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_ctl, align 4
  tail call void @copy_page(ptr noundef %37, ptr noundef %4) #14
  %38 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index.i, align 4
  %sub10.i = add i32 %39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp.i34.i = icmp eq i32 %sub10.i, 0
  br i1 %cmp.i34.i, label %if.then.i37.i, label %if.end7.i.if.end.i44.i_crit_edge

if.end7.i.if.end.i44.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i44.i

if.then.i37.i:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_pages.i.i, align 4
  %mul.i36.i = shl i32 %41, 2
  br label %if.end.i44.i

if.end.i44.i:                                     ; preds = %if.then.i37.i, %if.end7.i.if.end.i44.i_crit_edge
  %offset.0.i38.i = phi i32 [ %mul.i36.i, %if.then.i37.i ], [ 0, %if.end7.i.if.end.i44.i_crit_edge ]
  %42 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %orig.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %43, i32 %offset.0.i38.i
  %sub.i41.i = sub i32 4096, %offset.0.i38.i
  %call.i.i42.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %add.ptr.i40.i, i32 noundef %sub.i41.i) #14
  %44 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_ctl, align 4
  %tobool.not.i.i43.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i43.i, label %if.end.i44.i.io_ctl_set_crc.exit50.i_crit_edge, label %if.then.i.i45.i

if.end.i44.i.io_ctl_set_crc.exit50.i_crit_edge:   ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %io_ctl_set_crc.exit50.i

if.then.i.i45.i:                                  ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %io_ctl, align 4
  %47 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %orig.i, align 4
  br label %io_ctl_set_crc.exit50.i

io_ctl_set_crc.exit50.i:                          ; preds = %if.then.i.i45.i, %if.end.i44.i.io_ctl_set_crc.exit50.i_crit_edge
  %neg.i.i46.i = xor i32 %call.i.i42.i, -1
  %48 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i46.i) #14
  %49 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pages.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call1.i48.i = tail call ptr @page_address(ptr noundef %52) #14
  %add.ptr2.i49.i = getelementptr i32, ptr %call1.i48.i, i32 %sub10.i
  %53 = ptrtoint ptr %add.ptr2.i49.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %48, ptr %add.ptr2.i49.i, align 4
  %54 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index.i, align 4
  %56 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_pages.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp13.i = icmp slt i32 %55, %57
  br i1 %cmp13.i, label %io_ctl_map_page.exit63.i, label %io_ctl_set_crc.exit50.i.if.end_crit_edge

io_ctl_set_crc.exit50.i.if.end_crit_edge:         ; preds = %io_ctl_set_crc.exit50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

io_ctl_map_page.exit63.i:                         ; preds = %io_ctl_set_crc.exit50.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pages.i.i, align 4
  %inc.i56.i = add nsw i32 %55, 1
  %60 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %inc.i56.i, ptr %index.i, align 4
  %arrayidx.i57.i = getelementptr ptr, ptr %59, i32 %55
  %61 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i57.i, align 4
  %63 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %page.i.i, align 4
  %call.i59.i = tail call ptr @page_address(ptr noundef %62) #14
  %64 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i59.i, ptr %io_ctl, align 4
  %65 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i59.i, ptr %orig.i, align 4
  %66 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4096, ptr %size.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %io_ctl_map_page.exit63.i, %io_ctl_set_crc.exit50.i.if.end_crit_edge
  %call.i.i22 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28) #14
  br i1 %call.i.i22, label %if.end.i.i23, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i23:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i, align 4
  %69 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %.pn.in28, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev1.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %68, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i23, %if.end.list_del_init.exit_crit_edge
  %73 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %.pn.in28, ptr %.pn.in28, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %.pn.in28, ptr %prev.i3.i, align 4
  %cmp.not = icmp eq ptr %.pn30, %bitmap_list
  br i1 %cmp.not, label %list_del_init.exit.cleanup_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit.cleanup_crit_edge, %io_ctl_set_crc.exit.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -28, %io_ctl_set_crc.exit.i.cleanup_crit_edge ], [ -28, %for.body.cleanup_crit_edge ], [ 0, %list_del_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @io_ctl_zero_remaining_pages(ptr noundef %io_ctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_ctl, align 4
  %orig = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 1
  %2 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig, align 4
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 7
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i = icmp eq i32 %sub, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %num_pages.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 8
  %6 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages.i, align 4
  %mul.i = shl i32 %7, 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %offset.0.i = phi i32 [ %mul.i, %if.then.i ], [ 0, %if.then.if.end.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %3, i32 %offset.0.i
  %sub.i = sub i32 4096, %offset.0.i
  %call.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %add.ptr.i, i32 noundef %sub.i) #14
  %8 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_ctl, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.io_ctl_set_crc.exit_crit_edge, label %if.then.i.i

if.end.i.io_ctl_set_crc.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %io_ctl_set_crc.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %io_ctl, align 4
  %11 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %orig, align 4
  br label %io_ctl_set_crc.exit

io_ctl_set_crc.exit:                              ; preds = %if.then.i.i, %if.end.i.io_ctl_set_crc.exit_crit_edge
  %neg.i.i = xor i32 %call.i.i, -1
  %12 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i) #14
  %pages.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 3
  %13 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %16) #14
  %add.ptr2.i = getelementptr i32, ptr %call1.i, i32 %sub
  %17 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %add.ptr2.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.then.i15

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i15:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %io_ctl, align 4
  %19 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %orig, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i15, %if.else.if.end_crit_edge, %io_ctl_set_crc.exit
  %index1 = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 7
  %num_pages = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 8
  %20 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index1, align 4
  %22 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp240 = icmp slt i32 %21, %23
  br i1 %cmp240, label %io_ctl_map_page.exit.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

io_ctl_map_page.exit.lr.ph:                       ; preds = %if.end
  %pages.i19 = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 3
  %page.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 6
  br label %io_ctl_map_page.exit

io_ctl_map_page.exit:                             ; preds = %io_ctl_set_crc.exit39.io_ctl_map_page.exit_crit_edge, %io_ctl_map_page.exit.lr.ph
  %24 = phi i32 [ %21, %io_ctl_map_page.exit.lr.ph ], [ %52, %io_ctl_set_crc.exit39.io_ctl_map_page.exit_crit_edge ]
  %25 = ptrtoint ptr %pages.i19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pages.i19, align 4
  %inc.i = add nsw i32 %24, 1
  %27 = ptrtoint ptr %index1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc.i, ptr %index1, align 4
  %arrayidx.i = getelementptr ptr, ptr %26, i32 %24
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %page.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %29) #14
  %31 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %io_ctl, align 4
  %32 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %orig, align 4
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4096, ptr %size.i, align 4
  %34 = call ptr @memset(ptr %call.i, i32 0, i32 4096)
  %35 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index1, align 4
  %sub4 = add i32 %36, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %cmp.i23 = icmp eq i32 %sub4, 0
  br i1 %cmp.i23, label %if.then.i26, label %io_ctl_map_page.exit.if.end.i33_crit_edge

io_ctl_map_page.exit.if.end.i33_crit_edge:        ; preds = %io_ctl_map_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i33

if.then.i26:                                      ; preds = %io_ctl_map_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_pages, align 4
  %mul.i25 = shl i32 %38, 2
  br label %if.end.i33

if.end.i33:                                       ; preds = %if.then.i26, %io_ctl_map_page.exit.if.end.i33_crit_edge
  %offset.0.i27 = phi i32 [ %mul.i25, %if.then.i26 ], [ 0, %io_ctl_map_page.exit.if.end.i33_crit_edge ]
  %39 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %orig, align 4
  %add.ptr.i29 = getelementptr i8, ptr %40, i32 %offset.0.i27
  %sub.i30 = sub i32 4096, %offset.0.i27
  %call.i.i31 = tail call i32 @crc32c(i32 noundef -1, ptr noundef %add.ptr.i29, i32 noundef %sub.i30) #14
  %41 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_ctl, align 4
  %tobool.not.i.i32 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i32, label %if.end.i33.io_ctl_set_crc.exit39_crit_edge, label %if.then.i.i34

if.end.i33.io_ctl_set_crc.exit39_crit_edge:       ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #16
  br label %io_ctl_set_crc.exit39

if.then.i.i34:                                    ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %io_ctl, align 4
  %44 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %orig, align 4
  br label %io_ctl_set_crc.exit39

io_ctl_set_crc.exit39:                            ; preds = %if.then.i.i34, %if.end.i33.io_ctl_set_crc.exit39_crit_edge
  %neg.i.i35 = xor i32 %call.i.i31, -1
  %45 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i35) #14
  %46 = ptrtoint ptr %pages.i19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pages.i19, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call1.i37 = tail call ptr @page_address(ptr noundef %49) #14
  %add.ptr2.i38 = getelementptr i32, ptr %call1.i37, i32 %sub4
  %50 = ptrtoint ptr %add.ptr2.i38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %45, ptr %add.ptr2.i38, align 4
  %51 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index1, align 4
  %53 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_pages, align 4
  %cmp2 = icmp slt i32 %52, %54
  br i1 %cmp2, label %io_ctl_set_crc.exit39.io_ctl_map_page.exit_crit_edge, label %io_ctl_set_crc.exit39.while.end_crit_edge

io_ctl_set_crc.exit39.while.end_crit_edge:        ; preds = %io_ctl_set_crc.exit39
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

io_ctl_set_crc.exit39.io_ctl_map_page.exit_crit_edge: ; preds = %io_ctl_set_crc.exit39
  call void @__sanitizer_cov_trace_pc() #16
  br label %io_ctl_map_page.exit

while.end:                                        ; preds = %io_ctl_set_crc.exit39.while.end_crit_edge, %if.end.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_dirty_pages(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_bitmap_list(ptr noundef readonly %bitmap_list) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bitmap_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap_list, align 4
  %cmp.not18 = icmp eq ptr %1, %bitmap_list
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %2, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %prev.i3.i, align 4
  %cmp.not = icmp eq ptr %.pn, %bitmap_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_write_cache_enospc(ptr noundef %inode, ptr nocapture noundef %io_ctl, ptr noundef %cached_state) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @io_ctl_drop_pages(ptr noundef %io_ctl)
  %io_tree = getelementptr i8, ptr %inode, i32 -736
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %sub = add i64 %call1, -1
  %call.i = tail call i32 @__clear_extent_bit(ptr noundef %io_tree, i64 noundef 0, i64 noundef %sub, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef %cached_state, i32 noundef 3136, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @io_ctl_add_entry(ptr nocapture noundef %io_ctl, i64 noundef %offset, i64 noundef %bytes, ptr noundef readnone %bitmap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_ctl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i64 @llvm.bswap.i64(i64 %offset) #14
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %1, align 1
  %bytes4 = getelementptr inbounds %struct.btrfs_free_space_entry, ptr %1, i32 0, i32 1
  %4 = tail call i64 @llvm.bswap.i64(i64 %bytes) #14
  %5 = ptrtoint ptr %bytes4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %bytes4, align 1
  %tobool5.not = icmp eq ptr %bitmap, null
  %conv = select i1 %tobool5.not, i8 1, i8 2
  %type = getelementptr inbounds %struct.btrfs_free_space_entry, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %type, align 1
  %7 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_ctl, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 17
  store ptr %add.ptr, ptr %io_ctl, align 4
  %size = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 6
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %sub = add i32 %10, -17
  store i32 %sub, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp = icmp ugt i32 %sub, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %index = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 7
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %sub11 = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %cmp.i = icmp eq i32 %sub11, 0
  br i1 %cmp.i, label %if.then.i, label %if.end10.if.end.i_crit_edge

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %num_pages.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 8
  %13 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_pages.i, align 4
  %mul.i = shl i32 %14, 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end10.if.end.i_crit_edge
  %offset.0.i = phi i32 [ %mul.i, %if.then.i ], [ 0, %if.end10.if.end.i_crit_edge ]
  %orig.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 1
  %15 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %orig.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %offset.0.i
  %sub.i = sub i32 4096, %offset.0.i
  %call.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %add.ptr.i, i32 noundef %sub.i) #14
  %17 = ptrtoint ptr %io_ctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_ctl, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.io_ctl_set_crc.exit_crit_edge, label %if.then.i.i

if.end.i.io_ctl_set_crc.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %io_ctl_set_crc.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %io_ctl, align 4
  %20 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %orig.i, align 4
  br label %io_ctl_set_crc.exit

io_ctl_set_crc.exit:                              ; preds = %if.then.i.i, %if.end.i.io_ctl_set_crc.exit_crit_edge
  %neg.i.i = xor i32 %call.i.i, -1
  %21 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i) #14
  %pages.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 3
  %22 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %25) #14
  %add.ptr2.i = getelementptr i32, ptr %call1.i, i32 %sub11
  %26 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %add.ptr2.i, align 4
  %27 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index, align 4
  %num_pages = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 8
  %29 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp13.not = icmp slt i32 %28, %30
  br i1 %cmp13.not, label %io_ctl_map_page.exit, label %io_ctl_set_crc.exit.cleanup_crit_edge

io_ctl_set_crc.exit.cleanup_crit_edge:            ; preds = %io_ctl_set_crc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

io_ctl_map_page.exit:                             ; preds = %io_ctl_set_crc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pages.i, align 4
  %inc.i = add nsw i32 %28, 1
  %33 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc.i, ptr %index, align 4
  %arrayidx.i = getelementptr ptr, ptr %32, i32 %28
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %page.i = getelementptr inbounds %struct.btrfs_io_ctl, ptr %io_ctl, i32 0, i32 2
  %36 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %page.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %35) #14
  %37 = ptrtoint ptr %io_ctl to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %io_ctl, align 4
  %38 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %orig.i, align 4
  %39 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4096, ptr %size, align 4
  %40 = call ptr @memset(ptr %call.i, i32 0, i32 4096)
  br label %cleanup

cleanup:                                          ; preds = %io_ctl_map_page.exit, %io_ctl_set_crc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %io_ctl_map_page.exit ], [ -28, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %io_ctl_set_crc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_first_extent_bit(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tree_insert_offset(ptr noundef %root, i64 noundef %offset, ptr noundef %node, i32 noundef %bitmap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not132 = icmp eq ptr %1, null
  br i1 %tobool.not132, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmap)
  %tobool6.not = icmp eq i32 %bitmap, 0
  br label %while.body

while.body:                                       ; preds = %if.end104.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %8, %if.end104.while.body_crit_edge ]
  %offset1 = getelementptr inbounds %struct.btrfs_free_space, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %offset1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %offset1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %offset)
  %cmp = icmp ugt i64 %4, %offset
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %if.end104

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %offset)
  %cmp3 = icmp ult i64 %4, %offset
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %if.end104

if.else5:                                         ; preds = %if.else
  %bitmap49 = getelementptr inbounds %struct.btrfs_free_space, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %bitmap49 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmap49, align 8
  %tobool50.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.else48, label %if.then7

if.then7:                                         ; preds = %if.else5
  br i1 %tobool50.not, label %if.end46, label %land.end

land.end:                                         ; preds = %if.then7
  %.b127 = load i1, ptr @tree_insert_offset.__already_done, align 1
  br i1 %.b127, label %land.end.cleanup_crit_edge, label %if.then16, !prof !155

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then16:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tree_insert_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1580, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end46:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right47 = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %if.end104

if.else48:                                        ; preds = %if.else5
  br i1 %tobool50.not, label %land.end58, label %if.end100

land.end58:                                       ; preds = %if.else48
  %.b125126 = load i1, ptr @tree_insert_offset.__already_done.54, align 1
  br i1 %.b125126, label %land.end58.cleanup_crit_edge, label %if.then65, !prof !155

land.end58.cleanup_crit_edge:                     ; preds = %land.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then65:                                        ; preds = %land.end58
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tree_insert_offset.__already_done.54, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1586, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end100:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left101 = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %if.end104

if.end104:                                        ; preds = %if.end100, %if.end46, %if.then4, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then4 ], [ %rb_right47, %if.end46 ], [ %rb_left101, %if.end100 ]
  %7 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end104.while.body_crit_edge

if.end104.while.body_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le = ptrtoint ptr %2 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %root, %entry.while.end_crit_edge ]
  %9 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %parent.0.lcssa, ptr %node, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 1
  %10 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node, i32 0, i32 2
  %11 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rb_left.i, align 4
  %12 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %node, ptr noundef %root) #14
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then65, %land.end58.cleanup_crit_edge, %if.then16, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -17, %if.then16 ], [ -17, %land.end.cleanup_crit_edge ], [ -17, %if.then65 ], [ -17, %land.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_bg_unused(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_bg_to_reclaim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @use_bitmap(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %info) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %block_group1 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 12
  %0 = ptrtoint ptr %block_group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.lor.rhs.i_crit_edge, label %land.lhs.true.i

entry.lor.rhs.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flags.i, align 8
  %and2.i = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.if.end22_crit_edge

land.lhs.true.i.if.end22_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %entry.lor.rhs.i_crit_edge
  %and5.i = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %lor.rhs.i.land.lhs.true_crit_edge, label %btrfs_should_fragment_free_space.exit

lor.rhs.i.land.lhs.true_crit_edge:                ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

btrfs_should_fragment_free_space.exit:            ; preds = %lor.rhs.i
  %flags7.i = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flags7.i, align 8
  %10 = and i64 %9, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not = icmp eq i64 %10, 0
  br i1 %tobool.not, label %btrfs_should_fragment_free_space.exit.land.lhs.true_crit_edge, label %btrfs_should_fragment_free_space.exit.if.end22_crit_edge

btrfs_should_fragment_free_space.exit.if.end22_crit_edge: ; preds = %btrfs_should_fragment_free_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

btrfs_should_fragment_free_space.exit.land.lhs.true_crit_edge: ; preds = %btrfs_should_fragment_free_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %btrfs_should_fragment_free_space.exit.land.lhs.true_crit_edge, %lor.rhs.i.land.lhs.true_crit_edge
  %bytes = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048575, i64 %12)
  %cmp = icmp ugt i64 %12, 1048575
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true7.critedge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true7.critedge:                          ; preds = %land.lhs.true
  %free_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 5
  %13 = ptrtoint ptr %free_extents to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %free_extents, align 4
  %extents_thresh = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 4
  %15 = ptrtoint ptr %extents_thresh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %extents_thresh, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp8 = icmp slt i32 %14, %16
  br i1 %cmp8, label %if.then9, label %land.lhs.true7.critedge.if.end22_crit_edge

land.lhs.true7.critedge.if.end22_crit_edge:       ; preds = %land.lhs.true7.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then9:                                         ; preds = %land.lhs.true7.critedge
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %17 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sectorsize, align 4
  %mul = shl i32 %18, 3
  %conv = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv)
  %cmp11.not = icmp ule i64 %12, %conv
  %mul15 = mul i32 %14, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul15, i32 %16)
  %cmp17.not = icmp sgt i32 %mul15, %16
  %or.cond = select i1 %cmp11.not, i1 %cmp17.not, i1 false
  br i1 %or.cond, label %if.then9.if.end22_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9.if.end22_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.end22:                                         ; preds = %if.then9.if.end22_crit_edge, %land.lhs.true7.critedge.if.end22_crit_edge, %btrfs_should_fragment_free_space.exit.if.end22_crit_edge, %land.lhs.true.i.if.end22_crit_edge
  %unit = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 7
  %19 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %unit, align 4
  %21 = shl i32 %20, 14
  %shr = and i32 %21, 2147467264
  %conv24 = zext i32 %shr to i64
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv24)
  %cmp25 = icmp uge i64 %23, %conv24
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.then9.cleanup_crit_edge ], [ %cmp25, %if.end22 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @relink_bitmap_entry(ptr noundef %ctl, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr %struct.btrfs_free_space, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !160

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.57, i32 noundef 1806) #20
  unreachable

cond.end:                                         ; preds = %entry
  %bytes_index = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %bytes_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes_index, align 4
  %4 = ptrtoint ptr %bytes_index to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %cond.end.return_crit_edge, label %if.end

cond.end.return_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %cond.end
  %free_space_bytes = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2
  %rb_leftmost.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i = icmp eq ptr %6, %bytes_index
  br i1 %cmp.i, label %if.then.i, label %if.end.rb_erase_cached.exit_crit_edge

if.end.rb_erase_cached.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_erase_cached.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @rb_next(ptr noundef %bytes_index) #14
  %7 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit

rb_erase_cached.exit:                             ; preds = %if.then.i, %if.end.rb_erase_cached.exit_crit_edge
  tail call void @rb_erase(ptr noundef %bytes_index, ptr noundef %free_space_bytes) #14
  %8 = ptrtoint ptr %free_space_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_space_bytes, align 4
  %tobool.not2.i = icmp eq ptr %9, null
  br i1 %tobool.not2.i, label %if.then.i.critedge.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %rb_erase_cached.exit
  %10 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap, align 8
  %tobool.not.i7.i.i = icmp eq ptr %11, null
  %max_extent_size.i8.i.i = getelementptr %struct.btrfs_free_space, ptr %info, i32 0, i32 4
  %bytes.i11.i.i = getelementptr %struct.btrfs_free_space, ptr %info, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %entry_less.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %12 = phi ptr [ %9, %while.body.lr.ph.i ], [ %24, %entry_less.exit.i.while.body.i_crit_edge ]
  %leftmost.0.off03.i = phi i1 [ true, %while.body.lr.ph.i ], [ %leftmost.1.off0.i, %entry_less.exit.i.while.body.i_crit_edge ]
  %bitmap.i.i.i = getelementptr i8, ptr %12, i32 36
  %13 = ptrtoint ptr %bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bitmap.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %while.body.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

while.body.i.if.end.i.i.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %while.body.i
  %max_extent_size.i.i.i = getelementptr i8, ptr %12, i32 28
  %15 = ptrtoint ptr %max_extent_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %max_extent_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool2.not.i.i.i = icmp eq i64 %16, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge

land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_max_extent_size.exit.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %while.body.i.if.end.i.i.i_crit_edge
  %bytes.i.i.i = getelementptr i8, ptr %12, i32 20
  %17 = ptrtoint ptr %bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bytes.i.i.i, align 8
  br label %get_max_extent_size.exit.i.i

get_max_extent_size.exit.i.i:                     ; preds = %if.end.i.i.i, %land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i64 [ %18, %if.end.i.i.i ], [ %16, %land.lhs.true.i.i.i.get_max_extent_size.exit.i.i_crit_edge ]
  br i1 %tobool.not.i7.i.i, label %get_max_extent_size.exit.i.i.if.end.i12.i.i_crit_edge, label %land.lhs.true.i10.i.i

get_max_extent_size.exit.i.i.if.end.i12.i.i_crit_edge: ; preds = %get_max_extent_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i12.i.i

land.lhs.true.i10.i.i:                            ; preds = %get_max_extent_size.exit.i.i
  %19 = ptrtoint ptr %max_extent_size.i8.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %max_extent_size.i8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool2.not.i9.i.i = icmp eq i64 %20, 0
  br i1 %tobool2.not.i9.i.i, label %land.lhs.true.i10.i.i.if.end.i12.i.i_crit_edge, label %land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge

land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge: ; preds = %land.lhs.true.i10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %entry_less.exit.i

land.lhs.true.i10.i.i.if.end.i12.i.i_crit_edge:   ; preds = %land.lhs.true.i10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i12.i.i

if.end.i12.i.i:                                   ; preds = %land.lhs.true.i10.i.i.if.end.i12.i.i_crit_edge, %get_max_extent_size.exit.i.i.if.end.i12.i.i_crit_edge
  %21 = ptrtoint ptr %bytes.i11.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes.i11.i.i, align 8
  br label %entry_less.exit.i

entry_less.exit.i:                                ; preds = %if.end.i12.i.i, %land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge
  %retval.0.i13.i.i = phi i64 [ %22, %if.end.i12.i.i ], [ %20, %land.lhs.true.i10.i.i.entry_less.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i.i, i64 %retval.0.i13.i.i)
  %cmp.i.i = icmp ult i64 %retval.0.i.i.i, %retval.0.i13.i.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  %link.1.i = select i1 %cmp.i.i, ptr %rb_left.i, ptr %rb_right.i
  %leftmost.1.off0.i = select i1 %cmp.i.i, i1 %leftmost.0.off03.i, i1 false
  %23 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %entry_less.exit.i.while.body.i_crit_edge

entry_less.exit.i.while.body.i_crit_edge:         ; preds = %entry_less.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %entry_less.exit.i
  %phi.cast.le.i = ptrtoint ptr %12 to i32
  %25 = ptrtoint ptr %bytes_index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %phi.cast.le.i, ptr %bytes_index, align 4
  %rb_right.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_left.i.i, align 4
  %28 = ptrtoint ptr %link.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %bytes_index, ptr %link.1.i, align 4
  br i1 %leftmost.1.off0.i, label %while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge, label %while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge

while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rb_add_cached.exit

while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.then.i.critedge.i:                             ; preds = %rb_erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %bytes_index to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bytes_index, align 4
  %rb_right.i.c.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %rb_right.i.c.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rb_right.i.c.i, align 4
  %rb_left.i.c.i = getelementptr inbounds %struct.btrfs_free_space, ptr %info, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %rb_left.i.c.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rb_left.i.c.i, align 4
  %32 = ptrtoint ptr %free_space_bytes to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %bytes_index, ptr %free_space_bytes, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.critedge.i, %while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge
  %33 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %bytes_index, ptr %rb_leftmost.i, align 4
  br label %rb_add_cached.exit

rb_add_cached.exit:                               ; preds = %if.then.i.i, %while.cond.while.end_crit_edge.i.rb_add_cached.exit_crit_edge
  tail call void @rb_insert_color(ptr noundef %bytes_index, ptr noundef %free_space_bytes) #14
  br label %return

return:                                           ; preds = %rb_add_cached.exit, %cond.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_find_cluster(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_setup_cluster(ptr noundef %block_group, ptr noundef %cluster, i64 noundef %size, i32 noundef %bitmap) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_setup_cluster, i32 0, i32 1), ptr blockaddress(@trace_btrfs_setup_cluster, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !159

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !155

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !187
  %call42 = tail call i32 @__traceiter_btrfs_setup_cluster(ptr noundef null, ptr noundef %block_group, ptr noundef %cluster, i64 noundef %size, i32 noundef %bitmap) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !188
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !155

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_setup_cluster, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_setup_cluster, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_setup_cluster.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_btrfs_setup_cluster.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 1334, ptr noundef nonnull @.str.60) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #14
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
declare dso_local i32 @__traceiter_btrfs_setup_cluster(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_failed_cluster_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_trimming(ptr noundef %block_group, ptr nocapture noundef %total_trimmed, i64 noundef %start, i64 noundef %bytes, i64 noundef %reserved_start, i64 noundef %reserved_bytes, i32 noundef %reserved_trim_state, ptr noundef %trim_entry) unnamed_addr #0 align 64 {
entry:
  %trimmed = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %space_info1 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 22
  %0 = ptrtoint ptr %space_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %space_info1, align 8
  %2 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_group, align 8
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %4 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free_space_ctl, align 4
  %add = add i64 %bytes, %start
  %add3 = add i64 %reserved_bytes, %reserved_start
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trimmed) #14
  %6 = ptrtoint ptr %trimmed to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %trimmed, align 8
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %lock4 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock4) #14
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 16
  %7 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %reserved = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 6
  %9 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %reserved, align 8
  %add5 = add i64 %10, %reserved_bytes
  store i64 %add5, ptr %reserved, align 8
  %bytes_reserved = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes_reserved, align 8
  %add6 = add i64 %12, %reserved_bytes
  store i64 %add6, ptr %bytes_reserved, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock4) #14
  tail call void @_raw_spin_unlock(ptr noundef %1) #14
  %call = call i32 @btrfs_discard_extent(ptr noundef %3, i64 noundef %start, i64 noundef %bytes, ptr noundef nonnull %trimmed) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %trimmed to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %trimmed, align 8
  %15 = ptrtoint ptr %total_trimmed to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %total_trimmed, align 8
  %add11 = add i64 %16, %14
  store i64 %add11, ptr %total_trimmed, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %trim_state.0 = phi i32 [ 0, %if.end.if.end12_crit_edge ], [ 1, %if.then10 ]
  %cache_writeout_mutex = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %5, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %cache_writeout_mutex, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %start, i64 %reserved_start)
  %cmp = icmp ugt i64 %start, %reserved_start
  br i1 %cmp, label %if.then13, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i64 %start, %reserved_start
  %call14 = call i32 @__btrfs_add_free_space(ptr noundef %block_group, i64 noundef %reserved_start, i64 noundef %sub, i32 noundef %reserved_trim_state)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end12.if.end15_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %add3, i64 %add)
  %cmp18 = icmp ugt i64 %add3, %add
  br i1 %cmp18, label %if.then19, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %sub20 = sub i64 %add3, %add
  %call21 = call i32 @__btrfs_add_free_space(ptr noundef %block_group, i64 noundef %add, i64 noundef %sub20, i32 noundef %reserved_trim_state)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  %call23 = call i32 @__btrfs_add_free_space(ptr noundef %block_group, i64 noundef %start, i64 noundef %bytes, i32 noundef %trim_state.0)
  %list = getelementptr inbounds %struct.btrfs_trim_range, ptr %trim_entry, i32 0, i32 2
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.list_del.exit_crit_edge

if.end22.list_del.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.btrfs_trim_range, ptr %trim_entry, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end22.list_del.exit_crit_edge
  %23 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_trim_range, ptr %trim_entry, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @mutex_unlock(ptr noundef %cache_writeout_mutex) #14
  br i1 %tobool.not, label %if.then26, label %list_del.exit.if.end40_crit_edge

list_del.exit.if.end40_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then26:                                        ; preds = %list_del.exit
  call void @_raw_spin_lock(ptr noundef %1) #14
  call void @_raw_spin_lock(ptr noundef %lock4) #14
  %25 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool30.not = icmp eq i32 %26, 0
  br i1 %tobool30.not, label %if.then26.if.end33_crit_edge, label %if.then31

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %bytes_readonly = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %bytes_readonly to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bytes_readonly, align 8
  %add32 = add i64 %28, %reserved_bytes
  store i64 %add32, ptr %bytes_readonly, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then26.if.end33_crit_edge
  %reserved34 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 6
  %29 = ptrtoint ptr %reserved34 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %reserved34, align 8
  %sub35 = sub i64 %30, %reserved_bytes
  store i64 %sub35, ptr %reserved34, align 8
  %bytes_reserved36 = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %bytes_reserved36 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes_reserved36, align 8
  %sub37 = sub i64 %32, %reserved_bytes
  store i64 %sub37, ptr %bytes_reserved36, align 8
  call void @_raw_spin_unlock(ptr noundef %lock4) #14
  call void @_raw_spin_unlock(ptr noundef %1) #14
  br label %if.end40

if.end40:                                         ; preds = %if.end33, %list_del.exit.if.end40_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trimmed) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_discard_extent(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { cold noreturn }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !33, !35, !37, !38, !40, !41, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !85, !86, !88, !89, !91, !93, !94, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129, !131, !133, !134, !136, !137}
!llvm.named.register.sp = !{!139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/free-space-cache.c", i32 123, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/free-space-cache.c", i32 358, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @btrfs_truncate_free_space_cache.__UNIQUE_ID_ddebug932, !3, !"__UNIQUE_ID_ddebug932", i1 false, i1 false}
!9 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/free-space-cache.c", i32 1005, i32 3}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/free-space-cache.c", i32 1018, i32 3}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/free-space-cache.c", i32 1502, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @btrfs_write_out_cache.__UNIQUE_ID_ddebug942, !15, !"__UNIQUE_ID_ddebug942", i1 false, i1 false}
!18 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/btrfs/free-space-cache.c", i32 2570, i32 2}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/free-space-cache.c", i32 2618, i32 3}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/btrfs/free-space-cache.c", i32 2619, i32 3}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/btrfs/free-space-cache.c", i32 2858, i32 3}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/free-space-cache.c", i32 2869, i32 3}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/btrfs/free-space-cache.c", i32 2874, i32 2}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/btrfs/free-space-cache.c", i32 2876, i32 2}
!35 = !{ptr @btrfs_init_free_space_ctl.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../fs/btrfs/free-space-cache.c", i32 2885, i32 2}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @btrfs_init_free_space_ctl.__key.22, !39, !"__key", i1 false, i1 false}
!39 = !{!"../fs/btrfs/free-space-cache.c", i32 2892, i32 2}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/btrfs/free-space-cache.c", i32 3061, i32 2}
!43 = !{ptr @btrfs_init_free_cluster.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../fs/btrfs/free-space-cache.c", i32 3599, i32 2}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @btrfs_init_free_cluster.__key.26, !47, !"__key", i1 false, i1 false}
!47 = !{!"../fs/btrfs/free-space-cache.c", i32 3600, i32 2}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/btrfs/free-space-cache.c", i32 4105, i32 4}
!51 = !{ptr @btrfs_set_free_space_cache_v1_active.__UNIQUE_ID_ddebug980, !50, !"__UNIQUE_ID_ddebug980", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/btrfs/free-space-cache.c", i32 766, i32 3}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/btrfs/free-space-cache.c", i32 773, i32 3}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/btrfs/free-space-cache.c", i32 825, i32 5}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/btrfs/free-space-cache.c", i32 831, i32 4}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/btrfs/free-space-cache.c", i32 471, i32 5}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/btrfs/free-space-cache.c", i32 477, i32 5}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/mm.h", i32 717, i32 2}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/btrfs/free-space-cache.c", i32 563, i32 3}
!77 = !{ptr @io_ctl_check_crc._rs, !76, !"_rs", i1 false, i1 false}
!78 = !{ptr @__func__.io_ctl_check_crc, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/btrfs/free-space-cache.c", i32 415, i32 2}
!82 = !{ptr @io_ctl_check_generation._rs, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../fs/btrfs/free-space-cache.c", i32 519, i32 3}
!84 = !{ptr @__func__.io_ctl_check_generation, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/btrfs/free-space-cache.c", i32 1284, i32 4}
!88 = !{ptr @__btrfs_wait_cache_io.__UNIQUE_ID_ddebug941, !87, !"__UNIQUE_ID_ddebug941", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/btrfs/free-space-cache.c", i32 1132, i32 3}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!93 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @assertfail._entry, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @assertfail._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/btrfs/free-space-cache.c", i32 2316, i32 3}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/btrfs/free-space-cache.c", i32 2543, i32 2}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/btrfs/free-space-cache.c", i32 2544, i32 2}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/btrfs/free-space-cache.c", i32 1524, i32 2}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/btrfs/free-space-cache.c", i32 1785, i32 2}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../fs/btrfs/free-space-cache.c", i32 1580, i32 6}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../fs/btrfs/free-space-cache.c", i32 1586, i32 6}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/btrfs/free-space-cache.c", i32 1720, i32 4}
!113 = !{ptr @free_space_op, !114, !"free_space_op", i1 false, i1 false}
!114 = !{!"../fs/btrfs/free-space-cache.c", i32 2249, i32 41}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/btrfs/free-space-cache.c", i32 1829, i32 2}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/btrfs/free-space-cache.c", i32 1806, i32 2}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/btrfs/free-space-cache.c", i32 696, i32 2}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../include/trace/events/btrfs.h", i32 1251, i32 1}
!123 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!124 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!125 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!128 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/btrfs/free-space-cache.c", i32 3454, i32 3}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/trace/events/btrfs.h", i32 1301, i32 1}
!133 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/trace/events/btrfs.h", i32 1284, i32 1}
!136 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/btrfs/free-space-cache.c", i32 4070, i32 2}
!139 = !{!"sp"}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"auto-init"}
!150 = !{i64 2153209882}
!151 = !{i64 2149887562}
!152 = !{i64 2149892494}
!153 = !{i64 2149914206}
!154 = !{i64 2149919098}
!155 = !{!"branch_weights", i32 2000, i32 1}
!156 = !{i64 2149995555}
!157 = !{i64 2149995880}
!158 = !{i64 2153221744}
!159 = !{i64 2148418046, i64 2148418051, i64 2148418064, i64 2148418108, i64 2148418142, i64 2148418163}
!160 = !{!"branch_weights", i32 1, i32 2000}
!161 = !{i64 2158419973, i64 2158420455, i64 2158420010, i64 2158420066, i64 2158420100, i64 2158420124, i64 2158420165, i64 2158420186, i64 2158420214, i64 2158420248}
!162 = !{i64 2148667154, i64 2148667434, i64 2148667768, i64 2148668102}
!163 = !{i64 1181610, i64 1181637, i64 1181659, i64 1181687}
!164 = !{i64 1182018, i64 1182045, i64 1182078, i64 1182099, i64 1182126, i64 1182152}
!165 = !{i64 1181323, i64 1181350}
!166 = !{i64 2155843622}
!167 = !{i64 2155843917}
!168 = !{i64 2150161261}
!169 = !{i64 2150162297}
!170 = !{i64 2155861120}
!171 = !{i64 2155861357}
!172 = !{i64 1222049, i64 1222110}
!173 = !{i64 1224781}
!174 = !{i64 1225066}
!175 = !{i64 2153207951}
!176 = !{i64 2153207793}
!177 = !{i64 2153208121}
!178 = !{i64 2149995230}
!179 = !{i64 2153263365, i64 2153263848, i64 2153263402, i64 2153263458, i64 2153263492, i64 2153263516, i64 2153263557, i64 2153263578, i64 2153263606, i64 2153263640}
!180 = !{i64 2148905845}
!181 = !{i64 2148820554, i64 2148820586, i64 2148820615, i64 2148820649, i64 2148820680, i64 2148820703}
!182 = !{i64 2148906074}
!183 = !{i64 2150372367, i64 2150372858, i64 2150372404, i64 2150372460, i64 2150372494, i64 2150372518, i64 2150372559, i64 2150372580, i64 2150372608, i64 2150372642}
!184 = !{i64 2151122259}
!185 = !{i64 2148826227, i64 2148826259, i64 2148826288, i64 2148826322, i64 2148826353, i64 2148826376}
!186 = !{i64 2148915332}
!187 = !{i64 2155883624}
!188 = !{i64 2155883893}
