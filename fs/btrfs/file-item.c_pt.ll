; ModuleID = '/llk/IR_all_yes/fs/btrfs/file-item.c_pt.bc'
source_filename = "../fs/btrfs/file-item.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.rb_root = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_inode = type { ptr, %struct.btrfs_key, %struct.spinlock, %struct.extent_map_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.mutex, %struct.btrfs_ordered_inode_tree, %struct.list_head, %struct.rb_node, i32, %struct.atomic_t, i64, i64, i64, i32, i32, i64, %union.anon.89, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.btrfs_block_rsv, i32, i32, ptr, %struct.timespec64, %struct.list_head, %struct.rw_semaphore, %struct.inode }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.btrfs_ordered_inode_tree = type { %struct.spinlock, %struct.rb_root, ptr }
%union.anon.89 = type { i64 }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.76 = type { ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.88, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.88 = type { i64 }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
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
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_ordered_sum = type { i64, i32, %struct.list_head, [0 x i8] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.btrfs_ordered_extent = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.rb_node, %struct.list_head, %struct.btrfs_work, %struct.completion, %struct.btrfs_work, %struct.list_head, i64, ptr }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.extent_map = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, %struct.refcount_struct, i32, %struct.list_head }

@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"IS_ALIGNED(start + len, inode->root->fs_info->sectorsize)\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/btrfs/file-item.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"IS_ALIGNED(start + len, inode->root->fs_info->sectorsize) || len == (u64)-1\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bio_op(bio) == REQ_OP_READ\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cur_disk_bytenr - orig_disk_bytenr < UINT_MAX\00", [50 x i8] zeroinitializer }, align 32
@btrfs_lookup_bio_sums._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.btrfs_lookup_bio_sums = private unnamed_addr constant [22 x i8] c"btrfs_lookup_bio_sums\00", align 1
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014csum hole found for disk bytenr range [%llu, %llu)\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"IS_ALIGNED(start, fs_info->sectorsize) && IS_ALIGNED(end + 1, fs_info->sectorsize)\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014no ordered extent for root %llu ino %llu offset %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ordered\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"root->root_key.objectid == BTRFS_CSUM_TREE_OBJECTID || root->root_key.objectid == BTRFS_TREE_LOG_OBJECTID\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@btrfs_del_csums.__UNIQUE_ID_ddebug949 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.1, ptr @.str.14, i8 0, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"btrfs_del_csums\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013unknown file extent item type %d, inode %llu, offset %llu, root %llu\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"key.type == BTRFS_EXTENT_DATA_KEY\00", [62 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"IS_ALIGNED(disk_bytenr, sectorsize) && IS_ALIGNED(len, sectorsize)\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"in_range(disk_bytenr, csum_start, csum_len)\00", [52 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 7, i64 -6]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 4294967269, i64 4294967294]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 87, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 115, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 397, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 452, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 486, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 513, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 675, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 708, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 807, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 921, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1253, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1274, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 3491, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 270, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [24 x i8] c"../fs/btrfs/file-item.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 300, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @btrfs_lookup_bio_sums._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_lookup_bio_sums._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_inode_safe_disk_i_size_write(ptr noundef %inode, i64 noundef %new_i_size) local_unnamed_addr #0 align 64 {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #10
  %4 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %start, align 8, !annotation !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end) #10
  %5 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %end, align 8, !annotation !55
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_i_size)
  %tobool.not = icmp eq i64 %new_i_size, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %i_size_seqcount.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %cond.false
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !56
  %and.i.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %7 = tail call ptr @llvm.returnaddress(i32 0) #10
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %8) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call ptr @llvm.returnaddress(i32 0) #10
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %10) #10
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !57
  %and.i.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !58

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #10, !srcloc !59
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !61
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %15, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %13, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %15, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  %16 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %19, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %while.end.i.cond.end_crit_edge, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

while.end.i.cond.end_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.end:                                         ; preds = %while.end.i.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i64 [ %new_i_size, %entry.cond.end_crit_edge ], [ %17, %while.end.i.cond.end_crit_edge ]
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 43
  %20 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %incompat_flags.i.i, align 1
  %24 = and i64 %23, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool.i.not = icmp eq i64 %24, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %disk_i_size = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 21
  %25 = ptrtoint ptr %disk_i_size to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %cond, ptr %disk_i_size, align 8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %lock = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %file_extent_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 6
  %call3 = call i32 @find_contiguous_extent_bit(ptr noundef %file_extent_tree, i64 noundef 0, ptr noundef nonnull %start, ptr noundef nonnull %end, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %26 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp = icmp eq i64 %27, 0
  br i1 %cmp, label %if.then5, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %end, align 8
  %add = add i64 %29, 1
  %30 = call i64 @llvm.umin.i64(i64 %cond, i64 %add)
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %i_size.0 = phi i64 [ %30, %if.then5 ], [ 0, %land.lhs.true.if.end11_crit_edge ], [ 0, %if.end.if.end11_crit_edge ]
  %disk_i_size12 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 21
  %31 = ptrtoint ptr %disk_i_size12 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %i_size.0, ptr %disk_i_size12, align 8
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_contiguous_extent_bit(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_inode_set_file_extent_range(ptr noundef %inode, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %add = add i64 %len, %start
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %4 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %5 to i64
  %sub = add nsw i64 %conv, -1
  %and = and i64 %sub, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp1 = icmp eq i64 %and, 0
  br i1 %cmp1, label %cond.end, label %cond.false, !prof !64

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 87) #13
  unreachable

cond.end:                                         ; preds = %if.end
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 43
  %6 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %incompat_flags.i.i, align 1
  %10 = and i64 %9, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.i.not = icmp eq i64 %10, 0
  br i1 %tobool.i.not, label %if.end7, label %cond.end.return_crit_edge

cond.end.return_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end7:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %file_extent_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 6
  %sub9 = add i64 %add, -1
  %call.i = tail call i32 @set_extent_bit(ptr noundef %file_extent_tree, i64 noundef %start, i64 noundef %sub9, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 3136, ptr noundef null) #10
  br label %return

return:                                           ; preds = %if.end7, %cond.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end7 ], [ 0, %entry.return_crit_edge ], [ 0, %cond.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #3 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #10, !srcloc !65
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_inode_clear_file_extent_range(ptr noundef %inode, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %add = add i64 %len, %start
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %4 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %5 to i64
  %sub = add nsw i64 %conv, -1
  %and = and i64 %sub, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp1 = icmp eq i64 %and, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %len)
  %cmp3 = icmp eq i64 %len, -1
  %spec.select = or i1 %cmp3, %cmp1
  br i1 %spec.select, label %cond.end, label %cond.false, !prof !64

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 116) #13
  unreachable

cond.end:                                         ; preds = %if.end
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 43
  %6 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %incompat_flags.i.i, align 1
  %10 = and i64 %9, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.i.not = icmp eq i64 %10, 0
  br i1 %tobool.i.not, label %if.end9, label %cond.end.return_crit_edge

cond.end.return_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end9:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %file_extent_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 6
  %sub11 = add i64 %add, -1
  %call12 = tail call i32 @clear_extent_bit(ptr noundef %file_extent_tree, i64 noundef %start, i64 noundef %sub11, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  br label %return

return:                                           ; preds = %if.end9, %cond.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ 0, %entry.return_crit_edge ], [ 0, %cond.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_insert_file_extent(ptr noundef %trans, ptr noundef %root, i64 noundef %objectid, i64 noundef %pos, i64 noundef %disk_offset, i64 noundef %disk_num_bytes, i64 noundef %num_bytes, i64 noundef %offset, i64 noundef %ram_bytes, i8 noundef zeroext %compression, i8 noundef zeroext %encryption, i16 noundef zeroext %other_encoding) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %file_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %file_key) #10
  %call = tail call ptr @btrfs_alloc_path() #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %file_key, i32 0, i32 2
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %file_key, i32 0, i32 1
  %2 = ptrtoint ptr %file_key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %objectid, ptr %file_key, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %pos, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 108, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %5 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 53, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #10
  %6 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %9 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %file_key, ptr %batch.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data_size.addr.i, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 53, ptr %7, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %8, align 4
  %call.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call, ptr noundef nonnull %batch.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %do.end16, label %do.body10, !prof !64

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file-item.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

do.end16:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %16, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %17 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %14, ptr noundef %17, i32 noundef 17) #10
  %add = add i32 %call.i.i, 101
  %18 = inttoptr i32 %add to ptr
  call void @btrfs_set_64(ptr noundef %14, ptr noundef %18, i32 noundef 21, i64 noundef %disk_offset) #10
  call void @btrfs_set_64(ptr noundef %14, ptr noundef %18, i32 noundef 29, i64 noundef %disk_num_bytes) #10
  call void @btrfs_set_64(ptr noundef %14, ptr noundef %18, i32 noundef 37, i64 noundef %offset) #10
  call void @btrfs_set_64(ptr noundef %14, ptr noundef %18, i32 noundef 45, i64 noundef %num_bytes) #10
  call void @btrfs_set_64(ptr noundef %14, ptr noundef %18, i32 noundef 8, i64 noundef %ram_bytes) #10
  %19 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %14, ptr noundef %18, i32 noundef 0, i64 noundef %20) #10
  call void @btrfs_set_8(ptr noundef %14, ptr noundef %18, i32 noundef 20, i8 noundef zeroext 1) #10
  call void @btrfs_set_8(ptr noundef %14, ptr noundef %18, i32 noundef 16, i8 noundef zeroext %compression) #10
  call void @btrfs_set_8(ptr noundef %14, ptr noundef %18, i32 noundef 17, i8 noundef zeroext %encryption) #10
  call void @btrfs_set_16(ptr noundef %14, ptr noundef %18, i32 noundef 18, i16 noundef zeroext %other_encoding) #10
  call void @btrfs_mark_buffer_dirty(ptr noundef %14) #10
  br label %out

out:                                              ; preds = %do.end16, %if.end.out_crit_edge
  call void @btrfs_free_path(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %file_key) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_lookup_file_extent(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i64 noundef %objectid, i64 noundef %offset, i32 noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  %file_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %file_key) #10
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %file_key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %file_key, i32 0, i32 2
  %mod.lobit = ashr i32 %mod, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mod)
  %cmp1 = icmp ne i32 %mod, 0
  %conv = zext i1 %cmp1 to i32
  %2 = ptrtoint ptr %file_key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %objectid, ptr %file_key, align 8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %offset, ptr %1, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 108, ptr %0, align 8
  %call = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %file_key, ptr noundef %path, i32 noundef %mod.lobit, i32 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %file_key) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @btrfs_lookup_bio_sums(ptr noundef %inode, ptr noundef %bio, ptr noundef %dst) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i130.i = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %io_tree2 = getelementptr i8, ptr %inode, i32 -736
  %sectorsize3 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %4 = ptrtoint ptr %sectorsize3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectorsize3, align 4
  %csum_size4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 169
  %6 = ptrtoint ptr %csum_size4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %csum_size4, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_size, align 8
  %10 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bi_iter, align 8
  %shl = shl i64 %11, 9
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 168
  %12 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %9, %13
  %flags = getelementptr i8, ptr %inode, i32 -240
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup91_crit_edge

entry.cleanup91_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

lor.lhs.false:                                    ; preds = %entry
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 149
  %16 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %fs_state, align 4
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false.cleanup91_crit_edge

lor.lhs.false.cleanup91_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

if.end:                                           ; preds = %lor.lhs.false
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %19 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_opf, align 8
  %and9 = and i32 %20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp = icmp eq i32 %and9, 0
  br i1 %cmp, label %cond.end, label %cond.false, !prof !64

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 397) #13
  unreachable

cond.end:                                         ; preds = %if.end
  %call12 = tail call ptr @btrfs_alloc_path() #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %cond.end.cleanup91_crit_edge, label %if.end15

cond.end.cleanup91_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

if.end15:                                         ; preds = %cond.end
  %tobool16.not = icmp eq ptr %dst, null
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end31_crit_edge

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then17:                                        ; preds = %if.end15
  %mul = mul i32 %shr, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %mul)
  %cmp19 = icmp ugt i32 %mul, 64
  br i1 %cmp19, label %if.then20, label %cleanup.thread.sink.split

if.then20:                                        ; preds = %if.then17
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 %7) #10
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !58

kmalloc_array.exit.thread:                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %csum22171 = getelementptr i8, ptr %bio, i32 -88
  %23 = ptrtoint ptr %csum22171 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %csum22171, align 8
  br label %cleanup

if.end7.i:                                        ; preds = %if.then20
  %24 = extractvalue { i32, i1 } %21, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3136) #15
  %csum22 = getelementptr i8, ptr %bio, i32 -88
  %25 = ptrtoint ptr %csum22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i, ptr %csum22, align 8
  %tobool24.not = icmp eq ptr %call8.i, null
  br i1 %tobool24.not, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.cleanup.thread_crit_edge

if.end7.i.cleanup.thread_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.thread.sink.split:                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %csum_inline = getelementptr i8, ptr %bio, i32 -84
  %csum27 = getelementptr i8, ptr %bio, i32 -88
  %26 = ptrtoint ptr %csum27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %csum_inline, ptr %csum27, align 8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end7.i.cleanup.thread_crit_edge
  %csum29 = getelementptr i8, ptr %bio, i32 -88
  %27 = ptrtoint ptr %csum29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csum29, align 8
  br label %if.end31

cleanup:                                          ; preds = %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  tail call void @btrfs_free_path(ptr noundef nonnull %call12) #10
  br label %cleanup91

if.end31:                                         ; preds = %cleanup.thread, %if.end15.if.end31_crit_edge
  %csum.1 = phi ptr [ %dst, %if.end15.if.end31_crit_edge ], [ %28, %cleanup.thread ]
  %csums_per_leaf = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 170
  %29 = ptrtoint ptr %csums_per_leaf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %csums_per_leaf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %30)
  %cmp32 = icmp ugt i32 %shr, %30
  br i1 %cmp32, label %if.then33, label %if.end31.if.end34_crit_edge

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %reada = getelementptr inbounds %struct.btrfs_path, ptr %call12, i32 0, i32 3
  %31 = ptrtoint ptr %reada to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %reada, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31.if.end34_crit_edge
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %fs_info.i = getelementptr inbounds %struct.btrfs_root, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fs_info.i, align 8
  %tree_root.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %tree_root.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tree_root.i, align 4
  %cmp.i = icmp eq ptr %33, %37
  br i1 %cmp.i, label %land.lhs.true.i155, label %if.end34.btrfs_is_free_space_inode.exit_crit_edge

if.end34.btrfs_is_free_space_inode.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_is_free_space_inode.exit

land.lhs.true.i155:                               ; preds = %if.end34
  %location.i.i = getelementptr i8, ptr %inode, i32 -860
  %38 = ptrtoint ptr %location.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %location.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool.not.i.i = icmp eq i64 %39, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i155.if.then.i.i157_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i155.if.then.i.i157_crit_edge:      ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i157

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i155
  %type.i.i = getelementptr i8, ptr %inode, i32 -852
  %40 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %41)
  %cmp.i.i156 = icmp eq i8 %41, -124
  br i1 %cmp.i.i156, label %lor.lhs.false.i.i.if.then.i.i157_crit_edge, label %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge

lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit.i

lor.lhs.false.i.i.if.then.i.i157_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i157

if.then.i.i157:                                   ; preds = %lor.lhs.false.i.i.if.then.i.i157_crit_edge, %land.lhs.true.i155.if.then.i.i157_crit_edge
  %i_ino.i.i = getelementptr i8, ptr %inode, i32 40
  %42 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_ino.i.i, align 8
  %conv3.i.i = zext i32 %43 to i64
  br label %btrfs_ino.exit.i

btrfs_ino.exit.i:                                 ; preds = %if.then.i.i157, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge
  %ino.0.i.i = phi i64 [ %conv3.i.i, %if.then.i.i157 ], [ %39, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %ino.0.i.i)
  %cmp2.not.i = icmp eq i64 %ino.0.i.i, 1
  br i1 %cmp2.not.i, label %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge, label %btrfs_ino.exit.i.if.then37_crit_edge

btrfs_ino.exit.i.if.then37_crit_edge:             ; preds = %btrfs_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge: ; preds = %btrfs_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_is_free_space_inode.exit

btrfs_is_free_space_inode.exit:                   ; preds = %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge, %if.end34.btrfs_is_free_space_inode.exit_crit_edge
  %location.i = getelementptr i8, ptr %inode, i32 -860
  %44 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -12, i64 %45)
  %cmp3.i = icmp eq i64 %45, -12
  br i1 %cmp3.i, label %btrfs_is_free_space_inode.exit.if.then37_crit_edge, label %btrfs_is_free_space_inode.exit.if.end41_crit_edge

btrfs_is_free_space_inode.exit.if.end41_crit_edge: ; preds = %btrfs_is_free_space_inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

btrfs_is_free_space_inode.exit.if.then37_crit_edge: ; preds = %btrfs_is_free_space_inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

if.then37:                                        ; preds = %btrfs_is_free_space_inode.exit.if.then37_crit_edge, %btrfs_ino.exit.i.if.then37_crit_edge
  %search_commit_root = getelementptr inbounds %struct.btrfs_path, ptr %call12, i32 0, i32 5
  %46 = ptrtoint ptr %search_commit_root to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %search_commit_root, align 2
  %bf.set40 = or i8 %bf.load, 48
  store i8 %bf.set40, ptr %search_commit_root, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %btrfs_is_free_space_inode.exit.if.end41_crit_edge
  %conv = zext i32 %9 to i64
  %add = add i64 %shl, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %shl)
  %cmp42188 = icmp ugt i64 %add, %shl
  br i1 %cmp42188, label %for.body.lr.ph, label %if.end41.for.end_crit_edge

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end41
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call12, i32 0, i32 1
  %47 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  %48 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i130.i, i32 0, i32 2
  %conv83 = zext i32 %5 to i64
  %iter.sroa.16.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %add75 = add nsw i64 %conv83, -1
  br label %for.body

for.body:                                         ; preds = %if.end87.for.body_crit_edge, %for.body.lr.ph
  %cur_disk_bytenr.0189 = phi i64 [ %shl, %for.body.lr.ph ], [ %add90, %if.end87.for.body_crit_edge ]
  %sub46 = sub i64 %cur_disk_bytenr.0189, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %sub46)
  %cmp47 = icmp ult i64 %sub46, 4294967295
  br i1 %cmp47, label %cond.end57, label %cond.false56, !prof !64

cond.false56:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 452) #13
  unreachable

cond.end57:                                       ; preds = %for.body
  %sub = sub i64 %add, %cur_disk_bytenr.0189
  %49 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom = zext i32 %50 to i64
  %shr60 = lshr i64 %sub46, %sh_prom
  %conv61 = trunc i64 %shr60 to i32
  %mul62 = mul i32 %7, %conv61
  %add.ptr = getelementptr i8, ptr %csum.1, i32 %mul62
  %51 = ptrtoint ptr %sectorsize3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sectorsize3, align 4
  %53 = ptrtoint ptr %csum_size4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %csum_size4, align 4
  %conv.i = zext i32 %52 to i64
  %sub.i = add nsw i64 %conv.i, -1
  %55 = or i64 %sub, %cur_disk_bytenr.0189
  %56 = and i64 %sub.i, %55
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %cond.end.i, label %cond.false.i, !prof !64

cond.false.i:                                     ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.21, i32 noundef 271) #16
  unreachable

cond.end.i:                                       ; preds = %cond.end57
  %58 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call12, align 4
  %tobool10.not.i = icmp eq ptr %59, null
  br i1 %tobool10.not.i, label %cond.end.i.if.end30.i_crit_edge, label %if.then.i

cond.end.i.if.end30.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then.i:                                        ; preds = %cond.end.i
  %60 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %slots.i, align 4
  %mul.i.i.i.i = mul i32 %61, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %62 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef nonnull %59, ptr noundef %62, i32 noundef 17) #10
  %63 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call12, align 4
  %65 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %slots.i, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #10
  %mul.i.i.i.i.i = mul i32 %66, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %67 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %64, ptr noundef nonnull %disk_key.i.i, i32 noundef %add.i.i.i.i.i, i32 noundef 17) #10
  %68 = ptrtoint ptr %47 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %47, align 1
  %70 = call i64 @llvm.bswap.i64(i64 %69) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #10
  %71 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call12, align 4
  %73 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %slots.i, align 4
  %mul.i.i.i127.i = mul i32 %74, 25
  %add.i.i.i128.i = add i32 %mul.i.i.i127.i, 101
  %75 = inttoptr i32 %add.i.i.i128.i to ptr
  %call.i.i129.i = call i32 @btrfs_get_32(ptr noundef %72, ptr noundef %75, i32 noundef 21) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %cur_disk_bytenr.0189)
  %cmp24.not.i = icmp ugt i64 %70, %cur_disk_bytenr.0189
  br i1 %cmp24.not.i, label %if.then.i.if.end30.i_crit_edge, label %land.lhs.true.i160

if.then.i.if.end30.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

land.lhs.true.i160:                               ; preds = %if.then.i
  %div.i = udiv i32 %call.i.i129.i, %54
  %mul.i = mul i32 %div.i, %52
  %conv23.i = zext i32 %mul.i to i64
  %add.i = add i32 %call.i.i.i, 101
  %76 = inttoptr i32 %add.i to ptr
  %add26.i = add i64 %70, %conv23.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add26.i, i64 %cur_disk_bytenr.0189)
  %cmp27.i = icmp ugt i64 %add26.i, %cur_disk_bytenr.0189
  br i1 %cmp27.i, label %land.lhs.true.i160.found.i_crit_edge, label %land.lhs.true.i160.if.end30.i_crit_edge

land.lhs.true.i160.if.end30.i_crit_edge:          ; preds = %land.lhs.true.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

land.lhs.true.i160.found.i_crit_edge:             ; preds = %land.lhs.true.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %found.i

if.end30.i:                                       ; preds = %land.lhs.true.i160.if.end30.i_crit_edge, %if.then.i.if.end30.i_crit_edge, %cond.end.i.if.end30.i_crit_edge
  call void @btrfs_release_path(ptr noundef nonnull %call12) #10
  %call31.i = call ptr @btrfs_csum_root(ptr noundef %3, i64 noundef %cur_disk_bytenr.0189) #10
  %call32.i = call fastcc ptr @btrfs_lookup_csum(ptr noundef null, ptr noundef %call31.i, ptr noundef nonnull %call12, i64 noundef %cur_disk_bytenr.0189, i32 noundef 0) #10
  %cmp.i.i161 = icmp ugt ptr %call32.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i161, label %if.then34.i, label %if.end36.i

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %call32.i to i32
  br label %search_csum_tree.exit

if.end36.i:                                       ; preds = %if.end30.i
  %78 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call12, align 4
  %80 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %slots.i, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i130.i) #10
  %mul.i.i.i.i131.i = mul i32 %81, 25
  %add.i.i.i.i132.i = add i32 %mul.i.i.i.i131.i, 101
  %82 = call ptr @memset(ptr %disk_key.i130.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %79, ptr noundef nonnull %disk_key.i130.i, i32 noundef %add.i.i.i.i132.i, i32 noundef 17) #10
  %83 = ptrtoint ptr %48 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 8)
  %84 = load i64, ptr %48, align 1
  %85 = call i64 @llvm.bswap.i64(i64 %84) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i130.i) #10
  %86 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call12, align 4
  %88 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %slots.i, align 4
  %mul.i.i.i135.i = mul i32 %89, 25
  %add.i.i.i136.i = add i32 %mul.i.i.i135.i, 101
  %90 = inttoptr i32 %add.i.i.i136.i to ptr
  %call.i.i137.i = call i32 @btrfs_get_32(ptr noundef %87, ptr noundef %90, i32 noundef 21) #10
  %div47.i = udiv i32 %call.i.i137.i, %54
  %mul48.i = mul i32 %div47.i, %52
  %conv49.i = zext i32 %mul48.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %cur_disk_bytenr.0189)
  %cmp50.not.i = icmp ule i64 %85, %cur_disk_bytenr.0189
  %add53.i = add i64 %85, %conv49.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add53.i, i64 %cur_disk_bytenr.0189)
  %cmp54.i = icmp ugt i64 %add53.i, %cur_disk_bytenr.0189
  %91 = select i1 %cmp50.not.i, i1 %cmp54.i, i1 false
  br i1 %91, label %if.end36.i.found.i_crit_edge, label %cond.false64.i, !prof !64

if.end36.i.found.i_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %found.i

cond.false64.i:                                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.22, i32 noundef 300) #16
  unreachable

found.i:                                          ; preds = %if.end36.i.found.i_crit_edge, %land.lhs.true.i160.found.i_crit_edge
  %add66.pre-phi.i = phi i64 [ %add53.i, %if.end36.i.found.i_crit_edge ], [ %add26.i, %land.lhs.true.i160.found.i_crit_edge ]
  %item.0.i = phi ptr [ %call32.i, %if.end36.i.found.i_crit_edge ], [ %76, %land.lhs.true.i160.found.i_crit_edge ]
  %92 = call i64 @llvm.umin.i64(i64 %add66.pre-phi.i, i64 %add) #10
  %sub73.i = sub i64 %92, %cur_disk_bytenr.0189
  %93 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom.i = zext i32 %94 to i64
  %shr.i162 = lshr i64 %sub73.i, %sh_prom.i
  %conv74.i = trunc i64 %shr.i162 to i32
  %95 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call12, align 4
  %97 = ptrtoint ptr %item.0.i to i32
  %mul77.i = mul i32 %54, %conv74.i
  call void @read_extent_buffer(ptr noundef %96, ptr noundef %add.ptr, i32 noundef %97, i32 noundef %mul77.i) #10
  br label %search_csum_tree.exit

search_csum_tree.exit:                            ; preds = %found.i, %if.then34.i
  %ret.0.i = phi i32 [ %conv74.i, %found.i ], [ %77, %if.then34.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i)
  %cmp64183 = icmp slt i32 %ret.0.i, 1
  br i1 %cmp64183, label %if.then66, label %search_csum_tree.exit.if.end87_crit_edge

search_csum_tree.exit.if.end87_crit_edge:         ; preds = %search_csum_tree.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then66:                                        ; preds = %search_csum_tree.exit
  %98 = call ptr @memset(ptr %add.ptr, i32 0, i32 %7)
  %99 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr.i, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %101, i32 8)
  %102 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9, i64 %102)
  %cmp68 = icmp eq i64 %102, -9
  br i1 %cmp68, label %if.then70, label %do.body

if.then70:                                        ; preds = %if.then66
  %103 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %103)
  %iter.sroa.6.0.copyload.i = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i)
  %tobool.not124.i = icmp eq i32 %iter.sroa.6.0.copyload.i, 0
  br i1 %tobool.not124.i, label %if.then70.if.end87_crit_edge, label %land.rhs.lr.ph.i

if.then70.if.end87_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

land.rhs.lr.ph.i:                                 ; preds = %if.then70
  %104 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %iter.sroa.16.0.copyload.i = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx.i, align 8
  %105 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %106 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %bi_iter, align 8
  %shl.i = shl i64 %107, 9
  %108 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bi_io_vec.i, align 8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %cur.0128.i = phi i64 [ %shl.i, %land.rhs.lr.ph.i ], [ %cur.1.ph.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.6.0127.i = phi i32 [ %iter.sroa.6.0.copyload.i, %land.rhs.lr.ph.i ], [ %sub.i.i.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.10.0126.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.10.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.16.0125.i = phi i32 [ %iter.sroa.16.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.16.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %109, i32 %iter.sroa.10.0126.i
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %109, i32 %iter.sroa.10.0126.i, i32 2
  %112 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bv_offset.i, align 4
  %add.i164 = add i32 %113, %iter.sroa.16.0125.i
  %div106.i = lshr i32 %add.i164, 12
  %bv_len10.i = getelementptr %struct.bio_vec, ptr %109, i32 %iter.sroa.10.0126.i, i32 1
  %114 = ptrtoint ptr %bv_len10.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bv_len10.i, align 4
  %sub.i165 = sub i32 %115, %iter.sroa.16.0125.i
  %116 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.0127.i, i32 %sub.i165) #10
  %rem.i = and i32 %add.i164, 4095
  %sub18.i = sub nuw nsw i32 4096, %rem.i
  %117 = call i32 @llvm.umin.i32(i32 %116, i32 %sub18.i) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %cur_disk_bytenr.0189, i64 %cur.0128.i)
  %cmp34.i = icmp ult i64 %cur_disk_bytenr.0189, %cur.0128.i
  br i1 %cmp34.i, label %land.rhs.i.if.end87_crit_edge, label %if.end.i167

land.rhs.i.if.end87_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.end.i167:                                      ; preds = %land.rhs.i
  %conv.i166 = zext i32 %117 to i64
  %add36.i = add i64 %cur.0128.i, %conv.i166
  call void @__sanitizer_cov_trace_cmp8(i64 %add36.i, i64 %cur_disk_bytenr.0189)
  %cmp37.not.i = icmp ugt i64 %add36.i, %cur_disk_bytenr.0189
  br i1 %cmp37.not.i, label %cond.end57.i, label %if.end.i167.for.inc.i_crit_edge

if.end.i167.for.inc.i_crit_edge:                  ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cond.end57.i:                                     ; preds = %if.end.i167
  %mapping.i = getelementptr %struct.page, ptr %111, i32 %div106.i, i32 1, i32 0, i32 1
  %118 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mapping.i, align 4
  %tobool58.not.i = icmp eq ptr %119, null
  br i1 %tobool58.not.i, label %cond.end57.i.for.inc.i_crit_edge, label %land.lhs.true.i168

cond.end57.i.for.inc.i_crit_edge:                 ; preds = %cond.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i168:                               ; preds = %cond.end57.i
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %tobool60.not.i = icmp ne ptr %121, null
  %cmp64.i = icmp eq ptr %121, %inode
  %or.cond.i = and i1 %tobool60.not.i, %cmp64.i
  br i1 %or.cond.i, label %if.then73, label %land.lhs.true.i168.for.inc.i_crit_edge

land.lhs.true.i168.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i168.for.inc.i_crit_edge, %cond.end57.i.for.inc.i_crit_edge, %if.end.i167.for.inc.i_crit_edge
  %cur.1.ph.i = phi i64 [ %cur.0128.i, %cond.end57.i.for.inc.i_crit_edge ], [ %cur.0128.i, %land.lhs.true.i168.for.inc.i_crit_edge ], [ %add36.i, %if.end.i167.for.inc.i_crit_edge ]
  %122 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bi_opf, align 8
  %and.i.i.i = and i32 %123, 255
  %124 = add nsw i32 %and.i.i.i, -3
  %switch.and.i.i.i = and i32 %124, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %for.inc.i.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i.i

for.inc.i.bio_advance_iter_single.exit.i_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_advance_iter_single.exit.i

if.else.i.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i.i = add i32 %117, %iter.sroa.16.0125.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %115)
  %cmp.i.i.i169 = icmp eq i32 %add.i.i.i, %115
  %spec.select.i = select i1 %cmp.i.i.i169, i32 0, i32 %add.i.i.i
  %inc.i.i.i = zext i1 %cmp.i.i.i169 to i32
  %spec.select122.i = add i32 %iter.sroa.10.0126.i, %inc.i.i.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i.i, %for.inc.i.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.16.1.i = phi i32 [ %iter.sroa.16.0125.i, %for.inc.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i, %if.else.i.i ]
  %iter.sroa.10.2.i = phi i32 [ %iter.sroa.10.0126.i, %for.inc.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select122.i, %if.else.i.i ]
  %sub.i.i.i = sub i32 %iter.sroa.6.0127.i, %117
  %tobool.not.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %bio_advance_iter_single.exit.i.if.end87_crit_edge, label %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

bio_advance_iter_single.exit.i.if.end87_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then73:                                        ; preds = %land.lhs.true.i168
  call void @__sanitizer_cov_trace_pc() #12
  %index.i.i = getelementptr %struct.page, ptr %111, i32 %div106.i, i32 1, i32 0, i32 2
  %125 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %126 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %conv68.i = zext i32 %rem.i to i64
  %add69.i = sub i64 %cur_disk_bytenr.0189, %cur.0128.i
  %add70.i = add i64 %add69.i, %conv68.i
  %sub71.i = add i64 %add70.i, %shl.i.i
  %sub76 = add i64 %add75, %sub71.i
  %call.i = call i32 @set_extent_bit(ptr noundef %io_tree2, i64 noundef %sub71.i, i64 noundef %sub76, i32 noundef 128, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 3136, ptr noundef null) #10
  br label %if.end87

do.body:                                          ; preds = %if.then66
  %call80 = call i32 @___ratelimit(ptr noundef nonnull @btrfs_lookup_bio_sums._rs, ptr noundef nonnull @__func__.btrfs_lookup_bio_sums) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.body.if.end87_crit_edge, label %if.then82

do.body.if.end87_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then82:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %add84 = add i64 %cur_disk_bytenr.0189, %conv83
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %3, ptr noundef nonnull @.str.6, i64 noundef %cur_disk_bytenr.0189, i64 noundef %add84) #14
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %do.body.if.end87_crit_edge, %if.then73, %bio_advance_iter_single.exit.i.if.end87_crit_edge, %land.rhs.i.if.end87_crit_edge, %if.then70.if.end87_crit_edge, %search_csum_tree.exit.if.end87_crit_edge
  %count.0 = phi i32 [ 1, %if.then82 ], [ 1, %do.body.if.end87_crit_edge ], [ %ret.0.i, %search_csum_tree.exit.if.end87_crit_edge ], [ 1, %if.then73 ], [ 1, %if.then70.if.end87_crit_edge ], [ 1, %land.rhs.i.if.end87_crit_edge ], [ 1, %bio_advance_iter_single.exit.i.if.end87_crit_edge ]
  %mul88 = mul i32 %count.0, %5
  %conv89 = zext i32 %mul88 to i64
  %add90 = add i64 %cur_disk_bytenr.0189, %conv89
  %cmp42 = icmp ugt i64 %add, %add90
  br i1 %cmp42, label %if.end87.for.body_crit_edge, label %if.end87.for.end_crit_edge

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end87.for.body_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end87.for.end_crit_edge, %if.end41.for.end_crit_edge
  call void @btrfs_free_path(ptr noundef nonnull %call12) #10
  br label %cleanup91

cleanup91:                                        ; preds = %for.end, %cleanup, %cond.end.cleanup91_crit_edge, %lor.lhs.false.cleanup91_crit_edge, %entry.cleanup91_crit_edge
  %retval.1 = phi i8 [ 0, %for.end ], [ 9, %cleanup ], [ 0, %lor.lhs.false.cleanup91_crit_edge ], [ 0, %entry.cleanup91_crit_edge ], [ 9, %cond.end.cleanup91_crit_edge ]
  ret i8 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_lookup_csums_range(ptr noundef %root, i64 noundef %start, i64 noundef %end, ptr noundef %list, i32 noundef %search_commit) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i274 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  %tmplist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #10
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmplist) #10
  %4 = getelementptr inbounds %struct.list_head, ptr %tmplist, i32 0, i32 1
  %5 = ptrtoint ptr %tmplist to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tmplist, ptr %tmplist, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tmplist, ptr %4, align 4
  %csum_size2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 169
  %7 = ptrtoint ptr %csum_size2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %csum_size2, align 4
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  %9 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %10 to i64
  %sub = add nsw i64 %conv, -1
  %and = and i64 %sub, %start
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %land.rhs, label %entry.cond.false_crit_edge, !prof !64

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.rhs:                                         ; preds = %entry
  %add = add i64 %end, 1
  %and7 = and i64 %sub, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %cmp8 = icmp eq i64 %and7, 0
  br i1 %cmp8, label %cond.end, label %land.rhs.cond.false_crit_edge, !prof !64

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %entry.cond.false_crit_edge
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 514) #13
  unreachable

cond.end:                                         ; preds = %land.rhs
  %call = call ptr @btrfs_alloc_path() #10
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %search_commit)
  %tobool12.not = icmp eq i32 %search_commit, 0
  br i1 %tobool12.not, label %if.end.if.end17_crit_edge, label %if.then13

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %skip_locking = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %skip_locking to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %skip_locking, align 2
  %reada = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %reada to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %reada, align 4
  %bf.set16 = or i8 %bf.load, 48
  store i8 %bf.set16, ptr %skip_locking, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end.if.end17_crit_edge
  %13 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -10, ptr %key, align 8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %start, ptr %3, align 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %2, align 8
  %call19 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end17.land.rhs172.preheader_crit_edge, label %if.end23

if.end17.land.rhs172.preheader_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs172.preheader

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp24.not = icmp eq i32 %call19, 0
  br i1 %cmp24.not, label %if.end23.if.end56_crit_edge, label %land.lhs.true

if.end23.if.end56_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end23
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp26 = icmp sgt i32 %17, 0
  br i1 %cmp26, label %if.then28, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then28:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %20 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %22 = mul i32 %17, 25
  %add.i.i.i.i = add i32 %22, 76
  %23 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %19, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %21, align 1
  %26 = call i64 @llvm.bswap.i64(i64 %25) #10
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %3, align 1
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %20, align 8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %2, align 8
  %31 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %disk_key.i, align 8
  %33 = call i64 @llvm.bswap.i64(i64 %32) #10
  %34 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -648518346341351425, i64 %32)
  %cmp34 = icmp eq i64 %32, -648518346341351425
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %29)
  %cmp39 = icmp eq i8 %29, -128
  %or.cond = select i1 %cmp34, i1 %cmp39, i1 false
  br i1 %or.cond, label %if.then41, label %if.then28.if.end56_crit_edge

if.then28.if.end56_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then41:                                        ; preds = %if.then28
  %sub43 = sub i64 %start, %26
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 168
  %35 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom = zext i32 %36 to i64
  %shr = lshr i64 %sub43, %sh_prom
  %conv44 = trunc i64 %shr to i32
  %mul = mul i32 %8, %conv44
  %37 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slots, align 4
  %39 = mul i32 %38, 25
  %add.i.i.i = add i32 %39, 76
  %40 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %19, ptr noundef %40, i32 noundef 21) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %call.i.i)
  %cmp49 = icmp ult i32 %mul, %call.i.i
  br i1 %cmp49, label %if.then51, label %if.then41.if.end56_crit_edge

if.then41.if.end56_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then51:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slots, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %slots, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.then41.if.end56_crit_edge, %if.then28.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge, %if.end23.if.end56_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %start, i64 %end)
  %cmp57.not305 = icmp ugt i64 %start, %end
  br i1 %cmp57.not305, label %if.end56.while.end182_crit_edge, label %while.body.lr.ph

if.end56.while.end182_crit_edge:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end182

while.body.lr.ph:                                 ; preds = %if.end56
  %slots61 = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %43 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i274, i32 0, i32 1
  %44 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i274, i32 0, i32 2
  %conv132 = trunc i32 %8 to i16
  %sectorsize_bits148 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 168
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %start.addr.0306 = phi i64 [ %start, %while.body.lr.ph ], [ %start.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %45 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call, align 4
  %47 = ptrtoint ptr %slots61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %slots61, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %46, i32 0, i32 12
  %49 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %50) #10
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %46, align 8
  %conv.i = trunc i64 %52 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %53 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %nritems.i, align 1
  %55 = call i32 @llvm.bswap.i32(i32 %54) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %55)
  %cmp64.not = icmp ult i32 %48, %55
  br i1 %cmp64.not, label %while.body.if.end78_crit_edge, label %if.then66

while.body.if.end78_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then66:                                        ; preds = %while.body
  %call.i273 = call i32 @btrfs_next_old_leaf(ptr noundef %root, ptr noundef nonnull %call, i64 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %cmp68 = icmp slt i32 %call.i273, 0
  br i1 %cmp68, label %if.then66.land.rhs172.preheader_crit_edge, label %if.end71

if.then66.land.rhs172.preheader_crit_edge:        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs172.preheader

if.end71:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %cmp72.not = icmp eq i32 %call.i273, 0
  br i1 %cmp72.not, label %if.end75, label %if.end71.while.end182_crit_edge

if.end71.while.end182_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end182

if.end75:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end75, %while.body.if.end78_crit_edge
  %leaf.0 = phi ptr [ %57, %if.end75 ], [ %46, %while.body.if.end78_crit_edge ]
  %58 = ptrtoint ptr %slots61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %slots61, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i274) #10
  %mul.i.i.i.i275 = mul i32 %59, 25
  %add.i.i.i.i276 = add i32 %mul.i.i.i.i275, 101
  %60 = call ptr @memset(ptr %disk_key.i274, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %leaf.0, ptr noundef nonnull %disk_key.i274, i32 noundef %add.i.i.i.i276, i32 noundef 17) #10
  %61 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %44, align 1
  %63 = call i64 @llvm.bswap.i64(i64 %62) #10
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 %63, ptr %3, align 1
  %65 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %43, align 8
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %2, align 8
  %68 = ptrtoint ptr %disk_key.i274 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %disk_key.i274, align 8
  %70 = call i64 @llvm.bswap.i64(i64 %69) #10
  %71 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i274) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -648518346341351425, i64 %69)
  %cmp82.not = icmp ne i64 %69, -648518346341351425
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %66)
  %cmp86.not = icmp ne i8 %66, -128
  %or.cond299 = select i1 %cmp82.not, i1 true, i1 %cmp86.not
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %end)
  %cmp90 = icmp ugt i64 %63, %end
  %or.cond300 = select i1 %or.cond299, i1 true, i1 %cmp90
  br i1 %or.cond300, label %if.end78.while.end182_crit_edge, label %if.end93

if.end78.while.end182_crit_edge:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end182

if.end93:                                         ; preds = %if.end78
  %72 = call i64 @llvm.umax.i64(i64 %63, i64 %start.addr.0306)
  %73 = ptrtoint ptr %slots61 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %slots61, align 4
  %mul.i.i.i279 = mul i32 %74, 25
  %add.i.i.i280 = add i32 %mul.i.i.i279, 101
  %75 = inttoptr i32 %add.i.i.i280 to ptr
  %call.i.i281 = call i32 @btrfs_get_32(ptr noundef %leaf.0, ptr noundef %75, i32 noundef 21) #10
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %77 = load i64, ptr %3, align 1
  %div = udiv i32 %call.i.i281, %8
  %78 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sectorsize, align 4
  %mul105 = mul i32 %79, %div
  %conv106 = zext i32 %mul105 to i64
  %add107 = add i64 %77, %conv106
  call void @__sanitizer_cov_trace_cmp8(i64 %add107, i64 %72)
  %cmp108.not = icmp ugt i64 %add107, %72
  br i1 %cmp108.not, label %if.end113, label %if.end93.while.cond.backedge_crit_edge

if.end93.while.cond.backedge_crit_edge:           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %list_add_tail.exit.while.cond.backedge_crit_edge, %if.end113.while.cond.backedge_crit_edge, %if.end93.while.cond.backedge_crit_edge
  %start.addr.0.be = phi i64 [ %72, %if.end93.while.cond.backedge_crit_edge ], [ %72, %if.end113.while.cond.backedge_crit_edge ], [ %add163, %list_add_tail.exit.while.cond.backedge_crit_edge ]
  %80 = ptrtoint ptr %slots61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %storemerge.in = load i32, ptr %slots61, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %slots61, align 4
  %cmp57.not = icmp ugt i64 %start.addr.0.be, %end
  br i1 %cmp57.not, label %while.cond.backedge.while.end182_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.while.end182_crit_edge:       ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end182

if.end113:                                        ; preds = %if.end93
  %81 = call i64 @llvm.umin.i64(i64 %add107, i64 %add)
  %82 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call, align 4
  %84 = ptrtoint ptr %slots61 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %slots61, align 4
  %mul.i.i.i282 = mul i32 %85, 25
  %add.i.i.i283 = add i32 %mul.i.i.i282, 101
  %86 = inttoptr i32 %add.i.i.i283 to ptr
  %call.i.i284 = call i32 @btrfs_get_32(ptr noundef %83, ptr noundef %86, i32 noundef 17) #10
  %add125 = add i32 %call.i.i284, 101
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %72)
  %cmp127303 = icmp ugt i64 %81, %72
  br i1 %cmp127303, label %while.body129.lr.ph, label %if.end113.while.cond.backedge_crit_edge

if.end113.while.cond.backedge_crit_edge:          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.body129.lr.ph:                              ; preds = %if.end113
  %87 = udiv i16 4072, %conv132
  %div.i = zext i16 %87 to i32
  br label %while.body129

while.body129:                                    ; preds = %list_add_tail.exit.while.body129_crit_edge, %while.body129.lr.ph
  %start.addr.2304 = phi i64 [ %72, %while.body129.lr.ph ], [ %add163, %list_add_tail.exit.while.body129_crit_edge ]
  %sub130 = sub i64 %81, %start.addr.2304
  %conv131 = trunc i64 %sub130 to i32
  %88 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sectorsize, align 4
  %mul.i = mul i32 %89, %div.i
  %90 = call i32 @llvm.umin.i32(i32 %mul.i, i32 %conv131)
  %91 = ptrtoint ptr %csum_size2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %csum_size2, align 4
  %add.i = add i32 %89, -1
  %sub.i = add i32 %add.i, %90
  %div.i286 = udiv i32 %sub.i, %89
  %mul.i287 = mul i32 %92, %div.i286
  %add2.i = add i32 %mul.i287, 24
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i, i32 noundef 3392) #15
  %tobool143.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool143.not, label %while.body129.land.rhs172.preheader_crit_edge, label %if.end145

while.body129.land.rhs172.preheader_crit_edge:    ; preds = %while.body129
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs172.preheader

if.end145:                                        ; preds = %while.body129
  %93 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %start.addr.2304, ptr %call9.i.i, align 128
  %len = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %call9.i.i, i32 0, i32 1
  %94 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %90, ptr %len, align 8
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 8)
  %96 = load i64, ptr %3, align 1
  %sub147 = sub i64 %start.addr.2304, %96
  %97 = ptrtoint ptr %sectorsize_bits148 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sectorsize_bits148, align 8
  %sh_prom149 = zext i32 %98 to i64
  %shr150 = lshr i64 %sub147, %sh_prom149
  %conv151 = trunc i64 %shr150 to i32
  %mul152 = mul i32 %8, %conv151
  %shr154 = lshr i32 %90, %98
  %99 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call, align 4
  %sums157 = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %call9.i.i, i32 0, i32 3
  %add158 = add i32 %add125, %mul152
  %mul159 = mul i32 %shr154, %8
  call void @read_extent_buffer(ptr noundef %100, ptr noundef %sums157, i32 noundef %add158, i32 noundef %mul159) #10
  %101 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sectorsize, align 4
  %mul161 = mul i32 %102, %shr154
  %conv162 = zext i32 %mul161 to i64
  %add163 = add i64 %start.addr.2304, %conv162
  %list164 = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %call9.i.i, i32 0, i32 2
  %103 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %4, align 4
  %call.i.i288 = call zeroext i1 @__list_add_valid(ptr noundef %list164, ptr noundef %104, ptr noundef nonnull %tmplist) #10
  br i1 %call.i.i288, label %if.end.i.i289, label %if.end145.list_add_tail.exit_crit_edge

if.end145.list_add_tail.exit_crit_edge:           ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i289:                                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %list164, ptr %4, align 4
  %106 = ptrtoint ptr %list164 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %tmplist, ptr %list164, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %call9.i.i, i32 0, i32 2, i32 1
  %107 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev3.i.i, align 16
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %list164, ptr %104, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i289, %if.end145.list_add_tail.exit_crit_edge
  %cmp127 = icmp ugt i64 %81, %add163
  br i1 %cmp127, label %list_add_tail.exit.while.body129_crit_edge, label %list_add_tail.exit.while.cond.backedge_crit_edge

list_add_tail.exit.while.cond.backedge_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

list_add_tail.exit.while.body129_crit_edge:       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body129

land.rhs172.preheader:                            ; preds = %while.body129.land.rhs172.preheader_crit_edge, %if.then66.land.rhs172.preheader_crit_edge, %if.end17.land.rhs172.preheader_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end17.land.rhs172.preheader_crit_edge ], [ -12, %while.body129.land.rhs172.preheader_crit_edge ], [ %call.i273, %if.then66.land.rhs172.preheader_crit_edge ]
  %109 = ptrtoint ptr %tmplist to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %tmplist, align 4
  %cmp.i.not319 = icmp eq ptr %110, %tmplist
  br i1 %cmp.i.not319, label %land.rhs172.preheader.while.end182_crit_edge, label %land.rhs172.preheader.while.body178_crit_edge

land.rhs172.preheader.while.body178_crit_edge:    ; preds = %land.rhs172.preheader
  br label %while.body178

land.rhs172.preheader.while.end182_crit_edge:     ; preds = %land.rhs172.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end182

land.rhs172.critedge:                             ; preds = %while.body178
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr inttoptr (i32 256 to ptr), ptr %112, align 4
  %prev.i293.c = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  br label %land.rhs172.backedge

while.body178:                                    ; preds = %land.rhs172.backedge.while.body178_crit_edge, %land.rhs172.preheader.while.body178_crit_edge
  %112 = phi ptr [ %121, %land.rhs172.backedge.while.body178_crit_edge ], [ %110, %land.rhs172.preheader.while.body178_crit_edge ]
  %add.ptr = getelementptr i8, ptr %112, i32 -12
  %call.i.i291 = call zeroext i1 @__list_del_entry_valid(ptr noundef %112) #10
  br i1 %call.i.i291, label %if.end.i.i292, label %land.rhs172.critedge

if.end.i.i292:                                    ; preds = %while.body178
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %prev.i.i, align 4
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %112, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %prev1.i.i.i, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %116, ptr %114, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %112, align 4
  br label %land.rhs172.backedge

land.rhs172.backedge:                             ; preds = %if.end.i.i292, %land.rhs172.critedge
  %prev.i.i.sink = phi ptr [ %prev.i.i, %if.end.i.i292 ], [ %prev.i293.c, %land.rhs172.critedge ]
  %119 = ptrtoint ptr %prev.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.sink, align 4
  call void @kfree(ptr noundef %add.ptr) #10
  %120 = ptrtoint ptr %tmplist to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile ptr, ptr %tmplist, align 4
  %cmp.i.not = icmp eq ptr %121, %tmplist
  br i1 %cmp.i.not, label %land.rhs172.backedge.while.end182_crit_edge, label %land.rhs172.backedge.while.body178_crit_edge

land.rhs172.backedge.while.body178_crit_edge:     ; preds = %land.rhs172.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body178

land.rhs172.backedge.while.end182_crit_edge:      ; preds = %land.rhs172.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end182

while.end182:                                     ; preds = %land.rhs172.backedge.while.end182_crit_edge, %land.rhs172.preheader.while.end182_crit_edge, %while.cond.backedge.while.end182_crit_edge, %if.end78.while.end182_crit_edge, %if.end71.while.end182_crit_edge, %if.end56.while.end182_crit_edge
  %ret.0314 = phi i32 [ 0, %if.end56.while.end182_crit_edge ], [ %ret.0, %land.rhs172.preheader.while.end182_crit_edge ], [ %ret.0, %land.rhs172.backedge.while.end182_crit_edge ], [ 0, %while.cond.backedge.while.end182_crit_edge ], [ 0, %if.end71.while.end182_crit_edge ], [ 0, %if.end78.while.end182_crit_edge ]
  %122 = ptrtoint ptr %tmplist to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %tmplist, align 4
  %cmp.i.not.i = icmp eq ptr %123, %tmplist
  br i1 %cmp.i.not.i, label %while.end182.list_splice_tail.exit_crit_edge, label %if.then.i

while.end182.list_splice_tail.exit_crit_edge:     ; preds = %while.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail.exit

if.then.i:                                        ; preds = %while.end182
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i294 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i294 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i294, align 4
  %126 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %4, align 4
  %prev3.i.i295 = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %128 = ptrtoint ptr %prev3.i.i295 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev3.i.i295, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %123, ptr %125, align 4
  %130 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %list, ptr %127, align 4
  store ptr %127, ptr %prev.i294, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i, %while.end182.list_splice_tail.exit_crit_edge
  call void @btrfs_free_path(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %list_splice_tail.exit, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0314, %list_splice_tail.exit ], [ -12, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmplist) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @btrfs_csum_one_bio(ptr noundef %inode, ptr nocapture noundef readonly %bio, i64 noundef %file_start, i32 noundef %contig) local_unnamed_addr #0 align 64 {
entry:
  %__shash_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #10
  %4 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  %5 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %10, 262144
  %or.i = or i32 %10, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bi_size, align 8
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %13 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sectorsize.i, align 4
  %add.i = add i32 %12, -1
  %sub.i = add i32 %add.i, %14
  %div.i = udiv i32 %sub.i, %14
  %csum_size.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 169
  %15 = ptrtoint ptr %csum_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %csum_size.i, align 4
  %mul.i = mul i32 %16, %div.i
  %add2.i = add i32 %mul.i, 24
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add2.i, i32 noundef 3520, i32 noundef -1) #15
  %17 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i251 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i251 to ptr
  %task.i252 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i252 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i252, align 8
  %flags1.i253 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %flags1.i253 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags1.i253, align 4
  %and.i254 = and i32 %22, -262145
  %or.i255 = or i32 %and.i254, %and.i
  store i32 %or.i255, ptr %flags1.i253, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bi_size, align 8
  %len = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %len, align 8
  %list = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %call.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %call.i.i, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %contig)
  %tobool6.not = icmp eq i32 %contig, 0
  %28 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bi_iter, align 8
  %shl = shl i64 %29, 9
  %30 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %shl, ptr %call.i.i, align 8
  %csum_shash = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 174
  %31 = ptrtoint ptr %csum_shash to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csum_shash, align 8
  %33 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %__shash_desc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not322 = icmp eq i32 %24, 0
  br i1 %tobool12.not322, label %if.end.for.end169_crit_edge, label %land.rhs.lr.ph

if.end.for.end169_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end169

land.rhs.lr.ph:                                   ; preds = %if.end
  %iter.sroa.16.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %34 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %iter.sroa.16.0.copyload = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %.file_start = select i1 %tobool6.not, i64 0, i64 %file_start
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 168
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %sums.0331 = phi ptr [ %call.i.i, %land.rhs.lr.ph ], [ %sums.1.lcssa, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %ordered.0330 = phi ptr [ null, %land.rhs.lr.ph ], [ %ordered.2.lcssa, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %offset.1329 = phi i64 [ %.file_start, %land.rhs.lr.ph ], [ %offset.3.lcssa, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %this_sum_bytes.0328 = phi i32 [ 0, %land.rhs.lr.ph ], [ %this_sum_bytes.1.lcssa, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %total_bytes.0327 = phi i32 [ 0, %land.rhs.lr.ph ], [ %total_bytes.1.lcssa, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %index.0326 = phi i32 [ 0, %land.rhs.lr.ph ], [ %index.1.lcssa, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.6.0325 = phi i32 [ %24, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.0324 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.16.0323 = phi i32 [ %iter.sroa.16.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.16.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %36 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %37, i32 %iter.sroa.10.0324
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %37, i32 %iter.sroa.10.0324, i32 2
  %40 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bv_offset, align 4
  %add = add i32 %41, %iter.sroa.16.0323
  %div250 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %39, i32 %div250
  %bv_len21 = getelementptr %struct.bio_vec, ptr %37, i32 %iter.sroa.10.0324, i32 1
  %42 = ptrtoint ptr %bv_len21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bv_len21, align 4
  %sub = sub i32 %43, %iter.sroa.16.0323
  %44 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.0325, i32 %sub)
  %rem = and i32 %add, 4095
  %sub29 = sub nuw nsw i32 4096, %rem
  %45 = call i32 @llvm.umin.i32(i32 %44, i32 %sub29)
  br i1 %tobool6.not, label %if.then45, label %land.rhs.if.end50_crit_edge

land.rhs.if.end50_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then45:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %index.i = getelementptr %struct.page, ptr %39, i32 %div250, i32 1, i32 0, i32 2
  %46 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %47 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %conv = zext i32 %rem to i64
  %add49 = or i64 %shl.i, %conv
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %land.rhs.if.end50_crit_edge
  %offset.2 = phi i64 [ %offset.1329, %land.rhs.if.end50_crit_edge ], [ %add49, %if.then45 ]
  %tobool51.not = icmp eq ptr %ordered.0330, null
  br i1 %tobool51.not, label %if.then52, label %if.end50.if.end84_crit_edge

if.end50.if.end84_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then52:                                        ; preds = %if.end50
  %call53 = call ptr @btrfs_lookup_ordered_extent(ptr noundef %inode, i64 noundef %offset.2) #10
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %do.end, label %if.then52.if.end84_crit_edge, !prof !58

if.then52.if.end84_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end:                                           ; preds = %if.then52
  %48 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %inode, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %root_key, align 1
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %52 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %tobool.not.i = icmp eq i64 %53, 0
  br i1 %tobool.not.i, label %do.end.if.then.i_crit_edge, label %lor.lhs.false.i

do.end.if.then.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.end
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %55)
  %cmp.i = icmp eq i8 %55, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %do.end.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %56 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %57 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %53, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.8, i64 noundef %51, i64 noundef %ino.0.i, i64 noundef %offset.2) #10
  call void @kvfree(ptr noundef %sums.0331) #10
  br label %cleanup

if.end84:                                         ; preds = %if.then52.if.end84_crit_edge, %if.end50.if.end84_crit_edge
  %ordered.1 = phi ptr [ %ordered.0330, %if.end50.if.end84_crit_edge ], [ %call53, %if.then52.if.end84_crit_edge ]
  %58 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sectorsize.i, align 4
  %add86 = add nsw i32 %45, -1
  %sub87 = add i32 %add86, %59
  %60 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %sub87, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp89309 = icmp sgt i32 %shr, 0
  br i1 %cmp89309, label %if.end84.for.body91_crit_edge, label %if.end84.for.inc167_crit_edge

if.end84.for.inc167_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc167

if.end84.for.body91_crit_edge:                    ; preds = %if.end84
  br label %for.body91

for.body91:                                       ; preds = %if.end144.for.body91_crit_edge, %if.end84.for.body91_crit_edge
  %sums.1316 = phi ptr [ %sums.2, %if.end144.for.body91_crit_edge ], [ %sums.0331, %if.end84.for.body91_crit_edge ]
  %ordered.2315 = phi ptr [ %ordered.3, %if.end144.for.body91_crit_edge ], [ %ordered.1, %if.end84.for.body91_crit_edge ]
  %offset.3314 = phi i64 [ %add162, %if.end144.for.body91_crit_edge ], [ %offset.2, %if.end84.for.body91_crit_edge ]
  %i.0313 = phi i32 [ %inc, %if.end144.for.body91_crit_edge ], [ 0, %if.end84.for.body91_crit_edge ]
  %this_sum_bytes.1312 = phi i32 [ %add164, %if.end144.for.body91_crit_edge ], [ %this_sum_bytes.0328, %if.end84.for.body91_crit_edge ]
  %total_bytes.1311 = phi i32 [ %add166, %if.end144.for.body91_crit_edge ], [ %total_bytes.0327, %if.end84.for.body91_crit_edge ]
  %index.1310 = phi i32 [ %add159, %if.end144.for.body91_crit_edge ], [ %index.0326, %if.end84.for.body91_crit_edge ]
  %62 = ptrtoint ptr %ordered.2315 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ordered.2315, align 8
  %num_bytes = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered.2315, i32 0, i32 2
  %64 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %num_bytes, align 8
  %add92 = add i64 %65, %63
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.3314, i64 %add92)
  %cmp93.not = icmp uge i64 %offset.3314, %add92
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.3314, i64 %63)
  %cmp96 = icmp ult i64 %offset.3314, %63
  %or.cond = or i1 %cmp96, %cmp93.not
  br i1 %or.cond, label %if.then98, label %for.body91.if.end144_crit_edge

for.body91.if.end144_crit_edge:                   ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then98:                                        ; preds = %for.body91
  %len99 = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %sums.1316, i32 0, i32 1
  %66 = ptrtoint ptr %len99 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %this_sum_bytes.1312, ptr %len99, align 8
  call void @btrfs_add_ordered_sum(ptr noundef %ordered.2315, ptr noundef %sums.1316) #10
  call void @btrfs_put_ordered_extent(ptr noundef %ordered.2315) #10
  %67 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bi_size, align 8
  %sub102 = sub i32 %68, %total_bytes.1311
  %69 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i256 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i256 to ptr
  %task.i257 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i257 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i257, align 8
  %flags1.i258 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %flags1.i258 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags1.i258, align 4
  %and.i259 = and i32 %74, 262144
  %or.i260 = or i32 %74, 262144
  store i32 %or.i260, ptr %flags1.i258, align 4
  %75 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sectorsize.i, align 4
  %add.i262 = add i32 %sub102, -1
  %sub.i263 = add i32 %add.i262, %76
  %div.i264 = udiv i32 %sub.i263, %76
  %77 = ptrtoint ptr %csum_size.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %csum_size.i, align 4
  %mul.i266 = mul i32 %78, %div.i264
  %add2.i267 = add i32 %mul.i266, 24
  %call.i.i268 = call noalias ptr @kvmalloc_node(i32 noundef %add2.i267, i32 noundef 3520, i32 noundef -1) #15
  %79 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i269 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i269 to ptr
  %task.i270 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i270 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i270, align 8
  %flags1.i271 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %flags1.i271 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags1.i271, align 4
  %and.i272 = and i32 %84, -262145
  %or.i273 = or i32 %and.i272, %and.i259
  store i32 %or.i273, ptr %flags1.i271, align 4
  %tobool107.not = icmp eq ptr %call.i.i268, null
  br i1 %tobool107.not, label %do.body117, label %do.end125, !prof !58

do.body117:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file-item.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 704, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

do.end125:                                        ; preds = %if.then98
  %len126 = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %call.i.i268, i32 0, i32 1
  %85 = ptrtoint ptr %len126 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub102, ptr %len126, align 8
  %call127 = call ptr @btrfs_lookup_ordered_extent(ptr noundef %inode, i64 noundef %offset.3314) #10
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %cond.false136, label %cond.end137, !prof !58

cond.false136:                                    ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.9, i32 noundef 708) #13
  unreachable

cond.end137:                                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %bi_iter, align 8
  %shl140 = shl i64 %87, 9
  %conv141 = zext i32 %total_bytes.1311 to i64
  %add142 = add i64 %shl140, %conv141
  %88 = ptrtoint ptr %call.i.i268 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %add142, ptr %call.i.i268, align 8
  br label %if.end144

if.end144:                                        ; preds = %cond.end137, %for.body91.if.end144_crit_edge
  %index.2 = phi i32 [ 0, %cond.end137 ], [ %index.1310, %for.body91.if.end144_crit_edge ]
  %this_sum_bytes.2 = phi i32 [ 0, %cond.end137 ], [ %this_sum_bytes.1312, %for.body91.if.end144_crit_edge ]
  %ordered.3 = phi ptr [ %call127, %cond.end137 ], [ %ordered.2315, %for.body91.if.end144_crit_edge ]
  %sums.2 = phi ptr [ %call.i.i268, %cond.end137 ], [ %sums.1316, %for.body91.if.end144_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %89 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %89, 512
  %call.i.i274 = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i.i) #10
  %add.ptr.i = getelementptr i8, ptr %call.i.i274, i32 %rem
  %90 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sectorsize.i, align 4
  %mul = mul i32 %91, %i.0313
  %add.ptr147 = getelementptr i8, ptr %add.ptr.i, i32 %mul
  %sums149 = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %sums.2, i32 0, i32 3
  %add.ptr151 = getelementptr i8, ptr %sums149, i32 %index.2
  %call152 = call i32 @crypto_shash_digest(ptr noundef nonnull %__shash_desc, ptr noundef %add.ptr147, i32 noundef %91, ptr noundef %add.ptr151) #10
  call void @kunmap_local_indexed(ptr noundef %add.ptr.i) #10
  %92 = ptrtoint ptr %csum_size.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %csum_size.i, align 4
  %add159 = add i32 %93, %index.2
  %94 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sectorsize.i, align 4
  %conv161 = zext i32 %95 to i64
  %add162 = add i64 %offset.3314, %conv161
  %add164 = add i32 %95, %this_sum_bytes.2
  %add166 = add i32 %95, %total_bytes.1311
  %inc = add nuw nsw i32 %i.0313, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %if.end144.for.inc167_crit_edge, label %if.end144.for.body91_crit_edge

if.end144.for.body91_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body91

if.end144.for.inc167_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc167

for.inc167:                                       ; preds = %if.end144.for.inc167_crit_edge, %if.end84.for.inc167_crit_edge
  %index.1.lcssa = phi i32 [ %index.0326, %if.end84.for.inc167_crit_edge ], [ %add159, %if.end144.for.inc167_crit_edge ]
  %total_bytes.1.lcssa = phi i32 [ %total_bytes.0327, %if.end84.for.inc167_crit_edge ], [ %add166, %if.end144.for.inc167_crit_edge ]
  %this_sum_bytes.1.lcssa = phi i32 [ %this_sum_bytes.0328, %if.end84.for.inc167_crit_edge ], [ %add164, %if.end144.for.inc167_crit_edge ]
  %offset.3.lcssa = phi i64 [ %offset.2, %if.end84.for.inc167_crit_edge ], [ %add162, %if.end144.for.inc167_crit_edge ]
  %ordered.2.lcssa = phi ptr [ %ordered.1, %if.end84.for.inc167_crit_edge ], [ %ordered.3, %if.end144.for.inc167_crit_edge ]
  %sums.1.lcssa = phi ptr [ %sums.0331, %if.end84.for.inc167_crit_edge ], [ %sums.2, %if.end144.for.inc167_crit_edge ]
  %96 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i277 = and i32 %97, 255
  %98 = add nsw i32 %and.i.i277, -3
  %switch.and.i.i = and i32 %98, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %for.inc167.bio_advance_iter_single.exit_crit_edge, label %if.else.i

for.inc167.bio_advance_iter_single.exit_crit_edge: ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i = add i32 %45, %iter.sroa.16.0323
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %100, i32 %iter.sroa.10.0324, i32 1
  %101 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %102)
  %cmp.i.i = icmp eq i32 %add.i.i, %102
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select288 = add i32 %iter.sroa.10.0324, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %for.inc167.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.16.1 = phi i32 [ %iter.sroa.16.0323, %for.inc167.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.0324, %for.inc167.bio_advance_iter_single.exit_crit_edge ], [ %spec.select288, %if.else.i ]
  %sub.i.i = sub i32 %iter.sroa.6.0325, %45
  %tobool12.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool12.not, label %bio_advance_iter_single.exit.for.end169_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

bio_advance_iter_single.exit.for.end169_crit_edge: ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end169

for.end169:                                       ; preds = %bio_advance_iter_single.exit.for.end169_crit_edge, %if.end.for.end169_crit_edge
  %ordered.0.lcssa = phi ptr [ null, %if.end.for.end169_crit_edge ], [ %ordered.2.lcssa, %bio_advance_iter_single.exit.for.end169_crit_edge ]
  %sums.0.lcssa = phi ptr [ %call.i.i, %if.end.for.end169_crit_edge ], [ %sums.1.lcssa, %bio_advance_iter_single.exit.for.end169_crit_edge ]
  call void @btrfs_add_ordered_sum(ptr noundef %ordered.0.lcssa, ptr noundef %sums.0.lcssa) #10
  call void @btrfs_put_ordered_extent(ptr noundef %ordered.0.lcssa) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end169, %btrfs_ino.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 10, %btrfs_ino.exit ], [ 0, %for.end169 ], [ 9, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #10
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lookup_ordered_extent(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_add_ordered_sum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_ordered_extent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_del_csums(ptr noundef %trans, ptr noundef %root, i64 noundef %bytenr, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i292 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #10
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %add = add i64 %len, %bytenr
  %csum_size2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 169
  %4 = ptrtoint ptr %csum_size2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %csum_size2, align 4
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 168
  %6 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sectorsize_bits, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %8 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i64 %9, label %cond.false [
    i64 -6, label %entry.cond.end_crit_edge
    i64 7, label %entry.cond.end_crit_edge320
  ]

entry.cond.end_crit_edge320:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.10, i32 noundef 808) #13
  unreachable

cond.end:                                         ; preds = %entry.cond.end_crit_edge, %entry.cond.end_crit_edge320
  %call = tail call ptr @btrfs_alloc_path() #10
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %cond.end.cleanup201_crit_edge, label %while.cond.preheader

cond.end.cleanup201_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

while.cond.preheader:                             ; preds = %cond.end
  %sub = add i64 %add, -1
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %10 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %sh_prom = zext i32 %7 to i64
  %12 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i292, i32 0, i32 1
  %13 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i292, i32 0, i32 2
  %shr116 = lshr i64 %len, %sh_prom
  %14 = trunc i64 %shr116 to i32
  %conv119 = mul i32 %5, %14
  br label %while.cond

while.cond:                                       ; preds = %if.end199, %while.cond.preheader
  %15 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -10, ptr %key, align 8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %sub, ptr %3, align 1
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %2, align 8
  %call9 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef -1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %while.cond
  %18 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp12 = icmp eq i32 %19, 0
  br i1 %cmp12, label %if.then11.while.end200_crit_edge, label %if.end14

if.then11.while.end200_crit_edge:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end200

if.end14:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %19, -1
  %20 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec, ptr %slots, align 4
  br label %if.end20

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp17 = icmp slt i32 %call9, 0
  br i1 %cmp17, label %if.else.while.end200_crit_edge, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else.while.end200_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end200

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.end14
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  %23 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %mul.i.i.i.i = mul i32 %24, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %25 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %22, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %11, align 1
  %28 = call i64 @llvm.bswap.i64(i64 %27) #10
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %3, align 1
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %10, align 8
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %2, align 8
  %33 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %disk_key.i, align 8
  %35 = call i64 @llvm.bswap.i64(i64 %34) #10
  %36 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -648518346341351425, i64 %34)
  %cmp25.not = icmp eq i64 %34, -648518346341351425
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %31)
  %cmp27.not = icmp eq i8 %31, -128
  %or.cond311 = select i1 %cmp25.not, i1 %cmp27.not, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %add)
  %cmp32.not = icmp ult i64 %28, %add
  %or.cond312 = select i1 %or.cond311, i1 %cmp32.not, i1 false
  br i1 %or.cond312, label %if.end35, label %if.end20.while.end200_crit_edge

if.end20.while.end200_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end200

if.end35:                                         ; preds = %if.end20
  %37 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %38, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %39 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %22, ptr noundef %39, i32 noundef 21) #10
  %div = udiv i32 %call.i.i, %5
  %conv39 = zext i32 %div to i64
  %shl = shl i64 %conv39, %sh_prom
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %3, align 1
  %add41 = add i64 %shl, %41
  call void @__sanitizer_cov_trace_cmp8(i64 %add41, i64 %bytenr)
  %cmp42.not = icmp ugt i64 %add41, %bytenr
  br i1 %cmp42.not, label %if.end45, label %if.end35.while.end200_crit_edge

if.end35.while.end200_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end200

if.end45:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %bytenr)
  %cmp47.not = icmp ult i64 %41, %bytenr
  call void @__sanitizer_cov_trace_cmp8(i64 %add41, i64 %add)
  %cmp49.not = icmp ugt i64 %add41, %add
  %or.cond = select i1 %cmp47.not, i1 true, i1 %cmp49.not
  br i1 %or.cond, label %if.else102, label %if.then51

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %bytenr)
  %cmp53 = icmp ugt i64 %41, %bytenr
  br i1 %cmp53, label %land.lhs.true55, label %if.then51.if.end87_crit_edge

if.then51.if.end87_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

land.lhs.true55:                                  ; preds = %if.then51
  %42 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp58 = icmp sgt i32 %43, 0
  br i1 %cmp58, label %while.cond64.preheader, label %land.lhs.true55.if.end87_crit_edge

land.lhs.true55.if.end87_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

while.cond64.preheader:                           ; preds = %land.lhs.true55
  %44 = add nuw i32 %43, 1
  br label %while.body67

while.body67:                                     ; preds = %cleanup.while.body67_crit_edge, %while.cond64.preheader
  %slot.0318.in = phi i32 [ %43, %while.cond64.preheader ], [ %slot.0318, %cleanup.while.body67_crit_edge ]
  %del_nr.0317 = phi i32 [ 1, %while.cond64.preheader ], [ %inc, %cleanup.while.body67_crit_edge ]
  %slot.0318 = add nsw i32 %slot.0318.in, -1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i292) #10
  %mul.i.i.i.i293 = mul i32 %slot.0318, 25
  %add.i.i.i.i294 = add i32 %mul.i.i.i.i293, 101
  %45 = call ptr @memset(ptr %disk_key.i292, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %22, ptr noundef nonnull %disk_key.i292, i32 noundef %add.i.i.i.i294, i32 noundef 17) #10
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %13, align 1
  %48 = call i64 @llvm.bswap.i64(i64 %47) #10
  %49 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %12, align 8
  %51 = ptrtoint ptr %disk_key.i292 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %disk_key.i292, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i292) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %bytenr)
  %cmp69 = icmp uge i64 %48, %bytenr
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %50)
  %cmp74.not = icmp eq i8 %50, -128
  %or.cond313 = select i1 %cmp69, i1 %cmp74.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 -648518346341351425, i64 %52)
  %cmp78.not = icmp eq i64 %52, -648518346341351425
  %or.cond314 = select i1 %or.cond313, i1 %cmp78.not, i1 false
  br i1 %or.cond314, label %cleanup, label %while.body67.if.end87_crit_edge

while.body67.if.end87_crit_edge:                  ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

cleanup:                                          ; preds = %while.body67
  %53 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %slot.0318, ptr %slots, align 4
  %inc = add nuw i32 %del_nr.0317, 1
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %48, ptr %3, align 1
  %exitcond.not = icmp eq i32 %del_nr.0317, %43
  br i1 %exitcond.not, label %cleanup.if.end87_crit_edge, label %cleanup.while.body67_crit_edge

cleanup.while.body67_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body67

cleanup.if.end87_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.end87:                                         ; preds = %cleanup.if.end87_crit_edge, %while.body67.if.end87_crit_edge, %land.lhs.true55.if.end87_crit_edge, %if.then51.if.end87_crit_edge
  %del_nr.3 = phi i32 [ 1, %land.lhs.true55.if.end87_crit_edge ], [ 1, %if.then51.if.end87_crit_edge ], [ %44, %cleanup.if.end87_crit_edge ], [ %del_nr.0317, %while.body67.if.end87_crit_edge ]
  %55 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %slots, align 4
  %call90 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call, i32 noundef %56, i32 noundef %del_nr.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end87.while.end200_crit_edge

if.end87.while.end200_crit_edge:                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end200

if.end93:                                         ; preds = %if.end87
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %3, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %bytenr)
  %cmp95 = icmp eq i64 %58, %bytenr
  br i1 %cmp95, label %if.end93.while.end200_crit_edge, label %if.end93.if.end199_crit_edge

if.end93.if.end199_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.end93.while.end200_crit_edge:                  ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end200

if.else102:                                       ; preds = %if.end45
  %or.cond290 = select i1 %cmp47.not, i1 %cmp49.not, i1 false
  br i1 %or.cond290, label %if.then109, label %if.else192

if.then109:                                       ; preds = %if.else102
  %sub112 = sub i64 %bytenr, %41
  %shr = lshr i64 %sub112, %sh_prom
  %conv114 = trunc i64 %shr to i32
  %mul = mul i32 %5, %conv114
  %59 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %slots, align 4
  %mul.i.i.i297 = mul i32 %60, 25
  %add.i.i.i298 = add i32 %mul.i.i.i297, 101
  %61 = inttoptr i32 %add.i.i.i298 to ptr
  %call.i.i299 = call i32 @btrfs_get_32(ptr noundef %22, ptr noundef %61, i32 noundef 17) #10
  %add123 = add i32 %mul, 101
  %add124 = add i32 %add123, %call.i.i299
  call void @memzero_extent_buffer(ptr noundef %22, i32 noundef %add124, i32 noundef %conv119) #10
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %bytenr, ptr %3, align 1
  %call126 = call i32 @btrfs_split_item(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call, ptr noundef nonnull %key, i32 noundef %mul) #10
  %63 = zext i32 %call126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call126, label %do.body [
    i32 0, label %if.then109.cleanup187.thread_crit_edge
    i32 -11, label %if.then109.cleanup187.thread_crit_edge321
  ]

if.then109.cleanup187.thread_crit_edge321:        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup187.thread

if.then109.cleanup187.thread_crit_edge:           ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup187.thread

do.body:                                          ; preds = %if.then109
  %64 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %65, i32 0, i32 149
  %call133 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %do.body.cleanup187_crit_edge

do.body.cleanup187_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup187

if.then135:                                       ; preds = %do.body
  %66 = zext i32 %call126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call126, label %do.end [
    i32 -5, label %if.then135.do.body165_crit_edge
    i32 -30, label %if.then135.do.body165_crit_edge322
  ]

if.then135.do.body165_crit_edge322:               ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body165

if.then135.do.body165_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body165

do.end:                                           ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 921, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %call126) #10
  br label %cleanup187

do.body165:                                       ; preds = %if.then135.do.body165_crit_edge, %if.then135.do.body165_crit_edge322
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_del_csums.__UNIQUE_ID_ddebug949, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_del_csums, %if.then175)) #10
          to label %cleanup187 [label %if.then175], !srcloc !68

if.then175:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %68, ptr noundef nonnull @.str.15, i32 noundef %call126) #14
  br label %cleanup187

cleanup187.thread:                                ; preds = %if.then109.cleanup187.thread_crit_edge, %if.then109.cleanup187.thread_crit_edge321
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %sub, ptr %3, align 1
  br label %if.end199

cleanup187:                                       ; preds = %if.then175, %do.body165, %do.end, %do.body.cleanup187_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.13, i32 noundef 921, i32 noundef %call126) #14
  br label %while.end200

if.else192:                                       ; preds = %if.else102
  call fastcc void @truncate_one_csum(ptr noundef %1, ptr noundef nonnull %call, ptr noundef nonnull %key, i64 noundef %bytenr, i64 noundef %len)
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %3, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %bytenr)
  %cmp194 = icmp ult i64 %71, %bytenr
  br i1 %cmp194, label %if.else192.while.end200_crit_edge, label %if.else192.if.end199_crit_edge

if.else192.if.end199_crit_edge:                   ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.else192.while.end200_crit_edge:                ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end200

if.end199:                                        ; preds = %if.else192.if.end199_crit_edge, %cleanup187.thread, %if.end93.if.end199_crit_edge
  call void @btrfs_release_path(ptr noundef nonnull %call) #10
  br label %while.cond

while.end200:                                     ; preds = %if.else192.while.end200_crit_edge, %cleanup187, %if.end93.while.end200_crit_edge, %if.end87.while.end200_crit_edge, %if.end35.while.end200_crit_edge, %if.end20.while.end200_crit_edge, %if.else.while.end200_crit_edge, %if.then11.while.end200_crit_edge
  %ret.2 = phi i32 [ %call126, %cleanup187 ], [ 0, %if.end93.while.end200_crit_edge ], [ %call90, %if.end87.while.end200_crit_edge ], [ %call9, %if.else.while.end200_crit_edge ], [ 0, %if.else192.while.end200_crit_edge ], [ 0, %if.end35.while.end200_crit_edge ], [ 0, %if.end20.while.end200_crit_edge ], [ 0, %if.then11.while.end200_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #10
  br label %cleanup201

cleanup201:                                       ; preds = %while.end200, %cond.end.cleanup201_crit_edge
  %retval.0 = phi i32 [ %ret.2, %while.end200 ], [ -12, %cond.end.cleanup201_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memzero_extent_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_split_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @truncate_one_csum(ptr noundef %fs_info, ptr noundef %path, ptr noundef %key, i64 noundef %bytenr, i64 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %csum_size1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 169
  %0 = ptrtoint ptr %csum_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %csum_size1, align 4
  %add = add i64 %len, %bytenr
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %2 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sectorsize_bits, align 8
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %6 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %7, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %8 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %5, ptr noundef %8, i32 noundef 21) #10
  %div = udiv i32 %call.i.i, %1
  %conv = zext i32 %div to i64
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %conv, %sh_prom
  %offset = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %offset, align 1
  %add3 = add i64 %shl, %10
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %bytenr)
  %cmp = icmp uge i64 %10, %bytenr
  call void @__sanitizer_cov_trace_cmp8(i64 %add3, i64 %add)
  %cmp6.not = icmp ugt i64 %add3, %add
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i64 %bytenr, %10
  %shr = lshr i64 %sub, %sh_prom
  %conv10 = trunc i64 %shr to i32
  %mul = mul i32 %1, %conv10
  tail call void @btrfs_truncate_item(ptr noundef %path, i32 noundef %mul, i32 noundef 1) #10
  br label %if.end33

if.else:                                          ; preds = %entry
  %or.cond64 = select i1 %cmp, i1 %cmp6.not, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %10)
  %cmp19 = icmp ugt i64 %add, %10
  %or.cond65 = and i1 %cmp19, %or.cond64
  br i1 %or.cond65, label %if.then21, label %do.body

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sub23 = sub i64 %add3, %add
  %shr25 = lshr i64 %sub23, %sh_prom
  %conv26 = trunc i64 %shr25 to i32
  %mul27 = mul i32 %1, %conv26
  tail call void @btrfs_truncate_item(ptr noundef %path, i32 noundef %mul27, i32 noundef 0) #10
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %add, ptr %offset, align 1
  tail call void @btrfs_set_item_key_safe(ptr noundef %fs_info, ptr noundef %path, ptr noundef %key) #10
  br label %if.end33

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file-item.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 786, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

if.end33:                                         ; preds = %if.then21, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_csum_file_blocks(ptr noundef %trans, ptr noundef %root, ptr noundef %sums) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %disk_key.i549 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %file_key = alloca %struct.btrfs_key, align 8
  %next_offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %file_key) #10
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %file_key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %file_key, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_offset) #10
  %csum_size2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 169
  %4 = ptrtoint ptr %csum_size2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %csum_size2, align 4
  %call = tail call ptr @btrfs_alloc_path() #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup361_crit_edge, label %again.preheader

entry.cleanup361_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup361

again.preheader:                                  ; preds = %entry
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %6 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 168
  %search_for_extension = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 5
  %7 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i549, i32 0, i32 1
  %8 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i549, i32 0, i32 2
  %len = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %sums, i32 0, i32 1
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %9 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %sums344 = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %sums, i32 0, i32 3
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  br label %again

again:                                            ; preds = %if.then357, %again.preheader
  %index.0 = phi i32 [ %add346, %if.then357 ], [ 0, %again.preheader ]
  %total_bytes.0 = phi i64 [ %add350, %if.then357 ], [ 0, %again.preheader ]
  %12 = ptrtoint ptr %next_offset to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %next_offset, align 8
  %13 = ptrtoint ptr %sums to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sums, align 8
  %add = add i64 %14, %total_bytes.0
  %15 = ptrtoint ptr %file_key to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -10, ptr %file_key, align 8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %add, ptr %3, align 1
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %2, align 8
  %call4 = call fastcc ptr @btrfs_lookup_csum(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call, i64 noundef %add, i32 noundef 1)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end13, label %if.then6

if.then6:                                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %20 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %21, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %22 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %19, ptr noundef %22, i32 noundef 17) #10
  %add9 = add i32 %call.i.i, 101
  %23 = inttoptr i32 %add9 to ptr
  %24 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots, align 4
  %mul.i.i.i543 = mul i32 %25, 25
  %add.i.i.i544 = add i32 %mul.i.i.i543, 101
  %26 = inttoptr i32 %add.i.i.i544 to ptr
  %call.i.i545 = call i32 @btrfs_get_32(ptr noundef %19, ptr noundef %26, i32 noundef 21) #10
  %add.ptr = getelementptr i8, ptr %23, i32 %call.i.i545
  br label %found

if.end13:                                         ; preds = %again
  %27 = ptrtoint ptr %call4 to i32
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %27, label %out.loopexit.split.loop.exit [
    i32 -27, label %if.then19
    i32 -2, label %if.else
  ]

if.then19:                                        ; preds = %if.end13
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call, align 4
  %31 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slots, align 4
  %mul.i.i.i546 = mul i32 %32, 25
  %add.i.i.i547 = add i32 %mul.i.i.i546, 101
  %33 = inttoptr i32 %add.i.i.i547 to ptr
  %call.i.i548 = call i32 @btrfs_get_32(ptr noundef %30, ptr noundef %33, i32 noundef 21) #10
  %div = udiv i32 %call.i.i548, %5
  %34 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nodesize.i, align 8
  %sub = add i32 %35, -151
  %div26 = udiv i32 %sub, %5
  %sub27 = add i32 %div26, -1
  %36 = call i32 @llvm.umin.i32(i32 %sub27, i32 4096)
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %36)
  %cmp29.not = icmp ult i32 %div, %36
  br i1 %cmp29.not, label %if.end36, label %if.then19.insert.thread_crit_edge

if.then19.insert.thread_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %insert.thread

if.else:                                          ; preds = %if.end13
  %call32 = call fastcc i32 @find_next_csum_offset(ptr noundef %root, ptr noundef nonnull %call, ptr noundef nonnull %next_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.else.out_crit_edge, label %if.else.if.then225_crit_edge

if.else.if.then225_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then225

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end36:                                         ; preds = %if.then19
  %call37 = call i32 @btrfs_leaf_free_space(ptr noundef %30) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call37, i32 %5)
  %cmp38.not = icmp ult i32 %call37, %5
  br i1 %cmp38.not, label %if.end44, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %mul.i.i.i.i = mul i32 %38, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %39 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %30, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %6, align 1
  %42 = call i64 @llvm.bswap.i64(i64 %41) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  %sub43 = sub i64 %add, %42
  %43 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom = zext i32 %44 to i64
  %shr = lshr i64 %sub43, %sh_prom
  br label %extend_csum

if.end44:                                         ; preds = %if.end36
  call void @btrfs_release_path(ptr noundef nonnull %call) #10
  %45 = ptrtoint ptr %search_for_extension to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %search_for_extension, align 2
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %search_for_extension, align 2
  %call45 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %file_key, ptr noundef nonnull %call, i32 noundef %5, i32 noundef 1) #10
  %46 = ptrtoint ptr %search_for_extension to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load47 = load i8, ptr %search_for_extension, align 2
  %bf.clear48 = and i8 %bf.load47, -3
  store i8 %bf.clear48, ptr %search_for_extension, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp50 = icmp slt i32 %call45, 0
  br i1 %cmp50, label %if.end44.out_crit_edge, label %if.end52

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp53.not = icmp eq i32 %call45, 0
  br i1 %cmp53.not, label %if.end52.if.end62_crit_edge, label %if.then54

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then54:                                        ; preds = %if.end52
  %47 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp57 = icmp eq i32 %48, 0
  br i1 %cmp57, label %if.then54.insert.thread_crit_edge, label %if.end59

if.then54.insert.thread_crit_edge:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %insert.thread

if.end59:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %48, -1
  %49 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dec, ptr %slots, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end59, %if.end52.if.end62_crit_edge
  %50 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call, align 4
  %52 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i549) #10
  %mul.i.i.i.i550 = mul i32 %53, 25
  %add.i.i.i.i551 = add i32 %mul.i.i.i.i550, 101
  %54 = call ptr @memset(ptr %disk_key.i549, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %51, ptr noundef nonnull %disk_key.i549, i32 noundef %add.i.i.i.i551, i32 noundef 17) #10
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %8, align 1
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %7, align 8
  %59 = ptrtoint ptr %disk_key.i549 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %disk_key.i549, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i549) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %58)
  %cmp73.not = icmp eq i8 %58, -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 -648518346341351425, i64 %60)
  %cmp76.not = icmp eq i64 %60, -648518346341351425
  %or.cond = select i1 %cmp73.not, i1 %cmp76.not, i1 false
  br i1 %or.cond, label %lor.lhs.false78, label %if.end62.insert.thread_crit_edge

if.end62.insert.thread_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %insert.thread

lor.lhs.false78:                                  ; preds = %if.end62
  %61 = call i64 @llvm.bswap.i64(i64 %56) #10
  %sub68 = sub i64 %add, %61
  %62 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom70 = zext i32 %63 to i64
  %shr71 = lshr i64 %sub68, %sh_prom70
  %64 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nodesize.i, align 8
  %sub80 = add i32 %65, -151
  %div81 = udiv i32 %sub80, %5
  %sub82 = add i32 %div81, -1
  %66 = call i32 @llvm.umin.i32(i32 %sub82, i32 4096)
  %conv90 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr71, i64 %conv90)
  %cmp91.not = icmp ult i64 %shr71, %conv90
  br i1 %cmp91.not, label %lor.lhs.false78.extend_csum_crit_edge, label %lor.lhs.false78.insert.thread_crit_edge

lor.lhs.false78.insert.thread_crit_edge:          ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #12
  br label %insert.thread

lor.lhs.false78.extend_csum_crit_edge:            ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #12
  br label %extend_csum

extend_csum:                                      ; preds = %lor.lhs.false78.extend_csum_crit_edge, %if.then39
  %csum_offset.0 = phi i64 [ %shr, %if.then39 ], [ %shr71, %lor.lhs.false78.extend_csum_crit_edge ]
  %leaf.0 = phi ptr [ %30, %if.then39 ], [ %51, %lor.lhs.false78.extend_csum_crit_edge ]
  %67 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %slots, align 4
  %mul.i.i.i556 = mul i32 %68, 25
  %add.i.i.i557 = add i32 %mul.i.i.i556, 101
  %69 = inttoptr i32 %add.i.i.i557 to ptr
  %call.i.i558 = call i32 @btrfs_get_32(ptr noundef %leaf.0, ptr noundef %69, i32 noundef 21) #10
  %div98 = udiv i32 %call.i.i558, %5
  %conv99 = zext i32 %div98 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %csum_offset.0, i64 %conv99)
  %cmp100 = icmp eq i64 %csum_offset.0, %conv99
  br i1 %cmp100, label %if.then102, label %extend_csum.insert.thread_crit_edge

extend_csum.insert.thread_crit_edge:              ; preds = %extend_csum
  call void @__sanitizer_cov_trace_pc() #12
  br label %insert.thread

if.then102:                                       ; preds = %extend_csum
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 8
  %conv104 = sext i32 %71 to i64
  %sub105 = sub i64 %conv104, %total_bytes.0
  %72 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom107 = zext i32 %73 to i64
  %shr108 = lshr i64 %sub105, %sh_prom107
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr108)
  %cmp109 = icmp eq i64 %shr108, 0
  br i1 %cmp109, label %do.end, label %if.then102.if.end125_crit_edge, !prof !58

if.then102.if.end125_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

do.end:                                           ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1084, i32 noundef 9, ptr noundef null) #10
  br label %if.end125

if.end125:                                        ; preds = %do.end, %if.then102.if.end125_crit_edge
  %conv133 = trunc i64 %shr108 to i32
  %74 = call i32 @llvm.smax.i32(i32 %conv133, i32 1)
  %75 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %76)
  %cmp142 = icmp eq i64 %76, -6
  br i1 %cmp142, label %if.then144, label %if.end125.cleanup219_crit_edge

if.end125.cleanup219_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup219

if.then144:                                       ; preds = %if.end125
  %77 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %slots, align 4
  %add147 = add i32 %78, 1
  %79 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %82) #10
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %80, align 8
  %conv.i = trunc i64 %84 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %85 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %nritems.i, align 1
  %87 = call i32 @llvm.bswap.i32(i32 %86) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %add147, i32 %87)
  %cmp151.not = icmp ult i32 %add147, %87
  %call160 = call fastcc i32 @find_next_csum_offset(ptr noundef %root, ptr noundef nonnull %call, ptr noundef nonnull %next_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp151.not, label %if.end159, label %if.then153

if.then153:                                       ; preds = %if.then144
  br i1 %cmp161, label %if.then153.out_crit_edge, label %if.then153.if.then225_crit_edge

if.then153.if.then225_crit_edge:                  ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then225

if.then153.out_crit_edge:                         ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end159:                                        ; preds = %if.then144
  br i1 %cmp161, label %if.end159.out_crit_edge, label %if.end164

if.end159.out_crit_edge:                          ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end164:                                        ; preds = %if.end159
  %88 = ptrtoint ptr %next_offset to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %next_offset, align 8
  %sub165 = sub i64 %89, %add
  %90 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom167 = zext i32 %91 to i64
  %shr168 = lshr i64 %sub165, %sh_prom167
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %shr168)
  %cmp169 = icmp ult i64 %shr168, 2147483648
  br i1 %cmp169, label %if.then171, label %if.end164.cleanup219_crit_edge

if.end164.cleanup219_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup219

if.then171:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  %conv172 = trunc i64 %shr168 to i32
  %92 = call i32 @llvm.umin.i32(i32 %74, i32 %conv172)
  br label %cleanup219

cleanup219:                                       ; preds = %if.then171, %if.end164.cleanup219_crit_edge, %if.end125.cleanup219_crit_edge
  %extend_nr.0 = phi i32 [ %92, %if.then171 ], [ %74, %if.end164.cleanup219_crit_edge ], [ %74, %if.end125.cleanup219_crit_edge ]
  %93 = trunc i64 %csum_offset.0 to i32
  %94 = add i32 %extend_nr.0, %93
  %conv185 = mul i32 %94, %5
  %95 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nodesize.i, align 8
  %sub187 = add i32 %96, -151
  %div188 = udiv i32 %sub187, %5
  %sub189 = add i32 %div188, -1
  %97 = call i32 @llvm.umin.i32(i32 %sub189, i32 4096)
  %mul197 = mul i32 %97, %5
  %98 = call i32 @llvm.umin.i32(i32 %conv185, i32 %mul197)
  %99 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %slots, align 4
  %mul.i.i.i561 = mul i32 %100, 25
  %add.i.i.i562 = add i32 %mul.i.i.i561, 101
  %101 = inttoptr i32 %add.i.i.i562 to ptr
  %call.i.i563 = call i32 @btrfs_get_32(ptr noundef %leaf.0, ptr noundef %101, i32 noundef 21) #10
  %sub208 = sub i32 %98, %call.i.i563
  %call209 = call i32 @btrfs_leaf_free_space(ptr noundef %leaf.0) #10
  %102 = call i32 @llvm.umin.i32(i32 %call209, i32 %sub208)
  %103 = urem i32 %102, %5
  %mul218 = sub i32 %102, %103
  call void @btrfs_extend_item(ptr noundef nonnull %call, i32 noundef %mul218) #10
  br label %csum

insert.thread:                                    ; preds = %extend_csum.insert.thread_crit_edge, %lor.lhs.false78.insert.thread_crit_edge, %if.end62.insert.thread_crit_edge, %if.then54.insert.thread_crit_edge, %if.then19.insert.thread_crit_edge
  call void @btrfs_release_path(ptr noundef nonnull %call) #10
  br label %if.end275

if.then225:                                       ; preds = %if.then153.if.then225_crit_edge, %if.else.if.then225_crit_edge
  call void @btrfs_release_path(ptr noundef nonnull %call) #10
  %104 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len, align 8
  %conv228 = sext i32 %105 to i64
  %sub229 = sub i64 %conv228, %total_bytes.0
  %106 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom231 = zext i32 %107 to i64
  %shr232 = lshr i64 %sub229, %sh_prom231
  %108 = ptrtoint ptr %next_offset to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %next_offset, align 8
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 8)
  %111 = load i64, ptr %3, align 1
  %sub234 = sub i64 %109, %111
  %shr237 = lshr i64 %sub234, %sh_prom231
  %112 = call i64 @llvm.umin.i64(i64 %shr232, i64 %shr237)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %112)
  %cmp246 = icmp eq i64 %112, 0
  %cond251 = select i1 %cmp246, i64 1, i64 %112
  %113 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nodesize.i, align 8
  %sub253 = add i32 %114, -151
  %div254 = udiv i32 %sub253, %5
  %sub255 = add i32 %div254, -1
  %115 = call i32 @llvm.umin.i32(i32 %sub255, i32 4096)
  %conv263 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond251, i64 %conv263)
  %cmp265 = icmp ult i64 %cond251, %conv263
  %extract.t539 = trunc i64 %cond251 to i32
  %cond270.off0 = select i1 %cmp265, i32 %extract.t539, i32 %115
  %conv273 = mul i32 %cond270.off0, %5
  br label %if.end275

if.end275:                                        ; preds = %if.then225, %insert.thread
  %ins_size.0 = phi i32 [ %conv273, %if.then225 ], [ %5, %insert.thread ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %116 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %ins_size.0, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #10
  %117 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %file_key, ptr %batch.i, align 4
  %118 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %data_size.addr.i, ptr %9, align 4
  %119 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %ins_size.0, ptr %10, align 4
  %120 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %11, align 4
  %call.i566 = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call, ptr noundef nonnull %batch.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i566)
  %cmp277 = icmp slt i32 %call.i566, 0
  br i1 %cmp277, label %if.end275.out_crit_edge, label %if.end280

if.end275.out_crit_edge:                          ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end280:                                        ; preds = %if.end275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i566)
  %cmp282.not = icmp eq i32 %call.i566, 0
  br i1 %cmp282.not, label %if.end315.critedge, label %do.end299, !prof !64

do.end299:                                        ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1162, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end315.critedge:                               ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call, align 4
  br label %csum

csum:                                             ; preds = %if.end315.critedge, %cleanup219
  %csum_offset.1.off0 = phi i32 [ 0, %if.end315.critedge ], [ %93, %cleanup219 ]
  %leaf.1 = phi ptr [ %122, %if.end315.critedge ], [ %leaf.0, %cleanup219 ]
  %123 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %slots, align 4
  %mul.i.i.i567 = mul i32 %124, 25
  %add.i.i.i568 = add i32 %mul.i.i.i567, 101
  %125 = inttoptr i32 %add.i.i.i568 to ptr
  %call.i.i569 = call i32 @btrfs_get_32(ptr noundef %leaf.1, ptr noundef %125, i32 noundef 17) #10
  %add321 = add i32 %call.i.i569, 101
  %126 = inttoptr i32 %add321 to ptr
  %127 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %slots, align 4
  %mul.i.i.i570 = mul i32 %128, 25
  %add.i.i.i571 = add i32 %mul.i.i.i570, 101
  %129 = inttoptr i32 %add.i.i.i571 to ptr
  %call.i.i572 = call i32 @btrfs_get_32(ptr noundef %leaf.1, ptr noundef %129, i32 noundef 21) #10
  %add.ptr325 = getelementptr i8, ptr %126, i32 %call.i.i572
  %idx.ext = mul i32 %csum_offset.1.off0, %5
  %add.ptr328 = getelementptr i8, ptr %126, i32 %idx.ext
  br label %found

found:                                            ; preds = %csum, %if.then6
  %leaf.2 = phi ptr [ %leaf.1, %csum ], [ %19, %if.then6 ]
  %item_end.0 = phi ptr [ %add.ptr325, %csum ], [ %add.ptr, %if.then6 ]
  %item.0 = phi ptr [ %add.ptr328, %csum ], [ %call4, %if.then6 ]
  %130 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len, align 8
  %132 = trunc i64 %total_bytes.0 to i32
  %conv332 = sub i32 %131, %132
  %133 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %sectorsize_bits, align 8
  %shr334 = lshr i32 %conv332, %134
  %mul335 = mul i32 %shr334, %5
  %135 = ptrtoint ptr %item_end.0 to i32
  %136 = ptrtoint ptr %item.0 to i32
  %sub336 = sub i32 %135, %136
  %137 = call i32 @llvm.umin.i32(i32 %sub336, i32 %mul335)
  %add.ptr345 = getelementptr i8, ptr %sums344, i32 %index.0
  call void @write_extent_buffer(ptr noundef %leaf.2, ptr noundef %add.ptr345, i32 noundef %136, i32 noundef %137) #10
  %div347 = udiv i32 %137, %5
  %138 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sectorsize, align 4
  %mul348 = mul i32 %139, %div347
  %conv349 = zext i32 %mul348 to i64
  %add350 = add i64 %total_bytes.0, %conv349
  %140 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %call, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %141) #10
  %142 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len, align 8
  %conv354 = sext i32 %143 to i64
  %cmp355 = icmp ult i64 %add350, %conv354
  br i1 %cmp355, label %if.then357, label %found.out_crit_edge

found.out_crit_edge:                              ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then357:                                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  %add346 = add i32 %137, %index.0
  call void @btrfs_release_path(ptr noundef nonnull %call) #10
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 1186, i32 noundef 0) #10
  %call.i573 = call i32 @__cond_resched() #10
  br label %again

out.loopexit.split.loop.exit:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %call4 to i32
  br label %out

out:                                              ; preds = %out.loopexit.split.loop.exit, %found.out_crit_edge, %do.end299, %if.end275.out_crit_edge, %if.end159.out_crit_edge, %if.then153.out_crit_edge, %if.end44.out_crit_edge, %if.else.out_crit_edge
  %ret.3 = phi i32 [ %call.i566, %do.end299 ], [ %144, %out.loopexit.split.loop.exit ], [ %call160, %if.then153.out_crit_edge ], [ %call160, %if.end159.out_crit_edge ], [ 0, %found.out_crit_edge ], [ %call.i566, %if.end275.out_crit_edge ], [ %call45, %if.end44.out_crit_edge ], [ %call32, %if.else.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #10
  br label %cleanup361

cleanup361:                                       ; preds = %out, %entry.cleanup361_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out ], [ -12, %entry.cleanup361_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_offset) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %file_key) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @btrfs_lookup_csum(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i64 noundef %bytenr, i32 noundef %cow) unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %file_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %file_key) #10
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %file_key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %file_key, i32 0, i32 2
  %csum_size2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 169
  %4 = ptrtoint ptr %csum_size2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %csum_size2, align 4
  %6 = ptrtoint ptr %file_key to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -10, ptr %file_key, align 8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %bytenr, ptr %3, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %2, align 8
  %call = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %file_key, ptr noundef %path, i32 noundef 0, i32 noundef %cow) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end.if.end32_crit_edge, label %if.then4

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then4:                                         ; preds = %if.end
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %11 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6 = icmp eq i32 %12, 0
  br i1 %cmp6, label %if.then4.fail_crit_edge, label %if.end8

if.then4.fail_crit_edge:                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end8:                                          ; preds = %if.then4
  %dec = add i32 %12, -1
  %13 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %14 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %dec, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %16 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %10, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %15, align 1
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %20)
  %cmp14.not = icmp eq i8 %20, -128
  br i1 %cmp14.not, label %if.end17, label %if.end8.fail_crit_edge

if.end8.fail_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end17:                                         ; preds = %if.end8
  %21 = call i64 @llvm.bswap.i64(i64 %18) #10
  %sub = sub i64 %bytenr, %21
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 168
  %22 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom = zext i32 %23 to i64
  %shr = lshr i64 %sub, %sh_prom
  %24 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %25, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %26 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %10, ptr noundef %26, i32 noundef 21) #10
  %div = udiv i32 %call.i.i, %5
  %conv22 = sext i32 %div to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv22)
  %cmp23 = icmp eq i64 %shr, %conv22
  br i1 %cmp23, label %if.end17.fail_crit_edge, label %if.else

if.end17.fail_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv22)
  %cmp27 = icmp ugt i64 %shr, %conv22
  %extract.t = trunc i64 %shr to i32
  br i1 %cmp27, label %if.else.fail_crit_edge, label %if.else.if.end32_crit_edge

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else.fail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end32:                                         ; preds = %if.else.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %csum_offset.0.off0 = phi i32 [ %extract.t, %if.else.if.end32_crit_edge ], [ 0, %if.end.if.end32_crit_edge ]
  %slots33 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %27 = ptrtoint ptr %slots33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slots33, align 4
  %mul.i.i.i70 = mul i32 %28, 25
  %add.i.i.i71 = add i32 %mul.i.i.i70, 101
  %29 = inttoptr i32 %add.i.i.i71 to ptr
  %call.i.i72 = call i32 @btrfs_get_32(ptr noundef %10, ptr noundef %29, i32 noundef 17) #10
  %add = add i32 %call.i.i72, 101
  %30 = inttoptr i32 %add to ptr
  %idx.ext = mul i32 %csum_offset.0.off0, %5
  %add.ptr = getelementptr i8, ptr %30, i32 %idx.ext
  br label %cleanup

fail:                                             ; preds = %if.else.fail_crit_edge, %if.end17.fail_crit_edge, %if.end8.fail_crit_edge, %if.then4.fail_crit_edge, %entry.fail_crit_edge
  %31 = phi i32 [ %call, %entry.fail_crit_edge ], [ -27, %if.end17.fail_crit_edge ], [ -2, %if.then4.fail_crit_edge ], [ -2, %if.end8.fail_crit_edge ], [ -2, %if.else.fail_crit_edge ]
  %32 = inttoptr i32 %31 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end32
  %retval.0 = phi ptr [ %32, %fail ], [ %add.ptr, %if.end32 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %file_key) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_next_csum_offset(ptr noundef %root, ptr noundef %path, ptr nocapture noundef writeonly %next_offset) unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %6 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nritems.i, align 1
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %9 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slots, align 4
  %add = add i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp2.not = icmp ult i32 %add, %8
  br i1 %cmp2.not, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i34 = tail call i32 @btrfs_next_old_leaf(ptr noundef %root, ptr noundef %path, i64 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp4 = icmp slt i32 %call.i34, 0
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.else

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp6.not = icmp eq i32 %call.i34, 0
  br i1 %cmp6.not, label %if.end8, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slots, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %lor.lhs.false.if.end11_crit_edge
  %slot.0 = phi i32 [ %12, %if.end8 ], [ %add, %lor.lhs.false.if.end11_crit_edge ]
  %13 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %15 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %slot.0, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %17 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %14, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %16, align 1
  %20 = call i64 @llvm.bswap.i64(i64 %19) #10
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %15, align 8
  %23 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %disk_key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -648518346341351425, i64 %24)
  %cmp14.not = icmp eq i64 %24, -648518346341351425
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %22)
  %cmp16.not = icmp eq i8 %22, -128
  %or.cond = select i1 %cmp14.not, i1 %cmp16.not, i1 false
  %storemerge = select i1 %or.cond, i64 %20, i64 -1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end11, %if.else.cleanup.sink.split_crit_edge
  %storemerge.sink = phi i64 [ %storemerge, %if.end11 ], [ -1, %if.else.cleanup.sink.split_crit_edge ]
  %25 = ptrtoint ptr %next_offset to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %storemerge.sink, ptr %next_offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i34, %if.then.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_leaf_free_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_extend_item(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_extent_item_to_extent_map(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %path, ptr noundef %fi, i1 noundef zeroext %new_inline, ptr noundef %em) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %6 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slots, align 4
  %call.i = tail call zeroext i8 @btrfs_get_8(ptr noundef %5, ptr noundef %fi, i32 noundef 20) #10
  %call.i122 = tail call zeroext i8 @btrfs_get_8(ptr noundef %5, ptr noundef %fi, i32 noundef 16) #10
  %conv = zext i8 %call.i122 to i32
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %8 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %7, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %9 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %5, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %8, align 1
  %12 = call i64 @llvm.bswap.i64(i64 %11) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  %call6 = call i64 @btrfs_file_extent_end(ptr noundef %path)
  %call.i123 = call i64 @btrfs_get_64(ptr noundef %5, ptr noundef %fi, i32 noundef 8) #10
  %ram_bytes = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 7
  %13 = ptrtoint ptr %ram_bytes to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i123, ptr %ram_bytes, align 8
  %conv8 = zext i8 %call.i to i32
  %14 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %call.i, label %if.else54 [
    i8 1, label %entry.if.then_crit_edge
    i8 2, label %entry.if.then_crit_edge128
    i8 0, label %if.then41
  ]

entry.if.then_crit_edge128:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge128
  %start = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 1
  %15 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %12, ptr %start, align 8
  %sub = sub i64 %call6, %12
  %len = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub, ptr %len, align 8
  %call.i124 = call i64 @btrfs_get_64(ptr noundef %5, ptr noundef %fi, i32 noundef 37) #10
  %sub14 = sub i64 %12, %call.i124
  %orig_start = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 5
  %17 = ptrtoint ptr %orig_start to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sub14, ptr %orig_start, align 8
  %call.i125 = call i64 @btrfs_get_64(ptr noundef %5, ptr noundef %fi, i32 noundef 29) #10
  %orig_block_len = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 6
  %18 = ptrtoint ptr %orig_block_len to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call.i125, ptr %orig_block_len, align 8
  %call.i126 = call i64 @btrfs_get_64(ptr noundef %5, ptr noundef %fi, i32 noundef 21) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i126)
  %cmp17 = icmp eq i64 %call.i126, 0
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %block_start = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 8
  %19 = ptrtoint ptr %block_start to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -3, ptr %block_start, align 8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i122)
  %cmp20.not = icmp eq i8 %call.i122, 0
  br i1 %cmp20.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 11
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  %compress_type23 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 14
  %20 = ptrtoint ptr %compress_type23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %compress_type23, align 4
  %block_start24 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 8
  %21 = ptrtoint ptr %block_start24 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call.i126, ptr %block_start24, align 8
  %22 = ptrtoint ptr %orig_block_len to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %orig_block_len, align 8
  %block_len = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 9
  %24 = ptrtoint ptr %block_len to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %block_len, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i127 = call i64 @btrfs_get_64(ptr noundef %5, ptr noundef %fi, i32 noundef 37) #10
  %add = add i64 %call.i127, %call.i126
  %block_start27 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 8
  %25 = ptrtoint ptr %block_start27 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add, ptr %block_start27, align 8
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %len, align 8
  %block_len29 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 9
  %28 = ptrtoint ptr %block_len29 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %block_len29, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i)
  %cmp31 = icmp eq i8 %call.i, 2
  br i1 %cmp31, label %if.then33, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %flags34 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 11
  call void @_set_bit(i32 noundef 2, ptr noundef %flags34) #10
  br label %cleanup

if.then41:                                        ; preds = %entry
  %block_start42 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 8
  %29 = ptrtoint ptr %block_start42 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -2, ptr %block_start42, align 8
  %start43 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 1
  %30 = ptrtoint ptr %start43 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %12, ptr %start43, align 8
  %sub44 = sub i64 %call6, %12
  %len45 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 2
  %31 = ptrtoint ptr %len45 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %sub44, ptr %len45, align 8
  %orig_start46 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 5
  %32 = ptrtoint ptr %orig_start46 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -3, ptr %orig_start46, align 8
  %block_len47 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 9
  %33 = ptrtoint ptr %block_len47 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 -1, ptr %block_len47, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i122)
  %cmp48.not = icmp eq i8 %call.i122, 0
  %or.cond = select i1 %new_inline, i1 true, i1 %cmp48.not
  br i1 %or.cond, label %if.then41.cleanup_crit_edge, label %if.then50

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then50:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %flags51 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 11
  call void @_set_bit(i32 noundef 1, ptr noundef %flags51) #10
  %compress_type52 = getelementptr inbounds %struct.extent_map, ptr %em, i32 0, i32 14
  %34 = ptrtoint ptr %compress_type52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv, ptr %compress_type52, align 4
  br label %cleanup

if.else54:                                        ; preds = %entry
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %35 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool.not.i = icmp eq i64 %36, 0
  br i1 %tobool.not.i, label %if.else54.if.then.i_crit_edge, label %lor.lhs.false.i

if.else54.if.then.i_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else54
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %38)
  %cmp.i = icmp eq i8 %38, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else54.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %39 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %40 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %36, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %root_key, align 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %conv8, i64 noundef %ino.0.i, i64 noundef %12, i64 noundef %42) #14
  br label %cleanup

cleanup:                                          ; preds = %btrfs_ino.exit, %if.then50, %if.then41.cleanup_crit_edge, %if.then33, %if.else.cleanup_crit_edge, %if.then22, %if.then19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @btrfs_file_extent_end(ptr nocapture noundef readonly %path) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %4 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %3, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %6 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %1, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %5, align 1
  %9 = call i64 @llvm.bswap.i64(i64 %8) #10
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %11)
  %cmp = icmp eq i8 %11, 108
  br i1 %cmp, label %cond.end, label %cond.false, !prof !64

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.17, i32 noundef 1274) #13
  unreachable

cond.end:                                         ; preds = %entry
  %12 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %1, ptr noundef %12, i32 noundef 17) #10
  %add = add i32 %call.i.i, 101
  %13 = inttoptr i32 %add to ptr
  %call.i = call zeroext i8 @btrfs_get_8(ptr noundef %1, ptr noundef %13, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp6 = icmp eq i8 %call.i, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i30 = call i64 @btrfs_get_64(ptr noundef %1, ptr noundef %13, i32 noundef 8) #10
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fs_info, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %15, i32 0, i32 167
  %16 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sectorsize, align 4
  %conv10 = zext i32 %17 to i64
  %sub = add i64 %9, -1
  %add9 = add i64 %sub, %call.i30
  %add11 = add i64 %add9, %conv10
  %neg = sub nsw i64 0, %conv10
  %and = and i64 %add11, %neg
  br label %if.end

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i31 = call i64 @btrfs_get_64(ptr noundef %1, ptr noundef %13, i32 noundef 45) #10
  %add18 = add i64 %call.i31, %9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %end.0 = phi i64 [ %and, %if.then ], [ %add18, %if.else ]
  ret i64 %end.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_16(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_csum_root(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_truncate_item(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_item_key_safe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_get_8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold noreturn }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !38, !39, !41, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/file-item.c", i32 87, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/file-item.c", i32 115, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/file-item.c", i32 397, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/btrfs/file-item.c", i32 452, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/btrfs/file-item.c", i32 486, i32 5}
!11 = !{ptr @btrfs_lookup_bio_sums._rs, !10, !"_rs", i1 false, i1 false}
!12 = !{ptr @__func__.btrfs_lookup_bio_sums, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/file-item.c", i32 513, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/file-item.c", i32 675, i32 5}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/file-item.c", i32 708, i32 5}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/file-item.c", i32 807, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/file-item.c", i32 921, i32 5}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @btrfs_del_csums.__UNIQUE_ID_ddebug949, !23, !"__UNIQUE_ID_ddebug949", i1 false, i1 false}
!28 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/btrfs/file-item.c", i32 1253, i32 3}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/btrfs/file-item.c", i32 1274, i32 2}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @assertfail._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @assertfail._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/btrfs/file-item.c", i32 270, i32 2}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/btrfs/file-item.c", i32 300, i32 2}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/btrfs/file-item.c", i32 343, i32 3}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
!56 = !{i64 984021, i64 984082}
!57 = !{i64 986753}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 987038}
!60 = !{i64 2152589256}
!61 = !{i64 2152589098}
!62 = !{i64 2152589426}
!63 = !{i64 2150175240}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2158420873, i64 2158421355, i64 2158420910, i64 2158420966, i64 2158421000, i64 2158421024, i64 2158421065, i64 2158421086, i64 2158421114, i64 2158421148}
!66 = !{i64 2158606249, i64 2158606734, i64 2158606286, i64 2158606342, i64 2158606376, i64 2158606400, i64 2158606441, i64 2158606462, i64 2158606490, i64 2158606524}
!67 = !{i64 2158678362, i64 2158678847, i64 2158678399, i64 2158678455, i64 2158678489, i64 2158678513, i64 2158678554, i64 2158678575, i64 2158678603, i64 2158678637}
!68 = !{i64 2148403939, i64 2148403944, i64 2148403957, i64 2148404001, i64 2148404035, i64 2148404056}
!69 = !{i64 2158681718, i64 2158682203, i64 2158681755, i64 2158681811, i64 2158681845, i64 2158681869, i64 2158681910, i64 2158681931, i64 2158681959, i64 2158681993}
