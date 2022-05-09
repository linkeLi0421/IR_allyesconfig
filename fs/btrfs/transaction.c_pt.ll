; ModuleID = '/llk/IR_all_yes/fs/btrfs/transaction.c_pt.bc'
source_filename = "../fs/btrfs/transaction.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_transaction = type { i64, %struct.atomic_t, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.extent_io_tree, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.btrfs_delayed_ref_root, ptr, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_delayed_ref_root = type { %struct.rb_root_cached, %struct.rb_root, %struct.spinlock, %struct.atomic_t, i32, i32, i64, i32, i64, i64 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.84, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.84 = type { i64 }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.btrfs_space_info = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8, i32, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, %struct.rw_semaphore, [9 x %struct.list_head], %struct.kobject, [9 x ptr] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.79 = type { ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.btrfs_pending_snapshot = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.btrfs_block_rsv, i32, i32, i8, %struct.list_head }
%struct.btrfs_caching_control = type { %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.btrfs_work, ptr, i64, %struct.refcount_struct }
%struct.btrfs_block_group = type { ptr, ptr, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.rw_semaphore, i32, i32, i8, i32, i32, ptr, i64, ptr, ptr, %struct.rb_node, %struct.list_head, %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, i32, i64, i64, i32, %struct.list_head, %struct.list_head, %struct.btrfs_io_ctl, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i8, i32, %struct.btrfs_full_stripe_locks_tree, i64, i64, i64, i64, ptr, %struct.list_head }
%struct.btrfs_io_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/btrfs/transaction.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013pending csums is %llu\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"log_root->root_key.objectid == BTRFS_TREE_LOG_OBJECTID\00", [41 x i8] zeroinitializer }, align 32
@btrfs_defrag_root.__UNIQUE_ID_ddebug935 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, i8 1, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"btrfs_defrag_root\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"defrag_root cancelled\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017defrag_root cancelled\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"refcount_read(&trans->use_count) == 1\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"list_empty(&cur_trans->dirty_bgs)\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"list_empty(&cur_trans->io_bgs)\00", [33 x i8] zeroinitializer }, align 32
@__func__.btrfs_commit_transaction = private unnamed_addr constant [25 x i8] c"btrfs_commit_transaction\00", align 1
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error while writing out transaction\00", [60 x i8] zeroinitializer }, align 32
@btrfs_trans_handle_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Skipping commit of aborted transaction.\00", [54 x i8] zeroinitializer }, align 32
@btrfs_clean_one_deleted_snapshot.__UNIQUE_ID_ddebug957 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str, ptr @.str.13, i8 2, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"btrfs_clean_one_deleted_snapshot\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cleaner removing %llu\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017cleaner removing %llu\00", [40 x i8] zeroinitializer }, align 32
@btrfs_apply_pending_changes.__UNIQUE_ID_ddebug958 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.15, ptr @.str, ptr @.str.16, i8 2, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"btrfs_apply_pending_changes\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pending commit done\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017pending commit done\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014unknown pending changes left 0x%lx, ignoring\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"transaction\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@btrfs_blocked_trans_types = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1536, i32 19968, i32 24064, i32 24064, i32 24064], [40 x i8] zeroinitializer }, align 32
@join_transaction.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&cur_trans->pending_wait\00", [39 x i8] zeroinitializer }, align 32
@join_transaction.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&cur_trans->writer_wait\00", [40 x i8] zeroinitializer }, align 32
@join_transaction.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&cur_trans->commit_wait\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013BTRFS: tree_mod_seq_list not empty when creating a fresh transaction\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013BTRFS: tree_mod_log rb tree not empty when creating a fresh transaction\0A\00", [53 x i8] zeroinitializer }, align 32
@join_transaction.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&cur_trans->delayed_refs.lock\00", [34 x i8] zeroinitializer }, align 32
@join_transaction.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&cur_trans->cache_write_mutex\00", [34 x i8] zeroinitializer }, align 32
@join_transaction.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&cur_trans->dirty_bgs_lock\00", [37 x i8] zeroinitializer }, align 32
@join_transaction.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&cur_trans->dropped_roots_lock\00", [33 x i8] zeroinitializer }, align 32
@join_transaction.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&cur_trans->releasing_ebs_lock\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_btrfs_space_reservation = external dso_local global %struct.tracepoint, align 4
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_btrfs_space_reservation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.45, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"!trans->bytes_reserved\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"trans->block_rsv == &fs_info->trans_block_rsv\00", [50 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cur_trans->state >= TRANS_STATE_COMMIT_START\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pending->path\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pending->root_item\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@create_pending_snapshot.__UNIQUE_ID_ddebug937 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"create_pending_snapshot\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@create_pending_snapshot.__UNIQUE_ID_ddebug938 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@create_pending_snapshot.__UNIQUE_ID_ddebug939 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@create_pending_snapshot.__UNIQUE_ID_ddebug940 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@create_pending_snapshot.__UNIQUE_ID_ddebug941 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@create_pending_snapshot.__UNIQUE_ID_ddebug942 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@create_pending_snapshot.__UNIQUE_ID_ddebug943 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@create_pending_snapshot.__UNIQUE_ID_ddebug944 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@create_pending_snapshot.__UNIQUE_ID_ddebug945 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@create_pending_snapshot.__UNIQUE_ID_ddebug946 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@create_pending_snapshot.__UNIQUE_ID_ddebug947 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@create_pending_snapshot.__UNIQUE_ID_ddebug948 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@create_pending_snapshot.__UNIQUE_ID_ddebug949 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str, ptr @.str.53, i8 1, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/btrfs/transaction.h\00", [41 x i8] zeroinitializer }, align 32
@qgroup_account_snapshot.__UNIQUE_ID_ddebug936 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.56, ptr @.str, ptr @.str.53, i8 1, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qgroup_account_snapshot\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Error while writing out transaction for qgroup\00", [49 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"trans->transaction->state == TRANS_STATE_COMMIT_DOING\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"atomic_read(&root->log_writers) == 0\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"atomic_read(&root->log_commit[0]) == 0\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"atomic_read(&root->log_commit[1]) == 0\00", [57 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cur_trans->state == TRANS_STATE_COMMIT_DOING\00", [51 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_transaction_commit = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_transaction_commit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cleanup_transaction.__UNIQUE_ID_ddebug951 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.64, ptr @.str, ptr @.str.53, i8 1, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cleanup_transaction\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 16384]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 4096]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967221, i64 4294967279]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 125, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 133, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1175, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1501, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 2100, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 2367, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 2368, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 2403, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 2475, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 2508, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 2533, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 2537, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 719, i32 42 }
@___asan_gen_.145 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 49, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 34, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [26 x i8] c"btrfs_blocked_trans_types\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 99, i32 27 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 352, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 355, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 356, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 378, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 380, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 383, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 391, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 392, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 394, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 396, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1052, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 108, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 3491, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 980, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 987, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 2088, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1640, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1643, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1701, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [26 x i8] c"../fs/btrfs/transaction.h\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 190, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1557, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1592, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 271, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1415, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1433, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1434, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1435, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 169, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.286 = private constant [26 x i8] c"../fs/btrfs/transaction.c\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1974, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @btrfs_blocked_trans_types, ptr @join_transaction.__key, ptr @.str.23, ptr @join_transaction.__key.24, ptr @.str.25, ptr @join_transaction.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @join_transaction.__key.30, ptr @.str.31, ptr @join_transaction.__key.32, ptr @.str.33, ptr @join_transaction.__key.34, ptr @.str.35, ptr @join_transaction.__key.36, ptr @.str.37, ptr @join_transaction.__key.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_blocked_trans_types to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join_transaction.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join_transaction.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join_transaction.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join_transaction.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join_transaction.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join_transaction.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join_transaction.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join_transaction.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_put_transaction(ptr noundef %transaction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %use_count = getelementptr inbounds %struct.btrfs_transaction, ptr %transaction, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_count, i32 noundef 4) #13
  %0 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !163

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #13, !srcloc !165
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.body22, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end165_crit_edge, label %if.then10.i.i.i, !prof !166

if.end5.i.i.i.if.end165_crit_edge:                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end165

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %use_count, i32 noundef 3) #13
  br label %if.end165

do.body22:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !167
  %list = getelementptr inbounds %struct.btrfs_transaction, ptr %transaction, i32 0, i32 7
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %4, %list
  br i1 %cmp.i.not, label %do.end42, label %do.body34, !prof !166

do.body34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 127, 0\0A.popsection", ""() #13, !srcloc !168
  unreachable

do.end42:                                         ; preds = %do.body22
  %delayed_refs = getelementptr inbounds %struct.btrfs_transaction, ptr %transaction, i32 0, i32 23
  %5 = ptrtoint ptr %delayed_refs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %delayed_refs, align 8
  %cmp48.not = icmp eq ptr %6, null
  br i1 %cmp48.not, label %do.end42.if.end72_crit_edge, label %do.end66, !prof !166

do.end42.if.end72_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

do.end66:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 129, i32 noundef 9, ptr noundef null) #13
  br label %if.end72

if.end72:                                         ; preds = %do.end66, %do.end42.if.end72_crit_edge
  %dirty_extent_root = getelementptr inbounds %struct.btrfs_transaction, ptr %transaction, i32 0, i32 23, i32 1
  %7 = ptrtoint ptr %dirty_extent_root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %dirty_extent_root, align 8
  %cmp87.not = icmp eq ptr %8, null
  br i1 %cmp87.not, label %if.end72.if.end111_crit_edge, label %do.end105, !prof !166

if.end72.if.end111_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

do.end105:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 131, i32 noundef 9, ptr noundef null) #13
  br label %if.end111

if.end111:                                        ; preds = %do.end105, %if.end72.if.end111_crit_edge
  %pending_csums = getelementptr inbounds %struct.btrfs_transaction, ptr %transaction, i32 0, i32 23, i32 6
  %9 = ptrtoint ptr %pending_csums to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pending_csums, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool120.not = icmp eq i64 %10, 0
  br i1 %tobool120.not, label %if.end111.if.end124_crit_edge, label %if.then121

if.end111.if.end124_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then121:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  %fs_info = getelementptr inbounds %struct.btrfs_transaction, ptr %transaction, i32 0, i32 24
  %11 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_info, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %12, ptr noundef nonnull @.str.1, i64 noundef %10) #16
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %if.end111.if.end124_crit_edge
  %deleted_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %transaction, i32 0, i32 21
  %13 = ptrtoint ptr %deleted_bgs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %deleted_bgs, align 4
  %cmp.i183.not187 = icmp eq ptr %14, %deleted_bgs
  br i1 %cmp.i183.not187, label %if.end124.while.end_crit_edge, label %if.end124.while.body_crit_edge

if.end124.while.body_crit_edge:                   ; preds = %if.end124
  br label %while.body

if.end124.while.end_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %if.end124.while.body_crit_edge
  %15 = phi ptr [ %25, %list_del_init.exit.while.body_crit_edge ], [ %14, %if.end124.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %15, i32 -304
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %15, ptr %15, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %15, ptr %prev.i3.i, align 4
  tail call void @btrfs_unfreeze_block_group(ptr noundef %add.ptr) #13
  tail call void @btrfs_put_block_group(ptr noundef %add.ptr) #13
  %24 = ptrtoint ptr %deleted_bgs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %deleted_bgs, align 4
  %cmp.i183.not = icmp eq ptr %25, %deleted_bgs
  br i1 %cmp.i183.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %if.end124.while.end_crit_edge
  %dev_update_list = getelementptr inbounds %struct.btrfs_transaction, ptr %transaction, i32 0, i32 13
  %26 = ptrtoint ptr %dev_update_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %dev_update_list, align 4
  %cmp.i185.not = icmp eq ptr %27, %dev_update_list
  br i1 %cmp.i185.not, label %while.end.if.end157_crit_edge, label %do.end151, !prof !166

while.end.if.end157_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

do.end151:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef null) #13
  br label %if.end157

if.end157:                                        ; preds = %do.end151, %while.end.if.end157_crit_edge
  tail call void @kfree(ptr noundef %transaction) #13
  br label %if.end165

if.end165:                                        ; preds = %if.end157, %if.then10.i.i.i, %if.end5.i.i.i.if.end165_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_unfreeze_block_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_block_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_trans_release_chunk_metadata(ptr nocapture noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_bytes_reserved = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 2
  %0 = ptrtoint ptr %chunk_bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %chunk_bytes_reserved, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 4
  %chunk_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 22
  %call = tail call i64 @btrfs_block_rsv_release(ptr noundef %3, ptr noundef %chunk_block_rsv, i64 noundef %1, ptr noundef null) #13
  %4 = ptrtoint ptr %chunk_bytes_reserved to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %chunk_bytes_reserved, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_block_rsv_release(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_add_dropped_root(ptr nocapture noundef readonly %trans, ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction, align 4
  %dropped_roots_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %dropped_roots_lock) #13
  %root_list = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 30
  %dropped_roots = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %root_list, ptr noundef %5, ptr noundef %dropped_roots) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %root_list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %root_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dropped_roots, ptr %root_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 30, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %root_list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dropped_roots_lock) #13
  %fs_roots_radix_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %fs_roots_radix_lock) #13
  %fs_roots_radix = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 13
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %10 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %root_key, align 1
  %conv = trunc i64 %11 to i32
  %call = tail call ptr @radix_tree_tag_clear(ptr noundef %fs_roots_radix, i32 noundef %conv, i32 noundef 0) #13
  tail call void @_raw_spin_unlock(ptr noundef %fs_roots_radix_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_tag_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_record_root_in_trans(ptr noundef %trans, ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !169
  %last_trans = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 24
  %5 = ptrtoint ptr %last_trans to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %last_trans, align 8
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp = icmp eq i64 %6, %8
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true:                                    ; preds = %do.end
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state, align 4
  %and1.i19 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i19)
  %tobool7.not = icmp eq i32 %and1.i19, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %reloc_mutex = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %reloc_mutex, i32 noundef 0) #13
  %call10 = tail call fastcc i32 @record_root_in_trans(ptr noundef %trans, ptr noundef %root, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %reloc_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @record_root_in_trans(ptr noundef %trans, ptr noundef %root, i32 noundef %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %last_trans = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 24
  %5 = ptrtoint ptr %last_trans to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %last_trans, align 8
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp = icmp uge i64 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool2.not = icmp eq i32 %force, 0
  %or.cond = and i1 %tobool2.not, %cmp
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool2.not.old = icmp eq i32 %force, 0
  br i1 %tobool2.not.old, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  br i1 %tobool2.not, label %land.rhs, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %if.then
  %commit_root = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 2
  %9 = ptrtoint ptr %commit_root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %commit_root, align 8
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  %11 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node, align 4
  %cmp4.not = icmp eq ptr %10, %12
  br i1 %cmp4.not, label %land.rhs.if.end_crit_edge, label %do.end, !prof !166

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %tobool3.not74 = phi i1 [ true, %if.then.if.end_crit_edge ], [ false, %do.end ], [ false, %land.rhs.if.end_crit_edge ], [ true, %lor.lhs.false.if.end_crit_edge ]
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !170
  %fs_roots_radix_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %fs_roots_radix_lock) #13
  %last_trans32 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 24
  %13 = ptrtoint ptr %last_trans32 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %last_trans32, align 8
  %15 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp34 = icmp ne i64 %14, %16
  %brmerge = or i1 %tobool3.not74, %cmp34
  br i1 %brmerge, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %fs_roots_radix_lock) #13
  br label %cleanup

if.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fs_roots_radix = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 13
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %17 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %root_key, align 1
  %conv = trunc i64 %18 to i32
  %call40 = tail call ptr @radix_tree_tag_set(ptr noundef %fs_roots_radix, i32 noundef %conv, i32 noundef 0) #13
  tail call void @_raw_spin_unlock(ptr noundef %fs_roots_radix_lock) #13
  %19 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %trans, align 8
  %21 = ptrtoint ptr %last_trans32 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %last_trans32, align 8
  %call44 = tail call i32 @btrfs_init_reloc_root(ptr noundef %trans, ptr noundef %root) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !171
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then37, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then37 ], [ %call44, %if.end39 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_start_transaction(ptr noundef %root, i32 noundef %num_items) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @start_transaction(ptr noundef %root, i32 noundef %num_items, i32 noundef 513, i32 noundef 5, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @start_transaction(ptr noundef %root, i32 noundef %num_items, i32 noundef %type, i32 noundef %flush, i1 noundef zeroext %enforce_qgroups) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 149
  %2 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fs_state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup229_crit_edge, !prof !166

entry.cleanup229_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup229

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 146
  %8 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %journal_info, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end71, label %if.then8

if.then8:                                         ; preds = %if.end
  %and = and i32 %type, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then8.if.end28_crit_edge, label %do.end, !prof !166

if.then8.if.end28_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 595, i32 noundef 9, ptr noundef null) #13
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.then8.if.end28_crit_edge
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %journal_info37 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 146
  %12 = ptrtoint ptr %journal_info37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %journal_info37, align 4
  %use_count = getelementptr inbounds %struct.btrfs_trans_handle, ptr %13, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #13, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end28.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !163

if.end28.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end28
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !166

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end28.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end28.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use_count, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_count, i32 noundef 4) #13
  %16 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp ugt i32 %17, 2
  br i1 %cmp, label %do.end56, label %refcount_inc.exit.if.end62_crit_edge, !prof !163

refcount_inc.exit.if.end62_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

do.end56:                                         ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #13
  br label %if.end62

if.end62:                                         ; preds = %do.end56, %refcount_inc.exit.if.end62_crit_edge
  %block_rsv = getelementptr inbounds %struct.btrfs_trans_handle, ptr %13, i32 0, i32 5
  %18 = ptrtoint ptr %block_rsv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %block_rsv, align 8
  %orig_rsv = getelementptr inbounds %struct.btrfs_trans_handle, ptr %13, i32 0, i32 6
  %20 = ptrtoint ptr %orig_rsv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %orig_rsv, align 4
  store ptr null, ptr %block_rsv, align 8
  br label %got_it

if.end71:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_items)
  %cond = icmp eq i32 %num_items, 0
  br i1 %cond, label %land.lhs.true109, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end71
  %chunk_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %chunk_root to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chunk_root, align 8
  %cmp73.not = icmp eq ptr %22, %root
  br i1 %cmp73.not, label %land.lhs.true.if.end121_crit_edge, label %if.then74

land.lhs.true.if.end121_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.then74:                                        ; preds = %land.lhs.true
  %trans_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 21
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %23 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nodesize, align 8
  %mul = mul i32 %24, %num_items
  %call.i = tail call i32 @__btrfs_qgroup_reserve_meta(ptr noundef %root, i32 noundef %mul, i32 noundef 1, i1 noundef zeroext %enforce_qgroups) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool78.not = icmp eq i32 %call.i, 0
  br i1 %tobool78.not, label %if.end81, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  %25 = inttoptr i32 %call.i to ptr
  br label %cleanup229

if.end81:                                         ; preds = %if.then74
  %26 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nodesize, align 8
  %conv.i = zext i32 %27 to i64
  %conv2.i = zext i32 %num_items to i64
  %mul1.i = shl nuw nsw i64 %conv2.i, 4
  %mul3.i = mul i64 %mul1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flush)
  %cmp83 = icmp eq i32 %flush, 5
  br i1 %cmp83, label %land.lhs.true85, label %if.end81.if.end90_crit_edge

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

land.lhs.true85:                                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %full = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 24, i32 4
  %28 = ptrtoint ptr %full to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %full, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp87 = icmp eq i16 %29, 0
  %shl = zext i1 %cmp87 to i64
  %spec.select = shl i64 %mul3.i, %shl
  %spec.select339 = select i1 %cmp87, i64 %mul3.i, i64 0
  br label %if.end90

if.end90:                                         ; preds = %land.lhs.true85, %if.end81.if.end90_crit_edge
  %num_bytes.0 = phi i64 [ %mul3.i, %if.end81.if.end90_crit_edge ], [ %spec.select, %land.lhs.true85 ]
  %delayed_refs_bytes.0 = phi i64 [ 0, %if.end81.if.end90_crit_edge ], [ %spec.select339, %land.lhs.true85 ]
  %30 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fs_info1, align 8
  %reloc_ctl.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %31, i32 0, i32 103
  %32 = ptrtoint ptr %reloc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reloc_ctl.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end90.if.end95_crit_edge, label %lor.lhs.false.i

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

lor.lhs.false.i:                                  ; preds = %if.end90
  %state.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i, align 4
  %36 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool2.not.i = icmp eq i32 %36, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end95_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.end95_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %root_key.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %37 = ptrtoint ptr %root_key.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %root_key.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %38)
  %cmp.i = icmp eq i64 %38, -8
  br i1 %cmp.i, label %lor.lhs.false3.i.if.end95_crit_edge, label %need_reserve_reloc_root.exit

lor.lhs.false3.i.if.end95_crit_edge:              ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

need_reserve_reloc_root.exit:                     ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #15
  %reloc_root.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 4
  %39 = ptrtoint ptr %reloc_root.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reloc_root.i, align 8
  %tobool5.not.i = icmp eq ptr %40, null
  %add = select i1 %tobool5.not.i, i64 %conv.i, i64 0
  %spec.select383 = add i64 %add, %num_bytes.0
  %spec.select384 = zext i1 %tobool5.not.i to i8
  br label %if.end95

if.end95:                                         ; preds = %need_reserve_reloc_root.exit, %lor.lhs.false3.i.if.end95_crit_edge, %lor.lhs.false.i.if.end95_crit_edge, %if.end90.if.end95_crit_edge
  %num_bytes.1 = phi i64 [ %num_bytes.0, %lor.lhs.false3.i.if.end95_crit_edge ], [ %num_bytes.0, %lor.lhs.false.i.if.end95_crit_edge ], [ %num_bytes.0, %if.end90.if.end95_crit_edge ], [ %spec.select383, %need_reserve_reloc_root.exit ]
  %reloc_reserved.0 = phi i8 [ 0, %lor.lhs.false3.i.if.end95_crit_edge ], [ 0, %lor.lhs.false.i.if.end95_crit_edge ], [ 0, %if.end90.if.end95_crit_edge ], [ %spec.select384, %need_reserve_reloc_root.exit ]
  %call96 = tail call i32 @btrfs_block_rsv_add(ptr noundef %1, ptr noundef %trans_block_rsv, i64 noundef %num_bytes.1, i32 noundef %flush) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end95.reserve_fail_crit_edge

if.end95.reserve_fail_crit_edge:                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %reserve_fail

if.end99:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delayed_refs_bytes.0)
  %tobool100.not = icmp eq i64 %delayed_refs_bytes.0, 0
  br i1 %tobool100.not, label %if.end99.cleanup.thread367_crit_edge, label %if.then101

if.end99.cleanup.thread367_crit_edge:             ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread367

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @btrfs_migrate_to_delayed_refs_rsv(ptr noundef %1, ptr noundef %trans_block_rsv, i64 noundef %delayed_refs_bytes.0) #13
  %sub = sub i64 %num_bytes.1, %delayed_refs_bytes.0
  br label %cleanup.thread367

cleanup.thread367:                                ; preds = %if.then101, %if.end99.cleanup.thread367_crit_edge
  %num_bytes.2 = phi i64 [ %sub, %if.then101 ], [ %num_bytes.1, %if.end99.cleanup.thread367_crit_edge ]
  %space_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 21, i32 2
  %41 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %space_info, align 8
  %force_alloc = getelementptr inbounds %struct.btrfs_space_info, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %force_alloc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %force_alloc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool103 = icmp ne i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reloc_reserved.0)
  %extract.t374 = icmp ne i8 %reloc_reserved.0, 0
  br label %if.end121

land.lhs.true109:                                 ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flush)
  %cmp110.old = icmp eq i32 %flush, 5
  br i1 %cmp110.old, label %land.lhs.true112, label %land.lhs.true109.if.end121_crit_edge

land.lhs.true109.if.end121_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

land.lhs.true112:                                 ; preds = %land.lhs.true109
  %full113 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 24, i32 4
  %45 = ptrtoint ptr %full113 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %full113, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool114.not = icmp eq i16 %46, 0
  br i1 %tobool114.not, label %if.then115, label %land.lhs.true112.if.end121_crit_edge

land.lhs.true112.if.end121_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.then115:                                       ; preds = %land.lhs.true112
  %call116 = tail call i32 @btrfs_delayed_refs_rsv_refill(ptr noundef %1, i32 noundef 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then115.if.end121_crit_edge, label %if.then115.reserve_fail_crit_edge

if.then115.reserve_fail_crit_edge:                ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #15
  br label %reserve_fail

if.then115.if.end121_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.end121:                                        ; preds = %if.then115.if.end121_crit_edge, %land.lhs.true112.if.end121_crit_edge, %land.lhs.true109.if.end121_crit_edge, %cleanup.thread367, %land.lhs.true.if.end121_crit_edge
  %num_bytes.4 = phi i64 [ 0, %land.lhs.true112.if.end121_crit_edge ], [ 0, %if.then115.if.end121_crit_edge ], [ 0, %land.lhs.true109.if.end121_crit_edge ], [ %num_bytes.2, %cleanup.thread367 ], [ 0, %land.lhs.true.if.end121_crit_edge ]
  %qgroup_reserved.0.off0 = phi i32 [ 0, %land.lhs.true112.if.end121_crit_edge ], [ 0, %if.then115.if.end121_crit_edge ], [ 0, %land.lhs.true109.if.end121_crit_edge ], [ %mul, %cleanup.thread367 ], [ 0, %land.lhs.true.if.end121_crit_edge ]
  %reloc_reserved.2.off0 = phi i1 [ false, %land.lhs.true112.if.end121_crit_edge ], [ false, %if.then115.if.end121_crit_edge ], [ false, %land.lhs.true109.if.end121_crit_edge ], [ %extract.t374, %cleanup.thread367 ], [ false, %land.lhs.true.if.end121_crit_edge ]
  %do_chunk_alloc.2.off0 = phi i1 [ false, %land.lhs.true112.if.end121_crit_edge ], [ false, %if.then115.if.end121_crit_edge ], [ false, %land.lhs.true109.if.end121_crit_edge ], [ %tobool103, %cleanup.thread367 ], [ false, %land.lhs.true.if.end121_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_trans_handle_cachep to i32))
  %47 = load ptr, ptr @btrfs_trans_handle_cachep, align 4
  %call.i341395 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %47, i32 noundef 3392) #13
  %tobool123.not396 = icmp eq ptr %call.i341395, null
  br i1 %tobool123.not396, label %if.end121.alloc_fail_crit_edge, label %if.end125.lr.ph

if.end121.alloc_fail_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_fail

if.end125.lr.ph:                                  ; preds = %if.end121
  %and126 = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 45
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %type)
  %cmp.i345 = icmp eq i32 %type, 513
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 37
  br label %if.end125

if.end125:                                        ; preds = %if.then176.if.end125_crit_edge, %if.end125.lr.ph
  %call.i341397 = phi ptr [ %call.i341395, %if.end125.lr.ph ], [ %call.i341, %if.then176.if.end125_crit_edge ]
  br i1 %tobool127.not, label %if.end125.if.end129_crit_edge, label %if.then128

if.end125.if.end129_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129

if.then128:                                       ; preds = %if.end125
  %48 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sb, align 8
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %49, i32 0, i32 32, i32 2, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 49) #13
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %49, i32 0, i32 32, i32 2, i32 2, i32 5
  %50 = tail call ptr @llvm.returnaddress(i32 0) #13
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %51) #13
  %52 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %55, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.then128.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.then128.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then128
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 35, ptr noundef nonnull @.str.22) #13
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.then128.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %56 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool7.not.i.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i343, !prof !166

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !174
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %49, i32 0, i32 32, i32 2, i32 2, i32 1
  %59 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_count.i.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i342 = add i32 %67, %61
  %68 = inttoptr i32 %add.i.i.i342 to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add21.i.i.i = add i32 %70, 1
  store i32 %add21.i.i.i, ptr %68, align 4
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !175
  %and.i.i.i.i.i = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !163

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #13, !srcloc !176
  br label %sb_start_intwrite.exit

if.else.i.i.i343:                                 ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #13
  br label %sb_start_intwrite.exit

sb_start_intwrite.exit:                           ; preds = %if.else.i.i.i343, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !177
  %72 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i58.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  br label %if.end129

if.end129:                                        ; preds = %sb_start_intwrite.exit, %if.end125.if.end129_crit_edge
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags.i, align 4
  %78 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i344 = icmp eq i32 %78, 0
  %narrow.i = and i1 %cmp.i345, %tobool.not.i344
  br i1 %narrow.i, label %if.then132, label %if.end129.do.body134.preheader_crit_edge

if.end129.do.body134.preheader_crit_edge:         ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body134.preheader

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @wait_current_trans(ptr noundef %1)
  br label %do.body134.preheader

do.body134.preheader:                             ; preds = %if.then132, %if.end129.do.body134.preheader_crit_edge
  br label %do.body134

do.body134:                                       ; preds = %if.then138.do.body134_crit_edge, %do.body134.preheader
  %call135 = tail call fastcc i32 @join_transaction(ptr noundef %1, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call135)
  %cmp136 = icmp eq i32 %call135, -16
  br i1 %cmp136, label %if.then138, label %do.end155

if.then138:                                       ; preds = %do.body134
  tail call fastcc void @wait_current_trans(ptr noundef %1)
  %79 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.then138.do.body134_crit_edge [
    i32 16384, label %if.then138.join_fail_crit_edge
    i32 1024, label %if.then138.join_fail_crit_edge437
  ]

if.then138.join_fail_crit_edge437:                ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  br label %join_fail

if.then138.join_fail_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  br label %join_fail

if.then138.do.body134_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body134

do.end155:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp156 = icmp slt i32 %call135, 0
  br i1 %cmp156, label %do.end155.join_fail_crit_edge, label %if.end159

do.end155.join_fail_crit_edge:                    ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #15
  br label %join_fail

if.end159:                                        ; preds = %do.end155
  %80 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %running_transaction, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %81, align 8
  %84 = ptrtoint ptr %call.i341397 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %call.i341397, align 8
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call.i341397, i32 0, i32 4
  %85 = ptrtoint ptr %transaction to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %81, ptr %transaction, align 4
  %use_count161 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call.i341397, i32 0, i32 8
  %call.i.i.i347 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count161, i32 noundef 4) #13
  %86 = ptrtoint ptr %use_count161 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 1, ptr %use_count161, align 4
  %87 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fs_info1, align 8
  %fs_info163 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call.i341397, i32 0, i32 16
  %89 = ptrtoint ptr %fs_info163 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %fs_info163, align 4
  %type164 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call.i341397, i32 0, i32 9
  %90 = ptrtoint ptr %type164 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %type, ptr %type164, align 8
  %new_bgs = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call.i341397, i32 0, i32 17
  %91 = ptrtoint ptr %new_bgs to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %new_bgs, ptr %new_bgs, align 8
  %prev.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call.i341397, i32 0, i32 17, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %new_bgs, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !178
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %81, i32 0, i32 5
  %93 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp171.not = icmp eq i32 %94, 0
  br i1 %cmp171.not, label %if.end159.if.end181_crit_edge, label %land.lhs.true173

if.end159.if.end181_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end181

land.lhs.true173:                                 ; preds = %if.end159
  %95 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %flags.i, align 4
  %97 = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i349 = icmp eq i32 %97, 0
  %narrow.i351 = and i1 %cmp.i345, %tobool.not.i349
  br i1 %narrow.i351, label %if.then176, label %land.lhs.true173.if.end181_crit_edge

land.lhs.true173.if.end181_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end181

if.then176:                                       ; preds = %land.lhs.true173
  %98 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task, align 8
  %journal_info179 = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 146
  %100 = ptrtoint ptr %journal_info179 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i341397, ptr %journal_info179, align 4
  %call180 = tail call i32 @btrfs_commit_transaction(ptr noundef nonnull %call.i341397)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_trans_handle_cachep to i32))
  %101 = load ptr, ptr @btrfs_trans_handle_cachep, align 4
  %call.i341 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %101, i32 noundef 3392) #13
  %tobool123.not = icmp eq ptr %call.i341, null
  br i1 %tobool123.not, label %if.then176.alloc_fail_crit_edge, label %if.then176.if.end125_crit_edge

if.then176.if.end125_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.then176.alloc_fail_crit_edge:                  ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_fail

if.end181:                                        ; preds = %land.lhs.true173.if.end181_crit_edge, %if.end159.if.end181_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %num_bytes.4)
  %tobool182.not = icmp eq i64 %num_bytes.4, 0
  br i1 %tobool182.not, label %if.end181.got_it_crit_edge, label %if.then183

if.end181.got_it_crit_edge:                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #15
  br label %got_it

if.then183:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #15
  %102 = ptrtoint ptr %call.i341397 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %call.i341397, align 8
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %1, i64 noundef %103, i64 noundef %num_bytes.4, i32 noundef 1)
  %trans_block_rsv185 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 21
  %block_rsv186 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call.i341397, i32 0, i32 5
  %104 = ptrtoint ptr %block_rsv186 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %trans_block_rsv185, ptr %block_rsv186, align 8
  %bytes_reserved = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call.i341397, i32 0, i32 1
  %105 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %num_bytes.4, ptr %bytes_reserved, align 8
  %reloc_reserved188 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call.i341397, i32 0, i32 14
  %frombool189 = zext i1 %reloc_reserved.2.off0 to i8
  %106 = ptrtoint ptr %reloc_reserved188 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %frombool189, ptr %reloc_reserved188, align 1
  br label %got_it

got_it:                                           ; preds = %if.then183, %if.end181.got_it_crit_edge, %if.end62
  %h.0 = phi ptr [ %13, %if.end62 ], [ %call.i341397, %if.then183 ], [ %call.i341397, %if.end181.got_it_crit_edge ]
  %tobool203.not = phi i1 [ true, %if.end62 ], [ false, %if.then183 ], [ true, %if.end181.got_it_crit_edge ]
  %do_chunk_alloc.3.off0 = phi i1 [ false, %if.end62 ], [ %do_chunk_alloc.2.off0, %if.then183 ], [ %do_chunk_alloc.2.off0, %if.end181.got_it_crit_edge ]
  %107 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task, align 8
  %journal_info193 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 146
  %109 = ptrtoint ptr %journal_info193 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %journal_info193, align 4
  %tobool194.not = icmp eq ptr %110, null
  br i1 %tobool194.not, label %if.then195, label %got_it.if.end199_crit_edge

got_it.if.end199_crit_edge:                       ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199

if.then195:                                       ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %journal_info193 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %h.0, ptr %journal_info193, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then195, %got_it.if.end199_crit_edge
  %do_chunk_alloc.3.off0.not = xor i1 %do_chunk_alloc.3.off0, true
  %brmerge = or i1 %tobool203.not, %do_chunk_alloc.3.off0.not
  br i1 %brmerge, label %if.end199.if.end210_crit_edge, label %if.then204

if.end199.if.end210_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end210

if.then204:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #15
  %block_rsv205 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %h.0, i32 0, i32 5
  %112 = ptrtoint ptr %block_rsv205 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %block_rsv205, align 8
  %space_info206 = getelementptr inbounds %struct.btrfs_block_rsv, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %space_info206 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %space_info206, align 8
  %flags207 = getelementptr inbounds %struct.btrfs_space_info, ptr %115, i32 0, i32 14
  %116 = ptrtoint ptr %flags207 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %flags207, align 8
  %call208 = tail call i64 @btrfs_get_alloc_profile(ptr noundef %1, i64 noundef %117) #13
  %call209 = tail call i32 @btrfs_chunk_alloc(ptr noundef %h.0, i64 noundef %call208, i32 noundef 0) #13
  br label %if.end210

if.end210:                                        ; preds = %if.then204, %if.end199.if.end210_crit_edge
  %118 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fs_info1, align 8
  %state.i354 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %120 = ptrtoint ptr %state.i354 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %state.i354, align 4
  %122 = and i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i355 = icmp eq i32 %122, 0
  br i1 %tobool.not.i355, label %if.end210.cleanup229_crit_edge, label %do.end.i

if.end210.cleanup229_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup229

do.end.i:                                         ; preds = %if.end210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !169
  %last_trans.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 24
  %123 = ptrtoint ptr %last_trans.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %last_trans.i, align 8
  %125 = ptrtoint ptr %h.0 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %h.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %124, i64 %126)
  %cmp.i356 = icmp eq i64 %124, %126
  br i1 %cmp.i356, label %land.lhs.true.i, label %do.end.i.btrfs_record_root_in_trans.exit_crit_edge

do.end.i.btrfs_record_root_in_trans.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_record_root_in_trans.exit

land.lhs.true.i:                                  ; preds = %do.end.i
  %127 = ptrtoint ptr %state.i354 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %state.i354, align 4
  %and1.i19.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i19.i)
  %tobool7.not.i = icmp eq i32 %and1.i19.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.cleanup229_crit_edge, label %land.lhs.true.i.btrfs_record_root_in_trans.exit_crit_edge

land.lhs.true.i.btrfs_record_root_in_trans.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_record_root_in_trans.exit

land.lhs.true.i.cleanup229_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup229

btrfs_record_root_in_trans.exit:                  ; preds = %land.lhs.true.i.btrfs_record_root_in_trans.exit_crit_edge, %do.end.i.btrfs_record_root_in_trans.exit_crit_edge
  %reloc_mutex.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %119, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %reloc_mutex.i, i32 noundef 0) #13
  %call10.i = tail call fastcc i32 @record_root_in_trans(ptr noundef %h.0, ptr noundef %root, i32 noundef 0) #13
  tail call void @mutex_unlock(ptr noundef %reloc_mutex.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool212.not = icmp eq i32 %call10.i, 0
  br i1 %tobool212.not, label %btrfs_record_root_in_trans.exit.cleanup229_crit_edge, label %if.then213

btrfs_record_root_in_trans.exit.cleanup229_crit_edge: ; preds = %btrfs_record_root_in_trans.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup229

if.then213:                                       ; preds = %btrfs_record_root_in_trans.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i358 = tail call fastcc i32 @__btrfs_end_transaction(ptr noundef %h.0, i32 noundef 0) #13
  %129 = inttoptr i32 %call10.i to ptr
  br label %cleanup229

join_fail:                                        ; preds = %do.end155.join_fail_crit_edge, %if.then138.join_fail_crit_edge, %if.then138.join_fail_crit_edge437
  %ret.1.ph380 = phi i32 [ -2, %if.then138.join_fail_crit_edge ], [ -2, %if.then138.join_fail_crit_edge437 ], [ %call135, %do.end155.join_fail_crit_edge ]
  br i1 %tobool127.not, label %join_fail.if.end221_crit_edge, label %if.then219

join_fail.if.end221_crit_edge:                    ; preds = %join_fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end221

if.then219:                                       ; preds = %join_fail
  call void @__sanitizer_cov_trace_pc() #15
  %130 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sb, align 8
  tail call fastcc void @sb_end_intwrite(ptr noundef %131)
  br label %if.end221

if.end221:                                        ; preds = %if.then219, %join_fail.if.end221_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_trans_handle_cachep to i32))
  %132 = load ptr, ptr @btrfs_trans_handle_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %132, ptr noundef nonnull %call.i341397) #13
  br label %alloc_fail

alloc_fail:                                       ; preds = %if.end221, %if.then176.alloc_fail_crit_edge, %if.end121.alloc_fail_crit_edge
  %ret.2 = phi i32 [ %ret.1.ph380, %if.end221 ], [ -12, %if.end121.alloc_fail_crit_edge ], [ -12, %if.then176.alloc_fail_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %num_bytes.4)
  %tobool222.not = icmp eq i64 %num_bytes.4, 0
  br i1 %tobool222.not, label %alloc_fail.reserve_fail_crit_edge, label %if.then223

alloc_fail.reserve_fail_crit_edge:                ; preds = %alloc_fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %reserve_fail

if.then223:                                       ; preds = %alloc_fail
  call void @__sanitizer_cov_trace_pc() #15
  %trans_block_rsv224 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 21
  %call225 = tail call i64 @btrfs_block_rsv_release(ptr noundef %1, ptr noundef %trans_block_rsv224, i64 noundef %num_bytes.4, ptr noundef null) #13
  br label %reserve_fail

reserve_fail:                                     ; preds = %if.then223, %alloc_fail.reserve_fail_crit_edge, %if.then115.reserve_fail_crit_edge, %if.end95.reserve_fail_crit_edge
  %qgroup_reserved.1.off0 = phi i32 [ %qgroup_reserved.0.off0, %if.then223 ], [ %qgroup_reserved.0.off0, %alloc_fail.reserve_fail_crit_edge ], [ 0, %if.then115.reserve_fail_crit_edge ], [ %mul, %if.end95.reserve_fail_crit_edge ]
  %ret.3 = phi i32 [ %ret.2, %if.then223 ], [ %ret.2, %alloc_fail.reserve_fail_crit_edge ], [ %call116, %if.then115.reserve_fail_crit_edge ], [ %call96, %if.end95.reserve_fail_crit_edge ]
  tail call void @__btrfs_qgroup_free_meta(ptr noundef %root, i32 noundef %qgroup_reserved.1.off0, i32 noundef 1) #13
  %133 = inttoptr i32 %ret.3 to ptr
  br label %cleanup229

cleanup229:                                       ; preds = %reserve_fail, %if.then213, %btrfs_record_root_in_trans.exit.cleanup229_crit_edge, %land.lhs.true.i.cleanup229_crit_edge, %if.end210.cleanup229_crit_edge, %cleanup.thread, %entry.cleanup229_crit_edge
  %retval.1 = phi ptr [ %129, %if.then213 ], [ %133, %reserve_fail ], [ %h.0, %btrfs_record_root_in_trans.exit.cleanup229_crit_edge ], [ inttoptr (i32 -30 to ptr), %entry.cleanup229_crit_edge ], [ %25, %cleanup.thread ], [ %h.0, %if.end210.cleanup229_crit_edge ], [ %h.0, %land.lhs.true.i.cleanup229_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_start_transaction_fallback_global_rsv(ptr noundef %root, i32 noundef %num_items) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @start_transaction(ptr noundef %root, i32 noundef %num_items, i32 noundef 513, i32 noundef 6, i1 noundef zeroext false)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_join_transaction(ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @start_transaction(ptr noundef %root, i32 noundef 0, i32 noundef 2049, i32 noundef 0, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_join_transaction_spacecache(ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @start_transaction(ptr noundef %root, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_join_transaction_nostart(ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @start_transaction(ptr noundef %root, i32 noundef 0, i32 noundef 16384, i32 noundef 0, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_attach_transaction(ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @start_transaction(ptr noundef %root, i32 noundef 0, i32 noundef 1024, i32 noundef 0, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_attach_transaction_barrier(ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @start_transaction(ptr noundef %root, i32 noundef 0, i32 noundef 1024, i32 noundef 0, i1 noundef zeroext true)
  %cmp = icmp eq ptr %call, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 8
  %call2 = tail call i32 @btrfs_wait_for_commit(ptr noundef %1, i64 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_wait_for_commit(ptr noundef %fs_info, i64 noundef %transid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %transid)
  %tobool.not = icmp eq i64 %transid, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %last_trans_committed = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 27
  %0 = ptrtoint ptr %last_trans_committed to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %last_trans_committed, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %transid)
  %cmp.not = icmp ult i64 %1, %transid
  br i1 %cmp.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %if.then
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %trans_list = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 59
  br label %for.cond

for.cond:                                         ; preds = %if.end7.for.cond_crit_edge, %if.end
  %.pn84.in = phi ptr [ %trans_list, %if.end ], [ %.pn84, %if.end7.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn84.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn84 = load ptr, ptr %.pn84.in, align 4
  %cmp3.not = icmp eq ptr %.pn84, %trans_list
  br i1 %cmp3.not, label %for.cond.for.end.thread_crit_edge, label %for.body

for.cond.for.end.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

for.body:                                         ; preds = %for.cond
  %t.0 = getelementptr i8, ptr %.pn84, i32 -32
  %3 = ptrtoint ptr %t.0 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %t.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %transid)
  %cmp5 = icmp eq i64 %4, %transid
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  %t.0.le = getelementptr i8, ptr %.pn84, i32 -32
  %use_count = getelementptr i8, ptr %.pn84, i32 -16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #13, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then6.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !163

if.then6.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then6
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.for.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !166

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.for.end_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then6.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then6.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use_count, i32 noundef %.sink.i.i.i) #13
  br label %for.end

if.end7:                                          ; preds = %for.body
  %cmp9 = icmp ugt i64 %4, %transid
  br i1 %cmp9, label %if.end7.for.end.thread_crit_edge, label %if.end7.for.cond_crit_edge

if.end7.for.cond_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end7.for.end.thread_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end7.for.end.thread_crit_edge, %for.cond.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  br label %if.then19

for.end:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  %tobool18.not = icmp eq ptr %t.0.le, null
  br i1 %tobool18.not, label %for.end.if.then19_crit_edge, label %for.end.if.end55_crit_edge

for.end.if.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

for.end.if.then19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then19:                                        ; preds = %for.end.if.then19_crit_edge, %for.end.thread
  %7 = ptrtoint ptr %last_trans_committed to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %last_trans_committed, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %transid)
  %cmp21 = icmp ult i64 %8, %transid
  %spec.select = select i1 %cmp21, i32 -22, i32 0
  br label %out

if.else:                                          ; preds = %entry
  %trans_lock25 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock25) #13
  %trans_list27 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 59
  %prev = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 59, i32 1
  %9 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn102 = load ptr, ptr %prev, align 4
  %cmp33.not103 = icmp eq ptr %.pn102, %trans_list27
  br i1 %cmp33.not103, label %if.else.for.end50.thread_crit_edge, label %if.else.for.body35_crit_edge

if.else.for.body35_crit_edge:                     ; preds = %if.else
  br label %for.body35

if.else.for.end50.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50.thread

for.body35:                                       ; preds = %for.inc44.for.body35_crit_edge, %if.else.for.body35_crit_edge
  %.pn104 = phi ptr [ %.pn, %for.inc44.for.body35_crit_edge ], [ %.pn102, %if.else.for.body35_crit_edge ]
  %state = getelementptr i8, ptr %.pn104, i32 -8
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %11, label %if.end41 [
    i32 0, label %for.inc44
    i32 5, label %for.body35.for.end50.thread_crit_edge
  ]

for.body35.for.end50.thread_crit_edge:            ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50.thread

if.end41:                                         ; preds = %for.body35
  %t.1.le = getelementptr i8, ptr %.pn104, i32 -32
  %use_count42 = getelementptr i8, ptr %.pn104, i32 -16
  %call.i.i.i.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count42, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %use_count42, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count42, ptr %use_count42, i32 1, ptr elementtype(i32) %use_count42) #13, !srcloc !172
  %asmresult.i.i.i.i.i86 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i86)
  %tobool1.not.i.i.i87 = icmp eq i32 %asmresult.i.i.i.i.i86, 0
  br i1 %tobool1.not.i.i.i87, label %if.end41.if.end15.sink.split.i.i.i92_crit_edge, label %if.else.i.i.i90, !prof !163

if.end41.if.end15.sink.split.i.i.i92_crit_edge:   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i92

if.else.i.i.i90:                                  ; preds = %if.end41
  %add.i.i.i88 = add i32 %asmresult.i.i.i.i.i86, 1
  %14 = or i32 %add.i.i.i88, %asmresult.i.i.i.i.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i89 = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i89, label %if.else.i.i.i90.for.end50_crit_edge, label %if.else.i.i.i90.if.end15.sink.split.i.i.i92_crit_edge, !prof !166

if.else.i.i.i90.if.end15.sink.split.i.i.i92_crit_edge: ; preds = %if.else.i.i.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i92

if.else.i.i.i90.for.end50_crit_edge:              ; preds = %if.else.i.i.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50

if.end15.sink.split.i.i.i92:                      ; preds = %if.else.i.i.i90.if.end15.sink.split.i.i.i92_crit_edge, %if.end41.if.end15.sink.split.i.i.i92_crit_edge
  %.sink.i.i.i91 = phi i32 [ 2, %if.end41.if.end15.sink.split.i.i.i92_crit_edge ], [ 1, %if.else.i.i.i90.if.end15.sink.split.i.i.i92_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use_count42, i32 noundef %.sink.i.i.i91) #13
  br label %for.end50

for.inc44:                                        ; preds = %for.body35
  %prev47 = getelementptr inbounds %struct.list_head, ptr %.pn104, i32 0, i32 1
  %15 = ptrtoint ptr %prev47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %prev47, align 4
  %cmp33.not = icmp eq ptr %.pn, %trans_list27
  br i1 %cmp33.not, label %for.inc44.for.end50.thread_crit_edge, label %for.inc44.for.body35_crit_edge

for.inc44.for.body35_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body35

for.inc44.for.end50.thread_crit_edge:             ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50.thread

for.end50.thread:                                 ; preds = %for.inc44.for.end50.thread_crit_edge, %for.body35.for.end50.thread_crit_edge, %if.else.for.end50.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock25) #13
  br label %out

for.end50:                                        ; preds = %if.end15.sink.split.i.i.i92, %if.else.i.i.i90.for.end50_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock25) #13
  %tobool52.not = icmp eq ptr %t.1.le, null
  br i1 %tobool52.not, label %for.end50.out_crit_edge, label %for.end50.if.end55_crit_edge

for.end50.if.end55_crit_edge:                     ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

for.end50.out_crit_edge:                          ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end55:                                         ; preds = %for.end50.if.end55_crit_edge, %for.end.if.end55_crit_edge
  %cur_trans.2 = phi ptr [ %t.0.le, %for.end.if.end55_crit_edge ], [ %t.1.le, %for.end50.if.end55_crit_edge ]
  tail call fastcc void @wait_for_commit(ptr noundef nonnull %cur_trans.2, i32 noundef 5)
  tail call void @btrfs_put_transaction(ptr noundef nonnull %cur_trans.2)
  br label %out

out:                                              ; preds = %if.end55, %for.end50.out_crit_edge, %for.end50.thread, %if.then19, %if.then.out_crit_edge
  %ret.2 = phi i32 [ 0, %if.then.out_crit_edge ], [ 0, %if.end55 ], [ 0, %for.end50.out_crit_edge ], [ %spec.select, %if.then19 ], [ 0, %for.end50.thread ]
  ret i32 %ret.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_for_commit(ptr noundef %commit, i32 noundef %min_state) unnamed_addr #4 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_transaction, ptr %commit, i32 0, i32 24
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %2 = ptrtoint ptr %commit to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %commit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %min_state)
  %cmp16 = icmp ult i32 %min_state, 5
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 57
  %trans_list = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 59
  br label %while.cond

while.cond:                                       ; preds = %refcount_inc.exit, %entry
  %put.0.off0 = phi i1 [ false, %entry ], [ true, %refcount_inc.exit ]
  %commit.addr.0 = phi ptr [ %commit, %entry ], [ %add.ptr, %refcount_inc.exit ]
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 862) #13
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %commit.addr.0, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %min_state)
  %cmp.not = icmp ult i32 %5, %min_state
  br i1 %cmp.not, label %if.end, label %while.cond.do.end13_crit_edge

while.cond.do.end13_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

if.end:                                           ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %commit_wait = getelementptr inbounds %struct.btrfs_transaction, ptr %commit.addr.0, i32 0, i32 11
  %call52 = call i32 @prepare_to_wait_event(ptr noundef %commit_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %min_state)
  %cmp8.not53 = icmp ult i32 %8, %min_state
  br i1 %cmp8.not53, label %if.end.cleanup_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #13
  %call = call i32 @prepare_to_wait_event(ptr noundef %commit_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  %cmp8.not = icmp ult i32 %10, %min_state
  br i1 %cmp8.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %commit_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end13

do.end13:                                         ; preds = %for.end, %while.cond.do.end13_crit_edge
  br i1 %put.0.off0, label %if.then14, label %do.end13.if.end15_crit_edge

do.end13.if.end15_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then14:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_put_transaction(ptr noundef %commit.addr.0)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.end13.if.end15_crit_edge
  br i1 %cmp16, label %if.end15.while.end_crit_edge, label %if.end18

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end18:                                         ; preds = %if.end15
  call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %11 = ptrtoint ptr %trans_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %trans_list, align 4
  %cmp24.not = icmp eq ptr %12, %trans_list
  %add.ptr = getelementptr i8, ptr %12, i32 -32
  %tobool26.not51 = icmp eq ptr %add.ptr, null
  %tobool26.not = or i1 %cmp24.not, %tobool26.not51
  br i1 %tobool26.not, label %if.end18.if.then29_crit_edge, label %lor.lhs.false

if.end18.if.then29_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end18
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %3)
  %cmp28 = icmp ugt i64 %14, %3
  br i1 %cmp28, label %lor.lhs.false.if.then29_crit_edge, label %if.end31

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.end18.if.then29_crit_edge
  call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  br label %while.end

if.end31:                                         ; preds = %lor.lhs.false
  %use_count = getelementptr i8, ptr %12, i32 -16
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #13
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #13, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end31.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !163

if.end31.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end31
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !166

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end31.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end31.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %use_count, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  br label %while.cond

while.end:                                        ; preds = %if.then29, %if.end15.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_throttle(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wait_current_trans(ptr noundef %fs_info)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_current_trans(ptr noundef %fs_info) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 37
  %0 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %running_transaction, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 8
  %4 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %is_transaction_blocked.exit, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

is_transaction_blocked.exit:                      ; preds = %land.lhs.true
  %aborted.i = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %aborted.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %aborted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.not = icmp eq i32 %7, 0
  br i1 %tobool.not.i.not, label %if.then, label %is_transaction_blocked.exit.if.else_crit_edge

is_transaction_blocked.exit.if.else_crit_edge:    ; preds = %is_transaction_blocked.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %is_transaction_blocked.exit
  %use_count = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #13, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !163

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !166

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use_count, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 545) #13
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp ugt i32 %11, 2
  br i1 %cmp, label %refcount_inc.exit.do.end35_crit_edge, label %do.end9

refcount_inc.exit.do.end35_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

do.end9:                                          ; preds = %refcount_inc.exit
  %12 = ptrtoint ptr %aborted.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %aborted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.end, label %do.end9.do.end35_crit_edge, !prof !166

do.end9.do.end35_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end35

if.end:                                           ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %transaction_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 39
  %call1453 = call i32 @prepare_to_wait_event(ptr noundef %transaction_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp1654 = icmp ugt i32 %16, 2
  br i1 %cmp1654, label %if.end.for.end_crit_edge, label %if.end.do.end20_crit_edge

if.end.do.end20_crit_edge:                        ; preds = %if.end
  br label %do.end20

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end20:                                         ; preds = %cleanup.do.end20_crit_edge, %if.end.do.end20_crit_edge
  %17 = ptrtoint ptr %aborted.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %aborted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool23.not = icmp eq i32 %18, 0
  br i1 %tobool23.not, label %cleanup, label %do.end20.for.end_crit_edge, !prof !166

do.end20.for.end_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %do.end20
  call void @schedule() #13
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %transaction_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 8
  %cmp16 = icmp ugt i32 %20, 2
  br i1 %cmp16, label %cleanup.for.end_crit_edge, label %cleanup.do.end20_crit_edge

cleanup.do.end20_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end20.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %transaction_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end35

do.end35:                                         ; preds = %for.end, %do.end9.do.end35_crit_edge, %refcount_inc.exit.do.end35_crit_edge
  call void @btrfs_put_transaction(ptr noundef nonnull %1)
  br label %if.end37

if.else:                                          ; preds = %is_transaction_blocked.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  br label %if.end37

if.end37:                                         ; preds = %if.else, %do.end35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_should_end_transaction(ptr nocapture noundef readonly %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transaction, align 4
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 23, i32 7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %fs_info1.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %6 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info1.i, align 4
  %call.i = tail call zeroext i1 @btrfs_check_space_for_delayed_refs(ptr noundef %7) #13
  br i1 %call.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %global_block_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 20
  %call2.i = tail call i32 @btrfs_block_rsv_check(ptr noundef %global_block_rsv.i, i32 noundef 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.i = icmp ne i32 %call2.i, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ], [ %tobool.i, %if.end.i ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_end_transaction(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__btrfs_end_transaction(ptr noundef %trans, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__btrfs_end_transaction(ptr noundef %trans, i32 noundef %throttle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 4
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction, align 4
  %use_count = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_count, i32 noundef 4) #13
  %4 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #13, !srcloc !165
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then.refcount_dec.exit_crit_edge, !prof !163

if.then.refcount_dec.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %use_count, i32 noundef 4) #13
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %if.then.refcount_dec.exit_crit_edge
  %orig_rsv = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 6
  %7 = ptrtoint ptr %orig_rsv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %orig_rsv, align 4
  %block_rsv = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 5
  %9 = ptrtoint ptr %block_rsv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %block_rsv, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_info, align 4
  %block_rsv.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 5
  %12 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %block_rsv.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 1
  %14 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bytes_reserved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool2.not.i = icmp eq i64 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  br i1 %tobool2.not.i, label %if.then.i.btrfs_trans_release_metadata.exit_crit_edge, label %cond.false.i, !prof !166

if.then.i.btrfs_trans_release_metadata.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_trans_release_metadata.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.46, i32 noundef 980) #17
  unreachable

if.end.i:                                         ; preds = %if.end
  br i1 %tobool2.not.i, label %if.end.i.btrfs_trans_release_metadata.exit_crit_edge, label %if.end9.i

if.end.i.btrfs_trans_release_metadata.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_trans_release_metadata.exit

if.end9.i:                                        ; preds = %if.end.i
  %trans_block_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %11, i32 0, i32 21
  %cmp.i = icmp eq ptr %13, %trans_block_rsv.i
  br i1 %cmp.i, label %cond.end19.i, label %cond.false18.i, !prof !166

cond.false18.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.47, i32 noundef 987) #17
  unreachable

cond.end19.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %trans, align 8
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %11, i64 noundef %17, i64 noundef %15, i32 noundef 0) #13
  %18 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %block_rsv.i, align 8
  %20 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bytes_reserved.i, align 8
  %call.i = tail call i64 @btrfs_block_rsv_release(ptr noundef %11, ptr noundef %19, i64 noundef %21, ptr noundef null) #13
  %22 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %bytes_reserved.i, align 8
  br label %btrfs_trans_release_metadata.exit

btrfs_trans_release_metadata.exit:                ; preds = %cond.end19.i, %if.end.i.btrfs_trans_release_metadata.exit_crit_edge, %if.then.i.btrfs_trans_release_metadata.exit_crit_edge
  %23 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %block_rsv.i, align 8
  tail call void @btrfs_create_pending_block_groups(ptr noundef %trans) #13
  %chunk_bytes_reserved.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 2
  %24 = ptrtoint ptr %chunk_bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %chunk_bytes_reserved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool.not.i138 = icmp eq i64 %25, 0
  br i1 %tobool.not.i138, label %btrfs_trans_release_metadata.exit.btrfs_trans_release_chunk_metadata.exit_crit_edge, label %if.end.i141

btrfs_trans_release_metadata.exit.btrfs_trans_release_chunk_metadata.exit_crit_edge: ; preds = %btrfs_trans_release_metadata.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_trans_release_chunk_metadata.exit

if.end.i141:                                      ; preds = %btrfs_trans_release_metadata.exit
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fs_info, align 4
  %chunk_block_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %27, i32 0, i32 22
  %call.i140 = tail call i64 @btrfs_block_rsv_release(ptr noundef %27, ptr noundef %chunk_block_rsv.i, i64 noundef %25, ptr noundef null) #13
  %28 = ptrtoint ptr %chunk_bytes_reserved.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %chunk_bytes_reserved.i, align 8
  br label %btrfs_trans_release_chunk_metadata.exit

btrfs_trans_release_chunk_metadata.exit:          ; preds = %if.end.i141, %btrfs_trans_release_metadata.exit.btrfs_trans_release_chunk_metadata.exit_crit_edge
  %type = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 9
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 8
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %btrfs_trans_release_chunk_metadata.exit.if.end4_crit_edge, label %if.then3

btrfs_trans_release_chunk_metadata.exit.if.end4_crit_edge: ; preds = %btrfs_trans_release_chunk_metadata.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %btrfs_trans_release_chunk_metadata.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 45
  %31 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sb, align 8
  tail call fastcc void @sb_end_intwrite(ptr noundef %32)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %btrfs_trans_release_chunk_metadata.exit.if.end4_crit_edge
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 37
  %33 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %running_transaction, align 8
  %cmp5.not = icmp eq ptr %3, %34
  br i1 %cmp5.not, label %if.end4.if.end20_crit_edge, label %do.end, !prof !166

if.end4.if.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1018, i32 noundef 9, ptr noundef null) #13
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end4.if.end20_crit_edge
  %num_writers = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_writers, i32 noundef 4) #13
  %35 = ptrtoint ptr %num_writers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %num_writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp29 = icmp slt i32 %36, 1
  br i1 %cmp29, label %do.end45, label %if.end20.if.end51_crit_edge, !prof !163

if.end20.if.end51_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

do.end45:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1019, i32 noundef 9, ptr noundef null) #13
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end20.if.end51_crit_edge
  %call.i.i137 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_writers, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %num_writers, i32 1, i32 3, i32 1) #13
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_writers, ptr %num_writers, i32 1, ptr elementtype(i32) %num_writers) #13, !srcloc !179
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type, align 8
  %and.i = and i32 %39, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i142 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i142, label %if.end51.extwriter_counter_dec.exit_crit_edge, label %if.then.i144

if.end51.extwriter_counter_dec.exit_crit_edge:    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %extwriter_counter_dec.exit

if.then.i144:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %num_extwriters.i = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 1
  %call.i.i.i143 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_extwriters.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %num_extwriters.i, i32 1, i32 3, i32 1) #13
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_extwriters.i, ptr %num_extwriters.i, i32 1, ptr elementtype(i32) %num_extwriters.i) #13, !srcloc !179
  br label %extwriter_counter_dec.exit

extwriter_counter_dec.exit:                       ; preds = %if.then.i144, %if.end51.extwriter_counter_dec.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !180
  %head.i.i.i = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %42, %head.i.i.i
  br i1 %cmp.i.i.i.not.i, label %extwriter_counter_dec.exit.cond_wake_up.exit_crit_edge, label %if.then.i146

extwriter_counter_dec.exit.cond_wake_up.exit_crit_edge: ; preds = %extwriter_counter_dec.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond_wake_up.exit

if.then.i146:                                     ; preds = %extwriter_counter_dec.exit
  call void @__sanitizer_cov_trace_pc() #15
  %writer_wait = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %writer_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cond_wake_up.exit

cond_wake_up.exit:                                ; preds = %if.then.i146, %extwriter_counter_dec.exit.cond_wake_up.exit_crit_edge
  tail call void @btrfs_put_transaction(ptr noundef %3)
  %43 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i148 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i148 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 146
  %47 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %journal_info, align 4
  %cmp62 = icmp eq ptr %48, %trans
  br i1 %cmp62, label %if.then63, label %cond_wake_up.exit.if.end67_crit_edge

cond_wake_up.exit.if.end67_crit_edge:             ; preds = %cond_wake_up.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then63:                                        ; preds = %cond_wake_up.exit
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %journal_info to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %journal_info, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %cond_wake_up.exit.if.end67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %throttle)
  %tobool68.not = icmp eq i32 %throttle, 0
  br i1 %tobool68.not, label %if.end67.do.end73_crit_edge, label %if.then69

if.end67.do.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end73

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @btrfs_run_delayed_iputs(ptr noundef %1) #13
  br label %do.end73

do.end73:                                         ; preds = %if.then69, %if.end67.do.end73_crit_edge
  %aborted = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 10
  %50 = ptrtoint ptr %aborted to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load volatile i16, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool75.not = icmp eq i16 %51, 0
  br i1 %tobool75.not, label %lor.lhs.false, label %do.end73.if.then90_crit_edge, !prof !166

do.end73.if.then90_crit_edge:                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then90

lor.lhs.false:                                    ; preds = %do.end73
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 149
  %52 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %fs_state, align 4
  %and1.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool83.not = icmp eq i32 %and1.i, 0
  br i1 %tobool83.not, label %lor.lhs.false.if.end107_crit_edge, label %lor.lhs.false.if.then90_crit_edge, !prof !166

lor.lhs.false.if.then90_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then90

lor.lhs.false.if.end107_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then90:                                        ; preds = %lor.lhs.false.if.then90_crit_edge, %do.end73.if.then90_crit_edge
  %transaction_kthread = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 89
  %54 = ptrtoint ptr %transaction_kthread to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %transaction_kthread, align 4
  %call91 = tail call i32 @wake_up_process(ptr noundef %55) #13
  %56 = ptrtoint ptr %aborted to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load volatile i16, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool97.not = icmp eq i16 %57, 0
  br i1 %tobool97.not, label %if.then90.if.end107_crit_edge, label %if.then104, !prof !166

if.then90.if.end107_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then104:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  %conv = sext i16 %57 to i32
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.then90.if.end107_crit_edge, %lor.lhs.false.if.end107_crit_edge
  %err.0 = phi i32 [ %conv, %if.then104 ], [ 0, %lor.lhs.false.if.end107_crit_edge ], [ -30, %if.then90.if.end107_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_trans_handle_cachep to i32))
  %58 = load ptr, ptr @btrfs_trans_handle_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %58, ptr noundef %trans) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %refcount_dec.exit
  %retval.0 = phi i32 [ 0, %refcount_dec.exit ], [ %err.0, %if.end107 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_end_transaction_throttle(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__btrfs_end_transaction(ptr noundef %trans, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_write_marked_extents(ptr nocapture noundef readonly %fs_info, ptr noundef %dirty_pages, i32 noundef %mark) local_unnamed_addr #0 align 64 {
entry:
  %cached_state = alloca ptr, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %btree_inode = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 46
  %0 = ptrtoint ptr %btree_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btree_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cached_state) #13
  %4 = ptrtoint ptr %cached_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cached_state, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #13
  %5 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %start, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end) #13
  %6 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %end, align 8, !annotation !181
  %sync_writers = getelementptr i8, ptr %1, i32 -352
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sync_writers, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sync_writers, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sync_writers, ptr %sync_writers, i32 1, ptr elementtype(i32) %sync_writers) #13, !srcloc !182
  %call229 = call i32 @find_first_extent_bit(ptr noundef %dirty_pages, i64 noundef 0, ptr noundef nonnull %start, ptr noundef nonnull %end, i32 noundef %mark, ptr noundef nonnull %cached_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool.not30 = icmp eq i32 %call229, 0
  br i1 %tobool.not30, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %entry.while.body_crit_edge
  %werr.031 = phi i32 [ %werr.1, %if.end14.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start, align 8
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %end, align 8
  %call3 = call i32 @convert_extent_bit(ptr noundef %dirty_pages, i64 noundef %9, i64 noundef %11, i32 noundef 512, i32 noundef %mark, ptr noundef nonnull %cached_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call3)
  %cmp = icmp eq i32 %call3, -12
  %spec.select = select i1 %cmp, i32 0, i32 %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool4.not = icmp eq i32 %spec.select, 0
  br i1 %tobool4.not, label %if.then5, label %while.body.if.end7_crit_edge

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start, align 8
  %14 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %end, align 8
  %call6 = call i32 @filemap_fdatawrite_range(ptr noundef %3, i64 noundef %13, i64 noundef %15) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %while.body.if.end7_crit_edge
  %err.1 = phi i32 [ %spec.select, %while.body.if.end7_crit_edge ], [ %call6, %if.then5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool8.not = icmp ne i32 %err.1, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %tobool8.not, i1 true, i1 %cmp.not
  %err.1.mux = select i1 %tobool8.not, i32 %err.1, i32 %werr.031
  br i1 %brmerge, label %if.end7.if.end14_crit_edge, label %if.then11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %start, align 8
  %18 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %end, align 8
  %call12 = call i32 @filemap_fdatawait_range(ptr noundef %3, i64 noundef %17, i64 noundef %19) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  %werr.1 = phi i32 [ %call12, %if.then11 ], [ %err.1.mux, %if.end7.if.end14_crit_edge ]
  %20 = ptrtoint ptr %cached_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cached_state, align 4
  call void @free_extent_state(ptr noundef %21) #13
  %22 = ptrtoint ptr %cached_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cached_state, align 4
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1102, i32 noundef 0) #13
  %call.i = call i32 @__cond_resched() #13
  %23 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %end, align 8
  %add = add i64 %24, 1
  %25 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add, ptr %start, align 8
  %call2 = call i32 @find_first_extent_bit(ptr noundef %dirty_pages, i64 noundef %add, ptr noundef nonnull %start, ptr noundef nonnull %end, i32 noundef %mark, ptr noundef nonnull %cached_state) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end14.while.body_crit_edge, label %if.end14.while.end_crit_edge

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %entry.while.end_crit_edge
  %werr.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %werr.1, %if.end14.while.end_crit_edge ]
  %26 = ptrtoint ptr %btree_inode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btree_inode, align 4
  %sync_writers18 = getelementptr i8, ptr %27, i32 -352
  %call.i.i27 = call zeroext i1 @__kasan_check_write(ptr noundef %sync_writers18, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %sync_writers18, i32 1, i32 3, i32 1) #13
  %28 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sync_writers18, ptr %sync_writers18, i32 1, ptr elementtype(i32) %sync_writers18) #13, !srcloc !179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state) #13
  ret i32 %werr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_first_extent_bit(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @convert_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_wait_tree_log_extents(ptr noundef %log_root, i32 noundef %mark) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %log_root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %log_root, i32 0, i32 7
  %2 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %3)
  %cmp = icmp eq i64 %3, -6
  br i1 %cmp, label %cond.end, label %cond.false, !prof !166

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 1175) #18
  unreachable

cond.end:                                         ; preds = %entry
  %dirty_log_pages = getelementptr inbounds %struct.btrfs_root, ptr %log_root, i32 0, i32 9
  %call = tail call fastcc i32 @__btrfs_wait_marked_extents(ptr noundef %1, ptr noundef %dirty_log_pages)
  %and = and i32 %mark, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %land.lhs.true

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp ne i32 %call4, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %cond.end.if.end_crit_edge
  %errors.0.off0 = phi i1 [ false, %cond.end.if.end_crit_edge ], [ %tobool5.not, %land.lhs.true ]
  %and6 = and i32 %mark, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %land.lhs.true8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true8:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %flags9 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  %call10 = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %flags9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp ne i32 %call10, 0
  %spec.select26 = select i1 %tobool11.not, i1 true, i1 %errors.0.off0
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true8, %if.end.if.end13_crit_edge
  %errors.1.off0 = phi i1 [ %errors.0.off0, %if.end.if.end13_crit_edge ], [ %spec.select26, %land.lhs.true8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  %4 = select i1 %errors.1.off0, i1 %tobool16.not, i1 false
  %err.0 = select i1 %4, i32 -5, i32 %call
  ret i32 %err.0
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #5 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %expr, ptr noundef nonnull @.str, i32 noundef %line) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #13, !srcloc !183
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__btrfs_wait_marked_extents(ptr nocapture noundef readonly %fs_info, ptr noundef %dirty_pages) unnamed_addr #0 align 64 {
entry:
  %cached_state = alloca ptr, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %btree_inode = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 46
  %0 = ptrtoint ptr %btree_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btree_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cached_state) #13
  %4 = ptrtoint ptr %cached_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cached_state, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #13
  %5 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %start, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end) #13
  %6 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %end, align 8, !annotation !181
  %call20 = call i32 @find_first_extent_bit(ptr noundef %dirty_pages, i64 noundef 0, ptr noundef nonnull %start, ptr noundef nonnull %end, i32 noundef 512, ptr noundef nonnull %cached_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not21 = icmp eq i32 %call20, 0
  br i1 %tobool.not21, label %entry.while.body_crit_edge, label %entry.while.end.thread_crit_edge

entry.while.end.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.thread

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %entry.while.body_crit_edge
  %werr.022 = phi i32 [ %spec.select, %if.end5.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %7 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start, align 8
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %end, align 8
  %call1 = call i32 @clear_extent_bit(ptr noundef %dirty_pages, i64 noundef %8, i64 noundef %10, i32 noundef 512, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %cached_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call1)
  %cmp = icmp eq i32 %call1, -12
  %spec.store.select = select i1 %cmp, i32 0, i32 %call1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool2.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool2.not, label %if.then3, label %while.body.if.end5_crit_edge

while.body.if.end5_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start, align 8
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %end, align 8
  %call4 = call i32 @filemap_fdatawait_range(ptr noundef %3, i64 noundef %12, i64 noundef %14) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %while.body.if.end5_crit_edge
  %err.1 = phi i32 [ %spec.store.select, %while.body.if.end5_crit_edge ], [ %call4, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool6.not = icmp eq i32 %err.1, 0
  %spec.select = select i1 %tobool6.not, i32 %werr.022, i32 %err.1
  %15 = ptrtoint ptr %cached_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cached_state, align 4
  call void @free_extent_state(ptr noundef %16) #13
  %17 = ptrtoint ptr %cached_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cached_state, align 4
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1145, i32 noundef 0) #13
  %call.i = call i32 @__cond_resched() #13
  %18 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %end, align 8
  %add = add i64 %19, 1
  %20 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add, ptr %start, align 8
  %call = call i32 @find_first_extent_bit(ptr noundef %dirty_pages, i64 noundef %add, ptr noundef nonnull %start, ptr noundef nonnull %end, i32 noundef 512, ptr noundef nonnull %cached_state) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5.while.body_crit_edge, label %while.end

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool10.not = icmp eq i32 %err.1, 0
  br i1 %tobool10.not, label %while.end.while.end.thread_crit_edge, label %while.end._crit_edge

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %21

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %entry.while.end.thread_crit_edge
  %werr.0.lcssa27 = phi i32 [ %spec.select, %while.end.while.end.thread_crit_edge ], [ 0, %entry.while.end.thread_crit_edge ]
  br label %21

21:                                               ; preds = %while.end.thread, %while.end._crit_edge
  %22 = phi i32 [ %werr.0.lcssa27, %while.end.thread ], [ %err.1, %while.end._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state) #13
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_maybe_wake_unfinished_drop(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %dead_roots = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 60
  %0 = ptrtoint ptr %dead_roots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %dead_roots, align 4
  %cmp.i.not = icmp eq ptr %1, %dead_roots
  br i1 %cmp.i.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %entry
  %state = getelementptr i8, ptr %1, i32 -1048
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  br label %return

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %flags.i, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i, ptr %flags.i, i32 2097152, ptr elementtype(i32) %flags.i) #13, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !186
  tail call void @wake_up_bit(ptr noundef %flags.i, i32 noundef 21) #13
  br label %return

return:                                           ; preds = %if.end6, %cleanup
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_add_dead_root(ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %root_list = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 30
  %2 = ptrtoint ptr %root_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %root_list, align 4
  %cmp.i.not = icmp eq ptr %3, %root_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %root, null
  br i1 %tobool.not.i, label %if.then.btrfs_grab_root.exit_crit_edge, label %if.end.i

if.then.btrfs_grab_root.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_grab_root.exit

if.end.i:                                         ; preds = %if.then
  %refs.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %refs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refs.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i
  %6 = phi i32 [ %5, %if.end.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 %9, i32 %add.i.i.i.i, ptr elementtype(i32) %refs.i) #13, !srcloc !187
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !166

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !166

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef 0) #13
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  br label %btrfs_grab_root.exit

btrfs_grab_root.exit:                             ; preds = %refcount_inc_not_zero.exit.i, %if.then.btrfs_grab_root.exit_crit_edge
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %16 = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not = icmp eq i32 %16, 0
  %dead_roots8 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 60
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %btrfs_grab_root.exit
  %17 = ptrtoint ptr %dead_roots8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dead_roots8, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %root_list, ptr noundef %dead_roots8, ptr noundef %18) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  br label %if.end9.sink.split

if.else:                                          ; preds = %btrfs_grab_root.exit
  %prev.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 60, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i19 = call zeroext i1 @__list_add_valid(ptr noundef %root_list, ptr noundef %20, ptr noundef %dead_roots8) #13
  br i1 %call.i.i19, label %if.else.if.end9.sink.split_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.else.if.end9.sink.split_crit_edge, %if.end.i.i
  %prev.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i ], [ %prev.i, %if.else.if.end9.sink.split_crit_edge ]
  %dead_roots8.sink = phi ptr [ %18, %if.end.i.i ], [ %dead_roots8, %if.else.if.end9.sink.split_crit_edge ]
  %.sink22 = phi ptr [ %dead_roots8, %if.end.i.i ], [ %20, %if.else.if.end9.sink.split_crit_edge ]
  %21 = ptrtoint ptr %prev.i.sink to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %root_list, ptr %prev.i.sink, align 4
  %22 = ptrtoint ptr %root_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dead_roots8.sink, ptr %root_list, align 4
  %prev3.i.i20 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 30, i32 1
  %23 = ptrtoint ptr %prev3.i.i20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.sink22, ptr %prev3.i.i20, align 4
  %24 = ptrtoint ptr %.sink22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %root_list, ptr %.sink22, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge, %if.then5.if.end9_crit_edge, %entry.if.end9_crit_edge
  call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_defrag_root(ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 8
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %btrfs_defrag_cancelled.exit.while.cond_crit_edge, %while.cond.preheader
  %call.i = tail call fastcc ptr @start_transaction(ptr noundef %root, i32 noundef 0, i32 noundef 513, i32 noundef 5, i1 noundef zeroext true) #13
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %call.i to i32
  br label %while.end

if.end5:                                          ; preds = %while.cond
  %call6 = tail call i32 @btrfs_defrag_leaves(ptr noundef %call.i, ptr noundef %root) #13
  %call.i38 = tail call fastcc i32 @__btrfs_end_transaction(ptr noundef %call.i, i32 noundef 0) #13
  tail call void @btrfs_btree_balance_dirty(ptr noundef %1) #13
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1495, i32 noundef 0) #13
  %call.i39 = tail call i32 @__cond_resched() #13
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %btrfs_fs_closing.exit, label %btrfs_fs_closing.exit.thread

btrfs_fs_closing.exit.thread:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  br label %while.end

btrfs_fs_closing.exit:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call6)
  %cmp.not = icmp eq i32 %call6, -11
  br i1 %cmp.not, label %if.end12, label %btrfs_fs_closing.exit.while.end_crit_edge

btrfs_fs_closing.exit.while.end_crit_edge:        ; preds = %btrfs_fs_closing.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end12:                                         ; preds = %btrfs_fs_closing.exit
  %7 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %btrfs_defrag_cancelled.exit, label %if.end12.do.body_crit_edge, !prof !166

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

btrfs_defrag_cancelled.exit:                      ; preds = %if.end12
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %12, align 4
  %and1.i.i.i.i.i.i = and i32 %17, 1
  %tobool14.not = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool14.not, label %btrfs_defrag_cancelled.exit.while.cond_crit_edge, label %btrfs_defrag_cancelled.exit.do.body_crit_edge

btrfs_defrag_cancelled.exit.do.body_crit_edge:    ; preds = %btrfs_defrag_cancelled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

btrfs_defrag_cancelled.exit.while.cond_crit_edge: ; preds = %btrfs_defrag_cancelled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

do.body:                                          ; preds = %btrfs_defrag_cancelled.exit.do.body_crit_edge, %if.end12.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_defrag_root.__UNIQUE_ID_ddebug935, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_defrag_root, %if.then21)) #13
          to label %while.end [label %if.then21], !srcloc !188

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.6) #16
  br label %while.end

while.end:                                        ; preds = %if.then21, %do.body, %btrfs_fs_closing.exit.while.end_crit_edge, %btrfs_fs_closing.exit.thread, %if.then3
  %ret.0 = phi i32 [ %2, %if.then3 ], [ -11, %if.then21 ], [ %call6, %btrfs_fs_closing.exit.thread ], [ -11, %do.body ], [ %call6, %btrfs_fs_closing.exit.while.end_crit_edge ]
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_defrag_leaves(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_btree_balance_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_transaction_in_commit(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 37
  %0 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %running_transaction, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp ne i32 %3, 0
  %conv = zext i1 %cmp to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_transaction_blocked(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 37
  %0 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %running_transaction, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 8
  %4 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %do.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %aborted.i = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %aborted.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %aborted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %phi.cast.i = zext i1 %tobool.not.i to i32
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ %phi.cast.i, %do.end.i ]
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_commit_transaction_async(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 20, ptr noundef %flags) #13
  %transaction_kthread = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 89
  %2 = ptrtoint ptr %transaction_kthread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction_kthread, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %3) #13
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %4 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transaction, align 4
  %use_count = getelementptr inbounds %struct.btrfs_transaction, ptr %5, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #13, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !163

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !166

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use_count, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %call.i = tail call fastcc i32 @__btrfs_end_transaction(ptr noundef %trans, i32 noundef 0) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1963) #13
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %do.end9, label %refcount_inc.exit.do.end33_crit_edge

refcount_inc.exit.do.end33_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33

do.end9:                                          ; preds = %refcount_inc.exit
  %aborted = getelementptr inbounds %struct.btrfs_transaction, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %do.end9.do.end33_crit_edge, !prof !166

do.end9.do.end33_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33

if.end:                                           ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %transaction_blocked_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 40
  %call1246 = call i32 @prepare_to_wait_event(ptr noundef %transaction_blocked_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14.not47 = icmp eq i32 %14, 0
  br i1 %cmp14.not47, label %if.end.do.end18_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.do.end18_crit_edge:                        ; preds = %if.end
  br label %do.end18

do.end18:                                         ; preds = %cleanup.do.end18_crit_edge, %if.end.do.end18_crit_edge
  %15 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool21.not = icmp eq i32 %16, 0
  br i1 %tobool21.not, label %cleanup, label %do.end18.for.end_crit_edge, !prof !166

do.end18.for.end_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %do.end18
  call void @schedule() #13
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %transaction_blocked_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 8
  %cmp14.not = icmp eq i32 %18, 0
  br i1 %cmp14.not, label %cleanup.do.end18_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.do.end18_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end18.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %transaction_blocked_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end33

do.end33:                                         ; preds = %for.end, %do.end9.do.end33_crit_edge, %refcount_inc.exit.do.end33_crit_edge
  call void @btrfs_put_transaction(ptr noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_commit_transaction(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  %plug.i = alloca %struct.blk_plug, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry153 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry186 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction, align 4
  %use_count = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_count, i32 noundef 4) #13
  %4 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %do.end, label %cond.false, !prof !166

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 2100) #18
  unreachable

do.end:                                           ; preds = %entry
  %aborted = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end, label %if.then, !prof !166

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc i32 @__btrfs_end_transaction(ptr noundef %trans, i32 noundef 0) #13
  br label %cleanup379

if.end:                                           ; preds = %do.end
  %8 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_info1, align 4
  %block_rsv.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 5
  %10 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block_rsv.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 1
  %12 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bytes_reserved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool2.not.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  br i1 %tobool2.not.i, label %if.then.i.btrfs_trans_release_metadata.exit_crit_edge, label %cond.false.i, !prof !166

if.then.i.btrfs_trans_release_metadata.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_trans_release_metadata.exit

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.46, i32 noundef 980) #17
  unreachable

if.end.i:                                         ; preds = %if.end
  br i1 %tobool2.not.i, label %if.end.i.btrfs_trans_release_metadata.exit_crit_edge, label %if.end9.i

if.end.i.btrfs_trans_release_metadata.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_trans_release_metadata.exit

if.end9.i:                                        ; preds = %if.end.i
  %trans_block_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %9, i32 0, i32 21
  %cmp.i = icmp eq ptr %11, %trans_block_rsv.i
  br i1 %cmp.i, label %cond.end19.i, label %cond.false18.i, !prof !166

cond.false18.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.47, i32 noundef 987) #17
  unreachable

cond.end19.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %trans, align 8
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %9, i64 noundef %15, i64 noundef %13, i32 noundef 0) #13
  %16 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %block_rsv.i, align 8
  %18 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bytes_reserved.i, align 8
  %call.i568 = tail call i64 @btrfs_block_rsv_release(ptr noundef %9, ptr noundef %17, i64 noundef %19, ptr noundef null) #13
  %20 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %bytes_reserved.i, align 8
  br label %btrfs_trans_release_metadata.exit

btrfs_trans_release_metadata.exit:                ; preds = %cond.end19.i, %if.end.i.btrfs_trans_release_metadata.exit_crit_edge, %if.then.i.btrfs_trans_release_metadata.exit_crit_edge
  %21 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %block_rsv.i, align 8
  %flags = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 23, i32 7
  %call12 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %btrfs_trans_release_metadata.exit.if.end20_crit_edge

btrfs_trans_release_metadata.exit.if.end20_crit_edge: ; preds = %btrfs_trans_release_metadata.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then14:                                        ; preds = %btrfs_trans_release_metadata.exit
  %call15 = tail call i32 @btrfs_run_delayed_refs(ptr noundef %trans, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end20_crit_edge, label %if.then17

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %call.i569 = tail call fastcc i32 @__btrfs_end_transaction(ptr noundef %trans, i32 noundef 0) #13
  br label %cleanup379

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %btrfs_trans_release_metadata.exit.if.end20_crit_edge
  tail call void @btrfs_create_pending_block_groups(ptr noundef %trans) #13
  %flags21 = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags21, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool23.not = icmp eq i32 %24, 0
  br i1 %tobool23.not, label %if.then24, label %if.end20.if.end39_crit_edge

if.end20.if.end39_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then24:                                        ; preds = %if.end20
  %ro_block_group_mutex = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %ro_block_group_mutex, i32 noundef 0) #13
  %call26 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  tail call void @mutex_unlock(ptr noundef %ro_block_group_mutex) #13
  br i1 %tobool27.not, label %if.then32, label %if.then24.if.end39_crit_edge

if.then24.if.end39_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then32:                                        ; preds = %if.then24
  %call33 = tail call i32 @btrfs_start_dirty_block_groups(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.if.end39_crit_edge, label %cleanup

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

cleanup:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  %call.i570 = tail call fastcc i32 @__btrfs_end_transaction(ptr noundef %trans, i32 noundef 0) #13
  br label %cleanup379

if.end39:                                         ; preds = %if.then32.if.end39_crit_edge, %if.then24.if.end39_crit_edge, %if.end20.if.end39_crit_edge
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp40.not = icmp eq i32 %26, 0
  br i1 %cmp40.not, label %if.end64, label %if.then41

if.then41:                                        ; preds = %if.end39
  tail call fastcc void @add_pending_snapshot(ptr noundef %trans)
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  %use_count43 = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count43, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %use_count43, i32 1, i32 3, i32 1) #13
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count43, ptr %use_count43, i32 1, ptr elementtype(i32) %use_count43) #13, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then41.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !163

if.then41.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then41
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !166

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then41.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then41.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use_count43, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %in_fsync = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 15
  %29 = ptrtoint ptr %in_fsync to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %in_fsync, align 2, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool44.not = icmp eq i8 %30, 0
  %spec.select = select i1 %tobool44.not, i32 5, i32 4
  %call.i571 = tail call fastcc i32 @__btrfs_end_transaction(ptr noundef %trans, i32 noundef 0) #13
  tail call fastcc void @wait_for_commit(ptr noundef %3, i32 noundef %spec.select)
  %31 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool53.not = icmp eq i32 %32, 0
  br i1 %tobool53.not, label %refcount_inc.exit.if.end62_crit_edge, label %if.then60, !prof !166

refcount_inc.exit.if.end62_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then60:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %refcount_inc.exit.if.end62_crit_edge
  %ret.4 = phi i32 [ %32, %if.then60 ], [ %call.i571, %refcount_inc.exit.if.end62_crit_edge ]
  tail call void @btrfs_put_transaction(ptr noundef %3)
  br label %cleanup379

if.end64:                                         ; preds = %if.end39
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %state, align 8
  %transaction_blocked_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %transaction_blocked_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %prev = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev, align 4
  %trans_list = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 59
  %cmp66.not = icmp eq ptr %35, %trans_list
  br i1 %cmp66.not, label %if.else94, label %if.then67

if.then67:                                        ; preds = %if.end64
  %in_fsync69 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 15
  %36 = ptrtoint ptr %in_fsync69 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %in_fsync69, align 2, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool70.not = icmp eq i8 %37, 0
  %spec.store.select = select i1 %tobool70.not, i32 5, i32 4
  %state76 = getelementptr i8, ptr %35, i32 -8
  %38 = ptrtoint ptr %state76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state76, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %spec.store.select)
  %cmp77 = icmp ult i32 %39, %spec.store.select
  br i1 %cmp77, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.then67
  %add.ptr = getelementptr i8, ptr %35, i32 -32
  %use_count79 = getelementptr i8, ptr %35, i32 -16
  %call.i.i.i.i.i572 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count79, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %use_count79, i32 1, i32 3, i32 1) #13
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count79, ptr %use_count79, i32 1, ptr elementtype(i32) %use_count79) #13, !srcloc !172
  %asmresult.i.i.i.i.i573 = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i573)
  %tobool1.not.i.i.i574 = icmp eq i32 %asmresult.i.i.i.i.i573, 0
  br i1 %tobool1.not.i.i.i574, label %if.then78.if.end15.sink.split.i.i.i579_crit_edge, label %if.else.i.i.i577, !prof !163

if.then78.if.end15.sink.split.i.i.i579_crit_edge: ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i579

if.else.i.i.i577:                                 ; preds = %if.then78
  %add.i.i.i575 = add i32 %asmresult.i.i.i.i.i573, 1
  %41 = or i32 %add.i.i.i575, %asmresult.i.i.i.i.i573
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i576 = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i576, label %if.else.i.i.i577.refcount_inc.exit580_crit_edge, label %if.else.i.i.i577.if.end15.sink.split.i.i.i579_crit_edge, !prof !166

if.else.i.i.i577.if.end15.sink.split.i.i.i579_crit_edge: ; preds = %if.else.i.i.i577
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i579

if.else.i.i.i577.refcount_inc.exit580_crit_edge:  ; preds = %if.else.i.i.i577
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit580

if.end15.sink.split.i.i.i579:                     ; preds = %if.else.i.i.i577.if.end15.sink.split.i.i.i579_crit_edge, %if.then78.if.end15.sink.split.i.i.i579_crit_edge
  %.sink.i.i.i578 = phi i32 [ 2, %if.then78.if.end15.sink.split.i.i.i579_crit_edge ], [ 1, %if.else.i.i.i577.if.end15.sink.split.i.i.i579_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use_count79, i32 noundef %.sink.i.i.i578) #13
  br label %refcount_inc.exit580

refcount_inc.exit580:                             ; preds = %if.end15.sink.split.i.i.i579, %if.else.i.i.i577.refcount_inc.exit580_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  tail call fastcc void @wait_for_commit(ptr noundef %add.ptr, i32 noundef %spec.store.select)
  %aborted85 = getelementptr i8, ptr %35, i32 -4
  %42 = ptrtoint ptr %aborted85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %aborted85, align 4
  tail call void @btrfs_put_transaction(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool86.not = icmp eq i32 %43, 0
  br i1 %tobool86.not, label %refcount_inc.exit580.if.end106_crit_edge, label %refcount_inc.exit580.cleanup_transaction_crit_edge

refcount_inc.exit580.cleanup_transaction_crit_edge: ; preds = %refcount_inc.exit580
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_transaction

refcount_inc.exit580.if.end106_crit_edge:         ; preds = %refcount_inc.exit580
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.else:                                          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  br label %if.end106

if.else94:                                        ; preds = %if.end64
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 149
  %44 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %fs_state, align 4
  %and1.i563 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i563)
  %tobool97.not = icmp eq i32 %and1.i563, 0
  br i1 %tobool97.not, label %if.else94.if.end106_crit_edge, label %if.else94.cleanup_transaction_crit_edge, !prof !166

if.else94.cleanup_transaction_crit_edge:          ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_transaction

if.else94.if.end106_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.end106:                                        ; preds = %if.else94.if.end106_crit_edge, %if.else, %refcount_inc.exit580.if.end106_crit_edge
  %type = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 9
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type, align 8
  %and.i = and i32 %47, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i581 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i581, label %if.end106.extwriter_counter_dec.exit_crit_edge, label %if.then.i583

if.end106.extwriter_counter_dec.exit_crit_edge:   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %extwriter_counter_dec.exit

if.then.i583:                                     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  %num_extwriters.i = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 1
  %call.i.i.i582 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_extwriters.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %num_extwriters.i, i32 1, i32 3, i32 1) #13
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_extwriters.i, ptr %num_extwriters.i, i32 1, ptr elementtype(i32) %num_extwriters.i) #13, !srcloc !179
  br label %extwriter_counter_dec.exit

extwriter_counter_dec.exit:                       ; preds = %if.then.i583, %if.end106.extwriter_counter_dec.exit_crit_edge
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %49 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mount_opt.i, align 8
  %and.i585 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i585)
  %tobool.not.i586 = icmp eq i32 %and.i585, 0
  br i1 %tobool.not.i586, label %extwriter_counter_dec.exit.btrfs_start_delalloc_flush.exit_crit_edge, label %if.then.i587

extwriter_counter_dec.exit.btrfs_start_delalloc_flush.exit_crit_edge: ; preds = %extwriter_counter_dec.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_start_delalloc_flush.exit

if.then.i587:                                     ; preds = %extwriter_counter_dec.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sb.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 45
  %51 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sb.i, align 8
  tail call void @try_to_writeback_inodes_sb(ptr noundef %52, i32 noundef 2) #13
  br label %btrfs_start_delalloc_flush.exit

btrfs_start_delalloc_flush.exit:                  ; preds = %if.then.i587, %extwriter_counter_dec.exit.btrfs_start_delalloc_flush.exit_crit_edge
  %call111 = tail call i32 @btrfs_run_delayed_items(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %do.body116, label %btrfs_start_delalloc_flush.exit.cleanup_transaction_crit_edge

btrfs_start_delalloc_flush.exit.cleanup_transaction_crit_edge: ; preds = %btrfs_start_delalloc_flush.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_transaction

do.body116:                                       ; preds = %btrfs_start_delalloc_flush.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2234) #13
  %num_extwriters.i589 = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 1
  %call.i.i.i590 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_extwriters.i589, i32 noundef 4) #13
  %53 = ptrtoint ptr %num_extwriters.i589 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %num_extwriters.i589, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp123 = icmp eq i32 %54, 0
  br i1 %cmp123, label %do.body116.do.end137_crit_edge, label %if.end125

do.body116.do.end137_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end137

if.end125:                                        ; preds = %do.body116
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %55 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %writer_wait = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 10
  %call126663 = call i32 @prepare_to_wait_event(ptr noundef %writer_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call.i.i.i592664 = call zeroext i1 @__kasan_check_read(ptr noundef %num_extwriters.i589, i32 noundef 4) #13
  %56 = ptrtoint ptr %num_extwriters.i589 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %num_extwriters.i589, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp128665 = icmp eq i32 %57, 0
  br i1 %cmp128665, label %if.end125.for.end_crit_edge, label %if.end125.cleanup131_crit_edge

if.end125.cleanup131_crit_edge:                   ; preds = %if.end125
  br label %cleanup131

if.end125.for.end_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup131:                                       ; preds = %cleanup131.cleanup131_crit_edge, %if.end125.cleanup131_crit_edge
  call void @schedule() #13
  %call126 = call i32 @prepare_to_wait_event(ptr noundef %writer_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call.i.i.i592 = call zeroext i1 @__kasan_check_read(ptr noundef %num_extwriters.i589, i32 noundef 4) #13
  %58 = ptrtoint ptr %num_extwriters.i589 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %num_extwriters.i589, align 4
  %cmp128 = icmp eq i32 %59, 0
  br i1 %cmp128, label %cleanup131.for.end_crit_edge, label %cleanup131.cleanup131_crit_edge

cleanup131.cleanup131_crit_edge:                  ; preds = %cleanup131
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup131

cleanup131.for.end_crit_edge:                     ; preds = %cleanup131
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup131.for.end_crit_edge, %if.end125.for.end_crit_edge
  call void @finish_wait(ptr noundef %writer_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end137

do.end137:                                        ; preds = %for.end, %do.body116.do.end137_crit_edge
  %call138 = call i32 @btrfs_run_delayed_items(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %do.end137.cleanup_transaction_crit_edge

do.end137.cleanup_transaction_crit_edge:          ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_transaction

if.end141:                                        ; preds = %do.end137
  %60 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mount_opt.i, align 8
  %and.i594 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i594)
  %tobool.not.i595 = icmp eq i32 %and.i594, 0
  br i1 %tobool.not.i595, label %if.end141.btrfs_wait_delalloc_flush.exit_crit_edge, label %if.then.i596

if.end141.btrfs_wait_delalloc_flush.exit_crit_edge: ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_wait_delalloc_flush.exit

if.then.i596:                                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_wait_ordered_roots(ptr noundef %1, i64 noundef -1, i64 noundef 0, i64 noundef -1) #13
  br label %btrfs_wait_delalloc_flush.exit

btrfs_wait_delalloc_flush.exit:                   ; preds = %if.then.i596, %if.end141.btrfs_wait_delalloc_flush.exit_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2249) #13
  %pending_ordered = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 25
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pending_ordered, i32 noundef 4) #13
  %62 = ptrtoint ptr %pending_ordered to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %pending_ordered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp150 = icmp eq i32 %63, 0
  br i1 %cmp150, label %btrfs_wait_delalloc_flush.exit.do.end171_crit_edge, label %if.end152

btrfs_wait_delalloc_flush.exit.do.end171_crit_edge: ; preds = %btrfs_wait_delalloc_flush.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end171

if.end152:                                        ; preds = %btrfs_wait_delalloc_flush.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry153) #13
  %64 = call ptr @memset(ptr %__wq_entry153, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry153, i32 noundef 0) #13
  %pending_wait = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 26
  %call157666 = call i32 @prepare_to_wait_event(ptr noundef %pending_wait, ptr noundef nonnull %__wq_entry153, i32 noundef 2) #13
  %call.i.i564667 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_ordered, i32 noundef 4) #13
  %65 = ptrtoint ptr %pending_ordered to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %pending_ordered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp160668 = icmp eq i32 %66, 0
  br i1 %cmp160668, label %if.end152.for.end166_crit_edge, label %if.end152.cleanup163_crit_edge

if.end152.cleanup163_crit_edge:                   ; preds = %if.end152
  br label %cleanup163

if.end152.for.end166_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end166

cleanup163:                                       ; preds = %cleanup163.cleanup163_crit_edge, %if.end152.cleanup163_crit_edge
  call void @schedule() #13
  %call157 = call i32 @prepare_to_wait_event(ptr noundef %pending_wait, ptr noundef nonnull %__wq_entry153, i32 noundef 2) #13
  %call.i.i564 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_ordered, i32 noundef 4) #13
  %67 = ptrtoint ptr %pending_ordered to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %pending_ordered, align 4
  %cmp160 = icmp eq i32 %68, 0
  br i1 %cmp160, label %cleanup163.for.end166_crit_edge, label %cleanup163.cleanup163_crit_edge

cleanup163.cleanup163_crit_edge:                  ; preds = %cleanup163
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup163

cleanup163.for.end166_crit_edge:                  ; preds = %cleanup163
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end166

for.end166:                                       ; preds = %cleanup163.for.end166_crit_edge, %if.end152.for.end166_crit_edge
  call void @finish_wait(ptr noundef %pending_wait, ptr noundef nonnull %__wq_entry153) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry153) #13
  br label %do.end171

do.end171:                                        ; preds = %for.end166, %btrfs_wait_delalloc_flush.exit.do.end171_crit_edge
  call void @btrfs_scrub_pause(ptr noundef %1) #13
  call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  call fastcc void @add_pending_snapshot(ptr noundef %trans)
  %69 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %state, align 8
  call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2262) #13
  %num_writers = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 2
  %call.i.i565 = call zeroext i1 @__kasan_check_read(ptr noundef %num_writers, i32 noundef 4) #13
  %70 = ptrtoint ptr %num_writers to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %num_writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp183 = icmp eq i32 %71, 1
  br i1 %cmp183, label %do.end171.do.end205_crit_edge, label %if.end185

do.end171.do.end205_crit_edge:                    ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end205

if.end185:                                        ; preds = %do.end171
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry186) #13
  %72 = call ptr @memset(ptr %__wq_entry186, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry186, i32 noundef 0) #13
  %writer_wait190 = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 10
  %call191670 = call i32 @prepare_to_wait_event(ptr noundef %writer_wait190, ptr noundef nonnull %__wq_entry186, i32 noundef 2) #13
  %call.i.i566671 = call zeroext i1 @__kasan_check_read(ptr noundef %num_writers, i32 noundef 4) #13
  %73 = ptrtoint ptr %num_writers to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %num_writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp194672 = icmp eq i32 %74, 1
  br i1 %cmp194672, label %if.end185.for.end200_crit_edge, label %if.end185.cleanup197_crit_edge

if.end185.cleanup197_crit_edge:                   ; preds = %if.end185
  br label %cleanup197

if.end185.for.end200_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end200

cleanup197:                                       ; preds = %cleanup197.cleanup197_crit_edge, %if.end185.cleanup197_crit_edge
  call void @schedule() #13
  %call191 = call i32 @prepare_to_wait_event(ptr noundef %writer_wait190, ptr noundef nonnull %__wq_entry186, i32 noundef 2) #13
  %call.i.i566 = call zeroext i1 @__kasan_check_read(ptr noundef %num_writers, i32 noundef 4) #13
  %75 = ptrtoint ptr %num_writers to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %num_writers, align 4
  %cmp194 = icmp eq i32 %76, 1
  br i1 %cmp194, label %cleanup197.for.end200_crit_edge, label %cleanup197.cleanup197_crit_edge

cleanup197.cleanup197_crit_edge:                  ; preds = %cleanup197
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup197

cleanup197.for.end200_crit_edge:                  ; preds = %cleanup197
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end200

for.end200:                                       ; preds = %cleanup197.for.end200_crit_edge, %if.end185.for.end200_crit_edge
  call void @finish_wait(ptr noundef %writer_wait190, ptr noundef nonnull %__wq_entry186) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry186) #13
  br label %do.end205

do.end205:                                        ; preds = %for.end200, %do.end171.do.end205_crit_edge
  %flags206 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  call void @_clear_bit(i32 noundef 20, ptr noundef %flags206) #13
  %77 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool212.not = icmp eq i32 %78, 0
  br i1 %tobool212.not, label %if.end221, label %do.end205.scrub_continue_crit_edge, !prof !166

do.end205.scrub_continue_crit_edge:               ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #15
  br label %scrub_continue

if.end221:                                        ; preds = %do.end205
  %reloc_mutex = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 58
  call void @mutex_lock_nested(ptr noundef %reloc_mutex, i32 noundef 0) #13
  %call222 = call fastcc i32 @create_pending_snapshots(ptr noundef %trans)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.end225, label %if.end221.scrub_continue.sink.split_crit_edge

if.end221.scrub_continue.sink.split_crit_edge:    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #15
  br label %scrub_continue.sink.split

if.end225:                                        ; preds = %if.end221
  %call226 = call i32 @btrfs_run_delayed_items(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.end229, label %if.end225.scrub_continue.sink.split_crit_edge

if.end225.scrub_continue.sink.split_crit_edge:    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #15
  br label %scrub_continue.sink.split

if.end229:                                        ; preds = %if.end225
  %call230 = call i32 @btrfs_run_delayed_refs(ptr noundef %trans, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %if.end233, label %if.end229.scrub_continue.sink.split_crit_edge

if.end229.scrub_continue.sink.split_crit_edge:    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #15
  br label %scrub_continue.sink.split

if.end233:                                        ; preds = %if.end229
  call void @btrfs_assert_delayed_root_empty(ptr noundef %1) #13
  %79 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %transaction, align 4
  %cmp235.not = icmp eq ptr %3, %80
  br i1 %cmp235.not, label %if.end233.if.end257_crit_edge, label %do.end251, !prof !166

if.end233.if.end257_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end257

do.end251:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2315, i32 noundef 9, ptr noundef null) #13
  br label %if.end257

if.end257:                                        ; preds = %do.end251, %if.end233.if.end257_crit_edge
  %call265 = call fastcc i32 @commit_fs_roots(ptr noundef %trans)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.end268, label %if.end257.scrub_continue.sink.split_crit_edge

if.end257.scrub_continue.sink.split_crit_edge:    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #15
  br label %scrub_continue.sink.split

if.end268:                                        ; preds = %if.end257
  %pending_changes.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 32
  %call.i.i598 = call zeroext i1 @__kasan_check_write(ptr noundef %pending_changes.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !190
  call void @llvm.prefetch.p0(ptr %pending_changes.i, i32 1, i32 3, i32 1) #13
  %81 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %pending_changes.i) #13, !srcloc !191
  %asmresult.i.i = extractvalue { i32, i32 } %81, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i599 = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i599, label %if.end268.btrfs_apply_pending_changes.exit_crit_edge, label %if.end.i601

if.end268.btrfs_apply_pending_changes.exit_crit_edge: ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_apply_pending_changes.exit

if.end.i601:                                      ; preds = %if.end268
  %and.i600 = and i32 %asmresult.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i600)
  %tobool15.not.i = icmp eq i32 %and.i600, 0
  br i1 %tobool15.not.i, label %if.end.i601.if.end27.i_crit_edge, label %do.body17.i

if.end.i601.if.end27.i_crit_edge:                 ; preds = %if.end.i601
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

do.body17.i:                                      ; preds = %if.end.i601
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_apply_pending_changes.__UNIQUE_ID_ddebug958, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_commit_transaction, %if.then23.i)) #13
          to label %if.end27.i [label %if.then23.i], !srcloc !188

if.then23.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.17) #16
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %do.body17.i, %if.end.i601.if.end27.i_crit_edge
  %and28.i = and i32 %asmresult.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.btrfs_apply_pending_changes.exit_crit_edge, label %if.then30.i

if.end27.i.btrfs_apply_pending_changes.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_apply_pending_changes.exit

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %and28.i) #16
  br label %btrfs_apply_pending_changes.exit

btrfs_apply_pending_changes.exit:                 ; preds = %if.then30.i, %if.end27.i.btrfs_apply_pending_changes.exit_crit_edge, %if.end268.btrfs_apply_pending_changes.exit_crit_edge
  %call269 = call i32 @btrfs_free_log_root_tree(ptr noundef %trans, ptr noundef %1) #13
  %call270 = call i32 @btrfs_qgroup_account_extents(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %cmp271 = icmp slt i32 %call270, 0
  br i1 %cmp271, label %btrfs_apply_pending_changes.exit.scrub_continue.sink.split_crit_edge, label %if.end273

btrfs_apply_pending_changes.exit.scrub_continue.sink.split_crit_edge: ; preds = %btrfs_apply_pending_changes.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %scrub_continue.sink.split

if.end273:                                        ; preds = %btrfs_apply_pending_changes.exit
  %call274 = call fastcc i32 @commit_cowonly_roots(ptr noundef %trans)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %do.end280, label %if.end273.scrub_continue.sink.split_crit_edge

if.end273.scrub_continue.sink.split_crit_edge:    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #15
  br label %scrub_continue.sink.split

do.end280:                                        ; preds = %if.end273
  %82 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool283.not = icmp eq i32 %83, 0
  br i1 %tobool283.not, label %if.end292, label %do.end280.scrub_continue.sink.split_crit_edge, !prof !166

do.end280.scrub_continue.sink.split_crit_edge:    ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #15
  br label %scrub_continue.sink.split

if.end292:                                        ; preds = %do.end280
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 37
  %84 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %running_transaction, align 8
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  %86 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tree_root, align 4
  %root_item = getelementptr inbounds %struct.btrfs_root, ptr %87, i32 0, i32 6
  %node = getelementptr inbounds %struct.btrfs_root, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %node, align 4
  call void @btrfs_set_root_node(ptr noundef %root_item, ptr noundef %89) #13
  %90 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tree_root, align 4
  %dirty_list = getelementptr inbounds %struct.btrfs_root, ptr %91, i32 0, i32 29
  %switch_commits = getelementptr inbounds %struct.btrfs_transaction, ptr %85, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.btrfs_transaction, ptr %85, i32 0, i32 14, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i, align 4
  %call.i.i602 = call zeroext i1 @__list_add_valid(ptr noundef %dirty_list, ptr noundef %93, ptr noundef %switch_commits) #13
  br i1 %call.i.i602, label %if.end.i.i, label %if.end292.list_add_tail.exit_crit_edge

if.end292.list_add_tail.exit_crit_edge:           ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %dirty_list, ptr %prev.i, align 4
  %95 = ptrtoint ptr %dirty_list to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %switch_commits, ptr %dirty_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_root, ptr %91, i32 0, i32 29, i32 1
  %96 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %dirty_list, ptr %93, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end292.list_add_tail.exit_crit_edge
  %chunk_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 3
  %98 = ptrtoint ptr %chunk_root to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chunk_root, align 8
  %root_item295 = getelementptr inbounds %struct.btrfs_root, ptr %99, i32 0, i32 6
  %node297 = getelementptr inbounds %struct.btrfs_root, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %node297 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %node297, align 4
  call void @btrfs_set_root_node(ptr noundef %root_item295, ptr noundef %101) #13
  %102 = ptrtoint ptr %chunk_root to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %chunk_root, align 8
  %dirty_list299 = getelementptr inbounds %struct.btrfs_root, ptr %103, i32 0, i32 29
  %104 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i, align 4
  %call.i.i604 = call zeroext i1 @__list_add_valid(ptr noundef %dirty_list299, ptr noundef %105, ptr noundef %switch_commits) #13
  br i1 %call.i.i604, label %if.end.i.i606, label %list_add_tail.exit.list_add_tail.exit607_crit_edge

list_add_tail.exit.list_add_tail.exit607_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit607

if.end.i.i606:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  %106 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %dirty_list299, ptr %prev.i, align 4
  %107 = ptrtoint ptr %dirty_list299 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %switch_commits, ptr %dirty_list299, align 4
  %prev3.i.i605 = getelementptr inbounds %struct.btrfs_root, ptr %103, i32 0, i32 29, i32 1
  %108 = ptrtoint ptr %prev3.i.i605 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev3.i.i605, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %dirty_list299, ptr %105, align 4
  br label %list_add_tail.exit607

list_add_tail.exit607:                            ; preds = %if.end.i.i606, %list_add_tail.exit.list_add_tail.exit607_crit_edge
  call fastcc void @switch_commit_roots(ptr noundef %trans)
  %dirty_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %85, i32 0, i32 15
  %110 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile ptr, ptr %dirty_bgs, align 4
  %cmp.i608.not = icmp eq ptr %111, %dirty_bgs
  br i1 %cmp.i608.not, label %cond.end311, label %cond.false310, !prof !166

cond.false310:                                    ; preds = %list_add_tail.exit607
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.8, i32 noundef 2367) #18
  unreachable

cond.end311:                                      ; preds = %list_add_tail.exit607
  %io_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %85, i32 0, i32 16
  %112 = ptrtoint ptr %io_bgs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %io_bgs, align 4
  %cmp.i609.not = icmp eq ptr %113, %io_bgs
  br i1 %cmp.i609.not, label %cond.end322, label %cond.false321, !prof !166

cond.false321:                                    ; preds = %cond.end311
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.9, i32 noundef 2368) #18
  unreachable

cond.end322:                                      ; preds = %cond.end311
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %114 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %super_copy.i, align 8
  %116 = ptrtoint ptr %chunk_root to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %chunk_root, align 8
  %bytenr.i = getelementptr inbounds %struct.btrfs_root, ptr %117, i32 0, i32 6, i32 3
  %118 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 8)
  %119 = load i64, ptr %bytenr.i, align 1
  %chunk_root2.i = getelementptr inbounds %struct.btrfs_super_block, ptr %115, i32 0, i32 7
  %120 = ptrtoint ptr %chunk_root2.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 8)
  store i64 %119, ptr %chunk_root2.i, align 1
  %generation.i = getelementptr inbounds %struct.btrfs_root, ptr %117, i32 0, i32 6, i32 1
  %121 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 8)
  %122 = load i64, ptr %generation.i, align 1
  %chunk_root_generation.i = getelementptr inbounds %struct.btrfs_super_block, ptr %115, i32 0, i32 19
  %123 = ptrtoint ptr %chunk_root_generation.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 8)
  store i64 %122, ptr %chunk_root_generation.i, align 1
  %level.i = getelementptr inbounds %struct.btrfs_root, ptr %117, i32 0, i32 6, i32 11
  %124 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %level.i, align 1
  %chunk_root_level.i = getelementptr inbounds %struct.btrfs_super_block, ptr %115, i32 0, i32 25
  %126 = ptrtoint ptr %chunk_root_level.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %chunk_root_level.i, align 1
  %127 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tree_root, align 4
  %bytenr4.i = getelementptr inbounds %struct.btrfs_root, ptr %128, i32 0, i32 6, i32 3
  %129 = ptrtoint ptr %bytenr4.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 8)
  %130 = load i64, ptr %bytenr4.i, align 1
  %root.i = getelementptr inbounds %struct.btrfs_super_block, ptr %115, i32 0, i32 6
  %131 = ptrtoint ptr %root.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 %130, ptr %root.i, align 1
  %generation5.i = getelementptr inbounds %struct.btrfs_root, ptr %128, i32 0, i32 6, i32 1
  %132 = ptrtoint ptr %generation5.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 8)
  %133 = load i64, ptr %generation5.i, align 1
  %generation6.i = getelementptr inbounds %struct.btrfs_super_block, ptr %115, i32 0, i32 5
  %134 = ptrtoint ptr %generation6.i to i32
  call void @__asan_storeN_noabort(i32 %134, i32 8)
  store i64 %133, ptr %generation6.i, align 1
  %level7.i = getelementptr inbounds %struct.btrfs_root, ptr %128, i32 0, i32 6, i32 11
  %135 = ptrtoint ptr %level7.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %level7.i, align 1
  %root_level.i = getelementptr inbounds %struct.btrfs_super_block, ptr %115, i32 0, i32 24
  %137 = ptrtoint ptr %root_level.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %root_level.i, align 1
  %138 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mount_opt.i, align 8
  %and.i612 = and i32 %139, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i612)
  %tobool.not.i613 = icmp eq i32 %and.i612, 0
  br i1 %tobool.not.i613, label %if.else.i, label %if.then.i614

if.then.i614:                                     ; preds = %cond.end322
  call void @__sanitizer_cov_trace_pc() #15
  %140 = ptrtoint ptr %generation5.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 8)
  %141 = load i64, ptr %generation5.i, align 1
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %cond.end322
  %142 = ptrtoint ptr %flags206 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %flags206, align 4
  %144 = and i32 %143, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool9.not.i = icmp eq i32 %144, 0
  br i1 %tobool9.not.i, label %if.else.i.if.end12.i_crit_edge, label %if.else.i.if.end12.sink.split.i_crit_edge

if.else.i.if.end12.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.sink.split.i

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.end12.sink.split.i:                            ; preds = %if.else.i.if.end12.sink.split.i_crit_edge, %if.then.i614
  %.sink.i = phi i64 [ %141, %if.then.i614 ], [ 0, %if.else.i.if.end12.sink.split.i_crit_edge ]
  %cache_generation11.i = getelementptr inbounds %struct.btrfs_super_block, ptr %115, i32 0, i32 29
  %145 = ptrtoint ptr %cache_generation11.i to i32
  call void @__asan_storeN_noabort(i32 %145, i32 8)
  store i64 %.sink.i, ptr %cache_generation11.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end12.sink.split.i, %if.else.i.if.end12.i_crit_edge
  %146 = ptrtoint ptr %flags206 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %flags206, align 4
  %148 = and i32 %147, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool15.not.i615 = icmp eq i32 %148, 0
  br i1 %tobool15.not.i615, label %if.end12.i.update_super_roots.exit_crit_edge, label %if.then16.i

if.end12.i.update_super_roots.exit_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_super_roots.exit

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %149 = ptrtoint ptr %generation5.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 8)
  %150 = load i64, ptr %generation5.i, align 1
  %uuid_tree_generation.i = getelementptr inbounds %struct.btrfs_super_block, ptr %115, i32 0, i32 30
  %151 = ptrtoint ptr %uuid_tree_generation.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 8)
  store i64 %150, ptr %uuid_tree_generation.i, align 1
  br label %update_super_roots.exit

update_super_roots.exit:                          ; preds = %if.then16.i, %if.end12.i.update_super_roots.exit_crit_edge
  %152 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %super_copy.i, align 8
  %log_root.i = getelementptr inbounds %struct.btrfs_super_block, ptr %153, i32 0, i32 8
  %154 = ptrtoint ptr %log_root.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 8)
  store i64 0, ptr %log_root.i, align 1
  %155 = load ptr, ptr %super_copy.i, align 8
  %log_root_level.i = getelementptr inbounds %struct.btrfs_super_block, ptr %155, i32 0, i32 26
  %156 = ptrtoint ptr %log_root_level.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %log_root_level.i, align 1
  %super_for_commit = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 44
  %157 = ptrtoint ptr %super_for_commit to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %super_for_commit, align 4
  %159 = load ptr, ptr %super_copy.i, align 8
  %160 = call ptr @memcpy(ptr %158, ptr %159, i32 4096)
  call void @btrfs_commit_device_sizes(ptr noundef %85) #13
  call void @_clear_bit(i32 noundef 8, ptr noundef %flags206) #13
  call void @_clear_bit(i32 noundef 9, ptr noundef %flags206) #13
  %chunk_bytes_reserved.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 2
  %161 = ptrtoint ptr %chunk_bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %chunk_bytes_reserved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %162)
  %tobool.not.i616 = icmp eq i64 %162, 0
  br i1 %tobool.not.i616, label %update_super_roots.exit.btrfs_trans_release_chunk_metadata.exit_crit_edge, label %if.end.i619

update_super_roots.exit.btrfs_trans_release_chunk_metadata.exit_crit_edge: ; preds = %update_super_roots.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_trans_release_chunk_metadata.exit

if.end.i619:                                      ; preds = %update_super_roots.exit
  call void @__sanitizer_cov_trace_pc() #15
  %163 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %fs_info1, align 4
  %chunk_block_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %164, i32 0, i32 22
  %call.i618 = call i64 @btrfs_block_rsv_release(ptr noundef %164, ptr noundef %chunk_block_rsv.i, i64 noundef %162, ptr noundef null) #13
  %165 = ptrtoint ptr %chunk_bytes_reserved.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 0, ptr %chunk_bytes_reserved.i, align 8
  br label %btrfs_trans_release_chunk_metadata.exit

btrfs_trans_release_chunk_metadata.exit:          ; preds = %if.end.i619, %update_super_roots.exit.btrfs_trans_release_chunk_metadata.exit_crit_edge
  %tree_log_mutex = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 47
  call void @mutex_lock_nested(ptr noundef %tree_log_mutex, i32 noundef 0) #13
  call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %state328 = getelementptr inbounds %struct.btrfs_transaction, ptr %85, i32 0, i32 5
  %166 = ptrtoint ptr %state328 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 3, ptr %state328, align 8
  %167 = ptrtoint ptr %running_transaction to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %running_transaction, align 8
  call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  call void @mutex_unlock(ptr noundef %reloc_mutex) #13
  %transaction_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 39
  call void @__wake_up(ptr noundef %transaction_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %168 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %transaction, align 4
  %dirty_pages1.i = getelementptr inbounds %struct.btrfs_transaction, ptr %169, i32 0, i32 8
  %170 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i) #13
  %172 = call ptr @memset(ptr %plug.i, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug.i) #13
  %call.i620 = call i32 @btrfs_write_marked_extents(ptr noundef %171, ptr noundef %dirty_pages1.i, i32 noundef 1) #13
  call void @blk_finish_plug(ptr noundef nonnull %plug.i) #13
  %call.i.i621 = call fastcc i32 @__btrfs_wait_marked_extents(ptr noundef %171, ptr noundef %dirty_pages1.i) #13
  %flags.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %171, i32 0, i32 1
  %call1.i.i = call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flags.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i621)
  %tobool3.not.i.i = icmp eq i32 %call.i.i621, 0
  %spec.store.select.i.i = select i1 %tobool3.not.i.i, i32 -5, i32 %call.i.i621
  %err.0.i.i = select i1 %tobool.not.i.i, i32 %call.i.i621, i32 %spec.store.select.i.i
  %173 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %transaction, align 4
  %dirty_pages5.i = getelementptr inbounds %struct.btrfs_transaction, ptr %174, i32 0, i32 8
  call void @extent_io_tree_release(ptr noundef %dirty_pages5.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i620)
  %tobool.not.i622 = icmp eq i32 %call.i620, 0
  %retval.0.i = select i1 %tobool.not.i622, i32 %err.0.i.i, i32 %call.i620
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool333.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool333.not, label %if.end339, label %do.body335

do.body335:                                       ; preds = %btrfs_trans_release_chunk_metadata.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %1, ptr noundef nonnull @__func__.btrfs_commit_transaction, i32 noundef 2404, i32 noundef %retval.0.i, ptr noundef nonnull @.str.10) #16
  br label %scrub_continue.sink.split

if.end339:                                        ; preds = %btrfs_trans_release_chunk_metadata.exit
  call void @btrfs_free_redirty_list(ptr noundef %85) #13
  %call340 = call i32 @write_all_supers(ptr noundef %1, i32 noundef 0) #13
  call void @mutex_unlock(ptr noundef %tree_log_mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %tobool342.not = icmp eq i32 %call340, 0
  br i1 %tobool342.not, label %if.end344, label %if.end339.scrub_continue_crit_edge

if.end339.scrub_continue_crit_edge:               ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #15
  br label %scrub_continue

if.end344:                                        ; preds = %if.end339
  %175 = ptrtoint ptr %state328 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 4, ptr %state328, align 8
  %commit_wait = getelementptr inbounds %struct.btrfs_transaction, ptr %85, i32 0, i32 11
  call void @__wake_up(ptr noundef %commit_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %call346 = call i32 @btrfs_finish_extent_commit(ptr noundef %trans) #13
  %flags347 = getelementptr inbounds %struct.btrfs_transaction, ptr %85, i32 0, i32 4
  %176 = ptrtoint ptr %flags347 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %flags347, align 4
  %and1.i567 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i567)
  %tobool349.not = icmp eq i32 %and1.i567, 0
  br i1 %tobool349.not, label %if.end344.if.end351_crit_edge, label %if.then350

if.end344.if.end351_crit_edge:                    ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end351

if.then350:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_clear_space_info_full(ptr noundef %1) #13
  br label %if.end351

if.end351:                                        ; preds = %if.then350, %if.end344.if.end351_crit_edge
  %178 = ptrtoint ptr %85 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %85, align 8
  %last_trans_committed = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 27
  %180 = ptrtoint ptr %last_trans_committed to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %179, ptr %last_trans_committed, align 8
  %181 = ptrtoint ptr %state328 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 5, ptr %state328, align 8
  call void @__wake_up(ptr noundef %commit_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %list355 = getelementptr inbounds %struct.btrfs_transaction, ptr %85, i32 0, i32 7
  %call.i.i623 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list355) #13
  br i1 %call.i.i623, label %if.end.i.i624, label %if.end351.list_del_init.exit_crit_edge

if.end351.list_del_init.exit_crit_edge:           ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i624:                                    ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.btrfs_transaction, ptr %85, i32 0, i32 7, i32 1
  %182 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %prev.i.i, align 4
  %184 = ptrtoint ptr %list355 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %list355, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %183, ptr %prev1.i.i.i, align 4
  %187 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %185, ptr %183, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i624, %if.end351.list_del_init.exit_crit_edge
  %188 = ptrtoint ptr %list355 to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile ptr %list355, ptr %list355, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_transaction, ptr %85, i32 0, i32 7, i32 1
  %189 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %list355, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  call void @btrfs_put_transaction(ptr noundef %85)
  call void @btrfs_put_transaction(ptr noundef %85)
  %190 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %type, align 8
  %and = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool358.not = icmp eq i32 %and, 0
  br i1 %tobool358.not, label %list_del_init.exit.if.end360_crit_edge, label %if.then359

list_del_init.exit.if.end360_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end360

if.then359:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 45
  %192 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sb, align 8
  call fastcc void @sb_end_intwrite(ptr noundef %193)
  br label %if.end360

if.end360:                                        ; preds = %if.then359, %list_del_init.exit.if.end360_crit_edge
  call fastcc void @trace_btrfs_transaction_commit(ptr noundef %1)
  call void @btrfs_scrub_continue(ptr noundef %1) #13
  %194 = call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i625 = and i32 %194, -16384
  %195 = inttoptr i32 %and.i625 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 2
  %196 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %197, i32 0, i32 146
  %198 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %journal_info, align 4
  %cmp362 = icmp eq ptr %199, %trans
  br i1 %cmp362, label %if.then363, label %if.end360.if.end367_crit_edge

if.end360.if.end367_crit_edge:                    ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end367

if.then363:                                       ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #15
  %200 = ptrtoint ptr %journal_info to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %journal_info, align 4
  br label %if.end367

if.end367:                                        ; preds = %if.then363, %if.end360.if.end367_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_trans_handle_cachep to i32))
  %201 = load ptr, ptr @btrfs_trans_handle_cachep, align 4
  call void @kmem_cache_free(ptr noundef %201, ptr noundef %trans) #13
  br label %cleanup379

scrub_continue.sink.split:                        ; preds = %do.body335, %do.end280.scrub_continue.sink.split_crit_edge, %if.end273.scrub_continue.sink.split_crit_edge, %btrfs_apply_pending_changes.exit.scrub_continue.sink.split_crit_edge, %if.end257.scrub_continue.sink.split_crit_edge, %if.end229.scrub_continue.sink.split_crit_edge, %if.end225.scrub_continue.sink.split_crit_edge, %if.end221.scrub_continue.sink.split_crit_edge
  %reloc_mutex.sink = phi ptr [ %tree_log_mutex, %do.body335 ], [ %reloc_mutex, %do.end280.scrub_continue.sink.split_crit_edge ], [ %reloc_mutex, %if.end273.scrub_continue.sink.split_crit_edge ], [ %reloc_mutex, %btrfs_apply_pending_changes.exit.scrub_continue.sink.split_crit_edge ], [ %reloc_mutex, %if.end257.scrub_continue.sink.split_crit_edge ], [ %reloc_mutex, %if.end229.scrub_continue.sink.split_crit_edge ], [ %reloc_mutex, %if.end225.scrub_continue.sink.split_crit_edge ], [ %reloc_mutex, %if.end221.scrub_continue.sink.split_crit_edge ]
  %ret.8.ph = phi i32 [ %retval.0.i, %do.body335 ], [ %83, %do.end280.scrub_continue.sink.split_crit_edge ], [ %call274, %if.end273.scrub_continue.sink.split_crit_edge ], [ %call270, %btrfs_apply_pending_changes.exit.scrub_continue.sink.split_crit_edge ], [ %call265, %if.end257.scrub_continue.sink.split_crit_edge ], [ %call230, %if.end229.scrub_continue.sink.split_crit_edge ], [ %call226, %if.end225.scrub_continue.sink.split_crit_edge ], [ %call222, %if.end221.scrub_continue.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %reloc_mutex.sink) #13
  br label %scrub_continue

scrub_continue:                                   ; preds = %scrub_continue.sink.split, %if.end339.scrub_continue_crit_edge, %do.end205.scrub_continue_crit_edge
  %ret.8 = phi i32 [ %call340, %if.end339.scrub_continue_crit_edge ], [ %78, %do.end205.scrub_continue_crit_edge ], [ %ret.8.ph, %scrub_continue.sink.split ]
  call void @btrfs_scrub_continue(ptr noundef %1) #13
  br label %cleanup_transaction

cleanup_transaction:                              ; preds = %scrub_continue, %do.end137.cleanup_transaction_crit_edge, %btrfs_start_delalloc_flush.exit.cleanup_transaction_crit_edge, %if.else94.cleanup_transaction_crit_edge, %refcount_inc.exit580.cleanup_transaction_crit_edge
  %ret.9 = phi i32 [ %call111, %btrfs_start_delalloc_flush.exit.cleanup_transaction_crit_edge ], [ %call138, %do.end137.cleanup_transaction_crit_edge ], [ %ret.8, %scrub_continue ], [ -30, %if.else94.cleanup_transaction_crit_edge ], [ %43, %refcount_inc.exit580.cleanup_transaction_crit_edge ]
  %202 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %fs_info1, align 4
  %204 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %block_rsv.i, align 8
  %tobool.not.i628 = icmp eq ptr %205, null
  %206 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %bytes_reserved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %207)
  %tobool2.not.i630 = icmp eq i64 %207, 0
  br i1 %tobool.not.i628, label %if.then.i631, label %if.end.i633

if.then.i631:                                     ; preds = %cleanup_transaction
  br i1 %tobool2.not.i630, label %if.then.i631.btrfs_trans_release_metadata.exit640_crit_edge, label %cond.false.i632, !prof !166

if.then.i631.btrfs_trans_release_metadata.exit640_crit_edge: ; preds = %if.then.i631
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_trans_release_metadata.exit640

cond.false.i632:                                  ; preds = %if.then.i631
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.46, i32 noundef 980) #17
  unreachable

if.end.i633:                                      ; preds = %cleanup_transaction
  br i1 %tobool2.not.i630, label %if.end.i633.btrfs_trans_release_metadata.exit640_crit_edge, label %if.end9.i636

if.end.i633.btrfs_trans_release_metadata.exit640_crit_edge: ; preds = %if.end.i633
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_trans_release_metadata.exit640

if.end9.i636:                                     ; preds = %if.end.i633
  %trans_block_rsv.i634 = getelementptr inbounds %struct.btrfs_fs_info, ptr %203, i32 0, i32 21
  %cmp.i635 = icmp eq ptr %205, %trans_block_rsv.i634
  br i1 %cmp.i635, label %cond.end19.i639, label %cond.false18.i637, !prof !166

cond.false18.i637:                                ; preds = %if.end9.i636
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.47, i32 noundef 987) #17
  unreachable

cond.end19.i639:                                  ; preds = %if.end9.i636
  call void @__sanitizer_cov_trace_pc() #15
  %208 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %trans, align 8
  call fastcc void @trace_btrfs_space_reservation(ptr noundef %203, i64 noundef %209, i64 noundef %207, i32 noundef 0) #13
  %210 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %block_rsv.i, align 8
  %212 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %bytes_reserved.i, align 8
  %call.i638 = call i64 @btrfs_block_rsv_release(ptr noundef %203, ptr noundef %211, i64 noundef %213, ptr noundef null) #13
  %214 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 0, ptr %bytes_reserved.i, align 8
  br label %btrfs_trans_release_metadata.exit640

btrfs_trans_release_metadata.exit640:             ; preds = %cond.end19.i639, %if.end.i633.btrfs_trans_release_metadata.exit640_crit_edge, %if.then.i631.btrfs_trans_release_metadata.exit640_crit_edge
  %215 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %fs_info1, align 4
  %new_bgs.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 17
  %217 = ptrtoint ptr %new_bgs.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %new_bgs.i, align 8
  %cmp.not20.i = icmp eq ptr %218, %new_bgs.i
  br i1 %cmp.not20.i, label %btrfs_trans_release_metadata.exit640.btrfs_cleanup_pending_block_groups.exit_crit_edge, label %btrfs_trans_release_metadata.exit640.for.body.i_crit_edge

btrfs_trans_release_metadata.exit640.for.body.i_crit_edge: ; preds = %btrfs_trans_release_metadata.exit640
  br label %for.body.i

btrfs_trans_release_metadata.exit640.btrfs_cleanup_pending_block_groups.exit_crit_edge: ; preds = %btrfs_trans_release_metadata.exit640
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_cleanup_pending_block_groups.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %btrfs_trans_release_metadata.exit640.for.body.i_crit_edge
  %219 = phi ptr [ %.pn.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %218, %btrfs_trans_release_metadata.exit640.for.body.i_crit_edge ]
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %.pn.i = load ptr, ptr %219, align 8
  call void @btrfs_delayed_refs_rsv_release(ptr noundef %216, i32 noundef 1) #13
  %call.i.i.i642 = call zeroext i1 @__list_del_entry_valid(ptr noundef %219) #13
  br i1 %call.i.i.i642, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %219, i32 0, i32 1
  %221 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %prev.i.i.i, align 4
  %223 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %219, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %222, ptr %prev1.i.i.i.i, align 4
  %226 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %226)
  store volatile ptr %224, ptr %222, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %227 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %227)
  store volatile ptr %219, ptr %219, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %219, i32 0, i32 1
  %228 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %219, ptr %prev.i3.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %new_bgs.i
  br i1 %cmp.not.i, label %list_del_init.exit.i.btrfs_cleanup_pending_block_groups.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

list_del_init.exit.i.btrfs_cleanup_pending_block_groups.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_cleanup_pending_block_groups.exit

btrfs_cleanup_pending_block_groups.exit:          ; preds = %list_del_init.exit.i.btrfs_cleanup_pending_block_groups.exit_crit_edge, %btrfs_trans_release_metadata.exit640.btrfs_cleanup_pending_block_groups.exit_crit_edge
  %chunk_bytes_reserved.i643 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 2
  %229 = ptrtoint ptr %chunk_bytes_reserved.i643 to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %chunk_bytes_reserved.i643, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %230)
  %tobool.not.i644 = icmp eq i64 %230, 0
  br i1 %tobool.not.i644, label %btrfs_cleanup_pending_block_groups.exit.btrfs_trans_release_chunk_metadata.exit649_crit_edge, label %if.end.i648

btrfs_cleanup_pending_block_groups.exit.btrfs_trans_release_chunk_metadata.exit649_crit_edge: ; preds = %btrfs_cleanup_pending_block_groups.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_trans_release_chunk_metadata.exit649

if.end.i648:                                      ; preds = %btrfs_cleanup_pending_block_groups.exit
  call void @__sanitizer_cov_trace_pc() #15
  %231 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %fs_info1, align 4
  %chunk_block_rsv.i646 = getelementptr inbounds %struct.btrfs_fs_info, ptr %232, i32 0, i32 22
  %call.i647 = call i64 @btrfs_block_rsv_release(ptr noundef %232, ptr noundef %chunk_block_rsv.i646, i64 noundef %230, ptr noundef null) #13
  %233 = ptrtoint ptr %chunk_bytes_reserved.i643 to i32
  call void @__asan_store8_noabort(i32 %233)
  store i64 0, ptr %chunk_bytes_reserved.i643, align 8
  br label %btrfs_trans_release_chunk_metadata.exit649

btrfs_trans_release_chunk_metadata.exit649:       ; preds = %if.end.i648, %btrfs_cleanup_pending_block_groups.exit.btrfs_trans_release_chunk_metadata.exit649_crit_edge
  %234 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr null, ptr %block_rsv.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.11) #16
  %235 = call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i650 = and i32 %235, -16384
  %236 = inttoptr i32 %and.i650 to ptr
  %task371 = getelementptr inbounds %struct.thread_info, ptr %236, i32 0, i32 2
  %237 = ptrtoint ptr %task371 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %task371, align 8
  %journal_info372 = getelementptr inbounds %struct.task_struct, ptr %238, i32 0, i32 146
  %239 = ptrtoint ptr %journal_info372 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %journal_info372, align 4
  %cmp373 = icmp eq ptr %240, %trans
  br i1 %cmp373, label %if.then374, label %btrfs_trans_release_chunk_metadata.exit649.if.end378_crit_edge

btrfs_trans_release_chunk_metadata.exit649.if.end378_crit_edge: ; preds = %btrfs_trans_release_chunk_metadata.exit649
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end378

if.then374:                                       ; preds = %btrfs_trans_release_chunk_metadata.exit649
  call void @__sanitizer_cov_trace_pc() #15
  %241 = ptrtoint ptr %journal_info372 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr null, ptr %journal_info372, align 4
  br label %if.end378

if.end378:                                        ; preds = %if.then374, %btrfs_trans_release_chunk_metadata.exit649.if.end378_crit_edge
  call fastcc void @cleanup_transaction(ptr noundef %trans, i32 noundef %ret.9)
  br label %cleanup379

cleanup379:                                       ; preds = %if.end378, %if.end367, %if.end62, %cleanup, %if.then17, %if.then
  %retval.2 = phi i32 [ %7, %if.then ], [ %ret.4, %if.end62 ], [ %ret.9, %if.end378 ], [ 0, %if.end367 ], [ %call33, %cleanup ], [ %call15, %if.then17 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_run_delayed_refs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_create_pending_block_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_start_dirty_block_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_pending_snapshot(ptr nocapture noundef readonly %trans) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transaction, align 4
  %pending_snapshot = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 7
  %2 = ptrtoint ptr %pending_snapshot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending_snapshot, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %do.body.if.end18_crit_edge, label %land.rhs

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.rhs:                                         ; preds = %do.body
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %5 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fs_info, align 4
  %dep_map = getelementptr inbounds %struct.btrfs_fs_info, ptr %6, i32 0, i32 57, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end18_crit_edge, !prof !163

land.rhs.if.end18_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2087, i32 noundef 9, ptr noundef null) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end, %land.rhs.if.end18_crit_edge, %do.body.if.end18_crit_edge
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp27.not = icmp eq i32 %8, 0
  br i1 %cmp27.not, label %cond.false, label %cond.end, !prof !163

cond.false:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.48, i32 noundef 2088) #18
  unreachable

cond.end:                                         ; preds = %if.end18
  %9 = ptrtoint ptr %pending_snapshot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pending_snapshot, align 8
  %list = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %10, i32 0, i32 11
  %pending_snapshots = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %pending_snapshots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pending_snapshots, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %pending_snapshots, ptr noundef %12) #13
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %10, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pending_snapshots, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %pending_snapshots to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %pending_snapshots, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_run_delayed_items(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_scrub_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_pending_snapshots(ptr noundef %trans) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transaction, align 4
  %pending_snapshots = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %pending_snapshots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending_snapshots, align 4
  br label %for.cond

for.cond:                                         ; preds = %list_del.exit.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %3, %entry ], [ %.pn, %list_del.exit.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %pending_snapshots
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %pending.0 = getelementptr i8, ptr %.pn.in, i32 -132
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call = tail call fastcc i32 @create_pending_snapshot(ptr noundef %trans, ptr noundef %pending.0)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %list_del.exit.for.cond_crit_edge, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

list_del.exit.for.cond_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.1 = phi i32 [ %call, %list_del.exit.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_assert_delayed_root_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @commit_fs_roots(ptr noundef %trans) unnamed_addr #4 align 64 {
entry:
  %gang = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gang) #13
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %2 = call ptr @memset(ptr %gang, i32 255, i32 32)
  %3 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %transaction, align 4
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %cond.end, label %cond.false, !prof !166

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.59, i32 noundef 1415) #18
  unreachable

cond.end:                                         ; preds = %entry
  %fs_roots_radix_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %fs_roots_radix_lock) #13
  %fs_roots_radix = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 13
  %call110 = call i32 @radix_tree_gang_lookup_tag(ptr noundef %fs_roots_radix, ptr noundef nonnull %gang, i32 noundef 0, i32 noundef 8, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp3111 = icmp eq i32 %call110, 0
  br i1 %cmp3111, label %cond.end.while.end_crit_edge, label %for.cond.preheader.lr.ph

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.cond.preheader.lr.ph:                         ; preds = %cond.end
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  br label %for.cond.preheader

while.cond.loopexit:                              ; preds = %for.inc.while.cond.loopexit_crit_edge, %for.cond.preheader.while.cond.loopexit_crit_edge
  %call = call i32 @radix_tree_gang_lookup_tag(ptr noundef %fs_roots_radix, ptr noundef nonnull %gang, i32 noundef 0, i32 noundef 8, i32 noundef 0) #13
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.for.cond.preheader_crit_edge

while.cond.loopexit.for.cond.preheader_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.cond.preheader:                               ; preds = %while.cond.loopexit.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %call112 = phi i32 [ %call110, %for.cond.preheader.lr.ph ], [ %call, %while.cond.loopexit.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp4108 = icmp sgt i32 %call112, 0
  br i1 %cmp4108, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.while.cond.loopexit_crit_edge

for.cond.preheader.while.cond.loopexit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.loopexit

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0109 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr %gang, i32 0, i32 %i.0109
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %log_writers = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 17
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_writers, i32 noundef 4) #13
  %9 = ptrtoint ptr %log_writers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %log_writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %cond.end15, label %cond.false14, !prof !166

cond.false14:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.60, i32 noundef 1433) #18
  unreachable

cond.end15:                                       ; preds = %for.body
  %log_commit = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 18
  %call.i.i103 = call zeroext i1 @__kasan_check_read(ptr noundef %log_commit, i32 noundef 4) #13
  %11 = ptrtoint ptr %log_commit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %log_commit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp18 = icmp eq i32 %12, 0
  br i1 %cmp18, label %cond.end27, label %cond.false26, !prof !166

cond.false26:                                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.61, i32 noundef 1434) #18
  unreachable

cond.end27:                                       ; preds = %cond.end15
  %arrayidx29 = getelementptr %struct.btrfs_root, ptr %8, i32 0, i32 18, i32 1
  %call.i.i104 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx29, i32 noundef 4) #13
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp31 = icmp eq i32 %14, 0
  br i1 %cmp31, label %cond.end40, label %cond.false39, !prof !166

cond.false39:                                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.62, i32 noundef 1435) #18
  unreachable

cond.end40:                                       ; preds = %cond.end27
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 7
  %15 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %root_key, align 1
  %conv = trunc i64 %16 to i32
  %call42 = call ptr @radix_tree_tag_clear(ptr noundef %fs_roots_radix, i32 noundef %conv, i32 noundef 0) #13
  call void @_raw_spin_unlock(ptr noundef %fs_roots_radix_lock) #13
  %call44 = call i32 @btrfs_free_log(ptr noundef %trans, ptr noundef %8) #13
  %call45 = call i32 @btrfs_update_reloc_root(ptr noundef %trans, ptr noundef %8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %cond.end40.cleanup68_crit_edge

cond.end40.cleanup68_crit_edge:                   ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup68

if.end48:                                         ; preds = %cond.end40
  %state49 = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 5
  call void @_clear_bit(i32 noundef 6, ptr noundef %state49) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !193
  %commit_root = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 2
  %17 = ptrtoint ptr %commit_root to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %commit_root, align 8
  %node = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 1
  %19 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node, align 4
  %cmp53.not = icmp eq ptr %18, %20
  br i1 %cmp53.not, label %if.end48.if.end58_crit_edge, label %if.then55

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then55:                                        ; preds = %if.end48
  %dirty_list = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 29
  %21 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transaction, align 4
  %switch_commits = getelementptr inbounds %struct.btrfs_transaction, ptr %22, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.btrfs_transaction, ptr %22, i32 0, i32 14, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i105 = call zeroext i1 @__list_add_valid(ptr noundef %dirty_list, ptr noundef %24, ptr noundef %switch_commits) #13
  br i1 %call.i.i105, label %if.end.i.i, label %if.then55.list_add_tail.exit_crit_edge

if.then55.list_add_tail.exit_crit_edge:           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dirty_list, ptr %prev.i, align 4
  %26 = ptrtoint ptr %dirty_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %switch_commits, ptr %dirty_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 29, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %dirty_list, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then55.list_add_tail.exit_crit_edge
  %root_item = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 6
  %29 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %node, align 4
  call void @btrfs_set_root_node(ptr noundef %root_item, ptr noundef %30) #13
  br label %if.end58

if.end58:                                         ; preds = %list_add_tail.exit, %if.end48.if.end58_crit_edge
  %31 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tree_root, align 4
  %root_item60 = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 6
  %call61 = call i32 @btrfs_update_root(ptr noundef %trans, ptr noundef %32, ptr noundef %root_key, ptr noundef %root_item60) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.inc, label %if.end58.cleanup68_crit_edge

if.end58.cleanup68_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup68

for.inc:                                          ; preds = %if.end58
  call void @_raw_spin_lock(ptr noundef %fs_roots_radix_lock) #13
  call void @btrfs_qgroup_free_meta_all_pertrans(ptr noundef %8) #13
  %inc = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %call112
  br i1 %exitcond.not, label %for.inc.while.cond.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.while.cond.loopexit_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %cond.end.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %fs_roots_radix_lock) #13
  br label %cleanup68

cleanup68:                                        ; preds = %while.end, %if.end58.cleanup68_crit_edge, %cond.end40.cleanup68_crit_edge
  %retval.3 = phi i32 [ 0, %while.end ], [ %call45, %cond.end40.cleanup68_crit_edge ], [ %call61, %if.end58.cleanup68_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gang) #13
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_apply_pending_changes(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_changes = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 32
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_changes, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !190
  tail call void @llvm.prefetch.p0(ptr %pending_changes, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %pending_changes) #13, !srcloc !191
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %asmresult.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end.if.end27_crit_edge, label %do.body17

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_apply_pending_changes.__UNIQUE_ID_ddebug958, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_apply_pending_changes, %if.then23)) #13
          to label %if.end27 [label %if.then23], !srcloc !188

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.17) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %do.body17, %if.end.if.end27_crit_edge
  %and28 = and i32 %asmresult.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.then30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.18, i32 noundef %and28) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_free_log_root_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_qgroup_account_extents(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @commit_cowonly_roots(ptr noundef %trans) unnamed_addr #4 align 64 {
entry:
  %eb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction, align 4
  %dirty_bgs2 = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 15
  %io_bgs4 = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eb) #13
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %cond.end, label %cond.false, !prof !166

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.59, i32 noundef 1281) #18
  unreachable

cond.end:                                         ; preds = %entry
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tree_root, align 4
  %call = tail call ptr @btrfs_lock_root_node(ptr noundef %7) #13
  %8 = ptrtoint ptr %eb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %eb, align 4
  %9 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tree_root, align 4
  %call8 = call i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %10, ptr noundef %call, ptr noundef null, i32 noundef 0, ptr noundef nonnull %eb, i32 noundef 1) #13
  %11 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eb, align 4
  call void @btrfs_tree_unlock(ptr noundef %12) #13
  %13 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eb, align 4
  call void @free_extent_buffer(ptr noundef %14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end, label %cond.end.cleanup65_crit_edge

cond.end.cleanup65_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

if.end:                                           ; preds = %cond.end
  %call10 = call i32 @btrfs_run_dev_stats(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup65_crit_edge

if.end.cleanup65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

if.end13:                                         ; preds = %if.end
  %call14 = call i32 @btrfs_run_dev_replace(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup65_crit_edge

if.end13.cleanup65_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @btrfs_run_qgroups(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup65_crit_edge

if.end17.cleanup65_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @btrfs_setup_space_cache(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %again.preheader, label %if.end21.cleanup65_crit_edge

if.end21.cleanup65_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

again.preheader:                                  ; preds = %if.end21
  %dirty_cowonly_roots = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 99
  br label %again

again:                                            ; preds = %while.end58.again_crit_edge, %again.preheader
  %15 = ptrtoint ptr %dirty_cowonly_roots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %dirty_cowonly_roots, align 4
  %cmp.i.not127 = icmp eq ptr %16, %dirty_cowonly_roots
  br i1 %cmp.i.not127, label %again.while.end_crit_edge, label %again.while.body_crit_edge

again.while.body_crit_edge:                       ; preds = %again
  br label %while.body

again.while.end_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.loopexit:                              ; preds = %land.lhs.true.i
  %17 = ptrtoint ptr %dirty_cowonly_roots to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %dirty_cowonly_roots, align 4
  %cmp.i.not = icmp eq ptr %18, %dirty_cowonly_roots
  br i1 %cmp.i.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %again.while.body_crit_edge
  %19 = phi ptr [ %18, %while.cond.loopexit.while.body_crit_edge ], [ %16, %again.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %prev.i3.i, align 4
  %state32 = getelementptr i8, ptr %19, i32 -1040
  call void @_clear_bit(i32 noundef 8, ptr noundef %state32) #13
  %28 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transaction, align 4
  %switch_commits = getelementptr inbounds %struct.btrfs_transaction, ptr %29, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.btrfs_transaction, ptr %29, i32 0, i32 14, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i110 = call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef %31, ptr noundef %switch_commits) #13
  br i1 %call.i.i110, label %if.end.i.i111, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i111:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %19, ptr %prev.i, align 4
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %switch_commits, ptr %19, align 4
  %34 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev.i3.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %19, ptr %31, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i111, %list_del_init.exit.list_add_tail.exit_crit_edge
  %fs_info1.i = getelementptr i8, ptr %19, i32 -580
  %36 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fs_info1.i, align 8
  %tree_root2.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %tree_root2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tree_root2.i, align 4
  %root_item.i = getelementptr i8, ptr %19, i32 -1036
  %bytes_used.i.i = getelementptr i8, ptr %19, i32 -844
  %40 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %bytes_used.i.i, align 1
  %42 = call i64 @llvm.bswap.i64(i64 %41) #13
  %bytenr.i.i = getelementptr i8, ptr %19, i32 -860
  %node.i = getelementptr i8, ptr %19, i32 -1056
  %root_key.i = getelementptr i8, ptr %19, i32 -597
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end13.i, %list_add_tail.exit
  %old_root_used.0.i = phi i64 [ %42, %list_add_tail.exit ], [ %55, %if.end13.i ]
  %43 = ptrtoint ptr %bytenr.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %bytenr.i.i, align 1
  %45 = call i64 @llvm.bswap.i64(i64 %44) #13
  %46 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %node.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %47, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %49)
  %cmp.i112 = icmp eq i64 %45, %49
  br i1 %cmp.i112, label %land.lhs.true.i, label %while.cond.i.if.end.i_crit_edge

while.cond.i.if.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.cond.i
  %50 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %bytes_used.i.i, align 1
  %52 = call i64 @llvm.bswap.i64(i64 %51) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %old_root_used.0.i, i64 %52)
  %cmp7.i = icmp eq i64 %old_root_used.0.i, %52
  br i1 %cmp7.i, label %while.cond.loopexit, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.cond.i.if.end.i_crit_edge
  call void @btrfs_set_root_node(ptr noundef %root_item.i, ptr noundef %47) #13
  %call11.i = call i32 @btrfs_update_root(ptr noundef %trans, ptr noundef %39, ptr noundef %root_key.i, ptr noundef %root_item.i) #13
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %if.end.i.cleanup65_crit_edge

if.end.i.cleanup65_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %bytes_used.i.i, align 1
  %55 = call i64 @llvm.bswap.i64(i64 %54) #13
  br label %while.cond.i

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %again.while.end_crit_edge
  %call38 = call i32 @btrfs_run_delayed_refs(ptr noundef %trans, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %while.end.while.cond42_crit_edge, label %while.end.cleanup65_crit_edge

while.end.cleanup65_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

while.end.while.cond42_crit_edge:                 ; preds = %while.end
  br label %while.cond42

while.cond42:                                     ; preds = %if.end53.while.cond42_crit_edge, %while.end.while.cond42_crit_edge
  %56 = ptrtoint ptr %dirty_bgs2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %dirty_bgs2, align 4
  %cmp.i113.not = icmp eq ptr %57, %dirty_bgs2
  br i1 %cmp.i113.not, label %lor.rhs, label %while.cond42.while.body49_crit_edge

while.cond42.while.body49_crit_edge:              ; preds = %while.cond42
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body49

lor.rhs:                                          ; preds = %while.cond42
  %58 = ptrtoint ptr %io_bgs4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %io_bgs4, align 4
  %cmp.i115.not = icmp eq ptr %59, %io_bgs4
  br i1 %cmp.i115.not, label %while.end58, label %lor.rhs.while.body49_crit_edge

lor.rhs.while.body49_crit_edge:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body49

while.body49:                                     ; preds = %lor.rhs.while.body49_crit_edge, %while.cond42.while.body49_crit_edge
  %call50 = call i32 @btrfs_write_dirty_block_groups(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %while.body49.cleanup65_crit_edge

while.body49.cleanup65_crit_edge:                 ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

if.end53:                                         ; preds = %while.body49
  %call54 = call i32 @btrfs_run_delayed_refs(ptr noundef %trans, i32 noundef -1) #13
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end53.while.cond42_crit_edge, label %if.end53.cleanup65_crit_edge

if.end53.cleanup65_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup65

if.end53.while.cond42_crit_edge:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond42

while.end58:                                      ; preds = %lor.rhs
  %60 = ptrtoint ptr %dirty_cowonly_roots to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %dirty_cowonly_roots, align 4
  %cmp.i117.not = icmp eq ptr %61, %dirty_cowonly_roots
  br i1 %cmp.i117.not, label %if.end63, label %while.end58.again_crit_edge

while.end58.again_crit_edge:                      ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %again

if.end63:                                         ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #15
  %cursor_left_last_write_of_item = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 7
  %62 = ptrtoint ptr %cursor_left_last_write_of_item to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %cursor_left_last_write_of_item, align 8
  %committed_cursor_left = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 154, i32 6
  %64 = ptrtoint ptr %committed_cursor_left to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %committed_cursor_left, align 8
  br label %cleanup65

cleanup65:                                        ; preds = %if.end63, %if.end53.cleanup65_crit_edge, %while.body49.cleanup65_crit_edge, %while.end.cleanup65_crit_edge, %if.end.i.cleanup65_crit_edge, %if.end21.cleanup65_crit_edge, %if.end17.cleanup65_crit_edge, %if.end13.cleanup65_crit_edge, %if.end.cleanup65_crit_edge, %cond.end.cleanup65_crit_edge
  %retval.3 = phi i32 [ 0, %if.end63 ], [ %call8, %cond.end.cleanup65_crit_edge ], [ %call10, %if.end.cleanup65_crit_edge ], [ %call14, %if.end13.cleanup65_crit_edge ], [ %call18, %if.end17.cleanup65_crit_edge ], [ %call22, %if.end21.cleanup65_crit_edge ], [ %call11.i, %if.end.i.cleanup65_crit_edge ], [ %call54, %if.end53.cleanup65_crit_edge ], [ %call50, %while.body49.cleanup65_crit_edge ], [ %call38, %while.end.cleanup65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eb) #13
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_root_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switch_commit_roots(ptr noundef %trans) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transaction, align 4
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 4
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %cond.end, label %cond.false, !prof !166

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.63, i32 noundef 169) #18
  unreachable

cond.end:                                         ; preds = %entry
  %commit_root_sem = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 54
  tail call void @down_write(ptr noundef %commit_root_sem) #13
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %trans, align 8
  %last_reloc_trans = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 28
  %11 = ptrtoint ptr %last_reloc_trans to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %last_reloc_trans, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %switch_commits = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %switch_commits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %switch_commits, align 8
  %cmp12.not117 = icmp eq ptr %13, %switch_commits
  br i1 %cmp12.not117, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in118 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %13, %if.end.for.body_crit_edge ]
  %root.0 = getelementptr i8, ptr %.pn.in118, i32 -1068
  %14 = ptrtoint ptr %.pn.in118 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn.in118, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in118) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in118, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn.in118 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in118, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %.pn.in118 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %.pn.in118, ptr %.pn.in118, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in118, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.pn.in118, ptr %prev.i3.i, align 4
  %commit_root = getelementptr i8, ptr %.pn.in118, i32 -1052
  %23 = ptrtoint ptr %commit_root to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %commit_root, align 8
  tail call void @free_extent_buffer(ptr noundef %24) #13
  %call16 = tail call ptr @btrfs_root_node(ptr noundef %root.0) #13
  %25 = ptrtoint ptr %commit_root to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call16, ptr %commit_root, align 8
  %dirty_log_pages = getelementptr i8, ptr %.pn.in118, i32 -572
  tail call void @extent_io_tree_release(ptr noundef %dirty_log_pages) #13
  tail call void @btrfs_qgroup_clean_swapped_blocks(ptr noundef %root.0) #13
  %cmp12.not = icmp eq ptr %.pn, %switch_commits
  br i1 %cmp12.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %dropped_roots_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %dropped_roots_lock) #13
  %dropped_roots = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %dropped_roots to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %dropped_roots, align 4
  %cmp.i.not120 = icmp eq ptr %27, %dropped_roots
  br i1 %cmp.i.not120, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit110.while.body_crit_edge, %for.end.while.body_crit_edge
  %28 = phi ptr [ %38, %list_del_init.exit110.while.body_crit_edge ], [ %27, %for.end.while.body_crit_edge ]
  %add.ptr31 = getelementptr i8, ptr %28, i32 -1076
  %call.i.i105 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #13
  br i1 %call.i.i105, label %if.end.i.i108, label %while.body.list_del_init.exit110_crit_edge

while.body.list_del_init.exit110_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit110

if.end.i.i108:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i106 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i106 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i106, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %prev1.i.i.i107 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i107, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_init.exit110

list_del_init.exit110:                            ; preds = %if.end.i.i108, %while.body.list_del_init.exit110_crit_edge
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %28, ptr %28, align 4
  %prev.i3.i109 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i109 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %28, ptr %prev.i3.i109, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dropped_roots_lock) #13
  %call33 = tail call i32 @btrfs_free_log(ptr noundef %trans, ptr noundef %add.ptr31) #13
  tail call void @btrfs_drop_and_free_fs_root(ptr noundef %3, ptr noundef %add.ptr31) #13
  tail call void @_raw_spin_lock(ptr noundef %dropped_roots_lock) #13
  %37 = ptrtoint ptr %dropped_roots to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %dropped_roots, align 4
  %cmp.i.not = icmp eq ptr %38, %dropped_roots
  br i1 %cmp.i.not, label %list_del_init.exit110.while.end_crit_edge, label %list_del_init.exit110.while.body_crit_edge

list_del_init.exit110.while.body_crit_edge:       ; preds = %list_del_init.exit110
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del_init.exit110.while.end_crit_edge:        ; preds = %list_del_init.exit110
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit110.while.end_crit_edge, %for.end.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dropped_roots_lock) #13
  %block_group_cache_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %block_group_cache_lock) #13
  %caching_block_groups = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 61
  %39 = ptrtoint ptr %caching_block_groups to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %caching_block_groups, align 4
  %cmp47.not122 = icmp eq ptr %40, %caching_block_groups
  br i1 %cmp47.not122, label %while.end.for.end63_crit_edge, label %while.end.for.body50_crit_edge

while.end.for.body50_crit_edge:                   ; preds = %while.end
  br label %for.body50

while.end.for.end63_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end63

for.body50:                                       ; preds = %if.end56.for.body50_crit_edge, %while.end.for.body50_crit_edge
  %caching_ctl.0123 = phi ptr [ %next.0125, %if.end56.for.body50_crit_edge ], [ %40, %while.end.for.body50_crit_edge ]
  %41 = ptrtoint ptr %caching_ctl.0123 to i32
  call void @__asan_load4_noabort(i32 %41)
  %next.0125 = load ptr, ptr %caching_ctl.0123, align 8
  %block_group = getelementptr inbounds %struct.btrfs_caching_control, ptr %caching_ctl.0123, i32 0, i32 4
  %42 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %block_group, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  %cached.i = getelementptr inbounds %struct.btrfs_block_group, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cached.i, align 8
  %46 = add i32 %45, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %46)
  %47 = icmp ult i32 %46, -2
  br i1 %47, label %if.else, label %if.then53

if.then53:                                        ; preds = %for.body50
  %last_byte_to_unpin = getelementptr inbounds %struct.btrfs_block_group, ptr %43, i32 0, i32 21
  %48 = ptrtoint ptr %last_byte_to_unpin to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 -1, ptr %last_byte_to_unpin, align 8
  %call.i.i111 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %caching_ctl.0123) #13
  br i1 %call.i.i111, label %if.end.i.i114, label %if.then53.list_del_init.exit116_crit_edge

if.then53.list_del_init.exit116_crit_edge:        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit116

if.end.i.i114:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i112 = getelementptr inbounds %struct.list_head, ptr %caching_ctl.0123, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i112 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i112, align 4
  %51 = ptrtoint ptr %caching_ctl.0123 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %caching_ctl.0123, align 4
  %prev1.i.i.i113 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i113, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del_init.exit116

list_del_init.exit116:                            ; preds = %if.end.i.i114, %if.then53.list_del_init.exit116_crit_edge
  %55 = ptrtoint ptr %caching_ctl.0123 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %caching_ctl.0123, ptr %caching_ctl.0123, align 4
  %prev.i3.i115 = getelementptr inbounds %struct.list_head, ptr %caching_ctl.0123, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i3.i115 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %caching_ctl.0123, ptr %prev.i3.i115, align 4
  tail call void @btrfs_put_caching_control(ptr noundef %caching_ctl.0123) #13
  br label %if.end56

if.else:                                          ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #15
  %progress = getelementptr inbounds %struct.btrfs_caching_control, ptr %caching_ctl.0123, i32 0, i32 5
  %57 = ptrtoint ptr %progress to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %progress, align 8
  %last_byte_to_unpin55 = getelementptr inbounds %struct.btrfs_block_group, ptr %43, i32 0, i32 21
  %59 = ptrtoint ptr %last_byte_to_unpin55 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %last_byte_to_unpin55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else, %list_del_init.exit116
  %cmp47.not = icmp eq ptr %next.0125, %caching_block_groups
  br i1 %cmp47.not, label %if.end56.for.end63_crit_edge, label %if.end56.for.body50_crit_edge

if.end56.for.body50_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body50

if.end56.for.end63_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end63

for.end63:                                        ; preds = %if.end56.for.end63_crit_edge, %while.end.for.end63_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #13
  tail call void @up_write(ptr noundef %commit_root_sem) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_commit_device_sizes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_write_and_wait_transaction(ptr nocapture noundef readonly %trans) unnamed_addr #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transaction, align 4
  %dirty_pages1 = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 8
  %fs_info2 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %2 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info2, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #13
  %4 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug) #13
  %call = call i32 @btrfs_write_marked_extents(ptr noundef %3, ptr noundef %dirty_pages1, i32 noundef 1)
  call void @blk_finish_plug(ptr noundef nonnull %plug) #13
  %call.i = call fastcc i32 @__btrfs_wait_marked_extents(ptr noundef %3, ptr noundef %dirty_pages1) #13
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 1
  %call1.i = call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flags.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  %spec.store.select.i = select i1 %tobool3.not.i, i32 -5, i32 %call.i
  %err.0.i = select i1 %tobool.not.i, i32 %call.i, i32 %spec.store.select.i
  %5 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transaction, align 4
  %dirty_pages5 = getelementptr inbounds %struct.btrfs_transaction, ptr %6, i32 0, i32 8
  call void @extent_io_tree_release(ptr noundef %dirty_pages5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %retval.0 = select i1 %tobool.not, i32 %err.0.i, i32 %call
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #13
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_handle_fs_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_redirty_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_all_supers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_finish_extent_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_clear_space_info_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sb_end_intwrite(ptr noundef %sb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr1.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2
  %dep_map.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0) #13
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %1) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !195
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 35, ptr noundef nonnull @.str.22) #13
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i_crit_edge
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i.i.i, label %do.body3.i.i, label %do.end49.i.i, !prof !166

do.body3.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !174
  %read_count.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %9 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_count.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add17.i.i = add i32 %20, -1
  store i32 %add17.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !175
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then37.i.i, label %do.body3.i.i.do.end39.i.i_crit_edge, !prof !163

do.body3.i.i.do.end39.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39.i.i

if.then37.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then37.i.i, %do.body3.i.i.do.end39.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #13, !srcloc !176
  br label %__sb_end_write.exit

do.end49.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !174
  %read_count75.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %23 = ptrtoint ptr %read_count75.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_count75.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i122.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i122.i.i to ptr
  %cpu78.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu78.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu78.i.i, align 4
  %arrayidx79.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx79.i.i, align 4
  %add80.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add80.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add81.i.i = add i32 %34, -1
  store i32 %add81.i.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !175
  %and.i.i123.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i)
  %tobool92.not.i.i = icmp eq i32 %and.i.i123.i.i, 0
  br i1 %tobool92.not.i.i, label %if.then101.i.i, label %do.end49.i.i.do.end104.i.i_crit_edge, !prof !163

do.end49.i.i.do.end104.i.i_crit_edge:             ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end104.i.i

if.then101.i.i:                                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end104.i.i

do.end104.i.i:                                    ; preds = %if.then101.i.i, %do.end49.i.i.do.end104.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #13, !srcloc !176
  %writer.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 2
  %call111.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i) #13
  br label %__sb_end_write.exit

__sb_end_write.exit:                              ; preds = %do.end104.i.i, %do.end39.i.i
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !197
  %36 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i120.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i120.i.i to ptr
  %preempt_count.i.i121.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i121.i.i, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i121.i.i, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_transaction_commit(ptr noundef %fs_info) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_transaction_commit, i32 0, i32 1), ptr blockaddress(@trace_btrfs_transaction_commit, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !166

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !198
  %call42 = tail call i32 @__traceiter_btrfs_transaction_commit(ptr noundef null, ptr noundef %fs_info) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !199
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !166

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_transaction_commit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_transaction_commit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_transaction_commit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_btrfs_transaction_commit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 202, ptr noundef nonnull @.str.41) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !201
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #13
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
declare dso_local void @btrfs_scrub_continue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_transaction(ptr noundef %trans, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction, align 4
  %use_count = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_count, i32 noundef 4) #13
  %4 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !163

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1972, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 149
  %call22 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end.if.end70_crit_edge

if.end.if.end70_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then24:                                        ; preds = %if.end
  %8 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %err, label %do.end40 [
    i32 -5, label %if.then24.do.body54_crit_edge
    i32 -30, label %if.then24.do.body54_crit_edge184
  ]

if.then24.do.body54_crit_edge184:                 ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54

if.then24.do.body54_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54

do.end40:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1974, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %err) #13
  br label %if.end70

do.body54:                                        ; preds = %if.then24.do.body54_crit_edge, %if.then24.do.body54_crit_edge184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cleanup_transaction.__UNIQUE_ID_ddebug951, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cleanup_transaction, %if.then64)) #13
          to label %if.end70 [label %if.then64], !srcloc !188

if.then64:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info1, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %10, ptr noundef nonnull @.str.54, i32 noundef %err) #16
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %do.body54, %do.end40, %if.end.if.end70_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.64, i32 noundef 1974, i32 noundef %err) #16
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %list = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %12, %list
  br i1 %cmp.i.not, label %do.body83, label %do.end91, !prof !163

do.body83:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1983, 0\0A.popsection", ""() #13, !srcloc !202
  unreachable

do.end91:                                         ; preds = %if.end70
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 37
  %13 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %running_transaction, align 8
  %cmp92 = icmp eq ptr %3, %14
  br i1 %cmp92, label %if.then93, label %do.end91.if.end117_crit_edge

do.end91.if.end117_crit_edge:                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

if.then93:                                        ; preds = %do.end91
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1989) #13
  %num_writers = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_writers, i32 noundef 4) #13
  %16 = ptrtoint ptr %num_writers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %num_writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp103 = icmp eq i32 %17, 1
  br i1 %cmp103, label %if.then93.do.end115_crit_edge, label %if.end105

if.then93.do.end115_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end115

if.end105:                                        ; preds = %if.then93
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %writer_wait = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 10
  %call106181 = call i32 @prepare_to_wait_event(ptr noundef %writer_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call.i.i176182 = call zeroext i1 @__kasan_check_read(ptr noundef %num_writers, i32 noundef 4) #13
  %19 = ptrtoint ptr %num_writers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %num_writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp109183 = icmp eq i32 %20, 1
  br i1 %cmp109183, label %if.end105.for.end_crit_edge, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  br label %cleanup

if.end105.for.end_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end105.cleanup_crit_edge
  call void @schedule() #13
  %call106 = call i32 @prepare_to_wait_event(ptr noundef %writer_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call.i.i176 = call zeroext i1 @__kasan_check_read(ptr noundef %num_writers, i32 noundef 4) #13
  %21 = ptrtoint ptr %num_writers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %num_writers, align 4
  %cmp109 = icmp eq i32 %22, 1
  br i1 %cmp109, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end105.for.end_crit_edge
  call void @finish_wait(ptr noundef %writer_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end115

do.end115:                                        ; preds = %for.end, %if.then93.do.end115_crit_edge
  call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  br label %if.end117

if.end117:                                        ; preds = %do.end115, %do.end91.if.end117_crit_edge
  %call.i.i177 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i177, label %if.end.i.i, label %if.end117.list_del_init.exit_crit_edge

if.end117.list_del_init.exit_crit_edge:           ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end117.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  %31 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %transaction, align 4
  call void @btrfs_cleanup_one_transaction(ptr noundef %32, ptr noundef %1) #13
  call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %33 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %running_transaction, align 8
  %cmp123 = icmp eq ptr %3, %34
  br i1 %cmp123, label %if.then124, label %list_del_init.exit.if.end126_crit_edge

list_del_init.exit.if.end126_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

if.then124:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %running_transaction to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %running_transaction, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %list_del_init.exit.if.end126_crit_edge
  call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  %type = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 9
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type, align 8
  %and = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool128.not = icmp eq i32 %and, 0
  br i1 %tobool128.not, label %if.end126.if.end130_crit_edge, label %if.then129

if.end126.if.end130_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 45
  %38 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sb, align 8
  call fastcc void @sb_end_intwrite(ptr noundef %39)
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end126.if.end130_crit_edge
  call void @btrfs_put_transaction(ptr noundef %3)
  call void @btrfs_put_transaction(ptr noundef %3)
  call fastcc void @trace_btrfs_transaction_commit(ptr noundef %1)
  %40 = call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 146
  %44 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %journal_info, align 4
  %cmp132 = icmp eq ptr %45, %trans
  br i1 %cmp132, label %if.then133, label %if.end130.if.end137_crit_edge

if.end130.if.end137_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %journal_info to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %journal_info, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then133, %if.end130.if.end137_crit_edge
  %call138 = call i32 @btrfs_scrub_cancel(ptr noundef %1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_trans_handle_cachep to i32))
  %47 = load ptr, ptr @btrfs_trans_handle_cachep, align 4
  call void @kmem_cache_free(ptr noundef %47, ptr noundef %trans) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_clean_one_deleted_snapshot(ptr nocapture noundef readonly %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %dead_roots = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %dead_roots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dead_roots, align 4
  %cmp.i.not = icmp eq ptr %3, %dead_roots
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -1076
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
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
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_clean_one_deleted_snapshot.__UNIQUE_ID_ddebug957, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_clean_one_deleted_snapshot, %if.then10)) #13
          to label %do.end [label %if.then10], !srcloc !188

if.then10:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %root_key = getelementptr i8, ptr %3, i32 -605
  %12 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %root_key, align 1
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.14, i64 noundef %13) #16
  br label %do.end

do.end:                                           ; preds = %if.then10, %list_del_init.exit
  tail call void @btrfs_kill_all_delayed_nodes(ptr noundef %add.ptr) #13
  %node = getelementptr i8, ptr %3, i32 -1064
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node, align 4
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages.i.i, align 4
  %call.i.i31 = tail call ptr @page_address(ptr noundef %17) #13
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %15, align 8
  %conv.i.i = trunc i64 %19 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i31, i32 %and.i.i
  %flags.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %flags.i.i, align 1
  %conv.i3234 = and i64 %21, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv.i3234)
  %cmp = icmp ne i64 %conv.i3234, 0
  %. = zext i1 %cmp to i32
  %call15 = tail call i32 @btrfs_drop_snapshot(ptr noundef %add.ptr, i32 noundef %., i32 noundef 0) #13
  tail call void @btrfs_put_root(ptr noundef %add.ptr) #13
  %22 = xor i32 %call15, -1
  %ret.0.lobit.not = lshr i32 %22, 31
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0.lobit.not, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_kill_all_delayed_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_drop_snapshot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_tag_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_init_reloc_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_block_rsv_add(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_migrate_to_delayed_refs_rsv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_delayed_refs_rsv_refill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @join_transaction(ptr noundef %fs_info, i32 noundef %type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %0 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %fs_state, align 4
  %and1.i278 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i278)
  %tobool.not279 = icmp eq i32 %and1.i278, 0
  br i1 %tobool.not279, label %if.end.lr.ph, label %entry.if.then_crit_edge, !prof !166

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 37
  br label %if.end

if.then:                                          ; preds = %if.then51.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  br label %cleanup

if.end:                                           ; preds = %if.then51.if.end_crit_edge, %if.end.lr.ph
  %2 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %running_transaction, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end22, label %do.end

do.end:                                           ; preds = %if.end
  %aborted = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.end16, label %if.then13, !prof !166

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  %6 = ptrtoint ptr %aborted to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aborted, align 4
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %state = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  %arrayidx = getelementptr [6 x i32], ptr @btrfs_blocked_trans_types, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and = and i32 %11, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %use_count = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #13, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end20.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !163

if.end20.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end20
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !166

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end20.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end20.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use_count, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %num_writers = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_writers, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %num_writers, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_writers, ptr %num_writers, i32 1, ptr elementtype(i32) %num_writers) #13, !srcloc !182
  %and.i = and i32 %type, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %refcount_inc.exit.extwriter_counter_inc.exit_crit_edge, label %if.then.i

refcount_inc.exit.extwriter_counter_inc.exit_crit_edge: ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %extwriter_counter_inc.exit

if.then.i:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %num_extwriters.i = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_extwriters.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %num_extwriters.i, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_extwriters.i, ptr %num_extwriters.i, i32 1, ptr elementtype(i32) %num_extwriters.i) #13, !srcloc !182
  br label %extwriter_counter_inc.exit

extwriter_counter_inc.exit:                       ; preds = %if.then.i, %refcount_inc.exit.extwriter_counter_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  %16 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %type, label %do.end43 [
    i32 1024, label %if.end22.cleanup_crit_edge
    i32 4096, label %do.body35
  ], !prof !203

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 330, 0\0A.popsection", ""() #13, !srcloc !204
  unreachable

do.end43:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3136, i32 noundef 752) #19
  %tobool45.not = icmp eq ptr %call7.i, null
  br i1 %tobool45.not, label %do.end43.cleanup_crit_edge, label %if.end47

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end47:                                         ; preds = %do.end43
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #13
  %18 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %running_transaction, align 8
  %tobool50.not = icmp eq ptr %19, null
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.end47
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  %20 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %fs_state, align 4
  %and1.i = and i32 %21, 1
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then51.if.end_crit_edge, label %if.then51.if.then_crit_edge, !prof !166

if.then51.if.then_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then51.if.end_crit_edge:                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %if.end47
  %22 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %fs_state, align 4
  %and1.i249 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i249)
  %tobool54.not = icmp eq i32 %and1.i249, 0
  br i1 %tobool54.not, label %if.end64, label %if.then61, !prof !166

if.then61:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

if.end64:                                         ; preds = %if.else
  %fs_info65 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 24
  %24 = ptrtoint ptr %fs_info65 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %fs_info, ptr %fs_info65, align 8
  %pending_ordered = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 25
  %call.i.i250 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_ordered, i32 noundef 4) #13
  %25 = ptrtoint ptr %pending_ordered to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %pending_ordered, align 4
  %pending_wait = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 26
  tail call void @__init_waitqueue_head(ptr noundef %pending_wait, ptr noundef nonnull @.str.23, ptr noundef nonnull @join_transaction.__key) #13
  %num_writers69 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 2
  %call.i.i251 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_writers69, i32 noundef 4) #13
  %26 = ptrtoint ptr %num_writers69 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %num_writers69, align 4
  %num_extwriters.i254 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 1
  %and.i255 = and i32 %type, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i255)
  %tobool.not.i256 = icmp ne i32 %and.i255, 0
  %cond.i = zext i1 %tobool.not.i256 to i32
  %call.i.i.i257 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_extwriters.i254, i32 noundef 4) #13
  %27 = ptrtoint ptr %num_extwriters.i254 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %cond.i, ptr %num_extwriters.i254, align 8
  %writer_wait = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %writer_wait, ptr noundef nonnull @.str.25, ptr noundef nonnull @join_transaction.__key.24) #13
  %commit_wait = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %commit_wait, ptr noundef nonnull @.str.27, ptr noundef nonnull @join_transaction.__key.26) #13
  %state76 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 5
  %28 = ptrtoint ptr %state76 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %state76, align 8
  %use_count77 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 3
  %call.i.i.i258 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count77, i32 noundef 4) #13
  %29 = ptrtoint ptr %use_count77 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 2, ptr %use_count77, align 8
  %flags = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 4
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flags, align 4
  %call78 = tail call i64 @ktime_get_seconds() #13
  %start_time = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 9
  %31 = ptrtoint ptr %start_time to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %call78, ptr %start_time, align 8
  %delayed_refs = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 23
  %num_entries = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 23, i32 3
  %32 = call ptr @memset(ptr %delayed_refs, i32 0, i32 104)
  %call.i.i252 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_entries, i32 noundef 4) #13
  %33 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %num_entries, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !205
  %tree_mod_seq_list = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 69
  %34 = ptrtoint ptr %tree_mod_seq_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %tree_mod_seq_list, align 4
  %cmp.i.not = icmp eq ptr %35, %tree_mod_seq_list
  br i1 %cmp.i.not, label %if.end64.do.end121_crit_edge, label %do.end104

if.end64.do.end121_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end121

do.end104:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 378, i32 noundef 9, ptr noundef nonnull @.str.28) #13
  br label %do.end121

do.end121:                                        ; preds = %do.end104, %if.end64.do.end121_crit_edge
  %tree_mod_log = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 68
  %36 = ptrtoint ptr %tree_mod_log to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %tree_mod_log, align 4
  %cmp124 = icmp eq ptr %37, null
  br i1 %cmp124, label %do.end121.if.end152_crit_edge, label %do.end138

do.end121.if.end152_crit_edge:                    ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

do.end138:                                        ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef nonnull @.str.29) #13
  br label %if.end152

if.end152:                                        ; preds = %do.end138, %do.end121.if.end152_crit_edge
  %tree_mod_seq = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 66
  %call.i.i253 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tree_mod_seq, i32 noundef 8) #13
  tail call void @generic_atomic64_set(ptr noundef %tree_mod_seq, i64 noundef 0) #13
  %lock = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 23, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @join_transaction.__key.30, i16 noundef signext 3) #13
  %pending_snapshots = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 12
  %38 = ptrtoint ptr %pending_snapshots to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %pending_snapshots, ptr %pending_snapshots, align 8
  %prev.i = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 12, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %pending_snapshots, ptr %prev.i, align 4
  %dev_update_list = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 13
  %40 = ptrtoint ptr %dev_update_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %dev_update_list, ptr %dev_update_list, align 8
  %prev.i259 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 13, i32 1
  %41 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev_update_list, ptr %prev.i259, align 4
  %switch_commits = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 14
  %42 = ptrtoint ptr %switch_commits to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %switch_commits, ptr %switch_commits, align 8
  %prev.i260 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 14, i32 1
  %43 = ptrtoint ptr %prev.i260 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %switch_commits, ptr %prev.i260, align 4
  %dirty_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 15
  %44 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %dirty_bgs, ptr %dirty_bgs, align 8
  %prev.i261 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 15, i32 1
  %45 = ptrtoint ptr %prev.i261 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dirty_bgs, ptr %prev.i261, align 4
  %io_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 16
  %46 = ptrtoint ptr %io_bgs to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %io_bgs, ptr %io_bgs, align 8
  %prev.i262 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 16, i32 1
  %47 = ptrtoint ptr %prev.i262 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %io_bgs, ptr %prev.i262, align 4
  %dropped_roots = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 17
  %48 = ptrtoint ptr %dropped_roots to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %dropped_roots, ptr %dropped_roots, align 8
  %prev.i263 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 17, i32 1
  %49 = ptrtoint ptr %prev.i263 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dropped_roots, ptr %prev.i263, align 4
  %cache_write_mutex = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %cache_write_mutex, ptr noundef nonnull @.str.33, ptr noundef nonnull @join_transaction.__key.32) #13
  %dirty_bgs_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %dirty_bgs_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @join_transaction.__key.34, i16 noundef signext 3) #13
  %deleted_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 21
  %50 = ptrtoint ptr %deleted_bgs to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %deleted_bgs, ptr %deleted_bgs, align 8
  %prev.i264 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 21, i32 1
  %51 = ptrtoint ptr %prev.i264 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %deleted_bgs, ptr %prev.i264, align 4
  %dropped_roots_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %dropped_roots_lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @join_transaction.__key.36, i16 noundef signext 3) #13
  %releasing_ebs = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 28
  %52 = ptrtoint ptr %releasing_ebs to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %releasing_ebs, ptr %releasing_ebs, align 8
  %prev.i265 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 28, i32 1
  %53 = ptrtoint ptr %prev.i265 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %releasing_ebs, ptr %prev.i265, align 4
  %releasing_ebs_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %releasing_ebs_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @join_transaction.__key.38, i16 noundef signext 3) #13
  %list = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 7
  %trans_list = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 59
  %prev.i266 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 59, i32 1
  %54 = ptrtoint ptr %prev.i266 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i266, align 4
  %call.i.i267 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %55, ptr noundef %trans_list) #13
  br i1 %call.i.i267, label %if.end.i.i, label %if.end152.list_add_tail.exit_crit_edge

if.end152.list_add_tail.exit_crit_edge:           ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %prev.i266 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %list, ptr %prev.i266, align 4
  %57 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %trans_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %list, ptr %55, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end152.list_add_tail.exit_crit_edge
  %dirty_pages = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 8
  %btree_inode = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 46
  %60 = ptrtoint ptr %btree_inode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %btree_inode, align 4
  tail call void @extent_io_tree_init(ptr noundef %fs_info, ptr noundef %dirty_pages, i32 noundef 6, ptr noundef %61) #13
  %pinned_extents = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 18
  tail call void @extent_io_tree_init(ptr noundef %fs_info, ptr noundef %pinned_extents, i32 noundef 0, ptr noundef null) #13
  %generation = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 26
  %62 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %generation, align 8
  %inc = add i64 %63, 1
  store i64 %inc, ptr %generation, align 8
  %64 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %inc, ptr %call7.i, align 8
  %65 = ptrtoint ptr %running_transaction to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i, ptr %running_transaction, align 8
  %aborted175 = getelementptr inbounds %struct.btrfs_transaction, ptr %call7.i, i32 0, i32 6
  %66 = ptrtoint ptr %aborted175 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %aborted175, align 4
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then61, %do.end43.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %extwriter_counter_inc.exit, %if.then18, %if.then13, %if.then
  %retval.0 = phi i32 [ -30, %if.then ], [ %7, %if.then13 ], [ -16, %if.then18 ], [ 0, %extwriter_counter_inc.exit ], [ -30, %if.then61 ], [ 0, %list_add_tail.exit ], [ -12, %do.end43.cleanup_crit_edge ], [ -2, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 1), ptr blockaddress(@trace_btrfs_space_reservation, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !166

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !206
  %call42 = tail call i32 @__traceiter_btrfs_space_reservation(ptr noundef null, ptr noundef %fs_info, ptr noundef nonnull @.str.19, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !207
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !166

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_btrfs_space_reservation.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_btrfs_space_reservation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.40, i32 noundef 1076, ptr noundef nonnull @.str.41) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !201
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_chunk_alloc(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_alloc_profile(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__btrfs_qgroup_reserve_meta(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @extent_io_tree_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_space_reservation(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__btrfs_qgroup_free_meta(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_check_space_for_delayed_refs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_block_rsv_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_run_delayed_iputs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @try_to_writeback_inodes_sb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_wait_ordered_roots(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_pending_snapshot(ptr noundef %trans, ptr noundef %pending) unnamed_addr #4 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  %tmp = alloca ptr, align 4
  %old = alloca ptr, align 4
  %to_reserve = alloca i64, align 8
  %index = alloca i64, align 8
  %objectid = alloca i64, align 8
  %tmp42 = alloca %struct.timespec64, align 8
  %tmp757 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #13
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %tree_root2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  %4 = call ptr @memset(ptr %key, i32 255, i32 17)
  %5 = ptrtoint ptr %tree_root2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tree_root2, align 4
  %root3 = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 2
  %7 = ptrtoint ptr %root3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %root3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #13
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp, align 4, !annotation !181
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old) #13
  %10 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %old, align 4, !annotation !181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_reserve) #13
  %11 = ptrtoint ptr %to_reserve to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %to_reserve, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %index) #13
  %12 = ptrtoint ptr %index to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %index, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %objectid) #13
  %13 = ptrtoint ptr %objectid to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %objectid, align 8, !annotation !181
  %path4 = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 6
  %14 = ptrtoint ptr %path4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path4, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !163

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.49, i32 noundef 1640) #18
  unreachable

cond.end:                                         ; preds = %entry
  %root_item = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 3
  %16 = ptrtoint ptr %root_item to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root_item, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %cond.false16, label %cond.end17, !prof !163

cond.false16:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.50, i32 noundef 1643) #18
  unreachable

cond.end17:                                       ; preds = %cond.end
  %call = call i32 @btrfs_get_free_objectid(ptr noundef %6, ptr noundef nonnull %objectid) #13
  %error = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 8
  %18 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end, label %cond.end17.no_free_objectid_crit_edge

cond.end17.no_free_objectid_crit_edge:            ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_free_objectid

if.end:                                           ; preds = %cond.end17
  %19 = ptrtoint ptr %objectid to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %objectid, align 8
  %transaction.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %21 = ptrtoint ptr %transaction.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transaction.i, align 4
  %qgroup_to_skip.i = getelementptr inbounds %struct.btrfs_transaction, ptr %22, i32 0, i32 23, i32 9
  %23 = ptrtoint ptr %qgroup_to_skip.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %qgroup_to_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool.not.i = icmp eq i64 %24, 0
  br i1 %tobool.not.i, label %if.end.btrfs_set_skip_qgroup.exit_crit_edge, label %do.end.i, !prof !166

if.end.btrfs_set_skip_qgroup.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_set_skip_qgroup.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 190, i32 noundef 9, ptr noundef null) #13
  br label %btrfs_set_skip_qgroup.exit

btrfs_set_skip_qgroup.exit:                       ; preds = %do.end.i, %if.end.btrfs_set_skip_qgroup.exit_crit_edge
  %25 = ptrtoint ptr %qgroup_to_skip.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %20, ptr %qgroup_to_skip.i, align 8
  call void @btrfs_reloc_pre_snapshot(ptr noundef %pending, ptr noundef nonnull %to_reserve) #13
  %26 = ptrtoint ptr %to_reserve to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %to_reserve, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp.not = icmp eq i64 %27, 0
  br i1 %cmp.not, label %btrfs_set_skip_qgroup.exit.if.end28_crit_edge, label %if.then21

btrfs_set_skip_qgroup.exit.if.end28_crit_edge:    ; preds = %btrfs_set_skip_qgroup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then21:                                        ; preds = %btrfs_set_skip_qgroup.exit
  %block_rsv = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 7
  %call22 = call i32 @btrfs_block_rsv_add(ptr noundef %1, ptr noundef %block_rsv, i64 noundef %27, i32 noundef 0) #13
  %28 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call22, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool25.not = icmp eq i32 %call22, 0
  br i1 %tobool25.not, label %if.then21.if.end28_crit_edge, label %if.then21.clear_skip_qgroup_crit_edge

if.then21.clear_skip_qgroup_crit_edge:            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_skip_qgroup

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end28:                                         ; preds = %if.then21.if.end28_crit_edge, %btrfs_set_skip_qgroup.exit.if.end28_crit_edge
  %29 = ptrtoint ptr %objectid to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %objectid, align 8
  %31 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %key, align 8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 -1, ptr %3, align 1
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -124, ptr %2, align 8
  %block_rsv30 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 5
  %34 = ptrtoint ptr %block_rsv30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %block_rsv30, align 8
  %block_rsv31 = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 7
  store ptr %block_rsv31, ptr %block_rsv30, align 8
  %reserved = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %reserved, align 8
  %bytes_reserved = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 1
  %38 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %bytes_reserved, align 8
  %39 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %trans, align 8
  call fastcc void @trace_btrfs_space_reservation(ptr noundef %1, i64 noundef %40, i64 noundef %37, i32 noundef 1)
  %41 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pending, align 8
  %dir = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 1
  %43 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dir, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 -864
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 8
  %call38 = call fastcc i32 @record_root_in_trans(ptr noundef %trans, ptr noundef %46, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end28.dir_item_existed_crit_edge

if.end28.dir_item_existed_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %dir_item_existed

if.end41:                                         ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp42) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp42, ptr noundef %44) #13
  %47 = ptrtoint ptr %tmp42 to i32
  call void @__asan_load8_noabort(i32 %47)
  %cur_time.sroa.0.0.copyload1068 = load i64, ptr %tmp42, align 8
  %cur_time.sroa.5.0.tmp42.sroa_idx = getelementptr inbounds i8, ptr %tmp42, i32 8
  %48 = ptrtoint ptr %cur_time.sroa.5.0.tmp42.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %cur_time.sroa.5.0.copyload1069 = load i32, ptr %cur_time.sroa.5.0.tmp42.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp42) #13
  %call44 = call i32 @btrfs_set_inode_index(ptr noundef %add.ptr.i, ptr noundef nonnull %index) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.end59, label %do.body53, !prof !166

do.body53:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1689, 0\0A.popsection", ""() #13, !srcloc !208
  unreachable

do.end59:                                         ; preds = %if.end41
  %location.i = getelementptr i8, ptr %44, i32 -860
  %49 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %tobool.not.i1260 = icmp eq i64 %50, 0
  br i1 %tobool.not.i1260, label %do.end59.if.then.i_crit_edge, label %lor.lhs.false.i

do.end59.if.then.i_crit_edge:                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.end59
  %type.i = getelementptr i8, ptr %44, i32 -852
  %51 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %52)
  %cmp.i = icmp eq i8 %52, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %do.end59.if.then.i_crit_edge
  %i_ino.i = getelementptr i8, ptr %44, i32 40
  %53 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %54 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %50, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %d_name = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name, align 8
  %57 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %d_name, align 8
  %call63 = call ptr @btrfs_lookup_dir_item(ptr noundef null, ptr noundef %46, ptr noundef nonnull %15, i64 noundef %ino.0.i, ptr noundef %56, i32 noundef %58, i32 noundef 0) #13
  %cmp64.not = icmp eq ptr %call63, null
  br i1 %cmp64.not, label %if.end126, label %land.lhs.true

land.lhs.true:                                    ; preds = %btrfs_ino.exit
  %cmp.i1261 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1261, label %if.then69, label %land.lhs.true.dir_item_existed_crit_edge

land.lhs.true.dir_item_existed_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %dir_item_existed

if.then69:                                        ; preds = %land.lhs.true
  %59 = ptrtoint ptr %call63 to i32
  %60 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %61, i32 0, i32 149
  %call73 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.then69.if.end122_crit_edge

if.then69.if.end122_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.then75:                                        ; preds = %if.then69
  %62 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %59, label %do.end91 [
    i32 -5, label %if.then75.do.body106_crit_edge
    i32 -30, label %if.then75.do.body106_crit_edge1297
  ]

if.then75.do.body106_crit_edge1297:               ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body106

if.then75.do.body106_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body106

do.end91:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1701, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %59) #13
  br label %if.end122

do.body106:                                       ; preds = %if.then75.do.body106_crit_edge, %if.then75.do.body106_crit_edge1297
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug937, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then116)) #13
          to label %if.end122 [label %if.then116], !srcloc !188

if.then116:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %64, ptr noundef nonnull @.str.54, i32 noundef %59) #16
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %do.body106, %do.end91, %if.then69.if.end122_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1701, i32 noundef %59) #16
  br label %dir_item_existed

if.end126:                                        ; preds = %btrfs_ino.exit
  call void @btrfs_release_path(ptr noundef nonnull %15) #13
  %call127 = call i32 @btrfs_run_delayed_items(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end188, label %do.body130

do.body130:                                       ; preds = %if.end126
  %65 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fs_info1, align 4
  %fs_state132 = getelementptr inbounds %struct.btrfs_fs_info, ptr %66, i32 0, i32 149
  %call133 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state132) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %do.body130.if.end185_crit_edge

do.body130.if.end185_crit_edge:                   ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.then135:                                       ; preds = %do.body130
  %67 = zext i32 %call127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call127, label %do.end152 [
    i32 -5, label %if.then135.do.body167_crit_edge
    i32 -30, label %if.then135.do.body167_crit_edge1298
  ]

if.then135.do.body167_crit_edge1298:              ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body167

if.then135.do.body167_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body167

do.end152:                                        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1714, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call127) #13
  br label %if.end185

do.body167:                                       ; preds = %if.then135.do.body167_crit_edge, %if.then135.do.body167_crit_edge1298
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug938, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then179)) #13
          to label %if.end185 [label %if.then179], !srcloc !188

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %69, ptr noundef nonnull @.str.54, i32 noundef %call127) #16
  br label %if.end185

if.end185:                                        ; preds = %if.then179, %do.body167, %do.end152, %do.body130.if.end185_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1714, i32 noundef %call127) #16
  br label %dir_item_existed

if.end188:                                        ; preds = %if.end126
  %call189 = call fastcc i32 @record_root_in_trans(ptr noundef %trans, ptr noundef %8, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end250, label %do.body192

do.body192:                                       ; preds = %if.end188
  %70 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fs_info1, align 4
  %fs_state194 = getelementptr inbounds %struct.btrfs_fs_info, ptr %71, i32 0, i32 149
  %call195 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state194) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.then197, label %do.body192.if.end247_crit_edge

do.body192.if.end247_crit_edge:                   ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end247

if.then197:                                       ; preds = %do.body192
  %72 = zext i32 %call189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call189, label %do.end214 [
    i32 -5, label %if.then197.do.body229_crit_edge
    i32 -30, label %if.then197.do.body229_crit_edge1299
  ]

if.then197.do.body229_crit_edge1299:              ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body229

if.then197.do.body229_crit_edge:                  ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body229

do.end214:                                        ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1720, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call189) #13
  br label %if.end247

do.body229:                                       ; preds = %if.then197.do.body229_crit_edge, %if.then197.do.body229_crit_edge1299
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug939, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then241)) #13
          to label %if.end247 [label %if.then241], !srcloc !188

if.then241:                                       ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %74, ptr noundef nonnull @.str.54, i32 noundef %call189) #16
  br label %if.end247

if.end247:                                        ; preds = %if.then241, %do.body229, %do.end214, %do.body192.if.end247_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1720, i32 noundef %call189) #16
  br label %dir_item_existed

if.end250:                                        ; preds = %if.end188
  %root_item251 = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 6
  %75 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %trans, align 8
  %last_snapshot.i = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 6, i32 6
  %77 = call i64 @llvm.bswap.i64(i64 %76) #13
  %78 = ptrtoint ptr %last_snapshot.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 %77, ptr %last_snapshot.i, align 1
  %79 = call ptr @memcpy(ptr %17, ptr %root_item251, i32 439)
  call void @btrfs_check_and_init_root_item(ptr noundef nonnull %17) #13
  %flags.i = getelementptr inbounds %struct.btrfs_root_item, ptr %17, i32 0, i32 7
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 8)
  %81 = load i64, ptr %flags.i, align 1
  %readonly = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 10
  %82 = ptrtoint ptr %readonly to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %readonly, align 8, !range !189
  %84 = and i64 %81, -72057594037927937
  %85 = call i64 @llvm.bswap.i64(i64 %84)
  %86 = zext i8 %83 to i64
  %root_flags.0 = or i64 %85, %86
  %87 = call i64 @llvm.bswap.i64(i64 %root_flags.0) #13
  %88 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %flags.i, align 1
  %89 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %trans, align 8
  %generation_v2.i = getelementptr inbounds %struct.btrfs_root_item, ptr %17, i32 0, i32 12
  %91 = call i64 @llvm.bswap.i64(i64 %90) #13
  %92 = ptrtoint ptr %generation_v2.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 %91, ptr %generation_v2.i, align 1
  %uuid = getelementptr inbounds %struct.btrfs_root_item, ptr %17, i32 0, i32 13
  call void @generate_random_guid(ptr noundef %uuid) #13
  %parent_uuid = getelementptr inbounds %struct.btrfs_root_item, ptr %17, i32 0, i32 14
  %uuid262 = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 6, i32 13
  %93 = call ptr @memcpy(ptr %parent_uuid, ptr %uuid262, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool265.not = icmp eq i8 %83, 0
  br i1 %tobool265.not, label %if.then266, label %if.end250.if.end268_crit_edge

if.end250.if.end268_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end268

if.then266:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #15
  %received_uuid = getelementptr inbounds %struct.btrfs_root_item, ptr %17, i32 0, i32 15
  %94 = call ptr @memset(ptr %received_uuid, i32 0, i32 16)
  %stime = getelementptr inbounds %struct.btrfs_root_item, ptr %17, i32 0, i32 22
  %stransid.i = getelementptr inbounds %struct.btrfs_root_item, ptr %17, i32 0, i32 18
  %95 = call ptr @memset(ptr %stransid.i, i32 0, i32 16)
  %96 = call ptr @memset(ptr %stime, i32 0, i32 24)
  br label %if.end268

if.end268:                                        ; preds = %if.then266, %if.end250.if.end268_crit_edge
  %otime = getelementptr inbounds %struct.btrfs_root_item, ptr %17, i32 0, i32 21
  %97 = call i64 @llvm.bswap.i64(i64 %cur_time.sroa.0.0.copyload1068) #13
  %98 = ptrtoint ptr %otime to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 %97, ptr %otime, align 1
  %nsec.i = getelementptr inbounds %struct.btrfs_root_item, ptr %17, i32 0, i32 21, i32 1
  %99 = call i32 @llvm.bswap.i32(i32 %cur_time.sroa.5.0.copyload1069) #13
  %100 = ptrtoint ptr %nsec.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %99, ptr %nsec.i, align 1
  %101 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %trans, align 8
  %otransid.i = getelementptr inbounds %struct.btrfs_root_item, ptr %17, i32 0, i32 17
  %103 = call i64 @llvm.bswap.i64(i64 %102) #13
  %104 = ptrtoint ptr %otransid.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 8)
  store i64 %103, ptr %otransid.i, align 1
  %call271 = call ptr @btrfs_lock_root_node(ptr noundef %8) #13
  %105 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call271, ptr %old, align 4
  %call272 = call i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %8, ptr noundef %call271, ptr noundef null, i32 noundef 0, ptr noundef nonnull %old, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272)
  %tobool273.not = icmp eq i32 %call272, 0
  %106 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %old, align 4
  br i1 %tobool273.not, label %if.end333, label %if.then274

if.then274:                                       ; preds = %if.end268
  call void @btrfs_tree_unlock(ptr noundef %107) #13
  %108 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %old, align 4
  call void @free_extent_buffer(ptr noundef %109) #13
  %110 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fs_info1, align 4
  %fs_state277 = getelementptr inbounds %struct.btrfs_fs_info, ptr %111, i32 0, i32 149
  %call278 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state277) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %if.then280, label %if.then274.if.end330_crit_edge

if.then274.if.end330_crit_edge:                   ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end330

if.then280:                                       ; preds = %if.then274
  %112 = zext i32 %call272 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call272, label %do.end297 [
    i32 -5, label %if.then280.do.body312_crit_edge
    i32 -30, label %if.then280.do.body312_crit_edge1300
  ]

if.then280.do.body312_crit_edge1300:              ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body312

if.then280.do.body312_crit_edge:                  ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body312

do.end297:                                        ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1757, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call272) #13
  br label %if.end330

do.body312:                                       ; preds = %if.then280.do.body312_crit_edge, %if.then280.do.body312_crit_edge1300
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug940, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then324)) #13
          to label %if.end330 [label %if.then324], !srcloc !188

if.then324:                                       ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %114, ptr noundef nonnull @.str.54, i32 noundef %call272) #16
  br label %if.end330

if.end330:                                        ; preds = %if.then324, %do.body312, %do.end297, %if.then274.if.end330_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1757, i32 noundef %call272) #16
  br label %dir_item_existed

if.end333:                                        ; preds = %if.end268
  %115 = ptrtoint ptr %objectid to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %objectid, align 8
  %call334 = call i32 @btrfs_copy_root(ptr noundef %trans, ptr noundef %8, ptr noundef %107, ptr noundef nonnull %tmp, i64 noundef %116) #13
  %117 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %old, align 4
  call void @btrfs_tree_unlock(ptr noundef %118) #13
  %119 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %old, align 4
  call void @free_extent_buffer(ptr noundef %120) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call334)
  %tobool335.not = icmp eq i32 %call334, 0
  br i1 %tobool335.not, label %if.end395, label %do.body337

do.body337:                                       ; preds = %if.end333
  %121 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fs_info1, align 4
  %fs_state339 = getelementptr inbounds %struct.btrfs_fs_info, ptr %122, i32 0, i32 149
  %call340 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %tobool341.not = icmp eq i32 %call340, 0
  br i1 %tobool341.not, label %if.then342, label %do.body337.if.end392_crit_edge

do.body337.if.end392_crit_edge:                   ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end392

if.then342:                                       ; preds = %do.body337
  %123 = zext i32 %call334 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call334, label %do.end359 [
    i32 -5, label %if.then342.do.body374_crit_edge
    i32 -30, label %if.then342.do.body374_crit_edge1301
  ]

if.then342.do.body374_crit_edge1301:              ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body374

if.then342.do.body374_crit_edge:                  ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body374

do.end359:                                        ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1766, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call334) #13
  br label %if.end392

do.body374:                                       ; preds = %if.then342.do.body374_crit_edge, %if.then342.do.body374_crit_edge1301
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug941, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then386)) #13
          to label %if.end392 [label %if.then386], !srcloc !188

if.then386:                                       ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %125, ptr noundef nonnull @.str.54, i32 noundef %call334) #16
  br label %if.end392

if.end392:                                        ; preds = %if.then386, %do.body374, %do.end359, %do.body337.if.end392_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1766, i32 noundef %call334) #16
  br label %dir_item_existed

if.end395:                                        ; preds = %if.end333
  %state = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 5
  call void @_set_bit(i32 noundef 6, ptr noundef %state) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !209
  %126 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tmp, align 4
  call void @btrfs_set_root_node(ptr noundef nonnull %17, ptr noundef %127) #13
  %128 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %trans, align 8
  %130 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 8)
  store i64 %129, ptr %3, align 1
  %call404 = call i32 @btrfs_insert_root(ptr noundef %trans, ptr noundef %6, ptr noundef nonnull %key, ptr noundef nonnull %17) #13
  %131 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tmp, align 4
  call void @btrfs_tree_unlock(ptr noundef %132) #13
  %133 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tmp, align 4
  call void @free_extent_buffer(ptr noundef %134) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call404)
  %tobool405.not = icmp eq i32 %call404, 0
  br i1 %tobool405.not, label %if.end465, label %do.body407

do.body407:                                       ; preds = %if.end395
  %135 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %fs_info1, align 4
  %fs_state409 = getelementptr inbounds %struct.btrfs_fs_info, ptr %136, i32 0, i32 149
  %call410 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state409) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call410)
  %tobool411.not = icmp eq i32 %call410, 0
  br i1 %tobool411.not, label %if.then412, label %do.body407.if.end462_crit_edge

do.body407.if.end462_crit_edge:                   ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end462

if.then412:                                       ; preds = %do.body407
  %137 = zext i32 %call404 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call404, label %do.end429 [
    i32 -5, label %if.then412.do.body444_crit_edge
    i32 -30, label %if.then412.do.body444_crit_edge1302
  ]

if.then412.do.body444_crit_edge1302:              ; preds = %if.then412
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body444

if.then412.do.body444_crit_edge:                  ; preds = %if.then412
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body444

do.end429:                                        ; preds = %if.then412
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1780, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call404) #13
  br label %if.end462

do.body444:                                       ; preds = %if.then412.do.body444_crit_edge, %if.then412.do.body444_crit_edge1302
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug942, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then456)) #13
          to label %if.end462 [label %if.then456], !srcloc !188

if.then456:                                       ; preds = %do.body444
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %139, ptr noundef nonnull @.str.54, i32 noundef %call404) #16
  br label %if.end462

if.end462:                                        ; preds = %if.then456, %do.body444, %do.end429, %do.body407.if.end462_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1780, i32 noundef %call404) #16
  br label %dir_item_existed

if.end465:                                        ; preds = %if.end395
  %140 = ptrtoint ptr %objectid to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %objectid, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %46, i32 0, i32 7
  %142 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %142, i32 8)
  %143 = load i64, ptr %root_key, align 1
  %144 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 8)
  %145 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %145)
  %tobool.not.i1266 = icmp eq i64 %145, 0
  br i1 %tobool.not.i1266, label %if.end465.if.then.i1272_crit_edge, label %lor.lhs.false.i1269

if.end465.if.then.i1272_crit_edge:                ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i1272

lor.lhs.false.i1269:                              ; preds = %if.end465
  %type.i1267 = getelementptr i8, ptr %44, i32 -852
  %146 = ptrtoint ptr %type.i1267 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %type.i1267, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %147)
  %cmp.i1268 = icmp eq i8 %147, -124
  br i1 %cmp.i1268, label %lor.lhs.false.i1269.if.then.i1272_crit_edge, label %lor.lhs.false.i1269.btrfs_ino.exit1274_crit_edge

lor.lhs.false.i1269.btrfs_ino.exit1274_crit_edge: ; preds = %lor.lhs.false.i1269
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_ino.exit1274

lor.lhs.false.i1269.if.then.i1272_crit_edge:      ; preds = %lor.lhs.false.i1269
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i1272

if.then.i1272:                                    ; preds = %lor.lhs.false.i1269.if.then.i1272_crit_edge, %if.end465.if.then.i1272_crit_edge
  %i_ino.i1270 = getelementptr i8, ptr %44, i32 40
  %148 = ptrtoint ptr %i_ino.i1270 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %i_ino.i1270, align 8
  %conv3.i1271 = zext i32 %149 to i64
  br label %btrfs_ino.exit1274

btrfs_ino.exit1274:                               ; preds = %if.then.i1272, %lor.lhs.false.i1269.btrfs_ino.exit1274_crit_edge
  %ino.0.i1273 = phi i64 [ %conv3.i1271, %if.then.i1272 ], [ %145, %lor.lhs.false.i1269.btrfs_ino.exit1274_crit_edge ]
  %150 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %index, align 8
  %152 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %name, align 8
  %154 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %d_name, align 8
  %call473 = call i32 @btrfs_add_root_ref(ptr noundef %trans, i64 noundef %141, i64 noundef %143, i64 noundef %ino.0.i1273, i64 noundef %151, ptr noundef %153, i32 noundef %155) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call473)
  %tobool474.not = icmp eq i32 %call473, 0
  br i1 %tobool474.not, label %if.end534, label %do.body476

do.body476:                                       ; preds = %btrfs_ino.exit1274
  %156 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %fs_info1, align 4
  %fs_state478 = getelementptr inbounds %struct.btrfs_fs_info, ptr %157, i32 0, i32 149
  %call479 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state478) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call479)
  %tobool480.not = icmp eq i32 %call479, 0
  br i1 %tobool480.not, label %if.then481, label %do.body476.if.end531_crit_edge

do.body476.if.end531_crit_edge:                   ; preds = %do.body476
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end531

if.then481:                                       ; preds = %do.body476
  %158 = zext i32 %call473 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call473, label %do.end498 [
    i32 -5, label %if.then481.do.body513_crit_edge
    i32 -30, label %if.then481.do.body513_crit_edge1303
  ]

if.then481.do.body513_crit_edge1303:              ; preds = %if.then481
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body513

if.then481.do.body513_crit_edge:                  ; preds = %if.then481
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body513

do.end498:                                        ; preds = %if.then481
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1792, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call473) #13
  br label %if.end531

do.body513:                                       ; preds = %if.then481.do.body513_crit_edge, %if.then481.do.body513_crit_edge1303
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug943, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then525)) #13
          to label %if.end531 [label %if.then525], !srcloc !188

if.then525:                                       ; preds = %do.body513
  call void @__sanitizer_cov_trace_pc() #15
  %159 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %160, ptr noundef nonnull @.str.54, i32 noundef %call473) #16
  br label %if.end531

if.end531:                                        ; preds = %if.then525, %do.body513, %do.end498, %do.body476.if.end531_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1792, i32 noundef %call473) #16
  br label %dir_item_existed

if.end534:                                        ; preds = %btrfs_ino.exit1274
  %161 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 8)
  store i64 -1, ptr %3, align 1
  %162 = ptrtoint ptr %objectid to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %objectid, align 8
  %anon_dev = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 9
  %164 = ptrtoint ptr %anon_dev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %anon_dev, align 4
  %call536 = call ptr @btrfs_get_new_fs_root(ptr noundef %1, i64 noundef %163, i32 noundef %165) #13
  %snap = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 4
  %166 = ptrtoint ptr %snap to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call536, ptr %snap, align 8
  %cmp.i1275 = icmp ugt ptr %call536, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1275, label %if.then539, label %if.end601

if.then539:                                       ; preds = %if.end534
  %167 = ptrtoint ptr %call536 to i32
  %168 = ptrtoint ptr %snap to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %snap, align 8
  %169 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %fs_info1, align 4
  %fs_state545 = getelementptr inbounds %struct.btrfs_fs_info, ptr %170, i32 0, i32 149
  %call546 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state545) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call546)
  %tobool547.not = icmp eq i32 %call546, 0
  br i1 %tobool547.not, label %if.then548, label %if.then539.if.end598_crit_edge

if.then539.if.end598_crit_edge:                   ; preds = %if.then539
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end598

if.then548:                                       ; preds = %if.then539
  %171 = zext i32 %167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %167, label %do.end565 [
    i32 -5, label %if.then548.do.body580_crit_edge
    i32 -30, label %if.then548.do.body580_crit_edge1304
  ]

if.then548.do.body580_crit_edge1304:              ; preds = %if.then548
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body580

if.then548.do.body580_crit_edge:                  ; preds = %if.then548
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body580

do.end565:                                        ; preds = %if.then548
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1801, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %167) #13
  br label %if.end598

do.body580:                                       ; preds = %if.then548.do.body580_crit_edge, %if.then548.do.body580_crit_edge1304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug944, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then592)) #13
          to label %if.end598 [label %if.then592], !srcloc !188

if.then592:                                       ; preds = %do.body580
  call void @__sanitizer_cov_trace_pc() #15
  %172 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %173, ptr noundef nonnull @.str.54, i32 noundef %167) #16
  br label %if.end598

if.end598:                                        ; preds = %if.then592, %do.body580, %do.end565, %if.then539.if.end598_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1801, i32 noundef %167) #16
  br label %dir_item_existed

if.end601:                                        ; preds = %if.end534
  %call602 = call i32 @btrfs_reloc_post_snapshot(ptr noundef %trans, ptr noundef %pending) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call602)
  %tobool603.not = icmp eq i32 %call602, 0
  br i1 %tobool603.not, label %if.end663, label %do.body605

do.body605:                                       ; preds = %if.end601
  %174 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %fs_info1, align 4
  %fs_state607 = getelementptr inbounds %struct.btrfs_fs_info, ptr %175, i32 0, i32 149
  %call608 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state607) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call608)
  %tobool609.not = icmp eq i32 %call608, 0
  br i1 %tobool609.not, label %if.then610, label %do.body605.if.end660_crit_edge

do.body605.if.end660_crit_edge:                   ; preds = %do.body605
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end660

if.then610:                                       ; preds = %do.body605
  %176 = zext i32 %call602 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call602, label %do.end627 [
    i32 -5, label %if.then610.do.body642_crit_edge
    i32 -30, label %if.then610.do.body642_crit_edge1305
  ]

if.then610.do.body642_crit_edge1305:              ; preds = %if.then610
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body642

if.then610.do.body642_crit_edge:                  ; preds = %if.then610
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body642

do.end627:                                        ; preds = %if.then610
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1807, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call602) #13
  br label %if.end660

do.body642:                                       ; preds = %if.then610.do.body642_crit_edge, %if.then610.do.body642_crit_edge1305
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug945, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then654)) #13
          to label %if.end660 [label %if.then654], !srcloc !188

if.then654:                                       ; preds = %do.body642
  call void @__sanitizer_cov_trace_pc() #15
  %177 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %178, ptr noundef nonnull @.str.54, i32 noundef %call602) #16
  br label %if.end660

if.end660:                                        ; preds = %if.then654, %do.body642, %do.end627, %do.body605.if.end660_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1807, i32 noundef %call602) #16
  br label %dir_item_existed

if.end663:                                        ; preds = %if.end601
  %inherit = getelementptr inbounds %struct.btrfs_pending_snapshot, ptr %pending, i32 0, i32 5
  %179 = ptrtoint ptr %inherit to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %inherit, align 4
  %181 = ptrtoint ptr %objectid to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %objectid, align 8
  %call664 = call fastcc i32 @qgroup_account_snapshot(ptr noundef %trans, ptr noundef %8, ptr noundef %46, ptr noundef %180, i64 noundef %182)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call664)
  %cmp665 = icmp slt i32 %call664, 0
  br i1 %cmp665, label %if.end663.dir_item_existed_crit_edge, label %if.end667

if.end663.dir_item_existed_crit_edge:             ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #15
  br label %dir_item_existed

if.end667:                                        ; preds = %if.end663
  %183 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %name, align 8
  %185 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %d_name, align 8
  %187 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %index, align 8
  %call673 = call i32 @btrfs_insert_dir_item(ptr noundef %trans, ptr noundef %184, i32 noundef %186, ptr noundef %add.ptr.i, ptr noundef nonnull %key, i8 noundef zeroext 2, i64 noundef %188) #13
  %189 = zext i32 %call673 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call673, label %do.body695 [
    i32 -17, label %if.end667.do.body684_crit_edge
    i32 -75, label %if.end667.do.body684_crit_edge1306
    i32 0, label %if.end753
  ]

if.end667.do.body684_crit_edge1306:               ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body684

if.end667.do.body684_crit_edge:                   ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body684

do.body684:                                       ; preds = %if.end667.do.body684_crit_edge, %if.end667.do.body684_crit_edge1306
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/transaction.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1826, 0\0A.popsection", ""() #13, !srcloc !210
  unreachable

do.body695:                                       ; preds = %if.end667
  %190 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %fs_info1, align 4
  %fs_state697 = getelementptr inbounds %struct.btrfs_fs_info, ptr %191, i32 0, i32 149
  %call698 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state697) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call698)
  %tobool699.not = icmp eq i32 %call698, 0
  br i1 %tobool699.not, label %if.then700, label %do.body695.if.end750_crit_edge

do.body695.if.end750_crit_edge:                   ; preds = %do.body695
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end750

if.then700:                                       ; preds = %do.body695
  %192 = zext i32 %call673 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call673, label %do.end717 [
    i32 -5, label %if.then700.do.body732_crit_edge
    i32 -30, label %if.then700.do.body732_crit_edge1307
  ]

if.then700.do.body732_crit_edge1307:              ; preds = %if.then700
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body732

if.then700.do.body732_crit_edge:                  ; preds = %if.then700
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body732

do.end717:                                        ; preds = %if.then700
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1828, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call673) #13
  br label %if.end750

do.body732:                                       ; preds = %if.then700.do.body732_crit_edge, %if.then700.do.body732_crit_edge1307
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug946, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then744)) #13
          to label %if.end750 [label %if.then744], !srcloc !188

if.then744:                                       ; preds = %do.body732
  call void @__sanitizer_cov_trace_pc() #15
  %193 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %194, ptr noundef nonnull @.str.54, i32 noundef %call673) #16
  br label %if.end750

if.end750:                                        ; preds = %if.then744, %do.body732, %do.end717, %do.body695.if.end750_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1828, i32 noundef %call673) #16
  br label %dir_item_existed

if.end753:                                        ; preds = %if.end667
  %i_size = getelementptr %struct.inode, ptr %44, i32 0, i32 14
  %195 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %i_size, align 8
  %197 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %d_name, align 8
  %mul = shl i32 %198, 1
  %conv = zext i32 %mul to i64
  %add = add i64 %196, %conv
  %199 = call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i.i.i = and i32 %199, -16384
  %200 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %202, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %203 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool.not.i.i.i = icmp eq i32 %203, 0
  br i1 %tobool.not.i.i.i, label %if.end753.btrfs_i_size_write.exit_crit_edge, label %land.lhs.true.i.i.i

if.end753.btrfs_i_size_write.exit_crit_edge:      ; preds = %if.end753
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_i_size_write.exit

land.lhs.true.i.i.i:                              ; preds = %if.end753
  %204 = call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i.i.i.i = and i32 %204, -16384
  %205 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %207, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !212
  %208 = call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i.i = and i32 %208, -16384
  %209 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %209, i32 0, i32 3
  %210 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %211
  %212 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i28.i.i = add i32 %213, ptrtoint (ptr @lockdep_recursion to i32)
  %214 = inttoptr i32 %add.i28.i.i to ptr
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %214, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !213
  %217 = call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i7.i.i.i = and i32 %217, -16384
  %218 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %220, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool20.not.i.i.i = icmp eq i32 %216, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.btrfs_i_size_write.exit_crit_edge

land.lhs.true.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_i_size_write.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %221 = call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i29.i.i = and i32 %221, -16384
  %222 = inttoptr i32 %and.i.i.i29.i.i to ptr
  %preempt_count.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %preempt_count.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %preempt_count.i.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp.i.i.i = icmp eq i32 %224, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.btrfs_i_size_write.exit_crit_edge

land.rhs.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_i_size_write.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %225 = call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i9.i.i.i = and i32 %225, -16384
  %226 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %228, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  %229 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %230
  %231 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %232, ptrtoint (ptr @hardirqs_enabled to i32)
  %233 = inttoptr i32 %add47.i.i.i to ptr
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %233, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !215
  %236 = call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i12.i.i.i = and i32 %236, -16384
  %237 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %239, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool54.not.i.i.i = icmp eq i32 %235, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.btrfs_i_size_write.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_i_size_write.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.btrfs_i_size_write.exit_crit_edge, label %if.then.i.i.i, !prof !166

land.rhs58.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_i_size_write.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %btrfs_i_size_write.exit

btrfs_i_size_write.exit:                          ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.btrfs_i_size_write.exit_crit_edge, %land.rhs22.i.i.i.btrfs_i_size_write.exit_crit_edge, %land.rhs.i.i.i.btrfs_i_size_write.exit_crit_edge, %land.lhs.true.i.i.i.btrfs_i_size_write.exit_crit_edge, %if.end753.btrfs_i_size_write.exit_crit_edge
  %i_size_seqcount.i.i = getelementptr i8, ptr %44, i32 168
  %240 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i.i = add i32 %241, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !216
  %dep_map.i.i.i.i = getelementptr i8, ptr %44, i32 172
  %242 = call ptr @llvm.returnaddress(i32 0) #13
  %243 = ptrtoint ptr %242 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %243) #13
  %244 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 %add, ptr %i_size, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %243) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !217
  %245 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i = add i32 %246, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !218
  %247 = call i32 @llvm.read_register.i32(metadata !153) #13
  %and.i.i.i26.i.i = and i32 %247, -16384
  %248 = inttoptr i32 %and.i.i.i26.i.i to ptr
  %preempt_count.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %preempt_count.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load volatile i32, ptr %preempt_count.i.i27.i.i, align 4
  %sub.i.i.i = add i32 %250, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i27.i.i, align 4
  %disk_i_size.i = getelementptr i8, ptr %44, i32 -288
  %251 = ptrtoint ptr %disk_i_size.i to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 %add, ptr %disk_i_size.i, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp757) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp757, ptr noundef %44) #13
  %252 = call ptr @memcpy(ptr %i_ctime, ptr %tmp757, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp757) #13
  %253 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %call759 = call i32 @btrfs_update_inode_fallback(ptr noundef %trans, ptr noundef %46, ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call759)
  %tobool760.not = icmp eq i32 %call759, 0
  br i1 %tobool760.not, label %if.end822, label %do.body762

do.body762:                                       ; preds = %btrfs_i_size_write.exit
  %254 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %fs_info1, align 4
  %fs_state764 = getelementptr inbounds %struct.btrfs_fs_info, ptr %255, i32 0, i32 149
  %call765 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state764) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call765)
  %tobool766.not = icmp eq i32 %call765, 0
  br i1 %tobool766.not, label %if.then767, label %do.body762.if.end819_crit_edge

do.body762.if.end819_crit_edge:                   ; preds = %do.body762
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end819

if.then767:                                       ; preds = %do.body762
  %256 = zext i32 %call759 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call759, label %do.end786 [
    i32 -5, label %if.then767.do.body801_crit_edge
    i32 -30, label %if.then767.do.body801_crit_edge1308
  ]

if.then767.do.body801_crit_edge1308:              ; preds = %if.then767
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body801

if.then767.do.body801_crit_edge:                  ; preds = %if.then767
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body801

do.end786:                                        ; preds = %if.then767
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1838, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call759) #13
  br label %if.end819

do.body801:                                       ; preds = %if.then767.do.body801_crit_edge, %if.then767.do.body801_crit_edge1308
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug947, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then813)) #13
          to label %if.end819 [label %if.then813], !srcloc !188

if.then813:                                       ; preds = %do.body801
  call void @__sanitizer_cov_trace_pc() #15
  %257 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %258, ptr noundef nonnull @.str.54, i32 noundef %call759) #16
  br label %if.end819

if.end819:                                        ; preds = %if.then813, %do.body801, %do.end786, %do.body762.if.end819_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1838, i32 noundef %call759) #16
  br label %dir_item_existed

if.end822:                                        ; preds = %btrfs_i_size_write.exit
  %259 = ptrtoint ptr %objectid to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %objectid, align 8
  %call825 = call i32 @btrfs_uuid_tree_add(ptr noundef %trans, ptr noundef %uuid, i8 noundef zeroext -5, i64 noundef %260) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call825)
  %tobool826.not = icmp eq i32 %call825, 0
  br i1 %tobool826.not, label %if.end888, label %do.body828

do.body828:                                       ; preds = %if.end822
  %261 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %fs_info1, align 4
  %fs_state830 = getelementptr inbounds %struct.btrfs_fs_info, ptr %262, i32 0, i32 149
  %call831 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state830) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call831)
  %tobool832.not = icmp eq i32 %call831, 0
  br i1 %tobool832.not, label %if.then833, label %do.body828.if.end885_crit_edge

do.body828.if.end885_crit_edge:                   ; preds = %do.body828
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end885

if.then833:                                       ; preds = %do.body828
  %263 = zext i32 %call825 to i64
  call void @__sanitizer_cov_trace_switch(i64 %263, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call825, label %do.end852 [
    i32 -5, label %if.then833.do.body867_crit_edge
    i32 -30, label %if.then833.do.body867_crit_edge1309
  ]

if.then833.do.body867_crit_edge1309:              ; preds = %if.then833
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body867

if.then833.do.body867_crit_edge:                  ; preds = %if.then833
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body867

do.end852:                                        ; preds = %if.then833
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1845, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call825) #13
  br label %if.end885

do.body867:                                       ; preds = %if.then833.do.body867_crit_edge, %if.then833.do.body867_crit_edge1309
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug948, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then879)) #13
          to label %if.end885 [label %if.then879], !srcloc !188

if.then879:                                       ; preds = %do.body867
  call void @__sanitizer_cov_trace_pc() #15
  %264 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %265, ptr noundef nonnull @.str.54, i32 noundef %call825) #16
  br label %if.end885

if.end885:                                        ; preds = %if.then879, %do.body867, %do.end852, %do.body828.if.end885_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1845, i32 noundef %call825) #16
  br label %dir_item_existed

if.end888:                                        ; preds = %if.end822
  %received_uuid889 = getelementptr inbounds %struct.btrfs_root_item, ptr %17, i32 0, i32 15
  %call891 = call i32 @btrfs_is_empty_uuid(ptr noundef %received_uuid889) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call891)
  %tobool892.not = icmp eq i32 %call891, 0
  br i1 %tobool892.not, label %if.then893, label %if.end888.dir_item_existed_crit_edge

if.end888.dir_item_existed_crit_edge:             ; preds = %if.end888
  call void @__sanitizer_cov_trace_pc() #15
  br label %dir_item_existed

if.then893:                                       ; preds = %if.end888
  %266 = ptrtoint ptr %objectid to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %objectid, align 8
  %call896 = call i32 @btrfs_uuid_tree_add(ptr noundef %trans, ptr noundef %received_uuid889, i8 noundef zeroext -4, i64 noundef %267) #13
  %268 = zext i32 %call896 to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call896, label %do.body902 [
    i32 0, label %if.then893.dir_item_existed_crit_edge
    i32 -17, label %fail.fold.split
  ]

if.then893.dir_item_existed_crit_edge:            ; preds = %if.then893
  call void @__sanitizer_cov_trace_pc() #15
  br label %dir_item_existed

do.body902:                                       ; preds = %if.then893
  %269 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %fs_info1, align 4
  %fs_state904 = getelementptr inbounds %struct.btrfs_fs_info, ptr %270, i32 0, i32 149
  %call905 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state904) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call905)
  %tobool906.not = icmp eq i32 %call905, 0
  br i1 %tobool906.not, label %if.then907, label %do.body902.if.end959_crit_edge

do.body902.if.end959_crit_edge:                   ; preds = %do.body902
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end959

if.then907:                                       ; preds = %do.body902
  %271 = zext i32 %call896 to i64
  call void @__sanitizer_cov_trace_switch(i64 %271, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call896, label %do.end926 [
    i32 -5, label %if.then907.do.body941_crit_edge
    i32 -30, label %if.then907.do.body941_crit_edge1310
  ]

if.then907.do.body941_crit_edge1310:              ; preds = %if.then907
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body941

if.then907.do.body941_crit_edge:                  ; preds = %if.then907
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body941

do.end926:                                        ; preds = %if.then907
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1853, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call896) #13
  br label %if.end959

do.body941:                                       ; preds = %if.then907.do.body941_crit_edge, %if.then907.do.body941_crit_edge1310
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_pending_snapshot.__UNIQUE_ID_ddebug949, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_pending_snapshot, %if.then953)) #13
          to label %if.end959 [label %if.then953], !srcloc !188

if.then953:                                       ; preds = %do.body941
  call void @__sanitizer_cov_trace_pc() #15
  %272 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %273, ptr noundef nonnull @.str.54, i32 noundef %call896) #16
  br label %if.end959

if.end959:                                        ; preds = %if.then953, %do.body941, %do.end926, %do.body902.if.end959_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.52, i32 noundef 1853, i32 noundef %call896) #16
  br label %dir_item_existed

fail.fold.split:                                  ; preds = %if.then893
  call void @__sanitizer_cov_trace_pc() #15
  br label %dir_item_existed

dir_item_existed:                                 ; preds = %fail.fold.split, %if.end959, %if.then893.dir_item_existed_crit_edge, %if.end888.dir_item_existed_crit_edge, %if.end885, %if.end819, %if.end750, %if.end663.dir_item_existed_crit_edge, %if.end660, %if.end598, %if.end531, %if.end462, %if.end392, %if.end330, %if.end247, %if.end185, %if.end122, %land.lhs.true.dir_item_existed_crit_edge, %if.end28.dir_item_existed_crit_edge
  %storemerge = phi i32 [ -17, %land.lhs.true.dir_item_existed_crit_edge ], [ %call38, %if.end28.dir_item_existed_crit_edge ], [ %59, %if.end122 ], [ %call127, %if.end185 ], [ %call189, %if.end247 ], [ %call272, %if.end330 ], [ %call334, %if.end392 ], [ %call404, %if.end462 ], [ %call473, %if.end531 ], [ %167, %if.end598 ], [ %call602, %if.end660 ], [ %call664, %if.end663.dir_item_existed_crit_edge ], [ %call673, %if.end750 ], [ %call759, %if.end819 ], [ %call825, %if.end885 ], [ 0, %if.end888.dir_item_existed_crit_edge ], [ %call896, %if.end959 ], [ %call896, %if.then893.dir_item_existed_crit_edge ], [ -17, %fail.fold.split ]
  %ret.1 = phi i32 [ 0, %land.lhs.true.dir_item_existed_crit_edge ], [ %call38, %if.end28.dir_item_existed_crit_edge ], [ %59, %if.end122 ], [ %call127, %if.end185 ], [ %call189, %if.end247 ], [ %call272, %if.end330 ], [ %call334, %if.end392 ], [ %call404, %if.end462 ], [ %call473, %if.end531 ], [ %167, %if.end598 ], [ %call602, %if.end660 ], [ %call664, %if.end663.dir_item_existed_crit_edge ], [ %call673, %if.end750 ], [ %call759, %if.end819 ], [ %call825, %if.end885 ], [ 0, %if.end888.dir_item_existed_crit_edge ], [ %call896, %if.end959 ], [ %call896, %if.then893.dir_item_existed_crit_edge ], [ -17, %fail.fold.split ]
  %274 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %storemerge, ptr %error, align 8
  %275 = ptrtoint ptr %block_rsv30 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %35, ptr %block_rsv30, align 8
  %276 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_store8_noabort(i32 %276)
  store i64 0, ptr %bytes_reserved, align 8
  br label %clear_skip_qgroup

clear_skip_qgroup:                                ; preds = %dir_item_existed, %if.then21.clear_skip_qgroup_crit_edge
  %ret.2 = phi i32 [ 0, %if.then21.clear_skip_qgroup_crit_edge ], [ %ret.1, %dir_item_existed ]
  %277 = ptrtoint ptr %transaction.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %transaction.i, align 4
  %qgroup_to_skip.i1280 = getelementptr inbounds %struct.btrfs_transaction, ptr %278, i32 0, i32 23, i32 9
  %279 = ptrtoint ptr %qgroup_to_skip.i1280 to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %qgroup_to_skip.i1280, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %280)
  %tobool.not.i1281 = icmp eq i64 %280, 0
  br i1 %tobool.not.i1281, label %do.end.i1282, label %clear_skip_qgroup.btrfs_clear_skip_qgroup.exit_crit_edge, !prof !163

clear_skip_qgroup.btrfs_clear_skip_qgroup.exit_crit_edge: ; preds = %clear_skip_qgroup
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_clear_skip_qgroup.exit

do.end.i1282:                                     ; preds = %clear_skip_qgroup
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 199, i32 noundef 9, ptr noundef null) #13
  br label %btrfs_clear_skip_qgroup.exit

btrfs_clear_skip_qgroup.exit:                     ; preds = %do.end.i1282, %clear_skip_qgroup.btrfs_clear_skip_qgroup.exit_crit_edge
  %281 = ptrtoint ptr %qgroup_to_skip.i1280 to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 0, ptr %qgroup_to_skip.i1280, align 8
  br label %no_free_objectid

no_free_objectid:                                 ; preds = %btrfs_clear_skip_qgroup.exit, %cond.end17.no_free_objectid_crit_edge
  %ret.3 = phi i32 [ 0, %cond.end17.no_free_objectid_crit_edge ], [ %ret.2, %btrfs_clear_skip_qgroup.exit ]
  call void @kfree(ptr noundef nonnull %17) #13
  %282 = ptrtoint ptr %root_item to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr null, ptr %root_item, align 4
  call void @btrfs_free_path(ptr noundef nonnull %15) #13
  %283 = ptrtoint ptr %path4 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr null, ptr %path4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %objectid) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %index) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_reserve) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #13
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_free_objectid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_reloc_pre_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_set_inode_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lookup_dir_item(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_check_and_init_root_item(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generate_random_guid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lock_root_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_cow_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_copy_root(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_root(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_add_root_ref(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_new_fs_root(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_reloc_post_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qgroup_account_snapshot(ptr noundef %trans, ptr noundef %src, ptr noundef %parent, ptr noundef %inherit, i64 noundef %dst_objectid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %src, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @record_root_in_trans(ptr noundef %trans, ptr noundef %src, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @btrfs_run_delayed_refs(ptr noundef %trans, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end52, label %do.body

do.body:                                          ; preds = %if.end5
  %fs_info9 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %5 = ptrtoint ptr %fs_info9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fs_info9, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %6, i32 0, i32 149
  %call10 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %do.body.if.end49_crit_edge

do.body.if.end49_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then12:                                        ; preds = %do.body
  %7 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call6, label %do.end [
    i32 -5, label %if.then12.do.body33_crit_edge
    i32 -30, label %if.then12.do.body33_crit_edge115
  ]

if.then12.do.body33_crit_edge115:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body33

if.then12.do.body33_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body33

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1557, i32 noundef 9, ptr noundef nonnull @.str.51, i32 noundef %call6) #13
  br label %if.end49

do.body33:                                        ; preds = %if.then12.do.body33_crit_edge, %if.then12.do.body33_crit_edge115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qgroup_account_snapshot.__UNIQUE_ID_ddebug936, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qgroup_account_snapshot, %if.then43)) #13
          to label %if.end49 [label %if.then43], !srcloc !188

if.then43:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %fs_info9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_info9, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %9, ptr noundef nonnull @.str.54, i32 noundef %call6) #16
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %do.body33, %do.end, %do.body.if.end49_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.56, i32 noundef 1557, i32 noundef %call6) #16
  br label %cleanup

if.end52:                                         ; preds = %if.end5
  %call53 = tail call fastcc i32 @commit_fs_roots(ptr noundef %trans)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %call57 = tail call i32 @btrfs_qgroup_account_extents(ptr noundef %trans) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end60

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end60:                                         ; preds = %if.end56
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %src, i32 0, i32 7
  %10 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %root_key, align 1
  %call61 = tail call i32 @btrfs_qgroup_inherit(ptr noundef %trans, i64 noundef %11, i64 noundef %dst_objectid, ptr noundef %inherit) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end60.cleanup_crit_edge, label %if.end64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  %call65 = tail call fastcc i32 @commit_cowonly_roots(ptr noundef %trans)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  tail call fastcc void @switch_commit_roots(ptr noundef %trans)
  %call69 = tail call fastcc i32 @btrfs_write_and_wait_transaction(ptr noundef %trans)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then77, label %do.body72

do.body72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef 1593, i32 noundef %call69, ptr noundef nonnull @.str.57) #16
  br label %cleanup

if.then77:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %call78 = tail call fastcc i32 @record_root_in_trans(ptr noundef %trans, ptr noundef %parent, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %do.body72, %if.end64.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end49, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end49 ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call78, %if.then77 ], [ %call69, %do.body72 ], [ %call65, %if.end64.cleanup_crit_edge ], [ %call61, %if.end60.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_dir_item(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_update_inode_fallback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_uuid_tree_add(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @btrfs_is_empty_uuid(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_qgroup_inherit(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_gang_lookup_tag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_free_log(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_update_reloc_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_update_root(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_qgroup_free_meta_all_pertrans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_run_dev_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_run_dev_replace(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_run_qgroups(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_setup_space_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_write_dirty_block_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_root_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @extent_io_tree_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_qgroup_clean_swapped_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_drop_and_free_fs_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_caching_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_transaction_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_delayed_refs_rsv_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_cleanup_one_transaction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_scrub_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold noreturn }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !37, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !75, !76, !77, !78, !80, !81, !83, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !134, !136, !137, !139, !141, !143, !145, !147, !149, !150, !152}
!llvm.named.register.sp = !{!153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/transaction.c", i32 125, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/transaction.c", i32 133, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/transaction.c", i32 1175, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/transaction.c", i32 1501, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @btrfs_defrag_root.__UNIQUE_ID_ddebug935, !7, !"__UNIQUE_ID_ddebug935", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/transaction.c", i32 2100, i32 2}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/transaction.c", i32 2367, i32 2}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/transaction.c", i32 2368, i32 2}
!18 = !{ptr @__func__.btrfs_commit_transaction, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/transaction.c", i32 2403, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/transaction.c", i32 2475, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/btrfs/transaction.c", i32 2508, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @btrfs_clean_one_deleted_snapshot.__UNIQUE_ID_ddebug957, !24, !"__UNIQUE_ID_ddebug957", i1 false, i1 false}
!27 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/btrfs/transaction.c", i32 2533, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @btrfs_apply_pending_changes.__UNIQUE_ID_ddebug958, !29, !"__UNIQUE_ID_ddebug958", i1 false, i1 false}
!32 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/btrfs/transaction.c", i32 2537, i32 3}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/btrfs/transaction.c", i32 719, i32 42}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @join_transaction.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../fs/btrfs/transaction.c", i32 352, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @join_transaction.__key.24, !47, !"__key", i1 false, i1 false}
!47 = !{!"../fs/btrfs/transaction.c", i32 355, i32 2}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @join_transaction.__key.26, !50, !"__key", i1 false, i1 false}
!50 = !{!"../fs/btrfs/transaction.c", i32 356, i32 2}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/btrfs/transaction.c", i32 378, i32 3}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/btrfs/transaction.c", i32 380, i32 3}
!56 = !{ptr @join_transaction.__key.30, !57, !"__key", i1 false, i1 false}
!57 = !{!"../fs/btrfs/transaction.c", i32 383, i32 2}
!58 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @join_transaction.__key.32, !60, !"__key", i1 false, i1 false}
!60 = !{!"../fs/btrfs/transaction.c", i32 391, i32 2}
!61 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @join_transaction.__key.34, !63, !"__key", i1 false, i1 false}
!63 = !{!"../fs/btrfs/transaction.c", i32 392, i32 2}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @join_transaction.__key.36, !66, !"__key", i1 false, i1 false}
!66 = !{!"../fs/btrfs/transaction.c", i32 394, i32 2}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @join_transaction.__key.38, !69, !"__key", i1 false, i1 false}
!69 = !{!"../fs/btrfs/transaction.c", i32 396, i32 2}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @btrfs_blocked_trans_types, !72, !"btrfs_blocked_trans_types", i1 false, i1 false}
!72 = !{!"../fs/btrfs/transaction.c", i32 99, i32 27}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/trace/events/btrfs.h", i32 1052, i32 1}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!77 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!83 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @assertfail._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @assertfail._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/btrfs/transaction.c", i32 980, i32 3}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/btrfs/transaction.c", i32 987, i32 2}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/btrfs/transaction.c", i32 2088, i32 2}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/btrfs/transaction.c", i32 1640, i32 2}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/btrfs/transaction.c", i32 1643, i32 2}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/btrfs/transaction.c", i32 1701, i32 3}
!99 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug937, !98, !"__UNIQUE_ID_ddebug937", i1 false, i1 false}
!102 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug938, !104, !"__UNIQUE_ID_ddebug938", i1 false, i1 false}
!104 = !{!"../fs/btrfs/transaction.c", i32 1714, i32 3}
!105 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug939, !106, !"__UNIQUE_ID_ddebug939", i1 false, i1 false}
!106 = !{!"../fs/btrfs/transaction.c", i32 1720, i32 3}
!107 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug940, !108, !"__UNIQUE_ID_ddebug940", i1 false, i1 false}
!108 = !{!"../fs/btrfs/transaction.c", i32 1757, i32 3}
!109 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug941, !110, !"__UNIQUE_ID_ddebug941", i1 false, i1 false}
!110 = !{!"../fs/btrfs/transaction.c", i32 1766, i32 3}
!111 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug942, !112, !"__UNIQUE_ID_ddebug942", i1 false, i1 false}
!112 = !{!"../fs/btrfs/transaction.c", i32 1780, i32 3}
!113 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug943, !114, !"__UNIQUE_ID_ddebug943", i1 false, i1 false}
!114 = !{!"../fs/btrfs/transaction.c", i32 1792, i32 3}
!115 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug944, !116, !"__UNIQUE_ID_ddebug944", i1 false, i1 false}
!116 = !{!"../fs/btrfs/transaction.c", i32 1801, i32 3}
!117 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug945, !118, !"__UNIQUE_ID_ddebug945", i1 false, i1 false}
!118 = !{!"../fs/btrfs/transaction.c", i32 1807, i32 3}
!119 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug946, !120, !"__UNIQUE_ID_ddebug946", i1 false, i1 false}
!120 = !{!"../fs/btrfs/transaction.c", i32 1828, i32 3}
!121 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug947, !122, !"__UNIQUE_ID_ddebug947", i1 false, i1 false}
!122 = !{!"../fs/btrfs/transaction.c", i32 1838, i32 3}
!123 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug948, !124, !"__UNIQUE_ID_ddebug948", i1 false, i1 false}
!124 = !{!"../fs/btrfs/transaction.c", i32 1845, i32 3}
!125 = !{ptr @create_pending_snapshot.__UNIQUE_ID_ddebug949, !126, !"__UNIQUE_ID_ddebug949", i1 false, i1 false}
!126 = !{!"../fs/btrfs/transaction.c", i32 1853, i32 4}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/btrfs/transaction.h", i32 190, i32 2}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/btrfs/transaction.c", i32 1557, i32 3}
!131 = !{ptr @qgroup_account_snapshot.__UNIQUE_ID_ddebug936, !130, !"__UNIQUE_ID_ddebug936", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/btrfs/transaction.c", i32 1592, i32 3}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!136 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/btrfs/transaction.c", i32 1415, i32 2}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/btrfs/transaction.c", i32 1433, i32 4}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/btrfs/transaction.c", i32 1434, i32 4}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/btrfs/transaction.c", i32 1435, i32 4}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/btrfs/transaction.c", i32 169, i32 2}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../include/trace/events/btrfs.h", i32 183, i32 1}
!149 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/btrfs/transaction.c", i32 1974, i32 2}
!152 = !{ptr @cleanup_transaction.__UNIQUE_ID_ddebug951, !151, !"__UNIQUE_ID_ddebug951", i1 false, i1 false}
!153 = !{!"sp"}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{!"branch_weights", i32 1, i32 2000}
!164 = !{i64 2148814290}
!165 = !{i64 2148728730, i64 2148728762, i64 2148728791, i64 2148728825, i64 2148728856, i64 2148728879}
!166 = !{!"branch_weights", i32 2000, i32 1}
!167 = !{i64 2150435379}
!168 = !{i64 2158508880, i64 2158509367, i64 2158508917, i64 2158508973, i64 2158509007, i64 2158509031, i64 2158509072, i64 2158509093, i64 2158509121, i64 2158509155}
!169 = !{i64 2158552709}
!170 = !{i64 2158552206}
!171 = !{i64 2158552386}
!172 = !{i64 2148726265, i64 2148726297, i64 2148726326, i64 2148726360, i64 2148726391, i64 2148726414}
!173 = !{i64 2152407877}
!174 = !{i64 1129415, i64 1129476}
!175 = !{i64 1132147}
!176 = !{i64 1132432}
!177 = !{i64 2152416727}
!178 = !{i64 2158569218}
!179 = !{i64 2148727200, i64 2148727226, i64 2148727255, i64 2148727289, i64 2148727320, i64 2148727343}
!180 = !{i64 2149438843}
!181 = !{!"auto-init"}
!182 = !{i64 2148724735, i64 2148724761, i64 2148724790, i64 2148724824, i64 2148724855, i64 2148724878}
!183 = !{i64 2158255320, i64 2158255802, i64 2158255357, i64 2158255413, i64 2158255447, i64 2158255471, i64 2158255512, i64 2158255533, i64 2158255561, i64 2158255595}
!184 = !{i64 2148821585}
!185 = !{i64 2148731980, i64 2148732012, i64 2148732041, i64 2148732075, i64 2148732106, i64 2148732129}
!186 = !{i64 2149445992}
!187 = !{i64 1210248, i64 1210272, i64 1210293, i64 1210310, i64 1210327}
!188 = !{i64 2148549333, i64 2148549338, i64 2148549351, i64 2148549395, i64 2148549429, i64 2148549450}
!189 = !{i8 0, i8 2}
!190 = !{i64 2158727052}
!191 = !{i64 1231503, i64 1231520, i64 1231544, i64 1231570, i64 1231588}
!192 = !{i64 2158727395}
!193 = !{i64 2158602097}
!194 = !{i64 2158484847}
!195 = !{i64 2152426681}
!196 = !{i64 2152436176}
!197 = !{i64 2152445653}
!198 = !{i64 2155119659}
!199 = !{i64 2155119884}
!200 = !{i64 2149545740}
!201 = !{i64 2149546776}
!202 = !{i64 2158683553, i64 2158684041, i64 2158683590, i64 2158683646, i64 2158683680, i64 2158683704, i64 2158683745, i64 2158683766, i64 2158683794, i64 2158683828}
!203 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!204 = !{i64 2158543036, i64 2158543523, i64 2158543073, i64 2158543129, i64 2158543163, i64 2158543187, i64 2158543228, i64 2158543249, i64 2158543277, i64 2158543311}
!205 = !{i64 2158545453}
!206 = !{i64 2155656586}
!207 = !{i64 2155656863}
!208 = !{i64 2158609174, i64 2158609662, i64 2158609211, i64 2158609267, i64 2158609301, i64 2158609325, i64 2158609366, i64 2158609387, i64 2158609415, i64 2158609449}
!209 = !{i64 2158628977}
!210 = !{i64 2158643925, i64 2158644413, i64 2158643962, i64 2158644018, i64 2158644052, i64 2158644076, i64 2158644117, i64 2158644138, i64 2158644166, i64 2158644200}
!211 = !{i64 2152569497}
!212 = !{i64 2150045802}
!213 = !{i64 2150050736}
!214 = !{i64 2150072454}
!215 = !{i64 2150077348}
!216 = !{i64 2150153875}
!217 = !{i64 2150154200}
!218 = !{i64 2152581359}
