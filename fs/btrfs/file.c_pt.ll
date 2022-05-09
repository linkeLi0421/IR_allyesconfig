; ModuleID = '/llk/IR_all_yes/fs/btrfs/file.c_pt.bc'
source_filename = "../fs/btrfs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.iomap_ops = type { ptr, ptr }
%struct.iomap_dio_ops = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.84, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
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
%union.anon.84 = type { i64 }
%struct.btrfs_inode = type { ptr, %struct.btrfs_key, %struct.spinlock, %struct.extent_map_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.mutex, %struct.btrfs_ordered_inode_tree, %struct.list_head, %struct.rb_node, i32, %struct.atomic_t, i64, i64, i64, i32, i32, i64, %union.anon.87, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.btrfs_block_rsv, i32, i32, ptr, %struct.timespec64, %struct.list_head, %struct.rw_semaphore, %struct.inode }
%struct.btrfs_ordered_inode_tree = type { %struct.spinlock, %struct.rb_root, ptr }
%union.anon.87 = type { i64 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.79 = type { ptr }
%struct.inode_defrag = type { %struct.rb_node, i64, i64, i64, i32 }
%struct.btrfs_ioctl_defrag_range_args = type { i64, i64, i64, i32, i32, [4 x i32] }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.extent_map = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, %struct.refcount_struct, i32, %struct.list_head }
%struct.btrfs_ref = type { i32, i32, i8, i64, i64, i64, i64, %union.anon.88 }
%union.anon.88 = type { %struct.btrfs_data_ref }
%struct.btrfs_data_ref = type { i64, i64, i64 }
%struct.btrfs_drop_extents_args = type { ptr, i64, i64, i8, i8, i32, i64, i64, i8 }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.btrfs_log_ctx = type { i32, i32, i8, i8, i64, ptr, %struct.list_head, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.btrfs_replace_extent_info = type { i64, i64, i64, i64, i64, ptr, i8, i32, i32 }
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { ptr }
%union.anon.62 = type { i64 }
%struct.iovec = type { ptr, i32 }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.51, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.btrfs_ordered_extent = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.rb_node, %struct.list_head, %struct.btrfs_work, %struct.completion, %struct.btrfs_work, %struct.list_head, i64, ptr }
%struct.falloc_range = type { %struct.list_head, i64, i64 }
%struct.extent_changeset = type { i32, %struct.ulist }
%struct.ulist = type { i32, %struct.list_head, %struct.rb_root }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }

@btrfs_inode_defrag_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/btrfs/file.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"num_bytes <= U32_MAX\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ret == 0\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"!(args->replace_extent && !args->path)\00", [57 x i8] zeroinitializer }, align 32
@btrfs_drop_extents.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"del_nr == 0\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@btrfs_drop_extents.__UNIQUE_ID_ddebug940 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.8, i8 0, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btrfs_drop_extents\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@btrfs_drop_extents.__UNIQUE_ID_ddebug941 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.8, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"btrfs_mark_extent_written\00", [38 x i8] zeroinitializer }, align 32
@btrfs_mark_extent_written.__UNIQUE_ID_ddebug947 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str, ptr @.str.8, i8 1, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_mark_extent_written.__UNIQUE_ID_ddebug948 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str, ptr @.str.8, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_mark_extent_written.__UNIQUE_ID_ddebug950 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str, ptr @.str.8, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_mark_extent_written.__UNIQUE_ID_ddebug951 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str, ptr @.str.8, i8 1, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_mark_extent_written.__UNIQUE_ID_ddebug952 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str, ptr @.str.8, i8 1, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"list_empty(&ctx.list)\00", [42 x i8] zeroinitializer }, align 32
@btrfs_replace_file_extents.__UNIQUE_ID_ddebug963 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str, ptr @.str.8, i8 2, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"btrfs_replace_file_extents\00", [37 x i8] zeroinitializer }, align 32
@btrfs_replace_file_extents.__UNIQUE_ID_ddebug964 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str, ptr @.str.8, i8 2, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_replace_file_extents.__UNIQUE_ID_ddebug965 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str, ptr @.str.8, i8 2, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_replace_file_extents.__UNIQUE_ID_ddebug966 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str, ptr @.str.8, i8 2, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_replace_file_extents.__UNIQUE_ID_ddebug967 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str, ptr @.str.8, i8 2, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_replace_file_extents.__UNIQUE_ID_ddebug968 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str, ptr @.str.8, i8 2, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_replace_file_extents.__UNIQUE_ID_ddebug969 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str, ptr @.str.8, i8 2, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @btrfs_file_llseek, ptr null, ptr null, ptr @btrfs_file_read_iter, ptr @btrfs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @btrfs_ioctl, ptr null, ptr @btrfs_file_mmap, i32 0, ptr @btrfs_file_open, ptr null, ptr @btrfs_release_file, ptr @btrfs_sync_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @btrfs_fallocate, ptr null, ptr null, ptr @btrfs_remap_file_range, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btrfs_inode_defrag\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_sync_file = external dso_local global %struct.tracepoint, align 4
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_btrfs_sync_file.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"inode_is_locked(ctx->inode)\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/btrfs/tree-log.h\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"btrfs_file_extent_type(leaf, extent) != BTRFS_FILE_EXTENT_INLINE\00", [63 x i8] zeroinitializer }, align 32
@btrfs_dio_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@btrfs_dio_ops = external dso_local constant %struct.iomap_dio_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.32 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"block_len <= U32_MAX\00", [43 x i8] zeroinitializer }, align 32
@btrfs_file_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @btrfs_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"trans != NULL\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IS_ALIGNED(alloc_start, sectorsize)\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967201, i64 4294967268]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"btrfs_inode_defrag_cachep\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 34, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 242, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 466, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 633, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 701, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 755, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 957, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1104, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2342, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2756, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"btrfs_file_operations\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 3771, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 3796, i32 48 }
@___asan_gen_.104 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 49, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 34, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 3491, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 271, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 684, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 108, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"../fs/btrfs/tree-log.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 45, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2625, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 260, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 788, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 452, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 717, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 414, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 421, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"btrfs_file_vm_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2354, i32 42 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 3048, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [19 x i8] c"../fs/btrfs/file.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 3233, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @btrfs_inode_defrag_cachep, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @btrfs_file_operations, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @btrfs_file_vm_ops, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_inode_defrag_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_file_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_inode_defrag(ptr noundef readonly %trans, ptr noundef %inode, i32 noundef %extent_thresh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info2 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info2, align 8
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end, label %btrfs_fs_closing.exit.i

btrfs_fs_closing.exit.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %runtime_flags = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 11
  %10 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %runtime_flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %trans, null
  %last_trans = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 24
  %spec.select = select i1 %tobool7.not, ptr %last_trans, ptr %trans
  %13 = ptrtoint ptr %spec.select to i32
  call void @__asan_load8_noabort(i32 %13)
  %transid.0 = load i64, ptr %spec.select, align 8
  %14 = load ptr, ptr @btrfs_inode_defrag_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 3392) #15
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end6.cleanup_crit_edge, label %if.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %15 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not.i53 = icmp eq i64 %16, 0
  br i1 %tobool.not.i53, label %if.end15.if.then.i_crit_edge, label %lor.lhs.false.i

if.end15.if.then.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end15
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %18)
  %cmp.i = icmp eq i8 %18, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end15.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %19 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %20 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %16, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %ino = getelementptr inbounds %struct.inode_defrag, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %ino.0.i, ptr %ino, align 8
  %transid17 = getelementptr inbounds %struct.inode_defrag, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %transid17 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %transid.0, ptr %transid17, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %root_key, align 1
  %root18 = getelementptr inbounds %struct.inode_defrag, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %root18 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %root18, align 8
  %extent_thresh19 = getelementptr inbounds %struct.inode_defrag, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %extent_thresh19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %extent_thresh, ptr %extent_thresh19, align 8
  %defrag_inodes_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 106
  tail call void @_raw_spin_lock(ptr noundef %defrag_inodes_lock) #15
  %27 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %runtime_flags, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.not = icmp eq i32 %29, 0
  br i1 %tobool22.not, label %if.then23, label %if.else28

if.then23:                                        ; preds = %btrfs_ino.exit
  %30 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %inode, align 8
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fs_info1.i, align 8
  %defrag_inodes.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %33, i32 0, i32 107
  %34 = ptrtoint ptr %defrag_inodes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %defrag_inodes.i, align 4
  %tobool.not57.i = icmp eq ptr %35, null
  br i1 %tobool.not57.i, label %if.then23.__btrfs_add_inode_defrag.exit.thread_crit_edge, label %while.body.lr.ph.i

if.then23.__btrfs_add_inode_defrag.exit.thread_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %__btrfs_add_inode_defrag.exit.thread

while.body.lr.ph.i:                               ; preds = %if.then23
  %36 = ptrtoint ptr %root18 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %root18, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %38 = phi ptr [ %35, %while.body.lr.ph.i ], [ %51, %if.end16.i.while.body.i_crit_edge ]
  %root1.i.i = getelementptr inbounds %struct.inode_defrag, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %root1.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %root1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %40)
  %cmp.i.i = icmp ugt i64 %37, %40
  br i1 %cmp.i.i, label %while.body.i.if.then4.i_crit_edge, label %if.else.i.i

while.body.i.if.then4.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %40)
  %cmp4.i.i = icmp ult i64 %37, %40
  br i1 %cmp4.i.i, label %if.else.i.i.if.then.i55_crit_edge, label %if.else6.i.i

if.else.i.i.if.then.i55_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i55

if.else6.i.i:                                     ; preds = %if.else.i.i
  %41 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ino, align 8
  %ino7.i.i = getelementptr inbounds %struct.inode_defrag, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %ino7.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %ino7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %44)
  %cmp8.i.i = icmp ugt i64 %42, %44
  br i1 %cmp8.i.i, label %if.else6.i.i.if.then4.i_crit_edge, label %__compare_inode_defrag.exit.i

if.else6.i.i.if.then4.i_crit_edge:                ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

__compare_inode_defrag.exit.i:                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %44)
  %cmp13.i.i = icmp ult i64 %42, %44
  br i1 %cmp13.i.i, label %__compare_inode_defrag.exit.i.if.then.i55_crit_edge, label %if.else5.i

__compare_inode_defrag.exit.i.if.then.i55_crit_edge: ; preds = %__compare_inode_defrag.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i55

if.then.i55:                                      ; preds = %__compare_inode_defrag.exit.i.if.then.i55_crit_edge, %if.else.i.i.if.then.i55_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 2
  br label %if.end16.i

if.then4.i:                                       ; preds = %if.else6.i.i.if.then4.i_crit_edge, %while.body.i.if.then4.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 1
  br label %if.end16.i

if.else5.i:                                       ; preds = %__compare_inode_defrag.exit.i
  %45 = ptrtoint ptr %transid17 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %transid17, align 8
  %transid6.i = getelementptr inbounds %struct.inode_defrag, ptr %38, i32 0, i32 2
  %47 = ptrtoint ptr %transid6.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %transid6.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %48)
  %cmp7.i = icmp ult i64 %46, %48
  br i1 %cmp7.i, label %if.then8.i, label %if.else5.i.if.then26_crit_edge

if.else5.i.if.then26_crit_edge:                   ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

if.then8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %transid6.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %46, ptr %transid6.i, align 8
  br label %if.then26

if.end16.i:                                       ; preds = %if.then4.i, %if.then.i55
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i55 ], [ %rb_right.i, %if.then4.i ]
  %50 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i57 = icmp eq ptr %51, null
  br i1 %tobool.not.i57, label %while.cond.while.end_crit_edge.i, label %if.end16.i.while.body.i_crit_edge

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast.le.i = ptrtoint ptr %38 to i32
  br label %__btrfs_add_inode_defrag.exit.thread

__btrfs_add_inode_defrag.exit.thread:             ; preds = %while.cond.while.end_crit_edge.i, %if.then23.__btrfs_add_inode_defrag.exit.thread_crit_edge
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %defrag_inodes.i, %if.then23.__btrfs_add_inode_defrag.exit.thread_crit_edge ]
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then23.__btrfs_add_inode_defrag.exit.thread_crit_edge ]
  tail call void @_set_bit(i32 noundef 2, ptr noundef %runtime_flags) #15
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %parent.0.lcssa.i, ptr %call.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i, i32 0, i32 1
  %53 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i, i32 0, i32 2
  %54 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %rb_left.i.i, align 8
  %55 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call.i, ptr noundef %defrag_inodes.i) #15
  br label %if.end29

if.then26:                                        ; preds = %if.then8.i, %if.else5.i.if.then26_crit_edge
  %56 = ptrtoint ptr %extent_thresh19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %extent_thresh19, align 8
  %extent_thresh11.i = getelementptr inbounds %struct.inode_defrag, ptr %38, i32 0, i32 4
  %58 = ptrtoint ptr %extent_thresh11.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %extent_thresh11.i, align 8
  %60 = tail call i32 @llvm.umin.i32(i32 %57, i32 %59) #15
  %61 = ptrtoint ptr %extent_thresh11.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %extent_thresh11.i, align 8
  %62 = load ptr, ptr @btrfs_inode_defrag_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %62, ptr noundef nonnull %call.i) #15
  br label %if.end29

if.else28:                                        ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #17
  %63 = load ptr, ptr @btrfs_inode_defrag_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %63, ptr noundef nonnull %call.i) #15
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then26, %__btrfs_add_inode_defrag.exit.thread
  tail call void @_raw_spin_unlock(ptr noundef %defrag_inodes_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %btrfs_fs_closing.exit.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %btrfs_fs_closing.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_cleanup_defrag_inodes(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %defrag_inodes_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 106
  tail call void @_raw_spin_lock(ptr noundef %defrag_inodes_lock) #15
  %defrag_inodes = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 107
  %call = tail call ptr @rb_first(ptr noundef %defrag_inodes) #15
  %tobool.not15 = icmp eq ptr %call, null
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %node.016 = phi ptr [ %call6, %while.body.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  tail call void @rb_erase(ptr noundef nonnull %node.016, ptr noundef %defrag_inodes) #15
  %0 = load ptr, ptr @btrfs_inode_defrag_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef nonnull %node.016) #15
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 1) #15
  %call4 = tail call i32 @__cond_resched_lock(ptr noundef %defrag_inodes_lock) #15
  %call6 = tail call ptr @rb_first(ptr noundef %defrag_inodes) #15
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %defrag_inodes_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_run_defrag_inodes(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %range.i = alloca %struct.btrfs_ioctl_defrag_range_args, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %defrag_running = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 108
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %defrag_running, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %defrag_running, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %defrag_running, ptr %defrag_running, i32 1, ptr elementtype(i32) %defrag_running) #15, !srcloc !121
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %1 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %fs_state, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not48 = icmp eq i32 %3, 0
  br i1 %tobool.not48, label %if.end.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %flags.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  %defrag_inodes_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 106
  %defrag_inodes.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 107
  %sb.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 45
  %len.i = getelementptr inbounds %struct.btrfs_ioctl_defrag_range_args, ptr %range.i, i32 0, i32 1
  %extent_thresh19.i = getelementptr inbounds %struct.btrfs_ioctl_defrag_range_args, ptr %range.i, i32 0, i32 3
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %4 = getelementptr inbounds i8, ptr %range.i, i32 16
  br label %if.end

if.end:                                           ; preds = %while.cond.backedge.if.end_crit_edge, %if.end.lr.ph
  %root_objectid.052 = phi i64 [ 0, %if.end.lr.ph ], [ %root_objectid.0.be, %while.cond.backedge.if.end_crit_edge ]
  %first_ino.049 = phi i64 [ 0, %if.end.lr.ph ], [ %first_ino.0.be, %while.cond.backedge.if.end_crit_edge ]
  %5 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.while.end_crit_edge, label %if.end.i

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4, label %btrfs_fs_closing.exit.i

btrfs_fs_closing.exit.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i.i, align 4
  br label %while.end

if.end4:                                          ; preds = %if.end.i
  call void @_raw_spin_lock(ptr noundef %defrag_inodes_lock.i) #15
  %11 = ptrtoint ptr %defrag_inodes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %p.084.i = load ptr, ptr %defrag_inodes.i, align 4
  %tobool.not85.i = icmp eq ptr %p.084.i, null
  br i1 %tobool.not85.i, label %if.end4.if.then7_crit_edge, label %if.end4.while.body.i_crit_edge

if.end4.while.body.i_crit_edge:                   ; preds = %if.end4
  br label %while.body.i

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

while.body.i:                                     ; preds = %while.body.i.backedge, %if.end4.while.body.i_crit_edge
  %p.086.i = phi ptr [ %p.086.i.be, %while.body.i.backedge ], [ %p.084.i, %if.end4.while.body.i_crit_edge ]
  %root1.i.i = getelementptr inbounds %struct.inode_defrag, ptr %p.086.i, i32 0, i32 3
  %12 = ptrtoint ptr %root1.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %root1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %root_objectid.052)
  %cmp.i.i = icmp ult i64 %13, %root_objectid.052
  br i1 %cmp.i.i, label %if.end8.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %root_objectid.052)
  %cmp4.i.i = icmp ugt i64 %13, %root_objectid.052
  br i1 %cmp4.i.i, label %if.end8.i.thread, label %if.else6.i.i

if.else6.i.i:                                     ; preds = %if.else.i.i
  %ino7.i.i = getelementptr inbounds %struct.inode_defrag, ptr %p.086.i, i32 0, i32 1
  %14 = ptrtoint ptr %ino7.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ino7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %first_ino.049)
  %cmp8.i.i = icmp ult i64 %15, %first_ino.049
  br i1 %cmp8.i.i, label %if.end8.i.thread38, label %__compare_inode_defrag.exit.i

__compare_inode_defrag.exit.i:                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %first_ino.049)
  %cmp13.i.i = icmp ugt i64 %15, %first_ino.049
  br i1 %cmp13.i.i, label %if.end8.i.thread.thread, label %__compare_inode_defrag.exit.i.if.end11_crit_edge

__compare_inode_defrag.exit.i.if.end11_crit_edge: ; preds = %__compare_inode_defrag.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end8.i:                                        ; preds = %while.body.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.086.i, i32 0, i32 1
  %16 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %p.0.i = load ptr, ptr %rb_right.i, align 4
  %tobool.not.i26 = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i26, label %if.end8.i.out.i_crit_edge, label %if.end8.i.while.body.i.backedge_crit_edge

if.end8.i.while.body.i.backedge_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.backedge

if.end8.i.out.i_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end8.i.thread38:                               ; preds = %if.else6.i.i
  %rb_right.i39 = getelementptr inbounds %struct.rb_node, ptr %p.086.i, i32 0, i32 1
  %17 = ptrtoint ptr %rb_right.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %p.0.i40 = load ptr, ptr %rb_right.i39, align 4
  %tobool.not.i2641 = icmp eq ptr %p.0.i40, null
  br i1 %tobool.not.i2641, label %if.end8.i.thread38.if.else6.i50.i_crit_edge, label %if.end8.i.thread38.while.body.i.backedge_crit_edge

if.end8.i.thread38.while.body.i.backedge_crit_edge: ; preds = %if.end8.i.thread38
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.backedge

if.end8.i.thread38.if.else6.i50.i_crit_edge:      ; preds = %if.end8.i.thread38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else6.i50.i

if.end8.i.thread:                                 ; preds = %if.else.i.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.086.i, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %p.0.i34 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i2635 = icmp eq ptr %p.0.i34, null
  br i1 %tobool.not.i2635, label %if.end8.i.thread.if.end11_crit_edge, label %if.end8.i.thread.while.body.i.backedge_crit_edge

if.end8.i.thread.while.body.i.backedge_crit_edge: ; preds = %if.end8.i.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.backedge

if.end8.i.thread.if.end11_crit_edge:              ; preds = %if.end8.i.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end8.i.thread.thread:                          ; preds = %__compare_inode_defrag.exit.i
  %rb_left.i60 = getelementptr inbounds %struct.rb_node, ptr %p.086.i, i32 0, i32 2
  %19 = ptrtoint ptr %rb_left.i60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %p.0.i3461 = load ptr, ptr %rb_left.i60, align 4
  %tobool.not.i263562 = icmp eq ptr %p.0.i3461, null
  br i1 %tobool.not.i263562, label %if.end8.i.thread.thread.if.else6.i50.i_crit_edge, label %if.end8.i.thread.thread.while.body.i.backedge_crit_edge

if.end8.i.thread.thread.while.body.i.backedge_crit_edge: ; preds = %if.end8.i.thread.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.backedge

if.end8.i.thread.thread.if.else6.i50.i_crit_edge: ; preds = %if.end8.i.thread.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else6.i50.i

while.body.i.backedge:                            ; preds = %if.end8.i.thread.thread.while.body.i.backedge_crit_edge, %if.end8.i.thread.while.body.i.backedge_crit_edge, %if.end8.i.thread38.while.body.i.backedge_crit_edge, %if.end8.i.while.body.i.backedge_crit_edge
  %p.086.i.be = phi ptr [ %p.0.i, %if.end8.i.while.body.i.backedge_crit_edge ], [ %p.0.i34, %if.end8.i.thread.while.body.i.backedge_crit_edge ], [ %p.0.i40, %if.end8.i.thread38.while.body.i.backedge_crit_edge ], [ %p.0.i3461, %if.end8.i.thread.thread.while.body.i.backedge_crit_edge ]
  br label %while.body.i

if.else6.i50.i:                                   ; preds = %if.end8.i.thread.thread.if.else6.i50.i_crit_edge, %if.end8.i.thread38.if.else6.i50.i_crit_edge
  %ino7.i48.i = getelementptr inbounds %struct.inode_defrag, ptr %p.086.i, i32 0, i32 1
  %20 = ptrtoint ptr %ino7.i48.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ino7.i48.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %first_ino.049)
  %cmp8.i49.i = icmp ult i64 %21, %first_ino.049
  br i1 %cmp8.i49.i, label %if.else6.i50.i.out.i_crit_edge, label %if.else6.i50.i.if.end11_crit_edge

if.else6.i50.i.if.end11_crit_edge:                ; preds = %if.else6.i50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.else6.i50.i.out.i_crit_edge:                   ; preds = %if.else6.i50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

out.i:                                            ; preds = %if.else6.i50.i.out.i_crit_edge, %if.end8.i.out.i_crit_edge
  %call13.i = call ptr @rb_next(ptr noundef nonnull %p.086.i) #15
  %tobool22.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool22.not.i, label %out.i.if.then7_crit_edge, label %out.i.if.end11_crit_edge

out.i.if.end11_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

out.i.if.then7_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

if.then7:                                         ; preds = %out.i.if.then7_crit_edge, %if.end4.if.then7_crit_edge
  call void @_raw_spin_unlock(ptr noundef %defrag_inodes_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %root_objectid.052)
  %tobool8.not = icmp eq i64 %root_objectid.052, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %first_ino.049)
  %tobool9.not = icmp eq i64 %first_ino.049, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.then7.while.end_crit_edge, label %if.then7.while.cond.backedge_crit_edge

if.then7.while.cond.backedge_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.backedge

if.then7.while.end_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end11:                                         ; preds = %out.i.if.end11_crit_edge, %if.else6.i50.i.if.end11_crit_edge, %if.end8.i.thread.if.end11_crit_edge, %__compare_inode_defrag.exit.i.if.end11_crit_edge
  %entry1.175.i = phi ptr [ %call13.i, %out.i.if.end11_crit_edge ], [ %p.086.i, %if.else6.i50.i.if.end11_crit_edge ], [ %p.086.i, %if.end8.i.thread.if.end11_crit_edge ], [ %p.086.i, %__compare_inode_defrag.exit.i.if.end11_crit_edge ]
  call void @rb_erase(ptr noundef nonnull %entry1.175.i, ptr noundef %defrag_inodes.i) #15
  call void @_raw_spin_unlock(ptr noundef %defrag_inodes_lock.i) #15
  %ino = getelementptr inbounds %struct.inode_defrag, ptr %entry1.175.i, i32 0, i32 1
  %22 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ino, align 8
  %add = add i64 %23, 1
  %root = getelementptr inbounds %struct.inode_defrag, ptr %entry1.175.i, i32 0, i32 3
  %24 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %root, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %range.i) #15
  %26 = call ptr @memset(ptr %range.i, i32 255, i32 48)
  %27 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %fs_state, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not27.i = icmp eq i32 %29, 0
  br i1 %tobool.not27.i, label %if.end.lr.ph.i, label %if.end11.__btrfs_run_defrag_inode.exit_crit_edge

if.end11.__btrfs_run_defrag_inode.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %__btrfs_run_defrag_inode.exit

if.end.lr.ph.i:                                   ; preds = %if.end11
  %extent_thresh.i = getelementptr inbounds %struct.inode_defrag, ptr %entry1.175.i, i32 0, i32 4
  %transid.i = getelementptr inbounds %struct.inode_defrag, ptr %entry1.175.i, i32 0, i32 2
  br label %if.end.i28

if.end.i28:                                       ; preds = %if.end25.i.if.end.i28_crit_edge, %if.end.lr.ph.i
  %cur.028.i = phi i64 [ 0, %if.end.lr.ph.i ], [ %122, %if.end25.i.if.end.i28_crit_edge ]
  %30 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mount_opt.i, align 8
  %and.i.i = and i32 %31, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i27 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i27, label %if.end.i28.__btrfs_run_defrag_inode.exit_crit_edge, label %if.end.i.i

if.end.i28.__btrfs_run_defrag_inode.exit_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #17
  br label %__btrfs_run_defrag_inode.exit

if.end.i.i:                                       ; preds = %if.end.i28
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end4.i, label %btrfs_fs_closing.exit.i.i

btrfs_fs_closing.exit.i.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i.i, align 4
  br label %__btrfs_run_defrag_inode.exit

if.end4.i:                                        ; preds = %if.end.i.i
  %36 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %root, align 8
  %call5.i = call ptr @btrfs_get_fs_root(ptr noundef %fs_info, i64 noundef %37, i1 noundef zeroext true) #15
  %cmp.i.i29 = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i29, label %if.end4.i.__btrfs_run_defrag_inode.exit_crit_edge, label %if.end9.i

if.end4.i.__btrfs_run_defrag_inode.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__btrfs_run_defrag_inode.exit

if.end9.i:                                        ; preds = %if.end4.i
  %38 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sb.i, align 8
  %40 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ino, align 8
  %call10.i = call ptr @btrfs_iget(ptr noundef %39, i64 noundef %41, ptr noundef %call5.i) #15
  call void @btrfs_put_root(ptr noundef %call5.i) #15
  %cmp.i1.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.end9.i.__btrfs_run_defrag_inode.exit_crit_edge, label %if.end14.i

if.end9.i.__btrfs_run_defrag_inode.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__btrfs_run_defrag_inode.exit

if.end14.i:                                       ; preds = %if.end9.i
  %call15.i = call fastcc i64 @i_size_read(ptr noundef %call10.i) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %cur.028.i, i64 %call15.i)
  %cmp.not.i = icmp ult i64 %cur.028.i, %call15.i
  br i1 %cmp.not.i, label %if.end17.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @iput(ptr noundef %call10.i) #15
  br label %__btrfs_run_defrag_inode.exit

if.end17.i:                                       ; preds = %if.end14.i
  %runtime_flags.i = getelementptr i8, ptr %call10.i, i32 -356
  call void @_clear_bit(i32 noundef 2, ptr noundef %runtime_flags.i) #15
  %42 = call ptr @memset(ptr %4, i32 0, i32 32)
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 -1, ptr %len.i, align 8
  %44 = ptrtoint ptr %range.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %cur.028.i, ptr %range.i, align 8
  %45 = ptrtoint ptr %extent_thresh.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %extent_thresh.i, align 8
  %47 = ptrtoint ptr %extent_thresh19.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %extent_thresh19.i, align 8
  %48 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sb.i, align 8
  %add.ptr1.i.i.i = getelementptr %struct.super_block, ptr %49, i32 0, i32 32, i32 2
  call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 49) #15
  %dep_map.i.i.i.i = getelementptr %struct.super_block, ptr %49, i32 0, i32 32, i32 2, i32 0, i32 5
  %50 = call ptr @llvm.returnaddress(i32 0) #15
  %51 = ptrtoint ptr %50 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %51) #15
  %52 = call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %55, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !122
  %call.i.i.i.i.i = call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end17.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge

if.end17.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end17.i
  %call1.i.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b8.i.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 35, ptr noundef nonnull @.str.16) #15
  br label %rcu_sync_is_idle.exit.i.i.i.i

rcu_sync_is_idle.exit.i.i.i.i:                    ; preds = %if.then.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, %if.end17.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge
  %56 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %add.ptr1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool7.not.i.i.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool7.not.i.i.i.i.i, label %do.body7.i.i.i.i, label %if.else.i.i.i.i, !prof !123

do.body7.i.i.i.i:                                 ; preds = %rcu_sync_is_idle.exit.i.i.i.i
  %58 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !124
  %read_count.i.i.i.i = getelementptr %struct.super_block, ptr %49, i32 0, i32 32, i32 2, i32 0, i32 1
  %59 = ptrtoint ptr %read_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_count.i.i.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %67, %61
  %68 = inttoptr i32 %add.i.i.i.i to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add21.i.i.i.i = add i32 %70, 1
  store i32 %add21.i.i.i.i, ptr %68, align 4
  %71 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !125
  %and.i.i.i.i.i.i = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then41.i.i.i.i, label %do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge, !prof !126

do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge:      ; preds = %do.body7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end43.i.i.i.i

if.then41.i.i.i.i:                                ; preds = %do.body7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end43.i.i.i.i

do.end43.i.i.i.i:                                 ; preds = %if.then41.i.i.i.i, %do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #15, !srcloc !127
  br label %sb_start_write.exit.i

if.else.i.i.i.i:                                  ; preds = %rcu_sync_is_idle.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call50.i.i.i.i = call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i.i, i1 noundef zeroext false) #15
  br label %sb_start_write.exit.i

sb_start_write.exit.i:                            ; preds = %if.else.i.i.i.i, %do.end43.i.i.i.i
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !128
  %72 = call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i58.i.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i58.i.i.i.i to ptr
  %preempt_count.i.i59.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i59.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i59.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i59.i.i.i.i, align 4
  %76 = ptrtoint ptr %transid.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %transid.i, align 8
  %call21.i = call i32 @btrfs_defrag_file(ptr noundef %call10.i, ptr noundef null, ptr noundef nonnull %range.i, i64 noundef %77, i32 noundef 1024) #15
  %78 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sb.i, align 8
  %add.ptr1.i.i2.i = getelementptr %struct.super_block, ptr %79, i32 0, i32 32, i32 2
  %dep_map.i.i.i3.i = getelementptr %struct.super_block, ptr %79, i32 0, i32 32, i32 2, i32 0, i32 5
  call void @lock_release(ptr noundef %dep_map.i.i.i3.i, i32 noundef %51) #15
  %80 = call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i.i.i.i4.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i.i4.i to ptr
  %preempt_count.i.i.i.i.i5.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i.i5.i, align 4
  %add.i.i.i.i6.i = add i32 %83, 1
  store volatile i32 %add.i.i.i.i6.i, ptr %preempt_count.i.i.i.i.i5.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !129
  %call.i.i.i.i7.i = call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i7.i)
  %tobool.not.i.i.i.i8.i = icmp eq i32 %call.i.i.i.i7.i, 0
  br i1 %tobool.not.i.i.i.i8.i, label %land.lhs.true.i.i.i.i11.i, label %sb_start_write.exit.i.rcu_sync_is_idle.exit.i.i.i16.i_crit_edge

sb_start_write.exit.i.rcu_sync_is_idle.exit.i.i.i16.i_crit_edge: ; preds = %sb_start_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i16.i

land.lhs.true.i.i.i.i11.i:                        ; preds = %sb_start_write.exit.i
  %call1.i.i.i.i9.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i9.i)
  %tobool2.not.i.i.i.i10.i = icmp eq i32 %call1.i.i.i.i9.i, 0
  br i1 %tobool2.not.i.i.i.i10.i, label %land.lhs.true.i.i.i.i11.i.rcu_sync_is_idle.exit.i.i.i16.i_crit_edge, label %land.lhs.true3.i.i.i.i13.i

land.lhs.true.i.i.i.i11.i.rcu_sync_is_idle.exit.i.i.i16.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i16.i

land.lhs.true3.i.i.i.i13.i:                       ; preds = %land.lhs.true.i.i.i.i11.i
  %.b8.i.i.i.i12.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i12.i, label %land.lhs.true3.i.i.i.i13.i.rcu_sync_is_idle.exit.i.i.i16.i_crit_edge, label %if.then.i.i.i.i14.i

land.lhs.true3.i.i.i.i13.i.rcu_sync_is_idle.exit.i.i.i16.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_sync_is_idle.exit.i.i.i16.i

if.then.i.i.i.i14.i:                              ; preds = %land.lhs.true3.i.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 35, ptr noundef nonnull @.str.16) #15
  br label %rcu_sync_is_idle.exit.i.i.i16.i

rcu_sync_is_idle.exit.i.i.i16.i:                  ; preds = %if.then.i.i.i.i14.i, %land.lhs.true3.i.i.i.i13.i.rcu_sync_is_idle.exit.i.i.i16.i_crit_edge, %land.lhs.true.i.i.i.i11.i.rcu_sync_is_idle.exit.i.i.i16.i_crit_edge, %sb_start_write.exit.i.rcu_sync_is_idle.exit.i.i.i16.i_crit_edge
  %84 = ptrtoint ptr %add.ptr1.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %add.ptr1.i.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool7.not.i.i.i.i15.i = icmp eq i32 %85, 0
  br i1 %tobool7.not.i.i.i.i15.i, label %do.body3.i.i.i.i, label %do.end49.i.i.i.i, !prof !123

do.body3.i.i.i.i:                                 ; preds = %rcu_sync_is_idle.exit.i.i.i16.i
  %86 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !124
  %read_count.i.i.i17.i = getelementptr %struct.super_block, ptr %79, i32 0, i32 32, i32 2, i32 0, i32 1
  %87 = ptrtoint ptr %read_count.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read_count.i.i.i17.i, align 4
  %89 = ptrtoint ptr %88 to i32
  %90 = call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i.i18.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i18.i to ptr
  %cpu.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %cpu.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cpu.i.i.i19.i, align 4
  %arrayidx.i.i.i20.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i.i.i20.i, align 4
  %add.i.i.i21.i = add i32 %95, %89
  %96 = inttoptr i32 %add.i.i.i21.i to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %add17.i.i.i.i = add i32 %98, -1
  store i32 %add17.i.i.i.i, ptr %96, align 4
  %99 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !125
  %and.i.i.i.i.i22.i = and i32 %99, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i22.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i22.i, 0
  br i1 %tobool28.not.i.i.i.i, label %if.then37.i.i.i.i, label %do.body3.i.i.i.i.do.end39.i.i.i.i_crit_edge, !prof !126

do.body3.i.i.i.i.do.end39.i.i.i.i_crit_edge:      ; preds = %do.body3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end39.i.i.i.i

if.then37.i.i.i.i:                                ; preds = %do.body3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end39.i.i.i.i

do.end39.i.i.i.i:                                 ; preds = %if.then37.i.i.i.i, %do.body3.i.i.i.i.do.end39.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %86) #15, !srcloc !127
  br label %sb_end_write.exit.i

do.end49.i.i.i.i:                                 ; preds = %rcu_sync_is_idle.exit.i.i.i16.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !130
  %100 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !124
  %read_count75.i.i.i.i = getelementptr %struct.super_block, ptr %79, i32 0, i32 32, i32 2, i32 0, i32 1
  %101 = ptrtoint ptr %read_count75.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read_count75.i.i.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  %104 = call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i122.i.i.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i122.i.i.i.i to ptr
  %cpu78.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %cpu78.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cpu78.i.i.i.i, align 4
  %arrayidx79.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %107
  %108 = ptrtoint ptr %arrayidx79.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx79.i.i.i.i, align 4
  %add80.i.i.i.i = add i32 %109, %103
  %110 = inttoptr i32 %add80.i.i.i.i to ptr
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %add81.i.i.i.i = add i32 %112, -1
  store i32 %add81.i.i.i.i, ptr %110, align 4
  %113 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !125
  %and.i.i123.i.i.i.i = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i.i)
  %tobool92.not.i.i.i.i = icmp eq i32 %and.i.i123.i.i.i.i, 0
  br i1 %tobool92.not.i.i.i.i, label %if.then101.i.i.i.i, label %do.end49.i.i.i.i.do.end104.i.i.i.i_crit_edge, !prof !126

do.end49.i.i.i.i.do.end104.i.i.i.i_crit_edge:     ; preds = %do.end49.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end104.i.i.i.i

if.then101.i.i.i.i:                               ; preds = %do.end49.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end104.i.i.i.i

do.end104.i.i.i.i:                                ; preds = %if.then101.i.i.i.i, %do.end49.i.i.i.i.do.end104.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %100) #15, !srcloc !127
  %writer.i.i.i.i = getelementptr %struct.super_block, ptr %79, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i.i) #15
  br label %sb_end_write.exit.i

sb_end_write.exit.i:                              ; preds = %do.end104.i.i.i.i, %do.end39.i.i.i.i
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !131
  %114 = call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i120.i.i.i.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i120.i.i.i.i to ptr
  %preempt_count.i.i121.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %preempt_count.i.i121.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %preempt_count.i.i121.i.i.i.i, align 4
  %sub.i.i.i.i23.i = add i32 %117, -1
  store volatile i32 %sub.i.i.i.i23.i, ptr %preempt_count.i.i121.i.i.i.i, align 4
  call void @iput(ptr noundef %call10.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp23.i = icmp slt i32 %call21.i, 0
  br i1 %cmp23.i, label %sb_end_write.exit.i.__btrfs_run_defrag_inode.exit_crit_edge, label %if.end25.i

sb_end_write.exit.i.__btrfs_run_defrag_inode.exit_crit_edge: ; preds = %sb_end_write.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__btrfs_run_defrag_inode.exit

if.end25.i:                                       ; preds = %sb_end_write.exit.i
  %118 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sectorsize.i, align 4
  %conv.i = zext i32 %119 to i64
  %add.i = add i64 %cur.028.i, %conv.i
  %120 = ptrtoint ptr %range.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %range.i, align 8
  %122 = call i64 @llvm.umax.i64(i64 %add.i, i64 %121) #15
  %123 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %fs_state, align 4
  %125 = and i32 %124, 2
  %tobool.not.i30 = icmp eq i32 %125, 0
  br i1 %tobool.not.i30, label %if.end25.i.if.end.i28_crit_edge, label %if.end25.i.__btrfs_run_defrag_inode.exit_crit_edge

if.end25.i.__btrfs_run_defrag_inode.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__btrfs_run_defrag_inode.exit

if.end25.i.if.end.i28_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i28

__btrfs_run_defrag_inode.exit:                    ; preds = %if.end25.i.__btrfs_run_defrag_inode.exit_crit_edge, %sb_end_write.exit.i.__btrfs_run_defrag_inode.exit_crit_edge, %if.then16.i, %if.end9.i.__btrfs_run_defrag_inode.exit_crit_edge, %if.end4.i.__btrfs_run_defrag_inode.exit_crit_edge, %btrfs_fs_closing.exit.i.i, %if.end.i28.__btrfs_run_defrag_inode.exit_crit_edge, %if.end11.__btrfs_run_defrag_inode.exit_crit_edge
  %126 = load ptr, ptr @btrfs_inode_defrag_cachep, align 4
  call void @kmem_cache_free(ptr noundef %126, ptr noundef %entry1.175.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %range.i) #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %__btrfs_run_defrag_inode.exit, %if.then7.while.cond.backedge_crit_edge
  %first_ino.0.be = phi i64 [ %add, %__btrfs_run_defrag_inode.exit ], [ 0, %if.then7.while.cond.backedge_crit_edge ]
  %root_objectid.0.be = phi i64 [ %25, %__btrfs_run_defrag_inode.exit ], [ 0, %if.then7.while.cond.backedge_crit_edge ]
  %127 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %fs_state, align 4
  %129 = and i32 %128, 2
  %tobool.not = icmp eq i32 %129, 0
  br i1 %tobool.not, label %while.cond.backedge.if.end_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.cond.backedge.if.end_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.then7.while.end_crit_edge, %btrfs_fs_closing.exit.i, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %call.i.i25 = call zeroext i1 @__kasan_check_write(ptr noundef %defrag_running, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %defrag_running, i32 1, i32 3, i32 1) #15
  %130 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %defrag_running, ptr %defrag_running, i32 1, ptr elementtype(i32) %defrag_running) #15, !srcloc !132
  %transaction_wait = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 39
  call void @__wake_up(ptr noundef %transaction_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_dirty_pages(ptr noundef %inode, ptr nocapture noundef readonly %pages, i32 noundef %num_pages, i64 noundef %pos, i32 noundef %write_bytes, ptr noundef %cached, i1 noundef zeroext %noreserve) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %conv = zext i32 %write_bytes to i64
  %add = add i64 %conv, %pos
  %vfs_inode = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37
  %call = tail call fastcc i64 @i_size_read(ptr noundef %vfs_inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_bytes)
  %cmp = icmp eq i32 %write_bytes, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %4 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectorsize, align 4
  %sub = add i32 %5, -1
  %conv5 = zext i32 %sub to i64
  %neg = xor i64 %conv5, -1
  %and = and i64 %neg, %pos
  %6 = xor i64 %and, -1
  %sub9 = add i64 %add, %6
  %or13 = or i64 %sub9, %conv5
  %add14 = add i64 %or13, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add14)
  %cmp15 = icmp ult i64 %add14, 4294967296
  br i1 %cmp15, label %cond.end, label %cond.false, !prof !123

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 466) #18
  unreachable

cond.end:                                         ; preds = %if.end
  %spec.select = select i1 %noreserve, i32 2048, i32 0
  %sub20 = add i64 %or13, %and
  %io_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 4
  %call21 = tail call i32 @clear_extent_bit(ptr noundef %io_tree, i64 noundef %and, i64 noundef %sub20, i32 noundef 8496, i32 noundef 0, i32 noundef 0, ptr noundef %cached) #15
  %call22 = tail call i32 @btrfs_set_extent_delalloc(ptr noundef %inode, i64 noundef %and, i64 noundef %sub20, i32 noundef %spec.select, ptr noundef %cached) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.cond.preheader, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp2675.not = icmp eq i32 %num_pages, 0
  br i1 %cmp2675.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv28 = trunc i64 %add14 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.076
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void @btrfs_page_clamp_set_uptodate(ptr noundef %3, ptr noundef %8, i64 noundef %and, i32 noundef %conv28) #15
  tail call void @btrfs_page_clamp_clear_checked(ptr noundef %3, ptr noundef %8, i64 noundef %and, i32 noundef %conv28) #15
  tail call void @btrfs_page_clamp_set_dirty(ptr noundef %3, ptr noundef %8, i64 noundef %and, i32 noundef %conv28) #15
  %inc = add nuw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %num_pages
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call)
  %cmp31 = icmp ugt i64 %add, %call
  br i1 %cmp31, label %if.then33, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @i_size_write(ptr noundef %vfs_inode, i64 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %for.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call22, %cond.end.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !124
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %1 = tail call ptr @llvm.returnaddress(i32 0) #15
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call ptr @llvm.returnaddress(i32 0) #15
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #15
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !125
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !126

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !127
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !133
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !134
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !135
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !136
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  ret i64 %11
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, ptr noundef %file, i32 noundef %line) unnamed_addr #4 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %expr, ptr noundef %file, i32 noundef %line) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #15, !srcloc !137
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_set_extent_delalloc(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_page_clamp_set_uptodate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_page_clamp_clear_checked(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_page_clamp_set_dirty(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !139
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !140
  %18 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !141
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !142
  %37 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !123

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !143
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #15
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #15
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !144
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !145
  %48 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_drop_extent_cache(ptr noundef %inode, i64 noundef %start, i64 noundef %end, i32 noundef %skip_pinned) local_unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %extent_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 3
  %sub = sub i64 1, %start
  %add = add i64 %sub, %end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #15
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !146
  call void @__sanitizer_cov_trace_cmp8(i64 %end, i64 %start)
  %cmp = icmp ult i64 %end, %start
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !126

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 520, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %end)
  %cmp19 = icmp eq i64 %end, -1
  %spec.select = select i1 %cmp19, i64 -1, i64 %add
  %lock = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_pinned)
  %tobool39.not = icmp eq i32 %skip_pinned, 0
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end53, %if.end
  %split2.0.ph = phi ptr [ %split2.1, %if.end53 ], [ null, %if.end ]
  %split.0.ph = phi ptr [ %split.1, %if.end53 ], [ null, %if.end ]
  %start.addr.0.ph = phi i64 [ %add56, %if.end53 ], [ %start, %if.end ]
  %add121 = add i64 %start.addr.0.ph, %spec.select
  br label %while.cond

while.cond:                                       ; preds = %if.end208, %while.cond.outer
  %split2.0 = phi ptr [ %split2.3, %if.end208 ], [ %split2.0.ph, %while.cond.outer ]
  %split.0 = phi ptr [ %split.3, %if.end208 ], [ %split.0.ph, %while.cond.outer ]
  %tobool22.not = icmp eq ptr %split.0, null
  br i1 %tobool22.not, label %if.then23, label %while.cond.if.end24_crit_edge

while.cond.if.end24_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then23:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  %call = call ptr @alloc_extent_map() #15
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %while.cond.if.end24_crit_edge
  %split.1 = phi ptr [ %split.0, %while.cond.if.end24_crit_edge ], [ %call, %if.then23 ]
  %tobool25.not = icmp eq ptr %split2.0, null
  br i1 %tobool25.not, label %if.then26, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %call27 = call ptr @alloc_extent_map() #15
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %split2.1 = phi ptr [ %split2.0, %if.end24.if.end28_crit_edge ], [ %call27, %if.then26 ]
  %tobool29.not = icmp ne ptr %split.1, null
  %tobool30.not = icmp ne ptr %split2.1, null
  %or.cond = select i1 %tobool29.not, i1 %tobool30.not, i1 false
  call void @_raw_write_lock(ptr noundef %lock) #15
  %call33 = call ptr @lookup_extent_mapping(ptr noundef %extent_tree, i64 noundef %start.addr.0.ph, i64 noundef %spec.select) #15
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end28.while.end_crit_edge, label %if.end37

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end37:                                         ; preds = %if.end28
  %flags38 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 11
  %1 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags38, align 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %flags, align 4
  %generation = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 10
  %4 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %generation, align 8
  br i1 %tobool39.not, label %if.end37.if.end66_crit_edge, label %land.lhs.true

if.end37.if.end66_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end37
  %6 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags38, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool42.not = icmp eq i32 %and1.i, 0
  br i1 %tobool42.not, label %land.lhs.true.if.end66_crit_edge, label %if.then43

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

if.then43:                                        ; preds = %land.lhs.true
  br i1 %cmp19, label %if.then43.if.end53_crit_edge, label %land.lhs.true45

if.then43.if.end53_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

land.lhs.true45:                                  ; preds = %if.then43
  %start46 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 1
  %8 = ptrtoint ptr %start46 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start46, align 8
  %len47 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 2
  %10 = ptrtoint ptr %len47 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len47, align 8
  %add48 = add i64 %11, %9
  %add49 = add i64 %start.addr.0.ph, %spec.select
  call void @__sanitizer_cov_trace_cmp8(i64 %add48, i64 %add49)
  %cmp50.not = icmp ult i64 %add48, %add49
  br i1 %cmp50.not, label %land.lhs.true45.if.end53_crit_edge, label %if.then51

land.lhs.true45.if.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then51:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #17
  call void @free_extent_map(ptr noundef nonnull %call33) #15
  br label %while.end

if.end53:                                         ; preds = %land.lhs.true45.if.end53_crit_edge, %if.then43.if.end53_crit_edge
  %start54 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 1
  %12 = ptrtoint ptr %start54 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start54, align 8
  %len55 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 2
  %14 = ptrtoint ptr %len55 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %len55, align 8
  %add56 = add i64 %15, %13
  call void @free_extent_map(ptr noundef nonnull %call33) #15
  call void @_raw_write_unlock(ptr noundef %lock) #15
  br label %while.cond.outer

if.end66:                                         ; preds = %land.lhs.true.if.end66_crit_edge, %if.end37.if.end66_crit_edge
  %16 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags38, align 4
  %shr.i = lshr i32 %17, 1
  %and1.i361 = and i32 %shr.i, 1
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags38) #15
  call void @_clear_bit(i32 noundef 3, ptr noundef nonnull %flags) #15
  %list = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 15
  %18 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %list, align 4
  %cmp.i = icmp ne ptr %19, %list
  br i1 %or.cond, label %if.end76, label %if.end66.next_crit_edge

if.end66.next_crit_edge:                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %next

if.end76:                                         ; preds = %if.end66
  %start77 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 1
  %20 = ptrtoint ptr %start77 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %start77, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %start.addr.0.ph)
  %cmp78 = icmp ult i64 %21, %start.addr.0.ph
  br i1 %cmp78, label %if.then79, label %if.end76.if.end115_crit_edge

if.end76.if.end115_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end115

if.then79:                                        ; preds = %if.end76
  %start81 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 1
  %22 = ptrtoint ptr %start81 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %start81, align 8
  %23 = ptrtoint ptr %start77 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %start77, align 8
  %sub83 = sub i64 %start.addr.0.ph, %24
  %len84 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 2
  %25 = ptrtoint ptr %len84 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %sub83, ptr %len84, align 8
  %block_start = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 8
  %26 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %block_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4, i64 %27)
  %cmp85 = icmp ult i64 %27, -4
  br i1 %cmp85, label %if.then86, label %if.else101

if.then86:                                        ; preds = %if.then79
  %orig_start = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 5
  %28 = ptrtoint ptr %orig_start to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %orig_start, align 8
  %orig_start87 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 5
  %30 = ptrtoint ptr %orig_start87 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %orig_start87, align 8
  %31 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %block_start, align 8
  %block_start89 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 8
  %33 = ptrtoint ptr %block_start89 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %block_start89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i361)
  %tobool90.not = icmp eq i32 %and1.i361, 0
  br i1 %tobool90.not, label %if.then86.if.end95_crit_edge, label %if.then91

if.then86.if.end95_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

if.then91:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #17
  %block_len = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 9
  %34 = ptrtoint ptr %block_len to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %block_len, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.then86.if.end95_crit_edge
  %.sink = phi i64 [ %35, %if.then91 ], [ %sub83, %if.then86.if.end95_crit_edge ]
  %36 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 9
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %.sink, ptr %36, align 8
  %orig_block_len = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 6
  %38 = ptrtoint ptr %orig_block_len to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %orig_block_len, align 8
  %40 = call i64 @llvm.umax.i64(i64 %.sink, i64 %39)
  %orig_block_len99 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 6
  %41 = ptrtoint ptr %orig_block_len99 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %orig_block_len99, align 8
  %ram_bytes = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 7
  %42 = ptrtoint ptr %ram_bytes to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ram_bytes, align 8
  br label %if.end110

if.else101:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #17
  %orig_start103 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 5
  %44 = ptrtoint ptr %orig_start103 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %21, ptr %orig_start103, align 8
  %block_len104 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 9
  %45 = ptrtoint ptr %block_len104 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %block_len104, align 8
  %46 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %block_start, align 8
  %block_start106 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 8
  %48 = ptrtoint ptr %block_start106 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %block_start106, align 8
  %orig_block_len107 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 6
  %49 = ptrtoint ptr %orig_block_len107 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %orig_block_len107, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.else101, %if.end95
  %sub83.sink = phi i64 [ %sub83, %if.else101 ], [ %43, %if.end95 ]
  %ram_bytes109 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 7
  %50 = ptrtoint ptr %ram_bytes109 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %sub83.sink, ptr %ram_bytes109, align 8
  %generation111 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 10
  %51 = ptrtoint ptr %generation111 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %5, ptr %generation111, align 8
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %flags112 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 11
  %54 = ptrtoint ptr %flags112 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %flags112, align 8
  %compress_type = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 14
  %55 = ptrtoint ptr %compress_type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %compress_type, align 4
  %compress_type113 = getelementptr inbounds %struct.extent_map, ptr %split.1, i32 0, i32 14
  %57 = ptrtoint ptr %compress_type113 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %compress_type113, align 4
  %conv = zext i1 %cmp.i to i32
  call void @replace_extent_mapping(ptr noundef %extent_tree, ptr noundef nonnull %call33, ptr noundef nonnull %split.1, i32 noundef %conv) #15
  call void @free_extent_map(ptr noundef nonnull %split.1) #15
  br label %if.end115

if.end115:                                        ; preds = %if.end110, %if.end76.if.end115_crit_edge
  %split2.2 = phi ptr [ null, %if.end110 ], [ %split2.1, %if.end76.if.end115_crit_edge ]
  %split.2 = phi ptr [ %split2.1, %if.end110 ], [ %split.1, %if.end76.if.end115_crit_edge ]
  br i1 %cmp19, label %if.end115.next_crit_edge, label %land.lhs.true117

if.end115.next_crit_edge:                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #17
  br label %next

land.lhs.true117:                                 ; preds = %if.end115
  %58 = ptrtoint ptr %start77 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %start77, align 8
  %len119 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 2
  %60 = ptrtoint ptr %len119 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %len119, align 8
  %add120 = add i64 %61, %59
  call void @__sanitizer_cov_trace_cmp8(i64 %add120, i64 %add121)
  %cmp122 = icmp ugt i64 %add120, %add121
  br i1 %cmp122, label %if.then124, label %land.lhs.true117.next_crit_edge

land.lhs.true117.next_crit_edge:                  ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #17
  br label %next

if.then124:                                       ; preds = %land.lhs.true117
  %sub127 = sub i64 %add121, %59
  %start129 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 1
  %62 = ptrtoint ptr %start129 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add121, ptr %start129, align 8
  %63 = ptrtoint ptr %start77 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %start77, align 8
  %65 = ptrtoint ptr %len119 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %len119, align 8
  %add132 = sub i64 %64, %add121
  %sub134 = add i64 %add132, %66
  %len135 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 2
  %67 = ptrtoint ptr %len135 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %sub134, ptr %len135, align 8
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %flags136 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 11
  %70 = ptrtoint ptr %flags136 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %flags136, align 8
  %compress_type137 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 14
  %71 = ptrtoint ptr %compress_type137 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %compress_type137, align 4
  %compress_type138 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 14
  %73 = ptrtoint ptr %compress_type138 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %compress_type138, align 4
  %generation139 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 10
  %74 = ptrtoint ptr %generation139 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %5, ptr %generation139, align 8
  %block_start140 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 8
  %75 = ptrtoint ptr %block_start140 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %block_start140, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4, i64 %76)
  %cmp141 = icmp ult i64 %76, -4
  br i1 %cmp141, label %if.then143, label %if.else173

if.then143:                                       ; preds = %if.then124
  %block_len144 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 9
  %77 = ptrtoint ptr %block_len144 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %block_len144, align 8
  %orig_block_len145 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 6
  %79 = ptrtoint ptr %orig_block_len145 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %orig_block_len145, align 8
  %81 = call i64 @llvm.umax.i64(i64 %78, i64 %80)
  %orig_block_len153 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 6
  %82 = ptrtoint ptr %orig_block_len153 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %orig_block_len153, align 8
  %ram_bytes154 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 7
  %83 = ptrtoint ptr %ram_bytes154 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %ram_bytes154, align 8
  %ram_bytes155 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 7
  %85 = ptrtoint ptr %ram_bytes155 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %ram_bytes155, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i361)
  %tobool156.not = icmp eq i32 %and1.i361, 0
  br i1 %tobool156.not, label %if.else164, label %if.then157

if.then157:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %block_len144 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %block_len144, align 8
  %block_len159 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 9
  %88 = ptrtoint ptr %block_len159 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %block_len159, align 8
  %89 = ptrtoint ptr %block_start140 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %block_start140, align 8
  %block_start161 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 8
  %91 = ptrtoint ptr %block_start161 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %block_start161, align 8
  %orig_start162 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 5
  %92 = ptrtoint ptr %orig_start162 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %orig_start162, align 8
  %orig_start163 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 5
  %94 = ptrtoint ptr %orig_start163 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %orig_start163, align 8
  br label %if.end182

if.else164:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #17
  %block_len166 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 9
  %95 = ptrtoint ptr %block_len166 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %sub134, ptr %block_len166, align 8
  %96 = ptrtoint ptr %block_start140 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %block_start140, align 8
  %add168 = add i64 %sub127, %97
  %block_start169 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 8
  %98 = ptrtoint ptr %block_start169 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %add168, ptr %block_start169, align 8
  %orig_start170 = getelementptr inbounds %struct.extent_map, ptr %call33, i32 0, i32 5
  %99 = ptrtoint ptr %orig_start170 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %orig_start170, align 8
  %orig_start171 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 5
  %101 = ptrtoint ptr %orig_start171 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %orig_start171, align 8
  br label %if.end182

if.else173:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #17
  %ram_bytes175 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 7
  %102 = ptrtoint ptr %ram_bytes175 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %sub134, ptr %ram_bytes175, align 8
  %orig_start177 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 5
  %103 = ptrtoint ptr %orig_start177 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %add121, ptr %orig_start177, align 8
  %block_len178 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 9
  %104 = ptrtoint ptr %block_len178 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 0, ptr %block_len178, align 8
  %105 = ptrtoint ptr %block_start140 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %block_start140, align 8
  %block_start180 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 8
  %107 = ptrtoint ptr %block_start180 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %block_start180, align 8
  %orig_block_len181 = getelementptr inbounds %struct.extent_map, ptr %split.2, i32 0, i32 6
  %108 = ptrtoint ptr %orig_block_len181 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 0, ptr %orig_block_len181, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.else173, %if.else164, %if.then157
  %109 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %call33, align 8
  %111 = ptrtoint ptr %call33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %111)
  %cmp.i362.not = icmp eq i32 %110, %111
  %conv190 = zext i1 %cmp.i to i32
  br i1 %cmp.i362.not, label %if.else188, label %if.then185

if.then185:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #17
  call void @replace_extent_mapping(ptr noundef %extent_tree, ptr noundef nonnull %call33, ptr noundef nonnull %split.2, i32 noundef %conv190) #15
  br label %if.end203

if.else188:                                       ; preds = %if.end182
  %call191 = call i32 @add_extent_mapping(ptr noundef %extent_tree, ptr noundef nonnull %split.2, i32 noundef %conv190) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %if.else188.if.end203_crit_edge, label %cond.false201, !prof !123

if.else188.if.end203_crit_edge:                   ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end203

cond.false201:                                    ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 633) #18
  unreachable

if.end203:                                        ; preds = %if.else188.if.end203_crit_edge, %if.then185
  call void @free_extent_map(ptr noundef nonnull %split.2) #15
  br label %next

next:                                             ; preds = %if.end203, %land.lhs.true117.next_crit_edge, %if.end115.next_crit_edge, %if.end66.next_crit_edge
  %split2.3 = phi ptr [ %split2.1, %if.end66.next_crit_edge ], [ %split2.2, %if.end203 ], [ %split2.2, %land.lhs.true117.next_crit_edge ], [ %split2.2, %if.end115.next_crit_edge ]
  %split.3 = phi ptr [ %split.1, %if.end66.next_crit_edge ], [ null, %if.end203 ], [ %split.2, %land.lhs.true117.next_crit_edge ], [ %split.2, %if.end115.next_crit_edge ]
  %112 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %call33, align 8
  %114 = ptrtoint ptr %call33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %114)
  %cmp.i363.not = icmp eq i32 %113, %114
  br i1 %cmp.i363.not, label %next.if.end208_crit_edge, label %if.then207

next.if.end208_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end208

if.then207:                                       ; preds = %next
  call void @__sanitizer_cov_trace_pc() #17
  call void @remove_extent_mapping(ptr noundef %extent_tree, ptr noundef nonnull %call33) #15
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %next.if.end208_crit_edge
  call void @_raw_write_unlock(ptr noundef %lock) #15
  call void @free_extent_map(ptr noundef nonnull %call33) #15
  call void @free_extent_map(ptr noundef nonnull %call33) #15
  br label %while.cond

while.end:                                        ; preds = %if.then51, %if.end28.while.end_crit_edge
  call void @_raw_write_unlock(ptr noundef %lock) #15
  %tobool210.not = icmp eq ptr %split.1, null
  br i1 %tobool210.not, label %while.end.if.end212_crit_edge, label %if.then211

while.end.if.end212_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end212

if.then211:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @free_extent_map(ptr noundef nonnull %split.1) #15
  br label %if.end212

if.end212:                                        ; preds = %if.then211, %while.end.if.end212_crit_edge
  %tobool213.not = icmp eq ptr %split2.1, null
  br i1 %tobool213.not, label %if.end212.if.end215_crit_edge, label %if.then214

if.end212.if.end215_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end215

if.then214:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #17
  call void @free_extent_map(ptr noundef nonnull %split2.1) #15
  br label %if.end215

if.end215:                                        ; preds = %if.then214, %if.end212.if.end215_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_extent_map() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_extent_mapping(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @replace_extent_mapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_extent_mapping(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_extent_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_drop_extents(ptr noundef %trans, ptr noundef %root, ptr noundef %inode, ptr nocapture noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i1002 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %ref = alloca %struct.btrfs_ref, align 8
  %key = alloca %struct.btrfs_key, align 8
  %new_key = alloca %struct.btrfs_key, align 8
  %slot_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ref) #15
  %2 = call ptr @memset(ptr %ref, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #15
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %5 = call ptr @memset(ptr %key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %new_key) #15
  %6 = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 2
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %7 = call ptr @memset(ptr %new_key, i32 255, i32 17)
  %8 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not.i = icmp eq i64 %9, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %11)
  %cmp.i = icmp eq i8 %11, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %12 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %13 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %9, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %start = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %args, i32 0, i32 1
  %14 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start, align 8
  %16 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args, align 8
  %bytes_found = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %args, i32 0, i32 7
  %18 = ptrtoint ptr %bytes_found to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %bytes_found, align 8
  %extent_inserted = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %args, i32 0, i32 8
  %19 = ptrtoint ptr %extent_inserted to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %extent_inserted, align 8
  %replace_extent = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %args, i32 0, i32 4
  %20 = ptrtoint ptr %replace_extent to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %replace_extent, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %cond.end, label %land.rhs

land.rhs:                                         ; preds = %btrfs_ino.exit
  br i1 %tobool10.not, label %cond.false, label %land.rhs.if.end14_crit_edge, !prof !126

land.rhs.if.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

cond.false:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 701) #18
  unreachable

cond.end:                                         ; preds = %btrfs_ino.exit
  br i1 %tobool10.not, label %if.then, label %cond.end.if.end14_crit_edge

cond.end.if.end14_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then:                                          ; preds = %cond.end
  %call11 = tail call ptr @btrfs_alloc_path() #15
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then.cond.false740_crit_edge, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then.cond.false740_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false740

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %cond.end.if.end14_crit_edge, %land.rhs.if.end14_crit_edge
  %path.0 = phi ptr [ %17, %cond.end.if.end14_crit_edge ], [ %call11, %if.then.if.end14_crit_edge ], [ %17, %land.rhs.if.end14_crit_edge ]
  %drop_cache = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %args, i32 0, i32 3
  %22 = ptrtoint ptr %drop_cache to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %drop_cache, align 8, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not = icmp eq i8 %23, 0
  br i1 %tobool15.not, label %if.end14.if.end18_crit_edge, label %if.then16

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start, align 8
  %end = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %args, i32 0, i32 2
  %26 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %end, align 8
  %sub = add i64 %27, -1
  tail call void @btrfs_drop_extent_cache(ptr noundef %inode, i64 noundef %25, i64 noundef %sub, i32 noundef 0)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %28 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %start, align 8
  %disk_i_size = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 21
  %30 = ptrtoint ptr %disk_i_size to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %disk_i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %31)
  %cmp.not = icmp ult i64 %29, %31
  br i1 %cmp.not, label %if.end18.if.end23_crit_edge, label %land.lhs.true

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %replace_extent to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %replace_extent, align 1, !range !147
  %sext = sub nsw i8 0, %33
  %spec.select = sext i8 %sext to i32
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %if.end18.if.end23_crit_edge
  %modify_tree.0 = phi i32 [ -1, %if.end18.if.end23_crit_edge ], [ %spec.select, %land.lhs.true ]
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %34 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %35)
  %cmp24.not = icmp eq i64 %35, -6
  %call2515061523 = call i32 @btrfs_lookup_file_extent(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %path.0, i64 noundef %ino.0.i, i64 noundef %15, i32 noundef %modify_tree.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2515061523)
  %cmp2615071524 = icmp slt i32 %call2515061523, 0
  br i1 %cmp2615071524, label %if.end23.if.end720_crit_edge, label %if.end29.lr.ph.lr.ph

if.end23.if.end720_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

if.end29.lr.ph.lr.ph:                             ; preds = %if.end23
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path.0, i32 0, i32 1
  %36 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %37 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %38 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i1002, i32 0, i32 1
  %39 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i1002, i32 0, i32 2
  %end179 = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %args, i32 0, i32 2
  %action1.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 1
  %bytenr2.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 4
  %len3.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 5
  %parent4.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 6
  %real_root.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 3
  %40 = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7
  %ino1.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7, i32 0, i32 1
  %offset2.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7, i32 0, i32 2
  %41 = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 2
  %cmp24.not.not = xor i1 %cmp24.not, true
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  br label %if.end29.lr.ph

if.end29.lr.ph:                                   ; preds = %while.cond.outer.backedge.if.end29.lr.ph_crit_edge, %if.end29.lr.ph.lr.ph
  %call2515061535 = phi i32 [ %call2515061523, %if.end29.lr.ph.lr.ph ], [ %call251506, %while.cond.outer.backedge.if.end29.lr.ph_crit_edge ]
  %search_start.0.ph1534 = phi i64 [ %15, %if.end29.lr.ph.lr.ph ], [ %108, %while.cond.outer.backedge.if.end29.lr.ph_crit_edge ]
  %disk_bytenr.0.ph1533 = phi i64 [ 0, %if.end29.lr.ph.lr.ph ], [ %disk_bytenr.2, %while.cond.outer.backedge.if.end29.lr.ph_crit_edge ]
  %num_bytes.0.ph1532 = phi i64 [ 0, %if.end29.lr.ph.lr.ph ], [ %num_bytes.2, %while.cond.outer.backedge.if.end29.lr.ph_crit_edge ]
  %extent_offset.0.ph1531 = phi i64 [ 0, %if.end29.lr.ph.lr.ph ], [ %extent_offset.2, %while.cond.outer.backedge.if.end29.lr.ph_crit_edge ]
  %last_end.0.ph1530 = phi i64 [ %15, %if.end29.lr.ph.lr.ph ], [ %last_end.1.ph1104, %while.cond.outer.backedge.if.end29.lr.ph_crit_edge ]
  %leafs_visited.0.ph1529 = phi i32 [ 0, %if.end29.lr.ph.lr.ph ], [ %leafs_visited.2, %while.cond.outer.backedge.if.end29.lr.ph_crit_edge ]
  %found.0.ph1528 = phi i32 [ 0, %if.end29.lr.ph.lr.ph ], [ 1, %while.cond.outer.backedge.if.end29.lr.ph_crit_edge ]
  %modify_tree.1.ph1527 = phi i32 [ %modify_tree.0, %if.end29.lr.ph.lr.ph ], [ -1, %while.cond.outer.backedge.if.end29.lr.ph_crit_edge ]
  %del_slot.0.ph1526 = phi i32 [ 0, %if.end29.lr.ph.lr.ph ], [ %del_slot.1.ph.ph, %while.cond.outer.backedge.if.end29.lr.ph_crit_edge ]
  %del_nr.0.ph1525 = phi i32 [ 0, %if.end29.lr.ph.lr.ph ], [ %del_nr.1.ph, %while.cond.outer.backedge.if.end29.lr.ph_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modify_tree.1.ph1527)
  %tobool241.not = icmp eq i32 %modify_tree.1.ph1527, 0
  br label %if.end29

if.end29:                                         ; preds = %if.end594.if.end29_crit_edge, %if.end29.lr.ph
  %call251517 = phi i32 [ %call2515061535, %if.end29.lr.ph ], [ %call25, %if.end594.if.end29_crit_edge ]
  %search_start.01516 = phi i64 [ %search_start.0.ph1534, %if.end29.lr.ph ], [ %search_start.2, %if.end594.if.end29_crit_edge ]
  %disk_bytenr.01515 = phi i64 [ %disk_bytenr.0.ph1533, %if.end29.lr.ph ], [ %disk_bytenr.2, %if.end594.if.end29_crit_edge ]
  %num_bytes.01514 = phi i64 [ %num_bytes.0.ph1532, %if.end29.lr.ph ], [ %num_bytes.2, %if.end594.if.end29_crit_edge ]
  %extent_offset.01513 = phi i64 [ %extent_offset.0.ph1531, %if.end29.lr.ph ], [ %extent_offset.4, %if.end594.if.end29_crit_edge ]
  %last_end.01512 = phi i64 [ %last_end.0.ph1530, %if.end29.lr.ph ], [ %add206, %if.end594.if.end29_crit_edge ]
  %leafs_visited.01511 = phi i32 [ %leafs_visited.0.ph1529, %if.end29.lr.ph ], [ %leafs_visited.2, %if.end594.if.end29_crit_edge ]
  %found.01510 = phi i32 [ %found.0.ph1528, %if.end29.lr.ph ], [ %found.2, %if.end594.if.end29_crit_edge ]
  %del_slot.01509 = phi i32 [ %del_slot.0.ph1526, %if.end29.lr.ph ], [ 0, %if.end594.if.end29_crit_edge ]
  %del_nr.01508 = phi i32 [ %del_nr.0.ph1525, %if.end29.lr.ph ], [ 0, %if.end594.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251517)
  %cmp30.not = icmp eq i32 %call251517, 0
  br i1 %cmp30.not, label %if.end29.if.end55_crit_edge, label %land.lhs.true32

if.end29.if.end55_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

land.lhs.true32:                                  ; preds = %if.end29
  %42 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp33 = icmp sgt i32 %43, 0
  br i1 %cmp33, label %land.lhs.true35, label %land.lhs.true32.if.end55_crit_edge

land.lhs.true32.if.end55_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %44 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %search_start.01516, i64 %45)
  %cmp37 = icmp eq i64 %search_start.01516, %45
  br i1 %cmp37, label %if.then39, label %land.lhs.true35.if.end55_crit_edge

land.lhs.true35.if.end55_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.then39:                                        ; preds = %land.lhs.true35
  %46 = ptrtoint ptr %path.0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %path.0, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #15
  %48 = mul i32 %43, 25
  %add.i.i.i.i = add i32 %48, 76
  %49 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %47, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #15
  %50 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %37, align 1
  %52 = call i64 @llvm.bswap.i64(i64 %51) #15
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %4, align 1
  %54 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %36, align 8
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %3, align 8
  %57 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %disk_key.i, align 8
  %59 = call i64 @llvm.bswap.i64(i64 %58) #15
  %60 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %ino.0.i)
  %cmp45 = icmp eq i64 %59, %ino.0.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %55)
  %cmp49 = icmp eq i8 %55, 108
  %or.cond1094 = select i1 %cmp45, i1 %cmp49, i1 false
  br i1 %or.cond1094, label %if.then51, label %if.then39.if.end55_crit_edge

if.then39.if.end55_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.then51:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %slots, align 4
  %dec = add i32 %62, -1
  store i32 %dec, ptr %slots, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.then39.if.end55_crit_edge, %land.lhs.true35.if.end55_crit_edge, %land.lhs.true32.if.end55_crit_edge, %if.end29.if.end55_crit_edge
  %inc = add i32 %leafs_visited.01511, 1
  br label %next_slot.outer.outer

next_slot.outer.outer:                            ; preds = %if.then528, %if.end55
  %del_nr.1.ph.ph = phi i32 [ %del_nr.01508, %if.end55 ], [ %del_nr.2, %if.then528 ]
  %del_slot.1.ph.ph = phi i32 [ %del_slot.01509, %if.end55 ], [ %del_slot.2, %if.then528 ]
  %recow.0.ph.ph = phi i32 [ 0, %if.end55 ], [ %recow.11623, %if.then528 ]
  %ret.0.ph.ph = phi i32 [ 0, %if.end55 ], [ %ret.5, %if.then528 ]
  %found.1.ph.ph = phi i32 [ %found.01510, %if.end55 ], [ %found.2, %if.then528 ]
  %leafs_visited.1.ph.ph = phi i32 [ %inc, %if.end55 ], [ %leafs_visited.2, %if.then528 ]
  %last_end.1.ph.ph = phi i64 [ %last_end.01512, %if.end55 ], [ %add206, %if.then528 ]
  %extent_offset.1.ph.ph = phi i64 [ %extent_offset.01513, %if.end55 ], [ %extent_offset.4, %if.then528 ]
  %num_bytes.1.ph.ph = phi i64 [ %num_bytes.01514, %if.end55 ], [ %num_bytes.2, %if.then528 ]
  %disk_bytenr.1.ph.ph = phi i64 [ %disk_bytenr.01515, %if.end55 ], [ %disk_bytenr.2, %if.then528 ]
  %search_start.1.ph.ph = phi i64 [ %search_start.01516, %if.end55 ], [ %search_start.2, %if.then528 ]
  br label %next_slot.outer

next_slot.outer:                                  ; preds = %cond.end169, %next_slot.outer.outer
  %del_nr.1.ph = phi i32 [ 0, %cond.end169 ], [ %del_nr.1.ph.ph, %next_slot.outer.outer ]
  %recow.0.ph = phi i32 [ %recow.1, %cond.end169 ], [ %recow.0.ph.ph, %next_slot.outer.outer ]
  %ret.0.ph = phi i32 [ %ret.1, %cond.end169 ], [ %ret.0.ph.ph, %next_slot.outer.outer ]
  %found.1.ph = phi i32 [ %found.1.ph1102, %cond.end169 ], [ %found.1.ph.ph, %next_slot.outer.outer ]
  %leafs_visited.1.ph = phi i32 [ %leafs_visited.2, %cond.end169 ], [ %leafs_visited.1.ph.ph, %next_slot.outer.outer ]
  %last_end.1.ph = phi i64 [ %last_end.1.ph1104, %cond.end169 ], [ %last_end.1.ph.ph, %next_slot.outer.outer ]
  %extent_offset.1.ph = phi i64 [ %extent_offset.1, %cond.end169 ], [ %extent_offset.1.ph.ph, %next_slot.outer.outer ]
  %num_bytes.1.ph = phi i64 [ %num_bytes.1, %cond.end169 ], [ %num_bytes.1.ph.ph, %next_slot.outer.outer ]
  %disk_bytenr.1.ph = phi i64 [ %disk_bytenr.1, %cond.end169 ], [ %disk_bytenr.1.ph.ph, %next_slot.outer.outer ]
  %search_start.1.ph = phi i64 [ %search_start.1.ph1108, %cond.end169 ], [ %search_start.1.ph.ph, %next_slot.outer.outer ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_nr.1.ph)
  %cmp64 = icmp sgt i32 %del_nr.1.ph, 0
  br label %next_slot.outer1099

next_slot.outer1099:                              ; preds = %if.end422, %next_slot.outer
  %recow.0.ph1100 = phi i32 [ %recow.0.ph, %next_slot.outer ], [ 0, %if.end422 ]
  %ret.0.ph1101 = phi i32 [ %ret.0.ph, %next_slot.outer ], [ %ret.3, %if.end422 ]
  %found.1.ph1102 = phi i32 [ %found.1.ph, %next_slot.outer ], [ 1, %if.end422 ]
  %leafs_visited.1.ph1103 = phi i32 [ %leafs_visited.1.ph, %next_slot.outer ], [ %leafs_visited.2, %if.end422 ]
  %last_end.1.ph1104 = phi i64 [ %last_end.1.ph, %next_slot.outer ], [ %add206, %if.end422 ]
  %extent_offset.1.ph1105 = phi i64 [ %extent_offset.1.ph, %next_slot.outer ], [ %extent_offset.3, %if.end422 ]
  %num_bytes.1.ph1106 = phi i64 [ %num_bytes.1.ph, %next_slot.outer ], [ %num_bytes.2, %if.end422 ]
  %disk_bytenr.1.ph1107 = phi i64 [ %disk_bytenr.1.ph, %next_slot.outer ], [ %disk_bytenr.2, %if.end422 ]
  %search_start.1.ph1108 = phi i64 [ %search_start.1.ph, %next_slot.outer ], [ %add206, %if.end422 ]
  br label %next_slot

next_slot:                                        ; preds = %if.then226, %next_slot.outer1099
  %recow.0 = phi i32 [ %recow.1, %if.then226 ], [ %recow.0.ph1100, %next_slot.outer1099 ]
  %ret.0 = phi i32 [ %ret.1, %if.then226 ], [ %ret.0.ph1101, %next_slot.outer1099 ]
  %leafs_visited.1 = phi i32 [ %leafs_visited.2, %if.then226 ], [ %leafs_visited.1.ph1103, %next_slot.outer1099 ]
  %extent_offset.1 = phi i64 [ %extent_offset.2, %if.then226 ], [ %extent_offset.1.ph1105, %next_slot.outer1099 ]
  %num_bytes.1 = phi i64 [ %num_bytes.2, %if.then226 ], [ %num_bytes.1.ph1106, %next_slot.outer1099 ]
  %disk_bytenr.1 = phi i64 [ %disk_bytenr.2, %if.then226 ], [ %disk_bytenr.1.ph1107, %next_slot.outer1099 ]
  %63 = ptrtoint ptr %path.0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %path.0, align 4
  %65 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %slots, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %64, i32 0, i32 12
  %67 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %68) #15
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %64, align 8
  %conv.i = trunc i64 %70 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %71 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %nritems.i, align 1
  %73 = call i32 @llvm.bswap.i32(i32 %72) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %73)
  %cmp61.not = icmp ult i32 %66, %73
  br i1 %cmp61.not, label %next_slot.if.end92_crit_edge, label %do.body

next_slot.if.end92_crit_edge:                     ; preds = %next_slot
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

do.body:                                          ; preds = %next_slot
  br i1 %cmp64, label %do.body73, label %do.end79, !prof !126

do.body73:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 736, 0\0A.popsection", ""() #15, !srcloc !148
  unreachable

do.end79:                                         ; preds = %do.body
  %call.i1001 = call i32 @btrfs_next_old_leaf(ptr noundef %root, ptr noundef %path.0, i64 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1001)
  %cmp81 = icmp slt i32 %call.i1001, 0
  br i1 %cmp81, label %do.end79.if.end720_crit_edge, label %if.end84

do.end79.if.end720_crit_edge:                     ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

if.end84:                                         ; preds = %do.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1001)
  %cmp85.not = icmp eq i32 %call.i1001, 0
  br i1 %cmp85.not, label %if.end88, label %if.end84.land.lhs.true677_crit_edge

if.end84.land.lhs.true677_crit_edge:              ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true677

if.end88:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  %inc89 = add i32 %leafs_visited.1, 1
  %74 = ptrtoint ptr %path.0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %path.0, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.end88, %next_slot.if.end92_crit_edge
  %recow.1 = phi i32 [ 1, %if.end88 ], [ %recow.0, %next_slot.if.end92_crit_edge ]
  %ret.1 = phi i32 [ 0, %if.end88 ], [ %ret.0, %next_slot.if.end92_crit_edge ]
  %leafs_visited.2 = phi i32 [ %inc89, %if.end88 ], [ %leafs_visited.1, %next_slot.if.end92_crit_edge ]
  %leaf.0 = phi ptr [ %75, %if.end88 ], [ %64, %next_slot.if.end92_crit_edge ]
  %76 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i1002) #15
  %mul.i.i.i.i1003 = mul i32 %77, 25
  %add.i.i.i.i1004 = add i32 %mul.i.i.i.i1003, 101
  %78 = call ptr @memset(ptr %disk_key.i1002, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %leaf.0, ptr noundef nonnull %disk_key.i1002, i32 noundef %add.i.i.i.i1004, i32 noundef 17) #15
  %79 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %80 = load i64, ptr %39, align 1
  %81 = call i64 @llvm.bswap.i64(i64 %80) #15
  %82 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %81, ptr %4, align 1
  %83 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %38, align 8
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %3, align 8
  %86 = ptrtoint ptr %disk_key.i1002 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %disk_key.i1002, align 8
  %88 = call i64 @llvm.bswap.i64(i64 %87) #15
  %89 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i1002) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %88, i64 %ino.0.i)
  %cmp96 = icmp ugt i64 %88, %ino.0.i
  br i1 %cmp96, label %if.end92.while.end_crit_edge, label %if.end99

if.end92.while.end_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_cmp8(i64 %88, i64 %ino.0.i)
  %cmp101 = icmp ult i64 %88, %ino.0.i
  br i1 %cmp101, label %land.rhs109, label %lor.lhs.false.critedge

land.rhs109:                                      ; preds = %if.end99
  %.b989 = load i1, ptr @btrfs_drop_extents.__already_done, align 1
  br i1 %.b989, label %land.rhs109.if.then158_crit_edge, label %if.then120, !prof !123

land.rhs109.if.then158_crit_edge:                 ; preds = %land.rhs109
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then158

if.then120:                                       ; preds = %land.rhs109
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @btrfs_drop_extents.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #15
  br label %if.then158

lor.lhs.false.critedge:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %84)
  %cmp156 = icmp ult i8 %84, 108
  br i1 %cmp156, label %lor.lhs.false.critedge.if.then158_crit_edge, label %if.end173

lor.lhs.false.critedge.if.then158_crit_edge:      ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then158

if.then158:                                       ; preds = %lor.lhs.false.critedge.if.then158_crit_edge, %if.then120, %land.rhs109.if.then158_crit_edge
  %cmp159 = icmp eq i32 %del_nr.1.ph, 0
  br i1 %cmp159, label %cond.end169, label %cond.false168, !prof !123

cond.false168:                                    ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 755) #18
  unreachable

cond.end169:                                      ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #17
  %90 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %slots, align 4
  %inc172 = add i32 %91, 1
  store i32 %inc172, ptr %slots, align 4
  br label %next_slot.outer

if.end173:                                        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %84)
  %cmp176.not = icmp eq i8 %84, 108
  br i1 %cmp176.not, label %lor.lhs.false178, label %if.end173.while.end_crit_edge

if.end173.while.end_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

lor.lhs.false178:                                 ; preds = %if.end173
  %92 = ptrtoint ptr %end179 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %end179, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %93)
  %cmp180.not = icmp ult i64 %81, %93
  br i1 %cmp180.not, label %if.end183, label %lor.lhs.false178.while.end_crit_edge

lor.lhs.false178.while.end_crit_edge:             ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end183:                                        ; preds = %lor.lhs.false178
  %94 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %95, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %96 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %leaf.0, ptr noundef %96, i32 noundef 17) #15
  %add = add i32 %call.i.i, 101
  %97 = inttoptr i32 %add to ptr
  %call.i1007 = call zeroext i8 @btrfs_get_8(ptr noundef %leaf.0, ptr noundef %97, i32 noundef 20) #15
  %98 = zext i8 %call.i1007 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call.i1007, label %do.body208 [
    i8 1, label %if.end183.if.then194_crit_edge
    i8 2, label %if.end183.if.then194_crit_edge3017
    i8 0, label %if.end183.if.end215_crit_edge
  ]

if.end183.if.end215_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end215

if.end183.if.then194_crit_edge3017:               ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then194

if.end183.if.then194_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then194

if.then194:                                       ; preds = %if.end183.if.then194_crit_edge, %if.end183.if.then194_crit_edge3017
  %call.i1008 = call i64 @btrfs_get_64(ptr noundef %leaf.0, ptr noundef %97, i32 noundef 21) #15
  %call.i1009 = call i64 @btrfs_get_64(ptr noundef %leaf.0, ptr noundef %97, i32 noundef 29) #15
  %call.i1010 = call i64 @btrfs_get_64(ptr noundef %leaf.0, ptr noundef %97, i32 noundef 37) #15
  br label %if.end215

do.body208:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 778, 0\0A.popsection", ""() #15, !srcloc !149
  unreachable

if.end215:                                        ; preds = %if.then194, %if.end183.if.end215_crit_edge
  %.sink2147 = phi i32 [ 45, %if.then194 ], [ 8, %if.end183.if.end215_crit_edge ]
  %extent_offset.2 = phi i64 [ %call.i1010, %if.then194 ], [ %extent_offset.1, %if.end183.if.end215_crit_edge ]
  %num_bytes.2 = phi i64 [ %call.i1009, %if.then194 ], [ %num_bytes.1, %if.end183.if.end215_crit_edge ]
  %disk_bytenr.2 = phi i64 [ %call.i1008, %if.then194 ], [ %disk_bytenr.1, %if.end183.if.end215_crit_edge ]
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 8)
  %100 = load i64, ptr %4, align 1
  %call.i1012 = call i64 @btrfs_get_64(ptr noundef %leaf.0, ptr noundef %97, i32 noundef %.sink2147) #15
  %add206 = add i64 %call.i1012, %100
  %101 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 8)
  %102 = load i64, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add206, i64 %102)
  %cmp217 = icmp ne i64 %add206, %102
  call void @__sanitizer_cov_trace_cmp8(i64 %add206, i64 %search_start.1.ph1108)
  %cmp220.not = icmp ult i64 %add206, %search_start.1.ph1108
  %or.cond = select i1 %cmp217, i1 true, i1 %cmp220.not
  br i1 %or.cond, label %if.end223, label %if.end215.delete_extent_item_crit_edge

if.end215.delete_extent_item_crit_edge:           ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #17
  br label %delete_extent_item

if.end223:                                        ; preds = %if.end215
  %cmp224.not = icmp ugt i64 %add206, %search_start.1.ph1108
  br i1 %cmp224.not, label %if.end230, label %if.then226

if.then226:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #17
  %103 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %slots, align 4
  %inc229 = add i32 %104, 1
  store i32 %inc229, ptr %slots, align 4
  br label %next_slot

if.end230:                                        ; preds = %if.end223
  %105 = inttoptr i32 %add to ptr
  %106 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recow.1)
  %tobool239.not = icmp ne i32 %recow.1, 0
  %or.cond991 = or i1 %tobool241.not, %tobool239.not
  br i1 %or.cond991, label %if.end230.while.cond.outer.backedge_crit_edge, label %if.end243

if.end230.while.cond.outer.backedge_crit_edge:    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end275.while.cond.outer.backedge_crit_edge, %if.end230.while.cond.outer.backedge_crit_edge
  %108 = call i64 @llvm.umax.i64(i64 %102, i64 %107)
  call void @btrfs_release_path(ptr noundef %path.0) #15
  %call251506 = call i32 @btrfs_lookup_file_extent(ptr noundef %trans, ptr noundef %root, ptr noundef %path.0, i64 noundef %ino.0.i, i64 noundef %108, i32 noundef -1) #15
  %cmp261507 = icmp slt i32 %call251506, 0
  br i1 %cmp261507, label %while.cond.outer.backedge.if.end720_crit_edge, label %while.cond.outer.backedge.if.end29.lr.ph_crit_edge

while.cond.outer.backedge.if.end29.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.lr.ph

while.cond.outer.backedge.if.end720_crit_edge:    ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

if.end243:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %102)
  %cmp246 = icmp ugt i64 %107, %102
  br i1 %cmp246, label %land.lhs.true248, label %if.end243.if.end339_crit_edge

if.end243.if.end339_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end339

land.lhs.true248:                                 ; preds = %if.end243
  %109 = ptrtoint ptr %end179 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %end179, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %110, i64 %add206)
  %cmp250 = icmp ult i64 %110, %add206
  br i1 %cmp250, label %do.body253, label %land.lhs.true248.if.end339_crit_edge

land.lhs.true248.if.end339_crit_edge:             ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end339

do.body253:                                       ; preds = %land.lhs.true248
  br i1 %cmp64, label %do.body263, label %do.end271, !prof !126

do.body263:                                       ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !150
  unreachable

do.end271:                                        ; preds = %do.body253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i1007)
  %cmp272 = icmp eq i8 %call.i1007, 0
  br i1 %cmp272, label %do.end271.if.end720_crit_edge, label %if.end275

do.end271.if.end720_crit_edge:                    ; preds = %do.end271
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

if.end275:                                        ; preds = %do.end271
  %111 = call ptr @memcpy(ptr %new_key, ptr %key, i32 16)
  %112 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 8)
  store i64 %107, ptr %6, align 1
  %call278 = call i32 @btrfs_duplicate_item(ptr noundef %trans, ptr noundef %root, ptr noundef %path.0, ptr noundef nonnull %new_key) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call278)
  %cmp279 = icmp eq i32 %call278, -11
  br i1 %cmp279, label %if.end275.while.cond.outer.backedge_crit_edge, label %if.end282

if.end275.while.cond.outer.backedge_crit_edge:    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.outer.backedge

if.end282:                                        ; preds = %if.end275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %cmp283 = icmp slt i32 %call278, 0
  br i1 %cmp283, label %if.end282.if.end720_crit_edge, label %if.end286

if.end282.if.end720_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

if.end286:                                        ; preds = %if.end282
  %113 = ptrtoint ptr %path.0 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %path.0, align 4
  %115 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %slots, align 4
  %117 = mul i32 %116, 25
  %add.i.i.i1014 = add i32 %117, 76
  %118 = inttoptr i32 %add.i.i.i1014 to ptr
  %call.i.i1015 = call i32 @btrfs_get_32(ptr noundef %114, ptr noundef %118, i32 noundef 17) #15
  %add293 = add i32 %call.i.i1015, 101
  %119 = inttoptr i32 %add293 to ptr
  %120 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %start, align 8
  %122 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 8)
  %123 = load i64, ptr %4, align 1
  %sub296 = sub i64 %121, %123
  call void @btrfs_set_64(ptr noundef %114, ptr noundef %119, i32 noundef 45, i64 noundef %sub296) #15
  %124 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %slots, align 4
  %mul.i.i.i1016 = mul i32 %125, 25
  %add.i.i.i1017 = add i32 %mul.i.i.i1016, 101
  %126 = inttoptr i32 %add.i.i.i1017 to ptr
  %call.i.i1018 = call i32 @btrfs_get_32(ptr noundef %114, ptr noundef %126, i32 noundef 17) #15
  %add300 = add i32 %call.i.i1018, 101
  %127 = inttoptr i32 %add300 to ptr
  %128 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %start, align 8
  %sub303 = sub i64 %129, %123
  %add304 = add i64 %sub303, %extent_offset.2
  call void @btrfs_set_64(ptr noundef %114, ptr noundef %127, i32 noundef 37, i64 noundef %add304) #15
  %130 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %start, align 8
  %sub306 = sub i64 %add206, %131
  call void @btrfs_set_64(ptr noundef %114, ptr noundef %127, i32 noundef 45, i64 noundef %sub306) #15
  call void @btrfs_mark_buffer_dirty(ptr noundef %114) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %disk_bytenr.2)
  %cmp309.not = icmp eq i64 %disk_bytenr.2, 0
  %or.cond992 = select i1 %cmp24.not, i1 true, i1 %cmp309.not
  br i1 %or.cond992, label %if.end286.if.end336_crit_edge, label %if.then311

if.end286.if.end336_crit_edge:                    ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end336

if.then311:                                       ; preds = %if.end286
  %132 = ptrtoint ptr %action1.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %action1.i, align 4
  %133 = ptrtoint ptr %bytenr2.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %disk_bytenr.2, ptr %bytenr2.i, align 8
  %134 = ptrtoint ptr %len3.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %num_bytes.2, ptr %len3.i, align 8
  %135 = ptrtoint ptr %parent4.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 0, ptr %parent4.i, align 8
  %136 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %root_key, align 1
  %138 = ptrtoint ptr %new_key to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %new_key, align 8
  %140 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %start, align 8
  %sub316 = sub i64 %141, %add304
  %142 = ptrtoint ptr %real_root.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %137, ptr %real_root.i, align 8
  %143 = ptrtoint ptr %40 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %137, ptr %40, align 8
  %144 = ptrtoint ptr %ino1.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %139, ptr %ino1.i, align 8
  %145 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %sub316, ptr %offset2.i, align 8
  %146 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %137)
  %cmp.i.i = icmp ne i64 %137, 5
  %147 = add i64 %137, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %147)
  %148 = icmp ult i64 %147, -281474976710400
  %tobool4.not.i = and i1 %cmp.i.i, %148
  %spec.select.i = zext i1 %tobool4.not.i to i8
  %149 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %spec.select.i, ptr %41, align 8
  %call317 = call i32 @btrfs_inc_extent_ref(ptr noundef %trans, ptr noundef nonnull %ref) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool319.not = icmp eq i32 %call317, 0
  br i1 %tobool319.not, label %if.then311.if.end336_crit_edge, label %do.body327, !prof !123

if.then311.if.end336_crit_edge:                   ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end336

do.body327:                                       ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 855, 0\0A.popsection", ""() #15, !srcloc !151
  unreachable

if.end336:                                        ; preds = %if.then311.if.end336_crit_edge, %if.end286.if.end336_crit_edge
  %ret.2 = phi i32 [ 0, %if.then311.if.end336_crit_edge ], [ %call278, %if.end286.if.end336_crit_edge ]
  %150 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %start, align 8
  %152 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 8)
  store i64 %151, ptr %4, align 1
  br label %if.end339

if.end339:                                        ; preds = %if.end336, %land.lhs.true248.if.end339_crit_edge, %if.end243.if.end339_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.end336 ], [ %ret.1, %land.lhs.true248.if.end339_crit_edge ], [ %ret.1, %if.end243.if.end339_crit_edge ]
  %extent_offset.3 = phi i64 [ %add304, %if.end336 ], [ %extent_offset.2, %land.lhs.true248.if.end339_crit_edge ], [ %extent_offset.2, %if.end243.if.end339_crit_edge ]
  %fi.0 = phi ptr [ %127, %if.end336 ], [ %105, %land.lhs.true248.if.end339_crit_edge ], [ %105, %if.end243.if.end339_crit_edge ]
  %leaf.1 = phi ptr [ %114, %if.end336 ], [ %leaf.0, %land.lhs.true248.if.end339_crit_edge ], [ %leaf.0, %if.end243.if.end339_crit_edge ]
  %153 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %start, align 8
  %155 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 8)
  %156 = load i64, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %154, i64 %156)
  %cmp342.not = icmp ugt i64 %154, %156
  %157 = ptrtoint ptr %end179 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %end179, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %158, i64 %add206)
  %cmp379.not = icmp ult i64 %158, %add206
  br i1 %cmp342.not, label %land.lhs.true377, label %land.lhs.true344

land.lhs.true344:                                 ; preds = %if.end339
  br i1 %cmp379.not, label %if.then348, label %land.lhs.true431

if.then348:                                       ; preds = %land.lhs.true344
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i1007)
  %cmp349 = icmp eq i8 %call.i1007, 0
  br i1 %cmp349, label %if.then348.if.end720_crit_edge, label %if.end352

if.then348.if.end720_crit_edge:                   ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

if.end352:                                        ; preds = %if.then348
  %159 = call ptr @memcpy(ptr %new_key, ptr %key, i32 16)
  %160 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %160, i32 8)
  store i64 %158, ptr %6, align 1
  call void @btrfs_set_item_key_safe(ptr noundef %1, ptr noundef %path.0, ptr noundef nonnull %new_key) #15
  %161 = ptrtoint ptr %end179 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %end179, align 8
  %163 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 8)
  %164 = load i64, ptr %4, align 1
  %sub357 = add i64 %162, %extent_offset.3
  %add358 = sub i64 %sub357, %164
  call void @btrfs_set_64(ptr noundef %leaf.1, ptr noundef %fi.0, i32 noundef 37, i64 noundef %add358) #15
  %165 = ptrtoint ptr %end179 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %end179, align 8
  %sub360 = sub i64 %add206, %166
  call void @btrfs_set_64(ptr noundef %leaf.1, ptr noundef %fi.0, i32 noundef 45, i64 noundef %sub360) #15
  call void @btrfs_mark_buffer_dirty(ptr noundef %leaf.1) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %disk_bytenr.2)
  %cmp363.not = icmp eq i64 %disk_bytenr.2, 0
  %or.cond993 = select i1 %cmp24.not, i1 true, i1 %cmp363.not
  br i1 %or.cond993, label %if.end352.while.end_crit_edge, label %if.then365

if.end352.while.end_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.then365:                                       ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #17
  %167 = ptrtoint ptr %end179 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %end179, align 8
  %169 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %169, i32 8)
  %170 = load i64, ptr %4, align 1
  %sub368 = sub i64 %168, %170
  %171 = ptrtoint ptr %bytes_found to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %bytes_found, align 8
  %add370 = add i64 %sub368, %172
  store i64 %add370, ptr %bytes_found, align 8
  br label %while.end

land.lhs.true377:                                 ; preds = %if.end339
  br i1 %cmp379.not, label %land.lhs.true377.do.body596_crit_edge, label %do.body382

land.lhs.true377.do.body596_crit_edge:            ; preds = %land.lhs.true377
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body596

do.body382:                                       ; preds = %land.lhs.true377
  br i1 %cmp64, label %do.body392, label %do.end400, !prof !126

do.body392:                                       ; preds = %do.body382
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 895, 0\0A.popsection", ""() #15, !srcloc !152
  unreachable

do.end400:                                        ; preds = %do.body382
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i1007)
  %cmp401 = icmp eq i8 %call.i1007, 0
  br i1 %cmp401, label %do.end400.if.end720_crit_edge, label %if.end404

do.end400.if.end720_crit_edge:                    ; preds = %do.end400
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

if.end404:                                        ; preds = %do.end400
  %sub407 = sub i64 %154, %156
  call void @btrfs_set_64(ptr noundef %leaf.1, ptr noundef %fi.0, i32 noundef 45, i64 noundef %sub407) #15
  call void @btrfs_mark_buffer_dirty(ptr noundef %leaf.1) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %disk_bytenr.2)
  %cmp410.not = icmp eq i64 %disk_bytenr.2, 0
  %or.cond994 = select i1 %cmp24.not, i1 true, i1 %cmp410.not
  br i1 %or.cond994, label %if.end404.if.end417_crit_edge, label %if.then412

if.end404.if.end417_crit_edge:                    ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end417

if.then412:                                       ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #17
  %173 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %start, align 8
  %sub414 = sub i64 %add206, %174
  %175 = ptrtoint ptr %bytes_found to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %bytes_found, align 8
  %add416 = add i64 %sub414, %176
  store i64 %add416, ptr %bytes_found, align 8
  br label %if.end417

if.end417:                                        ; preds = %if.then412, %if.end404.if.end417_crit_edge
  %177 = ptrtoint ptr %end179 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %end179, align 8
  %cmp419 = icmp eq i64 %178, %add206
  br i1 %cmp419, label %if.end417.while.end_crit_edge, label %if.end422

if.end417.while.end_crit_edge:                    ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end422:                                        ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #17
  %179 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %slots, align 4
  %inc425 = add i32 %180, 1
  store i32 %inc425, ptr %slots, align 4
  br label %next_slot.outer1099

land.lhs.true431:                                 ; preds = %land.lhs.true344
  %181 = ptrtoint ptr %end179 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %end179, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %182, i64 %add206)
  %cmp433.not = icmp ult i64 %182, %add206
  br i1 %cmp433.not, label %land.lhs.true431.do.body596_crit_edge, label %land.lhs.true431.delete_extent_item_crit_edge

land.lhs.true431.delete_extent_item_crit_edge:    ; preds = %land.lhs.true431
  call void @__sanitizer_cov_trace_pc() #17
  br label %delete_extent_item

land.lhs.true431.do.body596_crit_edge:            ; preds = %land.lhs.true431
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body596

delete_extent_item:                               ; preds = %land.lhs.true431.delete_extent_item_crit_edge, %if.end215.delete_extent_item_crit_edge
  %recow.11623 = phi i32 [ 0, %land.lhs.true431.delete_extent_item_crit_edge ], [ %recow.1, %if.end215.delete_extent_item_crit_edge ]
  %ret.4 = phi i32 [ %ret.3, %land.lhs.true431.delete_extent_item_crit_edge ], [ %ret.1, %if.end215.delete_extent_item_crit_edge ]
  %found.2 = phi i32 [ 1, %land.lhs.true431.delete_extent_item_crit_edge ], [ %found.1.ph1102, %if.end215.delete_extent_item_crit_edge ]
  %extent_offset.4 = phi i64 [ %extent_offset.3, %land.lhs.true431.delete_extent_item_crit_edge ], [ %extent_offset.2, %if.end215.delete_extent_item_crit_edge ]
  %search_start.2 = phi i64 [ %add206, %land.lhs.true431.delete_extent_item_crit_edge ], [ %search_start.1.ph1108, %if.end215.delete_extent_item_crit_edge ]
  %leaf.2 = phi ptr [ %leaf.1, %land.lhs.true431.delete_extent_item_crit_edge ], [ %leaf.0, %if.end215.delete_extent_item_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_nr.1.ph)
  %cmp436 = icmp eq i32 %del_nr.1.ph, 0
  br i1 %cmp436, label %if.then438, label %do.body442

if.then438:                                       ; preds = %delete_extent_item
  call void @__sanitizer_cov_trace_pc() #17
  %183 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %slots, align 4
  br label %if.end465

do.body442:                                       ; preds = %delete_extent_item
  %add443 = add i32 %del_slot.1.ph.ph, %del_nr.1.ph
  %185 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add443, i32 %186)
  %cmp446.not = icmp eq i32 %add443, %186
  br i1 %cmp446.not, label %do.end463, label %do.body455, !prof !123

do.body455:                                       ; preds = %do.body442
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 923, 0\0A.popsection", ""() #15, !srcloc !153
  unreachable

do.end463:                                        ; preds = %do.body442
  call void @__sanitizer_cov_trace_pc() #17
  %inc464 = add i32 %del_nr.1.ph, 1
  br label %if.end465

if.end465:                                        ; preds = %do.end463, %if.then438
  %del_nr.2 = phi i32 [ 1, %if.then438 ], [ %inc464, %do.end463 ]
  %del_slot.2 = phi i32 [ %184, %if.then438 ], [ %del_slot.1.ph.ph, %do.end463 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i1007)
  %cmp468 = icmp eq i8 %call.i1007, 0
  %or.cond995 = select i1 %cmp24.not.not, i1 %cmp468, i1 false
  br i1 %or.cond995, label %if.then470, label %if.else481

if.then470:                                       ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #17
  %187 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 8)
  %188 = load i64, ptr %4, align 1
  %sub472 = sub i64 %add206, %188
  %189 = ptrtoint ptr %bytes_found to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %bytes_found, align 8
  %add474 = add i64 %sub472, %190
  store i64 %add474, ptr %bytes_found, align 8
  %191 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %sectorsize, align 4
  %conv475 = zext i32 %192 to i64
  %sub476 = add i64 %add206, -1
  %add477 = add i64 %sub476, %conv475
  %neg = sub nsw i64 0, %conv475
  %and = and i64 %add477, %neg
  br label %if.end516

if.else481:                                       ; preds = %if.end465
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %disk_bytenr.2)
  %cmp484.not = icmp eq i64 %disk_bytenr.2, 0
  %or.cond996 = select i1 %cmp24.not, i1 true, i1 %cmp484.not
  br i1 %or.cond996, label %if.else481.if.end516_crit_edge, label %if.then486

if.else481.if.end516_crit_edge:                   ; preds = %if.else481
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end516

if.then486:                                       ; preds = %if.else481
  %193 = ptrtoint ptr %action1.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 2, ptr %action1.i, align 4
  %194 = ptrtoint ptr %bytenr2.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %disk_bytenr.2, ptr %bytenr2.i, align 8
  %195 = ptrtoint ptr %len3.i to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %num_bytes.2, ptr %len3.i, align 8
  %196 = ptrtoint ptr %parent4.i to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 0, ptr %parent4.i, align 8
  %197 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %197, i32 8)
  %198 = load i64, ptr %root_key, align 1
  %199 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %key, align 8
  %201 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 8)
  %202 = load i64, ptr %4, align 1
  %sub491 = sub i64 %202, %extent_offset.4
  %203 = ptrtoint ptr %real_root.i to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %198, ptr %real_root.i, align 8
  %204 = ptrtoint ptr %40 to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %198, ptr %40, align 8
  %205 = ptrtoint ptr %ino1.i to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %200, ptr %ino1.i, align 8
  %206 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %sub491, ptr %offset2.i, align 8
  %207 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 1, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %198)
  %cmp.i.i1026 = icmp ne i64 %198, 5
  %208 = add i64 %198, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %208)
  %209 = icmp ult i64 %208, -281474976710400
  %tobool4.not.i1027 = and i1 %cmp.i.i1026, %209
  %spec.select.i1028 = zext i1 %tobool4.not.i1027 to i8
  %210 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %spec.select.i1028, ptr %41, align 8
  %call492 = call i32 @btrfs_free_extent(ptr noundef %trans, ptr noundef nonnull %ref) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call492)
  %tobool494.not = icmp eq i32 %call492, 0
  br i1 %tobool494.not, label %do.end510, label %do.body502, !prof !123

do.body502:                                       ; preds = %if.then486
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 942, 0\0A.popsection", ""() #15, !srcloc !154
  unreachable

do.end510:                                        ; preds = %if.then486
  call void @__sanitizer_cov_trace_pc() #17
  %211 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 8)
  %212 = load i64, ptr %4, align 1
  %sub512 = sub i64 %add206, %212
  %213 = ptrtoint ptr %bytes_found to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %bytes_found, align 8
  %add514 = add i64 %sub512, %214
  store i64 %add514, ptr %bytes_found, align 8
  br label %if.end516

if.end516:                                        ; preds = %do.end510, %if.else481.if.end516_crit_edge, %if.then470
  %ret.5 = phi i32 [ %ret.4, %if.then470 ], [ 0, %do.end510 ], [ %ret.4, %if.else481.if.end516_crit_edge ]
  %extent_end.1 = phi i64 [ %and, %if.then470 ], [ %add206, %do.end510 ], [ %add206, %if.else481.if.end516_crit_edge ]
  %215 = ptrtoint ptr %end179 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %end179, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %216, i64 %extent_end.1)
  %cmp518 = icmp eq i64 %216, %extent_end.1
  br i1 %cmp518, label %if.end516.while.end_crit_edge, label %if.end521

if.end516.while.end_crit_edge:                    ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end521:                                        ; preds = %if.end516
  %217 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %slots, align 4
  %add524 = add i32 %218, 1
  %pages.i1029 = getelementptr inbounds %struct.extent_buffer, ptr %leaf.2, i32 0, i32 12
  %219 = ptrtoint ptr %pages.i1029 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %pages.i1029, align 4
  %call.i1030 = call ptr @page_address(ptr noundef %220) #15
  %221 = ptrtoint ptr %leaf.2 to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %leaf.2, align 8
  %conv.i1031 = trunc i64 %222 to i32
  %and.i1032 = and i32 %conv.i1031, 4095
  %add.ptr.i1033 = getelementptr i8, ptr %call.i1030, i32 %and.i1032
  %nritems.i1034 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i1033, i32 0, i32 7
  %223 = ptrtoint ptr %nritems.i1034 to i32
  call void @__asan_loadN_noabort(i32 %223, i32 4)
  %224 = load i32, ptr %nritems.i1034, align 1
  %225 = call i32 @llvm.bswap.i32(i32 %224) #15
  %cmp526 = icmp ult i32 %add524, %225
  br i1 %cmp526, label %if.then528, label %if.end532

if.then528:                                       ; preds = %if.end521
  call void @__sanitizer_cov_trace_pc() #17
  %226 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %slots, align 4
  %inc531 = add i32 %227, 1
  store i32 %inc531, ptr %slots, align 4
  br label %next_slot.outer.outer

if.end532:                                        ; preds = %if.end521
  %call533 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %root, ptr noundef %path.0, i32 noundef %del_slot.2, i32 noundef %del_nr.2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call533)
  %tobool534.not = icmp eq i32 %call533, 0
  br i1 %tobool534.not, label %if.end594, label %do.body536

do.body536:                                       ; preds = %if.end532
  %fs_info537 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %228 = ptrtoint ptr %fs_info537 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %fs_info537, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %229, i32 0, i32 149
  %call538 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call538)
  %tobool539.not = icmp eq i32 %call538, 0
  br i1 %tobool539.not, label %if.then540, label %do.body536.if.end591_crit_edge

do.body536.if.end591_crit_edge:                   ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end591

if.then540:                                       ; preds = %do.body536
  %230 = zext i32 %call533 to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call533, label %do.end559 [
    i32 -5, label %if.then540.do.body574_crit_edge
    i32 -30, label %if.then540.do.body574_crit_edge3018
  ]

if.then540.do.body574_crit_edge3018:              ; preds = %if.then540
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body574

if.then540.do.body574_crit_edge:                  ; preds = %if.then540
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body574

do.end559:                                        ; preds = %if.then540
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 957, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call533) #15
  br label %if.end591

do.body574:                                       ; preds = %if.then540.do.body574_crit_edge, %if.then540.do.body574_crit_edge3018
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_drop_extents.__UNIQUE_ID_ddebug940, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_drop_extents, %if.then585)) #15
          to label %if.end591 [label %if.then585], !srcloc !155

if.then585:                                       ; preds = %do.body574
  call void @__sanitizer_cov_trace_pc() #17
  %231 = ptrtoint ptr %fs_info537 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %fs_info537, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %232, ptr noundef nonnull @.str.9, i32 noundef %call533) #19
  br label %if.end591

if.end591:                                        ; preds = %if.then585, %do.body574, %do.end559, %do.body536.if.end591_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.7, i32 noundef 957, i32 noundef %call533) #19
  br label %if.end720

if.end594:                                        ; preds = %if.end532
  call void @btrfs_release_path(ptr noundef %path.0) #15
  %call25 = call i32 @btrfs_lookup_file_extent(ptr noundef %trans, ptr noundef %root, ptr noundef %path.0, i64 noundef %ino.0.i, i64 noundef %search_start.2, i32 noundef %modify_tree.1.ph1527) #15
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end594.if.end720_crit_edge, label %if.end594.if.end29_crit_edge

if.end594.if.end29_crit_edge:                     ; preds = %if.end594
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.end594.if.end720_crit_edge:                    ; preds = %if.end594
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

do.body596:                                       ; preds = %land.lhs.true431.do.body596_crit_edge, %land.lhs.true377.do.body596_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 968, 0\0A.popsection", ""() #15, !srcloc !156
  unreachable

while.end:                                        ; preds = %if.end516.while.end_crit_edge, %if.end417.while.end_crit_edge, %if.then365, %if.end352.while.end_crit_edge, %lor.lhs.false178.while.end_crit_edge, %if.end173.while.end_crit_edge, %if.end92.while.end_crit_edge
  %del_nr.3 = phi i32 [ %del_nr.1.ph, %if.then365 ], [ %del_nr.1.ph, %if.end352.while.end_crit_edge ], [ %del_nr.1.ph, %if.end92.while.end_crit_edge ], [ %del_nr.1.ph, %lor.lhs.false178.while.end_crit_edge ], [ %del_nr.1.ph, %if.end173.while.end_crit_edge ], [ %del_nr.1.ph, %if.end417.while.end_crit_edge ], [ %del_nr.2, %if.end516.while.end_crit_edge ]
  %del_slot.3 = phi i32 [ %del_slot.1.ph.ph, %if.then365 ], [ %del_slot.1.ph.ph, %if.end352.while.end_crit_edge ], [ %del_slot.1.ph.ph, %if.end92.while.end_crit_edge ], [ %del_slot.1.ph.ph, %lor.lhs.false178.while.end_crit_edge ], [ %del_slot.1.ph.ph, %if.end173.while.end_crit_edge ], [ %del_slot.1.ph.ph, %if.end417.while.end_crit_edge ], [ %del_slot.2, %if.end516.while.end_crit_edge ]
  %ret.6 = phi i32 [ %ret.3, %if.then365 ], [ %ret.3, %if.end352.while.end_crit_edge ], [ %ret.1, %if.end92.while.end_crit_edge ], [ %ret.1, %lor.lhs.false178.while.end_crit_edge ], [ %ret.1, %if.end173.while.end_crit_edge ], [ %ret.3, %if.end417.while.end_crit_edge ], [ %ret.5, %if.end516.while.end_crit_edge ]
  %found.3 = phi i32 [ 1, %if.then365 ], [ 1, %if.end352.while.end_crit_edge ], [ %found.1.ph1102, %if.end92.while.end_crit_edge ], [ %found.1.ph1102, %lor.lhs.false178.while.end_crit_edge ], [ %found.1.ph1102, %if.end173.while.end_crit_edge ], [ 1, %if.end417.while.end_crit_edge ], [ %found.2, %if.end516.while.end_crit_edge ]
  %last_end.3 = phi i64 [ %add206, %if.then365 ], [ %add206, %if.end352.while.end_crit_edge ], [ %last_end.1.ph1104, %if.end92.while.end_crit_edge ], [ %last_end.1.ph1104, %lor.lhs.false178.while.end_crit_edge ], [ %last_end.1.ph1104, %if.end173.while.end_crit_edge ], [ %add206, %if.end417.while.end_crit_edge ], [ %add206, %if.end516.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6)
  %tobool602.not = icmp eq i32 %ret.6, 0
  br i1 %tobool602.not, label %land.lhs.true603, label %while.end.if.end720_crit_edge

while.end.if.end720_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

land.lhs.true603:                                 ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_nr.3)
  %cmp604 = icmp sgt i32 %del_nr.3, 0
  br i1 %cmp604, label %if.then606, label %land.lhs.true603.land.lhs.true677_crit_edge

land.lhs.true603.land.lhs.true677_crit_edge:      ; preds = %land.lhs.true603
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true677

if.then606:                                       ; preds = %land.lhs.true603
  %233 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %del_slot.3, ptr %slots, align 4
  %call609 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %root, ptr noundef %path.0, i32 noundef %del_slot.3, i32 noundef %del_nr.3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call609)
  %tobool610.not = icmp eq i32 %call609, 0
  br i1 %tobool610.not, label %if.then606.land.lhs.true677_crit_edge, label %do.body612

if.then606.land.lhs.true677_crit_edge:            ; preds = %if.then606
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true677

do.body612:                                       ; preds = %if.then606
  %fs_info613 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %234 = ptrtoint ptr %fs_info613 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %fs_info613, align 4
  %fs_state614 = getelementptr inbounds %struct.btrfs_fs_info, ptr %235, i32 0, i32 149
  %call615 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state614) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call615)
  %tobool616.not = icmp eq i32 %call615, 0
  br i1 %tobool616.not, label %if.then617, label %do.body612.if.end669_crit_edge

do.body612.if.end669_crit_edge:                   ; preds = %do.body612
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end669

if.then617:                                       ; preds = %do.body612
  %236 = zext i32 %call609 to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call609, label %do.end636 [
    i32 -5, label %if.then617.do.body651_crit_edge
    i32 -30, label %if.then617.do.body651_crit_edge3019
  ]

if.then617.do.body651_crit_edge3019:              ; preds = %if.then617
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body651

if.then617.do.body651_crit_edge:                  ; preds = %if.then617
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body651

do.end636:                                        ; preds = %if.then617
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 981, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call609) #15
  br label %if.end669

do.body651:                                       ; preds = %if.then617.do.body651_crit_edge, %if.then617.do.body651_crit_edge3019
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_drop_extents.__UNIQUE_ID_ddebug941, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_drop_extents, %if.then663)) #15
          to label %if.end669 [label %if.then663], !srcloc !155

if.then663:                                       ; preds = %do.body651
  call void @__sanitizer_cov_trace_pc() #17
  %237 = ptrtoint ptr %fs_info613 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %fs_info613, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %238, ptr noundef nonnull @.str.9, i32 noundef %call609) #19
  br label %if.end669

if.end669:                                        ; preds = %if.then663, %do.body651, %do.end636, %do.body612.if.end669_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.7, i32 noundef 981, i32 noundef %call609) #19
  br label %if.end720

land.lhs.true677:                                 ; preds = %if.then606.land.lhs.true677_crit_edge, %land.lhs.true603.land.lhs.true677_crit_edge, %if.end84.land.lhs.true677_crit_edge
  %last_end.31053.ph = phi i64 [ %last_end.3, %land.lhs.true603.land.lhs.true677_crit_edge ], [ %last_end.3, %if.then606.land.lhs.true677_crit_edge ], [ %last_end.1.ph1104, %if.end84.land.lhs.true677_crit_edge ]
  %leafs_visited.31052.ph = phi i32 [ %leafs_visited.2, %land.lhs.true603.land.lhs.true677_crit_edge ], [ %leafs_visited.2, %if.then606.land.lhs.true677_crit_edge ], [ %leafs_visited.1, %if.end84.land.lhs.true677_crit_edge ]
  %found.31051.ph = phi i32 [ %found.3, %land.lhs.true603.land.lhs.true677_crit_edge ], [ %found.3, %if.then606.land.lhs.true677_crit_edge ], [ %found.1.ph1102, %if.end84.land.lhs.true677_crit_edge ]
  %del_nr.31050.ph = phi i32 [ %del_nr.3, %land.lhs.true603.land.lhs.true677_crit_edge ], [ 1, %if.then606.land.lhs.true677_crit_edge ], [ %del_nr.1.ph, %if.end84.land.lhs.true677_crit_edge ]
  %239 = ptrtoint ptr %path.0 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %path.0, align 4
  %241 = ptrtoint ptr %replace_extent to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %replace_extent, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool679.not = icmp ne i8 %242, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %leafs_visited.31052.ph)
  %cmp682 = icmp eq i32 %leafs_visited.31052.ph, 1
  %or.cond997 = select i1 %tobool679.not, i1 %cmp682, i1 false
  br i1 %or.cond997, label %land.lhs.true684, label %land.lhs.true677.if.end720_crit_edge

land.lhs.true677.if.end720_crit_edge:             ; preds = %land.lhs.true677
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

land.lhs.true684:                                 ; preds = %land.lhs.true677
  %locks = getelementptr inbounds %struct.btrfs_path, ptr %path.0, i32 0, i32 2
  %243 = ptrtoint ptr %locks to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %locks, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %244)
  %cmp687 = icmp eq i8 %244, 1
  br i1 %cmp687, label %land.lhs.true689, label %land.lhs.true684.if.end720_crit_edge

land.lhs.true684.if.end720_crit_edge:             ; preds = %land.lhs.true684
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

land.lhs.true689:                                 ; preds = %land.lhs.true684
  %call690 = call i32 @btrfs_leaf_free_space(ptr noundef %240) #15
  %extent_item_size = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %args, i32 0, i32 5
  %245 = ptrtoint ptr %extent_item_size to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %extent_item_size, align 4
  %add691 = add i32 %246, 25
  call void @__sanitizer_cov_trace_cmp4(i32 %call690, i32 %add691)
  %cmp692.not = icmp ult i32 %call690, %add691
  br i1 %cmp692.not, label %land.lhs.true689.if.end720_crit_edge, label %if.then694

land.lhs.true689.if.end720_crit_edge:             ; preds = %land.lhs.true689
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end720

if.then694:                                       ; preds = %land.lhs.true689
  %247 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %247)
  store i64 %ino.0.i, ptr %key, align 8
  %248 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 108, ptr %3, align 8
  %249 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %start, align 8
  %251 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %251, i32 8)
  store i64 %250, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_nr.31050.ph)
  %tobool699.not = icmp eq i32 %del_nr.31050.ph, 0
  br i1 %tobool699.not, label %land.lhs.true700, label %if.then694.if.end717_crit_edge

if.then694.if.end717_crit_edge:                   ; preds = %if.then694
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end717

land.lhs.true700:                                 ; preds = %if.then694
  %252 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %slots, align 4
  %pages.i1035 = getelementptr inbounds %struct.extent_buffer, ptr %240, i32 0, i32 12
  %254 = ptrtoint ptr %pages.i1035 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %pages.i1035, align 4
  %call.i1036 = call ptr @page_address(ptr noundef %255) #15
  %256 = ptrtoint ptr %240 to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %240, align 8
  %conv.i1037 = trunc i64 %257 to i32
  %and.i1038 = and i32 %conv.i1037, 4095
  %add.ptr.i1039 = getelementptr i8, ptr %call.i1036, i32 %and.i1038
  %nritems.i1040 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i1039, i32 0, i32 7
  %258 = ptrtoint ptr %nritems.i1040 to i32
  call void @__asan_loadN_noabort(i32 %258, i32 4)
  %259 = load i32, ptr %nritems.i1040, align 1
  %260 = call i32 @llvm.bswap.i32(i32 %259) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %253, i32 %260)
  %cmp704 = icmp ult i32 %253, %260
  br i1 %cmp704, label %if.then706, label %land.lhs.true700.if.end717_crit_edge

land.lhs.true700.if.end717_crit_edge:             ; preds = %land.lhs.true700
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end717

if.then706:                                       ; preds = %land.lhs.true700
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %slot_key) #15
  %261 = call ptr @memset(ptr %slot_key, i32 255, i32 17)
  %262 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %slots, align 4
  call fastcc void @btrfs_item_key_to_cpu(ptr noundef %240, ptr noundef nonnull %slot_key, i32 noundef %263)
  %call709 = call i32 @btrfs_comp_cpu_keys(ptr noundef nonnull %key, ptr noundef nonnull %slot_key) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call709)
  %cmp710 = icmp sgt i32 %call709, 0
  br i1 %cmp710, label %if.then712, label %if.then706.if.end716_crit_edge

if.then706.if.end716_crit_edge:                   ; preds = %if.then706
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end716

if.then712:                                       ; preds = %if.then706
  call void @__sanitizer_cov_trace_pc() #17
  %264 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %slots, align 4
  %inc715 = add i32 %265, 1
  store i32 %inc715, ptr %slots, align 4
  br label %if.end716

if.end716:                                        ; preds = %if.then712, %if.then706.if.end716_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %slot_key) #15
  br label %if.end717

if.end717:                                        ; preds = %if.end716, %land.lhs.true700.if.end717_crit_edge, %if.then694.if.end717_crit_edge
  %266 = ptrtoint ptr %extent_item_size to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %extent_item_size, align 4
  call void @btrfs_setup_item_for_insert(ptr noundef %root, ptr noundef %path.0, ptr noundef nonnull %key, i32 noundef %267) #15
  %268 = ptrtoint ptr %extent_inserted to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 1, ptr %extent_inserted, align 8
  br label %if.end720

if.end720:                                        ; preds = %if.end717, %land.lhs.true689.if.end720_crit_edge, %land.lhs.true684.if.end720_crit_edge, %land.lhs.true677.if.end720_crit_edge, %if.end669, %while.end.if.end720_crit_edge, %if.end594.if.end720_crit_edge, %if.end591, %do.end400.if.end720_crit_edge, %if.then348.if.end720_crit_edge, %if.end282.if.end720_crit_edge, %do.end271.if.end720_crit_edge, %while.cond.outer.backedge.if.end720_crit_edge, %do.end79.if.end720_crit_edge, %if.end23.if.end720_crit_edge
  %ret.71086 = phi i32 [ 0, %if.end717 ], [ 0, %land.lhs.true689.if.end720_crit_edge ], [ 0, %land.lhs.true684.if.end720_crit_edge ], [ 0, %land.lhs.true677.if.end720_crit_edge ], [ %ret.6, %while.end.if.end720_crit_edge ], [ %call609, %if.end669 ], [ -95, %if.then348.if.end720_crit_edge ], [ %call533, %if.end591 ], [ %call2515061523, %if.end23.if.end720_crit_edge ], [ %call.i1001, %do.end79.if.end720_crit_edge ], [ -95, %do.end400.if.end720_crit_edge ], [ -95, %do.end271.if.end720_crit_edge ], [ %call278, %if.end282.if.end720_crit_edge ], [ %call25, %if.end594.if.end720_crit_edge ], [ %call251506, %while.cond.outer.backedge.if.end720_crit_edge ]
  %found.310511083 = phi i32 [ %found.31051.ph, %if.end717 ], [ %found.31051.ph, %land.lhs.true689.if.end720_crit_edge ], [ %found.31051.ph, %land.lhs.true684.if.end720_crit_edge ], [ %found.31051.ph, %land.lhs.true677.if.end720_crit_edge ], [ %found.3, %while.end.if.end720_crit_edge ], [ %found.3, %if.end669 ], [ 1, %if.then348.if.end720_crit_edge ], [ %found.2, %if.end591 ], [ 0, %if.end23.if.end720_crit_edge ], [ %found.1.ph1102, %do.end79.if.end720_crit_edge ], [ 1, %do.end400.if.end720_crit_edge ], [ 1, %do.end271.if.end720_crit_edge ], [ 1, %if.end282.if.end720_crit_edge ], [ %found.2, %if.end594.if.end720_crit_edge ], [ 1, %while.cond.outer.backedge.if.end720_crit_edge ]
  %last_end.310531080 = phi i64 [ %last_end.31053.ph, %if.end717 ], [ %last_end.31053.ph, %land.lhs.true689.if.end720_crit_edge ], [ %last_end.31053.ph, %land.lhs.true684.if.end720_crit_edge ], [ %last_end.31053.ph, %land.lhs.true677.if.end720_crit_edge ], [ %last_end.3, %while.end.if.end720_crit_edge ], [ %last_end.3, %if.end669 ], [ %add206, %if.then348.if.end720_crit_edge ], [ %add206, %if.end591 ], [ %15, %if.end23.if.end720_crit_edge ], [ %last_end.1.ph1104, %do.end79.if.end720_crit_edge ], [ %add206, %do.end400.if.end720_crit_edge ], [ %last_end.1.ph1104, %do.end271.if.end720_crit_edge ], [ %last_end.1.ph1104, %if.end282.if.end720_crit_edge ], [ %add206, %if.end594.if.end720_crit_edge ], [ %last_end.1.ph1104, %while.cond.outer.backedge.if.end720_crit_edge ]
  %269 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %args, align 8
  %tobool722.not = icmp eq ptr %270, null
  br i1 %tobool722.not, label %if.then723, label %if.else724

if.then723:                                       ; preds = %if.end720
  call void @__sanitizer_cov_trace_pc() #17
  call void @btrfs_free_path(ptr noundef %path.0) #15
  br label %out

if.else724:                                       ; preds = %if.end720
  %271 = ptrtoint ptr %extent_inserted to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %extent_inserted, align 8, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %tobool726.not = icmp eq i8 %272, 0
  br i1 %tobool726.not, label %if.then727, label %if.else724.out_crit_edge

if.else724.out_crit_edge:                         ; preds = %if.else724
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then727:                                       ; preds = %if.else724
  call void @__sanitizer_cov_trace_pc() #17
  call void @btrfs_release_path(ptr noundef %path.0) #15
  br label %out

out:                                              ; preds = %if.then727, %if.else724.out_crit_edge, %if.then723
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.310511083)
  %tobool730.not = icmp eq i32 %found.310511083, 0
  br i1 %tobool730.not, label %out.cond.false740_crit_edge, label %cond.true731

out.cond.false740_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false740

cond.true731:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %end732 = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %args, i32 0, i32 2
  %273 = ptrtoint ptr %end732 to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %end732, align 8
  %275 = call i64 @llvm.umin.i64(i64 %274, i64 %last_end.310531080)
  br label %cond.end742

cond.false740:                                    ; preds = %out.cond.false740_crit_edge, %if.then.cond.false740_crit_edge
  %ret.81093 = phi i32 [ %ret.71086, %out.cond.false740_crit_edge ], [ -12, %if.then.cond.false740_crit_edge ]
  %end741 = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %args, i32 0, i32 2
  %276 = ptrtoint ptr %end741 to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %end741, align 8
  br label %cond.end742

cond.end742:                                      ; preds = %cond.false740, %cond.true731
  %ret.81092 = phi i32 [ %ret.71086, %cond.true731 ], [ %ret.81093, %cond.false740 ]
  %cond743 = phi i64 [ %275, %cond.true731 ], [ %277, %cond.false740 ]
  %drop_end = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %args, i32 0, i32 6
  %278 = ptrtoint ptr %drop_end to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 %cond743, ptr %drop_end, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %new_key) #15
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ref) #15
  ret i32 %ret.81092
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_lookup_file_extent(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_item_key_to_cpu(ptr noundef %eb, ptr nocapture noundef writeonly %key, i32 noundef %nr) unnamed_addr #3 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #15
  %0 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 2
  %mul.i.i.i = mul i32 %nr, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %2 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %eb, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i, i32 noundef 17) #15
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %1, align 1
  %5 = call i64 @llvm.bswap.i64(i64 %4) #15
  %offset1.i = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %6 = ptrtoint ptr %offset1.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %offset1.i, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 8
  %type2.i = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %type2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %type2.i, align 1
  %10 = ptrtoint ptr %disk_key to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %disk_key, align 8
  %12 = call i64 @llvm.bswap.i64(i64 %11) #15
  %13 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %key, align 1
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_duplicate_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inc_extent_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_item_key_safe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_free_extent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_leaf_free_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @btrfs_comp_cpu_keys(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_setup_item_for_insert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_mark_extent_written(ptr noundef %trans, ptr nocapture noundef readonly %inode, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %ref = alloca %struct.btrfs_ref, align 8
  %key = alloca %struct.btrfs_key, align 8
  %new_key = alloca %struct.btrfs_key, align 8
  %other_start = alloca i64, align 8
  %other_end = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ref) #15
  %4 = call ptr @memset(ptr %ref, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #15
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %6 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %new_key) #15
  %7 = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 2
  %8 = call ptr @memset(ptr %new_key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %other_start) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %other_end) #15
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %9 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %12)
  %cmp.i = icmp eq i8 %12, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %13 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %14 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %10, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %call3 = tail call ptr @btrfs_alloc_path() #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %btrfs_ino.exit.cleanup_crit_edge, label %again.preheader

btrfs_ino.exit.cleanup_crit_edge:                 ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

again.preheader:                                  ; preds = %btrfs_ino.exit
  %15 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %ino.0.i, ptr %key, align 8
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 108, ptr %5, align 8
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %start, ptr %6, align 1
  %call411891193 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %call3, i32 noundef -1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411891193)
  %cmp11901194 = icmp slt i32 %call411891193, 0
  br i1 %cmp11901194, label %again.preheader.out_crit_edge, label %if.end6.lr.ph.lr.ph

again.preheader.out_crit_edge:                    ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end6.lr.ph.lr.ph:                              ; preds = %again.preheader
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %action1.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 1
  %bytenr2.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 4
  %len3.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 5
  %parent4.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 6
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %3, i32 0, i32 7
  %real_root.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 3
  %20 = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7
  %ino1.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7, i32 0, i32 1
  %offset2.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7, i32 0, i32 2
  %21 = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 2
  br label %if.end6.lr.ph

if.end6.lr.ph:                                    ; preds = %if.then598.if.end6.lr.ph_crit_edge, %if.end6.lr.ph.lr.ph
  %call411891197 = phi i32 [ %call411891193, %if.end6.lr.ph.lr.ph ], [ %call41189, %if.then598.if.end6.lr.ph_crit_edge ]
  %del_nr.0.ph1196 = phi i32 [ 0, %if.end6.lr.ph.lr.ph ], [ %del_nr.1, %if.then598.if.end6.lr.ph_crit_edge ]
  %del_slot.0.ph1195 = phi i32 [ 0, %if.end6.lr.ph.lr.ph ], [ %del_slot.1, %if.then598.if.end6.lr.ph_crit_edge ]
  br label %if.end6

if.end6:                                          ; preds = %again.backedge.if.end6_crit_edge, %if.end6.lr.ph
  %call41191 = phi i32 [ %call411891197, %if.end6.lr.ph ], [ %call4, %again.backedge.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41191)
  %cmp7.not = icmp eq i32 %call41191, 0
  br i1 %cmp7.not, label %if.end6.if.end12_crit_edge, label %land.lhs.true

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %22 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp8 = icmp sgt i32 %23, 0
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %dec = add nsw i32 %23, -1
  %24 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %dec, ptr %slots, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %25 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call3, align 4
  %27 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #15
  %mul.i.i.i.i = mul i32 %28, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %29 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %26, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #15
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %19, align 1
  %32 = call i64 @llvm.bswap.i64(i64 %31) #15
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %6, align 1
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %18, align 8
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %5, align 8
  %37 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %disk_key.i, align 8
  %39 = call i64 @llvm.bswap.i64(i64 %38) #15
  %40 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %ino.0.i)
  %cmp17.not = icmp eq i64 %39, %ino.0.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %35)
  %cmp19.not = icmp eq i8 %35, 108
  %or.cond1095 = select i1 %cmp17.not, i1 %cmp19.not, i1 false
  br i1 %or.cond1095, label %if.end69, label %if.then21

if.then21:                                        ; preds = %if.end12
  %41 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %42, i32 0, i32 149
  %call23 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end, label %if.then21.if.end66_crit_edge

if.then21.if.end66_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1104, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef -22) #15
  br label %if.end66

if.end66:                                         ; preds = %do.end, %if.then21.if.end66_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.10, i32 noundef 1104, i32 noundef -22) #19
  br label %out

if.end69:                                         ; preds = %if.end12
  %43 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %44, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %45 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %26, ptr noundef %45, i32 noundef 17) #15
  %add = add i32 %call.i.i, 101
  %46 = inttoptr i32 %add to ptr
  %call.i = call zeroext i8 @btrfs_get_8(ptr noundef %26, ptr noundef %46, i32 noundef 20) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i)
  %cmp75.not = icmp eq i8 %call.i, 2
  br i1 %cmp75.not, label %if.end138, label %if.then77

if.then77:                                        ; preds = %if.end69
  %47 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fs_info1, align 4
  %fs_state80 = getelementptr inbounds %struct.btrfs_fs_info, ptr %48, i32 0, i32 149
  %call81 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state80) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.end102, label %if.then77.if.end135_crit_edge

if.then77.if.end135_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end135

do.end102:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1111, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef -22) #15
  br label %if.end135

if.end135:                                        ; preds = %do.end102, %if.then77.if.end135_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.10, i32 noundef 1111, i32 noundef -22) #19
  br label %out

if.end138:                                        ; preds = %if.end69
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %6, align 1
  %call.i1052 = call i64 @btrfs_get_64(ptr noundef %26, ptr noundef %46, i32 noundef 45) #15
  %add141 = add i64 %call.i1052, %50
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %start)
  %cmp143 = icmp ugt i64 %52, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %add141, i64 %end)
  %cmp146 = icmp ult i64 %add141, %end
  %or.cond = select i1 %cmp143, i1 true, i1 %cmp146
  br i1 %or.cond, label %if.then148, label %if.end209

if.then148:                                       ; preds = %if.end138
  %53 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fs_info1, align 4
  %fs_state151 = getelementptr inbounds %struct.btrfs_fs_info, ptr %54, i32 0, i32 149
  %call152 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state151) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %do.end173, label %if.then148.if.end206_crit_edge

if.then148.if.end206_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end206

do.end173:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1117, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef -22) #15
  br label %if.end206

if.end206:                                        ; preds = %do.end173, %if.then148.if.end206_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.10, i32 noundef 1117, i32 noundef -22) #19
  br label %out

if.end209:                                        ; preds = %if.end138
  %call.i1053 = call i64 @btrfs_get_64(ptr noundef %26, ptr noundef %46, i32 noundef 21) #15
  %call.i1054 = call i64 @btrfs_get_64(ptr noundef %26, ptr noundef %46, i32 noundef 29) #15
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %6, align 1
  %call.i1055 = call i64 @btrfs_get_64(ptr noundef %26, ptr noundef %46, i32 noundef 37) #15
  %sub = sub i64 %56, %call.i1055
  %57 = call ptr @memcpy(ptr %new_key, ptr %key, i32 17)
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %start)
  %cmp215 = icmp eq i64 %59, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %add141, i64 %end)
  %cmp218 = icmp ugt i64 %add141, %end
  %or.cond1037 = select i1 %cmp215, i1 %cmp218, i1 false
  br i1 %or.cond1037, label %if.then220, label %if.end209.if.end242_crit_edge

if.end209.if.end242_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end242

if.then220:                                       ; preds = %if.end209
  %60 = ptrtoint ptr %other_start to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %other_start, align 8
  %61 = ptrtoint ptr %other_end to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %start, ptr %other_end, align 8
  %62 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %slots, align 4
  %sub223 = add i32 %63, -1
  %call224 = call fastcc i32 @extent_mergeable(ptr noundef %26, i32 noundef %sub223, i64 noundef %ino.0.i, i64 noundef %call.i1053, i64 noundef %sub, ptr noundef nonnull %other_start, ptr noundef nonnull %other_end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.then220.if.end242_crit_edge, label %if.then226

if.then220.if.end242_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end242

if.then226:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 %end, ptr %7, align 1
  call void @btrfs_set_item_key_safe(ptr noundef %1, ptr noundef nonnull %call3, ptr noundef nonnull %new_key) #15
  %65 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %slots, align 4
  %mul.i.i.i1056 = mul i32 %66, 25
  %add.i.i.i1057 = add i32 %mul.i.i.i1056, 101
  %67 = inttoptr i32 %add.i.i.i1057 to ptr
  %call.i.i1058 = call i32 @btrfs_get_32(ptr noundef %26, ptr noundef %67, i32 noundef 17) #15
  %add231 = add i32 %call.i.i1058, 101
  %68 = inttoptr i32 %add231 to ptr
  %69 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %26, ptr noundef %68, i32 noundef 0, i64 noundef %70) #15
  %sub232 = sub i64 %add141, %end
  call void @btrfs_set_64(ptr noundef %26, ptr noundef %68, i32 noundef 45, i64 noundef %sub232) #15
  %sub233 = sub i64 %end, %sub
  call void @btrfs_set_64(ptr noundef %26, ptr noundef %68, i32 noundef 37, i64 noundef %sub233) #15
  %71 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %slots, align 4
  %73 = mul i32 %72, 25
  %add.i.i.i1060 = add i32 %73, 76
  %74 = inttoptr i32 %add.i.i.i1060 to ptr
  %call.i.i1061 = call i32 @btrfs_get_32(ptr noundef %26, ptr noundef %74, i32 noundef 17) #15
  %add238 = add i32 %call.i.i1061, 101
  %75 = inttoptr i32 %add238 to ptr
  %76 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %26, ptr noundef %75, i32 noundef 0, i64 noundef %77) #15
  %78 = ptrtoint ptr %other_start to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %other_start, align 8
  %sub240 = sub i64 %end, %79
  call void @btrfs_set_64(ptr noundef %26, ptr noundef %75, i32 noundef 45, i64 noundef %sub240) #15
  call void @btrfs_mark_buffer_dirty(ptr noundef %26) #15
  br label %out

if.end242:                                        ; preds = %if.then220.if.end242_crit_edge, %if.end209.if.end242_crit_edge
  %80 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 8)
  %81 = load i64, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %start)
  %cmp244 = icmp ult i64 %81, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %add141, i64 %end)
  %cmp247 = icmp eq i64 %add141, %end
  %or.cond1038 = select i1 %cmp244, i1 %cmp247, i1 false
  br i1 %or.cond1038, label %if.then249, label %if.end242.if.end274_crit_edge

if.end242.if.end274_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end274

if.then249:                                       ; preds = %if.end242
  %82 = ptrtoint ptr %other_start to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %end, ptr %other_start, align 8
  %83 = ptrtoint ptr %other_end to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 0, ptr %other_end, align 8
  %84 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %slots, align 4
  %add252 = add i32 %85, 1
  %call253 = call fastcc i32 @extent_mergeable(ptr noundef %26, i32 noundef %add252, i64 noundef %ino.0.i, i64 noundef %call.i1053, i64 noundef %sub, ptr noundef nonnull %other_start, ptr noundef nonnull %other_end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.then249.if.end274_crit_edge, label %if.then255

if.then249.if.end274_crit_edge:                   ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end274

if.then255:                                       ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %slots, align 4
  %mul.i.i.i1062 = mul i32 %87, 25
  %add.i.i.i1063 = add i32 %mul.i.i.i1062, 101
  %88 = inttoptr i32 %add.i.i.i1063 to ptr
  %call.i.i1064 = call i32 @btrfs_get_32(ptr noundef %26, ptr noundef %88, i32 noundef 17) #15
  %add259 = add i32 %call.i.i1064, 101
  %89 = inttoptr i32 %add259 to ptr
  %90 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 8)
  %91 = load i64, ptr %6, align 1
  %sub261 = sub i64 %start, %91
  call void @btrfs_set_64(ptr noundef %26, ptr noundef %89, i32 noundef 45, i64 noundef %sub261) #15
  %92 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %26, ptr noundef %89, i32 noundef 0, i64 noundef %93) #15
  %94 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %slots, align 4
  %inc = add i32 %95, 1
  store i32 %inc, ptr %slots, align 4
  %96 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 %start, ptr %7, align 1
  call void @btrfs_set_item_key_safe(ptr noundef %1, ptr noundef nonnull %call3, ptr noundef nonnull %new_key) #15
  %97 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %slots, align 4
  %mul.i.i.i1065 = mul i32 %98, 25
  %add.i.i.i1066 = add i32 %mul.i.i.i1065, 101
  %99 = inttoptr i32 %add.i.i.i1066 to ptr
  %call.i.i1067 = call i32 @btrfs_get_32(ptr noundef %26, ptr noundef %99, i32 noundef 17) #15
  %add269 = add i32 %call.i.i1067, 101
  %100 = inttoptr i32 %add269 to ptr
  %101 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %26, ptr noundef %100, i32 noundef 0, i64 noundef %102) #15
  %103 = ptrtoint ptr %other_end to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %other_end, align 8
  %sub271 = sub i64 %104, %start
  call void @btrfs_set_64(ptr noundef %26, ptr noundef %100, i32 noundef 45, i64 noundef %sub271) #15
  %sub272 = sub i64 %start, %sub
  call void @btrfs_set_64(ptr noundef %26, ptr noundef %100, i32 noundef 37, i64 noundef %sub272) #15
  call void @btrfs_mark_buffer_dirty(ptr noundef %26) #15
  br label %out

if.end274:                                        ; preds = %if.then249.if.end274_crit_edge, %if.end242.if.end274_crit_edge
  %105 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 8)
  %106 = load i64, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %106, i64 %start)
  %cmp2761181 = icmp ult i64 %106, %start
  %or.cond10391183 = select i1 %cmp2761181, i1 true, i1 %cmp218
  br i1 %or.cond10391183, label %if.end274.while.body_crit_edge, label %if.end274.while.end_crit_edge

if.end274.while.end_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end274.while.body_crit_edge:                   ; preds = %if.end274
  br label %while.body

while.body:                                       ; preds = %if.end510.while.body_crit_edge, %if.end274.while.body_crit_edge
  %107 = phi i64 [ %161, %if.end510.while.body_crit_edge ], [ %106, %if.end274.while.body_crit_edge ]
  %extent_end.01185 = phi i64 [ %extent_end.1, %if.end510.while.body_crit_edge ], [ %add141, %if.end274.while.body_crit_edge ]
  %split.01184 = phi i64 [ %spec.select, %if.end510.while.body_crit_edge ], [ %start, %if.end274.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %start)
  %cmp281 = icmp eq i64 %107, %start
  %spec.select = select i1 %cmp281, i64 %end, i64 %split.01184
  %108 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 8)
  store i64 %spec.select, ptr %7, align 1
  %call286 = call i32 @btrfs_duplicate_item(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %call3, ptr noundef nonnull %new_key) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call286)
  %cmp287 = icmp eq i32 %call286, -11
  br i1 %cmp287, label %while.body.again.backedge_crit_edge, label %if.end290

while.body.again.backedge_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %again.backedge

again.backedge:                                   ; preds = %if.then518.again.backedge_crit_edge, %while.body.again.backedge_crit_edge
  call void @btrfs_release_path(ptr noundef nonnull %call3) #15
  %109 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %ino.0.i, ptr %key, align 8
  %110 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 108, ptr %5, align 8
  %111 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 8)
  store i64 %start, ptr %6, align 1
  %call4 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %call3, i32 noundef -1, i32 noundef 1) #15
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %again.backedge.out_crit_edge, label %again.backedge.if.end6_crit_edge

again.backedge.if.end6_crit_edge:                 ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

again.backedge.out_crit_edge:                     ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end290:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286)
  %cmp291 = icmp slt i32 %call286, 0
  br i1 %cmp291, label %do.body294, label %if.end354

do.body294:                                       ; preds = %if.end290
  %112 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %fs_info1, align 4
  %fs_state296 = getelementptr inbounds %struct.btrfs_fs_info, ptr %113, i32 0, i32 149
  %call297 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state296) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297)
  %tobool298.not = icmp eq i32 %call297, 0
  br i1 %tobool298.not, label %if.then299, label %do.body294.if.end351_crit_edge

do.body294.if.end351_crit_edge:                   ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end351

if.then299:                                       ; preds = %do.body294
  %114 = zext i32 %call286 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call286, label %do.end318 [
    i32 -5, label %if.then299.do.body333_crit_edge
    i32 -30, label %if.then299.do.body333_crit_edge1575
  ]

if.then299.do.body333_crit_edge1575:              ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body333

if.then299.do.body333_crit_edge:                  ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body333

do.end318:                                        ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1193, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call286) #15
  br label %if.end351

do.body333:                                       ; preds = %if.then299.do.body333_crit_edge, %if.then299.do.body333_crit_edge1575
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_mark_extent_written.__UNIQUE_ID_ddebug947, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_mark_extent_written, %if.then345)) #15
          to label %if.end351 [label %if.then345], !srcloc !155

if.then345:                                       ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #17
  %115 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %116, ptr noundef nonnull @.str.9, i32 noundef %call286) #19
  br label %if.end351

if.end351:                                        ; preds = %if.then345, %do.body333, %do.end318, %do.body294.if.end351_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.10, i32 noundef 1193, i32 noundef %call286) #19
  br label %out

if.end354:                                        ; preds = %if.end290
  %117 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call3, align 4
  %119 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %slots, align 4
  %121 = mul i32 %120, 25
  %add.i.i.i1069 = add i32 %121, 76
  %122 = inttoptr i32 %add.i.i.i1069 to ptr
  %call.i.i1070 = call i32 @btrfs_get_32(ptr noundef %118, ptr noundef %122, i32 noundef 17) #15
  %add361 = add i32 %call.i.i1070, 101
  %123 = inttoptr i32 %add361 to ptr
  %124 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %118, ptr noundef %123, i32 noundef 0, i64 noundef %125) #15
  %126 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 8)
  %127 = load i64, ptr %6, align 1
  %sub364 = sub i64 %spec.select, %127
  call void @btrfs_set_64(ptr noundef %118, ptr noundef %123, i32 noundef 45, i64 noundef %sub364) #15
  %128 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %slots, align 4
  %mul.i.i.i1071 = mul i32 %129, 25
  %add.i.i.i1072 = add i32 %mul.i.i.i1071, 101
  %130 = inttoptr i32 %add.i.i.i1072 to ptr
  %call.i.i1073 = call i32 @btrfs_get_32(ptr noundef %118, ptr noundef %130, i32 noundef 17) #15
  %add368 = add i32 %call.i.i1073, 101
  %131 = inttoptr i32 %add368 to ptr
  %132 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %118, ptr noundef %131, i32 noundef 0, i64 noundef %133) #15
  %sub370 = sub i64 %spec.select, %sub
  call void @btrfs_set_64(ptr noundef %118, ptr noundef %131, i32 noundef 37, i64 noundef %sub370) #15
  %sub371 = sub i64 %extent_end.01185, %spec.select
  call void @btrfs_set_64(ptr noundef %118, ptr noundef %131, i32 noundef 45, i64 noundef %sub371) #15
  call void @btrfs_mark_buffer_dirty(ptr noundef %118) #15
  %134 = ptrtoint ptr %action1.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %action1.i, align 4
  %135 = ptrtoint ptr %bytenr2.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %call.i1053, ptr %bytenr2.i, align 8
  %136 = ptrtoint ptr %len3.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %call.i1054, ptr %len3.i, align 8
  %137 = ptrtoint ptr %parent4.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 0, ptr %parent4.i, align 8
  %138 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %138, i32 8)
  %139 = load i64, ptr %root_key, align 1
  %140 = ptrtoint ptr %real_root.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %139, ptr %real_root.i, align 8
  %141 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %139, ptr %20, align 8
  %142 = ptrtoint ptr %ino1.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %ino.0.i, ptr %ino1.i, align 8
  %143 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %sub, ptr %offset2.i, align 8
  %144 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %139)
  %cmp.i.i = icmp ne i64 %139, 5
  %145 = add i64 %139, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %145)
  %146 = icmp ult i64 %145, -281474976710400
  %tobool4.not.i = and i1 %cmp.i.i, %146
  %spec.select.i = zext i1 %tobool4.not.i to i8
  %147 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %spec.select.i, ptr %21, align 8
  %call373 = call i32 @btrfs_inc_extent_ref(ptr noundef %trans, ptr noundef nonnull %ref) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %tobool374.not = icmp eq i32 %call373, 0
  br i1 %tobool374.not, label %if.end436, label %do.body376

do.body376:                                       ; preds = %if.end354
  %148 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fs_info1, align 4
  %fs_state378 = getelementptr inbounds %struct.btrfs_fs_info, ptr %149, i32 0, i32 149
  %call379 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state378) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call379)
  %tobool380.not = icmp eq i32 %call379, 0
  br i1 %tobool380.not, label %if.then381, label %do.body376.if.end433_crit_edge

do.body376.if.end433_crit_edge:                   ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end433

if.then381:                                       ; preds = %do.body376
  %150 = zext i32 %call373 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call373, label %do.end400 [
    i32 -5, label %if.then381.do.body415_crit_edge
    i32 -30, label %if.then381.do.body415_crit_edge1576
  ]

if.then381.do.body415_crit_edge1576:              ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body415

if.then381.do.body415_crit_edge:                  ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body415

do.end400:                                        ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1219, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call373) #15
  br label %if.end433

do.body415:                                       ; preds = %if.then381.do.body415_crit_edge, %if.then381.do.body415_crit_edge1576
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_mark_extent_written.__UNIQUE_ID_ddebug948, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_mark_extent_written, %if.then427)) #15
          to label %if.end433 [label %if.then427], !srcloc !155

if.then427:                                       ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #17
  %151 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %152, ptr noundef nonnull @.str.9, i32 noundef %call373) #19
  br label %if.end433

if.end433:                                        ; preds = %if.then427, %do.body415, %do.end400, %do.body376.if.end433_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.10, i32 noundef 1219, i32 noundef %call373) #19
  br label %out

if.end436:                                        ; preds = %if.end354
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %start)
  %cmp437 = icmp eq i64 %spec.select, %start
  br i1 %cmp437, label %if.then439, label %if.else441

if.then439:                                       ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #17
  %153 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 8)
  store i64 %start, ptr %6, align 1
  br label %if.end510

if.else441:                                       ; preds = %if.end436
  %154 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 8)
  %155 = load i64, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %155, i64 %start)
  %cmp443.not = icmp eq i64 %155, %start
  br i1 %cmp443.not, label %if.end506, label %if.then445

if.then445:                                       ; preds = %if.else441
  %156 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %fs_info1, align 4
  %fs_state448 = getelementptr inbounds %struct.btrfs_fs_info, ptr %157, i32 0, i32 149
  %call449 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state448) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call449)
  %tobool450.not = icmp eq i32 %call449, 0
  br i1 %tobool450.not, label %do.end470, label %if.then445.if.end503_crit_edge

if.then445.if.end503_crit_edge:                   ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end503

do.end470:                                        ; preds = %if.then445
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1228, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef -22) #15
  br label %if.end503

if.end503:                                        ; preds = %do.end470, %if.then445.if.end503_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.10, i32 noundef 1228, i32 noundef -22) #19
  br label %out

if.end506:                                        ; preds = %if.else441
  call void @__sanitizer_cov_trace_pc() #17
  %158 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %slots, align 4
  %dec509 = add i32 %159, -1
  store i32 %dec509, ptr %slots, align 4
  br label %if.end510

if.end510:                                        ; preds = %if.end506, %if.then439
  %extent_end.1 = phi i64 [ %extent_end.01185, %if.then439 ], [ %end, %if.end506 ]
  %160 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 8)
  %161 = load i64, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %161, i64 %start)
  %cmp276 = icmp ult i64 %161, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %extent_end.1, i64 %end)
  %cmp278 = icmp ugt i64 %extent_end.1, %end
  %or.cond1039 = select i1 %cmp276, i1 true, i1 %cmp278
  br i1 %or.cond1039, label %if.end510.while.body_crit_edge, label %if.end510.while.end_crit_edge

if.end510.while.end_crit_edge:                    ; preds = %if.end510
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end510.while.body_crit_edge:                   ; preds = %if.end510
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %if.end510.while.end_crit_edge, %if.end274.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call41191, %if.end274.while.end_crit_edge ], [ 0, %if.end510.while.end_crit_edge ]
  %extent_end.0.lcssa = phi i64 [ %add141, %if.end274.while.end_crit_edge ], [ %extent_end.1, %if.end510.while.end_crit_edge ]
  %leaf.0.lcssa = phi ptr [ %26, %if.end274.while.end_crit_edge ], [ %118, %if.end510.while.end_crit_edge ]
  %162 = ptrtoint ptr %other_start to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %end, ptr %other_start, align 8
  %163 = ptrtoint ptr %other_end to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 0, ptr %other_end, align 8
  %164 = ptrtoint ptr %action1.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 2, ptr %action1.i, align 4
  %165 = ptrtoint ptr %bytenr2.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %call.i1053, ptr %bytenr2.i, align 8
  %166 = ptrtoint ptr %len3.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %call.i1054, ptr %len3.i, align 8
  %167 = ptrtoint ptr %parent4.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 0, ptr %parent4.i, align 8
  %168 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %168, i32 8)
  %169 = load i64, ptr %root_key, align 1
  %170 = ptrtoint ptr %real_root.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %169, ptr %real_root.i, align 8
  %171 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %169, ptr %20, align 8
  %172 = ptrtoint ptr %ino1.i to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %ino.0.i, ptr %ino1.i, align 8
  %173 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %sub, ptr %offset2.i, align 8
  %174 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %169)
  %cmp.i.i1081 = icmp ne i64 %169, 5
  %175 = add i64 %169, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %175)
  %176 = icmp ult i64 %175, -281474976710400
  %tobool4.not.i1082 = and i1 %cmp.i.i1081, %176
  %spec.select.i1083 = zext i1 %tobool4.not.i1082 to i8
  %177 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %spec.select.i1083, ptr %21, align 8
  %178 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %slots, align 4
  %add515 = add i32 %179, 1
  %call516 = call fastcc i32 @extent_mergeable(ptr noundef %leaf.0.lcssa, i32 noundef %add515, i64 noundef %ino.0.i, i64 noundef %call.i1053, i64 noundef %sub, ptr noundef nonnull %other_start, ptr noundef nonnull %other_end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call516)
  %tobool517.not = icmp eq i32 %call516, 0
  br i1 %tobool517.not, label %while.end.if.end590_crit_edge, label %if.then518

while.end.if.end590_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end590

if.then518:                                       ; preds = %while.end
  br i1 %or.cond10391183, label %if.then518.again.backedge_crit_edge, label %if.end521

if.then518.again.backedge_crit_edge:              ; preds = %if.then518
  call void @__sanitizer_cov_trace_pc() #17
  br label %again.backedge

if.end521:                                        ; preds = %if.then518
  %180 = ptrtoint ptr %other_end to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %other_end, align 8
  %182 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %slots, align 4
  %add524 = add i32 %183, 1
  %inc525 = add i32 %del_nr.0.ph1196, 1
  %call526 = call i32 @btrfs_free_extent(ptr noundef %trans, ptr noundef nonnull %ref) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call526)
  %tobool527.not = icmp eq i32 %call526, 0
  br i1 %tobool527.not, label %if.end521.if.end590_crit_edge, label %do.body529

if.end521.if.end590_crit_edge:                    ; preds = %if.end521
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end590

do.body529:                                       ; preds = %if.end521
  %184 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %fs_info1, align 4
  %fs_state531 = getelementptr inbounds %struct.btrfs_fs_info, ptr %185, i32 0, i32 149
  %call532 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state531) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call532)
  %tobool533.not = icmp eq i32 %call532, 0
  br i1 %tobool533.not, label %if.then534, label %do.body529.if.end586_crit_edge

do.body529.if.end586_crit_edge:                   ; preds = %do.body529
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end586

if.then534:                                       ; preds = %do.body529
  %186 = zext i32 %call526 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call526, label %do.end553 [
    i32 -5, label %if.then534.do.body568_crit_edge
    i32 -30, label %if.then534.do.body568_crit_edge1577
  ]

if.then534.do.body568_crit_edge1577:              ; preds = %if.then534
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body568

if.then534.do.body568_crit_edge:                  ; preds = %if.then534
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body568

do.end553:                                        ; preds = %if.then534
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1255, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call526) #15
  br label %if.end586

do.body568:                                       ; preds = %if.then534.do.body568_crit_edge, %if.then534.do.body568_crit_edge1577
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_mark_extent_written.__UNIQUE_ID_ddebug950, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_mark_extent_written, %if.then580)) #15
          to label %if.end586 [label %if.then580], !srcloc !155

if.then580:                                       ; preds = %do.body568
  call void @__sanitizer_cov_trace_pc() #17
  %187 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %188, ptr noundef nonnull @.str.9, i32 noundef %call526) #19
  br label %if.end586

if.end586:                                        ; preds = %if.then580, %do.body568, %do.end553, %do.body529.if.end586_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.10, i32 noundef 1255, i32 noundef %call526) #19
  br label %out

if.end590:                                        ; preds = %if.end521.if.end590_crit_edge, %while.end.if.end590_crit_edge
  %ret.1 = phi i32 [ 0, %if.end521.if.end590_crit_edge ], [ %ret.0.lcssa, %while.end.if.end590_crit_edge ]
  %del_slot.1 = phi i32 [ %add524, %if.end521.if.end590_crit_edge ], [ %del_slot.0.ph1195, %while.end.if.end590_crit_edge ]
  %del_nr.1 = phi i32 [ %inc525, %if.end521.if.end590_crit_edge ], [ %del_nr.0.ph1196, %while.end.if.end590_crit_edge ]
  %extent_end.2 = phi i64 [ %181, %if.end521.if.end590_crit_edge ], [ %extent_end.0.lcssa, %while.end.if.end590_crit_edge ]
  %189 = ptrtoint ptr %other_start to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 0, ptr %other_start, align 8
  %190 = ptrtoint ptr %other_end to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %start, ptr %other_end, align 8
  %191 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %slots, align 4
  %sub593 = add i32 %192, -1
  %call594 = call fastcc i32 @extent_mergeable(ptr noundef %leaf.0.lcssa, i32 noundef %sub593, i64 noundef %ino.0.i, i64 noundef %call.i1053, i64 noundef %sub, ptr noundef nonnull %other_start, ptr noundef nonnull %other_end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call594)
  %tobool595.not = icmp eq i32 %call594, 0
  br i1 %tobool595.not, label %if.end590.if.end668_crit_edge, label %if.then596

if.end590.if.end668_crit_edge:                    ; preds = %if.end590
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end668

if.then596:                                       ; preds = %if.end590
  br i1 %or.cond10391183, label %if.then598, label %if.end599

if.then598:                                       ; preds = %if.then596
  call void @btrfs_release_path(ptr noundef nonnull %call3) #15
  %193 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %ino.0.i, ptr %key, align 8
  %194 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 108, ptr %5, align 8
  %195 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %195, i32 8)
  store i64 %start, ptr %6, align 1
  %call41189 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %call3, i32 noundef -1, i32 noundef 1) #15
  %cmp1190 = icmp slt i32 %call41189, 0
  br i1 %cmp1190, label %if.then598.out_crit_edge, label %if.then598.if.end6.lr.ph_crit_edge

if.then598.if.end6.lr.ph_crit_edge:               ; preds = %if.then598
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.lr.ph

if.then598.out_crit_edge:                         ; preds = %if.then598
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end599:                                        ; preds = %if.then596
  %196 = ptrtoint ptr %other_start to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %other_start, align 8
  %198 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %198, i32 8)
  store i64 %197, ptr %6, align 1
  %199 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %slots, align 4
  %inc603 = add i32 %del_nr.1, 1
  %call604 = call i32 @btrfs_free_extent(ptr noundef %trans, ptr noundef nonnull %ref) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call604)
  %tobool605.not = icmp eq i32 %call604, 0
  br i1 %tobool605.not, label %if.end599.if.end668_crit_edge, label %do.body607

if.end599.if.end668_crit_edge:                    ; preds = %if.end599
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end668

do.body607:                                       ; preds = %if.end599
  %201 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %fs_info1, align 4
  %fs_state609 = getelementptr inbounds %struct.btrfs_fs_info, ptr %202, i32 0, i32 149
  %call610 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state609) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call610)
  %tobool611.not = icmp eq i32 %call610, 0
  br i1 %tobool611.not, label %if.then612, label %do.body607.if.end664_crit_edge

do.body607.if.end664_crit_edge:                   ; preds = %do.body607
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end664

if.then612:                                       ; preds = %do.body607
  %203 = zext i32 %call604 to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call604, label %do.end631 [
    i32 -5, label %if.then612.do.body646_crit_edge
    i32 -30, label %if.then612.do.body646_crit_edge1578
  ]

if.then612.do.body646_crit_edge1578:              ; preds = %if.then612
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body646

if.then612.do.body646_crit_edge:                  ; preds = %if.then612
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body646

do.end631:                                        ; preds = %if.then612
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1273, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call604) #15
  br label %if.end664

do.body646:                                       ; preds = %if.then612.do.body646_crit_edge, %if.then612.do.body646_crit_edge1578
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_mark_extent_written.__UNIQUE_ID_ddebug951, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_mark_extent_written, %if.then658)) #15
          to label %if.end664 [label %if.then658], !srcloc !155

if.then658:                                       ; preds = %do.body646
  call void @__sanitizer_cov_trace_pc() #17
  %204 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %205, ptr noundef nonnull @.str.9, i32 noundef %call604) #19
  br label %if.end664

if.end664:                                        ; preds = %if.then658, %do.body646, %do.end631, %do.body607.if.end664_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.10, i32 noundef 1273, i32 noundef %call604) #19
  br label %out

if.end668:                                        ; preds = %if.end599.if.end668_crit_edge, %if.end590.if.end668_crit_edge
  %ret.2 = phi i32 [ 0, %if.end599.if.end668_crit_edge ], [ %ret.1, %if.end590.if.end668_crit_edge ]
  %del_slot.2 = phi i32 [ %200, %if.end599.if.end668_crit_edge ], [ %del_slot.1, %if.end590.if.end668_crit_edge ]
  %del_nr.2 = phi i32 [ %inc603, %if.end599.if.end668_crit_edge ], [ %del_nr.1, %if.end590.if.end668_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %del_nr.2)
  %cmp669 = icmp eq i32 %del_nr.2, 0
  br i1 %cmp669, label %if.then671, label %if.else677

if.then671:                                       ; preds = %if.end668
  call void @__sanitizer_cov_trace_pc() #17
  %206 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %slots, align 4
  %mul.i.i.i1084 = mul i32 %207, 25
  %add.i.i.i1085 = add i32 %mul.i.i.i1084, 101
  %208 = inttoptr i32 %add.i.i.i1085 to ptr
  %call.i.i1086 = call i32 @btrfs_get_32(ptr noundef %leaf.0.lcssa, ptr noundef %208, i32 noundef 17) #15
  %add675 = add i32 %call.i.i1086, 101
  %209 = inttoptr i32 %add675 to ptr
  call void @btrfs_set_8(ptr noundef %leaf.0.lcssa, ptr noundef %209, i32 noundef 20, i8 noundef zeroext 1) #15
  %210 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %leaf.0.lcssa, ptr noundef %209, i32 noundef 0, i64 noundef %211) #15
  call void @btrfs_mark_buffer_dirty(ptr noundef %leaf.0.lcssa) #15
  br label %out

if.else677:                                       ; preds = %if.end668
  %212 = mul i32 %del_slot.2, 25
  %add.i.i.i1088 = add i32 %212, 76
  %213 = inttoptr i32 %add.i.i.i1088 to ptr
  %call.i.i1089 = call i32 @btrfs_get_32(ptr noundef %leaf.0.lcssa, ptr noundef %213, i32 noundef 17) #15
  %add680 = add i32 %call.i.i1089, 101
  %214 = inttoptr i32 %add680 to ptr
  call void @btrfs_set_8(ptr noundef %leaf.0.lcssa, ptr noundef %214, i32 noundef 20, i8 noundef zeroext 1) #15
  %215 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %leaf.0.lcssa, ptr noundef %214, i32 noundef 0, i64 noundef %216) #15
  %217 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 8)
  %218 = load i64, ptr %6, align 1
  %sub683 = sub i64 %extent_end.2, %218
  call void @btrfs_set_64(ptr noundef %leaf.0.lcssa, ptr noundef %214, i32 noundef 45, i64 noundef %sub683) #15
  call void @btrfs_mark_buffer_dirty(ptr noundef %leaf.0.lcssa) #15
  %call684 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %call3, i32 noundef %del_slot.2, i32 noundef %del_nr.2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call684)
  %cmp685 = icmp slt i32 %call684, 0
  br i1 %cmp685, label %do.body688, label %if.else677.out_crit_edge

if.else677.out_crit_edge:                         ; preds = %if.else677
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body688:                                       ; preds = %if.else677
  %219 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %fs_info1, align 4
  %fs_state690 = getelementptr inbounds %struct.btrfs_fs_info, ptr %220, i32 0, i32 149
  %call691 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state690) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call691)
  %tobool692.not = icmp eq i32 %call691, 0
  br i1 %tobool692.not, label %if.then693, label %do.body688.if.end745_crit_edge

do.body688.if.end745_crit_edge:                   ; preds = %do.body688
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end745

if.then693:                                       ; preds = %do.body688
  %221 = zext i32 %call684 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call684, label %do.end712 [
    i32 -5, label %if.then693.do.body727_crit_edge
    i32 -30, label %if.then693.do.body727_crit_edge1579
  ]

if.then693.do.body727_crit_edge1579:              ; preds = %if.then693
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body727

if.then693.do.body727_crit_edge:                  ; preds = %if.then693
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body727

do.end712:                                        ; preds = %if.then693
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1296, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call684) #15
  br label %if.end745

do.body727:                                       ; preds = %if.then693.do.body727_crit_edge, %if.then693.do.body727_crit_edge1579
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_mark_extent_written.__UNIQUE_ID_ddebug952, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_mark_extent_written, %if.then739)) #15
          to label %if.end745 [label %if.then739], !srcloc !155

if.then739:                                       ; preds = %do.body727
  call void @__sanitizer_cov_trace_pc() #17
  %222 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %223, ptr noundef nonnull @.str.9, i32 noundef %call684) #19
  br label %if.end745

if.end745:                                        ; preds = %if.then739, %do.body727, %do.end712, %do.body688.if.end745_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.10, i32 noundef 1296, i32 noundef %call684) #19
  br label %out

out:                                              ; preds = %if.end745, %if.else677.out_crit_edge, %if.then671, %if.end664, %if.then598.out_crit_edge, %if.end586, %if.end503, %if.end433, %if.end351, %again.backedge.out_crit_edge, %if.then255, %if.then226, %if.end206, %if.end135, %if.end66, %again.preheader.out_crit_edge
  %ret.3 = phi i32 [ -22, %if.end66 ], [ -22, %if.end135 ], [ -22, %if.end206 ], [ %call41191, %if.then226 ], [ %call41191, %if.then255 ], [ %call286, %if.end351 ], [ %call373, %if.end433 ], [ -22, %if.end503 ], [ %call526, %if.end586 ], [ %call604, %if.end664 ], [ %ret.2, %if.then671 ], [ %call684, %if.end745 ], [ %call684, %if.else677.out_crit_edge ], [ %call411891193, %again.preheader.out_crit_edge ], [ %call4, %again.backedge.out_crit_edge ], [ %call41189, %if.then598.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call3) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %btrfs_ino.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out ], [ -12, %btrfs_ino.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %other_end) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %other_start) #15
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %new_key) #15
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ref) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @extent_mergeable(ptr noundef %leaf, i32 noundef %slot, i64 noundef %objectid, i64 noundef %bytenr, i64 noundef %orig_offset, ptr nocapture noundef %start, ptr nocapture noundef %end) unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp = icmp slt i32 %slot, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 12
  %0 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #15
  %2 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %leaf, align 8
  %conv.i = trunc i64 %3 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %4 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %nritems.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %slot)
  %cmp1.not = icmp ugt i32 %6, %slot
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #15
  %7 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %slot, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %9 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %leaf, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #15
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %8, align 1
  %12 = call i64 @llvm.bswap.i64(i64 %11) #15
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %7, align 8
  %15 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %disk_key.i, align 8
  %17 = call i64 @llvm.bswap.i64(i64 %16) #15
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %objectid)
  %cmp3.not = icmp eq i64 %17, %objectid
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %14)
  %cmp5.not = icmp eq i8 %14, 108
  %or.cond86 = select i1 %cmp3.not, i1 %cmp5.not, i1 false
  br i1 %or.cond86, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %18 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %18, i32 noundef 17) #15
  %add = add i32 %call.i.i, 101
  %19 = inttoptr i32 %add to ptr
  %call.i76 = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %19, i32 noundef 20) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i76)
  %cmp12.not = icmp eq i8 %call.i76, 1
  br i1 %cmp12.not, label %lor.lhs.false14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false14:                                  ; preds = %if.end8
  %call.i77 = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %19, i32 noundef 21) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i77, i64 %bytenr)
  %cmp16.not = icmp eq i64 %call.i77, %bytenr
  br i1 %cmp16.not, label %lor.lhs.false18, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call.i78 = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %19, i32 noundef 37) #15
  %sub = sub i64 %12, %orig_offset
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i78, i64 %sub)
  %cmp20.not = icmp eq i64 %call.i78, %sub
  br i1 %cmp20.not, label %lor.lhs.false22, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call.i79 = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %19, i32 noundef 16) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i79)
  %tobool.not = icmp eq i8 %call.i79, 0
  br i1 %tobool.not, label %lor.lhs.false25, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call.i80 = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %19, i32 noundef 17) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i80)
  %tobool28.not = icmp eq i8 %call.i80, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %lor.lhs.false25.cleanup_crit_edge

lor.lhs.false25.cleanup_crit_edge:                ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call.i81 = call zeroext i16 @btrfs_get_16(ptr noundef %leaf, ptr noundef %19, i32 noundef 18) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i81)
  %tobool32.not = icmp eq i16 %call.i81, 0
  br i1 %tobool32.not, label %if.end34, label %lor.lhs.false29.cleanup_crit_edge

lor.lhs.false29.cleanup_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false29
  %call.i82 = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %19, i32 noundef 45) #15
  %add37 = add i64 %call.i82, %12
  %20 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool38.not = icmp eq i64 %21, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %12)
  %cmp40.not = icmp eq i64 %21, %12
  %or.cond87 = select i1 %tobool38.not, i1 true, i1 %cmp40.not
  br i1 %or.cond87, label %lor.lhs.false42, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false42:                                  ; preds = %if.end34
  %22 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool43.not = icmp eq i64 %23, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %add37)
  %cmp45.not = icmp eq i64 %23, %add37
  %or.cond = select i1 %tobool43.not, i1 true, i1 %cmp45.not
  br i1 %or.cond, label %if.end48, label %lor.lhs.false42.cleanup_crit_edge

lor.lhs.false42.cleanup_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %12, ptr %start, align 8
  %25 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add37, ptr %end, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %lor.lhs.false42.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %lor.lhs.false29.cleanup_crit_edge, %lor.lhs.false25.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end48 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false29.cleanup_crit_edge ], [ 0, %lor.lhs.false25.cleanup_crit_edge ], [ 0, %lor.lhs.false22.cleanup_crit_edge ], [ 0, %lor.lhs.false18.cleanup_crit_edge ], [ 0, %lor.lhs.false14.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %lor.lhs.false42.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_nocow_lock(ptr noundef %inode, i64 noundef %pos, ptr nocapture noundef %write_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @check_can_nocow(ptr noundef %inode, i64 noundef %pos, ptr noundef %write_bytes, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_can_nocow(ptr noundef %inode, i64 noundef %pos, ptr nocapture noundef %write_bytes, i1 noundef zeroext %nowait) unnamed_addr #0 align 64 {
entry:
  %num_bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %num_bytes) #15
  %flags = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 27
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

if.end:                                           ; preds = %entry
  br i1 %nowait, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %snapshot_lock = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 52
  %call = tail call zeroext i1 @btrfs_drew_try_write_lock(ptr noundef %snapshot_lock) #15
  br i1 %call, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup44_crit_edge

land.lhs.true.cleanup44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %6 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sectorsize, align 4
  %sub = add i32 %7, -1
  %conv = zext i32 %sub to i64
  %neg = xor i64 %conv, -1
  %and7 = and i64 %neg, %pos
  %8 = ptrtoint ptr %write_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_bytes, align 4
  %conv8 = zext i32 %9 to i64
  %add = add i64 %pos, -1
  %sub9 = add i64 %add, %conv8
  %or = or i64 %sub9, %conv
  %sub15 = sub i64 1, %and7
  %add16 = add i64 %sub15, %or
  %10 = ptrtoint ptr %num_bytes to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add16, ptr %num_bytes, align 8
  br i1 %nowait, label %if.then18, label %if.end27.thread

if.then18:                                        ; preds = %if.end6
  %io_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 4
  %call19 = tail call i32 @try_lock_extent(ptr noundef %io_tree, i64 noundef %and7, i64 noundef %or) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.cleanup44_crit_edge, label %if.end22

if.then18.cleanup44_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

if.end22:                                         ; preds = %if.then18
  %11 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %num_bytes, align 8
  %call23 = tail call ptr @btrfs_lookup_ordered_range(ptr noundef %inode, i64 noundef %and7, i64 noundef %12) #15
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end27, label %cleanup

cleanup:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @btrfs_put_ordered_extent(ptr noundef nonnull %call23) #15
  br label %out_unlock

if.end27:                                         ; preds = %if.end22
  %vfs_inode = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37
  %call28 = call i32 @can_nocow_extent(ptr noundef %vfs_inode, i64 noundef %and7, ptr noundef nonnull %num_bytes, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cmp = icmp slt i32 %call28, 1
  br i1 %cmp, label %if.end27.out_unlock_crit_edge, label %if.end27.if.else35_crit_edge

if.end27.if.else35_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else35

if.end27.out_unlock_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end27.thread:                                  ; preds = %if.end6
  tail call void @btrfs_lock_and_flush_ordered_range(ptr noundef %inode, i64 noundef %and7, i64 noundef %or, ptr noundef null) #15
  %vfs_inode83 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37
  %call2884 = call i32 @can_nocow_extent(ptr noundef %vfs_inode83, i64 noundef %and7, ptr noundef nonnull %num_bytes, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2884)
  %cmp85 = icmp slt i32 %call2884, 1
  br i1 %cmp85, label %if.then32, label %if.end27.thread.if.else35_crit_edge

if.end27.thread.if.else35_crit_edge:              ; preds = %if.end27.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else35

if.then32:                                        ; preds = %if.end27.thread
  call void @__sanitizer_cov_trace_pc() #17
  %snapshot_lock33 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 52
  call void @btrfs_drew_write_unlock(ptr noundef %snapshot_lock33) #15
  br label %out_unlock

if.else35:                                        ; preds = %if.end27.thread.if.else35_crit_edge, %if.end27.if.else35_crit_edge
  %call2886 = phi i32 [ %call2884, %if.end27.thread.if.else35_crit_edge ], [ %call28, %if.end27.if.else35_crit_edge ]
  %13 = ptrtoint ptr %write_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %write_bytes, align 4
  %15 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %num_bytes, align 8
  %sub36 = sub i64 %and7, %pos
  %add37 = add i64 %sub36, %16
  %conv38 = trunc i64 %add37 to i32
  %17 = call i32 @llvm.umin.i32(i32 %14, i32 %conv38)
  %18 = ptrtoint ptr %write_bytes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %write_bytes, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.else35, %if.then32, %if.end27.out_unlock_crit_edge, %cleanup
  %ret.1 = phi i32 [ -11, %cleanup ], [ 0, %if.then32 ], [ %call2886, %if.else35 ], [ 0, %if.end27.out_unlock_crit_edge ]
  %io_tree42 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 4
  %call.i = call i32 @clear_extent_bit(ptr noundef %io_tree42, i64 noundef %and7, i64 noundef %or, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null) #15
  br label %cleanup44

cleanup44:                                        ; preds = %out_unlock, %if.then18.cleanup44_crit_edge, %land.lhs.true.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.1 = phi i32 [ %ret.1, %out_unlock ], [ 0, %entry.cleanup44_crit_edge ], [ -11, %land.lhs.true.cleanup44_crit_edge ], [ -11, %if.then18.cleanup44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %num_bytes) #15
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_check_nocow_unlock(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %snapshot_lock = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 52
  tail call void @btrfs_drew_write_unlock(ptr noundef %snapshot_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_drew_write_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_release_file(ptr noundef %inode, ptr nocapture noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #15
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data, align 4
  %runtime_flags = getelementptr i8, ptr %inode, i32 -356
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %runtime_flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %5 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping, align 8
  %call7 = tail call i32 @filemap_flush(ptr noundef %6) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_sync_file(ptr noundef %file, i64 %start, i64 %end, i32 noundef %datasync) #0 align 64 {
entry:
  %ctx = alloca %struct.btrfs_log_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !123

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i127 = tail call ptr %9(ptr noundef %1, ptr noundef %5) #15
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i127, %if.then.i.i ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %11, i32 -864
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ctx) #15
  %18 = getelementptr inbounds i8, ptr %ctx, i32 8
  %19 = call ptr @memset(ptr %18, i32 255, i32 40)
  tail call fastcc void @trace_btrfs_sync_file(ptr noundef %file, i32 noundef %datasync)
  %inode1.i = getelementptr inbounds %struct.btrfs_log_ctx, ptr %ctx, i32 0, i32 5
  %20 = call ptr @memset(ptr %ctx, i32 0, i32 10)
  %21 = ptrtoint ptr %inode1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %11, ptr %inode1.i, align 8
  %list.i = getelementptr inbounds %struct.btrfs_log_ctx, ptr %ctx, i32 0, i32 6
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.btrfs_log_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list.i, ptr %prev.i.i, align 8
  %ordered_extents.i = getelementptr inbounds %struct.btrfs_log_ctx, ptr %ctx, i32 0, i32 7
  %24 = ptrtoint ptr %ordered_extents.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %ordered_extents.i, ptr %ordered_extents.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.btrfs_log_ctx, ptr %ctx, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ordered_extents.i, ptr %prev.i8.i, align 8
  %call5 = call fastcc i32 @start_ordered_ops(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %file_dentry.exit.out_crit_edge

file_dentry.exit.out_crit_edge:                   ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %file_dentry.exit
  %call6 = call i32 @btrfs_inode_lock(ptr noundef %11, i32 noundef 4) #15
  %log_batch = getelementptr inbounds %struct.btrfs_root, ptr %17, i32 0, i32 19
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %log_batch, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %log_batch, i32 1, i32 3, i32 1) #15
  %26 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %log_batch, ptr %log_batch, i32 1, ptr elementtype(i32) %log_batch) #15, !srcloc !121
  %runtime_flags = getelementptr i8, ptr %11, i32 -356
  %27 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %runtime_flags, align 4
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not = icmp eq i32 %29, 0
  %call10 = call fastcc i32 @start_ordered_ops(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @btrfs_inode_unlock(ptr noundef %11, i32 noundef 4) #15
  br label %out

if.end13:                                         ; preds = %if.end
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end13.if.then16_crit_edge

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end13
  %30 = getelementptr inbounds %struct.btrfs_fs_info, ptr %15, i32 0, i32 176
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %30, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %cmp.i.not = icmp eq i64 %32, 0
  br i1 %cmp.i.not, label %if.else, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end13.if.then16_crit_edge
  %call17 = call i32 @btrfs_wait_ordered_range(ptr noundef %11, i64 noundef 0, i64 noundef -9223372036854775808) #15
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  call void @btrfs_get_ordered_extents_for_logging(ptr noundef %add.ptr.i, ptr noundef %ordered_extents.i) #15
  %i_mapping = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 9
  %33 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_mapping, align 8
  %call19 = call i32 @filemap_fdatawait_range(ptr noundef %34, i64 noundef 0, i64 noundef 9223372036854775807) #15
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then16
  %ret.0 = phi i32 [ %call17, %if.then16 ], [ %call19, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool21.not = icmp eq i32 %ret.0, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.out_release_extents_crit_edge

if.end20.out_release_extents_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_release_extents

if.end23:                                         ; preds = %if.end20
  %call.i.i126 = call zeroext i1 @__kasan_check_write(ptr noundef %log_batch, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %log_batch, i32 1, i32 3, i32 1) #15
  %35 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %log_batch, ptr %log_batch, i32 1, ptr elementtype(i32) %log_batch) #15, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !157
  %36 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %inode1.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 -864
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i.i, align 8
  %fs_info2.i = getelementptr inbounds %struct.btrfs_root, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %fs_info2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fs_info2.i, align 8
  %generation.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %41, i32 0, i32 26
  %42 = ptrtoint ptr %generation.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %generation.i, align 8
  %lock.i.i = getelementptr i8, ptr %37, i32 -840
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #15
  %logged_trans.i.i = getelementptr i8, ptr %37, i32 -328
  %44 = ptrtoint ptr %logged_trans.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %logged_trans.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %43)
  %cmp.i.i = icmp eq i64 %45, %43
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end23.btrfs_inode_in_log.exit.thread.i_crit_edge

if.end23.btrfs_inode_in_log.exit.thread.i_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_inode_in_log.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.end23
  %last_sub_trans.i.i = getelementptr i8, ptr %37, i32 -320
  %46 = ptrtoint ptr %last_sub_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %last_sub_trans.i.i, align 8
  %last_log_commit.i.i = getelementptr i8, ptr %37, i32 -316
  %48 = ptrtoint ptr %last_log_commit.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %last_log_commit.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp1.not.i.i = icmp sgt i32 %47, %49
  br i1 %cmp1.not.i.i, label %land.lhs.true.i.i.btrfs_inode_in_log.exit.thread.i_crit_edge, label %btrfs_inode_in_log.exit.i

land.lhs.true.i.i.btrfs_inode_in_log.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_inode_in_log.exit.thread.i

btrfs_inode_in_log.exit.thread.i:                 ; preds = %land.lhs.true.i.i.btrfs_inode_in_log.exit.thread.i_crit_edge, %if.end23.btrfs_inode_in_log.exit.thread.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #15
  br label %if.end.i

btrfs_inode_in_log.exit.i:                        ; preds = %land.lhs.true.i.i
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i.i, align 8
  %last_log_commit4.i.i = getelementptr inbounds %struct.btrfs_root, ptr %51, i32 0, i32 22
  %52 = ptrtoint ptr %last_log_commit4.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %last_log_commit4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %53)
  %cmp5.not.i.not.i = icmp sgt i32 %47, %53
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #15
  br i1 %cmp5.not.i.not.i, label %btrfs_inode_in_log.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

btrfs_inode_in_log.exit.i.if.end.i_crit_edge:     ; preds = %btrfs_inode_in_log.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %btrfs_inode_in_log.exit.i
  %54 = ptrtoint ptr %ordered_extents.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %ordered_extents.i, align 4
  %cmp.i20.not.i = icmp eq ptr %55, %ordered_extents.i
  br i1 %cmp.i20.not.i, label %land.lhs.true.i.if.then29_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i.if.then29_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %btrfs_inode_in_log.exit.i.if.end.i_crit_edge, %btrfs_inode_in_log.exit.thread.i
  %last_trans.i = getelementptr i8, ptr %37, i32 -336
  %56 = ptrtoint ptr %last_trans.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %last_trans.i, align 8
  %last_trans_committed.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %41, i32 0, i32 27
  %58 = ptrtoint ptr %last_trans_committed.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %last_trans_committed.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %59)
  %cmp.not.i = icmp ugt i64 %57, %59
  br i1 %cmp.not.i, label %if.end.i.if.end34_crit_edge, label %land.lhs.true5.i

if.end.i.if.end34_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true5.i:                                 ; preds = %if.end.i
  %runtime_flags.i = getelementptr i8, ptr %37, i32 -356
  %60 = ptrtoint ptr %runtime_flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %runtime_flags.i, align 4
  %62 = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool7.not.i = icmp eq i32 %62, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i, label %land.lhs.true5.i.if.then29_crit_edge

land.lhs.true5.i.if.then29_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

lor.lhs.false.i:                                  ; preds = %land.lhs.true5.i
  %63 = ptrtoint ptr %ordered_extents.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %ordered_extents.i, align 4
  %cmp.i21.not.i = icmp eq ptr %64, %ordered_extents.i
  br i1 %cmp.i21.not.i, label %lor.lhs.false.i.if.then29_crit_edge, label %lor.lhs.false.i.if.end34_crit_edge

lor.lhs.false.i.if.end34_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

lor.lhs.false.i.if.then29_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.i.if.then29_crit_edge, %land.lhs.true5.i.if.then29_crit_edge, %land.lhs.true.i.if.then29_crit_edge
  call void @_clear_bit(i32 noundef 4, ptr noundef %runtime_flags) #15
  %i_mapping32 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 9
  %65 = ptrtoint ptr %i_mapping32 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_mapping32, align 8
  %f_wb_err = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 19
  %67 = ptrtoint ptr %f_wb_err to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %f_wb_err, align 8
  %wb_err.i = getelementptr inbounds %struct.address_space, ptr %66, i32 0, i32 11
  %call.i = call i32 @errseq_check(ptr noundef %wb_err.i, i32 noundef %68) #15
  br label %out_release_extents

if.end34:                                         ; preds = %lor.lhs.false.i.if.end34_crit_edge, %if.end.i.if.end34_crit_edge
  %call35 = call ptr @btrfs_start_transaction(ptr noundef %17, i32 noundef 0) #15
  %cmp.i133 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %call35 to i32
  br label %out_release_extents

if.end39:                                         ; preds = %if.end34
  %in_fsync = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call35, i32 0, i32 15
  %70 = ptrtoint ptr %in_fsync to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %in_fsync, align 2
  %call40 = call i32 @btrfs_log_dentry_safe(ptr noundef %call35, ptr noundef %retval.0.i.i, ptr noundef nonnull %ctx) #15
  call fastcc void @btrfs_release_log_ctx_extents(ptr noundef nonnull %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp slt i32 %call40, 0
  %spec.select = select i1 %cmp, i32 1, i32 %call40
  call void @btrfs_inode_unlock(ptr noundef %11, i32 noundef 4) #15
  %71 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %spec.select, label %if.end39.if.end52_crit_edge [
    i32 256, label %if.else62
    i32 0, label %if.then46
  ]

if.end39.if.end52_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then46:                                        ; preds = %if.end39
  %call47 = call i32 @btrfs_sync_log(ptr noundef %call35, ptr noundef %17, ptr noundef nonnull %ctx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.then46.if.end52_crit_edge

if.then46.if.end52_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  %call50 = call i32 @btrfs_end_transaction(ptr noundef %call35) #15
  br label %out

if.end52:                                         ; preds = %if.then46.if.end52_crit_edge, %if.end39.if.end52_crit_edge
  br i1 %tobool9.not, label %if.then54, label %if.end52.if.end60_crit_edge

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then54:                                        ; preds = %if.end52
  %call55 = call i32 @btrfs_wait_ordered_range(ptr noundef %11, i64 noundef 0, i64 noundef -9223372036854775808) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then54.if.end60_crit_edge, label %if.then57

if.then54.if.end60_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #17
  %call58 = call i32 @btrfs_end_transaction(ptr noundef %call35) #15
  br label %out

if.end60:                                         ; preds = %if.then54.if.end60_crit_edge, %if.end52.if.end60_crit_edge
  %call61 = call i32 @btrfs_commit_transaction(ptr noundef %call35) #15
  br label %out

if.else62:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %call63 = call i32 @btrfs_end_transaction(ptr noundef %call35) #15
  br label %out

out:                                              ; preds = %btrfs_release_log_ctx_extents.exit, %if.else62, %if.end60, %if.then57, %if.then49, %if.then12, %file_dentry.exit.out_crit_edge
  %ret.2 = phi i32 [ %call5, %file_dentry.exit.out_crit_edge ], [ %call10, %if.then12 ], [ %ret.4, %btrfs_release_log_ctx_extents.exit ], [ %call61, %if.end60 ], [ %call55, %if.then57 ], [ %call50, %if.then49 ], [ %call63, %if.else62 ]
  %72 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %list.i, align 4
  %cmp.i134.not = icmp eq ptr %73, %list.i
  br i1 %cmp.i134.not, label %cond.end, label %cond.false, !prof !123

cond.false:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str, i32 noundef 2342) #18
  unreachable

cond.end:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %call69 = call i32 @file_check_and_advance_wb_err(ptr noundef %file) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool70.not = icmp eq i32 %ret.2, 0
  %spec.select125 = select i1 %tobool70.not, i32 %call69, i32 %ret.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select125)
  %cmp73 = icmp sgt i32 %spec.select125, 0
  %cond = select i1 %cmp73, i32 -5, i32 %spec.select125
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ctx) #15
  ret i32 %cond

out_release_extents:                              ; preds = %if.then37, %if.then29, %if.end20.out_release_extents_crit_edge
  %ret.4 = phi i32 [ %ret.0, %if.end20.out_release_extents_crit_edge ], [ %call.i, %if.then29 ], [ %69, %if.then37 ]
  %74 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %inode1.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 25
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i, i32 noundef 4) #15
  %76 = ptrtoint ptr %i_rwsem.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %i_rwsem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i.i.not.i = icmp eq i32 %77, 0
  br i1 %cmp.i.i.not.i, label %cond.false.i, label %cond.end.i, !prof !126

cond.false.i:                                     ; preds = %out_release_extents
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 45) #21
  unreachable

cond.end.i:                                       ; preds = %out_release_extents
  %78 = ptrtoint ptr %ordered_extents.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ordered_extents.i, align 4
  %cmp.not25.i = icmp eq ptr %79, %ordered_extents.i
  br i1 %cmp.not25.i, label %cond.end.i.btrfs_release_log_ctx_extents.exit_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  br label %for.body.i

cond.end.i.btrfs_release_log_ctx_extents.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_release_log_ctx_extents.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %cond.end.i.for.body.i_crit_edge
  %.pn.in26.i = phi ptr [ %.pn.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %79, %cond.end.i.for.body.i_crit_edge ]
  %ordered.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -84
  %80 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn.i = load ptr, ptr %.pn.in26.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i.i, align 4
  %83 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %87 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %.pn.in26.i, ptr %.pn.in26.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %.pn.in26.i, ptr %prev.i3.i.i, align 4
  call void @btrfs_put_ordered_extent(ptr noundef %ordered.0.i) #15
  %cmp.not.i136 = icmp eq ptr %.pn.i, %ordered_extents.i
  br i1 %cmp.not.i136, label %list_del_init.exit.i.btrfs_release_log_ctx_extents.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_del_init.exit.i.btrfs_release_log_ctx_extents.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_release_log_ctx_extents.exit

btrfs_release_log_ctx_extents.exit:               ; preds = %list_del_init.exit.i.btrfs_release_log_ctx_extents.exit_crit_edge, %cond.end.i.btrfs_release_log_ctx_extents.exit_crit_edge
  call void @btrfs_inode_unlock(ptr noundef %11, i32 noundef 4) #15
  br label %out
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_sync_file(ptr noundef %file, i32 noundef %datasync) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_sync_file, i32 0, i32 1), ptr blockaddress(@trace_btrfs_sync_file, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !155

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !123

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !158
  %call42 = tail call i32 @__traceiter_btrfs_sync_file(ptr noundef null, ptr noundef %file, i32 noundef %datasync) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !159
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !123

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_sync_file, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_sync_file, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_sync_file.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_btrfs_sync_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 714, ptr noundef nonnull @.str.22) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !161
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #15
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
define internal fastcc i32 @start_ordered_ops(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #15
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug) #15
  %sync_writers = getelementptr i8, ptr %inode, i32 -352
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sync_writers, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %sync_writers, i32 1, i32 3, i32 1) #15
  %1 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sync_writers, ptr %sync_writers, i32 1, ptr elementtype(i32) %sync_writers) #15, !srcloc !121
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping.i, align 8
  %call.i = call i32 @filemap_fdatawrite_range(ptr noundef %3, i64 noundef 0, i64 noundef 9223372036854775807) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.btrfs_fdatawrite_range.exit_crit_edge

entry.btrfs_fdatawrite_range.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_fdatawrite_range.exit

land.lhs.true.i:                                  ; preds = %entry
  %runtime_flags.i = getelementptr i8, ptr %inode, i32 -356
  %4 = ptrtoint ptr %runtime_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %runtime_flags.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not.i = icmp eq i32 %6, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.btrfs_fdatawrite_range.exit_crit_edge, label %if.then.i

land.lhs.true.i.btrfs_fdatawrite_range.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_fdatawrite_range.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping.i, align 8
  %call5.i = call i32 @filemap_fdatawrite_range(ptr noundef %8, i64 noundef 0, i64 noundef 9223372036854775807) #15
  br label %btrfs_fdatawrite_range.exit

btrfs_fdatawrite_range.exit:                      ; preds = %if.then.i, %land.lhs.true.i.btrfs_fdatawrite_range.exit_crit_edge, %entry.btrfs_fdatawrite_range.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.btrfs_fdatawrite_range.exit_crit_edge ], [ %call5.i, %if.then.i ], [ 0, %land.lhs.true.i.btrfs_fdatawrite_range.exit_crit_edge ]
  %call.i.i1 = call zeroext i1 @__kasan_check_write(ptr noundef %sync_writers, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %sync_writers, i32 1, i32 3, i32 1) #15
  %9 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sync_writers, ptr %sync_writers, i32 1, ptr elementtype(i32) %sync_writers) #15, !srcloc !132
  call void @blk_finish_plug(ptr noundef nonnull %plug) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #15
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inode_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_wait_ordered_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_get_ordered_extents_for_logging(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_start_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_log_dentry_safe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_release_log_ctx_extents(ptr noundef readonly %ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %inode = getelementptr inbounds %struct.btrfs_log_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #15
  %2 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.i.not, label %cond.false, label %cond.end, !prof !126

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 45) #18
  unreachable

cond.end:                                         ; preds = %entry
  %ordered_extents = getelementptr inbounds %struct.btrfs_log_ctx, ptr %ctx, i32 0, i32 7
  %4 = ptrtoint ptr %ordered_extents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ordered_extents, align 4
  %cmp.not25 = icmp eq ptr %5, %ordered_extents
  br i1 %cmp.not25, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %cond.end.for.body_crit_edge
  %.pn.in26 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %5, %cond.end.for.body_crit_edge ]
  %ordered.0 = getelementptr i8, ptr %.pn.in26, i32 -84
  %6 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in26, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in26, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %.pn.in26, ptr %.pn.in26, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.in26, ptr %prev.i3.i, align 4
  tail call void @btrfs_put_ordered_extent(ptr noundef %ordered.0) #15
  %cmp.not = icmp eq ptr %.pn, %ordered_extents
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %cond.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_sync_log(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_commit_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_check_and_advance_wb_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_replace_file_extents(ptr noundef %inode, ptr noundef %path, i64 noundef %start, i64 noundef %end, ptr noundef %extent_info, ptr nocapture noundef writeonly %trans_out) local_unnamed_addr #0 align 64 {
entry:
  %drop_args = alloca %struct.btrfs_drop_extents_args, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %drop_args) #15
  %0 = call ptr @memset(ptr %drop_args, i32 0, i32 56)
  %1 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inode, align 8
  %fs_info2 = getelementptr inbounds %struct.btrfs_root, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fs_info2, align 8
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 166
  %5 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nodesize.i, align 8
  %conv.i = zext i32 %6 to i64
  %mul1.i = shl nuw nsw i64 %conv.i, 4
  %i_size = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 14
  %7 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size, align 8
  %sub = add i64 %8, -1
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 167
  %9 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sectorsize, align 4
  %sub3 = add i32 %10, -1
  %conv = zext i32 %sub3 to i64
  %or = or i64 %sub, %conv
  %add = add i64 %or, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %end, i64 %start)
  %cmp.not = icmp ugt i64 %end, %start
  br i1 %cmp.not, label %if.end, label %entry.cleanup639_crit_edge

entry.cleanup639_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup639

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @btrfs_alloc_block_rsv(ptr noundef %4, i16 noundef zeroext 7) #15
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.cleanup639_crit_edge, label %if.end8

if.end.cleanup639_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup639

if.end8:                                          ; preds = %if.end
  %11 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nodesize.i, align 8
  %conv.i855 = zext i32 %12 to i64
  %mul1.i856 = shl nuw nsw i64 %conv.i855, 4
  %13 = ptrtoint ptr %call6 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %mul1.i856, ptr %call6, align 8
  %failfast = getelementptr inbounds %struct.btrfs_block_rsv, ptr %call6, i32 0, i32 6
  %14 = ptrtoint ptr %failfast to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %failfast, align 4
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 43
  %15 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %incompat_flags.i.i, align 1
  %19 = and i64 %18, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool.i = icmp ne i64 %19, 0
  %tobool11.not = icmp eq ptr %extent_info, null
  %or.cond = and i1 %tobool11.not, %tobool.i
  %rsv_count.0 = select i1 %or.cond, i32 2, i32 3
  %call14 = tail call ptr @btrfs_start_transaction(ptr noundef %2, i32 noundef %rsv_count.0) #15
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %call14 to i32
  br label %out_free

if.end18:                                         ; preds = %if.end8
  %trans_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 21
  %call19 = tail call i32 @btrfs_block_rsv_migrate(ptr noundef %trans_block_rsv, ptr noundef nonnull %call6, i64 noundef %mul1.i, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %while.body.lr.ph, label %do.body24, !prof !123

do.body24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2730, 0\0A.popsection", ""() #15, !srcloc !162
  unreachable

while.body.lr.ph:                                 ; preds = %if.end18
  %block_rsv = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call14, i32 0, i32 5
  %21 = ptrtoint ptr %block_rsv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call6, ptr %block_rsv, align 8
  %22 = ptrtoint ptr %drop_args to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %path, ptr %drop_args, align 8
  %add32 = add i64 %end, 1
  %end33 = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %drop_args, i32 0, i32 2
  %23 = ptrtoint ptr %end33 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add32, ptr %end33, align 8
  %drop_cache = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %drop_args, i32 0, i32 3
  %24 = ptrtoint ptr %drop_cache to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %drop_cache, align 8
  %start36 = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %drop_args, i32 0, i32 1
  %bytes_found = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %drop_args, i32 0, i32 7
  %drop_end262 = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %drop_args, i32 0, i32 6
  %file_offset = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 4
  %data_len = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 3
  %data_offset = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 2
  %tobool38.not.not = xor i1 %tobool11.not, true
  br label %while.body

while.body:                                       ; preds = %if.end392.while.body_crit_edge, %while.body.lr.ph
  %trans.0960 = phi ptr [ %call14, %while.body.lr.ph ], [ %call344, %if.end392.while.body_crit_edge ]
  %cur_offset.0959 = phi i64 [ %start, %while.body.lr.ph ], [ %cur_offset.3, %if.end392.while.body_crit_edge ]
  %25 = ptrtoint ptr %start36 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %cur_offset.0959, ptr %start36, align 8
  %call37 = call i32 @btrfs_drop_extents(ptr noundef %trans.0960, ptr noundef %2, ptr noundef %inode, ptr noundef nonnull %drop_args)
  br i1 %tobool11.not, label %if.then39, label %while.body.if.end40_crit_edge

while.body.if.end40_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then39:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %bytes_found to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bytes_found, align 8
  tail call void @btrfs_update_inode_bytes(ptr noundef %inode, i64 noundef 0, i64 noundef %27) #15
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %while.body.if.end40_crit_edge
  %28 = zext i32 %call37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call37, label %if.end40.do.body53_crit_edge [
    i32 -28, label %if.end109
    i32 0, label %if.end40.while.end_crit_edge
    i32 -95, label %lor.lhs.false47
  ]

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end40.do.body53_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body53

lor.lhs.false47:                                  ; preds = %if.end40
  br i1 %tobool11.not, label %out_trans.thread, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %lor.lhs.false47
  %is_new_extent = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 6
  %29 = ptrtoint ptr %is_new_extent to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_new_extent, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool50.not = icmp eq i8 %30, 0
  br i1 %tobool50.not, label %land.lhs.true49.land.lhs.true394_crit_edge, label %land.lhs.true49.do.body53_crit_edge

land.lhs.true49.do.body53_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body53

land.lhs.true49.land.lhs.true394_crit_edge:       ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true394

do.body53:                                        ; preds = %land.lhs.true49.do.body53_crit_edge, %if.end40.do.body53_crit_edge
  %fs_info54 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.0960, i32 0, i32 16
  %31 = ptrtoint ptr %fs_info54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fs_info54, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %32, i32 0, i32 149
  %call55 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %do.body53.if.end105_crit_edge

do.body53.if.end105_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

if.then57:                                        ; preds = %do.body53
  %33 = zext i32 %call37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call37, label %do.end75 [
    i32 -5, label %if.then57.do.body89_crit_edge
    i32 -30, label %if.then57.do.body89_crit_edge1120
  ]

if.then57.do.body89_crit_edge1120:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body89

if.then57.do.body89_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body89

do.end75:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2756, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call37) #15
  br label %if.end105

do.body89:                                        ; preds = %if.then57.do.body89_crit_edge, %if.then57.do.body89_crit_edge1120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug963, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_replace_file_extents, %if.then99)) #15
          to label %if.end105 [label %if.then99], !srcloc !155

if.then99:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %fs_info54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fs_info54, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %35, ptr noundef nonnull @.str.9, i32 noundef %call37) #19
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %do.body89, %do.end75, %do.body53.if.end105_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans.0960, ptr noundef nonnull @.str.12, i32 noundef 2756, i32 noundef %call37) #19
  br label %while.end

if.end109:                                        ; preds = %if.end40
  %block_rsv111 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.0960, i32 0, i32 5
  %36 = ptrtoint ptr %block_rsv111 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %trans_block_rsv, ptr %block_rsv111, align 8
  %37 = ptrtoint ptr %drop_end262 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %drop_end262, align 8
  br i1 %tobool11.not, label %land.lhs.true113, label %land.lhs.true261.critedge

land.lhs.true113:                                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %cur_offset.0959)
  %cmp114 = icmp ugt i64 %38, %cur_offset.0959
  call void @__sanitizer_cov_trace_cmp8(i64 %cur_offset.0959, i64 %add)
  %cmp117 = icmp ult i64 %cur_offset.0959, %add
  %or.cond829 = select i1 %cmp114, i1 %cmp117, i1 false
  br i1 %or.cond829, label %if.then119, label %land.lhs.true187.critedge

if.then119:                                       ; preds = %land.lhs.true113
  %call121 = tail call fastcc i32 @fill_holes(ptr noundef %trans.0960, ptr noundef %inode, ptr noundef %path, i64 noundef %cur_offset.0959, i64 noundef %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then119.if.end338_crit_edge, label %do.body124

if.then119.if.end338_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end338

do.body124:                                       ; preds = %if.then119
  %fs_info125 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.0960, i32 0, i32 16
  %39 = ptrtoint ptr %fs_info125 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fs_info125, align 4
  %fs_state126 = getelementptr inbounds %struct.btrfs_fs_info, ptr %40, i32 0, i32 149
  %call127 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state126) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then129, label %do.body124.if.end181_crit_edge

do.body124.if.end181_crit_edge:                   ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end181

if.then129:                                       ; preds = %do.body124
  %41 = zext i32 %call121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call121, label %do.end148 [
    i32 -5, label %if.then129.do.body163_crit_edge
    i32 -30, label %if.then129.do.body163_crit_edge1121
  ]

if.then129.do.body163_crit_edge1121:              ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body163

if.then129.do.body163_crit_edge:                  ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body163

do.end148:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2773, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call121) #15
  br label %if.end181

do.body163:                                       ; preds = %if.then129.do.body163_crit_edge, %if.then129.do.body163_crit_edge1121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug964, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_replace_file_extents, %if.then175)) #15
          to label %if.end181 [label %if.then175], !srcloc !155

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %fs_info125 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fs_info125, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %43, ptr noundef nonnull @.str.9, i32 noundef %call121) #19
  br label %if.end181

if.end181:                                        ; preds = %if.then175, %do.body163, %do.end148, %do.body124.if.end181_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans.0960, ptr noundef nonnull @.str.12, i32 noundef 2773, i32 noundef %call121) #19
  br label %out_trans

land.lhs.true187.critedge:                        ; preds = %land.lhs.true113
  br i1 %cmp114, label %if.then191, label %land.lhs.true187.critedge.if.end338_crit_edge

land.lhs.true187.critedge.if.end338_crit_edge:    ; preds = %land.lhs.true187.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end338

if.then191:                                       ; preds = %land.lhs.true187.critedge
  %sub193 = sub i64 %38, %cur_offset.0959
  %call194 = tail call i32 @btrfs_inode_clear_file_extent_range(ptr noundef %inode, i64 noundef %cur_offset.0959, i64 noundef %sub193) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.then191.if.end338_crit_edge, label %do.body197

if.then191.if.end338_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end338

do.body197:                                       ; preds = %if.then191
  %fs_info198 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.0960, i32 0, i32 16
  %44 = ptrtoint ptr %fs_info198 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fs_info198, align 4
  %fs_state199 = getelementptr inbounds %struct.btrfs_fs_info, ptr %45, i32 0, i32 149
  %call200 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state199) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.then202, label %do.body197.if.end254_crit_edge

do.body197.if.end254_crit_edge:                   ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end254

if.then202:                                       ; preds = %do.body197
  %46 = zext i32 %call194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call194, label %do.end221 [
    i32 -5, label %if.then202.do.body236_crit_edge
    i32 -30, label %if.then202.do.body236_crit_edge1122
  ]

if.then202.do.body236_crit_edge1122:              ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body236

if.then202.do.body236_crit_edge:                  ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body236

do.end221:                                        ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2792, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call194) #15
  br label %if.end254

do.body236:                                       ; preds = %if.then202.do.body236_crit_edge, %if.then202.do.body236_crit_edge1122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug965, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_replace_file_extents, %if.then248)) #15
          to label %if.end254 [label %if.then248], !srcloc !155

if.then248:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %fs_info198 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fs_info198, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %48, ptr noundef nonnull @.str.9, i32 noundef %call194) #19
  br label %if.end254

if.end254:                                        ; preds = %if.then248, %do.body236, %do.end221, %do.body197.if.end254_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans.0960, ptr noundef nonnull @.str.12, i32 noundef 2792, i32 noundef %call194) #19
  br label %out_trans

land.lhs.true261.critedge:                        ; preds = %if.end109
  %49 = ptrtoint ptr %file_offset to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %file_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %50)
  %cmp263 = icmp ugt i64 %38, %50
  br i1 %cmp263, label %if.then265, label %land.lhs.true261.critedge.if.end338_crit_edge

land.lhs.true261.critedge.if.end338_crit_edge:    ; preds = %land.lhs.true261.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end338

if.then265:                                       ; preds = %land.lhs.true261.critedge
  %sub268 = sub i64 %38, %50
  %51 = ptrtoint ptr %bytes_found to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bytes_found, align 8
  %call270 = tail call fastcc i32 @btrfs_insert_replace_extent(ptr noundef %trans.0960, ptr noundef %inode, ptr noundef %path, ptr noundef nonnull %extent_info, i64 noundef %sub268, i64 noundef %52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %cleanup.thread, label %do.body273

do.body273:                                       ; preds = %if.then265
  %fs_info274 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.0960, i32 0, i32 16
  %53 = ptrtoint ptr %fs_info274 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fs_info274, align 4
  %fs_state275 = getelementptr inbounds %struct.btrfs_fs_info, ptr %54, i32 0, i32 149
  %call276 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state275) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %if.then278, label %do.body273.cleanup_crit_edge

do.body273.cleanup_crit_edge:                     ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then278:                                       ; preds = %do.body273
  %55 = zext i32 %call270 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call270, label %do.end297 [
    i32 -5, label %if.then278.do.body312_crit_edge
    i32 -30, label %if.then278.do.body312_crit_edge1123
  ]

if.then278.do.body312_crit_edge1123:              ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body312

if.then278.do.body312_crit_edge:                  ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body312

do.end297:                                        ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2806, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call270) #15
  br label %cleanup

do.body312:                                       ; preds = %if.then278.do.body312_crit_edge, %if.then278.do.body312_crit_edge1123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug966, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_replace_file_extents, %if.then324)) #15
          to label %cleanup [label %if.then324], !srcloc !155

if.then324:                                       ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %fs_info274 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fs_info274, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %57, ptr noundef nonnull @.str.9, i32 noundef %call270) #19
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %data_len to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %data_len, align 8
  %sub334 = sub i64 %59, %sub268
  store i64 %sub334, ptr %data_len, align 8
  %60 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %data_offset, align 8
  %add335 = add i64 %61, %sub268
  store i64 %add335, ptr %data_offset, align 8
  %62 = ptrtoint ptr %file_offset to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %file_offset, align 8
  %add337 = add i64 %63, %sub268
  store i64 %add337, ptr %file_offset, align 8
  br label %if.end338

cleanup:                                          ; preds = %if.then324, %do.body312, %do.end297, %do.body273.cleanup_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans.0960, ptr noundef nonnull @.str.12, i32 noundef 2806, i32 noundef %call270) #19
  br label %land.lhs.true394

if.end338:                                        ; preds = %cleanup.thread, %land.lhs.true261.critedge.if.end338_crit_edge, %if.then191.if.end338_crit_edge, %land.lhs.true187.critedge.if.end338_crit_edge, %if.then119.if.end338_crit_edge
  %call339 = tail call i32 @btrfs_update_inode(ptr noundef %trans.0960, ptr noundef %2, ptr noundef %inode) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call339)
  %tobool340.not = icmp eq i32 %call339, 0
  br i1 %tobool340.not, label %if.end342, label %if.end338.while.end_crit_edge

if.end338.while.end_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end342:                                        ; preds = %if.end338
  %call343 = tail call i32 @btrfs_end_transaction(ptr noundef %trans.0960) #15
  tail call void @btrfs_btree_balance_dirty(ptr noundef %4) #15
  %call344 = tail call ptr @btrfs_start_transaction(ptr noundef %2, i32 noundef %rsv_count.0) #15
  %cmp.i857 = icmp ugt ptr %call344, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i857, label %if.then346, label %if.end348

if.then346:                                       ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %call344 to i32
  br label %while.end

if.end348:                                        ; preds = %if.end342
  %call350 = tail call i32 @btrfs_block_rsv_migrate(ptr noundef %trans_block_rsv, ptr noundef nonnull %call6, i64 noundef %mul1.i, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350)
  %tobool352.not = icmp eq i32 %call350, 0
  br i1 %tobool352.not, label %do.end368, label %do.body360, !prof !123

do.body360:                                       ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2830, 0\0A.popsection", ""() #15, !srcloc !163
  unreachable

do.end368:                                        ; preds = %if.end348
  %block_rsv369 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call344, i32 0, i32 5
  %65 = ptrtoint ptr %block_rsv369 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call6, ptr %block_rsv369, align 8
  %66 = ptrtoint ptr %drop_end262 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %drop_end262, align 8
  %sub371 = sub i64 %end, %67
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %end)
  %tobool374.not = icmp eq i64 %67, %end
  %or.cond832 = select i1 %tobool38.not.not, i1 true, i1 %tobool374.not
  br i1 %or.cond832, label %do.end368.if.end392_crit_edge, label %if.then375

do.end368.if.end392_crit_edge:                    ; preds = %do.end368
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end392

if.then375:                                       ; preds = %do.end368
  %68 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %inode, align 8
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fs_info1.i, align 8
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %71, i32 0, i32 167
  %72 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sectorsize.i, align 4
  %sub.i = add i32 %73, -1
  %conv.i858 = zext i32 %sub.i to i64
  %neg.i = xor i64 %conv.i858, -1
  %and.i = and i64 %67, %neg.i
  %sub2.i = add i64 %sub371, -1
  %or.i = or i64 %sub2.i, %conv.i858
  %add.i = add i64 %or.i, 1
  %call.i = tail call ptr @btrfs_get_extent(ptr noundef %inode, ptr noundef null, i32 noundef 0, i64 noundef %and.i, i64 noundef %add.i) #15
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %find_first_non_hole.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then375
  %block_start.i = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 8
  %74 = ptrtoint ptr %block_start.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %block_start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %75)
  %cmp.i859 = icmp eq i64 %75, -3
  br i1 %cmp.i859, label %if.then9.i, label %if.end.i.find_first_non_hole.exit.thread_crit_edge

if.end.i.find_first_non_hole.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_first_non_hole.exit.thread

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %start10.i = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 1
  %76 = ptrtoint ptr %start10.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %start10.i, align 8
  %len11.i = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 2
  %78 = ptrtoint ptr %len11.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %len11.i, align 8
  %add12.i = add i64 %79, %77
  %80 = tail call i64 @llvm.usub.sat.i64(i64 %end, i64 %add12.i) #15
  br label %find_first_non_hole.exit.thread

find_first_non_hole.exit.thread:                  ; preds = %if.then9.i, %if.end.i.find_first_non_hole.exit.thread_crit_edge
  %cur_offset.1 = phi i64 [ %add12.i, %if.then9.i ], [ %67, %if.end.i.find_first_non_hole.exit.thread_crit_edge ]
  %len.0 = phi i64 [ %80, %if.then9.i ], [ %sub371, %if.end.i.find_first_non_hole.exit.thread_crit_edge ]
  %ret.0.i = phi i32 [ 1, %if.then9.i ], [ 0, %if.end.i.find_first_non_hole.exit.thread_crit_edge ]
  tail call void @free_extent_map(ptr noundef %call.i) #15
  br label %if.end386

find_first_non_hole.exit:                         ; preds = %if.then375
  %81 = ptrtoint ptr %call.i to i32
  %cmp377 = icmp slt ptr %call.i, null
  br i1 %cmp377, label %while.end.loopexit.split.loop.exit, label %find_first_non_hole.exit.if.end386_crit_edge, !prof !126

find_first_non_hole.exit.if.end386_crit_edge:     ; preds = %find_first_non_hole.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end386

if.end386:                                        ; preds = %find_first_non_hole.exit.if.end386_crit_edge, %find_first_non_hole.exit.thread
  %retval.0.i860881 = phi i32 [ %ret.0.i, %find_first_non_hole.exit.thread ], [ %81, %find_first_non_hole.exit.if.end386_crit_edge ]
  %len.1880 = phi i64 [ %len.0, %find_first_non_hole.exit.thread ], [ %sub371, %find_first_non_hole.exit.if.end386_crit_edge ]
  %cur_offset.2879 = phi i64 [ %cur_offset.1, %find_first_non_hole.exit.thread ], [ %67, %find_first_non_hole.exit.if.end386_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i860881)
  %tobool387.not = icmp eq i32 %retval.0.i860881, 0
  br i1 %tobool387.not, label %if.end386.if.end392_crit_edge, label %land.lhs.true388

if.end386.if.end392_crit_edge:                    ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end392

land.lhs.true388:                                 ; preds = %if.end386
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len.1880)
  %tobool389.not = icmp eq i64 %len.1880, 0
  br i1 %tobool389.not, label %land.lhs.true388.while.end_crit_edge, label %land.lhs.true388.if.end392_crit_edge

land.lhs.true388.if.end392_crit_edge:             ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end392

land.lhs.true388.while.end_crit_edge:             ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end392:                                        ; preds = %land.lhs.true388.if.end392_crit_edge, %if.end386.if.end392_crit_edge, %do.end368.if.end392_crit_edge
  %cur_offset.3 = phi i64 [ %67, %do.end368.if.end392_crit_edge ], [ %cur_offset.2879, %if.end386.if.end392_crit_edge ], [ %cur_offset.2879, %land.lhs.true388.if.end392_crit_edge ]
  %ret.1 = phi i32 [ 0, %do.end368.if.end392_crit_edge ], [ 0, %if.end386.if.end392_crit_edge ], [ %retval.0.i860881, %land.lhs.true388.if.end392_crit_edge ]
  %cmp34 = icmp ult i64 %cur_offset.3, %end
  br i1 %cmp34, label %if.end392.while.body_crit_edge, label %if.end392.while.end_crit_edge

if.end392.while.end_crit_edge:                    ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end392.while.body_crit_edge:                   ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end.loopexit.split.loop.exit:               ; preds = %find_first_non_hole.exit
  call void @__sanitizer_cov_trace_pc() #17
  %82 = ptrtoint ptr %call.i to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit.split.loop.exit, %if.end392.while.end_crit_edge, %land.lhs.true388.while.end_crit_edge, %if.then346, %if.end338.while.end_crit_edge, %if.end105, %if.end40.while.end_crit_edge
  %cur_offset.4 = phi i64 [ %cur_offset.0959, %if.end105 ], [ %cur_offset.0959, %if.then346 ], [ %67, %while.end.loopexit.split.loop.exit ], [ %cur_offset.2879, %land.lhs.true388.while.end_crit_edge ], [ %cur_offset.0959, %if.end40.while.end_crit_edge ], [ %cur_offset.0959, %if.end338.while.end_crit_edge ], [ %cur_offset.3, %if.end392.while.end_crit_edge ]
  %ret.2 = phi i32 [ %call37, %if.end105 ], [ %64, %if.then346 ], [ %82, %while.end.loopexit.split.loop.exit ], [ 0, %land.lhs.true388.while.end_crit_edge ], [ %call37, %if.end40.while.end_crit_edge ], [ %call339, %if.end338.while.end_crit_edge ], [ %ret.1, %if.end392.while.end_crit_edge ]
  %trans.1 = phi ptr [ %trans.0960, %if.end105 ], [ null, %if.then346 ], [ %call344, %while.end.loopexit.split.loop.exit ], [ %call344, %land.lhs.true388.while.end_crit_edge ], [ %trans.0960, %if.end40.while.end_crit_edge ], [ %trans.0960, %if.end338.while.end_crit_edge ], [ %call344, %if.end392.while.end_crit_edge ]
  br i1 %tobool11.not, label %while.end.if.end398_crit_edge, label %while.end.land.lhs.true394_crit_edge

while.end.land.lhs.true394_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true394

while.end.if.end398_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end398

land.lhs.true394:                                 ; preds = %while.end.land.lhs.true394_crit_edge, %cleanup, %land.lhs.true49.land.lhs.true394_crit_edge
  %trans.1897 = phi ptr [ %trans.1, %while.end.land.lhs.true394_crit_edge ], [ %trans.0960, %cleanup ], [ %trans.0960, %land.lhs.true49.land.lhs.true394_crit_edge ]
  %ret.2896 = phi i32 [ %ret.2, %while.end.land.lhs.true394_crit_edge ], [ %call270, %cleanup ], [ -95, %land.lhs.true49.land.lhs.true394_crit_edge ]
  %cur_offset.4895 = phi i64 [ %cur_offset.4, %while.end.land.lhs.true394_crit_edge ], [ %cur_offset.0959, %cleanup ], [ %cur_offset.0959, %land.lhs.true49.land.lhs.true394_crit_edge ]
  %is_new_extent395 = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 6
  %83 = ptrtoint ptr %is_new_extent395 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %is_new_extent395, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool396.not = icmp eq i8 %84, 0
  br i1 %tobool396.not, label %if.then397, label %land.lhs.true394.if.end398_crit_edge

land.lhs.true394.if.end398_crit_edge:             ; preds = %land.lhs.true394
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end398

if.then397:                                       ; preds = %land.lhs.true394
  call void @__sanitizer_cov_trace_pc() #17
  %runtime_flags = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %runtime_flags) #15
  br label %if.end398

if.end398:                                        ; preds = %if.then397, %land.lhs.true394.if.end398_crit_edge, %while.end.if.end398_crit_edge
  %trans.1888 = phi ptr [ %trans.1897, %if.then397 ], [ %trans.1897, %land.lhs.true394.if.end398_crit_edge ], [ %trans.1, %while.end.if.end398_crit_edge ]
  %ret.2887 = phi i32 [ %ret.2896, %if.then397 ], [ %ret.2896, %land.lhs.true394.if.end398_crit_edge ], [ %ret.2, %while.end.if.end398_crit_edge ]
  %cur_offset.4885 = phi i64 [ %cur_offset.4895, %if.then397 ], [ %cur_offset.4895, %land.lhs.true394.if.end398_crit_edge ], [ %cur_offset.4, %while.end.if.end398_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2887)
  %tobool399.not = icmp eq i32 %ret.2887, 0
  br i1 %tobool399.not, label %if.end401, label %if.end398.out_trans_crit_edge

if.end398.out_trans_crit_edge:                    ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_trans

if.end401:                                        ; preds = %if.end398
  %block_rsv403 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.1888, i32 0, i32 5
  %85 = ptrtoint ptr %block_rsv403 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %trans_block_rsv, ptr %block_rsv403, align 8
  %drop_end404 = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %drop_args, i32 0, i32 6
  %86 = ptrtoint ptr %drop_end404 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %drop_end404, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %87, i64 %end)
  %cmp405.not = icmp ugt i64 %87, %end
  %spec.store.select = select i1 %cmp405.not, i64 %87, i64 %add32
  %88 = ptrtoint ptr %drop_end404 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %spec.store.select, ptr %drop_end404, align 8
  br i1 %tobool11.not, label %land.lhs.true412, label %if.then561.critedge

land.lhs.true412:                                 ; preds = %if.end401
  call void @__sanitizer_cov_trace_cmp8(i64 %cur_offset.4885, i64 %add)
  %cmp413 = icmp ult i64 %cur_offset.4885, %add
  br i1 %cmp413, label %land.lhs.true415, label %land.lhs.true412.land.lhs.true487_crit_edge

land.lhs.true412.land.lhs.true487_crit_edge:      ; preds = %land.lhs.true412
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true487

land.lhs.true415:                                 ; preds = %land.lhs.true412
  %89 = ptrtoint ptr %drop_end404 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %drop_end404, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %cur_offset.4885, i64 %90)
  %cmp417 = icmp ult i64 %cur_offset.4885, %90
  br i1 %cmp417, label %if.then419, label %land.lhs.true415.land.lhs.true487_crit_edge

land.lhs.true415.land.lhs.true487_crit_edge:      ; preds = %land.lhs.true415
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true487

if.then419:                                       ; preds = %land.lhs.true415
  %call421 = tail call fastcc i32 @fill_holes(ptr noundef %trans.1888, ptr noundef %inode, ptr noundef %path, i64 noundef %cur_offset.4885, i64 noundef %90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call421)
  %tobool422.not = icmp eq i32 %call421, 0
  br i1 %tobool422.not, label %if.then419.out_trans_crit_edge, label %do.body424

if.then419.out_trans_crit_edge:                   ; preds = %if.then419
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_trans

do.body424:                                       ; preds = %if.then419
  %fs_info425 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.1888, i32 0, i32 16
  %91 = ptrtoint ptr %fs_info425 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fs_info425, align 4
  %fs_state426 = getelementptr inbounds %struct.btrfs_fs_info, ptr %92, i32 0, i32 149
  %call427 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state426) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call427)
  %tobool428.not = icmp eq i32 %call427, 0
  br i1 %tobool428.not, label %if.then429, label %do.body424.if.end481_crit_edge

do.body424.if.end481_crit_edge:                   ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end481

if.then429:                                       ; preds = %do.body424
  %93 = zext i32 %call421 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call421, label %do.end448 [
    i32 -5, label %if.then429.do.body463_crit_edge
    i32 -30, label %if.then429.do.body463_crit_edge1124
  ]

if.then429.do.body463_crit_edge1124:              ; preds = %if.then429
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body463

if.then429.do.body463_crit_edge:                  ; preds = %if.then429
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body463

do.end448:                                        ; preds = %if.then429
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2883, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call421) #15
  br label %if.end481

do.body463:                                       ; preds = %if.then429.do.body463_crit_edge, %if.then429.do.body463_crit_edge1124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug967, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_replace_file_extents, %if.then475)) #15
          to label %if.end481 [label %if.then475], !srcloc !155

if.then475:                                       ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #17
  %94 = ptrtoint ptr %fs_info425 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fs_info425, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %95, ptr noundef nonnull @.str.9, i32 noundef %call421) #19
  br label %if.end481

if.end481:                                        ; preds = %if.then475, %do.body463, %do.end448, %do.body424.if.end481_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans.1888, ptr noundef nonnull @.str.12, i32 noundef 2883, i32 noundef %call421) #19
  br label %out_trans

land.lhs.true487:                                 ; preds = %land.lhs.true415.land.lhs.true487_crit_edge, %land.lhs.true412.land.lhs.true487_crit_edge
  %96 = ptrtoint ptr %drop_end404 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %drop_end404, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %97, i64 %cur_offset.4885)
  %cmp489 = icmp ugt i64 %97, %cur_offset.4885
  br i1 %cmp489, label %if.then491, label %land.lhs.true487.out_trans_crit_edge

land.lhs.true487.out_trans_crit_edge:             ; preds = %land.lhs.true487
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_trans

if.then491:                                       ; preds = %land.lhs.true487
  %sub493 = sub i64 %97, %cur_offset.4885
  %call494 = tail call i32 @btrfs_inode_clear_file_extent_range(ptr noundef %inode, i64 noundef %cur_offset.4885, i64 noundef %sub493) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call494)
  %tobool495.not = icmp eq i32 %call494, 0
  br i1 %tobool495.not, label %if.then491.out_trans_crit_edge, label %do.body497

if.then491.out_trans_crit_edge:                   ; preds = %if.then491
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_trans

do.body497:                                       ; preds = %if.then491
  %fs_info498 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.1888, i32 0, i32 16
  %98 = ptrtoint ptr %fs_info498 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fs_info498, align 4
  %fs_state499 = getelementptr inbounds %struct.btrfs_fs_info, ptr %99, i32 0, i32 149
  %call500 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state499) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call500)
  %tobool501.not = icmp eq i32 %call500, 0
  br i1 %tobool501.not, label %if.then502, label %do.body497.if.end554_crit_edge

do.body497.if.end554_crit_edge:                   ; preds = %do.body497
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end554

if.then502:                                       ; preds = %do.body497
  %100 = zext i32 %call494 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call494, label %do.end521 [
    i32 -5, label %if.then502.do.body536_crit_edge
    i32 -30, label %if.then502.do.body536_crit_edge1125
  ]

if.then502.do.body536_crit_edge1125:              ; preds = %if.then502
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body536

if.then502.do.body536_crit_edge:                  ; preds = %if.then502
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body536

do.end521:                                        ; preds = %if.then502
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2891, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call494) #15
  br label %if.end554

do.body536:                                       ; preds = %if.then502.do.body536_crit_edge, %if.then502.do.body536_crit_edge1125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug968, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_replace_file_extents, %if.then548)) #15
          to label %if.end554 [label %if.then548], !srcloc !155

if.then548:                                       ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %fs_info498 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fs_info498, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %102, ptr noundef nonnull @.str.9, i32 noundef %call494) #19
  br label %if.end554

if.end554:                                        ; preds = %if.then548, %do.body536, %do.end521, %do.body497.if.end554_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans.1888, ptr noundef nonnull @.str.12, i32 noundef 2891, i32 noundef %call494) #19
  br label %out_trans

if.then561.critedge:                              ; preds = %if.end401
  %data_len562 = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 3
  %103 = ptrtoint ptr %data_len562 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %data_len562, align 8
  %bytes_found563 = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %drop_args, i32 0, i32 7
  %105 = ptrtoint ptr %bytes_found563 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %bytes_found563, align 8
  %call564 = tail call fastcc i32 @btrfs_insert_replace_extent(ptr noundef %trans.1888, ptr noundef %inode, ptr noundef %path, ptr noundef nonnull %extent_info, i64 noundef %104, i64 noundef %106)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call564)
  %tobool565.not = icmp eq i32 %call564, 0
  br i1 %tobool565.not, label %if.then561.critedge.out_trans_crit_edge, label %do.body567

if.then561.critedge.out_trans_crit_edge:          ; preds = %if.then561.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_trans

do.body567:                                       ; preds = %if.then561.critedge
  %fs_info568 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.1888, i32 0, i32 16
  %107 = ptrtoint ptr %fs_info568 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fs_info568, align 4
  %fs_state569 = getelementptr inbounds %struct.btrfs_fs_info, ptr %108, i32 0, i32 149
  %call570 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state569) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call570)
  %tobool571.not = icmp eq i32 %call570, 0
  br i1 %tobool571.not, label %if.then572, label %do.body567.if.end624_crit_edge

do.body567.if.end624_crit_edge:                   ; preds = %do.body567
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end624

if.then572:                                       ; preds = %do.body567
  %109 = zext i32 %call564 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call564, label %do.end591 [
    i32 -5, label %if.then572.do.body606_crit_edge
    i32 -30, label %if.then572.do.body606_crit_edge1126
  ]

if.then572.do.body606_crit_edge1126:              ; preds = %if.then572
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body606

if.then572.do.body606_crit_edge:                  ; preds = %if.then572
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body606

do.end591:                                        ; preds = %if.then572
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2901, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call564) #15
  br label %if.end624

do.body606:                                       ; preds = %if.then572.do.body606_crit_edge, %if.then572.do.body606_crit_edge1126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug969, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_replace_file_extents, %if.then618)) #15
          to label %if.end624 [label %if.then618], !srcloc !155

if.then618:                                       ; preds = %do.body606
  call void @__sanitizer_cov_trace_pc() #17
  %110 = ptrtoint ptr %fs_info568 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fs_info568, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %111, ptr noundef nonnull @.str.9, i32 noundef %call564) #19
  br label %if.end624

if.end624:                                        ; preds = %if.then618, %do.body606, %do.end591, %do.body567.if.end624_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans.1888, ptr noundef nonnull @.str.12, i32 noundef 2901, i32 noundef %call564) #19
  br label %out_trans

out_trans:                                        ; preds = %if.end624, %if.then561.critedge.out_trans_crit_edge, %if.end554, %if.then491.out_trans_crit_edge, %land.lhs.true487.out_trans_crit_edge, %if.end481, %if.then419.out_trans_crit_edge, %if.end398.out_trans_crit_edge, %if.end254, %if.end181
  %trans.1888902 = phi ptr [ %trans.1888, %if.end398.out_trans_crit_edge ], [ %trans.1888, %if.end624 ], [ %trans.1888, %if.then561.critedge.out_trans_crit_edge ], [ %trans.1888, %if.end554 ], [ %trans.1888, %if.end481 ], [ %trans.1888, %land.lhs.true487.out_trans_crit_edge ], [ %trans.1888, %if.then491.out_trans_crit_edge ], [ %trans.1888, %if.then419.out_trans_crit_edge ], [ %trans.0960, %if.end181 ], [ %trans.0960, %if.end254 ]
  %ret.4 = phi i32 [ %ret.2887, %if.end398.out_trans_crit_edge ], [ %call564, %if.end624 ], [ 0, %if.then561.critedge.out_trans_crit_edge ], [ %call494, %if.end554 ], [ %call421, %if.end481 ], [ 0, %land.lhs.true487.out_trans_crit_edge ], [ 0, %if.then491.out_trans_crit_edge ], [ 0, %if.then419.out_trans_crit_edge ], [ %call121, %if.end181 ], [ %call194, %if.end254 ]
  %tobool629.not = icmp eq ptr %trans.1888902, null
  br i1 %tobool629.not, label %out_trans.out_free_crit_edge, label %if.end631

out_trans.out_free_crit_edge:                     ; preds = %out_trans
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

out_trans.thread:                                 ; preds = %lor.lhs.false47
  %tobool629.not908 = icmp eq ptr %trans.0960, null
  br i1 %tobool629.not908, label %out_trans.thread.out_free_crit_edge, label %if.end631.thread

out_trans.thread.out_free_crit_edge:              ; preds = %out_trans.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end631.thread:                                 ; preds = %out_trans.thread
  call void @__sanitizer_cov_trace_pc() #17
  %block_rsv633913 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.0960, i32 0, i32 5
  %112 = ptrtoint ptr %block_rsv633913 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %trans_block_rsv, ptr %block_rsv633913, align 8
  br label %if.then635

if.end631:                                        ; preds = %out_trans
  %block_rsv633 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.1888902, i32 0, i32 5
  %113 = ptrtoint ptr %block_rsv633 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %trans_block_rsv, ptr %block_rsv633, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool634.not = icmp eq i32 %ret.4, 0
  br i1 %tobool634.not, label %if.else637, label %if.end631.if.then635_crit_edge

if.end631.if.then635_crit_edge:                   ; preds = %if.end631
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then635

if.then635:                                       ; preds = %if.end631.if.then635_crit_edge, %if.end631.thread
  %trans.1888902909916 = phi ptr [ %trans.0960, %if.end631.thread ], [ %trans.1888902, %if.end631.if.then635_crit_edge ]
  %ret.4910915 = phi i32 [ -95, %if.end631.thread ], [ %ret.4, %if.end631.if.then635_crit_edge ]
  %call636 = tail call i32 @btrfs_end_transaction(ptr noundef nonnull %trans.1888902909916) #15
  br label %out_free

if.else637:                                       ; preds = %if.end631
  call void @__sanitizer_cov_trace_pc() #17
  %114 = ptrtoint ptr %trans_out to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %trans.1888902, ptr %trans_out, align 4
  br label %out_free

out_free:                                         ; preds = %if.else637, %if.then635, %out_trans.thread.out_free_crit_edge, %out_trans.out_free_crit_edge, %if.then16
  %ret.5 = phi i32 [ %20, %if.then16 ], [ %ret.4910915, %if.then635 ], [ 0, %if.else637 ], [ %ret.4, %out_trans.out_free_crit_edge ], [ -95, %out_trans.thread.out_free_crit_edge ]
  tail call void @btrfs_free_block_rsv(ptr noundef %4, ptr noundef nonnull %call6) #15
  br label %cleanup639

cleanup639:                                       ; preds = %out_free, %if.end.cleanup639_crit_edge, %entry.cleanup639_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup639_crit_edge ], [ %ret.5, %out_free ], [ -12, %if.end.cleanup639_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %drop_args) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_block_rsv(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_block_rsv_migrate(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_update_inode_bytes(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_holes(ptr noundef %trans, ptr noundef %inode, ptr noundef %path, i64 noundef %offset, i64 noundef %end) unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 8
  %extent_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #15
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %6 = call ptr @memset(ptr %key, i32 255, i32 17)
  %7 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %incompat_flags.i.i, align 1
  %11 = and i64 %10, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.i.not = icmp eq i64 %11, 0
  br i1 %tobool.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %12 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %15)
  %cmp.i = icmp eq i8 %15, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %16 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %17 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %13, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %18 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %ino.0.i, ptr %key, align 8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 108, ptr %4, align 8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %offset, ptr %5, align 1
  %call5 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp slt i32 %call5, 1
  br i1 %cmp, label %if.then6, label %if.end10

if.then6:                                         ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp7 = icmp eq i32 %call5, 0
  %spec.store.select = select i1 %cmp7, i32 -22, i32 %call5
  br label %cleanup

if.end10:                                         ; preds = %btrfs_ino.exit
  %21 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %23 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slots, align 4
  %sub = add i32 %24, -1
  %call12 = call fastcc i32 @hole_mergeable(ptr noundef %inode, ptr noundef %22, i32 noundef %sub, i64 noundef %offset, i64 noundef %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  %25 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slots, align 4
  br i1 %tobool.not, label %if.end22, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %dec = add i32 %26, -1
  %27 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dec, ptr %slots, align 4
  %mul.i.i.i = mul i32 %dec, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %28 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %22, ptr noundef %28, i32 noundef 17) #15
  %add = add i32 %call.i.i, 101
  %29 = inttoptr i32 %add to ptr
  %call.i = call i64 @btrfs_get_64(ptr noundef %22, ptr noundef %29, i32 noundef 45) #15
  %add20 = sub i64 %end, %offset
  %sub21 = add i64 %add20, %call.i
  call void @btrfs_set_64(ptr noundef %22, ptr noundef %29, i32 noundef 45, i64 noundef %sub21) #15
  call void @btrfs_set_64(ptr noundef %22, ptr noundef %29, i32 noundef 8, i64 noundef %sub21) #15
  br label %out.sink.split

if.end22:                                         ; preds = %if.end10
  %call25 = call fastcc i32 @hole_mergeable(ptr noundef %inode, ptr noundef %22, i32 noundef %26, i64 noundef %offset, i64 noundef %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end37, label %if.then27

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %offset, ptr %5, align 1
  call void @btrfs_set_item_key_safe(ptr noundef %1, ptr noundef %path, ptr noundef nonnull %key) #15
  %31 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slots, align 4
  %mul.i.i.i156 = mul i32 %32, 25
  %add.i.i.i157 = add i32 %mul.i.i.i156, 101
  %33 = inttoptr i32 %add.i.i.i157 to ptr
  %call.i.i158 = call i32 @btrfs_get_32(ptr noundef %22, ptr noundef %33, i32 noundef 17) #15
  %add33 = add i32 %call.i.i158, 101
  %34 = inttoptr i32 %add33 to ptr
  %call.i159 = call i64 @btrfs_get_64(ptr noundef %22, ptr noundef %34, i32 noundef 45) #15
  %add35 = sub i64 %end, %offset
  %sub36 = add i64 %add35, %call.i159
  call void @btrfs_set_64(ptr noundef %22, ptr noundef %34, i32 noundef 45, i64 noundef %sub36) #15
  call void @btrfs_set_64(ptr noundef %22, ptr noundef %34, i32 noundef 8, i64 noundef %sub36) #15
  br label %out.sink.split

if.end37:                                         ; preds = %if.end22
  call void @btrfs_release_path(ptr noundef %path) #15
  %35 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool.not.i161 = icmp eq i64 %36, 0
  br i1 %tobool.not.i161, label %if.end37.if.then.i167_crit_edge, label %lor.lhs.false.i164

if.end37.if.then.i167_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i167

lor.lhs.false.i164:                               ; preds = %if.end37
  %type.i162 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %type.i162 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %type.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %38)
  %cmp.i163 = icmp eq i8 %38, -124
  br i1 %cmp.i163, label %lor.lhs.false.i164.if.then.i167_crit_edge, label %lor.lhs.false.i164.btrfs_ino.exit169_crit_edge

lor.lhs.false.i164.btrfs_ino.exit169_crit_edge:   ; preds = %lor.lhs.false.i164
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit169

lor.lhs.false.i164.if.then.i167_crit_edge:        ; preds = %lor.lhs.false.i164
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i167

if.then.i167:                                     ; preds = %lor.lhs.false.i164.if.then.i167_crit_edge, %if.end37.if.then.i167_crit_edge
  %i_ino.i165 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %39 = ptrtoint ptr %i_ino.i165 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino.i165, align 8
  %conv3.i166 = zext i32 %40 to i64
  br label %btrfs_ino.exit169

btrfs_ino.exit169:                                ; preds = %if.then.i167, %lor.lhs.false.i164.btrfs_ino.exit169_crit_edge
  %ino.0.i168 = phi i64 [ %conv3.i166, %if.then.i167 ], [ %36, %lor.lhs.false.i164.btrfs_ino.exit169_crit_edge ]
  %sub39 = sub i64 %end, %offset
  %call41 = call i32 @btrfs_insert_file_extent(ptr noundef %trans, ptr noundef %3, i64 noundef %ino.0.i168, i64 noundef %offset, i64 noundef 0, i64 noundef 0, i64 noundef %sub39, i64 noundef 0, i64 noundef %sub39, i8 noundef zeroext 0, i8 noundef zeroext 0, i16 noundef zeroext 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %btrfs_ino.exit169.out_crit_edge, label %btrfs_ino.exit169.cleanup_crit_edge

btrfs_ino.exit169.cleanup_crit_edge:              ; preds = %btrfs_ino.exit169
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

btrfs_ino.exit169.out_crit_edge:                  ; preds = %btrfs_ino.exit169
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out.sink.split:                                   ; preds = %if.then27, %if.then13
  %.sink = phi ptr [ %34, %if.then27 ], [ %29, %if.then13 ]
  call void @btrfs_set_64(ptr noundef %22, ptr noundef %.sink, i32 noundef 37, i64 noundef 0) #15
  call void @btrfs_mark_buffer_dirty(ptr noundef %22) #15
  br label %out

out:                                              ; preds = %out.sink.split, %btrfs_ino.exit169.out_crit_edge, %entry.out_crit_edge
  call void @btrfs_release_path(ptr noundef %path) #15
  %call46 = call ptr @alloc_extent_map() #15
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then48, label %if.else

if.then48:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %sub49 = add i64 %end, -1
  call void @btrfs_drop_extent_cache(ptr noundef %inode, i64 noundef %offset, i64 noundef %sub49, i32 noundef 0)
  %runtime_flags = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 11
  call void @_set_bit(i32 noundef 4, ptr noundef %runtime_flags) #15
  br label %cleanup

if.else:                                          ; preds = %out
  %start = getelementptr inbounds %struct.extent_map, ptr %call46, i32 0, i32 1
  %41 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %offset, ptr %start, align 8
  %sub50 = sub i64 %end, %offset
  %len = getelementptr inbounds %struct.extent_map, ptr %call46, i32 0, i32 2
  %42 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %sub50, ptr %len, align 8
  %ram_bytes = getelementptr inbounds %struct.extent_map, ptr %call46, i32 0, i32 7
  %43 = ptrtoint ptr %ram_bytes to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %sub50, ptr %ram_bytes, align 8
  %orig_start = getelementptr inbounds %struct.extent_map, ptr %call46, i32 0, i32 5
  %44 = ptrtoint ptr %orig_start to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %offset, ptr %orig_start, align 8
  %block_start = getelementptr inbounds %struct.extent_map, ptr %call46, i32 0, i32 8
  %45 = ptrtoint ptr %block_start to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 -3, ptr %block_start, align 8
  %block_len = getelementptr inbounds %struct.extent_map, ptr %call46, i32 0, i32 9
  %46 = ptrtoint ptr %block_len to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %block_len, align 8
  %orig_block_len = getelementptr inbounds %struct.extent_map, ptr %call46, i32 0, i32 6
  %47 = ptrtoint ptr %orig_block_len to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %orig_block_len, align 8
  %compress_type = getelementptr inbounds %struct.extent_map, ptr %call46, i32 0, i32 14
  %48 = ptrtoint ptr %compress_type to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %compress_type, align 4
  %49 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %trans, align 8
  %generation = getelementptr inbounds %struct.extent_map, ptr %call46, i32 0, i32 10
  %51 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %generation, align 8
  %sub52 = add i64 %end, -1
  %lock = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 3, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.else
  call void @btrfs_drop_extent_cache(ptr noundef %inode, i64 noundef %offset, i64 noundef %sub52, i32 noundef 0)
  call void @_raw_write_lock(ptr noundef %lock) #15
  %call53 = call i32 @add_extent_mapping(ptr noundef %extent_tree, ptr noundef nonnull %call46, i32 noundef 1) #15
  call void @_raw_write_unlock(ptr noundef %lock) #15
  %cmp55 = icmp eq i32 %call53, -17
  br i1 %cmp55, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @free_extent_map(ptr noundef nonnull %call46) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool56.not = icmp eq i32 %call53, 0
  br i1 %tobool56.not, label %do.end.cleanup_crit_edge, label %if.then57

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then57:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %runtime_flags58 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 11
  call void @_set_bit(i32 noundef 4, ptr noundef %runtime_flags58) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %do.end.cleanup_crit_edge, %if.then48, %btrfs_ino.exit169.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %spec.store.select, %if.then6 ], [ %call41, %btrfs_ino.exit169.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then57 ], [ 0, %if.then48 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inode_clear_file_extent_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_insert_replace_extent(ptr noundef %trans, ptr noundef %inode, ptr noundef %path, ptr nocapture noundef %extent_info, i64 noundef %replace_len, i64 noundef %bytes_to_drop) unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %key = alloca %struct.btrfs_key, align 8
  %ref = alloca %struct.btrfs_ref, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #15
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ref) #15
  %6 = call ptr @memset(ptr %ref, i32 0, i32 72)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %replace_len)
  %cmp = icmp eq i64 %replace_len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %extent_info to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %extent_info, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp3 = icmp eq i64 %8, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %9 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %incompat_flags.i.i, align 1
  %13 = and i64 %12, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.i.not = icmp eq i64 %13, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end5_crit_edge, label %if.then4

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @btrfs_update_inode_bytes(ptr noundef %inode, i64 noundef 0, i64 noundef %bytes_to_drop) #15
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %14 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not.i = icmp eq i64 %15, 0
  br i1 %tobool.not.i, label %if.end5.if.then.i_crit_edge, label %lor.lhs.false.i

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end5
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %17)
  %cmp.i = icmp eq i8 %17, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end5.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %18 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %19 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %15, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %20 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %ino.0.i, ptr %key, align 8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 108, ptr %4, align 8
  %file_offset = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 4
  %22 = ptrtoint ptr %file_offset to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %file_offset, align 8
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %25 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 53, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #15
  %26 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %29 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %key, ptr %batch.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %data_size.addr.i, ptr %26, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 53, ptr %27, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %28, align 4
  %call.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %3, ptr noundef %path, ptr noundef nonnull %batch.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %btrfs_ino.exit.cleanup_crit_edge

btrfs_ino.exit.cleanup_crit_edge:                 ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %btrfs_ino.exit
  %33 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %35 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %slots, align 4
  %extent_buf = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 5
  %37 = ptrtoint ptr %extent_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %extent_buf, align 8
  %mul.i.i.i = mul i32 %36, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %39 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %34, ptr noundef %39, i32 noundef 17) #15
  %add = add i32 %call.i.i, 101
  call void @write_extent_buffer(ptr noundef %34, ptr noundef %38, i32 noundef %add, i32 noundef 53) #15
  %call.i.i118 = call i32 @btrfs_get_32(ptr noundef %34, ptr noundef %39, i32 noundef 17) #15
  %add13 = add i32 %call.i.i118, 101
  %40 = inttoptr i32 %add13 to ptr
  %call.i119 = call zeroext i8 @btrfs_get_8(ptr noundef %34, ptr noundef %40, i32 noundef 20) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i119)
  %cmp15.not = icmp eq i8 %call.i119, 0
  br i1 %cmp15.not, label %cond.false, label %cond.end, !prof !126

cond.false:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 2625) #18
  unreachable

cond.end:                                         ; preds = %if.end9
  %data_offset = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 2
  %41 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %data_offset, align 8
  call void @btrfs_set_64(ptr noundef %34, ptr noundef %40, i32 noundef 37, i64 noundef %42) #15
  call void @btrfs_set_64(ptr noundef %34, ptr noundef %40, i32 noundef 45, i64 noundef %replace_len) #15
  %is_new_extent = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 6
  %43 = ptrtoint ptr %is_new_extent to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_new_extent, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool19.not = icmp eq i8 %44, 0
  br i1 %tobool19.not, label %cond.end.if.end21_crit_edge, label %if.then20

cond.end.if.end21_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then20:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %34, ptr noundef %40, i32 noundef 0, i64 noundef %46) #15
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %cond.end.if.end21_crit_edge
  call void @btrfs_mark_buffer_dirty(ptr noundef %34) #15
  call void @btrfs_release_path(ptr noundef %path) #15
  %47 = ptrtoint ptr %file_offset to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %file_offset, align 8
  %call23 = call i32 @btrfs_inode_set_file_extent_range(ptr noundef %inode, i64 noundef %48, i64 noundef %replace_len) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %49 = ptrtoint ptr %extent_info to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %extent_info, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %cmp28 = icmp eq i64 %50, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  call void @btrfs_update_inode_bytes(ptr noundef %inode, i64 noundef 0, i64 noundef %bytes_to_drop) #15
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @btrfs_update_inode_bytes(ptr noundef %inode, i64 noundef %replace_len, i64 noundef %bytes_to_drop) #15
  %51 = ptrtoint ptr %is_new_extent to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_new_extent, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool33.not = icmp eq i8 %52, 0
  br i1 %tobool33.not, label %if.end31.if.else_crit_edge, label %land.lhs.true35

if.end31.if.else_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true35:                                  ; preds = %if.end31
  %insertions = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 8
  %53 = ptrtoint ptr %insertions to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %insertions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp36 = icmp eq i32 %54, 0
  br i1 %cmp36, label %if.then38, label %land.lhs.true35.if.else_crit_edge

land.lhs.true35.if.else_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then38:                                        ; preds = %land.lhs.true35
  %55 = ptrtoint ptr %extent_info to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %extent_info, align 8
  %57 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %key, align 8
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -88, ptr %4, align 8
  %disk_len = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 1
  %59 = ptrtoint ptr %disk_len to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %disk_len, align 8
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 %60, ptr %5, align 1
  %62 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool.not.i121 = icmp eq i64 %63, 0
  br i1 %tobool.not.i121, label %if.then38.if.then.i127_crit_edge, label %lor.lhs.false.i124

if.then38.if.then.i127_crit_edge:                 ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i127

lor.lhs.false.i124:                               ; preds = %if.then38
  %type.i122 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %type.i122 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %type.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %65)
  %cmp.i123 = icmp eq i8 %65, -124
  br i1 %cmp.i123, label %lor.lhs.false.i124.if.then.i127_crit_edge, label %lor.lhs.false.i124.btrfs_ino.exit129_crit_edge

lor.lhs.false.i124.btrfs_ino.exit129_crit_edge:   ; preds = %lor.lhs.false.i124
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit129

lor.lhs.false.i124.if.then.i127_crit_edge:        ; preds = %lor.lhs.false.i124
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i127

if.then.i127:                                     ; preds = %lor.lhs.false.i124.if.then.i127_crit_edge, %if.then38.if.then.i127_crit_edge
  %i_ino.i125 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %66 = ptrtoint ptr %i_ino.i125 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_ino.i125, align 8
  %conv3.i126 = zext i32 %67 to i64
  br label %btrfs_ino.exit129

btrfs_ino.exit129:                                ; preds = %if.then.i127, %lor.lhs.false.i124.btrfs_ino.exit129_crit_edge
  %ino.0.i128 = phi i64 [ %conv3.i126, %if.then.i127 ], [ %63, %lor.lhs.false.i124.btrfs_ino.exit129_crit_edge ]
  %68 = ptrtoint ptr %file_offset to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %file_offset, align 8
  %qgroup_reserved = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 7
  %70 = ptrtoint ptr %qgroup_reserved to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %qgroup_reserved, align 8
  %conv45 = sext i32 %71 to i64
  %call46 = call i32 @btrfs_alloc_reserved_file_extent(ptr noundef %trans, ptr noundef %3, i64 noundef %ino.0.i128, i64 noundef %69, i64 noundef %conv45, ptr noundef nonnull %key) #15
  br label %if.end54

if.else:                                          ; preds = %land.lhs.true35.if.else_crit_edge, %if.end31.if.else_crit_edge
  %72 = ptrtoint ptr %extent_info to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %extent_info, align 8
  %disk_len48 = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 1
  %74 = ptrtoint ptr %disk_len48 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %disk_len48, align 8
  %action1.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 1
  %76 = ptrtoint ptr %action1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %action1.i, align 4
  %bytenr2.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 4
  %77 = ptrtoint ptr %bytenr2.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %73, ptr %bytenr2.i, align 8
  %len3.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 5
  %78 = ptrtoint ptr %len3.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %75, ptr %len3.i, align 8
  %parent4.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 6
  %79 = ptrtoint ptr %parent4.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 0, ptr %parent4.i, align 8
  %80 = ptrtoint ptr %file_offset to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %file_offset, align 8
  %82 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %data_offset, align 8
  %sub = sub i64 %81, %83
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %3, i32 0, i32 7
  %84 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %root_key, align 1
  %86 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %87 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %87)
  %tobool.not.i131 = icmp eq i64 %87, 0
  br i1 %tobool.not.i131, label %if.else.if.then.i137_crit_edge, label %lor.lhs.false.i134

if.else.if.then.i137_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i137

lor.lhs.false.i134:                               ; preds = %if.else
  %type.i132 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %type.i132 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %type.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %89)
  %cmp.i133 = icmp eq i8 %89, -124
  br i1 %cmp.i133, label %lor.lhs.false.i134.if.then.i137_crit_edge, label %lor.lhs.false.i134.btrfs_ino.exit139_crit_edge

lor.lhs.false.i134.btrfs_ino.exit139_crit_edge:   ; preds = %lor.lhs.false.i134
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit139

lor.lhs.false.i134.if.then.i137_crit_edge:        ; preds = %lor.lhs.false.i134
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i137

if.then.i137:                                     ; preds = %lor.lhs.false.i134.if.then.i137_crit_edge, %if.else.if.then.i137_crit_edge
  %i_ino.i135 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %90 = ptrtoint ptr %i_ino.i135 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %i_ino.i135, align 8
  %conv3.i136 = zext i32 %91 to i64
  br label %btrfs_ino.exit139

btrfs_ino.exit139:                                ; preds = %if.then.i137, %lor.lhs.false.i134.btrfs_ino.exit139_crit_edge
  %ino.0.i138 = phi i64 [ %conv3.i136, %if.then.i137 ], [ %87, %lor.lhs.false.i134.btrfs_ino.exit139_crit_edge ]
  %real_root.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 3
  %92 = ptrtoint ptr %real_root.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %85, ptr %real_root.i, align 8
  %93 = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %85, ptr %93, align 8
  %ino1.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7, i32 0, i32 1
  %95 = ptrtoint ptr %ino1.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %ino.0.i138, ptr %ino1.i, align 8
  %offset2.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7, i32 0, i32 2
  %96 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %sub, ptr %offset2.i, align 8
  %97 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %85)
  %cmp.i.i = icmp ne i64 %85, 5
  %98 = add i64 %85, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %98)
  %99 = icmp ult i64 %98, -281474976710400
  %tobool4.not.i = and i1 %cmp.i.i, %99
  %spec.select.i = zext i1 %tobool4.not.i to i8
  %100 = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 2
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %spec.select.i, ptr %100, align 8
  %call53 = call i32 @btrfs_inc_extent_ref(ptr noundef %trans, ptr noundef nonnull %ref) #15
  br label %if.end54

if.end54:                                         ; preds = %btrfs_ino.exit139, %btrfs_ino.exit129
  %ret.0 = phi i32 [ %call46, %btrfs_ino.exit129 ], [ %call53, %btrfs_ino.exit139 ]
  %insertions55 = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %extent_info, i32 0, i32 8
  %102 = ptrtoint ptr %insertions55 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %insertions55, align 4
  %inc = add i32 %103, 1
  store i32 %inc, ptr %insertions55, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then30, %if.end21.cleanup_crit_edge, %btrfs_ino.exit.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then30 ], [ %ret.0, %if.end54 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %btrfs_ino.exit.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ref) #15
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_update_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_btree_balance_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_block_rsv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @btrfs_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  %cached_state.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %whence.off = add i32 %whence, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whence.off)
  %switch = icmp ult i32 %whence.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i64 @generic_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @btrfs_inode_lock(ptr noundef %3, i32 noundef 1) #15
  %add.ptr.i = getelementptr i8, ptr %3, i32 -864
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cached_state.i) #15
  %8 = ptrtoint ptr %cached_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cached_state.i, align 4
  %i_size2.i = getelementptr i8, ptr %3, i32 56
  %9 = ptrtoint ptr %i_size2.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_size2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp.i = icmp ne i64 %10, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %offset)
  %cmp3.not.i = icmp sgt i64 %10, %offset
  %or.cond.i = and i1 %cmp.i, %cmp3.not.i
  br i1 %or.cond.i, label %if.end.i, label %sw.bb.find_desired_extent.exit.thread_crit_edge

sw.bb.find_desired_extent.exit.thread_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_desired_extent.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %11 = tail call i64 @llvm.smax.i64(i64 %offset, i64 0) #15
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 167
  %12 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sectorsize.i, align 4
  %sub.i = add i32 %13, -1
  %conv.i = zext i32 %sub.i to i64
  %neg.i = xor i64 %conv.i, -1
  %and.i = and i64 %11, %neg.i
  %sub5.i = add nsw i64 %10, -1
  %or.i = or i64 %sub5.i, %conv.i
  %add.i = add i64 %or.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %and.i)
  %cmp9.not.i = icmp ugt i64 %add.i, %and.i
  %conv13.i = zext i32 %13 to i64
  %add14.i = add nuw i64 %and.i, %conv13.i
  %lockend.0.i = select i1 %cmp9.not.i, i64 %add.i, i64 %add14.i
  %dec.i = add i64 %lockend.0.i, -1
  %14 = sub i64 %lockend.0.i, %and.i
  %io_tree.i = getelementptr i8, ptr %3, i32 -736
  %call.i = call i32 @lock_extent_bits(ptr noundef %io_tree.i, i64 noundef %and.i, i64 noundef %dec.i, ptr noundef nonnull %cached_state.i) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %10)
  %cmp18129.i = icmp ult i64 %11, %10
  br i1 %cmp18129.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end44.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %start.0130.i = phi i64 [ %add47.i, %if.end44.i.while.body.i_crit_edge ], [ %11, %if.end.i.while.body.i_crit_edge ]
  %call20.i = call ptr @btrfs_get_extent_fiemap(ptr noundef %add.ptr.i, i64 noundef %start.0130.i, i64 noundef %14) #15
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then22.i, label %if.end24.i

if.then22.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %call20.i to i32
  br label %while.end.i

if.end24.i:                                       ; preds = %while.body.i
  %16 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %whence, label %if.end24.i.if.end44.i_crit_edge [
    i32 4, label %land.lhs.true.i
    i32 3, label %land.lhs.true34.i
  ]

if.end24.i.if.end44.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %block_start.i = getelementptr inbounds %struct.extent_map, ptr %call20.i, i32 0, i32 8
  %17 = ptrtoint ptr %block_start.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %block_start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %18)
  %cmp27.i = icmp eq i64 %18, -3
  br i1 %cmp27.i, label %land.lhs.true.i.while.end.i_crit_edge, label %lor.lhs.false29.i

land.lhs.true.i.while.end.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

lor.lhs.false29.i:                                ; preds = %land.lhs.true.i
  %flags.i = getelementptr inbounds %struct.extent_map, ptr %call20.i, i32 0, i32 11
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %lor.lhs.false29.i.if.end44.i_crit_edge, label %lor.lhs.false29.i.while.end.i_crit_edge

lor.lhs.false29.i.while.end.i_crit_edge:          ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

lor.lhs.false29.i.if.end44.i_crit_edge:           ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i

land.lhs.true34.i:                                ; preds = %if.end24.i
  %block_start35.i = getelementptr inbounds %struct.extent_map, ptr %call20.i, i32 0, i32 8
  %22 = ptrtoint ptr %block_start35.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %block_start35.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %23)
  %cmp36.not.i = icmp eq i64 %23, -3
  br i1 %cmp36.not.i, label %land.lhs.true34.i.if.end44.i_crit_edge, label %land.lhs.true38.i

land.lhs.true34.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i

land.lhs.true38.i:                                ; preds = %land.lhs.true34.i
  %flags39.i = getelementptr inbounds %struct.extent_map, ptr %call20.i, i32 0, i32 11
  %24 = ptrtoint ptr %flags39.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags39.i, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool41.not.i = icmp eq i32 %26, 0
  br i1 %tobool41.not.i, label %land.lhs.true38.i.while.end.i_crit_edge, label %land.lhs.true38.i.if.end44.i_crit_edge

land.lhs.true38.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i

land.lhs.true38.i.while.end.i_crit_edge:          ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end44.i:                                       ; preds = %land.lhs.true38.i.if.end44.i_crit_edge, %land.lhs.true34.i.if.end44.i_crit_edge, %lor.lhs.false29.i.if.end44.i_crit_edge, %if.end24.i.if.end44.i_crit_edge
  %start45.i = getelementptr inbounds %struct.extent_map, ptr %call20.i, i32 0, i32 1
  %27 = ptrtoint ptr %start45.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start45.i, align 8
  %len46.i = getelementptr inbounds %struct.extent_map, ptr %call20.i, i32 0, i32 2
  %29 = ptrtoint ptr %len46.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %len46.i, align 8
  %add47.i = add i64 %30, %28
  call void @free_extent_map(ptr noundef %call20.i) #15
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 3620, i32 noundef 0) #15
  %call.i.i = call i32 @__cond_resched() #15
  %cmp18.i = icmp ult i64 %add47.i, %10
  br i1 %cmp18.i, label %if.end44.i.while.body.i_crit_edge, label %if.end44.i.while.end.i_crit_edge

if.end44.i.while.end.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end44.i.while.body.i_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.end.i:                                      ; preds = %if.end44.i.while.end.i_crit_edge, %land.lhs.true38.i.while.end.i_crit_edge, %lor.lhs.false29.i.while.end.i_crit_edge, %land.lhs.true.i.while.end.i_crit_edge, %if.then22.i, %if.end.i.while.end.i_crit_edge
  %start.0128.i = phi i64 [ %start.0130.i, %if.then22.i ], [ %11, %if.end.i.while.end.i_crit_edge ], [ %start.0130.i, %land.lhs.true38.i.while.end.i_crit_edge ], [ %start.0130.i, %land.lhs.true.i.while.end.i_crit_edge ], [ %start.0130.i, %lor.lhs.false29.i.while.end.i_crit_edge ], [ %add47.i, %if.end44.i.while.end.i_crit_edge ]
  %cmp18126.i = phi i1 [ true, %if.then22.i ], [ false, %if.end.i.while.end.i_crit_edge ], [ true, %land.lhs.true38.i.while.end.i_crit_edge ], [ true, %land.lhs.true.i.while.end.i_crit_edge ], [ true, %lor.lhs.false29.i.while.end.i_crit_edge ], [ false, %if.end44.i.while.end.i_crit_edge ]
  %em.1.i = phi ptr [ null, %if.then22.i ], [ null, %if.end.i.while.end.i_crit_edge ], [ %call20.i, %land.lhs.true38.i.while.end.i_crit_edge ], [ %call20.i, %land.lhs.true.i.while.end.i_crit_edge ], [ %call20.i, %lor.lhs.false29.i.while.end.i_crit_edge ], [ null, %if.end44.i.while.end.i_crit_edge ]
  %ret.0.i = phi i32 [ %15, %if.then22.i ], [ 0, %if.end.i.while.end.i_crit_edge ], [ 0, %land.lhs.true.i.while.end.i_crit_edge ], [ 0, %lor.lhs.false29.i.while.end.i_crit_edge ], [ 0, %land.lhs.true38.i.while.end.i_crit_edge ], [ 0, %if.end44.i.while.end.i_crit_edge ]
  call void @free_extent_map(ptr noundef %em.1.i) #15
  %call.i124.i = call i32 @__clear_extent_bit(ptr noundef %io_tree.i, i64 noundef %and.i, i64 noundef %dec.i, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %cached_state.i, i32 noundef 3136, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool52.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool52.not.i, label %if.else55.i, label %if.then53.i

if.then53.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv54.i = sext i32 %ret.0.i to i64
  br label %find_desired_extent.exit

if.else55.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %whence)
  %cmp56.i = icmp ne i32 %whence, 3
  %or.cond121.i = or i1 %cmp56.i, %cmp18126.i
  %31 = call i64 @llvm.smin.i64(i64 %start.0128.i, i64 %10) #15
  br i1 %or.cond121.i, label %if.else55.i.find_desired_extent.exit_crit_edge, label %if.else55.i.find_desired_extent.exit.thread_crit_edge

if.else55.i.find_desired_extent.exit.thread_crit_edge: ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_desired_extent.exit.thread

if.else55.i.find_desired_extent.exit_crit_edge:   ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_desired_extent.exit

find_desired_extent.exit.thread:                  ; preds = %if.else55.i.find_desired_extent.exit.thread_crit_edge, %sw.bb.find_desired_extent.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state.i) #15
  call void @btrfs_inode_unlock(ptr noundef %3, i32 noundef 1) #15
  br label %cleanup

find_desired_extent.exit:                         ; preds = %if.else55.i.find_desired_extent.exit_crit_edge, %if.then53.i
  %retval.0.i = phi i64 [ %conv54.i, %if.then53.i ], [ %31, %if.else55.i.find_desired_extent.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state.i) #15
  call void @btrfs_inode_unlock(ptr noundef %3, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i)
  %cmp = icmp slt i64 %retval.0.i, 0
  br i1 %cmp, label %find_desired_extent.exit.cleanup_crit_edge, label %if.end

find_desired_extent.exit.cleanup_crit_edge:       ; preds = %find_desired_extent.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %find_desired_extent.exit
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %s_maxbytes, align 8
  %call4 = call i64 @vfs_setpos(ptr noundef %file, i64 noundef %retval.0.i, i64 noundef %35) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %find_desired_extent.exit.cleanup_crit_edge, %find_desired_extent.exit.thread, %sw.default
  %retval.0 = phi i64 [ %call, %sw.default ], [ %call4, %if.end ], [ %retval.0.i, %find_desired_extent.exit.cleanup_crit_edge ], [ -6, %find_desired_extent.exit.thread ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_file_read_iter(ptr noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %0 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ki_flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocb, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %i_verity_info.i.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %i_verity_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %i_verity_info.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !164
  %cmp.i.not.i = icmp eq ptr %7, null
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.lor.lhs.false_crit_edge

if.then.lor.lhs.false_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

if.end.i:                                         ; preds = %if.then
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %12 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ki_pos.i, align 8
  %sectorsize.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %11, i32 0, i32 167
  %14 = ptrtoint ptr %sectorsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sectorsize.i.i.i, align 4
  %sub.i.i.i = add i32 %15, -1
  %conv.i.i.i = zext i32 %sub.i.i.i to i64
  %and.i.i.i = and i64 %13, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.lor.lhs.false_crit_edge

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

if.end.i.i.i:                                     ; preds = %if.end.i
  %call.i.i.i = tail call i32 @iov_iter_alignment(ptr noundef %to) #15
  %and1.i.i.i = and i32 %call.i.i.i, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i, label %if.end.i.i.i.lor.lhs.false_crit_edge

if.end.i.i.i.lor.lhs.false_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %16 = ptrtoint ptr %to to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %to, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i.i.i = icmp eq i8 %17, 0
  br i1 %cmp.i.i.i, label %for.cond.preheader.i.i, label %if.end.i.i.if.end5.i_crit_edge

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %18 = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp434.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp434.not.i.i, label %for.cond.preheader.i.i.if.end5.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.end5.i_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %21 = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 5
  br label %for.body.i.i

for.cond.loopexit.i.i:                            ; preds = %for.cond5.i.i.for.cond.loopexit.i.i_crit_edge, %for.body.i.i.for.cond.loopexit.i.i_crit_edge
  %exitcond37.not.i.i = icmp eq i32 %add.i.i, %20
  br i1 %exitcond37.not.i.i, label %for.cond.loopexit.i.i.if.end5.i_crit_edge, label %for.cond.loopexit.i.i.for.body.i.i_crit_edge

for.cond.loopexit.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.cond.loopexit.i.i.if.end5.i_crit_edge:        ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

for.body.i.i:                                     ; preds = %for.cond.loopexit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %seg.035.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %for.cond.loopexit.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw i32 %seg.035.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %20)
  %cmp632.i.i = icmp ult i32 %add.i.i, %20
  br i1 %cmp632.i.i, label %for.body7.lr.ph.i.i, label %for.body.i.i.for.cond.loopexit.i.i_crit_edge

for.body.i.i.for.cond.loopexit.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i.i

for.body7.lr.ph.i.i:                              ; preds = %for.body.i.i
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %arrayidx.i.i = getelementptr %struct.iovec, ptr %23, i32 %seg.035.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  br label %for.body7.i.i

for.cond5.i.i:                                    ; preds = %for.body7.i.i
  %inc.i.i = add nuw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %20
  br i1 %exitcond.not.i.i, label %for.cond5.i.i.for.cond.loopexit.i.i_crit_edge, label %for.cond5.i.i.for.body7.i.i_crit_edge

for.cond5.i.i.for.body7.i.i_crit_edge:            ; preds = %for.cond5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7.i.i

for.cond5.i.i.for.cond.loopexit.i.i_crit_edge:    ; preds = %for.cond5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i.i

for.body7.i.i:                                    ; preds = %for.cond5.i.i.for.body7.i.i_crit_edge, %for.body7.lr.ph.i.i
  %i.033.i.i = phi i32 [ %add.i.i, %for.body7.lr.ph.i.i ], [ %inc.i.i, %for.cond5.i.i.for.body7.i.i_crit_edge ]
  %arrayidx8.i.i = getelementptr %struct.iovec, ptr %23, i32 %i.033.i.i
  %26 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx8.i.i, align 4
  %cmp10.i.i = icmp eq ptr %25, %27
  br i1 %cmp10.i.i, label %for.body7.i.i.lor.lhs.false_crit_edge, label %for.cond5.i.i

for.body7.i.i.lor.lhs.false_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

if.end5.i:                                        ; preds = %for.cond.loopexit.i.i.if.end5.i_crit_edge, %for.cond.preheader.i.i.if.end5.i_crit_edge, %if.end.i.i.if.end5.i_crit_edge
  %call6.i = tail call i32 @btrfs_inode_lock(ptr noundef %5, i32 noundef 1) #15
  %nofault.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 1
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  br label %again.i

again.i:                                          ; preds = %cleanup.i, %if.end5.i
  %prev_left.0.i = phi i32 [ 0, %if.end5.i ], [ %43, %cleanup.i ]
  %read.0.i = phi i32 [ 0, %if.end5.i ], [ %spec.select.i, %cleanup.i ]
  %28 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %33, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !165
  %34 = ptrtoint ptr %nofault.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %nofault.i, align 1
  %call7.i = tail call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %to, ptr noundef nonnull @btrfs_dio_iomap_ops, ptr noundef nonnull @btrfs_dio_ops, i32 noundef 4, i32 noundef %read.0.i) #15
  %35 = ptrtoint ptr %nofault.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %nofault.i, align 1
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !166
  %36 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i.i.i47.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i47.i to ptr
  %task.i.i48.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i48.i, align 8
  %pagefault_disabled.i.i49.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 213
  %40 = ptrtoint ptr %pagefault_disabled.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagefault_disabled.i.i49.i, align 8
  %dec.i.i.i = add i32 %41, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i49.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp sgt i32 %call7.i, 0
  %spec.select.i = select i1 %cmp.i, i32 %call7.i, i32 %read.0.i
  %42 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp12.not.i = icmp ne i32 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call7.i)
  %cmp13.i = icmp eq i32 %call7.i, -14
  %brmerge.i = or i1 %cmp13.i, %cmp.i
  %or.cond.i = select i1 %cmp12.not.i, i1 %brmerge.i, i1 false
  br i1 %or.cond.i, label %if.then15.i, label %again.i.btrfs_direct_read.exit_crit_edge

again.i.btrfs_direct_read.exit_crit_edge:         ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_direct_read.exit

if.then15.i:                                      ; preds = %again.i
  %cmp17.i = icmp eq i32 %43, %prev_left.0.i
  br i1 %cmp17.i, label %if.then15.i.btrfs_direct_read.exit_crit_edge, label %cleanup.i

if.then15.i.btrfs_direct_read.exit_crit_edge:     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_direct_read.exit

cleanup.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #17
  %call19.i = tail call i32 @fault_in_iov_iter_writeable(ptr noundef %to, i32 noundef %43) #15
  br label %again.i

btrfs_direct_read.exit:                           ; preds = %if.then15.i.btrfs_direct_read.exit_crit_edge, %again.i.btrfs_direct_read.exit_crit_edge
  %ret.1.i = phi i32 [ %call7.i, %again.i.btrfs_direct_read.exit_crit_edge ], [ %spec.select.i, %if.then15.i.btrfs_direct_read.exit_crit_edge ]
  tail call void @btrfs_inode_unlock(ptr noundef %5, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp22.i = icmp slt i32 %ret.1.i, 0
  %ret.1.spec.select.i = select i1 %cmp22.i, i32 %ret.1.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.spec.select.i)
  %cmp = icmp slt i32 %ret.1.spec.select.i, 0
  br i1 %cmp, label %btrfs_direct_read.exit.cleanup_crit_edge, label %btrfs_direct_read.exit.lor.lhs.false_crit_edge

btrfs_direct_read.exit.lor.lhs.false_crit_edge:   ; preds = %btrfs_direct_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

btrfs_direct_read.exit.cleanup_crit_edge:         ; preds = %btrfs_direct_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %btrfs_direct_read.exit.lor.lhs.false_crit_edge, %for.body7.i.i.lor.lhs.false_crit_edge, %if.end.i.i.i.lor.lhs.false_crit_edge, %if.end.i.lor.lhs.false_crit_edge, %if.then.lor.lhs.false_crit_edge
  %retval.0.i20 = phi i32 [ %ret.1.spec.select.i, %btrfs_direct_read.exit.lor.lhs.false_crit_edge ], [ 0, %if.then.lor.lhs.false_crit_edge ], [ 0, %if.end.i.lor.lhs.false_crit_edge ], [ 0, %if.end.i.i.i.lor.lhs.false_crit_edge ], [ 0, %for.body7.i.i.lor.lhs.false_crit_edge ]
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %44 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool2.not = icmp eq i32 %45, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %46 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ki_pos, align 8
  %48 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %f_inode.i, align 8
  %call5 = tail call fastcc i64 @i_size_read(ptr noundef %51)
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %call5)
  %cmp6.not = icmp slt i64 %47, %call5
  br i1 %cmp6.not, label %lor.lhs.false3.if.end8_crit_edge, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false3.if.end8_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end8:                                          ; preds = %lor.lhs.false3.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ret.0 = phi i32 [ %retval.0.i20, %lor.lhs.false3.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  %call9 = tail call i32 @filemap_read(ptr noundef %iocb, ptr noundef %to, i32 noundef %ret.0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %btrfs_direct_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %retval.0.i20, %lor.lhs.false3.cleanup_crit_edge ], [ %retval.0.i20, %lor.lhs.false.cleanup_crit_edge ], [ %ret.1.spec.select.i, %btrfs_direct_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_file_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -864
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %4 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ki_flags, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_info, align 8
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %9, i32 0, i32 149
  %10 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %fs_state, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge, !prof !123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = and i32 %5, 131080
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %.not = icmp eq i32 %12, 8
  br i1 %.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %sync_writers = getelementptr i8, ptr %3, i32 -352
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sync_writers, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %sync_writers, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sync_writers, ptr %sync_writers, i32 1, ptr elementtype(i32) %sync_writers) #15, !srcloc !121
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %14 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ki_flags, align 8
  %and18 = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end16
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %16 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iocb, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %and3.i = lshr i32 %15, 2
  %24 = and i32 %and3.i, 2
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %25 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ki_pos.i, align 8
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %27 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i.i, align 8
  %conv.i = zext i32 %28 to i64
  %add.i = add i64 %26, %conv.i
  %call6.i = tail call fastcc i64 @i_size_read(ptr noundef %19) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call6.i)
  %cmp.not.i = icmp sle i64 %add.i, %call6.i
  %or9.i = zext i1 %cmp.not.i to i32
  %ilock_flags.1.i = or i32 %24, %or9.i
  %call11236.i = tail call i32 @btrfs_inode_lock(ptr noundef %19, i32 noundef %ilock_flags.1.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11236.i)
  %cmp12237.i = icmp slt i32 %call11236.i, 0
  br i1 %cmp12237.i, label %if.then20.if.end23_crit_edge, label %if.then20.if.end15.i_crit_edge

if.then20.if.end15.i_crit_edge:                   ; preds = %if.then20
  br label %if.end15.i

if.then20.if.end23_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end15.i:                                       ; preds = %if.then35.i.if.end15.i_crit_edge, %if.then20.if.end15.i_crit_edge
  %ilock_flags.2238.i = phi i32 [ %24, %if.then35.i.if.end15.i_crit_edge ], [ %ilock_flags.1.i, %if.then20.if.end15.i_crit_edge ]
  %call16.i = tail call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 1
  br i1 %cmp17.i, label %if.then19.i, label %if.end20.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @btrfs_inode_unlock(ptr noundef %19, i32 noundef %ilock_flags.2238.i) #15
  br label %if.end23

if.end20.i:                                       ; preds = %if.end15.i
  %call21.i = tail call fastcc i32 @btrfs_write_check(ptr noundef %iocb, i32 noundef %call16.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.then24.i, label %if.end25.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @btrfs_inode_unlock(ptr noundef %19, i32 noundef %ilock_flags.2238.i) #15
  br label %out.thread.i

if.end25.i:                                       ; preds = %if.end20.i
  %29 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ki_pos.i, align 8
  %and27.i = and i32 %ilock_flags.2238.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.if.end37.i_crit_edge, label %land.lhs.true.i

if.end25.i.if.end37.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %if.end25.i
  %31 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count.i.i, align 8
  %conv30.i = zext i32 %32 to i64
  %add31.i = add i64 %30, %conv30.i
  %call32.i = tail call fastcc i64 @i_size_read(ptr noundef %19) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %add31.i, i64 %call32.i)
  %cmp33.i = icmp sgt i64 %add31.i, %call32.i
  br i1 %cmp33.i, label %if.then35.i, label %land.lhs.true.i.if.end37.i_crit_edge

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  tail call void @btrfs_inode_unlock(ptr noundef %19, i32 noundef %ilock_flags.2238.i) #15
  %call11.i = tail call i32 @btrfs_inode_lock(ptr noundef %19, i32 noundef %24) #15
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then35.i.if.end23_crit_edge, label %if.then35.i.if.end15.i_crit_edge

if.then35.i.if.end15.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.then35.i.if.end23_crit_edge:                   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end37.i:                                       ; preds = %land.lhs.true.i.if.end37.i_crit_edge, %if.end25.i.if.end37.i_crit_edge
  %sectorsize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %23, i32 0, i32 167
  %33 = ptrtoint ptr %sectorsize.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sectorsize.i.i, align 4
  %sub.i.i = add i32 %34, -1
  %conv.i.i = zext i32 %sub.i.i to i64
  %and.i.i = and i64 %30, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end37.i.if.then40.i_crit_edge

if.end37.i.if.then40.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40.i

if.end.i.i:                                       ; preds = %if.end37.i
  %call.i.i50 = tail call i32 @iov_iter_alignment(ptr noundef %from) #15
  %and1.i.i = and i32 %call.i.i50, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end41.i, label %if.end.i.i.if.then40.i_crit_edge

if.end.i.i.if.then40.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40.i

if.then40.i:                                      ; preds = %if.end.i.i.if.then40.i_crit_edge, %if.end37.i.if.then40.i_crit_edge
  tail call void @btrfs_inode_unlock(ptr noundef %19, i32 noundef %ilock_flags.2238.i) #15
  br label %buffered.i

if.end41.i:                                       ; preds = %if.end.i.i
  br i1 %tobool.not.i, label %if.end41.i.if.end46.i_crit_edge, label %if.then43.i

if.end41.i.if.end46.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46.i

if.then43.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ki_flags, align 8
  %and45.i = and i32 %36, -3
  store i32 %and45.i, ptr %ki_flags, align 8
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %if.end41.i.if.end46.i_crit_edge
  %nofault.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 1
  br label %again.i

again.i:                                          ; preds = %cleanup.i, %if.end46.i
  %written.0.i = phi i32 [ 0, %if.end46.i ], [ %spec.select197.i, %cleanup.i ]
  %prev_left.0.i = phi i32 [ 0, %if.end46.i ], [ %40, %cleanup.i ]
  %37 = ptrtoint ptr %nofault.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %nofault.i, align 1
  %call47.i = tail call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull @btrfs_dio_iomap_ops, ptr noundef nonnull @btrfs_dio_ops, i32 noundef 4, i32 noundef %written.0.i) #15
  %38 = ptrtoint ptr %nofault.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %nofault.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp49.i = icmp sgt i32 %call47.i, 0
  %spec.select197.i = select i1 %cmp49.i, i32 %call47.i, i32 %written.0.i
  %39 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp54.not.i = icmp ne i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call47.i)
  %cmp57.i = icmp eq i32 %call47.i, -14
  %brmerge.i = or i1 %cmp57.i, %cmp49.i
  %or.cond198.i = select i1 %cmp54.not.i, i1 %brmerge.i, i1 false
  br i1 %or.cond198.i, label %if.then61.i, label %again.i.if.end68.i_crit_edge

again.i.if.end68.i_crit_edge:                     ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68.i

if.then61.i:                                      ; preds = %again.i
  %cmp63.i = icmp eq i32 %40, %prev_left.0.i
  br i1 %cmp63.i, label %if.then61.i.if.end68.i_crit_edge, label %cleanup.i

if.then61.i.if.end68.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68.i

cleanup.i:                                        ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #17
  %call66.i = tail call i32 @fault_in_iov_iter_readable(ptr noundef %from, i32 noundef %40) #15
  br label %again.i

if.end68.i:                                       ; preds = %if.then61.i.if.end68.i_crit_edge, %again.i.if.end68.i_crit_edge
  %err.1.i = phi i32 [ %call47.i, %again.i.if.end68.i_crit_edge ], [ -15, %if.then61.i.if.end68.i_crit_edge ]
  tail call void @btrfs_inode_unlock(ptr noundef %19, i32 noundef %ilock_flags.2238.i) #15
  br i1 %tobool.not.i, label %if.end68.i.if.end73.i_crit_edge, label %if.then70.i

if.end68.i.if.end73.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ki_flags, align 8
  %or72.i = or i32 %42, 2
  store i32 %or72.i, ptr %ki_flags, align 8
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then70.i, %if.end68.i.if.end73.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %err.1.i)
  %cmp74.i = icmp sgt i32 %err.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %err.1.i)
  %cmp77.not.i = icmp eq i32 %err.1.i, -15
  %or.cond.i = or i1 %cmp74.i, %cmp77.not.i
  br i1 %or.cond.i, label %lor.lhs.false79.i, label %if.end73.i.out.thread.i_crit_edge

if.end73.i.out.thread.i_crit_edge:                ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread.i

lor.lhs.false79.i:                                ; preds = %if.end73.i
  %43 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool81.not.i = icmp eq i32 %44, 0
  br i1 %tobool81.not.i, label %lor.lhs.false79.i.out.i_crit_edge, label %lor.lhs.false79.i.buffered.i_crit_edge

lor.lhs.false79.i.buffered.i_crit_edge:           ; preds = %lor.lhs.false79.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %buffered.i

lor.lhs.false79.i.out.i_crit_edge:                ; preds = %lor.lhs.false79.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

buffered.i:                                       ; preds = %lor.lhs.false79.i.buffered.i_crit_edge, %if.then40.i
  %written.2.i = phi i32 [ 0, %if.then40.i ], [ %spec.select197.i, %lor.lhs.false79.i.buffered.i_crit_edge ]
  %45 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ki_pos.i, align 8
  %call85.i = tail call fastcc i32 @btrfs_buffered_write(ptr noundef %iocb, ptr noundef %from) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %cmp86.i = icmp slt i32 %call85.i, 0
  br i1 %cmp86.i, label %buffered.i.out.thread.i_crit_edge, label %if.end89.i

buffered.i.out.thread.i_crit_edge:                ; preds = %buffered.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread.i

if.end89.i:                                       ; preds = %buffered.i
  %conv90225.i = zext i32 %call85.i to i64
  %add91.i = add i64 %46, %conv90225.i
  %sub.i = add i64 %add91.i, -1
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 9
  %47 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_mapping.i.i, align 8
  %call.i203.i = tail call i32 @filemap_fdatawrite_range(ptr noundef %48, i64 noundef %46, i64 noundef %sub.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203.i)
  %tobool.not.i204.i = icmp eq i32 %call.i203.i, 0
  br i1 %tobool.not.i204.i, label %land.lhs.true.i.i, label %if.end89.i.out.i_crit_edge

if.end89.i.out.i_crit_edge:                       ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

land.lhs.true.i.i:                                ; preds = %if.end89.i
  %runtime_flags.i.i = getelementptr i8, ptr %19, i32 -356
  %49 = ptrtoint ptr %runtime_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %runtime_flags.i.i, align 4
  %51 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool3.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.end95.i_crit_edge, label %btrfs_fdatawrite_range.exit.i

land.lhs.true.i.i.if.end95.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95.i

btrfs_fdatawrite_range.exit.i:                    ; preds = %land.lhs.true.i.i
  %52 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_mapping.i.i, align 8
  %call5.i.i = tail call i32 @filemap_fdatawrite_range(ptr noundef %53, i64 noundef %46, i64 noundef %sub.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool93.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool93.not.i, label %btrfs_fdatawrite_range.exit.i.if.end95.i_crit_edge, label %btrfs_fdatawrite_range.exit.i.out.i_crit_edge

btrfs_fdatawrite_range.exit.i.out.i_crit_edge:    ; preds = %btrfs_fdatawrite_range.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

btrfs_fdatawrite_range.exit.i.if.end95.i_crit_edge: ; preds = %btrfs_fdatawrite_range.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95.i

if.end95.i:                                       ; preds = %btrfs_fdatawrite_range.exit.i.if.end95.i_crit_edge, %land.lhs.true.i.i.if.end95.i_crit_edge
  %54 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_mapping.i.i, align 8
  %call96.i = tail call i32 @filemap_fdatawait_range(ptr noundef %55, i64 noundef %46, i64 noundef %sub.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %out.thread221.i, label %if.end95.i.out.i_crit_edge

if.end95.i.out.i_crit_edge:                       ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

out.thread221.i:                                  ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #17
  %add100.i = add i32 %call85.i, %written.2.i
  %56 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add91.i, ptr %ki_pos.i, align 8
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 18
  %57 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %f_mapping.i, align 4
  %59 = lshr i64 %46, 12
  %conv104.i = trunc i64 %59 to i32
  %60 = lshr i64 %sub.i, 12
  %conv106.i = trunc i64 %60 to i32
  %call107.i = tail call i32 @invalidate_mapping_pages(ptr noundef %58, i32 noundef %conv104.i, i32 noundef %conv106.i) #15
  br label %if.end23

out.i:                                            ; preds = %if.end95.i.out.i_crit_edge, %btrfs_fdatawrite_range.exit.i.out.i_crit_edge, %if.end89.i.out.i_crit_edge, %lor.lhs.false79.i.out.i_crit_edge
  %written.3.i = phi i32 [ %written.2.i, %btrfs_fdatawrite_range.exit.i.out.i_crit_edge ], [ %written.2.i, %if.end95.i.out.i_crit_edge ], [ %spec.select197.i, %lor.lhs.false79.i.out.i_crit_edge ], [ %written.2.i, %if.end89.i.out.i_crit_edge ]
  %err.2.i = phi i32 [ %call5.i.i, %btrfs_fdatawrite_range.exit.i.out.i_crit_edge ], [ %call96.i, %if.end95.i.out.i_crit_edge ], [ %err.1.i, %lor.lhs.false79.i.out.i_crit_edge ], [ %call.i203.i, %if.end89.i.out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %cmp108.i = icmp slt i32 %err.2.i, 0
  br i1 %cmp108.i, label %out.i.out.thread.i_crit_edge, label %out.i.if.end23_crit_edge

out.i.if.end23_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

out.i.out.thread.i_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread.i

out.thread.i:                                     ; preds = %out.i.out.thread.i_crit_edge, %buffered.i.out.thread.i_crit_edge, %if.end73.i.out.thread.i_crit_edge, %if.then24.i
  %err.2220.i = phi i32 [ %err.2.i, %out.i.out.thread.i_crit_edge ], [ %call85.i, %buffered.i.out.thread.i_crit_edge ], [ %err.1.i, %if.end73.i.out.thread.i_crit_edge ], [ %call21.i, %if.then24.i ]
  br label %if.end23

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = tail call fastcc i32 @btrfs_buffered_write(ptr noundef %iocb, ptr noundef %from)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %out.thread.i, %out.i.if.end23_crit_edge, %out.thread221.i, %if.then35.i.if.end23_crit_edge, %if.then19.i, %if.then20.if.end23_crit_edge
  %num_written.0 = phi i32 [ %call22, %if.else ], [ %call16.i, %if.then19.i ], [ %err.2220.i, %out.thread.i ], [ %written.3.i, %out.i.if.end23_crit_edge ], [ %add100.i, %out.thread221.i ], [ %call11236.i, %if.then20.if.end23_crit_edge ], [ %call11.i, %if.then35.i.if.end23_crit_edge ]
  %lock.i = getelementptr i8, ptr %3, i32 -840
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #15
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 8
  %log_transid.i = getelementptr inbounds %struct.btrfs_root, ptr %62, i32 0, i32 20
  %63 = ptrtoint ptr %log_transid.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %log_transid.i, align 4
  %last_sub_trans.i = getelementptr i8, ptr %3, i32 -320
  %65 = ptrtoint ptr %last_sub_trans.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %last_sub_trans.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_written.0)
  %cmp = icmp sgt i32 %num_written.0, 0
  br i1 %cmp, label %if.then24, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then24:                                        ; preds = %if.end23
  %66 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ki_flags, align 8
  %and.i52 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.not.i53 = icmp eq i32 %and.i52, 0
  br i1 %tobool.not.i53, label %if.then24.if.end8.i_crit_edge, label %if.then.i

if.then24.if.end8.i_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then24
  %68 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iocb, align 8
  %ki_pos.i54 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %70 = ptrtoint ptr %ki_pos.i54 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %ki_pos.i54, align 8
  %conv.i5558 = zext i32 %num_written.0 to i64
  %sub.i56 = sub i64 %71, %conv.i5558
  %sub2.i = add i64 %71, -1
  %and4.i = lshr i32 %67, 2
  %and4.lobit.i = and i32 %and4.i, 1
  %72 = xor i32 %and4.lobit.i, 1
  %call.i = tail call i32 @vfs_fsync_range(ptr noundef %69, i64 noundef %sub.i56, i64 noundef %sub2.i, i32 noundef %72) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.if.end26_crit_edge

if.then.i.if.end26_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %if.then24.if.end8.i_crit_edge
  br label %if.end26

if.end26:                                         ; preds = %if.end8.i, %if.then.i.if.end26_crit_edge, %if.end23.if.end26_crit_edge
  %num_written.1 = phi i32 [ %num_written.0, %if.end23.if.end26_crit_edge ], [ %call.i, %if.then.i.if.end26_crit_edge ], [ %num_written.0, %if.end8.i ]
  br i1 %tobool.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %sync_writers29 = getelementptr i8, ptr %3, i32 -352
  %call.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sync_writers29, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %sync_writers29, i32 1, i32 3, i32 1) #15
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sync_writers29, ptr %sync_writers29, i32 1, ptr elementtype(i32) %sync_writers29) #15, !srcloc !132
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %74 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i57 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i57 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task, align 8
  %backing_dev_info = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 150
  %78 = ptrtoint ptr %backing_dev_info to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %backing_dev_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num_written.1, %if.end30 ], [ -30, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_file_mmap(ptr noundef %filp, ptr nocapture noundef writeonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a_ops, align 4
  %readpage = getelementptr inbounds %struct.address_space_operations, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %readpage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readpage, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_flags.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.file_accessed.exit_crit_edge

if.end.file_accessed.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %file_accessed.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %f_path.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #15
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i, %if.end.file_accessed.exit_crit_edge
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %8 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @btrfs_file_vm_ops, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %file_accessed.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %file_accessed.exit ], [ -8, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_file_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %or = or i32 %1, 1207959552
  store i32 %or, ptr %f_mode, align 8
  %call = tail call i32 @fsverity_file_open(ptr noundef %inode, ptr noundef %filp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @generic_file_open(ptr noundef %inode, ptr noundef %filp) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_fallocate(ptr nocapture noundef readonly %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #0 align 64 {
entry:
  %cached_state.i = alloca ptr, align 4
  %trans.i = alloca ptr, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  %now.i = alloca %struct.timespec64, align 8
  %cached_state = alloca ptr, align 4
  %data_reserved = alloca ptr, align 4
  %reserve_list = alloca %struct.list_head, align 4
  %alloc_hint = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cached_state) #15
  %2 = ptrtoint ptr %cached_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cached_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_reserved) #15
  %3 = ptrtoint ptr %data_reserved to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %data_reserved, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reserve_list) #15
  %4 = ptrtoint ptr %reserve_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %reserve_list, align 4, !annotation !146
  %5 = getelementptr inbounds %struct.list_head, ptr %reserve_list, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %alloc_hint) #15
  %7 = ptrtoint ptr %alloc_hint to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %alloc_hint, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -864
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %fs_info.i = getelementptr inbounds %struct.btrfs_root, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_info.i, align 8
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %11, i32 0, i32 167
  %12 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sectorsize.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %18 = getelementptr inbounds %struct.btrfs_fs_info, ptr %17, i32 0, i32 176
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %cmp.i.not = icmp eq i64 %20, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup202_crit_edge

entry.cleanup202_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup202

if.end:                                           ; preds = %entry
  %sub = add i32 %13, -1
  %conv = sext i32 %sub to i64
  %neg = xor i64 %conv, -1
  %and = and i64 %neg, %offset
  %add = add i64 %len, %offset
  %sub5 = add i64 %add, -1
  %or = or i64 %sub5, %conv
  %add8 = add i64 %or, 1
  %and9 = and i32 %mode, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.end11, label %if.end.cleanup202_crit_edge

if.end.cleanup202_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup202

if.end11:                                         ; preds = %if.end
  %and12 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cached_state.i) #15
  %21 = ptrtoint ptr %cached_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cached_state.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trans.i) #15
  %22 = ptrtoint ptr %trans.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %trans.i, align 4
  %call3.i = tail call i32 @btrfs_wait_ordered_range(ptr noundef %1, i64 noundef %offset, i64 noundef %len) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then14.btrfs_punch_hole.exit_crit_edge

if.then14.btrfs_punch_hole.exit_crit_edge:        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_punch_hole.exit

if.end.i:                                         ; preds = %if.then14
  %call4.i = tail call i32 @btrfs_inode_lock(ptr noundef %1, i32 noundef 4) #15
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %24, -1
  %sectorsize.i351 = getelementptr inbounds %struct.btrfs_fs_info, ptr %17, i32 0, i32 167
  %25 = ptrtoint ptr %sectorsize.i351 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sectorsize.i351, align 4
  %sub5.i = add i32 %26, -1
  %conv.i = zext i32 %sub5.i to i64
  %or.i = or i64 %sub.i, %conv.i
  %add.i = add i64 %or.i, 1
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %fs_info1.i.i = getelementptr inbounds %struct.btrfs_root, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %fs_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fs_info1.i.i, align 8
  %sectorsize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %30, i32 0, i32 167
  %31 = ptrtoint ptr %sectorsize.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sectorsize.i.i, align 4
  %sub.i.i = add i32 %32, -1
  %conv.i.i = zext i32 %sub.i.i to i64
  %neg.i.i = xor i64 %conv.i.i, -1
  %and.i.i = and i64 %neg.i.i, %offset
  %sub2.i.i = add i64 %len, -1
  %or.i.i = or i64 %sub2.i.i, %conv.i.i
  %add.i.i = add i64 %or.i.i, 1
  %call.i.i = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0, i64 noundef %and.i.i, i64 noundef %add.i.i) #15
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %find_first_non_hole.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i
  %block_start.i.i = getelementptr inbounds %struct.extent_map, ptr %call.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %block_start.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %block_start.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %34)
  %cmp.i.i = icmp eq i64 %34, -3
  br i1 %cmp.i.i, label %if.then9.i.i, label %if.end.i.i.find_first_non_hole.exit.thread.i_crit_edge

if.end.i.i.find_first_non_hole.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_first_non_hole.exit.thread.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %start10.i.i = getelementptr inbounds %struct.extent_map, ptr %call.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %start10.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %start10.i.i, align 8
  %len11.i.i = getelementptr inbounds %struct.extent_map, ptr %call.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %len11.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %len11.i.i, align 8
  %add12.i.i = add i64 %38, %36
  %39 = tail call i64 @llvm.usub.sat.i64(i64 %add, i64 %add12.i.i) #15
  br label %find_first_non_hole.exit.thread.i

find_first_non_hole.exit.thread.i:                ; preds = %if.then9.i.i, %if.end.i.i.find_first_non_hole.exit.thread.i_crit_edge
  %offset.addr.0.i = phi i64 [ %add12.i.i, %if.then9.i.i ], [ %offset, %if.end.i.i.find_first_non_hole.exit.thread.i_crit_edge ]
  %len.addr.0.i = phi i64 [ %39, %if.then9.i.i ], [ %len, %if.end.i.i.find_first_non_hole.exit.thread.i_crit_edge ]
  %ret.0.i.i = phi i32 [ 1, %if.then9.i.i ], [ 0, %if.end.i.i.find_first_non_hole.exit.thread.i_crit_edge ]
  tail call void @free_extent_map(ptr noundef %call.i.i) #15
  br label %if.end10.i

find_first_non_hole.exit.i:                       ; preds = %if.end.i
  %40 = ptrtoint ptr %call.i.i to i32
  %cmp.i352 = icmp slt ptr %call.i.i, null
  br i1 %cmp.i352, label %find_first_non_hole.exit.i.if.end155.i_crit_edge, label %find_first_non_hole.exit.i.if.end10.i_crit_edge

find_first_non_hole.exit.i.if.end10.i_crit_edge:  ; preds = %find_first_non_hole.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

find_first_non_hole.exit.i.if.end155.i_crit_edge: ; preds = %find_first_non_hole.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155.i

if.end10.i:                                       ; preds = %find_first_non_hole.exit.i.if.end10.i_crit_edge, %find_first_non_hole.exit.thread.i
  %retval.0.i346.i = phi i32 [ %ret.0.i.i, %find_first_non_hole.exit.thread.i ], [ 1, %find_first_non_hole.exit.i.if.end10.i_crit_edge ]
  %len.addr.1344.i = phi i64 [ %len.addr.0.i, %find_first_non_hole.exit.thread.i ], [ %len, %find_first_non_hole.exit.i.if.end10.i_crit_edge ]
  %offset.addr.1341.i = phi i64 [ %offset.addr.0.i, %find_first_non_hole.exit.thread.i ], [ %offset, %find_first_non_hole.exit.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i346.i)
  %tobool11.not.i = icmp ne i32 %retval.0.i346.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len.addr.1344.i)
  %tobool12.not.i = icmp eq i64 %len.addr.1344.i, 0
  %or.cond369.i = select i1 %tobool11.not.i, i1 %tobool12.not.i, i1 false
  br i1 %or.cond369.i, label %if.end10.i.if.end155.i_crit_edge, label %if.end14.i

if.end10.i.if.end155.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155.i

if.end14.i:                                       ; preds = %if.end10.i
  %sub15.i = add i64 %offset.addr.1341.i, -1
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_root, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fs_info.i.i, align 8
  %sectorsize.i241.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %44, i32 0, i32 167
  %45 = ptrtoint ptr %sectorsize.i241.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sectorsize.i241.i, align 4
  %sub18.i = add i32 %46, -1
  %conv19.i = zext i32 %sub18.i to i64
  %or20.i = or i64 %sub15.i, %conv19.i
  %add21.i = add i64 %or20.i, 1
  %add22.i = add i64 %offset.addr.1341.i, %len.addr.1344.i
  %neg.i = xor i64 %conv19.i, -1
  %and.i = and i64 %add22.i, %neg.i
  %sub27.i = add i64 %and.i, -1
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %17, i32 0, i32 168
  %47 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sectorsize_bits.i, align 8
  %sh_prom.i = zext i32 %48 to i64
  %shr.i353 = ashr i64 %offset.addr.1341.i, %sh_prom.i
  %sub29.i = add i64 %add22.i, -1
  %shr32.i = ashr i64 %sub29.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i353, i64 %shr32.i)
  %cmp33.i = icmp eq i64 %shr.i353, %shr32.i
  br i1 %cmp33.i, label %land.lhs.true37.i, label %if.end14.i.if.end49.i_crit_edge

if.end14.i.if.end49.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49.i

land.lhs.true37.i:                                ; preds = %if.end14.i
  %49 = ptrtoint ptr %sectorsize.i351 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sectorsize.i351, align 4
  %conv39.i = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %len.addr.1344.i, i64 %conv39.i)
  %cmp40.i = icmp slt i64 %len.addr.1344.i, %conv39.i
  br i1 %cmp40.i, label %if.then42.i, label %land.lhs.true37.i.if.end49.i_crit_edge

land.lhs.true37.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49.i

if.then42.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.1341.i, i64 %add.i)
  %cmp43.i = icmp ult i64 %offset.addr.1341.i, %add.i
  br i1 %cmp43.i, label %if.then45.i, label %if.then42.i.if.end155.i_crit_edge

if.then42.i.if.end155.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155.i

if.then45.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #17
  %call47.i = tail call i32 @btrfs_truncate_block(ptr noundef %add.ptr.i, i64 noundef %offset.addr.1341.i, i64 noundef %len.addr.1344.i, i32 noundef 0) #15
  br label %out_only_mutex.i

if.end49.i:                                       ; preds = %land.lhs.true37.i.if.end49.i_crit_edge, %if.end14.i.if.end49.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.1341.i, i64 %add.i)
  %cmp50.i = icmp ult i64 %offset.addr.1341.i, %add.i
  br i1 %cmp50.i, label %if.then52.i, label %if.end49.i.if.end58.i_crit_edge

if.end49.i.if.end58.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58.i

if.then52.i:                                      ; preds = %if.end49.i
  %call54.i = tail call i32 @btrfs_truncate_block(ptr noundef %add.ptr.i, i64 noundef %offset.addr.1341.i, i64 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.then52.i.if.end58.i_crit_edge, label %if.then56.i

if.then52.i.if.end58.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58.i

if.then56.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @btrfs_inode_unlock(ptr noundef %1, i32 noundef 4) #15
  br label %btrfs_punch_hole.exit

if.end58.i:                                       ; preds = %if.then52.i.if.end58.i_crit_edge, %if.end49.i.if.end58.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.1341.i, i64 %offset)
  %cmp59.i = icmp eq i64 %offset.addr.1341.i, %offset
  br i1 %cmp59.i, label %if.then61.i, label %if.end58.i.if.end75.i_crit_edge

if.end58.i.if.end75.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75.i

if.then61.i:                                      ; preds = %if.end58.i
  %sub63.i = sub i64 %add22.i, %add21.i
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 8
  %fs_info1.i248.i = getelementptr inbounds %struct.btrfs_root, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %fs_info1.i248.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fs_info1.i248.i, align 8
  %sectorsize.i249.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %54, i32 0, i32 167
  %55 = ptrtoint ptr %sectorsize.i249.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sectorsize.i249.i, align 4
  %sub.i250.i = add i32 %56, -1
  %conv.i251.i = zext i32 %sub.i250.i to i64
  %neg.i252.i = xor i64 %conv.i251.i, -1
  %and.i253.i = and i64 %add21.i, %neg.i252.i
  %sub2.i254.i = add i64 %sub63.i, -1
  %or.i255.i = or i64 %sub2.i254.i, %conv.i251.i
  %add.i256.i = add i64 %or.i255.i, 1
  %call.i257.i = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0, i64 noundef %and.i253.i, i64 noundef %add.i256.i) #15
  %cmp.i.i258.i = icmp ugt ptr %call.i257.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i258.i, label %find_first_non_hole.exit272.i, label %if.end.i262.i

if.end.i262.i:                                    ; preds = %if.then61.i
  %block_start.i260.i = getelementptr inbounds %struct.extent_map, ptr %call.i257.i, i32 0, i32 8
  %57 = ptrtoint ptr %block_start.i260.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %block_start.i260.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %58)
  %cmp.i261.i = icmp eq i64 %58, -3
  br i1 %cmp.i261.i, label %if.then9.i268.i, label %if.end.i262.i.find_first_non_hole.exit272.thread.i_crit_edge

if.end.i262.i.find_first_non_hole.exit272.thread.i_crit_edge: ; preds = %if.end.i262.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_first_non_hole.exit272.thread.i

if.then9.i268.i:                                  ; preds = %if.end.i262.i
  call void @__sanitizer_cov_trace_pc() #17
  %start10.i263.i = getelementptr inbounds %struct.extent_map, ptr %call.i257.i, i32 0, i32 1
  %59 = ptrtoint ptr %start10.i263.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %start10.i263.i, align 8
  %len11.i264.i = getelementptr inbounds %struct.extent_map, ptr %call.i257.i, i32 0, i32 2
  %61 = ptrtoint ptr %len11.i264.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %len11.i264.i, align 8
  %add12.i265.i = add i64 %62, %60
  %63 = tail call i64 @llvm.usub.sat.i64(i64 %add22.i, i64 %add12.i265.i) #15
  br label %find_first_non_hole.exit272.thread.i

find_first_non_hole.exit272.thread.i:             ; preds = %if.then9.i268.i, %if.end.i262.i.find_first_non_hole.exit272.thread.i_crit_edge
  %offset.addr.2.i = phi i64 [ %add12.i265.i, %if.then9.i268.i ], [ %add21.i, %if.end.i262.i.find_first_non_hole.exit272.thread.i_crit_edge ]
  %len.addr.2.i = phi i64 [ %63, %if.then9.i268.i ], [ %sub63.i, %if.end.i262.i.find_first_non_hole.exit272.thread.i_crit_edge ]
  %ret.0.i269.i = phi i32 [ 1, %if.then9.i268.i ], [ 0, %if.end.i262.i.find_first_non_hole.exit272.thread.i_crit_edge ]
  tail call void @free_extent_map(ptr noundef %call.i257.i) #15
  br label %if.end69.i

find_first_non_hole.exit272.i:                    ; preds = %if.then61.i
  %64 = ptrtoint ptr %call.i257.i to i32
  %cmp66.i = icmp slt ptr %call.i257.i, null
  br i1 %cmp66.i, label %find_first_non_hole.exit272.i.if.end155.i_crit_edge, label %find_first_non_hole.exit272.i.if.end69.i_crit_edge

find_first_non_hole.exit272.i.if.end69.i_crit_edge: ; preds = %find_first_non_hole.exit272.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69.i

find_first_non_hole.exit272.i.if.end155.i_crit_edge: ; preds = %find_first_non_hole.exit272.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155.i

if.end69.i:                                       ; preds = %find_first_non_hole.exit272.i.if.end69.i_crit_edge, %find_first_non_hole.exit272.thread.i
  %retval.0.i271353.i = phi i32 [ %ret.0.i269.i, %find_first_non_hole.exit272.thread.i ], [ 1, %find_first_non_hole.exit272.i.if.end69.i_crit_edge ]
  %len.addr.3352.i = phi i64 [ %len.addr.2.i, %find_first_non_hole.exit272.thread.i ], [ %sub63.i, %find_first_non_hole.exit272.i.if.end69.i_crit_edge ]
  %offset.addr.3351.i = phi i64 [ %offset.addr.2.i, %find_first_non_hole.exit272.thread.i ], [ %add21.i, %find_first_non_hole.exit272.i.if.end69.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i271353.i)
  %tobool70.not.i = icmp ne i32 %retval.0.i271353.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len.addr.3352.i)
  %tobool72.not.i = icmp eq i64 %len.addr.3352.i, 0
  %or.cond370.i = select i1 %tobool70.not.i, i1 %tobool72.not.i, i1 false
  br i1 %or.cond370.i, label %if.end69.i.out_only_mutex.i_crit_edge, label %if.end69.if.end75_crit_edge.i

if.end69.i.out_only_mutex.i_crit_edge:            ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_only_mutex.i

if.end69.if.end75_crit_edge.i:                    ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #17
  %.pre.i = add i64 %offset.addr.3351.i, %len.addr.3352.i
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.end69.if.end75_crit_edge.i, %if.end58.i.if.end75.i_crit_edge
  %add77.pre-phi.i = phi i64 [ %.pre.i, %if.end69.if.end75_crit_edge.i ], [ %add22.i, %if.end58.i.if.end75.i_crit_edge ]
  %lockstart.0.i = phi i64 [ %offset.addr.3351.i, %if.end69.if.end75_crit_edge.i ], [ %add21.i, %if.end58.i.if.end75.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add77.pre-phi.i, i64 %and.i)
  %tobool79.not.i = icmp eq i64 %add77.pre-phi.i, %and.i
  br i1 %tobool79.not.i, label %if.end75.i.if.end103.i_crit_edge, label %if.then80.i

if.end75.i.if.end103.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

if.then80.i:                                      ; preds = %if.end75.i
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 8
  %fs_info1.i274.i = getelementptr inbounds %struct.btrfs_root, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %fs_info1.i274.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fs_info1.i274.i, align 8
  %sectorsize.i275.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %68, i32 0, i32 167
  %69 = ptrtoint ptr %sectorsize.i275.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sectorsize.i275.i, align 4
  %sub.i276.i = add i32 %70, -1
  %conv.i277.i = zext i32 %sub.i276.i to i64
  %neg.i278.i = xor i64 %conv.i277.i, -1
  %and.i279.i = and i64 %and.i, %neg.i278.i
  %71 = xor i64 %and.i, -1
  %sub2.i280.i = add i64 %add77.pre-phi.i, %71
  %or.i281.i = or i64 %sub2.i280.i, %conv.i277.i
  %add.i282.i = add i64 %or.i281.i, 1
  %call.i283.i = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0, i64 noundef %and.i279.i, i64 noundef %add.i282.i) #15
  %cmp.i.i284.i = icmp ugt ptr %call.i283.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i284.i, label %find_first_non_hole.exit298.i, label %if.end.i288.i

if.end.i288.i:                                    ; preds = %if.then80.i
  %block_start.i286.i = getelementptr inbounds %struct.extent_map, ptr %call.i283.i, i32 0, i32 8
  %72 = ptrtoint ptr %block_start.i286.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %block_start.i286.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %73)
  %cmp.i287.i = icmp ne i64 %73, -3
  tail call void @free_extent_map(ptr noundef %call.i283.i) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %add77.pre-phi.i, i64 %add.i)
  %cmp92.i = icmp ult i64 %add77.pre-phi.i, %add.i
  %or.cond381 = select i1 %cmp.i287.i, i1 %cmp92.i, i1 false
  br i1 %or.cond381, label %if.then94.i, label %if.end.i288.i.if.end103.i_crit_edge

if.end.i288.i.if.end103.i_crit_edge:              ; preds = %if.end.i288.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

find_first_non_hole.exit298.i:                    ; preds = %if.then80.i
  %74 = ptrtoint ptr %call.i283.i to i32
  %cmp83.i = icmp slt ptr %call.i283.i, null
  br i1 %cmp83.i, label %find_first_non_hole.exit298.i.if.end155.i_crit_edge, label %find_first_non_hole.exit298.i.if.end103.i_crit_edge, !prof !126

find_first_non_hole.exit298.i.if.end103.i_crit_edge: ; preds = %find_first_non_hole.exit298.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

find_first_non_hole.exit298.i.if.end155.i_crit_edge: ; preds = %find_first_non_hole.exit298.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155.i

if.then94.i:                                      ; preds = %if.end.i288.i
  %call97.i = tail call i32 @btrfs_truncate_block(ptr noundef %add.ptr.i, i64 noundef %add77.pre-phi.i, i64 noundef 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %tobool98.not.i = icmp eq i32 %call97.i, 0
  br i1 %tobool98.not.i, label %if.then94.i.if.end103.i_crit_edge, label %if.then94.i.if.end155.i_crit_edge

if.then94.i.if.end155.i_crit_edge:                ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155.i

if.then94.i.if.end103.i_crit_edge:                ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then94.i.if.end103.i_crit_edge, %find_first_non_hole.exit298.i.if.end103.i_crit_edge, %if.end.i288.i.if.end103.i_crit_edge, %if.end75.i.if.end103.i_crit_edge
  %truncated_block.1.off0.i = phi i1 [ true, %if.then94.i.if.end103.i_crit_edge ], [ %cmp50.i, %if.end75.i.if.end103.i_crit_edge ], [ %cmp50.i, %find_first_non_hole.exit298.i.if.end103.i_crit_edge ], [ %cmp50.i, %if.end.i288.i.if.end103.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %sub27.i, i64 %lockstart.0.i)
  %cmp104.i = icmp ult i64 %sub27.i, %lockstart.0.i
  br i1 %cmp104.i, label %if.end103.i.out_only_mutex.i_crit_edge, label %if.end107.i

if.end103.i.out_only_mutex.i_crit_edge:           ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_only_mutex.i

if.end107.i:                                      ; preds = %if.end103.i
  %call108.i = call fastcc i32 @btrfs_punch_hole_lock_range(ptr noundef %1, i64 noundef %lockstart.0.i, i64 noundef %sub27.i, ptr noundef nonnull %cached_state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %if.end111.i, label %if.end107.i.if.end155.i_crit_edge

if.end107.i.if.end155.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155.i

if.end111.i:                                      ; preds = %if.end107.i
  %call112.i = call ptr @btrfs_alloc_path() #15
  %tobool113.not.i = icmp eq ptr %call112.i, null
  br i1 %tobool113.not.i, label %if.end111.i.out.i_crit_edge, label %if.end115.i

if.end111.i.out.i_crit_edge:                      ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end115.i:                                      ; preds = %if.end111.i
  %call117.i = call i32 @btrfs_replace_file_extents(ptr noundef %add.ptr.i, ptr noundef nonnull %call112.i, i64 noundef %lockstart.0.i, i64 noundef %sub27.i, ptr noundef null, ptr noundef nonnull %trans.i) #15
  call void @btrfs_free_path(ptr noundef nonnull %call112.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.i)
  %tobool118.not.i = icmp eq i32 %call117.i, 0
  br i1 %tobool118.not.i, label %if.end120.i, label %if.end115.i.out.i_crit_edge

if.end115.i.out.i_crit_edge:                      ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end120.i:                                      ; preds = %if.end115.i
  %75 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %trans.i, align 4
  %cmp121.not.i = icmp eq ptr %76, null
  br i1 %cmp121.not.i, label %cond.false.i, label %cond.end.i, !prof !126

cond.false.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str, i32 noundef 3048) #21
  unreachable

cond.end.i:                                       ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @inode_inc_iversion(ptr noundef %1) #15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %1) #15
  %77 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #15
  %78 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %call130.i = call i32 @btrfs_update_inode(ptr noundef nonnull %76, ptr noundef %9, ptr noundef %add.ptr.i) #15
  %call131.i = call i32 @btrfs_end_transaction(ptr noundef nonnull %76) #15
  call void @btrfs_btree_balance_dirty(ptr noundef %17) #15
  br label %out.i

out.i:                                            ; preds = %cond.end.i, %if.end115.i.out.i_crit_edge, %if.end111.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call117.i, %if.end115.i.out.i_crit_edge ], [ %call130.i, %cond.end.i ], [ -12, %if.end111.i.out.i_crit_edge ]
  %updated_inode.0.off0.i = phi i1 [ false, %if.end115.i.out.i_crit_edge ], [ true, %cond.end.i ], [ false, %if.end111.i.out.i_crit_edge ]
  %io_tree.i = getelementptr i8, ptr %1, i32 -736
  %call.i303.i = call i32 @__clear_extent_bit(ptr noundef %io_tree.i, i64 noundef %lockstart.0.i, i64 noundef %sub27.i, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %cached_state.i, i32 noundef 3136, ptr noundef null) #15
  br label %out_only_mutex.i

out_only_mutex.i:                                 ; preds = %out.i, %if.end103.i.out_only_mutex.i_crit_edge, %if.end69.i.out_only_mutex.i_crit_edge, %if.then45.i
  %ret.1.i = phi i32 [ %call47.i, %if.then45.i ], [ %ret.0.i, %out.i ], [ 0, %if.end103.i.out_only_mutex.i_crit_edge ], [ 0, %if.end69.i.out_only_mutex.i_crit_edge ]
  %truncated_block.2.off0.i = phi i1 [ true, %if.then45.i ], [ %truncated_block.1.off0.i, %out.i ], [ %truncated_block.1.off0.i, %if.end103.i.out_only_mutex.i_crit_edge ], [ %cmp50.i, %if.end69.i.out_only_mutex.i_crit_edge ]
  %updated_inode.1.off0.i = phi i1 [ false, %if.then45.i ], [ %updated_inode.0.off0.i, %out.i ], [ false, %if.end103.i.out_only_mutex.i_crit_edge ], [ false, %if.end69.i.out_only_mutex.i_crit_edge ]
  %not.updated_inode.1.off0.i = xor i1 %updated_inode.1.off0.i, true
  %brmerge.not.i = select i1 %not.updated_inode.1.off0.i, i1 %truncated_block.2.off0.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool139.not.i = icmp eq i32 %ret.1.i, 0
  %or.cond.i = select i1 %brmerge.not.i, i1 %tobool139.not.i, i1 false
  br i1 %or.cond.i, label %if.then140.i, label %out_only_mutex.i.if.end155.i_crit_edge

out_only_mutex.i.if.end155.i_crit_edge:           ; preds = %out_only_mutex.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155.i

if.then140.i:                                     ; preds = %out_only_mutex.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #15
  %79 = call ptr @memset(ptr %now.i, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %now.i, ptr noundef %1) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !167
  %i_version.i.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #15
  %call.i.i1.i.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i.i) #15
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %if.then140.i
  %cur.0.i.i.i = phi i64 [ %call.i.i1.i.i.i, %if.then140.i ], [ %call.i.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %80 = add i64 %cur.0.i.i.i, 2
  %add.i.i.i = and i64 %80, -2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #15
  %call.i.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i.i, i64 noundef %cur.0.i.i.i, i64 noundef %add.i.i.i) #15
  %cmp.i.i304.i = icmp eq i64 %call.i.i.i.i, %cur.0.i.i.i
  br i1 %cmp.i.i304.i, label %inode_inc_iversion.exit.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge, !prof !123

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.i

inode_inc_iversion.exit.i:                        ; preds = %for.cond.i.i.i
  %i_mtime141.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %81 = call ptr @memcpy(ptr %i_mtime141.i, ptr %now.i, i32 16)
  %i_ctime142.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %82 = call ptr @memcpy(ptr %i_ctime142.i, ptr %now.i, i32 16)
  %call143.i = call ptr @btrfs_start_transaction(ptr noundef %9, i32 noundef 1) #15
  %83 = ptrtoint ptr %trans.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call143.i, ptr %trans.i, align 4
  %cmp.i305.i = icmp ugt ptr %call143.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i305.i, label %if.then145.i, label %if.else147.i

if.then145.i:                                     ; preds = %inode_inc_iversion.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %84 = ptrtoint ptr %call143.i to i32
  br label %if.end154.i

if.else147.i:                                     ; preds = %inode_inc_iversion.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call149.i = call i32 @btrfs_update_inode(ptr noundef %call143.i, ptr noundef %9, ptr noundef %add.ptr.i) #15
  %call150.i = call i32 @btrfs_end_transaction(ptr noundef %call143.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %tobool151.not.i = icmp eq i32 %call149.i, 0
  %spec.select.i = select i1 %tobool151.not.i, i32 %call150.i, i32 %call149.i
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.else147.i, %if.then145.i
  %ret.3.i = phi i32 [ %84, %if.then145.i ], [ %spec.select.i, %if.else147.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #15
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.end154.i, %out_only_mutex.i.if.end155.i_crit_edge, %if.end107.i.if.end155.i_crit_edge, %if.then94.i.if.end155.i_crit_edge, %find_first_non_hole.exit298.i.if.end155.i_crit_edge, %find_first_non_hole.exit272.i.if.end155.i_crit_edge, %if.then42.i.if.end155.i_crit_edge, %if.end10.i.if.end155.i_crit_edge, %find_first_non_hole.exit.i.if.end155.i_crit_edge
  %ret.4.i = phi i32 [ %ret.1.i, %out_only_mutex.i.if.end155.i_crit_edge ], [ %ret.3.i, %if.end154.i ], [ 0, %if.then42.i.if.end155.i_crit_edge ], [ %call97.i, %if.then94.i.if.end155.i_crit_edge ], [ %call108.i, %if.end107.i.if.end155.i_crit_edge ], [ %74, %find_first_non_hole.exit298.i.if.end155.i_crit_edge ], [ %64, %find_first_non_hole.exit272.i.if.end155.i_crit_edge ], [ %40, %find_first_non_hole.exit.i.if.end155.i_crit_edge ], [ 0, %if.end10.i.if.end155.i_crit_edge ]
  call void @btrfs_inode_unlock(ptr noundef %1, i32 noundef 4) #15
  br label %btrfs_punch_hole.exit

btrfs_punch_hole.exit:                            ; preds = %if.end155.i, %if.then56.i, %if.then14.btrfs_punch_hole.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.4.i, %if.end155.i ], [ %call54.i, %if.then56.i ], [ %call3.i, %if.then14.btrfs_punch_hole.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trans.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state.i) #15
  br label %cleanup202

if.end16:                                         ; preds = %if.end11
  %and17 = and i32 %mode, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then19:                                        ; preds = %if.end16
  %sub21 = sub i64 %add8, %and
  %call22 = tail call i32 @btrfs_alloc_data_chunk_ondemand(ptr noundef %add.ptr.i, i64 noundef %sub21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.then19.cleanup202_crit_edge, label %if.then19.if.end26_crit_edge

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then19.cleanup202_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup202

if.end26:                                         ; preds = %if.then19.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %call27 = tail call i32 @btrfs_inode_lock(ptr noundef %1, i32 noundef 4) #15
  %and28 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.end26.if.end39_crit_edge

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end26
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %85 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %86)
  %cmp31 = icmp sgt i64 %add, %86
  br i1 %cmp31, label %if.then33, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then33:                                        ; preds = %land.lhs.true
  %call35 = tail call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %add) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then33.if.end39_crit_edge, label %if.then33.out_crit_edge

if.then33.out_crit_edge:                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.end39:                                         ; preds = %if.then33.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %if.end26.if.end39_crit_edge
  %i_size40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %87 = ptrtoint ptr %i_size40 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %i_size40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %88)
  %cmp41 = icmp ugt i64 %and, %88
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end39
  %call45 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %call46 = tail call i32 @btrfs_cont_expand(ptr noundef %add.ptr.i, i64 noundef %call45, i64 noundef %and) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then43.if.end62_crit_edge, label %if.then43.out_crit_edge

if.then43.out_crit_edge:                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then43.if.end62_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %88)
  %cmp52 = icmp sgt i64 %add, %88
  br i1 %cmp52, label %if.then54, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then54:                                        ; preds = %if.else
  %call57 = tail call i32 @btrfs_truncate_block(ptr noundef %add.ptr.i, i64 noundef %88, i64 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then54.if.end62_crit_edge, label %if.then54.out_crit_edge

if.then54.out_crit_edge:                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then54.if.end62_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.end62:                                         ; preds = %if.then54.if.end62_crit_edge, %if.else.if.end62_crit_edge, %if.then43.if.end62_crit_edge
  %sub63 = sub i64 %add8, %and
  %call64 = tail call i32 @btrfs_wait_ordered_range(ptr noundef %1, i64 noundef %and, i64 noundef %sub63) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.out_crit_edge

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end67:                                         ; preds = %if.end62
  br i1 %tobool18.not, label %while.cond.preheader, label %if.then70

while.cond.preheader:                             ; preds = %if.end67
  %io_tree = getelementptr i8, ptr %1, i32 -736
  br label %while.cond

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  %call71 = tail call fastcc i32 @btrfs_zero_range(ptr noundef %1, i64 noundef %offset, i64 noundef %len, i32 noundef %mode)
  tail call void @btrfs_inode_unlock(ptr noundef %1, i32 noundef 4) #15
  br label %cleanup202

while.cond:                                       ; preds = %if.then87.while.cond_crit_edge, %while.cond.preheader
  %call75 = call i32 @lock_extent_bits(ptr noundef %io_tree, i64 noundef %and, i64 noundef %or, ptr noundef nonnull %cached_state) #15
  %call77 = call ptr @btrfs_lookup_first_ordered_extent(ptr noundef %add.ptr.i, i64 noundef %or) #15
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %while.cond.while.end_crit_edge, label %land.lhs.true79

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.lhs.true79:                                  ; preds = %while.cond
  %89 = ptrtoint ptr %call77 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %call77, align 8
  %num_bytes = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call77, i32 0, i32 2
  %91 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %num_bytes, align 8
  %add80 = add i64 %92, %90
  call void @__sanitizer_cov_trace_cmp8(i64 %add80, i64 %and)
  %cmp81 = icmp ugt i64 %add80, %and
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %add8)
  %cmp85 = icmp ult i64 %90, %add8
  %or.cond = select i1 %cmp81, i1 %cmp85, i1 false
  call void @btrfs_put_ordered_extent(ptr noundef nonnull %call77) #15
  br i1 %or.cond, label %if.then87, label %land.lhs.true79.while.end_crit_edge

land.lhs.true79.while.end_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.then87:                                        ; preds = %land.lhs.true79
  %call.i = call i32 @__clear_extent_bit(ptr noundef %io_tree, i64 noundef %and, i64 noundef %or, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %cached_state, i32 noundef 3136, ptr noundef null) #15
  %call92 = call i32 @btrfs_wait_ordered_range(ptr noundef %1, i64 noundef %and, i64 noundef %sub63) #15
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then87.while.cond_crit_edge, label %if.then87.out_crit_edge

if.then87.out_crit_edge:                          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then87.while.cond_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

while.end:                                        ; preds = %land.lhs.true79.while.end_crit_edge, %while.cond.while.end_crit_edge
  %93 = ptrtoint ptr %reserve_list to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %reserve_list, ptr %reserve_list, align 4
  %94 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %reserve_list, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %add8, i64 %and)
  %cmp102401 = icmp ugt i64 %add8, %and
  br i1 %cmp102401, label %while.body104.lr.ph, label %while.end.while.end158_crit_edge

while.end.while.end158_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end158

while.body104.lr.ph:                              ; preds = %while.end
  %conv125 = sext i32 %13 to i64
  %sub126 = add nsw i64 %conv125, -1
  %neg130 = sub nsw i64 0, %conv125
  %sub106463 = sub i64 %add8, %and
  %call107464 = call ptr @btrfs_get_extent(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0, i64 noundef %and, i64 noundef %sub106463) #15
  %cmp.i361465 = icmp ugt ptr %call107464, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i361465, label %while.body104.lr.ph.if.then109_crit_edge, label %while.body104.lr.ph.if.end111_crit_edge

while.body104.lr.ph.if.end111_crit_edge:          ; preds = %while.body104.lr.ph
  br label %if.end111

while.body104.lr.ph.if.then109_crit_edge:         ; preds = %while.body104.lr.ph
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then109

while.body104:                                    ; preds = %if.end157
  %sub106 = sub i64 %add8, %and131
  %call107 = call ptr @btrfs_get_extent(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0, i64 noundef %and131, i64 noundef %sub106) #15
  %cmp.i361 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i361, label %if.then109.loopexit, label %while.body104.if.end111_crit_edge

while.body104.if.end111_crit_edge:                ; preds = %while.body104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end111

if.then109.loopexit:                              ; preds = %while.body104
  call void @__sanitizer_cov_trace_pc() #17
  %95 = call i64 @llvm.umin.i64(i64 %101, i64 %add)
  br label %if.then109

if.then109:                                       ; preds = %if.then109.loopexit, %while.body104.lr.ph.if.then109_crit_edge
  %cur_offset.0404.lcssa = phi i64 [ %and, %while.body104.lr.ph.if.then109_crit_edge ], [ %and131, %if.then109.loopexit ]
  %actual_end.0402.lcssa = phi i64 [ 0, %while.body104.lr.ph.if.then109_crit_edge ], [ %95, %if.then109.loopexit ]
  %call107.lcssa = phi ptr [ %call107464, %while.body104.lr.ph.if.then109_crit_edge ], [ %call107, %if.then109.loopexit ]
  %96 = ptrtoint ptr %call107.lcssa to i32
  br label %while.end158

if.end111:                                        ; preds = %while.body104.if.end111_crit_edge, %while.body104.lr.ph.if.end111_crit_edge
  %call107469 = phi ptr [ %call107, %while.body104.if.end111_crit_edge ], [ %call107464, %while.body104.lr.ph.if.end111_crit_edge ]
  %ret.2403468 = phi i32 [ %ret.3, %while.body104.if.end111_crit_edge ], [ 0, %while.body104.lr.ph.if.end111_crit_edge ]
  %cur_offset.0404466 = phi i64 [ %and131, %while.body104.if.end111_crit_edge ], [ %and, %while.body104.lr.ph.if.end111_crit_edge ]
  %start.i = getelementptr inbounds %struct.extent_map, ptr %call107469, i32 0, i32 1
  %97 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %start.i, align 8
  %len.i = getelementptr inbounds %struct.extent_map, ptr %call107469, i32 0, i32 2
  %99 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %len.i, align 8
  %101 = call i64 @llvm.uadd.sat.i64(i64 %98, i64 %100) #15
  %102 = call i64 @llvm.umin.i64(i64 %101, i64 %add8)
  %add127 = add i64 %sub126, %102
  %and131 = and i64 %add127, %neg130
  %block_start = getelementptr inbounds %struct.extent_map, ptr %call107469, i32 0, i32 8
  %103 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %block_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %104)
  %cmp132 = icmp eq i64 %104, -3
  br i1 %cmp132, label %if.end111.if.then140_crit_edge, label %lor.lhs.false

if.end111.if.then140_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then140

lor.lhs.false:                                    ; preds = %if.end111
  %105 = ptrtoint ptr %i_size40 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %i_size40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %cur_offset.0404466, i64 %106)
  %cmp135.not = icmp ult i64 %cur_offset.0404466, %106
  br i1 %cmp135.not, label %lor.lhs.false.if.else154_crit_edge, label %land.lhs.true137

lor.lhs.false.if.else154_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else154

land.lhs.true137:                                 ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.extent_map, ptr %call107469, i32 0, i32 11
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %flags, align 4
  %109 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool139.not = icmp eq i32 %109, 0
  br i1 %tobool139.not, label %land.lhs.true137.if.then140_crit_edge, label %land.lhs.true137.if.else154_crit_edge

land.lhs.true137.if.else154_crit_edge:            ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else154

land.lhs.true137.if.then140_crit_edge:            ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then140

if.then140:                                       ; preds = %land.lhs.true137.if.then140_crit_edge, %if.end111.if.then140_crit_edge
  %sub141 = sub i64 %and131, %cur_offset.0404466
  %call142 = call fastcc i32 @add_falloc_range(ptr noundef nonnull %reserve_list, i64 noundef %cur_offset.0404466, i64 noundef %sub141)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #17
  %110 = call i64 @llvm.umin.i64(i64 %101, i64 %add)
  call void @free_extent_map(ptr noundef %call107469) #15
  br label %while.end158

if.end146:                                        ; preds = %if.then140
  %call149 = call i32 @btrfs_qgroup_reserve_data(ptr noundef %add.ptr.i, ptr noundef nonnull %data_reserved, i64 noundef %cur_offset.0404466, i64 noundef %sub141) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.end146.if.end157_crit_edge

if.end146.if.end157_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

if.then152:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #17
  %111 = call i64 @llvm.umin.i64(i64 %101, i64 %add)
  call void @free_extent_map(ptr noundef %call107469) #15
  br label %while.end158

if.else154:                                       ; preds = %land.lhs.true137.if.else154_crit_edge, %lor.lhs.false.if.else154_crit_edge
  %112 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data_reserved, align 4
  %sub156 = sub i64 %and131, %cur_offset.0404466
  call void @btrfs_free_reserved_data_space(ptr noundef %add.ptr.i, ptr noundef %113, i64 noundef %cur_offset.0404466, i64 noundef %sub156) #15
  br label %if.end157

if.end157:                                        ; preds = %if.else154, %if.end146.if.end157_crit_edge
  %ret.3 = phi i32 [ %call149, %if.end146.if.end157_crit_edge ], [ %ret.2403468, %if.else154 ]
  call void @free_extent_map(ptr noundef %call107469) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %add8, i64 %and131)
  %cmp102 = icmp ugt i64 %add8, %and131
  br i1 %cmp102, label %while.body104, label %while.end158.loopexit

while.end158.loopexit:                            ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #17
  %114 = call i64 @llvm.umin.i64(i64 %101, i64 %add)
  br label %while.end158

while.end158:                                     ; preds = %while.end158.loopexit, %if.then152, %if.then145, %if.then109, %while.end.while.end158_crit_edge
  %actual_end.1 = phi i64 [ %actual_end.0402.lcssa, %if.then109 ], [ %110, %if.then145 ], [ %111, %if.then152 ], [ 0, %while.end.while.end158_crit_edge ], [ %114, %while.end158.loopexit ]
  %ret.4 = phi i32 [ %96, %if.then109 ], [ %call142, %if.then145 ], [ %call149, %if.then152 ], [ 0, %while.end.while.end158_crit_edge ], [ %ret.3, %while.end158.loopexit ]
  %cur_offset.1 = phi i64 [ %cur_offset.0404.lcssa, %if.then109 ], [ %cur_offset.0404466, %if.then145 ], [ %and131, %if.then152 ], [ %and, %while.end.while.end158_crit_edge ], [ %and131, %while.end158.loopexit ]
  %115 = ptrtoint ptr %reserve_list to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reserve_list, align 4
  %cmp165.not409 = icmp eq ptr %116, %reserve_list
  br i1 %cmp165.not409, label %while.end158.for.end_crit_edge, label %for.body.lr.ph

while.end158.for.end_crit_edge:                   ; preds = %while.end158
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end158
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %range.0411 = phi ptr [ %116, %for.body.lr.ph ], [ %tmp.0413, %list_del.exit.for.body_crit_edge ]
  %ret.5410 = phi i32 [ %ret.4, %for.body.lr.ph ], [ %ret.6, %list_del.exit.for.body_crit_edge ]
  %117 = ptrtoint ptr %range.0411 to i32
  call void @__asan_load4_noabort(i32 %117)
  %tmp.0413 = load ptr, ptr %range.0411, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5410)
  %tobool167.not = icmp eq i32 %ret.5410, 0
  br i1 %tobool167.not, label %if.then168, label %if.else174

if.then168:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %start = getelementptr inbounds %struct.falloc_range, ptr %range.0411, i32 0, i32 1
  %118 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %start, align 8
  %len169 = getelementptr inbounds %struct.falloc_range, ptr %range.0411, i32 0, i32 2
  %120 = ptrtoint ptr %len169 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %len169, align 8
  %122 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %i_blkbits.i, align 2
  %conv.i366 = zext i8 %123 to i32
  %shl.i = shl nuw i32 1, %conv.i366
  %conv171 = zext i32 %shl.i to i64
  %call173 = call i32 @btrfs_prealloc_file_range(ptr noundef %1, i32 noundef %mode, i64 noundef %119, i64 noundef %121, i64 noundef %conv171, i64 noundef %add, ptr noundef nonnull %alloc_hint) #15
  br label %if.end178

if.else174:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data_reserved, align 4
  %start176 = getelementptr inbounds %struct.falloc_range, ptr %range.0411, i32 0, i32 1
  %126 = ptrtoint ptr %start176 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %start176, align 8
  %len177 = getelementptr inbounds %struct.falloc_range, ptr %range.0411, i32 0, i32 2
  %128 = ptrtoint ptr %len177 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %len177, align 8
  call void @btrfs_free_reserved_data_space(ptr noundef %add.ptr.i, ptr noundef %125, i64 noundef %127, i64 noundef %129) #15
  br label %if.end178

if.end178:                                        ; preds = %if.else174, %if.then168
  %ret.6 = phi i32 [ %ret.5410, %if.else174 ], [ %call173, %if.then168 ]
  %call.i.i368 = call zeroext i1 @__list_del_entry_valid(ptr noundef %range.0411) #15
  br i1 %call.i.i368, label %if.end.i.i369, label %if.end178.list_del.exit_crit_edge

if.end178.list_del.exit_crit_edge:                ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i369:                                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %range.0411, i32 0, i32 1
  %130 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i.i, align 4
  %132 = ptrtoint ptr %range.0411 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %range.0411, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev1.i.i.i, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %133, ptr %131, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i369, %if.end178.list_del.exit_crit_edge
  %136 = ptrtoint ptr %range.0411 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr inttoptr (i32 256 to ptr), ptr %range.0411, align 4
  %prev.i370 = getelementptr inbounds %struct.list_head, ptr %range.0411, i32 0, i32 1
  %137 = ptrtoint ptr %prev.i370 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i370, align 4
  call void @kfree(ptr noundef %range.0411) #15
  %cmp165.not = icmp eq ptr %tmp.0413, %reserve_list
  br i1 %cmp165.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %while.end158.for.end_crit_edge
  %ret.5.lcssa = phi i32 [ %ret.4, %while.end158.for.end_crit_edge ], [ %ret.6, %list_del.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5.lcssa)
  %cmp185 = icmp slt i32 %ret.5.lcssa, 0
  br i1 %cmp185, label %for.end.out_unlock_crit_edge, label %if.end188

for.end.out_unlock_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end188:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %call189 = call fastcc i32 @btrfs_fallocate_update_isize(ptr noundef %1, i64 noundef %actual_end.1, i32 noundef %mode)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end188, %for.end.out_unlock_crit_edge
  %ret.7 = phi i32 [ %ret.5.lcssa, %for.end.out_unlock_crit_edge ], [ %call189, %if.end188 ]
  %call.i372 = call i32 @__clear_extent_bit(ptr noundef %io_tree, i64 noundef %and, i64 noundef %or, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %cached_state, i32 noundef 3136, ptr noundef null) #15
  br label %out

out:                                              ; preds = %out_unlock, %if.then87.out_crit_edge, %if.end62.out_crit_edge, %if.then54.out_crit_edge, %if.then43.out_crit_edge, %if.then33.out_crit_edge
  %ret.8 = phi i32 [ %call46, %if.then43.out_crit_edge ], [ %call64, %if.end62.out_crit_edge ], [ %ret.7, %out_unlock ], [ %call57, %if.then54.out_crit_edge ], [ %call35, %if.then33.out_crit_edge ], [ %call92, %if.then87.out_crit_edge ]
  %cur_offset.2 = phi i64 [ %and, %if.then43.out_crit_edge ], [ %and, %if.end62.out_crit_edge ], [ %cur_offset.1, %out_unlock ], [ %and, %if.then54.out_crit_edge ], [ %and, %if.then33.out_crit_edge ], [ %and, %if.then87.out_crit_edge ]
  call void @btrfs_inode_unlock(ptr noundef %1, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.8)
  %cmp193.not = icmp ne i32 %ret.8, 0
  %138 = and i1 %tobool18.not, %cmp193.not
  br i1 %138, label %if.then198, label %out.if.end201_crit_edge

out.if.end201_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

if.then198:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %139 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data_reserved, align 4
  %sub200 = sub i64 %add8, %cur_offset.2
  call void @btrfs_free_reserved_data_space(ptr noundef %add.ptr.i, ptr noundef %140, i64 noundef %cur_offset.2, i64 noundef %sub200) #15
  br label %if.end201

if.end201:                                        ; preds = %if.then198, %out.if.end201_crit_edge
  %141 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data_reserved, align 4
  %tobool.not.i374 = icmp eq ptr %142, null
  br i1 %tobool.not.i374, label %if.end201.cleanup202_crit_edge, label %extent_changeset_release.exit.i

if.end201.cleanup202_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup202

extent_changeset_release.exit.i:                  ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #17
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %142, align 4
  %range_changed.i.i = getelementptr inbounds %struct.extent_changeset, ptr %142, i32 0, i32 1
  call void @ulist_release(ptr noundef %range_changed.i.i) #15
  call void @kfree(ptr noundef nonnull %142) #15
  br label %cleanup202

cleanup202:                                       ; preds = %extent_changeset_release.exit.i, %if.end201.cleanup202_crit_edge, %if.then70, %if.then19.cleanup202_crit_edge, %btrfs_punch_hole.exit, %if.end.cleanup202_crit_edge, %entry.cleanup202_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %btrfs_punch_hole.exit ], [ %call71, %if.then70 ], [ -95, %entry.cleanup202_crit_edge ], [ -95, %if.end.cleanup202_crit_edge ], [ %call22, %if.then19.cleanup202_crit_edge ], [ %ret.8, %if.end201.cleanup202_crit_edge ], [ %ret.8, %extent_changeset_release.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %alloc_hint) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reserve_list) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_reserved) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_remap_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_auto_defrag_exit() local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @btrfs_inode_defrag_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_auto_defrag_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.13, i32 noundef 48, i32 noundef 0, i32 noundef 1048576, ptr noundef null) #15
  store ptr %call, ptr @btrfs_inode_defrag_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_fdatawrite_range(ptr noundef %inode, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %call = tail call i32 @filemap_fdatawrite_range(ptr noundef %1, i64 noundef %start, i64 noundef %end) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %runtime_flags = getelementptr i8, ptr %inode, i32 -356
  %2 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %runtime_flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping, align 8
  %call5 = tail call i32 @filemap_fdatawrite_range(ptr noundef %6, i64 noundef %start, i64 noundef %end) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call5, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_fs_root(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_iget(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_defrag_file(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_get_8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @btrfs_get_16(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_drew_try_write_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_lock_extent(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lookup_ordered_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_ordered_extent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_lock_and_flush_ordered_range(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_nocow_extent(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_sync_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hole_mergeable(ptr nocapture noundef readonly %inode, ptr noundef %leaf, i32 noundef %slot, i64 noundef %start, i64 noundef %end) unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp = icmp slt i32 %slot, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 12
  %0 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #15
  %2 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %leaf, align 8
  %conv.i = trunc i64 %3 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %4 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %nritems.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %slot)
  %cmp1.not = icmp ugt i32 %6, %slot
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #15
  %7 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %slot, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %9 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %leaf, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #15
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %8, align 1
  %12 = call i64 @llvm.bswap.i64(i64 %11) #15
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %7, align 8
  %15 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %disk_key.i, align 8
  %17 = call i64 @llvm.bswap.i64(i64 %16) #15
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #15
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %18 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool.not.i = icmp eq i64 %19, 0
  br i1 %tobool.not.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %21)
  %cmp.i = icmp eq i8 %21, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %22 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %23 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %19, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %ino.0.i)
  %cmp3.not = icmp eq i64 %17, %ino.0.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %14)
  %cmp5.not = icmp eq i8 %14, 108
  %or.cond = select i1 %cmp3.not, i1 %cmp5.not, i1 false
  br i1 %or.cond, label %if.end8, label %btrfs_ino.exit.cleanup_crit_edge

btrfs_ino.exit.cleanup_crit_edge:                 ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %btrfs_ino.exit
  %24 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %24, i32 noundef 17) #15
  %add = add i32 %call.i.i, 101
  %25 = inttoptr i32 %add to ptr
  %call.i41 = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %25, i32 noundef 20) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i41)
  %cmp12.not = icmp eq i8 %call.i41, 1
  br i1 %cmp12.not, label %if.end15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call.i42 = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %25, i32 noundef 21) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i42)
  %tobool.not = icmp eq i64 %call.i42, 0
  br i1 %tobool.not, label %if.end18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %end)
  %cmp19 = icmp eq i64 %12, %end
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %call.i43 = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %25, i32 noundef 45) #15
  %add25 = add i64 %call.i43, %12
  call void @__sanitizer_cov_trace_cmp8(i64 %add25, i64 %start)
  %cmp26 = icmp eq i64 %add25, %start
  %. = zext i1 %cmp26 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %btrfs_ino.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %btrfs_ino.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 1, %if.end18.cleanup_crit_edge ], [ %., %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_file_extent(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inode_set_file_extent_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_alloc_reserved_file_extent(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_extent(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_extent_bits(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_extent_fiemap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_dio_rw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_iov_iter_writeable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_buffered_write(ptr noundef %iocb, ptr noundef %i) unnamed_addr #12 align 64 {
entry:
  %data_reserved = alloca ptr, align 4
  %lockstart = alloca i64, align 8
  %lockend = alloca i64, align 8
  %cached_state = alloca ptr, align 4
  %write_bytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_reserved) #15
  %8 = ptrtoint ptr %data_reserved to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %data_reserved, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lockstart) #15
  %9 = ptrtoint ptr %lockstart to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %lockstart, align 8, !annotation !146
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lockend) #15
  %10 = ptrtoint ptr %lockend to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %lockend, align 8, !annotation !146
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %11 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ki_flags, align 8
  %and = lshr i32 %12, 2
  %13 = and i32 %and, 2
  %call3 = tail call i32 @btrfs_inode_lock(ptr noundef %3, i32 noundef %13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup286_crit_edge, label %if.end5

entry.cleanup286_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup286

if.end5:                                          ; preds = %entry
  %call6 = tail call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.end5.cleanup286.sink.split_crit_edge, label %if.end9

if.end5.cleanup286.sink.split_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup286.sink.split

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc i32 @btrfs_write_check(ptr noundef %iocb, i32 noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup286.sink.split_crit_edge, label %if.end13

if.end9.cleanup286.sink.split_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup286.sink.split

if.end13:                                         ; preds = %if.end9
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %14 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ki_pos, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %i, i32 0, i32 4
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 8
  %sub = add i32 %17, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %sub)
  %cmp15 = icmp ult i32 %sub, 4194304
  %div434 = lshr i32 %sub, 12
  %cond = select i1 %cmp15, i32 %div434, i32 1024
  %18 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %nr_dirtied_pause = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 185
  %22 = ptrtoint ptr %nr_dirtied_pause to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_dirtied_pause, align 8
  %nr_dirtied = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 184
  %24 = ptrtoint ptr %nr_dirtied to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_dirtied, align 4
  %sub19 = sub i32 %23, %25
  %26 = tail call i32 @llvm.smin.i32(i32 %cond, i32 %sub19)
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 8)
  %28 = shl nuw nsw i32 %27, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3264) #22
  %tobool33.not = icmp eq ptr %call8.i, null
  br i1 %tobool33.not, label %if.end13.cleanup286.sink.split_crit_edge, label %while.cond.preheader

if.end13.cleanup286.sink.split_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup286.sink.split

while.cond.preheader:                             ; preds = %if.end13
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp37.not544 = icmp eq i32 %30, 0
  br i1 %cmp37.not544, label %while.cond.preheader.while.end.thread_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end.thread_crit_edge:  ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.thread

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 167
  %add.ptr.i = getelementptr i8, ptr %3, i32 -864
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 168
  %io_tree = getelementptr i8, ptr %3, i32 -736
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  br label %while.body

while.end.thread:                                 ; preds = %cleanup.while.end.thread_crit_edge, %while.cond.preheader.while.end.thread_crit_edge
  %ret.0.lcssa = phi i32 [ %call10, %while.cond.preheader.while.end.thread_crit_edge ], [ 0, %cleanup.while.end.thread_crit_edge ]
  %num_written.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end.thread_crit_edge ], [ %add247, %cleanup.while.end.thread_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i) #15
  br label %if.end272

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %31 = phi i32 [ %30, %while.body.lr.ph ], [ %67, %cleanup.while.body_crit_edge ]
  %pos.0548 = phi i64 [ %15, %while.body.lr.ph ], [ %add246, %cleanup.while.body_crit_edge ]
  %num_written.0547 = phi i32 [ 0, %while.body.lr.ph ], [ %add247, %cleanup.while.body_crit_edge ]
  %nrptrs.0546 = phi i32 [ %27, %while.body.lr.ph ], [ %spec.select452, %cleanup.while.body_crit_edge ]
  %force_page_uptodate.0.off0545 = phi i1 [ false, %while.body.lr.ph ], [ %cmp187, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cached_state) #15
  %32 = ptrtoint ptr %cached_state to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %cached_state, align 4
  %conv = trunc i64 %pos.0548 to i32
  %and38 = and i32 %conv, 4095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %write_bytes) #15
  %mul = shl i32 %nrptrs.0546, 12
  %sub40 = sub i32 %mul, %and38
  %33 = call i32 @llvm.umin.i32(i32 %31, i32 %sub40)
  %34 = ptrtoint ptr %write_bytes to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %write_bytes, align 4
  %call48 = call i32 @fault_in_iov_iter_readable(ptr noundef %i, i32 noundef %33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end53, label %while.body.while.end.thread493_crit_edge, !prof !123

while.body.while.end.thread493_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.thread493

if.end53:                                         ; preds = %while.body
  %35 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sectorsize, align 4
  %sub54 = add i32 %36, -1
  %conv57 = and i32 %sub54, %conv
  %37 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data_reserved, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end53.extent_changeset_release.exit_crit_edge, label %if.end.i455

if.end53.extent_changeset_release.exit_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %extent_changeset_release.exit

if.end.i455:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %38, align 4
  %range_changed.i = getelementptr inbounds %struct.extent_changeset, ptr %38, i32 0, i32 1
  call void @ulist_release(ptr noundef %range_changed.i) #15
  br label %extent_changeset_release.exit

extent_changeset_release.exit:                    ; preds = %if.end.i455, %if.end53.extent_changeset_release.exit_crit_edge
  %conv59 = zext i32 %33 to i64
  %call60 = call i32 @btrfs_check_data_free_space(ptr noundef %add.ptr.i, ptr noundef nonnull %data_reserved, i64 noundef %pos.0548, i64 noundef %conv59) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %extent_changeset_release.exit.if.end70_crit_edge

extent_changeset_release.exit.if.end70_crit_edge: ; preds = %extent_changeset_release.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then63:                                        ; preds = %extent_changeset_release.exit
  %call.i = call fastcc i32 @check_can_nocow(ptr noundef %add.ptr.i, i64 noundef %pos.0548, ptr noundef nonnull %write_bytes, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp66 = icmp sgt i32 %call.i, 0
  br i1 %cmp66, label %if.then63.if.end70_crit_edge, label %if.then63.while.end.thread493_crit_edge

if.then63.while.end.thread493_crit_edge:          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.thread493

if.then63.if.end70_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.end70:                                         ; preds = %if.then63.if.end70_crit_edge, %extent_changeset_release.exit.if.end70_crit_edge
  %40 = ptrtoint ptr %write_bytes to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %write_bytes, align 4
  %add71 = add nuw nsw i32 %and38, 4095
  %sub73 = add i32 %add71, %41
  %div74450 = lshr i32 %sub73, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %div74450, i32 %nrptrs.0546)
  %cmp75 = icmp ugt i32 %div74450, %nrptrs.0546
  br i1 %cmp75, label %do.end, label %if.end70.if.end95_crit_edge, !prof !126

if.end70.if.end95_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

do.end:                                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1720, i32 noundef 9, ptr noundef null) #15
  br label %if.end95

if.end95:                                         ; preds = %do.end, %if.end70.if.end95_crit_edge
  %add103 = add i32 %conv57, -1
  %sub104 = add i32 %add103, %41
  %42 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sectorsize, align 4
  %sub106 = add i32 %43, -1
  %or107 = or i32 %sub106, %sub104
  %add108 = add i32 %or107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add108)
  %cmp110 = icmp eq i32 %add108, 0
  br i1 %cmp110, label %do.end127, label %if.end95.if.end133_crit_edge, !prof !126

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1723, i32 noundef 9, ptr noundef null) #15
  br label %if.end133

if.end133:                                        ; preds = %do.end127, %if.end95.if.end133_crit_edge
  %conv142 = zext i32 %add108 to i64
  %call143 = call i32 @btrfs_delalloc_reserve_metadata(ptr noundef %add.ptr.i, i64 noundef %conv142) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end133.again_crit_edge, label %if.then145

if.end133.again_crit_edge:                        ; preds = %if.end133
  br label %again

if.then145:                                       ; preds = %if.end133
  br i1 %cmp61, label %if.else150, label %if.then147

if.then147:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data_reserved, align 4
  %conv149 = zext i32 %41 to i64
  call void @btrfs_free_reserved_data_space(ptr noundef %add.ptr.i, ptr noundef %45, i64 noundef %pos.0548, i64 noundef %conv149) #15
  br label %while.end.thread493

if.else150:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 8
  %snapshot_lock.i = getelementptr inbounds %struct.btrfs_root, ptr %47, i32 0, i32 52
  call void @btrfs_drew_write_unlock(ptr noundef %snapshot_lock.i) #15
  br label %while.end.thread493

again:                                            ; preds = %if.then166.again_crit_edge, %if.end133.again_crit_edge
  %call156 = call fastcc i32 @prepare_pages(ptr noundef %3, ptr noundef nonnull %call8.i, i32 noundef %div74450, i64 noundef %pos.0548, i32 noundef %41, i1 noundef zeroext %force_page_uptodate.0.off0545)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end161, label %if.then158

if.then158:                                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #17
  call void @btrfs_delalloc_release_extents(ptr noundef %add.ptr.i, i64 noundef %conv142) #15
  br label %while.end

if.end161:                                        ; preds = %again
  %call163 = call fastcc i32 @lock_and_cleanup_extent_if_need(ptr noundef %add.ptr.i, ptr noundef nonnull %call8.i, i32 noundef %div74450, i64 noundef %pos.0548, i32 noundef %41, ptr noundef nonnull %lockstart, ptr noundef nonnull %lockend, ptr noundef nonnull %cached_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.then166, label %if.end173

if.then166:                                       ; preds = %if.end161
  %cmp167 = icmp eq i32 %call163, -11
  br i1 %cmp167, label %if.then166.again_crit_edge, label %if.end170

if.then166.again_crit_edge:                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #17
  br label %again

if.end170:                                        ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #17
  call void @btrfs_delalloc_release_extents(ptr noundef %add.ptr.i, i64 noundef %conv142) #15
  br label %while.end

if.end173:                                        ; preds = %if.end161
  %call174 = call fastcc i32 @btrfs_copy_from_user(i64 noundef %pos.0548, i32 noundef %41, ptr noundef nonnull %call8.i, ptr noundef %i)
  %48 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %add108, %49
  %sub176 = add i32 %add103, %call174
  %50 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sectorsize, align 4
  %sub178 = add i32 %51, -1
  %or179 = or i32 %sub178, %sub176
  %add180 = add i32 %or179, 1
  %shr182 = lshr i32 %add180, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %call174, i32 %41)
  %cmp183 = icmp ult i32 %call174, %41
  %spec.select452 = select i1 %cmp183, i32 1, i32 %nrptrs.0546
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %cmp187 = icmp eq i32 %call174, 0
  %sub193 = add i32 %add71, %call174
  %div194451 = lshr i32 %sub193, 12
  %dirty_pages.0 = select i1 %cmp187, i32 0, i32 %div194451
  %dirty_sectors.0 = select i1 %cmp187, i32 0, i32 %shr182
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %dirty_sectors.0)
  %cmp196 = icmp ugt i32 %shr, %dirty_sectors.0
  br i1 %cmp196, label %if.then198, label %if.end173.if.end215_crit_edge

if.end173.if.end215_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end215

if.then198:                                       ; preds = %if.end173
  %shl = shl i32 %dirty_sectors.0, %49
  %conv200 = zext i32 %shl to i64
  %sub201 = sub nsw i64 %conv142, %conv200
  br i1 %cmp61, label %if.then203, label %if.else205

if.then203:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #17
  call void @btrfs_delalloc_release_metadata(ptr noundef %add.ptr.i, i64 noundef %sub201, i1 noundef zeroext true) #15
  br label %if.end215

if.else205:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #17
  %conv208 = zext i32 %sub178 to i64
  %neg = xor i64 %conv208, -1
  %and209 = and i64 %pos.0548, %neg
  %shl210 = shl nuw i32 %dirty_pages.0, 12
  %conv211 = zext i32 %shl210 to i64
  %add212 = add i64 %and209, %conv211
  %52 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data_reserved, align 4
  call void @btrfs_delalloc_release_space(ptr noundef %add.ptr.i, ptr noundef %53, i64 noundef %add212, i64 noundef %sub201, i1 noundef zeroext true) #15
  br label %if.end215

if.end215:                                        ; preds = %if.else205, %if.then203, %if.end173.if.end215_crit_edge
  %54 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sectorsize, align 4
  %call225 = call i32 @btrfs_dirty_pages(ptr noundef %add.ptr.i, ptr noundef nonnull %call8.i, i32 noundef %dirty_pages.0, i64 noundef %pos.0548, i32 noundef %call174, ptr noundef nonnull %cached_state, i1 noundef zeroext %cmp61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool226.not = icmp eq i32 %call163, 0
  br i1 %tobool226.not, label %if.else230, label %if.then227

if.then227:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %lockstart to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %lockstart, align 8
  %58 = ptrtoint ptr %lockend to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %lockend, align 8
  %call.i467 = call i32 @__clear_extent_bit(ptr noundef %io_tree, i64 noundef %57, i64 noundef %59, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %cached_state, i32 noundef 3136, ptr noundef null) #15
  br label %if.end231

if.else230:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %cached_state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cached_state, align 4
  call void @free_extent_state(ptr noundef %61) #15
  br label %if.end231

if.end231:                                        ; preds = %if.else230, %if.then227
  call void @btrfs_delalloc_release_extents(ptr noundef %add.ptr.i, i64 noundef %conv142) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool234.not = icmp eq i32 %call225, 0
  br i1 %tobool234.not, label %if.end237, label %if.then235

if.then235:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #17
  %sub219.le = add i32 %55, -1
  %or220.le = or i32 %sub219.le, %sub176
  %add221.le = add i32 %or220.le, 1
  %conv222.le = zext i32 %add221.le to i64
  %conv236 = zext i32 %call174 to i64
  call fastcc void @btrfs_drop_pages(ptr noundef %7, ptr noundef nonnull %call8.i, i32 noundef %div74450, i64 noundef %pos.0548, i64 noundef %conv236)
  br label %while.end

if.end237:                                        ; preds = %if.end231
  br i1 %cmp61, label %if.then239, label %if.end237.cleanup_crit_edge

if.end237.cleanup_crit_edge:                      ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then239:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 8
  %snapshot_lock.i470 = getelementptr inbounds %struct.btrfs_root, ptr %63, i32 0, i32 52
  call void @btrfs_drew_write_unlock(ptr noundef %snapshot_lock.i470) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then239, %if.end237.cleanup_crit_edge
  %conv242 = zext i32 %call174 to i64
  call fastcc void @btrfs_drop_pages(ptr noundef %7, ptr noundef nonnull %call8.i, i32 noundef %div74450, i64 noundef %pos.0548, i64 noundef %conv242)
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1839, i32 noundef 0) #15
  %call.i471 = call i32 @__cond_resched() #15
  %64 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_mapping, align 8
  call void @balance_dirty_pages_ratelimited(ptr noundef %65) #15
  %add246 = add i64 %pos.0548, %conv242
  %add247 = add i32 %call174, %num_written.0547
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_bytes) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state) #15
  %66 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count.i, align 8
  %cmp37.not = icmp eq i32 %67, 0
  br i1 %cmp37.not, label %cleanup.while.end.thread_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup.while.end.thread_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.thread

while.end.thread493:                              ; preds = %if.else150, %if.then147, %if.then63.while.end.thread493_crit_edge, %while.body.while.end.thread493_crit_edge
  %ret.1.ph.ph = phi i32 [ %call143, %if.else150 ], [ %call143, %if.then147 ], [ %call60, %if.then63.while.end.thread493_crit_edge ], [ -14, %while.body.while.end.thread493_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_bytes) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state) #15
  call void @kfree(ptr noundef nonnull %call8.i) #15
  br label %if.end272

while.end:                                        ; preds = %if.then235, %if.end170, %if.then158
  %ret.1.ph = phi i32 [ %call225, %if.then235 ], [ %call163, %if.end170 ], [ %call156, %if.then158 ]
  %release_bytes.1.ph = phi i64 [ %conv222.le, %if.then235 ], [ %conv142, %if.end170 ], [ %conv142, %if.then158 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_bytes) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state) #15
  call void @kfree(ptr noundef nonnull %call8.i) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %release_bytes.1.ph)
  %tobool258.not = icmp eq i64 %release_bytes.1.ph, 0
  br i1 %tobool258.not, label %while.end.if.end272_crit_edge, label %if.then259

while.end.if.end272_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end272

if.then259:                                       ; preds = %while.end
  br i1 %cmp61, label %if.then261, label %if.else264

if.then261:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 8
  %snapshot_lock.i473 = getelementptr inbounds %struct.btrfs_root, ptr %69, i32 0, i32 52
  call void @btrfs_drew_write_unlock(ptr noundef %snapshot_lock.i473) #15
  call void @btrfs_delalloc_release_metadata(ptr noundef %add.ptr.i, i64 noundef %release_bytes.1.ph, i1 noundef zeroext true) #15
  br label %if.end272

if.else264:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data_reserved, align 4
  %72 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sectorsize, align 4
  %sub267 = add i32 %73, -1
  %conv268 = zext i32 %sub267 to i64
  %neg269 = xor i64 %conv268, -1
  %and270 = and i64 %pos.0548, %neg269
  call void @btrfs_delalloc_release_space(ptr noundef %add.ptr.i, ptr noundef %71, i64 noundef %and270, i64 noundef %release_bytes.1.ph, i1 noundef zeroext true) #15
  br label %if.end272

if.end272:                                        ; preds = %if.else264, %if.then261, %while.end.if.end272_crit_edge, %while.end.thread493, %while.end.thread
  %num_written.0516 = phi i32 [ %num_written.0.lcssa, %while.end.thread ], [ %num_written.0547, %if.then261 ], [ %num_written.0547, %if.else264 ], [ %num_written.0547, %while.end.if.end272_crit_edge ], [ %num_written.0547, %while.end.thread493 ]
  %ret.2492 = phi i32 [ %ret.0.lcssa, %while.end.thread ], [ %ret.1.ph, %if.then261 ], [ %ret.1.ph, %if.else264 ], [ %ret.1.ph, %while.end.if.end272_crit_edge ], [ %ret.1.ph.ph, %while.end.thread493 ]
  %74 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data_reserved, align 4
  %tobool.not.i476 = icmp eq ptr %75, null
  br i1 %tobool.not.i476, label %if.end272.extent_changeset_free.exit_crit_edge, label %extent_changeset_release.exit.i

if.end272.extent_changeset_free.exit_crit_edge:   ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #17
  br label %extent_changeset_free.exit

extent_changeset_release.exit.i:                  ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #17
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %75, align 4
  %range_changed.i.i = getelementptr inbounds %struct.extent_changeset, ptr %75, i32 0, i32 1
  call void @ulist_release(ptr noundef %range_changed.i.i) #15
  call void @kfree(ptr noundef nonnull %75) #15
  br label %extent_changeset_free.exit

extent_changeset_free.exit:                       ; preds = %extent_changeset_release.exit.i, %if.end272.extent_changeset_free.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_written.0516)
  %cmp273.not = icmp eq i32 %num_written.0516, 0
  br i1 %cmp273.not, label %extent_changeset_free.exit.cleanup286.sink.split_crit_edge, label %out

extent_changeset_free.exit.cleanup286.sink.split_crit_edge: ; preds = %extent_changeset_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup286.sink.split

out:                                              ; preds = %extent_changeset_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ki_pos, align 8
  call void @pagecache_isize_extended(ptr noundef %3, i64 noundef %call2, i64 noundef %78) #15
  %conv277 = zext i32 %num_written.0516 to i64
  %79 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %ki_pos, align 8
  %add279 = add i64 %80, %conv277
  store i64 %add279, ptr %ki_pos, align 8
  br label %cleanup286.sink.split

cleanup286.sink.split:                            ; preds = %out, %extent_changeset_free.exit.cleanup286.sink.split_crit_edge, %if.end13.cleanup286.sink.split_crit_edge, %if.end9.cleanup286.sink.split_crit_edge, %if.end5.cleanup286.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %num_written.0516, %out ], [ -12, %if.end13.cleanup286.sink.split_crit_edge ], [ %ret.2492, %extent_changeset_free.exit.cleanup286.sink.split_crit_edge ], [ %call10, %if.end9.cleanup286.sink.split_crit_edge ], [ %call6, %if.end5.cleanup286.sink.split_crit_edge ]
  call void @btrfs_inode_unlock(ptr noundef %3, i32 noundef %13) #15
  br label %cleanup286

cleanup286:                                       ; preds = %cleanup286.sink.split, %entry.cleanup286_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup286_crit_edge ], [ %retval.0.ph, %cleanup286.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lockend) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lockstart) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_reserved) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_write_check(ptr nocapture noundef readonly %iocb, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %nocow_bytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %8 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ki_pos, align 8
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %10 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ki_flags, align 8
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nocow_bytes) #15
  %12 = ptrtoint ptr %nocow_bytes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %count, ptr %nocow_bytes, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -864
  %call.i = call fastcc i32 @check_can_nocow(ptr noundef %add.ptr.i, i64 noundef %9, ptr noundef nonnull %nocow_bytes, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %cleanup38.critedge, label %if.end

if.end:                                           ; preds = %if.then
  %13 = ptrtoint ptr %nocow_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nocow_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %count)
  %cmp5.not = icmp ult i32 %14, %count
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nocow_bytes) #15
  br i1 %cmp5.not, label %if.end.cleanup38_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end.cleanup38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = tail call ptr @inode_to_bdi(ptr noundef %3) #15
  %15 = tail call i32 @llvm.read_register.i32(metadata !111) #15
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %backing_dev_info = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 150
  %19 = ptrtoint ptr %backing_dev_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9, ptr %backing_dev_info, align 4
  %call11 = tail call i32 @file_remove_privs(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup38_crit_edge

if.end8.cleanup38_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

if.end14:                                         ; preds = %if.end8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags.i, align 4
  %and.i1 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1)
  %tobool.not.i = icmp eq i32 %and.i1, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.update_time_for_write.exit_crit_edge

if.end14.update_time_for_write.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_time_for_write.exit

if.end.i:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %3) #15
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %now.sroa.0.0.copyload29.i = load i64, ptr %tmp.i, align 8
  %now.sroa.8.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %23 = ptrtoint ptr %now.sroa.8.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %now.sroa.8.0.copyload32.i = load i32, ptr %now.sroa.8.0.tmp.sroa_idx.i, align 8
  %now.sroa.10.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 12
  %24 = ptrtoint ptr %now.sroa.10.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %now.sroa.10.0.copyload36.i = load i32, ptr %now.sroa.10.0.tmp.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %25 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_mtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %now.sroa.0.0.copyload29.i)
  %cmp.i.i = icmp eq i64 %26, %now.sroa.0.0.copyload29.i
  br i1 %cmp.i.i, label %timespec64_equal.exit.i, label %if.end.i.if.then2.i_crit_edge

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2.i

timespec64_equal.exit.i:                          ; preds = %if.end.i
  %tv_nsec.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16, i32 1
  %27 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %now.sroa.8.0.copyload32.i)
  %cmp3.i.not.i = icmp eq i32 %28, %now.sroa.8.0.copyload32.i
  br i1 %cmp3.i.not.i, label %timespec64_equal.exit.i.if.end4.i_crit_edge, label %timespec64_equal.exit.i.if.then2.i_crit_edge

timespec64_equal.exit.i.if.then2.i_crit_edge:     ; preds = %timespec64_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2.i

timespec64_equal.exit.i.if.end4.i_crit_edge:      ; preds = %timespec64_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then2.i:                                       ; preds = %timespec64_equal.exit.i.if.then2.i_crit_edge, %if.end.i.if.then2.i_crit_edge
  %29 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %now.sroa.0.0.copyload29.i, ptr %i_mtime.i, align 8
  %now.sroa.8.0.i_mtime.sroa_idx.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16, i32 1
  %30 = ptrtoint ptr %now.sroa.8.0.i_mtime.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %now.sroa.8.0.copyload32.i, ptr %now.sroa.8.0.i_mtime.sroa_idx.i, align 8
  %now.sroa.10.0.i_mtime.sroa_idx.i = getelementptr inbounds i8, ptr %i_mtime.i, i32 12
  %31 = ptrtoint ptr %now.sroa.10.0.i_mtime.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %now.sroa.10.0.copyload36.i, ptr %now.sroa.10.0.i_mtime.sroa_idx.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %timespec64_equal.exit.i.if.end4.i_crit_edge
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %32 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_ctime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %now.sroa.0.0.copyload29.i)
  %cmp.i21.i = icmp eq i64 %33, %now.sroa.0.0.copyload29.i
  br i1 %cmp.i21.i, label %timespec64_equal.exit27.i, label %if.end4.i.if.then7.i_crit_edge

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7.i

timespec64_equal.exit27.i:                        ; preds = %if.end4.i
  %tv_nsec.i22.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %tv_nsec.i22.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tv_nsec.i22.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %now.sroa.8.0.copyload32.i)
  %cmp3.i24.not.i = icmp eq i32 %35, %now.sroa.8.0.copyload32.i
  br i1 %cmp3.i24.not.i, label %timespec64_equal.exit27.i.if.end9.i_crit_edge, label %timespec64_equal.exit27.i.if.then7.i_crit_edge

timespec64_equal.exit27.i.if.then7.i_crit_edge:   ; preds = %timespec64_equal.exit27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7.i

timespec64_equal.exit27.i.if.end9.i_crit_edge:    ; preds = %timespec64_equal.exit27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

if.then7.i:                                       ; preds = %timespec64_equal.exit27.i.if.then7.i_crit_edge, %if.end4.i.if.then7.i_crit_edge
  %36 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %now.sroa.0.0.copyload29.i, ptr %i_ctime.i, align 8
  %now.sroa.8.0.i_ctime.sroa_idx.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17, i32 1
  %37 = ptrtoint ptr %now.sroa.8.0.i_ctime.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %now.sroa.8.0.copyload32.i, ptr %now.sroa.8.0.i_ctime.sroa_idx.i, align 8
  %now.sroa.10.0.i_ctime.sroa_idx.i = getelementptr inbounds i8, ptr %i_ctime.i, i32 12
  %38 = ptrtoint ptr %now.sroa.10.0.i_ctime.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %now.sroa.10.0.copyload36.i, ptr %now.sroa.10.0.i_ctime.sroa_idx.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %timespec64_equal.exit27.i.if.end9.i_crit_edge
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_flags.i, align 4
  %and10.i = and i32 %42, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.update_time_for_write.exit_crit_edge, label %if.then12.i

if.end9.i.update_time_for_write.exit_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_time_for_write.exit

if.then12.i:                                      ; preds = %if.end9.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !167
  %i_version.i.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 38
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #15
  %call.i.i1.i.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i.i) #15
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %if.then12.i
  %cur.0.i.i.i = phi i64 [ %call.i.i1.i.i.i, %if.then12.i ], [ %call.i.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %43 = add i64 %cur.0.i.i.i, 2
  %add.i.i.i = and i64 %43, -2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #15
  %call.i.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i.i, i64 noundef %cur.0.i.i.i, i64 noundef %add.i.i.i) #15
  %cmp.i.i.i = icmp eq i64 %call.i.i.i.i, %cur.0.i.i.i
  br i1 %cmp.i.i.i, label %for.cond.i.i.i.update_time_for_write.exit_crit_edge, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge, !prof !123

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.i

for.cond.i.i.i.update_time_for_write.exit_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_time_for_write.exit

update_time_for_write.exit:                       ; preds = %for.cond.i.i.i.update_time_for_write.exit_crit_edge, %if.end9.i.update_time_for_write.exit_crit_edge, %if.end14.update_time_for_write.exit_crit_edge
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 167
  %44 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sectorsize, align 4
  %sub = add i32 %45, -1
  %conv = zext i32 %sub to i64
  %neg = xor i64 %conv, -1
  %and15 = and i64 %9, %neg
  %call16 = call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %and15, i64 %call16)
  %cmp17 = icmp sgt i64 %and15, %call16
  br i1 %cmp17, label %if.then19, label %update_time_for_write.exit.cleanup38_crit_edge

update_time_for_write.exit.cleanup38_crit_edge:   ; preds = %update_time_for_write.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

if.then19:                                        ; preds = %update_time_for_write.exit
  %conv20 = zext i32 %count to i64
  %add = add nsw i64 %conv20, -1
  %sub21 = add i64 %add, %9
  %46 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sectorsize, align 4
  %sub23 = add i32 %47, -1
  %conv24 = zext i32 %sub23 to i64
  %or = or i64 %sub21, %conv24
  %add25 = add i64 %or, 1
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 -864
  %call27 = call i32 @btrfs_cont_expand(ptr noundef %add.ptr.i2, i64 noundef %call16, i64 noundef %add25) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then19.cleanup38_crit_edge, label %cleanup34

if.then19.cleanup38_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup38

cleanup34:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %backing_dev_info32 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 150
  %50 = ptrtoint ptr %backing_dev_info32 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %backing_dev_info32, align 4
  br label %cleanup38

cleanup38.critedge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nocow_bytes) #15
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup38.critedge, %cleanup34, %if.then19.cleanup38_crit_edge, %update_time_for_write.exit.cleanup38_crit_edge, %if.end8.cleanup38_crit_edge, %if.end.cleanup38_crit_edge
  %retval.3 = phi i32 [ %call27, %cleanup34 ], [ -11, %if.end.cleanup38_crit_edge ], [ -11, %cleanup38.critedge ], [ %call11, %if.end8.cleanup38_crit_edge ], [ 0, %update_time_for_write.exit.cleanup38_crit_edge ], [ 0, %if.then19.cleanup38_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_iov_iter_readable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_remove_privs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_cont_expand(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inode_inc_iversion(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !167
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #15
  %call.i.i1.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %cur.0.i = phi i64 [ %call.i.i1.i, %entry ], [ %call.i.i, %for.cond.i.for.cond.i_crit_edge ]
  %0 = add i64 %cur.0.i, 2
  %add.i = and i64 %0, -2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #15
  %call.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %add.i) #15
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %inode_maybe_inc_iversion.exit, label %for.cond.i.for.cond.i_crit_edge, !prof !123

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

inode_maybe_inc_iversion.exit:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_check_data_free_space(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_delalloc_reserve_metadata(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_reserved_data_space(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepare_pages(ptr nocapture noundef readonly %inode, ptr nocapture noundef %pages, i32 noundef %num_pages, i64 noundef %pos, i32 noundef %write_bytes, i1 noundef zeroext %force_uptodate) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i64 %pos, 12
  %conv = trunc i64 %0 to i32
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp123.not = icmp eq i32 %num_pages, 0
  br i1 %cmp123.not, label %entry.cleanup_crit_edge, label %again.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

again.preheader.lr.ph:                            ; preds = %entry
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i.i = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %gfp_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gfp_mask.i.i.i, align 4
  %and.i.i = and i32 %4, -4225
  %or = or i32 %and.i.i, 4096
  %sub19 = add i32 %num_pages, -1
  %conv24 = zext i32 %write_bytes to i64
  %add25 = add i64 %conv24, %pos
  br label %again.preheader

again.preheader:                                  ; preds = %if.end36.again.preheader_crit_edge, %again.preheader.lr.ph
  %i.0124 = phi i32 [ 0, %again.preheader.lr.ph ], [ %inc, %if.end36.again.preheader_crit_edge ]
  %add = add i32 %i.0124, %conv
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.0124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0124)
  %cmp11 = icmp eq i32 %i.0124, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0124, i32 %sub19)
  %cmp20 = icmp eq i32 %i.0124, %sub19
  br label %again

again:                                            ; preds = %put_page.exit.again_crit_edge, %again.preheader
  %5 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %6, i32 noundef %add, i32 noundef 7, i32 noundef %or) #15
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add i32 %i.0124, -1
  br label %fail

if.end:                                           ; preds = %again
  %call6 = tail call i32 @set_page_extent_mapped(ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.fail_crit_edge, label %if.end10

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end10:                                         ; preds = %if.end
  br i1 %cmp11, label %if.then13, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call16 = tail call fastcc i32 @prepare_uptodate_page(ptr noundef %inode, ptr noundef %9, i64 noundef %pos, i1 noundef zeroext %force_uptodate)
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  %err.0 = phi i32 [ %call16, %if.then13 ], [ %call6, %if.end10.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool18.not = icmp eq i32 %err.0, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.end17.if.then29_crit_edge

if.end17.if.then29_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

land.lhs.true:                                    ; preds = %if.end17
  br i1 %cmp20, label %if.end27, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.end27:                                         ; preds = %land.lhs.true
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call26 = tail call fastcc i32 @prepare_uptodate_page(ptr noundef %inode, ptr noundef %11, i64 noundef %add25, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.end27.if.end36_crit_edge, label %if.end27.if.then29_crit_edge

if.end27.if.then29_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then29:                                        ; preds = %if.end27.if.then29_crit_edge, %if.end17.if.then29_crit_edge
  %err.1107 = phi i32 [ %call26, %if.end27.if.then29_crit_edge ], [ %err.0, %if.end17.if.then29_crit_edge ]
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i81 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.not.i.i = icmp eq i32 %and.i.i81, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !123

if.then.i.i:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %13 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !126

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.31) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !168
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@prepare_pages, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !155

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %18) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %cmp31 = icmp eq i32 %err.1107, -11
  br i1 %cmp31, label %put_page.exit.again_crit_edge, label %if.end34

put_page.exit.again_crit_edge:                    ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %again

if.end34:                                         ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub35 = add i32 %i.0124, -1
  br label %fail

if.end36:                                         ; preds = %if.end27.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  tail call void @wait_on_page_writeback(ptr noundef %24) #15
  %inc = add nuw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, %num_pages
  br i1 %exitcond.not, label %if.end36.cleanup_crit_edge, label %if.end36.again.preheader_crit_edge

if.end36.again.preheader_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %again.preheader

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

fail:                                             ; preds = %if.end34, %if.end.fail_crit_edge, %if.then
  %err.2 = phi i32 [ %err.1107, %if.end34 ], [ -12, %if.then ], [ %call6, %if.end.fail_crit_edge ]
  %faili.0 = phi i32 [ %sub35, %if.end34 ], [ %sub, %if.then ], [ %i.0124, %if.end.fail_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %faili.0)
  %cmp38126 = icmp sgt i32 %faili.0, -1
  br i1 %cmp38126, label %fail.while.body_crit_edge, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

fail.while.body_crit_edge:                        ; preds = %fail
  br label %while.body

while.body:                                       ; preds = %put_page.exit101.while.body_crit_edge, %fail.while.body_crit_edge
  %faili.1127 = phi i32 [ %dec, %put_page.exit101.while.body_crit_edge ], [ %faili.0, %fail.while.body_crit_edge ]
  %arrayidx40 = getelementptr ptr, ptr %pages, i32 %faili.1127
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx40, align 4
  tail call void @unlock_page(ptr noundef %26) #15
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx40, align 4
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i82 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82)
  %tobool.not.i.i83 = icmp eq i32 %and.i.i82, 0
  br i1 %tobool.not.i.i83, label %if.end.i.i86, label %if.then.i.i85, !prof !123

if.then.i.i85:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i84 = add i32 %31, -1
  br label %_compound_head.exit.i91

if.end.i.i86:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %28 to i32
  br label %_compound_head.exit.i91

_compound_head.exit.i91:                          ; preds = %if.end.i.i86, %if.then.i.i85
  %retval.0.i.i87 = phi i32 [ %sub.i.i84, %if.then.i.i85 ], [ %32, %if.end.i.i86 ]
  %33 = inttoptr i32 %retval.0.i.i87 to ptr
  %_refcount.i.i.i.i.i88 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 3
  %call.i.i.i.i.i.i.i89 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i88, i32 noundef 4) #15
  %34 = ptrtoint ptr %_refcount.i.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_refcount.i.i.i.i.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i.i.i90 = icmp eq i32 %35, 0
  br i1 %cmp.i.i.i.i90, label %if.then.i.i.i.i92, label %do.end5.i.i.i.i96, !prof !126

if.then.i.i.i.i92:                                ; preds = %_compound_head.exit.i91
  call void @__sanitizer_cov_trace_pc() #17
  %36 = inttoptr i32 %retval.0.i.i87 to ptr
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.31) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !168
  unreachable

do.end5.i.i.i.i96:                                ; preds = %_compound_head.exit.i91
  %call.i.i.i10.i.i.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i88, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i88, i32 1, i32 3, i32 1) #15
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i88, ptr %_refcount.i.i.i.i.i88, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i88) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i.i.i.i94 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i94)
  %cmp.i.i.i.i.i.i.i95 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i94, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@prepare_pages, %if.then.i.i.i.i.i98)) #15
          to label %folio_put_testzero.exit.i.i99 [label %if.then.i.i.i.i.i98], !srcloc !155

if.then.i.i.i.i.i98:                              ; preds = %do.end5.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i97 = zext i1 %cmp.i.i.i.i.i.i.i95 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %33, i32 noundef -1, i32 noundef %conv.i.i.i.i.i97) #15
  br label %folio_put_testzero.exit.i.i99

folio_put_testzero.exit.i.i99:                    ; preds = %if.then.i.i.i.i.i98, %do.end5.i.i.i.i96
  br i1 %cmp.i.i.i.i.i.i.i95, label %if.then.i4.i100, label %folio_put_testzero.exit.i.i99.put_page.exit101_crit_edge

folio_put_testzero.exit.i.i99.put_page.exit101_crit_edge: ; preds = %folio_put_testzero.exit.i.i99
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit101

if.then.i4.i100:                                  ; preds = %folio_put_testzero.exit.i.i99
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %33) #15
  br label %put_page.exit101

put_page.exit101:                                 ; preds = %if.then.i4.i100, %folio_put_testzero.exit.i.i99.put_page.exit101_crit_edge
  %dec = add nsw i32 %faili.1127, -1
  %cmp38 = icmp sgt i32 %faili.1127, 0
  br i1 %cmp38, label %put_page.exit101.while.body_crit_edge, label %put_page.exit101.cleanup_crit_edge

put_page.exit101.cleanup_crit_edge:               ; preds = %put_page.exit101
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

put_page.exit101.while.body_crit_edge:            ; preds = %put_page.exit101
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup:                                          ; preds = %put_page.exit101.cleanup_crit_edge, %fail.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %fail.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %err.2, %put_page.exit101.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_delalloc_release_extents(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lock_and_cleanup_extent_if_need(ptr noundef %inode, ptr nocapture noundef readonly %pages, i32 noundef %num_pages, i64 noundef %pos, i32 noundef %write_bytes, ptr nocapture noundef writeonly %lockstart, ptr nocapture noundef writeonly %lockend, ptr noundef %cached_state) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %4 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectorsize, align 4
  %sub = add i32 %5, -1
  %conv = zext i32 %sub to i64
  %neg = xor i64 %conv, -1
  %and = and i64 %neg, %pos
  %conv2 = zext i32 %write_bytes to i64
  %add = add i64 %pos, -1
  %sub3 = add i64 %add, %conv2
  %or = or i64 %sub3, %conv
  %i_size = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %7)
  %cmp = icmp ult i64 %and, %7
  br i1 %cmp, label %if.then, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then:                                          ; preds = %entry
  %io_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 4
  %call = tail call i32 @lock_extent_bits(ptr noundef %io_tree, i64 noundef %and, i64 noundef %or, ptr noundef %cached_state) #15
  %sub10 = sub i64 1, %and
  %add11 = add i64 %sub10, %or
  %call12 = tail call ptr @btrfs_lookup_ordered_range(ptr noundef %inode, i64 noundef %and, i64 noundef %add11) #15
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.then.cleanup.thread_crit_edge, label %land.lhs.true

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %if.then
  %8 = ptrtoint ptr %call12 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %call12, align 8
  %num_bytes = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call12, i32 0, i32 2
  %10 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %num_bytes, align 8
  %add13 = add i64 %11, %9
  call void @__sanitizer_cov_trace_cmp8(i64 %add13, i64 %and)
  %cmp14 = icmp ule i64 %add13, %and
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %or)
  %cmp18.not = icmp ugt i64 %9, %or
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp18.not
  br i1 %or.cond, label %if.then27.critedge, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  %call.i = tail call i32 @__clear_extent_bit(ptr noundef %io_tree, i64 noundef %and, i64 noundef %or, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef %cached_state, i32 noundef 3136, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp23112.not = icmp eq i32 %num_pages, 0
  br i1 %cmp23112.not, label %if.then20.cleanup_crit_edge, label %if.then20.for.body_crit_edge

if.then20.for.body_crit_edge:                     ; preds = %if.then20
  br label %for.body

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %if.then20.for.body_crit_edge
  %i.0113 = phi i32 [ %inc, %put_page.exit.for.body_crit_edge ], [ 0, %if.then20.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.0113
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @unlock_page(ptr noundef %13) #15
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i101 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i101)
  %tobool.not.i.i102 = icmp eq i32 %and.i.i101, 0
  br i1 %tobool.not.i.i102, label %if.end.i.i105, label %if.then.i.i104, !prof !123

if.then.i.i104:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i103 = add i32 %18, -1
  br label %_compound_head.exit.i107

if.end.i.i105:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %15 to i32
  br label %_compound_head.exit.i107

_compound_head.exit.i107:                         ; preds = %if.end.i.i105, %if.then.i.i104
  %retval.0.i.i106 = phi i32 [ %sub.i.i103, %if.then.i.i104 ], [ %19, %if.end.i.i105 ]
  %20 = inttoptr i32 %retval.0.i.i106 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %21 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !126

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i107
  call void @__sanitizer_cov_trace_pc() #17
  %23 = inttoptr i32 %retval.0.i.i106 to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.31) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !168
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i107
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@lock_and_cleanup_extent_if_need, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !155

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %20, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %20) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, %num_pages
  br i1 %exitcond.not, label %put_page.exit.cleanup_crit_edge, label %put_page.exit.for.body_crit_edge

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

put_page.exit.cleanup_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then27.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @btrfs_put_ordered_extent(ptr noundef nonnull %call12) #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then27.critedge, %if.then.cleanup.thread_crit_edge
  %25 = ptrtoint ptr %lockstart to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %and, ptr %lockstart, align 8
  %26 = ptrtoint ptr %lockend to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %or, ptr %lockend, align 8
  br label %if.end29

cleanup:                                          ; preds = %put_page.exit.cleanup_crit_edge, %if.then20.cleanup_crit_edge
  tail call void @btrfs_start_ordered_extent(ptr noundef nonnull %call12, i32 noundef 1) #15
  tail call void @btrfs_put_ordered_extent(ptr noundef nonnull %call12) #15
  br label %cleanup62

if.end29:                                         ; preds = %cleanup.thread, %entry.if.end29_crit_edge
  %ret.1 = phi i32 [ 0, %entry.if.end29_crit_edge ], [ 1, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp31114.not = icmp eq i32 %num_pages, 0
  br i1 %cmp31114.not, label %if.end29.cleanup62_crit_edge, label %if.end29.for.body33_crit_edge

if.end29.for.body33_crit_edge:                    ; preds = %if.end29
  br label %for.body33

if.end29.cleanup62_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup62

for.body33:                                       ; preds = %if.end52.for.body33_crit_edge, %if.end29.for.body33_crit_edge
  %i.1115 = phi i32 [ %inc60, %if.end52.for.body33_crit_edge ], [ 0, %if.end29.for.body33_crit_edge ]
  %arrayidx34 = getelementptr ptr, ptr %pages, i32 %i.1115
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx34, align 4
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !123

if.then.i.i:                                      ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %31, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %28 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %32, %if.end.i.i ]
  %33 = inttoptr i32 %retval.0.i.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i = icmp eq i32 %35, -1
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %29, align 4
  %and.i16.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !126

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !123

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i18.i = add i32 %37, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %28 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %38, %if.end.i20.i ]
  %39 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.32) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !172
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !123

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i25.i = add i32 %37, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %28 to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %40, %if.end.i27.i ]
  %41 = inttoptr i32 %retval.0.i28.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and1.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool36.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool36.not, label %do.end, label %PageLocked.exit.if.end52_crit_edge, !prof !126

PageLocked.exit.if.end52_crit_edge:               ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

do.end:                                           ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1461, i32 noundef 9, ptr noundef null) #15
  br label %if.end52

if.end52:                                         ; preds = %do.end, %PageLocked.exit.if.end52_crit_edge
  %inc60 = add nuw i32 %i.1115, 1
  %exitcond121.not = icmp eq i32 %inc60, %num_pages
  br i1 %exitcond121.not, label %if.end52.cleanup62_crit_edge, label %if.end52.for.body33_crit_edge

if.end52.for.body33_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body33

if.end52.cleanup62_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup62

cleanup62:                                        ; preds = %if.end52.cleanup62_crit_edge, %if.end29.cleanup62_crit_edge, %cleanup
  %retval.1 = phi i32 [ -11, %cleanup ], [ %ret.1, %if.end29.cleanup62_crit_edge ], [ %ret.1, %if.end52.cleanup62_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_copy_from_user(i64 noundef %pos, i32 noundef %write_bytes, ptr nocapture noundef readonly %prepared_pages, ptr noundef %i) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_bytes)
  %cmp.not54 = icmp eq i32 %write_bytes, 0
  br i1 %cmp.not54, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %conv = trunc i64 %pos to i32
  %and = and i32 %conv, 4095
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %write_bytes.addr.059 = phi i32 [ %sub14, %cleanup.while.body_crit_edge ], [ %write_bytes, %while.body.preheader ]
  %offset.058 = phi i32 [ %spec.select43, %cleanup.while.body_crit_edge ], [ %and, %while.body.preheader ]
  %pg.057 = phi i32 [ %spec.select, %cleanup.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %total_copied.055 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %sub = sub i32 4096, %offset.058
  %0 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %write_bytes.addr.059)
  %arrayidx = getelementptr ptr, ptr %prepared_pages, i32 %pg.057
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @copy_page_from_iter_atomic(ptr noundef %2, i32 noundef %offset.058, i32 noundef %0, ptr noundef %i) #15
  tail call void @flush_dcache_page(ptr noundef %2) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %0)
  %cmp4 = icmp ult i32 %call, %0
  br i1 %cmp4, label %if.then, label %while.body.cleanup_crit_edge, !prof !126

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %while.body
  %call7 = tail call fastcc i32 @PageUptodate(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iov_iter_revert(ptr noundef %i, i32 noundef %call) #15
  br label %while.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end.while.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %sub14 = sub i32 %write_bytes.addr.059, %call
  %add = add i32 %call, %total_copied.055
  %add15 = add i32 %call, %offset.058
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add15)
  %cmp16 = icmp eq i32 %add15, 4096
  %inc = zext i1 %cmp16 to i32
  %spec.select = add i32 %pg.057, %inc
  %spec.select43 = select i1 %cmp16, i32 0, i32 %add15
  %cmp.not = icmp eq i32 %sub14, 0
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge, %if.end.thread, %entry.while.end_crit_edge
  %total_copied.053 = phi i32 [ %total_copied.055, %if.end.thread ], [ 0, %entry.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ], [ %total_copied.055, %if.end.while.end_crit_edge ]
  ret i32 %total_copied.053
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_delalloc_release_metadata(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_delalloc_release_space(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_drop_pages(ptr noundef %fs_info, ptr nocapture noundef readonly %pages, i32 noundef %num_pages, i64 noundef %pos, i64 noundef %copied) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  %sub = add i32 %1, -1
  %conv = zext i32 %sub to i64
  %neg = xor i64 %conv, -1
  %and = and i64 %neg, %pos
  %add = add i64 %pos, -1
  %sub1 = add i64 %add, %copied
  %or = or i64 %sub1, %conv
  %add5 = add i64 %or, 1
  %sub6 = sub i64 %add5, %and
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub6)
  %cmp = icmp ult i64 %sub6, 4294967296
  br i1 %cmp, label %for.cond.preheader, label %cond.false, !prof !123

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp925.not = icmp eq i32 %num_pages, 0
  br i1 %cmp925.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv11 = trunc i64 %sub6 to i32
  br label %for.body

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str, i32 noundef 421) #18
  unreachable

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.026
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @btrfs_page_clamp_clear_checked(ptr noundef %fs_info, ptr noundef %3, i64 noundef %and, i32 noundef %conv11) #15
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @unlock_page(ptr noundef %5) #15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !123

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %13 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !126

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.31) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !168
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !170
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@btrfs_drop_pages, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !155

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %12, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %12) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %num_pages
  br i1 %exitcond.not, label %put_page.exit.for.end_crit_edge, label %put_page.exit.for.body_crit_edge

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagecache_isize_extended(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulist_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_extent_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepare_uptodate_page(ptr nocapture noundef readonly %inode, ptr noundef %page, i64 noundef %pos, i1 noundef zeroext %force_uptodate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %pos, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  %brmerge = or i1 %tobool.not, %force_uptodate
  br i1 %brmerge, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !123

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !123

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.27) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !173
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %if.then, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !174
  br label %cleanup

if.then:                                          ; preds = %folio_flags.exit.i.i
  %call3 = tail call i32 @btrfs_readpage(ptr noundef null, ptr noundef %page) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 788) #15
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %0, align 4
  %and.i.i24 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %and.i.i24, 0
  br i1 %tobool.not.i.i25, label %if.end.i.i28, label %if.then.i.i27, !prof !123

if.then.i.i27:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i26 = add i32 %12, -1
  br label %_compound_head.exit.i32

if.end.i.i28:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i32

_compound_head.exit.i32:                          ; preds = %if.end.i.i28, %if.then.i.i27
  %retval.0.i.i29 = phi i32 [ %sub.i.i26, %if.then.i.i27 ], [ %13, %if.end.i.i28 ]
  %14 = inttoptr i32 %retval.0.i.i29 to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i.i30 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i30)
  %tobool.not.i.i.i31 = icmp eq i32 %and.i.i.i.i30, 0
  br i1 %tobool.not.i.i.i31, label %folio_flags.exit.i.i34, label %if.then.i.i.i33, !prof !123

if.then.i.i.i33:                                  ; preds = %_compound_head.exit.i32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.27) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !173
  unreachable

folio_flags.exit.i.i34:                           ; preds = %_compound_head.exit.i32
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %14, i32 noundef 4) #15
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %14, align 4
  %and.i.i4.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i34.if.then.i35_crit_edge

folio_flags.exit.i.i34.if.then.i35_crit_edge:     ; preds = %folio_flags.exit.i.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i35

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i34
  tail call void @llvm.prefetch.p0(ptr %14, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #15, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !176
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i35_crit_edge

folio_trylock.exit.i.if.then.i35_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i35

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lock_page.exit

if.then.i35:                                      ; preds = %folio_trylock.exit.i.if.then.i35_crit_edge, %folio_flags.exit.i.i34.if.then.i35_crit_edge
  tail call void @__folio_lock(ptr noundef %14) #15
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i35, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %0, align 4
  %and.i.i36 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i37, label %if.end.i.i40, label %if.then.i.i39, !prof !123

if.then.i.i39:                                    ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i38 = add i32 %22, -1
  br label %_compound_head.exit.i44

if.end.i.i40:                                     ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i44

_compound_head.exit.i44:                          ; preds = %if.end.i.i40, %if.then.i.i39
  %retval.0.i.i41 = phi i32 [ %sub.i.i38, %if.then.i.i39 ], [ %23, %if.end.i.i40 ]
  %24 = inttoptr i32 %retval.0.i.i41 to ptr
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i.i42 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i42)
  %tobool.not.i.i.i43 = icmp eq i32 %and.i.i.i.i42, 0
  br i1 %tobool.not.i.i.i43, label %folio_flags.exit.i.i47, label %if.then.i.i.i45, !prof !123

if.then.i.i.i45:                                  ; preds = %_compound_head.exit.i44
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.27) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !173
  unreachable

folio_flags.exit.i.i47:                           ; preds = %_compound_head.exit.i44
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %24, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i46 = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i46, label %if.then8, label %PageUptodate.exit50

PageUptodate.exit50:                              ; preds = %folio_flags.exit.i.i47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !174
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mapping, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %33 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_mapping, align 8
  %cmp.not = icmp eq ptr %32, %34
  br i1 %cmp.not, label %lor.lhs.false10, label %PageUptodate.exit50.if.then13_crit_edge

PageUptodate.exit50.if.then13_crit_edge:          ; preds = %PageUptodate.exit50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.then8:                                         ; preds = %folio_flags.exit.i.i47
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unlock_page(ptr noundef %page) #15
  br label %cleanup

lor.lhs.false10:                                  ; preds = %PageUptodate.exit50
  %35 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i = icmp eq i32 %36, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !126

if.then.i:                                        ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.30) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #15, !srcloc !177
  unreachable

PagePrivate.exit:                                 ; preds = %lor.lhs.false10
  %37 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %page, align 4
  %39 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool12.not = icmp eq i32 %39, 0
  br i1 %tobool12.not, label %PagePrivate.exit.if.then13_crit_edge, label %PagePrivate.exit.cleanup_crit_edge

PagePrivate.exit.cleanup_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

PagePrivate.exit.if.then13_crit_edge:             ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.then13:                                        ; preds = %PagePrivate.exit.if.then13_crit_edge, %PageUptodate.exit50.if.then13_crit_edge
  tail call void @unlock_page(ptr noundef %page) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %PagePrivate.exit.cleanup_crit_edge, %if.then8, %if.then.cleanup_crit_edge, %PageUptodate.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then13 ], [ -5, %if.then8 ], [ %call3, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %PagePrivate.exit.cleanup_crit_edge ], [ 0, %PageUptodate.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @PageUptodate(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !123

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !123

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.27) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !173
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge, label %do.end.i

folio_flags.exit.i.folio_test_uptodate.exit_crit_edge: ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_test_uptodate.exit

do.end.i:                                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !174
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %do.end.i, %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge
  %.lobit = lshr exact i32 %10, 2
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_start_ordered_extent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter_atomic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_page_mkwrite(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsverity_file_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_alloc_data_chunk_ondemand(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_truncate_block(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_zero_range(ptr noundef %inode, i64 noundef %offset, i64 noundef %len, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %data_reserved = alloca ptr, align 4
  %alloc_hint = alloca i64, align 8
  %cached_state = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_reserved) #15
  %4 = ptrtoint ptr %data_reserved to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data_reserved, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %alloc_hint) #15
  %5 = ptrtoint ptr %alloc_hint to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %alloc_hint, align 8
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %6 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sectorsize.i, align 4
  %conv = zext i32 %7 to i64
  %sub = add nsw i64 %conv, -1
  %neg = sub nsw i64 0, %conv
  %and = and i64 %neg, %offset
  %add = add i64 %len, %offset
  %sub4 = add i64 %add, -1
  %or = or i64 %sub, %sub4
  tail call void @inode_dio_wait(ptr noundef %inode) #15
  %add6 = sub i64 1, %and
  %sub8 = add i64 %add6, %or
  %call9 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0, i64 noundef %and, i64 noundef %sub8) #15
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %call9 to i32
  br label %if.end196

if.end:                                           ; preds = %entry
  %start = getelementptr inbounds %struct.extent_map, ptr %call9, i32 0, i32 1
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %and)
  %cmp.not = icmp ugt i64 %10, %and
  br i1 %cmp.not, label %if.end.if.end35_crit_edge, label %land.lhs.true

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.extent_map, ptr %call9, i32 0, i32 11
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %land.lhs.true.if.end35_crit_edge, label %if.then14

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then14:                                        ; preds = %land.lhs.true
  %len16 = getelementptr inbounds %struct.extent_map, ptr %call9, i32 0, i32 2
  %14 = ptrtoint ptr %len16 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %len16, align 8
  %add17 = add i64 %15, %10
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add17)
  %cmp19.not = icmp ugt i64 %add, %add17
  br i1 %cmp19.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.then14
  %and26 = and i64 %add17, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26)
  %cmp27 = icmp eq i64 %and26, 0
  br i1 %cmp27, label %cleanup.thread, label %cond.false, !prof !123

cond.false:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str, i32 noundef 3233) #18
  unreachable

cleanup.thread:                                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %sub32 = sub i64 %add, %add17
  %block_start = getelementptr inbounds %struct.extent_map, ptr %call9, i32 0, i32 8
  %16 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %block_start, align 8
  %add34 = add i64 %17, %15
  %18 = ptrtoint ptr %alloc_hint to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add34, ptr %alloc_hint, align 8
  %.pre406 = add i64 %add, -1
  br label %if.end35

cleanup:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @free_extent_map(ptr noundef %call9) #15
  %call23 = tail call fastcc i32 @btrfs_fallocate_update_isize(ptr noundef %inode, i64 noundef %add, i32 noundef %mode)
  br label %if.end196

if.end35:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %sub37.pre-phi = phi i64 [ %.pre406, %cleanup.thread ], [ %sub4, %land.lhs.true.if.end35_crit_edge ], [ %sub4, %if.end.if.end35_crit_edge ]
  %offset.addr.1 = phi i64 [ %add17, %cleanup.thread ], [ %offset, %land.lhs.true.if.end35_crit_edge ], [ %offset, %if.end.if.end35_crit_edge ]
  %len.addr.1 = phi i64 [ %sub32, %cleanup.thread ], [ %len, %land.lhs.true.if.end35_crit_edge ], [ %len, %if.end.if.end35_crit_edge ]
  %alloc_start.1 = phi i64 [ %add17, %cleanup.thread ], [ %and, %land.lhs.true.if.end35_crit_edge ], [ %and, %if.end.if.end35_crit_edge ]
  tail call void @free_extent_map(ptr noundef %call9) #15
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 168
  %19 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom = zext i32 %20 to i64
  %shr = ashr i64 %offset.addr.1, %sh_prom
  %shr40 = ashr i64 %sub37.pre-phi, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %shr40)
  %cmp41 = icmp eq i64 %shr, %shr40
  br i1 %cmp41, label %if.then43, label %if.end76

if.then43:                                        ; preds = %if.end35
  %call45 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0, i64 noundef %alloc_start.1, i64 noundef %conv) #15
  %cmp.i350 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i350, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %call45 to i32
  br label %if.end196

if.end49:                                         ; preds = %if.then43
  %flags50 = getelementptr inbounds %struct.extent_map, ptr %call45, i32 0, i32 11
  %22 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags50, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool52.not = icmp eq i32 %24, 0
  br i1 %tobool52.not, label %if.end56, label %if.then53

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @free_extent_map(ptr noundef %call45) #15
  %call55 = tail call fastcc i32 @btrfs_fallocate_update_isize(ptr noundef %inode, i64 noundef %add, i32 noundef %mode)
  br label %if.end196

if.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_cmp8(i64 %len.addr.1, i64 %conv)
  %cmp57 = icmp ult i64 %len.addr.1, %conv
  br i1 %cmp57, label %land.lhs.true59, label %if.end56.if.end71_crit_edge

if.end56.if.end71_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

land.lhs.true59:                                  ; preds = %if.end56
  %block_start60 = getelementptr inbounds %struct.extent_map, ptr %call45, i32 0, i32 8
  %25 = ptrtoint ptr %block_start60 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %block_start60, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %26)
  %cmp61.not = icmp eq i64 %26, -3
  br i1 %cmp61.not, label %land.lhs.true59.if.end71_crit_edge, label %if.then63

land.lhs.true59.if.end71_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then63:                                        ; preds = %land.lhs.true59
  tail call void @free_extent_map(ptr noundef %call45) #15
  %call65 = tail call i32 @btrfs_truncate_block(ptr noundef %add.ptr.i, i64 noundef %offset.addr.1, i64 noundef %len.addr.1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.then63.cleanup197_crit_edge

if.then63.cleanup197_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup197

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #17
  %call69 = tail call fastcc i32 @btrfs_fallocate_update_isize(ptr noundef %inode, i64 noundef %add, i32 noundef %mode)
  br label %cleanup197

if.end71:                                         ; preds = %land.lhs.true59.if.end71_crit_edge, %if.end56.if.end71_crit_edge
  tail call void @free_extent_map(ptr noundef %call45) #15
  %and74 = and i64 %offset.addr.1, %neg
  %add75 = add i64 %and74, %conv
  br label %reserve_space

if.end76:                                         ; preds = %if.end35
  %sub77 = add i64 %offset.addr.1, -1
  %or79 = or i64 %sub77, %sub
  %add80 = add i64 %or79, 1
  %and84 = and i64 %add, %neg
  %and86 = and i64 %offset.addr.1, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and86)
  %cmp87 = icmp eq i64 %and86, 0
  br i1 %cmp87, label %if.end76.if.end113_crit_edge, label %if.then89

if.end76.if.end113_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.then89:                                        ; preds = %if.end76
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_root, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fs_info.i.i, align 8
  %sectorsize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %30, i32 0, i32 167
  %31 = ptrtoint ptr %sectorsize.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sectorsize.i.i, align 4
  %conv.i = zext i32 %32 to i64
  %neg.i = sub nsw i64 0, %conv.i
  %and.i = and i64 %offset.addr.1, %neg.i
  %call1.i = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0, i64 noundef %and.i, i64 noundef %conv.i) #15
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %btrfs_zero_range_check_range_boundary.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then89
  %block_start.i = getelementptr inbounds %struct.extent_map, ptr %call1.i, i32 0, i32 8
  %33 = ptrtoint ptr %block_start.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %block_start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %34)
  %cmp.i353 = icmp eq i64 %34, -3
  br i1 %cmp.i353, label %if.end.i.btrfs_zero_range_check_range_boundary.exit.thread_crit_edge, label %if.else.i

if.end.i.btrfs_zero_range_check_range_boundary.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_zero_range_check_range_boundary.exit.thread

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i = getelementptr inbounds %struct.extent_map, ptr %call1.i, i32 0, i32 11
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags.i, align 4
  %37 = lshr i32 %36, 2
  %.lobit.i = and i32 %37, 1
  br label %btrfs_zero_range_check_range_boundary.exit.thread

btrfs_zero_range_check_range_boundary.exit.thread: ; preds = %if.else.i, %if.end.i.btrfs_zero_range_check_range_boundary.exit.thread_crit_edge
  %ret.0.i = phi i32 [ 2, %if.end.i.btrfs_zero_range_check_range_boundary.exit.thread_crit_edge ], [ %.lobit.i, %if.else.i ]
  tail call void @free_extent_map(ptr noundef %call1.i) #15
  br label %if.end95

btrfs_zero_range_check_range_boundary.exit:       ; preds = %if.then89
  %38 = ptrtoint ptr %call1.i to i32
  %cmp92 = icmp slt ptr %call1.i, null
  br i1 %cmp92, label %btrfs_zero_range_check_range_boundary.exit.if.end196_crit_edge, label %btrfs_zero_range_check_range_boundary.exit.if.end95_crit_edge

btrfs_zero_range_check_range_boundary.exit.if.end95_crit_edge: ; preds = %btrfs_zero_range_check_range_boundary.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

btrfs_zero_range_check_range_boundary.exit.if.end196_crit_edge: ; preds = %btrfs_zero_range_check_range_boundary.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end196

if.end95:                                         ; preds = %btrfs_zero_range_check_range_boundary.exit.if.end95_crit_edge, %btrfs_zero_range_check_range_boundary.exit.thread
  %retval.0.i390 = phi i32 [ %ret.0.i, %btrfs_zero_range_check_range_boundary.exit.thread ], [ %38, %btrfs_zero_range_check_range_boundary.exit.if.end95_crit_edge ]
  %39 = zext i32 %retval.0.i390 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %retval.0.i390, label %if.end95.if.end113_crit_edge [
    i32 2, label %if.then98
    i32 0, label %if.then104
  ]

if.end95.if.end113_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  %and101 = and i64 %offset.addr.1, %neg
  br label %if.end113

if.then104:                                       ; preds = %if.end95
  %call106 = tail call i32 @btrfs_truncate_block(ptr noundef %add.ptr.i, i64 noundef %offset.addr.1, i64 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then104.if.end113_crit_edge, label %if.then104.if.end196_crit_edge

if.then104.if.end196_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end196

if.then104.if.end113_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.end113:                                        ; preds = %if.then104.if.end113_crit_edge, %if.then98, %if.end95.if.end113_crit_edge, %if.end76.if.end113_crit_edge
  %alloc_start.2 = phi i64 [ %add80, %if.end76.if.end113_crit_edge ], [ %and101, %if.then98 ], [ %add80, %if.then104.if.end113_crit_edge ], [ %add80, %if.end95.if.end113_crit_edge ]
  %and116 = and i64 %add, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and116)
  %cmp117 = icmp eq i64 %and116, 0
  br i1 %cmp117, label %if.end113.reserve_space_crit_edge, label %if.then119

if.end113.reserve_space_crit_edge:                ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %reserve_space

if.then119:                                       ; preds = %if.end113
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 8
  %fs_info.i.i356 = getelementptr inbounds %struct.btrfs_root, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %fs_info.i.i356 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fs_info.i.i356, align 8
  %sectorsize.i.i357 = getelementptr inbounds %struct.btrfs_fs_info, ptr %43, i32 0, i32 167
  %44 = ptrtoint ptr %sectorsize.i.i357 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sectorsize.i.i357, align 4
  %conv.i358 = zext i32 %45 to i64
  %neg.i359 = sub nsw i64 0, %conv.i358
  %and.i360 = and i64 %add, %neg.i359
  %call1.i361 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0, i64 noundef %and.i360, i64 noundef %conv.i358) #15
  %cmp.i.i362 = icmp ugt ptr %call1.i361, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i362, label %btrfs_zero_range_check_range_boundary.exit373, label %if.end.i366

if.end.i366:                                      ; preds = %if.then119
  %block_start.i364 = getelementptr inbounds %struct.extent_map, ptr %call1.i361, i32 0, i32 8
  %46 = ptrtoint ptr %block_start.i364 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %block_start.i364, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %47)
  %cmp.i365 = icmp eq i64 %47, -3
  br i1 %cmp.i365, label %if.end.i366.btrfs_zero_range_check_range_boundary.exit373.thread_crit_edge, label %if.else.i369

if.end.i366.btrfs_zero_range_check_range_boundary.exit373.thread_crit_edge: ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_zero_range_check_range_boundary.exit373.thread

if.else.i369:                                     ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i367 = getelementptr inbounds %struct.extent_map, ptr %call1.i361, i32 0, i32 11
  %48 = ptrtoint ptr %flags.i367 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags.i367, align 4
  %50 = lshr i32 %49, 2
  %.lobit.i368 = and i32 %50, 1
  br label %btrfs_zero_range_check_range_boundary.exit373.thread

btrfs_zero_range_check_range_boundary.exit373.thread: ; preds = %if.else.i369, %if.end.i366.btrfs_zero_range_check_range_boundary.exit373.thread_crit_edge
  %ret.0.i370 = phi i32 [ 2, %if.end.i366.btrfs_zero_range_check_range_boundary.exit373.thread_crit_edge ], [ %.lobit.i368, %if.else.i369 ]
  tail call void @free_extent_map(ptr noundef %call1.i361) #15
  br label %if.end126

btrfs_zero_range_check_range_boundary.exit373:    ; preds = %if.then119
  %51 = ptrtoint ptr %call1.i361 to i32
  %cmp123 = icmp slt ptr %call1.i361, null
  br i1 %cmp123, label %btrfs_zero_range_check_range_boundary.exit373.if.end196_crit_edge, label %btrfs_zero_range_check_range_boundary.exit373.if.end126_crit_edge

btrfs_zero_range_check_range_boundary.exit373.if.end126_crit_edge: ; preds = %btrfs_zero_range_check_range_boundary.exit373
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126

btrfs_zero_range_check_range_boundary.exit373.if.end196_crit_edge: ; preds = %btrfs_zero_range_check_range_boundary.exit373
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end196

if.end126:                                        ; preds = %btrfs_zero_range_check_range_boundary.exit373.if.end126_crit_edge, %btrfs_zero_range_check_range_boundary.exit373.thread
  %retval.0.i372393 = phi i32 [ %ret.0.i370, %btrfs_zero_range_check_range_boundary.exit373.thread ], [ %51, %btrfs_zero_range_check_range_boundary.exit373.if.end126_crit_edge ]
  %52 = zext i32 %retval.0.i372393 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %retval.0.i372393, label %if.end126.reserve_space_crit_edge [
    i32 2, label %if.then129
    i32 0, label %if.then138
  ]

if.end126.reserve_space_crit_edge:                ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #17
  br label %reserve_space

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #17
  %or133 = or i64 %sub37.pre-phi, %sub
  %add134 = add i64 %or133, 1
  br label %reserve_space

if.then138:                                       ; preds = %if.end126
  %call141 = tail call i32 @btrfs_truncate_block(ptr noundef %add.ptr.i, i64 noundef %add, i64 noundef 0, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.then138.reserve_space_crit_edge, label %if.then138.if.end196_crit_edge

if.then138.if.end196_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end196

if.then138.reserve_space_crit_edge:               ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #17
  br label %reserve_space

reserve_space:                                    ; preds = %if.then138.reserve_space_crit_edge, %if.then129, %if.end126.reserve_space_crit_edge, %if.end113.reserve_space_crit_edge, %if.end71
  %alloc_start.3 = phi i64 [ %and74, %if.end71 ], [ %alloc_start.2, %if.end113.reserve_space_crit_edge ], [ %alloc_start.2, %if.then129 ], [ %alloc_start.2, %if.then138.reserve_space_crit_edge ], [ %alloc_start.2, %if.end126.reserve_space_crit_edge ]
  %alloc_end.0 = phi i64 [ %add75, %if.end71 ], [ %and84, %if.end113.reserve_space_crit_edge ], [ %add134, %if.then129 ], [ %and84, %if.then138.reserve_space_crit_edge ], [ %and84, %if.end126.reserve_space_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %alloc_end.0, i64 %alloc_start.3)
  %cmp149 = icmp ugt i64 %alloc_end.0, %alloc_start.3
  br i1 %cmp149, label %if.then151, label %reserve_space.if.end187_crit_edge

reserve_space.if.end187_crit_edge:                ; preds = %reserve_space
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end187

if.then151:                                       ; preds = %reserve_space
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cached_state) #15
  %53 = ptrtoint ptr %cached_state to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %cached_state, align 4
  %sub152 = add i64 %alloc_end.0, -1
  %sub153 = sub i64 %alloc_end.0, %alloc_start.3
  %call155 = tail call i32 @btrfs_alloc_data_chunk_ondemand(ptr noundef %add.ptr.i, i64 noundef %sub153) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %if.then151.cleanup182.thread_crit_edge, label %if.end159

if.then151.cleanup182.thread_crit_edge:           ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup182.thread

if.end159:                                        ; preds = %if.then151
  %call160 = call fastcc i32 @btrfs_punch_hole_lock_range(ptr noundef %inode, i64 noundef %alloc_start.3, i64 noundef %sub152, ptr noundef nonnull %cached_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end159.cleanup182.thread_crit_edge

if.end159.cleanup182.thread_crit_edge:            ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup182.thread

if.end163:                                        ; preds = %if.end159
  %call165 = call i32 @btrfs_qgroup_reserve_data(ptr noundef %add.ptr.i, ptr noundef nonnull %data_reserved, i64 noundef %alloc_start.3, i64 noundef %sub153) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end170, label %if.then167

if.then167:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #17
  %io_tree = getelementptr i8, ptr %inode, i32 -736
  %call.i = call i32 @__clear_extent_bit(ptr noundef %io_tree, i64 noundef %alloc_start.3, i64 noundef %sub152, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %cached_state, i32 noundef 3136, ptr noundef null) #15
  br label %cleanup182.thread

if.end170:                                        ; preds = %if.end163
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %54 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %i_blkbits.i, align 2
  %conv.i378 = zext i8 %55 to i32
  %shl.i = shl nuw i32 1, %conv.i378
  %conv173 = zext i32 %shl.i to i64
  %call175 = call i32 @btrfs_prealloc_file_range(ptr noundef %inode, i32 noundef %mode, i64 noundef %alloc_start.3, i64 noundef %sub153, i64 noundef %conv173, i64 noundef %add, ptr noundef nonnull %alloc_hint) #15
  %io_tree177 = getelementptr i8, ptr %inode, i32 -736
  %call.i380 = call i32 @__clear_extent_bit(ptr noundef %io_tree177, i64 noundef %alloc_start.3, i64 noundef %sub152, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %cached_state, i32 noundef 3136, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool179.not = icmp eq i32 %call175, 0
  br i1 %tobool179.not, label %cleanup182, label %if.end170.cleanup182.thread_crit_edge

if.end170.cleanup182.thread_crit_edge:            ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup182.thread

cleanup182.thread:                                ; preds = %if.end170.cleanup182.thread_crit_edge, %if.then167, %if.end159.cleanup182.thread_crit_edge, %if.then151.cleanup182.thread_crit_edge
  %ret.2.ph = phi i32 [ %call175, %if.end170.cleanup182.thread_crit_edge ], [ %call160, %if.end159.cleanup182.thread_crit_edge ], [ %call155, %if.then151.cleanup182.thread_crit_edge ], [ %call165, %if.then167 ]
  %extract.t.ph = phi i1 [ false, %if.end170.cleanup182.thread_crit_edge ], [ true, %if.end159.cleanup182.thread_crit_edge ], [ false, %if.then151.cleanup182.thread_crit_edge ], [ true, %if.then167 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state) #15
  br label %out

cleanup182:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_state) #15
  br label %if.end187

if.end187:                                        ; preds = %cleanup182, %reserve_space.if.end187_crit_edge
  %bytes_to_reserve.0 = phi i64 [ %sub153, %cleanup182 ], [ 0, %reserve_space.if.end187_crit_edge ]
  %call189 = call fastcc i32 @btrfs_fallocate_update_isize(ptr noundef %inode, i64 noundef %add, i32 noundef %mode)
  br label %out

out:                                              ; preds = %if.end187, %cleanup182.thread
  %ret.3 = phi i32 [ %call189, %if.end187 ], [ %ret.2.ph, %cleanup182.thread ]
  %bytes_to_reserve.1 = phi i64 [ %bytes_to_reserve.0, %if.end187 ], [ %sub153, %cleanup182.thread ]
  %space_reserved.2.off0 = phi i1 [ %cmp149, %if.end187 ], [ %extract.t.ph, %cleanup182.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool190.not = icmp eq i32 %ret.3, 0
  %space_reserved.2.off0.not = xor i1 %space_reserved.2.off0, true
  %brmerge = select i1 %tobool190.not, i1 true, i1 %space_reserved.2.off0.not
  br i1 %brmerge, label %out.if.end196_crit_edge, label %if.then194

out.if.end196_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end196

if.then194:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data_reserved, align 4
  call void @btrfs_free_reserved_data_space(ptr noundef %add.ptr.i, ptr noundef %57, i64 noundef %alloc_start.3, i64 noundef %bytes_to_reserve.1) #15
  br label %if.end196

if.end196:                                        ; preds = %if.then194, %out.if.end196_crit_edge, %if.then138.if.end196_crit_edge, %btrfs_zero_range_check_range_boundary.exit373.if.end196_crit_edge, %if.then104.if.end196_crit_edge, %btrfs_zero_range_check_range_boundary.exit.if.end196_crit_edge, %if.then53, %if.then47, %cleanup, %if.then
  %ret.3405 = phi i32 [ %ret.3, %out.if.end196_crit_edge ], [ %ret.3, %if.then194 ], [ %call106, %if.then104.if.end196_crit_edge ], [ %38, %btrfs_zero_range_check_range_boundary.exit.if.end196_crit_edge ], [ %call141, %if.then138.if.end196_crit_edge ], [ %51, %btrfs_zero_range_check_range_boundary.exit373.if.end196_crit_edge ], [ %call55, %if.then53 ], [ %21, %if.then47 ], [ %call23, %cleanup ], [ %8, %if.then ]
  %58 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data_reserved, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.end196.cleanup197_crit_edge, label %extent_changeset_release.exit.i

if.end196.cleanup197_crit_edge:                   ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup197

extent_changeset_release.exit.i:                  ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %59, align 4
  %range_changed.i.i = getelementptr inbounds %struct.extent_changeset, ptr %59, i32 0, i32 1
  call void @ulist_release(ptr noundef %range_changed.i.i) #15
  call void @kfree(ptr noundef nonnull %59) #15
  br label %cleanup197

cleanup197:                                       ; preds = %extent_changeset_release.exit.i, %if.end196.cleanup197_crit_edge, %if.then67, %if.then63.cleanup197_crit_edge
  %retval.0 = phi i32 [ %call65, %if.then63.cleanup197_crit_edge ], [ %call69, %if.then67 ], [ %ret.3405, %if.end196.cleanup197_crit_edge ], [ %ret.3405, %extent_changeset_release.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %alloc_hint) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_reserved) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lookup_first_ordered_extent(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_falloc_range(ptr noundef %head, i64 noundef %start, i64 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %1, %head
  br i1 %cmp.i.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %start1 = getelementptr inbounds %struct.falloc_range, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start1, align 8
  %len2 = getelementptr inbounds %struct.falloc_range, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %len2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len2, align 8
  %add = add i64 %7, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %start)
  %cmp = icmp eq i64 %add, %start
  br i1 %cmp, label %if.then3, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %add5 = add i64 %7, %len
  %8 = ptrtoint ptr %len2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add5, ptr %len2, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 24) #23
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %start11 = getelementptr inbounds %struct.falloc_range, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %start11 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %start, ptr %start11, align 8
  %len12 = getelementptr inbounds %struct.falloc_range, ptr %call7.i, i32 0, i32 2
  %11 = ptrtoint ptr %len12 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %len, ptr %len12, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %13, ptr noundef %head) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %prev.i, align 4
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %head, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i, ptr %13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_qgroup_reserve_data(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_prealloc_file_range(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_fallocate_update_isize(ptr noundef %inode, i64 noundef %end, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %and = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %end)
  %cmp.not = icmp ult i64 %call2, %end
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 1) #15
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #15
  %3 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %end)
  call void @btrfs_inode_safe_disk_i_size_write(ptr noundef %add.ptr.i, i64 noundef 0) #15
  %call10 = call i32 @btrfs_update_inode(ptr noundef %call3, ptr noundef %1, ptr noundef %add.ptr.i) #15
  %call11 = call i32 @btrfs_end_transaction(ptr noundef %call3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  %call11.call10 = select i1 %tobool12.not, i32 %call11, i32 %call10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %call11.call10, %if.end7 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_punch_hole_lock_range(ptr noundef %inode, i64 noundef %lockstart, i64 noundef %lockend, ptr noundef %cached_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i64 %lockstart, -1
  %or = or i64 %sub, 4095
  %add = add i64 %or, 1
  %add1 = add i64 %lockend, 1
  %and = and i64 %add1, -4096
  %sub2 = add i64 %and, -1
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %io_tree = getelementptr i8, ptr %inode, i32 -736
  %i_mapping57 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %sub20 = sub i64 1, %lockstart
  %add21 = add i64 %sub20, %lockend
  br label %while.cond

while.cond:                                       ; preds = %if.end16.while.cond_crit_edge, %entry
  tail call void @truncate_pagecache_range(ptr noundef %inode, i64 noundef %lockstart, i64 noundef %lockend) #15
  %call3 = tail call i32 @lock_extent_bits(ptr noundef %io_tree, i64 noundef %lockstart, i64 noundef %lockend, ptr noundef %cached_state) #15
  %call5 = tail call ptr @btrfs_lookup_first_ordered_extent(ptr noundef %add.ptr.i, i64 noundef %lockend) #15
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %0 = ptrtoint ptr %call5 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %call5, align 8
  %num_bytes = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call5, i32 0, i32 2
  %2 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %num_bytes, align 8
  %add6 = add i64 %3, %1
  call void @__sanitizer_cov_trace_cmp8(i64 %add6, i64 %lockstart)
  %cmp.not = icmp ule i64 %add6, %lockstart
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %lockend)
  %cmp9 = icmp ugt i64 %1, %lockend
  %or.cond = or i1 %cmp9, %cmp.not
  br i1 %or.cond, label %land.lhs.true.thread, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15

land.lhs.true:                                    ; preds = %while.cond
  %4 = ptrtoint ptr %i_mapping57 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping57, align 8
  %call10 = tail call zeroext i1 @filemap_range_has_page(ptr noundef %5, i64 noundef %add, i64 noundef %sub2) #15
  br i1 %call10, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.cleanup27_crit_edge

land.lhs.true.cleanup27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup27

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

land.lhs.true.thread:                             ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %i_mapping57 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping57, align 8
  %call1058 = tail call zeroext i1 @filemap_range_has_page(ptr noundef %7, i64 noundef %add, i64 noundef %sub2) #15
  br i1 %call1058, label %land.lhs.true.thread.if.then15_crit_edge, label %if.then12

land.lhs.true.thread.if.then15_crit_edge:         ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15

if.then12:                                        ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @btrfs_put_ordered_extent(ptr noundef nonnull %call5) #15
  br label %cleanup27

if.then15:                                        ; preds = %land.lhs.true.thread.if.then15_crit_edge, %lor.lhs.false.if.then15_crit_edge
  tail call void @btrfs_put_ordered_extent(ptr noundef nonnull %call5) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true.if.end16_crit_edge
  %call.i = tail call i32 @__clear_extent_bit(ptr noundef %io_tree, i64 noundef %lockstart, i64 noundef %lockend, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef %cached_state, i32 noundef 3136, ptr noundef null) #15
  %call22 = tail call i32 @btrfs_wait_ordered_range(ptr noundef %inode, i64 noundef %lockstart, i64 noundef %add21) #15
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end16.while.cond_crit_edge, label %if.end16.cleanup27_crit_edge

if.end16.cleanup27_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup27

if.end16.while.cond_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

cleanup27:                                        ; preds = %if.end16.cleanup27_crit_edge, %if.then12, %land.lhs.true.cleanup27_crit_edge
  %retval.2 = phi i32 [ 0, %if.then12 ], [ %call22, %if.end16.cleanup27_crit_edge ], [ 0, %land.lhs.true.cleanup27_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_range_has_page(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_inode_safe_disk_i_size_write(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold noreturn }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/file.c", i32 242, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/file.c", i32 466, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/file.c", i32 633, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/file.c", i32 701, i32 2}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../fs/btrfs/file.c", i32 753, i32 7}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/file.c", i32 755, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/file.c", i32 957, i32 5}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @btrfs_drop_extents.__UNIQUE_ID_ddebug940, !13, !"__UNIQUE_ID_ddebug940", i1 false, i1 false}
!18 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @btrfs_drop_extents.__UNIQUE_ID_ddebug941, !20, !"__UNIQUE_ID_ddebug941", i1 false, i1 false}
!20 = !{!"../fs/btrfs/file.c", i32 981, i32 4}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/file.c", i32 1104, i32 3}
!23 = distinct !{null, !22, !"__UNIQUE_ID_ddebug944", i1 false, i1 false}
!24 = distinct !{null, !25, !"__UNIQUE_ID_ddebug945", i1 false, i1 false}
!25 = !{!"../fs/btrfs/file.c", i32 1111, i32 3}
!26 = distinct !{null, !27, !"__UNIQUE_ID_ddebug946", i1 false, i1 false}
!27 = !{!"../fs/btrfs/file.c", i32 1117, i32 3}
!28 = !{ptr @btrfs_mark_extent_written.__UNIQUE_ID_ddebug947, !29, !"__UNIQUE_ID_ddebug947", i1 false, i1 false}
!29 = !{!"../fs/btrfs/file.c", i32 1193, i32 4}
!30 = !{ptr @btrfs_mark_extent_written.__UNIQUE_ID_ddebug948, !31, !"__UNIQUE_ID_ddebug948", i1 false, i1 false}
!31 = !{!"../fs/btrfs/file.c", i32 1219, i32 4}
!32 = distinct !{null, !33, !"__UNIQUE_ID_ddebug949", i1 false, i1 false}
!33 = !{!"../fs/btrfs/file.c", i32 1228, i32 5}
!34 = !{ptr @btrfs_mark_extent_written.__UNIQUE_ID_ddebug950, !35, !"__UNIQUE_ID_ddebug950", i1 false, i1 false}
!35 = !{!"../fs/btrfs/file.c", i32 1255, i32 4}
!36 = !{ptr @btrfs_mark_extent_written.__UNIQUE_ID_ddebug951, !37, !"__UNIQUE_ID_ddebug951", i1 false, i1 false}
!37 = !{!"../fs/btrfs/file.c", i32 1273, i32 4}
!38 = !{ptr @btrfs_mark_extent_written.__UNIQUE_ID_ddebug952, !39, !"__UNIQUE_ID_ddebug952", i1 false, i1 false}
!39 = !{!"../fs/btrfs/file.c", i32 1296, i32 4}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/btrfs/file.c", i32 2342, i32 2}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/btrfs/file.c", i32 2756, i32 5}
!44 = !{ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug963, !43, !"__UNIQUE_ID_ddebug963", i1 false, i1 false}
!45 = !{ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug964, !46, !"__UNIQUE_ID_ddebug964", i1 false, i1 false}
!46 = !{!"../fs/btrfs/file.c", i32 2773, i32 5}
!47 = !{ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug965, !48, !"__UNIQUE_ID_ddebug965", i1 false, i1 false}
!48 = !{!"../fs/btrfs/file.c", i32 2792, i32 5}
!49 = !{ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug966, !50, !"__UNIQUE_ID_ddebug966", i1 false, i1 false}
!50 = !{!"../fs/btrfs/file.c", i32 2806, i32 5}
!51 = !{ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug967, !52, !"__UNIQUE_ID_ddebug967", i1 false, i1 false}
!52 = !{!"../fs/btrfs/file.c", i32 2883, i32 4}
!53 = !{ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug968, !54, !"__UNIQUE_ID_ddebug968", i1 false, i1 false}
!54 = !{!"../fs/btrfs/file.c", i32 2891, i32 4}
!55 = !{ptr @btrfs_replace_file_extents.__UNIQUE_ID_ddebug969, !56, !"__UNIQUE_ID_ddebug969", i1 false, i1 false}
!56 = !{!"../fs/btrfs/file.c", i32 2901, i32 4}
!57 = !{ptr @btrfs_file_operations, !58, !"btrfs_file_operations", i1 false, i1 false}
!58 = !{!"../fs/btrfs/file.c", i32 3771, i32 30}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/btrfs/file.c", i32 3796, i32 48}
!61 = !{ptr @btrfs_inode_defrag_cachep, !62, !"btrfs_inode_defrag_cachep", i1 false, i1 false}
!62 = !{!"../fs/btrfs/file.c", i32 34, i32 27}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!67 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!71 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @assertfail._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @assertfail._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!77 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/trace/events/btrfs.h", i32 684, i32 1}
!80 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!82 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!85 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/btrfs/tree-log.h", i32 45, i32 2}
!88 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/btrfs/file.c", i32 2625, i32 2}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/mm.h", i32 717, i32 2}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/btrfs/file.c", i32 421, i32 2}
!105 = !{ptr @btrfs_file_vm_ops, !106, !"btrfs_file_vm_ops", i1 false, i1 false}
!106 = !{!"../fs/btrfs/file.c", i32 2354, i32 42}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/btrfs/file.c", i32 3048, i32 2}
!109 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/btrfs/file.c", i32 3233, i32 3}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148756229, i64 2148756255, i64 2148756284, i64 2148756318, i64 2148756349, i64 2148756372}
!122 = !{i64 2152439371}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 1160909, i64 1160970}
!125 = !{i64 1163641}
!126 = !{!"branch_weights", i32 1, i32 2000}
!127 = !{i64 1163926}
!128 = !{i64 2152448221}
!129 = !{i64 2152458175}
!130 = !{i64 2152467670}
!131 = !{i64 2152477147}
!132 = !{i64 2148758694, i64 2148758720, i64 2148758749, i64 2148758783, i64 2148758814, i64 2148758837}
!133 = !{i64 2152599060}
!134 = !{i64 2152598902}
!135 = !{i64 2152599230}
!136 = !{i64 2150185044}
!137 = !{i64 2158407743, i64 2158408225, i64 2158407780, i64 2158407836, i64 2158407870, i64 2158407894, i64 2158407935, i64 2158407956, i64 2158407984, i64 2158408018}
!138 = !{i64 2152600991}
!139 = !{i64 2150077296}
!140 = !{i64 2150082230}
!141 = !{i64 2150103948}
!142 = !{i64 2150108842}
!143 = !{i64 2150185369}
!144 = !{i64 2150185694}
!145 = !{i64 2152612853}
!146 = !{!"auto-init"}
!147 = !{i8 0, i8 2}
!148 = !{i64 2158657613, i64 2158658093, i64 2158657650, i64 2158657706, i64 2158657740, i64 2158657764, i64 2158657805, i64 2158657826, i64 2158657854, i64 2158657888}
!149 = !{i64 2158660501, i64 2158660981, i64 2158660538, i64 2158660594, i64 2158660628, i64 2158660652, i64 2158660693, i64 2158660714, i64 2158660742, i64 2158660776}
!150 = !{i64 2158663514, i64 2158663994, i64 2158663551, i64 2158663607, i64 2158663641, i64 2158663665, i64 2158663706, i64 2158663727, i64 2158663755, i64 2158663789}
!151 = !{i64 2158665600, i64 2158666080, i64 2158665637, i64 2158665693, i64 2158665727, i64 2158665751, i64 2158665792, i64 2158665813, i64 2158665841, i64 2158665875}
!152 = !{i64 2158671228, i64 2158671708, i64 2158671265, i64 2158671321, i64 2158671355, i64 2158671379, i64 2158671420, i64 2158671441, i64 2158671469, i64 2158671503}
!153 = !{i64 2158672845, i64 2158673325, i64 2158672882, i64 2158672938, i64 2158672972, i64 2158672996, i64 2158673037, i64 2158673058, i64 2158673086, i64 2158673120}
!154 = !{i64 2158674708, i64 2158675188, i64 2158674745, i64 2158674801, i64 2158674835, i64 2158674859, i64 2158674900, i64 2158674921, i64 2158674949, i64 2158674983}
!155 = !{i64 2148580827, i64 2148580832, i64 2148580845, i64 2148580889, i64 2148580923, i64 2148580944}
!156 = !{i64 2158679796, i64 2158680276, i64 2158679833, i64 2158679889, i64 2158679923, i64 2158679947, i64 2158679988, i64 2158680009, i64 2158680037, i64 2158680071}
!157 = !{i64 2158738222}
!158 = !{i64 2155481402}
!159 = !{i64 2155481623}
!160 = !{i64 2149577234}
!161 = !{i64 2149578270}
!162 = !{i64 2158742112, i64 2158742593, i64 2158742149, i64 2158742205, i64 2158742239, i64 2158742263, i64 2158742304, i64 2158742325, i64 2158742353, i64 2158742387}
!163 = !{i64 2158758183, i64 2158758664, i64 2158758220, i64 2158758276, i64 2158758310, i64 2158758334, i64 2158758375, i64 2158758396, i64 2158758424, i64 2158758458}
!164 = !{i64 2154880725}
!165 = !{i64 2152271525}
!166 = !{i64 2152271732}
!167 = !{i64 2154862312}
!168 = !{i64 2153254045, i64 2153254528, i64 2153254082, i64 2153254138, i64 2153254172, i64 2153254196, i64 2153254237, i64 2153254258, i64 2153254286, i64 2153254320}
!169 = !{i64 2148844705}
!170 = !{i64 2148759414, i64 2148759446, i64 2148759475, i64 2148759509, i64 2148759540, i64 2148759563}
!171 = !{i64 2148844934}
!172 = !{i64 2150672407, i64 2150672898, i64 2150672444, i64 2150672500, i64 2150672534, i64 2150672558, i64 2150672599, i64 2150672620, i64 2150672648, i64 2150672682}
!173 = !{i64 2150664974, i64 2150665465, i64 2150665011, i64 2150665067, i64 2150665101, i64 2150665125, i64 2150665166, i64 2150665187, i64 2150665215, i64 2150665249}
!174 = !{i64 2151414866}
!175 = !{i64 2148765087, i64 2148765119, i64 2148765148, i64 2148765182, i64 2148765213, i64 2148765236}
!176 = !{i64 2148854192}
!177 = !{i64 2151123680, i64 2151124171, i64 2151123717, i64 2151123773, i64 2151123807, i64 2151123831, i64 2151123872, i64 2151123893, i64 2151123921, i64 2151123955}
