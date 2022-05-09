; ModuleID = '/llk/IR_all_yes/fs/btrfs/compression.c_pt.bc'
source_filename = "../fs/btrfs/compression.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.workspace_manager = type { %struct.list_head, %struct.spinlock, i32, %struct.atomic_t, %struct.wait_queue_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_compress_op = type { ptr, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
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
%struct.compressed_bio = type { %struct.refcount_struct, i32, ptr, ptr, i64, i32, i32, i8, i8, i32, ptr, [0 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.btrfs_io_geometry = type { i64, i64, i64, i64, i64, i64 }
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
%struct.extent_map = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, %struct.refcount_struct, i32, %struct.list_head }
%struct.map_lookup = type { i64, i32, i32, i64, i32, i32, i32, [0 x %struct.btrfs_io_stripe] }
%struct.btrfs_io_stripe = type { ptr, i64, i64 }
%struct.btrfs_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i64, ptr, ptr, i32, i32, i8, %struct.seqcount, i64, i64, i64, i64, i32, i32, i64, i32, [16 x i8], i64, i64, ptr, %struct.completion, ptr, i32, %struct.atomic_t, [5 x %struct.atomic_t], %struct.extent_io_tree, %struct.completion, %struct.kobject, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
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
%struct.heuristic_ws = type { ptr, i32, ptr, ptr, %struct.list_head }
%struct.bucket_item = type { i32 }

@btrfs_compress_types = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"IS_ALIGNED(start, fs_info->sectorsize) && IS_ALIGNED(len, fs_info->sectorsize)\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/btrfs/compression.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cur_disk_bytenr != next_stripe_start\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"IS_ALIGNED(real_size, fs_info->sectorsize)\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"refcount_read(&cb->pending_sectors)\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"em->compress_type != BTRFS_COMPRESS_NONE\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cur_disk_byte != next_stripe_start\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"added == real_size\00", [45 x i8] zeroinitializer }, align 32
@heuristic_wsm = internal global { %struct.workspace_manager, [48 x i8] } zeroinitializer, align 32
@btrfs_heuristic_compress = dso_local constant { %struct.btrfs_compress_op, [20 x i8] } { %struct.btrfs_compress_op { ptr @heuristic_wsm, i32 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@btrfs_compress_op = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @btrfs_heuristic_compress, ptr @btrfs_zlib_compress, ptr @btrfs_lzo_compress, ptr @btrfs_zstd_compress], [16 x i8] zeroinitializer }, align 32
@btrfs_get_workspace._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 6000, i32 1, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.btrfs_get_workspace = private unnamed_addr constant [20 x i8] c"btrfs_get_workspace\00", align 1
@btrfs_get_workspace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.btrfs_get_workspace, ptr @.str.1, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014BTRFS: no compression workspaces, low memory, retrying\0A\00", [38 x i8] zeroinitializer }, align 32
@btrfs_get_workspace._entry_ptr = internal global ptr @btrfs_get_workspace._entry, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"copy_len\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"copy_start - decompressed < buf_len\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zlib\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lzo\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zstd\00", [27 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@btrfs_op.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/btrfs/volumes.h\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bi_size && bi_size <= cb->compressed_len\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bio->bi_iter.bi_size\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@bio_first_bvec_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/bio.h\00", [44 x i8] zeroinitializer }, align 32
@bio_last_bvec_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@btrfs_print_data_csum_error._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.btrfs_print_data_csum_error = private unnamed_addr constant [28 x i8] c"btrfs_print_data_csum_error\00", align 1
@.str.27 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014csum failed root %lld ino %lld off %llu csum 0x%*phN expected csum 0x%*phN mirror %d\00", [41 x i8] zeroinitializer }, align 32
@btrfs_print_data_csum_error._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014csum failed root %llu ino %llu off %llu csum 0x%*phN expected csum 0x%*phN mirror %d\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bio\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"!bio->bi_status\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"!bio_flagged(bio, BIO_CLONED)\00", [34 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@btrfs_zlib_compress = external dso_local constant %struct.btrfs_compress_op, align 4
@btrfs_lzo_compress = external dso_local constant %struct.btrfs_compress_op, align 4
@btrfs_zstd_compress = external dso_local constant %struct.btrfs_compress_op, align 4
@btrfs_init_workspace_manager.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&wsm->ws_lock\00", [18 x i8] zeroinitializer }, align 32
@btrfs_init_workspace_manager.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&wsm->ws_wait\00", [18 x i8] zeroinitializer }, align 32
@btrfs_init_workspace_manager._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.1, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014BTRFS: cannot preallocate compression workspace, will try later\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"btrfs_init_workspace_manager\00", [35 x i8] zeroinitializer }, align 32
@btrfs_init_workspace_manager._entry_ptr = internal global ptr @btrfs_init_workspace_manager._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 13]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"btrfs_compress_types\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 35, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 521, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 560, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 571, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 627, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 827, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 896, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 913, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"heuristic_wsm\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1024, i32 33 }
@___asan_gen_.75 = private unnamed_addr constant [25 x i8] c"btrfs_heuristic_compress\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1065, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"btrfs_compress_op\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1069, i32 47 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1221, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1226, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1464, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1470, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 35, i32 53 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 35, i32 57 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 35, i32 65 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 35, i32 72 }
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 3491, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [22 x i8] c"../fs/btrfs/volumes.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 479, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 224, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 432, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 416, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 717, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"../include/linux/bio.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 248, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 402, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [26 x i8] c"../fs/btrfs/btrfs_inode.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 410, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 256, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 257, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 262, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1116, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1118, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [26 x i8] c"../fs/btrfs/compression.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1126, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @btrfs_get_workspace._entry, ptr @btrfs_get_workspace._entry_ptr, ptr @btrfs_init_workspace_manager._entry, ptr @btrfs_init_workspace_manager._entry_ptr, ptr @btrfs_compress_types, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @heuristic_wsm, ptr @btrfs_heuristic_compress, ptr @btrfs_compress_op, ptr @btrfs_get_workspace._rs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @btrfs_print_data_csum_error._rs, ptr @.str.27, ptr @btrfs_print_data_csum_error._rs.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @btrfs_init_workspace_manager.__key, ptr @.str.33, ptr @btrfs_init_workspace_manager.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_compress_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heuristic_wsm to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_heuristic_compress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_compress_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_get_workspace._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_get_workspace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_data_csum_error._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_print_data_csum_error._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_workspace_manager.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_workspace_manager.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_workspace_manager._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @btrfs_compress_type2str(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %switch = icmp ult i32 %type, 4
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [4 x ptr], ptr @btrfs_compress_types, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %sw.bb ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_compress_is_valid_type(ptr nocapture noundef readonly %str, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp1 = icmp ult i32 %len, 4
  br i1 %cmp1, label %for.inc, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.13, ptr noundef %str, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup6_crit_edge, label %if.end.1

if.end.cleanup6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup6

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp1.1.not = icmp eq i32 %len, 3
  br i1 %cmp1.1.not, label %if.end.1.thread, label %for.inc.for.inc.2_crit_edge

for.inc.for.inc.2_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.end.1:                                         ; preds = %if.end
  %call3.1 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.14, ptr noundef %str, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool.not.1, label %if.end.1.cleanup6_crit_edge, label %if.end.2

if.end.1.cleanup6_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup6

if.end.1.thread:                                  ; preds = %for.inc
  %call3.116 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.14, ptr noundef %str, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.116)
  %tobool.not.117 = icmp eq i32 %call3.116, 0
  br i1 %tobool.not.117, label %if.end.1.thread.cleanup6_crit_edge, label %if.end.1.thread.for.inc.2_crit_edge

if.end.1.thread.for.inc.2_crit_edge:              ; preds = %if.end.1.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.end.1.thread.cleanup6_crit_edge:               ; preds = %if.end.1.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup6

if.end.2:                                         ; preds = %if.end.1
  %call3.2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.15, ptr noundef %str, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %tobool.not.2 = icmp eq i32 %call3.2, 0
  br i1 %tobool.not.2, label %if.end.2.cleanup6_crit_edge, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.end.2.cleanup6_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup6

for.inc.2:                                        ; preds = %if.end.2.for.inc.2_crit_edge, %if.end.1.thread.for.inc.2_crit_edge, %for.inc.for.inc.2_crit_edge
  br label %cleanup6

cleanup6:                                         ; preds = %for.inc.2, %if.end.2.cleanup6_crit_edge, %if.end.1.thread.cleanup6_crit_edge, %if.end.1.cleanup6_crit_edge, %if.end.cleanup6_crit_edge
  %cmp.lcssa = phi i1 [ true, %if.end.cleanup6_crit_edge ], [ true, %if.end.1.cleanup6_crit_edge ], [ true, %if.end.2.cleanup6_crit_edge ], [ false, %for.inc.2 ], [ true, %if.end.1.thread.cleanup6_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @btrfs_submit_compressed_write(ptr noundef %inode, i64 noundef %start, i32 noundef %len, i64 noundef %disk_start, i32 noundef %compressed_len, ptr noundef %compressed_pages, i32 noundef %nr_pages, i32 noundef %write_flags, ptr noundef readnone %blkcg_css) local_unnamed_addr #4 align 64 {
entry:
  %next_stripe_start = alloca i64, align 8
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_stripe_start) #18
  %4 = ptrtoint ptr %next_stripe_start to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %next_stripe_start, align 8, !annotation !103
  %flags = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 27
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 1
  %call = tail call zeroext i1 @btrfs_use_zone_append(ptr noundef %inode, i64 noundef %disk_start) #18
  %cond = select i1 %call, i32 13, i32 1
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %7 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %8 to i64
  %sub = add nsw i64 %conv, -1
  %and2 = and i64 %sub, %start
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %cmp = icmp eq i64 %and2, 0
  %sub5 = add i32 %8, -1
  %and6 = and i32 %sub5, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 0
  %9 = select i1 %cmp, i1 %cmp7, i1 false, !prof !104
  br i1 %9, label %if.end8.i, label %cond.false, !prof !104

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 522) #21
  unreachable

if.end8.i:                                        ; preds = %entry
  %csum_size.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 169
  %10 = ptrtoint ptr %csum_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %csum_size.i, align 4
  %sub.i = add i32 %sub5, %compressed_len
  %div.i = udiv i32 %sub.i, %8
  %mul.i = mul i32 %11, %div.i
  %add2.i = add i32 %mul.i, 48
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i, i32 noundef 3136) #22
  %tobool13.not = icmp eq ptr %call9.i, null
  br i1 %tobool13.not, label %if.end8.i.cleanup200_crit_edge, label %if.end

if.end8.i.cleanup200_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup200

if.end:                                           ; preds = %if.end8.i
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 168
  %12 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %compressed_len, %13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef 4) #18
  %14 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %shr, ptr %call9.i, align 128
  %errors = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 8
  %15 = ptrtoint ptr %errors to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %errors, align 1
  %vfs_inode = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37
  %inode14 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 3
  %16 = ptrtoint ptr %inode14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vfs_inode, ptr %inode14, align 4
  %start15 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 4
  %17 = ptrtoint ptr %start15 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %start, ptr %start15, align 16
  %len16 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 5
  %18 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %len, ptr %len16, align 8
  %mirror_num = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 9
  %19 = ptrtoint ptr %mirror_num to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %mirror_num, align 4
  %compressed_pages17 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 2
  %20 = ptrtoint ptr %compressed_pages17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %compressed_pages, ptr %compressed_pages17, align 8
  %compressed_len18 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 6
  %21 = ptrtoint ptr %compressed_len18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %compressed_len, ptr %compressed_len18, align 4
  %orig_bio = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 10
  %22 = ptrtoint ptr %orig_bio to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %orig_bio, align 8
  %nr_pages19 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 1
  %23 = ptrtoint ptr %nr_pages19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %nr_pages, ptr %nr_pages19, align 4
  %conv20 = zext i32 %compressed_len to i64
  %add = add i64 %conv20, %disk_start
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %disk_start)
  %cmp21348 = icmp ugt i64 %add, %disk_start
  br i1 %cmp21348, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %or = or i32 %cond, %write_flags
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool119.not = icmp eq i32 %and, 0
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %bio.0351 = phi ptr [ null, %while.body.lr.ph ], [ %bio.2, %cleanup.while.body_crit_edge ]
  %cur_disk_bytenr.0349 = phi i64 [ %disk_start, %while.body.lr.ph ], [ %add106, %cleanup.while.body_crit_edge ]
  %sub23 = sub i64 %cur_disk_bytenr.0349, %disk_start
  %shr24 = lshr i64 %sub23, 12
  %conv25 = trunc i64 %shr24 to i32
  %arrayidx = getelementptr ptr, ptr %compressed_pages, i32 %conv25
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool26.not = icmp eq ptr %bio.0351, null
  br i1 %tobool26.not, label %if.then27, label %while.body.if.end34_crit_edge

while.body.if.end34_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then27:                                        ; preds = %while.body
  %call28 = call fastcc ptr @alloc_compressed_bio(ptr noundef nonnull %call9.i, i64 noundef %cur_disk_bytenr.0349, i32 noundef %or, ptr noundef nonnull @end_compressed_bio_write, ptr noundef nonnull %next_stripe_start)
  %cmp.i305 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i305, label %finish_cb.thread, label %if.then27.if.end34_crit_edge

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

finish_cb.thread:                                 ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %call28 to i32
  %call32 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %26) #18
  br label %if.end143

if.end34:                                         ; preds = %if.then27.if.end34_crit_edge, %while.body.if.end34_crit_edge
  %bio.1 = phi ptr [ %bio.0351, %while.body.if.end34_crit_edge ], [ %call28, %if.then27.if.end34_crit_edge ]
  %27 = ptrtoint ptr %next_stripe_start to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %next_stripe_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %cur_disk_bytenr.0349)
  %cmp35.not = icmp eq i64 %28, %cur_disk_bytenr.0349
  br i1 %cmp35.not, label %cond.false44, label %cond.end45, !prof !105

cond.false44:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 560) #21
  unreachable

cond.end45:                                       ; preds = %if.end34
  %sub46 = sub i64 %28, %cur_disk_bytenr.0349
  %29 = tail call i64 @llvm.umin.i64(i64 %sub46, i64 4294967295)
  %30 = trunc i64 %29 to i32
  %conv55 = trunc i64 %sub23 to i32
  %and56 = and i32 %conv55, 4095
  %sub57 = sub nuw nsw i32 4096, %and56
  %31 = tail call i32 @llvm.umin.i32(i32 %sub57, i32 %30)
  %conv67 = zext i32 %31 to i64
  %sub69 = sub i64 %conv20, %sub23
  call void @__sanitizer_cov_trace_cmp8(i64 %sub69, i64 %conv67)
  %cmp71 = icmp ugt i64 %sub69, %conv67
  %extract.t300 = trunc i64 %sub69 to i32
  %cond76.off0 = select i1 %cmp71, i32 %31, i32 %extract.t300
  %32 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sectorsize, align 4
  %sub79 = add i32 %33, -1
  %and80 = and i32 %sub79, %cond76.off0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %cmp81 = icmp eq i32 %and80, 0
  br i1 %cmp81, label %cond.end91, label %cond.false90, !prof !104

cond.false90:                                     ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 571) #21
  unreachable

cond.end91:                                       ; preds = %cond.end45
  br i1 %call, label %if.then93, label %if.else

if.then93:                                        ; preds = %cond.end91
  call void @__sanitizer_cov_trace_pc() #20
  %call96 = tail call i32 @bio_add_zone_append_page(ptr noundef %bio.1, ptr noundef %25, i32 noundef %cond76.off0, i32 noundef %and56) #18
  br label %if.end100

if.else:                                          ; preds = %cond.end91
  call void @__sanitizer_cov_trace_pc() #20
  %call99 = tail call i32 @bio_add_page(ptr noundef %bio.1, ptr noundef %25, i32 noundef %cond76.off0, i32 noundef %and56) #18
  br label %if.end100

if.end100:                                        ; preds = %if.else, %if.then93
  %added.0 = phi i32 [ %call96, %if.then93 ], [ %call99, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %added.0)
  %cmp101 = icmp eq i32 %added.0, 0
  %conv105 = zext i32 %added.0 to i64
  %add106 = add i64 %cur_disk_bytenr.0349, %conv105
  call void @__sanitizer_cov_trace_cmp8(i64 %add106, i64 %28)
  %cmp107 = icmp eq i64 %add106, %28
  call void @__sanitizer_cov_trace_cmp8(i64 %add106, i64 %add)
  %cmp113 = icmp eq i64 %add106, %add
  %34 = select i1 %cmp113, i1 true, i1 %cmp107
  %brmerge = select i1 %34, i1 true, i1 %cmp101
  br i1 %brmerge, label %if.then118, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then118:                                       ; preds = %if.end100
  br i1 %tobool119.not, label %if.then120, label %if.then118.if.end125_crit_edge

if.then118.if.end125_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end125

if.then120:                                       ; preds = %if.then118
  %call121 = tail call zeroext i8 @btrfs_csum_one_bio(ptr noundef %inode, ptr noundef %bio.1, i64 noundef %start, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call121)
  %tobool122.not = icmp eq i8 %call121, 0
  br i1 %tobool122.not, label %if.then120.if.end125_crit_edge, label %if.then120.finish_cb_crit_edge

if.then120.finish_cb_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #20
  br label %finish_cb

if.then120.if.end125_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end125

if.end125:                                        ; preds = %if.then120.if.end125_crit_edge, %if.then118.if.end125_crit_edge
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio.1, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.end.i, !prof !105

cond.false.i:                                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.21, i32 noundef 432) #23
  unreachable

cond.end.i:                                       ; preds = %if.end125
  %call.i = tail call zeroext i8 @btrfs_bio_wq_end_io(ptr noundef %3, ptr noundef %bio.1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool3.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool3.not.i, label %submit_compressed_bio.exit, label %cond.end.i.finish_cb_crit_edge

cond.end.i.finish_cb_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %finish_cb

submit_compressed_bio.exit:                       ; preds = %cond.end.i
  %call4.i = tail call zeroext i8 @btrfs_map_bio(ptr noundef %3, ptr noundef %bio.1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i)
  %tobool127.not = icmp eq i8 %call4.i, 0
  br i1 %tobool127.not, label %submit_compressed_bio.exit.cleanup_crit_edge, label %submit_compressed_bio.exit.finish_cb_crit_edge

submit_compressed_bio.exit.finish_cb_crit_edge:   ; preds = %submit_compressed_bio.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %finish_cb

submit_compressed_bio.exit.cleanup_crit_edge:     ; preds = %submit_compressed_bio.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %submit_compressed_bio.exit.cleanup_crit_edge, %if.end100.cleanup_crit_edge
  %bio.2 = phi ptr [ null, %submit_compressed_bio.exit.cleanup_crit_edge ], [ %bio.1, %if.end100.cleanup_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 604, i32 noundef 0) #18
  %call.i307 = tail call i32 @__cond_resched() #18
  %cmp21 = icmp ult i64 %add106, %add
  br i1 %cmp21, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge
  %tobool138.not = icmp eq ptr %blkcg_css, null
  br i1 %tobool138.not, label %while.end.cleanup200_crit_edge, label %if.then139

while.end.cleanup200_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup200

if.then139:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kthread_associate_blkcg(ptr noundef null) #18
  br label %cleanup200

finish_cb:                                        ; preds = %submit_compressed_bio.exit.finish_cb_crit_edge, %cond.end.i.finish_cb_crit_edge, %if.then120.finish_cb_crit_edge
  %ret.2.ph = phi i8 [ %call4.i, %submit_compressed_bio.exit.finish_cb_crit_edge ], [ %call121, %if.then120.finish_cb_crit_edge ], [ %call.i, %cond.end.i.finish_cb_crit_edge ]
  %tobool141.not = icmp eq ptr %bio.1, null
  br i1 %tobool141.not, label %finish_cb.if.end143_crit_edge, label %if.then142

finish_cb.if.end143_crit_edge:                    ; preds = %finish_cb
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end143

if.then142:                                       ; preds = %finish_cb
  call void @__sanitizer_cov_trace_pc() #20
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio.1, i32 0, i32 6
  %37 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %ret.2.ph, ptr %bi_status, align 2
  tail call void @bio_endio(ptr noundef nonnull %bio.1) #18
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %finish_cb.if.end143_crit_edge, %finish_cb.thread
  %cur_disk_bytenr.1.ph329 = phi i64 [ %add106, %if.then142 ], [ %add106, %finish_cb.if.end143_crit_edge ], [ %cur_disk_bytenr.0349, %finish_cb.thread ]
  %ret.2322 = phi i8 [ %ret.2.ph, %if.then142 ], [ %ret.2.ph, %finish_cb.if.end143_crit_edge ], [ %call32, %finish_cb.thread ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %cur_disk_bytenr.1.ph329)
  %cmp146 = icmp eq i64 %add, %cur_disk_bytenr.1.ph329
  br i1 %cmp146, label %if.end143.cleanup200_crit_edge, label %do.body150

if.end143.cleanup200_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup200

do.body150:                                       ; preds = %if.end143
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 622) #18
  %call.i.i.i308 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef 4) #18
  %38 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %call9.i, align 128
  %conv156 = zext i32 %39 to i64
  %sub159 = sub i64 %add, %cur_disk_bytenr.1.ph329
  %40 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom = zext i32 %41 to i64
  %shr161 = lshr i64 %sub159, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr161, i64 %conv156)
  %cmp162 = icmp eq i64 %shr161, %conv156
  br i1 %cmp162, label %do.body150.do.end187_crit_edge, label %if.end165

do.body150.do.end187_crit_edge:                   ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end187

if.end165:                                        ; preds = %do.body150
  %call166 = tail call ptr @__var_waitqueue(ptr noundef nonnull %call9.i) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #18
  %42 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %43 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef nonnull %call9.i, i32 noundef 0) #18
  %call167352 = call i32 @prepare_to_wait_event(ptr noundef %call166, ptr noundef %42, i32 noundef 2) #18
  %call.i.i.i309353 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef 4) #18
  %44 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %call9.i, align 128
  %conv170354 = zext i32 %45 to i64
  %46 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom175355 = zext i32 %47 to i64
  %shr176356 = lshr i64 %sub159, %sh_prom175355
  call void @__sanitizer_cov_trace_cmp8(i64 %shr176356, i64 %conv170354)
  %cmp177357 = icmp eq i64 %shr176356, %conv170354
  br i1 %cmp177357, label %if.end165.for.end_crit_edge, label %if.end165.cleanup181_crit_edge

if.end165.cleanup181_crit_edge:                   ; preds = %if.end165
  br label %cleanup181

if.end165.for.end_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

cleanup181:                                       ; preds = %cleanup181.cleanup181_crit_edge, %if.end165.cleanup181_crit_edge
  call void @schedule() #18
  %call167 = call i32 @prepare_to_wait_event(ptr noundef %call166, ptr noundef %42, i32 noundef 2) #18
  %call.i.i.i309 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef 4) #18
  %48 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %call9.i, align 128
  %conv170 = zext i32 %49 to i64
  %50 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom175 = zext i32 %51 to i64
  %shr176 = lshr i64 %sub159, %sh_prom175
  %cmp177 = icmp eq i64 %shr176, %conv170
  br i1 %cmp177, label %cleanup181.for.end_crit_edge, label %cleanup181.cleanup181_crit_edge

cleanup181.cleanup181_crit_edge:                  ; preds = %cleanup181
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup181

cleanup181.for.end_crit_edge:                     ; preds = %cleanup181
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %cleanup181.for.end_crit_edge, %if.end165.for.end_crit_edge
  call void @finish_wait(ptr noundef %call166, ptr noundef %42) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #18
  br label %do.end187

do.end187:                                        ; preds = %for.end, %do.body150.do.end187_crit_edge
  %call.i.i.i310 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef 4) #18
  %52 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool190.not = icmp eq i32 %53, 0
  br i1 %tobool190.not, label %cond.false198, label %cond.end199, !prof !105

cond.false198:                                    ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 627) #21
  unreachable

cond.end199:                                      ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @finish_compressed_bio_write(ptr noundef nonnull %call9.i)
  br label %cleanup200

cleanup200:                                       ; preds = %cond.end199, %if.end143.cleanup200_crit_edge, %if.then139, %while.end.cleanup200_crit_edge, %if.end8.i.cleanup200_crit_edge
  %retval.0 = phi i8 [ %ret.2322, %cond.end199 ], [ 9, %if.end8.i.cleanup200_crit_edge ], [ 0, %if.then139 ], [ 0, %while.end.cleanup200_crit_edge ], [ %ret.2322, %if.end143.cleanup200_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_stripe_start) #18
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_use_zone_append(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #6 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #18, !srcloc !106
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_compressed_bio(ptr noundef %cb, i64 noundef %disk_bytenr, i32 noundef %opf, ptr noundef %endio_func, ptr nocapture noundef writeonly %next_stripe_start) unnamed_addr #4 align 64 {
entry:
  %geom = alloca %struct.btrfs_io_geometry, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 3
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %geom) #18
  %6 = call ptr @memset(ptr %geom, i32 255, i32 48)
  %call1 = tail call ptr @btrfs_bio_alloc(i32 noundef 256) #18
  %shr = lshr i64 %disk_bytenr, 9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 8
  %7 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shr, ptr %bi_iter, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 2
  %8 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %opf, ptr %bi_opf, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 11
  %9 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cb, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 10
  %10 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %endio_func, ptr %bi_end_io, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 167
  %11 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %12 to i64
  %call2 = tail call ptr @btrfs_get_chunk_map(ptr noundef %5, i64 noundef %disk_bytenr, i64 noundef %conv) #18
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @bio_put(ptr noundef %call1) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_opf, align 8
  %and = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and)
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %map_lookup = getelementptr inbounds %struct.extent_map, ptr %call2, i32 0, i32 12
  %15 = ptrtoint ptr %map_lookup to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map_lookup, align 4
  %stripes = getelementptr inbounds %struct.map_lookup, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %stripes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stripes, align 8
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 3
  %21 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %22, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call1, i32 0, i32 1
  %23 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %24, %20
  br i1 %cmp.not.i, label %if.then7.bio_set_dev.exit_crit_edge, label %if.then.i

if.then7.bio_set_dev.exit_crit_edge:              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  %conv1.i8.i = and i16 %22, -2177
  %25 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.then7.bio_set_dev.exit_crit_edge
  %26 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %20, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call1) #18
  br label %if.end8

if.end8:                                          ; preds = %bio_set_dev.exit, %if.end.if.end8_crit_edge
  %27 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bi_opf, align 8
  %trunc.i = trunc i32 %28 to i8
  %29 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %land.end.i [
    i8 3, label %if.end8.btrfs_op.exit_crit_edge
    i8 1, label %if.end8.sw.bb1.i_crit_edge
    i8 13, label %if.end8.sw.bb1.i_crit_edge41
    i8 0, label %if.end8.sw.bb34.i_crit_edge
  ]

if.end8.sw.bb34.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb34.i

if.end8.sw.bb1.i_crit_edge41:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1.i

if.end8.sw.bb1.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1.i

if.end8.btrfs_op.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %btrfs_op.exit

sw.bb1.i:                                         ; preds = %if.end8.sw.bb1.i_crit_edge, %if.end8.sw.bb1.i_crit_edge41
  br label %btrfs_op.exit

land.end.i:                                       ; preds = %if.end8
  %.b37.i = load i1, ptr @btrfs_op.__already_done, align 1
  br i1 %.b37.i, label %land.end.i.sw.bb34.i_crit_edge, label %if.then.i40, !prof !104

land.end.i.sw.bb34.i_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb34.i

if.then.i40:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @btrfs_op.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 479, i32 noundef 9, ptr noundef null) #18
  br label %sw.bb34.i

sw.bb34.i:                                        ; preds = %if.then.i40, %land.end.i.sw.bb34.i_crit_edge, %if.end8.sw.bb34.i_crit_edge
  br label %btrfs_op.exit

btrfs_op.exit:                                    ; preds = %sw.bb34.i, %sw.bb1.i, %if.end8.btrfs_op.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.bb34.i ], [ 1, %sw.bb1.i ], [ 2, %if.end8.btrfs_op.exit_crit_edge ]
  %call10 = call i32 @btrfs_get_io_geometry(ptr noundef %5, ptr noundef %call2, i32 noundef %retval.0.i, i64 noundef %disk_bytenr, ptr noundef nonnull %geom) #18
  call void @free_extent_map(ptr noundef %call2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %btrfs_op.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @bio_put(ptr noundef %call1) #18
  %30 = inttoptr i32 %call10 to ptr
  br label %cleanup

if.end15:                                         ; preds = %btrfs_op.exit
  call void @__sanitizer_cov_trace_pc() #20
  %31 = ptrtoint ptr %geom to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %geom, align 8
  %add = add i64 %32, %disk_bytenr
  %33 = ptrtoint ptr %next_stripe_start to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add, ptr %next_stripe_start, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then
  %retval.0 = phi ptr [ %call2, %if.then ], [ %30, %if.then13 ], [ %call1, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %geom) #18
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @end_compressed_bio_write(ptr noundef %bio) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %call = tail call fastcc zeroext i1 @dec_and_test_compressed_bio(ptr noundef %1, ptr noundef %bio)
  br i1 %call, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %inode = getelementptr inbounds %struct.compressed_bio, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 4
  %start = getelementptr inbounds %struct.compressed_bio, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  tail call void @btrfs_record_physical_zoned(ptr noundef %3, i64 noundef %5, ptr noundef %bio) #18
  tail call fastcc void @finish_compressed_bio_write(ptr noundef %1)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @bio_put(ptr noundef %bio) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_zone_append_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_csum_one_bio(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_associate_blkcg(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_compressed_bio_write(ptr noundef %cb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 3
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -864
  %start = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 4
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 5
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 8
  %conv = zext i32 %5 to i64
  %add = add i64 %3, -1
  %sub = add i64 %add, %conv
  %errors = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 8
  %6 = ptrtoint ptr %errors to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %errors, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  tail call void @btrfs_writepage_endio_finish_ordered(ptr noundef %add.ptr.i, ptr noundef null, i64 noundef %3, i64 noundef %sub, i1 noundef zeroext %tobool.not) #18
  tail call fastcc void @end_compressed_writeback(ptr noundef %1, ptr noundef %cb)
  %nr_pages = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 1
  %8 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp18.not = icmp eq i32 %9, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %compressed_pages = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %index.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %compressed_pages, align 8
  %arrayidx = getelementptr ptr, ptr %11, i32 %index.019
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mapping, align 4
  %15 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !104

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %13 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !105

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %22 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.24) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !107
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@finish_compressed_bio_write, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !111

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %19) #18
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %index.019, 1
  %24 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_pages, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %compressed_pages4 = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 2
  %26 = ptrtoint ptr %compressed_pages4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %compressed_pages4, align 8
  tail call void @kfree(ptr noundef %27) #18
  tail call void @kfree(ptr noundef %cb) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @btrfs_submit_compressed_read(ptr noundef %inode, ptr noundef %bio, i32 noundef %mirror_num, i32 noundef %bio_flags) local_unnamed_addr #4 align 64 {
entry:
  %next_stripe_start = alloca i64, align 8
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %4 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bi_iter, align 8
  %shl = shl i64 %5, 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_stripe_start) #18
  %6 = ptrtoint ptr %next_stripe_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %next_stripe_start, align 8, !annotation !103
  %extent_tree = getelementptr i8, ptr %inode, i32 -796
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %7 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bi_flags.i.i, align 4
  %9 = and i16 %8, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i.not.i = icmp eq i16 %9, 0
  br i1 %cmp.i.not.i, label %entry.bio_first_bvec_all.exit_crit_edge, label %land.rhs.i

entry.bio_first_bvec_all.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_first_bvec_all.exit

land.rhs.i:                                       ; preds = %entry
  %.b38.i = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.bio_first_bvec_all.exit_crit_edge, label %if.then.i390, !prof !104

land.rhs.i.bio_first_bvec_all.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_first_bvec_all.exit

if.then.i390:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 248, i32 noundef 9, ptr noundef null) #18
  br label %bio_first_bvec_all.exit

bio_first_bvec_all.exit:                          ; preds = %if.then.i390, %land.rhs.i.bio_first_bvec_all.exit_crit_edge, %entry.bio_first_bvec_all.exit_crit_edge
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %10 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bi_io_vec.i, align 8
  %bv_offset = getelementptr inbounds %struct.bio_vec, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_offset, align 4
  %conv = zext i32 %13 to i64
  %14 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bi_flags.i.i, align 4
  %16 = and i16 %15, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i.not.i.i = icmp eq i16 %16, 0
  br i1 %cmp.i.not.i.i, label %bio_first_bvec_all.exit.bio_first_page_all.exit_crit_edge, label %land.rhs.i.i

bio_first_bvec_all.exit.bio_first_page_all.exit_crit_edge: ; preds = %bio_first_bvec_all.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_first_page_all.exit

land.rhs.i.i:                                     ; preds = %bio_first_bvec_all.exit
  %.b38.i.i = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.bio_first_page_all.exit_crit_edge, label %if.then.i.i, !prof !104

land.rhs.i.i.bio_first_page_all.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_first_page_all.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 248, i32 noundef 9, ptr noundef null) #18
  br label %bio_first_page_all.exit

bio_first_page_all.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.bio_first_page_all.exit_crit_edge, %bio_first_bvec_all.exit.bio_first_page_all.exit_crit_edge
  %17 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bi_io_vec.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %22 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %add = add nuw nsw i64 %shl.i, %conv
  %lock = getelementptr i8, ptr %inode, i32 -780
  tail call void @_raw_read_lock(ptr noundef %lock) #18
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %23 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sectorsize, align 4
  %conv5 = zext i32 %24 to i64
  %call6 = tail call ptr @lookup_extent_mapping(ptr noundef %extent_tree, i64 noundef %add, i64 noundef %conv5) #18
  tail call void @_raw_read_unlock(ptr noundef %lock) #18
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %bio_first_page_all.exit.cleanup244_crit_edge, label %if.end

bio_first_page_all.exit.cleanup244_crit_edge:     ; preds = %bio_first_page_all.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup244

if.end:                                           ; preds = %bio_first_page_all.exit
  %compress_type = getelementptr inbounds %struct.extent_map, ptr %call6, i32 0, i32 14
  %25 = ptrtoint ptr %compress_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %compress_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not = icmp eq i32 %26, 0
  br i1 %cmp.not, label %cond.false, label %cond.end, !prof !105

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.5, i32 noundef 827) #21
  unreachable

cond.end:                                         ; preds = %if.end
  %block_len = getelementptr inbounds %struct.extent_map, ptr %call6, i32 0, i32 9
  %27 = ptrtoint ptr %block_len to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %block_len, align 8
  %conv11 = trunc i64 %28 to i32
  %csum_size.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 169
  %29 = ptrtoint ptr %csum_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %csum_size.i, align 4
  %add.i = add i32 %conv11, -1
  %31 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sectorsize, align 4
  %sub.i = add i32 %add.i, %32
  %div.i = udiv i32 %sub.i, %32
  %mul.i = mul i32 %30, %div.i
  %add2.i = add i32 %mul.i, 48
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i, i32 noundef 3136) #22
  %tobool14.not = icmp eq ptr %call9.i, null
  br i1 %tobool14.not, label %cond.end.out_crit_edge, label %if.end16

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end16:                                         ; preds = %cond.end
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 168
  %33 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %conv11, %34
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef 4) #18
  %35 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %shr, ptr %call9.i, align 128
  %errors = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 8
  %36 = ptrtoint ptr %errors to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %errors, align 1
  %inode17 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 3
  %37 = ptrtoint ptr %inode17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %inode, ptr %inode17, align 4
  %mirror_num18 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 9
  %38 = ptrtoint ptr %mirror_num18 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mirror_num, ptr %mirror_num18, align 4
  %sums19 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 11
  %orig_start = getelementptr inbounds %struct.extent_map, ptr %call6, i32 0, i32 5
  %39 = ptrtoint ptr %orig_start to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %orig_start, align 8
  %start = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 4
  %41 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %start, align 16
  %len = getelementptr inbounds %struct.extent_map, ptr %call6, i32 0, i32 2
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %len, align 8
  %start20 = getelementptr inbounds %struct.extent_map, ptr %call6, i32 0, i32 1
  %44 = ptrtoint ptr %start20 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %start20, align 8
  tail call void @free_extent_map(ptr noundef nonnull %call6) #18
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bi_size, align 8
  %len22 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 5
  %48 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %len22, align 8
  %compressed_len23 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 6
  %49 = ptrtoint ptr %compressed_len23 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv11, ptr %compressed_len23, align 4
  %shr.i = lshr i32 %bio_flags, 16
  %conv25 = trunc i32 %shr.i to i8
  %compress_type26 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 7
  %50 = ptrtoint ptr %compress_type26 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv25, ptr %compress_type26, align 32
  %orig_bio = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 10
  %51 = ptrtoint ptr %orig_bio to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %bio, ptr %orig_bio, align 8
  %sub = add i32 %conv11, 4095
  %div385 = lshr i32 %sub, 12
  %52 = shl nuw nsw i32 %div385, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 3392) #22
  %compressed_pages = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 2
  %53 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call8.i.i, ptr %compressed_pages, align 8
  %tobool30.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool30.not, label %if.end16.fail1_crit_edge, label %for.cond.preheader

if.end16.fail1_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail1

for.cond.preheader:                               ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp33446.not = icmp ult i32 %sub, 4096
  br i1 %cmp33446.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div385, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %pg_index.0447 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  %54 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %compressed_pages, align 8
  %arrayidx = getelementptr ptr, ptr %55, i32 %pg_index.0447
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  %57 = load ptr, ptr %compressed_pages, align 8
  %arrayidx38 = getelementptr ptr, ptr %57, i32 %pg_index.0447
  %58 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %59, null
  br i1 %tobool39.not, label %while.cond175.preheader, label %for.inc

while.cond175.preheader:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pg_index.0447)
  %cmp176455.not = icmp eq i32 %pg_index.0447, 0
  br i1 %cmp176455.not, label %while.cond175.preheader.while.end181_crit_edge, label %while.cond175.preheader.while.body178_crit_edge

while.cond175.preheader.while.body178_crit_edge:  ; preds = %while.cond175.preheader
  br label %while.body178

while.cond175.preheader.while.end181_crit_edge:   ; preds = %while.cond175.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end181

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %pg_index.0447, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %nr_pages44 = getelementptr inbounds %struct.compressed_bio, ptr %call9.i, i32 0, i32 1
  %60 = ptrtoint ptr %nr_pages44 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %div385, ptr %nr_pages44, align 4
  %add45 = add i64 %45, %43
  tail call fastcc void @add_ra_bio_pages(ptr noundef %inode, i64 noundef %add45, ptr noundef nonnull %call9.i)
  %61 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bi_size, align 8
  %63 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %len22, align 8
  %conv50 = and i64 %28, 4294967295
  %add51 = add i64 %conv50, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %add51)
  %cmp52501 = icmp ult i64 %shl, %add51
  br i1 %cmp52501, label %for.end.while.body_crit_edge, label %for.end.cleanup244_crit_edge

for.end.cleanup244_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup244

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %cleanup167.while.body_crit_edge, %for.end.while.body_crit_edge
  %sums.0505 = phi ptr [ %sums.2, %cleanup167.while.body_crit_edge ], [ %sums19, %for.end.while.body_crit_edge ]
  %comp_bio.0504 = phi ptr [ %comp_bio.3, %cleanup167.while.body_crit_edge ], [ null, %for.end.while.body_crit_edge ]
  %cur_disk_byte.0502 = phi i64 [ %add138, %cleanup167.while.body_crit_edge ], [ %shl, %for.end.while.body_crit_edge ]
  %sub54 = sub i64 %cur_disk_byte.0502, %shl
  %shr55 = lshr i64 %sub54, 12
  %conv56 = trunc i64 %shr55 to i32
  %64 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %compressed_pages, align 8
  %arrayidx58 = getelementptr ptr, ptr %65, i32 %conv56
  %66 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %comp_bio.0504, null
  br i1 %tobool59.not, label %if.then60, label %while.body.if.end67_crit_edge

while.body.if.end67_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end67

if.then60:                                        ; preds = %while.body
  %call61 = call fastcc ptr @alloc_compressed_bio(ptr noundef nonnull %call9.i, i64 noundef %cur_disk_byte.0502, i32 noundef 0, ptr noundef nonnull @end_compressed_bio_read, ptr noundef nonnull %next_stripe_start)
  %cmp.i392 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i392, label %finish_cb.thread, label %if.then60.if.end67_crit_edge

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end67

finish_cb.thread:                                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #20
  %68 = ptrtoint ptr %call61 to i32
  %call65 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %68) #18
  br label %if.end185

if.end67:                                         ; preds = %if.then60.if.end67_crit_edge, %while.body.if.end67_crit_edge
  %comp_bio.1 = phi ptr [ %comp_bio.0504, %while.body.if.end67_crit_edge ], [ %call61, %if.then60.if.end67_crit_edge ]
  %69 = ptrtoint ptr %next_stripe_start to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %next_stripe_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %cur_disk_byte.0502)
  %cmp68.not = icmp eq i64 %70, %cur_disk_byte.0502
  br i1 %cmp68.not, label %cond.false77, label %cond.end78, !prof !105

cond.false77:                                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.6, i32 noundef 896) #21
  unreachable

cond.end78:                                       ; preds = %if.end67
  %sub79 = sub i64 %70, %cur_disk_byte.0502
  %71 = tail call i64 @llvm.umin.i64(i64 %sub79, i64 4294967295)
  %72 = trunc i64 %71 to i32
  %conv87 = trunc i64 %sub54 to i32
  %and = and i32 %conv87, 4095
  %sub88 = sub nuw nsw i32 4096, %and
  %73 = tail call i32 @llvm.umin.i32(i32 %sub88, i32 %72)
  %conv98 = zext i32 %73 to i64
  %sub100 = sub i64 %conv50, %sub54
  call void @__sanitizer_cov_trace_cmp8(i64 %sub100, i64 %conv98)
  %cmp102 = icmp ugt i64 %sub100, %conv98
  %extract.t387 = trunc i64 %sub100 to i32
  %cond107.off0 = select i1 %cmp102, i32 %73, i32 %extract.t387
  %74 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sectorsize, align 4
  %sub110 = add i32 %75, -1
  %and111 = and i32 %sub110, %cond107.off0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %cmp112 = icmp eq i32 %and111, 0
  br i1 %cmp112, label %cond.end122, label %cond.false121, !prof !104

cond.false121:                                    ; preds = %cond.end78
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 906) #21
  unreachable

cond.end122:                                      ; preds = %cond.end78
  %call125 = tail call i32 @bio_add_page(ptr noundef %comp_bio.1, ptr noundef %67, i32 noundef %cond107.off0, i32 noundef %and) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call125, i32 %cond107.off0)
  %cmp126 = icmp eq i32 %call125, %cond107.off0
  br i1 %cmp126, label %cond.end136, label %cond.false135, !prof !104

cond.false135:                                    ; preds = %cond.end122
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 913) #21
  unreachable

cond.end136:                                      ; preds = %cond.end122
  %conv137 = zext i32 %cond107.off0 to i64
  %add138 = add i64 %cur_disk_byte.0502, %conv137
  call void @__sanitizer_cov_trace_cmp8(i64 %add138, i64 %70)
  %cmp139 = icmp eq i64 %add138, %70
  call void @__sanitizer_cov_trace_cmp8(i64 %add138, i64 %add51)
  %cmp145 = icmp eq i64 %add138, %add51
  %submit.1.off0 = select i1 %cmp145, i1 true, i1 %cmp139
  br i1 %submit.1.off0, label %if.then150, label %cond.end136.cleanup167_crit_edge

cond.end136.cleanup167_crit_edge:                 ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup167

if.then150:                                       ; preds = %cond.end136
  %call151 = tail call zeroext i8 @btrfs_lookup_bio_sums(ptr noundef %inode, ptr noundef %comp_bio.1, ptr noundef %sums.0505) #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call151)
  %tobool152.not = icmp eq i8 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.then150.finish_cb_crit_edge

if.then150.finish_cb_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #20
  br label %finish_cb

if.end154:                                        ; preds = %if.then150
  %bi_size156 = getelementptr inbounds %struct.bio, ptr %comp_bio.1, i32 0, i32 8, i32 1
  %76 = ptrtoint ptr %bi_size156 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bi_size156, align 8
  %78 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sectorsize, align 4
  %add158 = add i32 %77, -1
  %sub159 = add i32 %add158, %79
  %div161 = udiv i32 %sub159, %79
  %80 = ptrtoint ptr %csum_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %csum_size.i, align 4
  %mul = mul i32 %81, %div161
  %add.ptr = getelementptr i8, ptr %sums.0505, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.end.i, !prof !105

cond.false.i:                                     ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.21, i32 noundef 432) #23
  unreachable

cond.end.i:                                       ; preds = %if.end154
  %call.i = tail call zeroext i8 @btrfs_bio_wq_end_io(ptr noundef %3, ptr noundef %comp_bio.1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool3.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool3.not.i, label %cleanup, label %cond.end.i.finish_cb_crit_edge

cond.end.i.finish_cb_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %finish_cb

cleanup:                                          ; preds = %cond.end.i
  %call4.i = tail call zeroext i8 @btrfs_map_bio(ptr noundef %3, ptr noundef %comp_bio.1, i32 noundef %mirror_num) #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i)
  %tobool163.not = icmp eq i8 %call4.i, 0
  br i1 %tobool163.not, label %cleanup.cleanup167_crit_edge, label %cleanup.finish_cb_crit_edge

cleanup.finish_cb_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %finish_cb

cleanup.cleanup167_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup167

cleanup167:                                       ; preds = %cleanup.cleanup167_crit_edge, %cond.end136.cleanup167_crit_edge
  %comp_bio.3 = phi ptr [ null, %cleanup.cleanup167_crit_edge ], [ %comp_bio.1, %cond.end136.cleanup167_crit_edge ]
  %sums.2 = phi ptr [ %add.ptr, %cleanup.cleanup167_crit_edge ], [ %sums.0505, %cond.end136.cleanup167_crit_edge ]
  %cmp52 = icmp ult i64 %add138, %add51
  br i1 %cmp52, label %cleanup167.while.body_crit_edge, label %cleanup167.cleanup244_crit_edge

cleanup167.cleanup244_crit_edge:                  ; preds = %cleanup167
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup244

cleanup167.while.body_crit_edge:                  ; preds = %cleanup167
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body178:                                    ; preds = %while.body178.while.body178_crit_edge, %while.cond175.preheader.while.body178_crit_edge
  %faili.0456.in = phi i32 [ %faili.0456, %while.body178.while.body178_crit_edge ], [ %pg_index.0447, %while.cond175.preheader.while.body178_crit_edge ]
  %faili.0456 = add nsw i32 %faili.0456.in, -1
  %82 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %compressed_pages, align 8
  %arrayidx180 = getelementptr ptr, ptr %83, i32 %faili.0456
  %84 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx180, align 4
  tail call void @__free_pages(ptr noundef %85, i32 noundef 0) #18
  %cmp176 = icmp sgt i32 %faili.0456.in, 1
  br i1 %cmp176, label %while.body178.while.body178_crit_edge, label %while.body178.while.end181_crit_edge

while.body178.while.end181_crit_edge:             ; preds = %while.body178
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end181

while.body178.while.body178_crit_edge:            ; preds = %while.body178
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body178

while.end181:                                     ; preds = %while.body178.while.end181_crit_edge, %while.cond175.preheader.while.end181_crit_edge
  %86 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %compressed_pages, align 8
  tail call void @kfree(ptr noundef %87) #18
  br label %fail1

fail1:                                            ; preds = %while.end181, %if.end16.fail1_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #18
  br label %out

out:                                              ; preds = %fail1, %cond.end.out_crit_edge
  %em.0 = phi ptr [ null, %fail1 ], [ %call6, %cond.end.out_crit_edge ]
  tail call void @free_extent_map(ptr noundef %em.0) #18
  br label %cleanup244

finish_cb:                                        ; preds = %cleanup.finish_cb_crit_edge, %cond.end.i.finish_cb_crit_edge, %if.then150.finish_cb_crit_edge
  %ret.3421 = phi i8 [ %call151, %if.then150.finish_cb_crit_edge ], [ %call.i, %cond.end.i.finish_cb_crit_edge ], [ %call4.i, %cleanup.finish_cb_crit_edge ]
  %tobool183.not = icmp eq ptr %comp_bio.1, null
  br i1 %tobool183.not, label %finish_cb.if.end185_crit_edge, label %if.then184

finish_cb.if.end185_crit_edge:                    ; preds = %finish_cb
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end185

if.then184:                                       ; preds = %finish_cb
  call void @__sanitizer_cov_trace_pc() #20
  %bi_status = getelementptr inbounds %struct.bio, ptr %comp_bio.1, i32 0, i32 6
  %88 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %ret.3421, ptr %bi_status, align 2
  tail call void @bio_endio(ptr noundef nonnull %comp_bio.1) #18
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %finish_cb.if.end185_crit_edge, %finish_cb.thread
  %cur_disk_byte.1419429 = phi i64 [ %add138, %if.then184 ], [ %add138, %finish_cb.if.end185_crit_edge ], [ %cur_disk_byte.0502, %finish_cb.thread ]
  %ret.3422 = phi i8 [ %ret.3421, %if.then184 ], [ %ret.3421, %finish_cb.if.end185_crit_edge ], [ %call65, %finish_cb.thread ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add51, i64 %cur_disk_byte.1419429)
  %cmp188 = icmp eq i64 %add51, %cur_disk_byte.1419429
  br i1 %cmp188, label %if.end185.cleanup244_crit_edge, label %do.body192

if.end185.cleanup244_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup244

do.body192:                                       ; preds = %if.end185
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 966) #18
  %call.i.i.i394 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef 4) #18
  %89 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %call9.i, align 128
  %conv198 = zext i32 %90 to i64
  %sub201 = sub i64 %add51, %cur_disk_byte.1419429
  %91 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom = zext i32 %92 to i64
  %shr203 = lshr i64 %sub201, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr203, i64 %conv198)
  %cmp204 = icmp eq i64 %shr203, %conv198
  br i1 %cmp204, label %do.body192.do.end231_crit_edge, label %if.end207

do.body192.do.end231_crit_edge:                   ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end231

if.end207:                                        ; preds = %do.body192
  %call208 = tail call ptr @__var_waitqueue(ptr noundef nonnull %call9.i) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #18
  %93 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %94 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef nonnull %call9.i, i32 noundef 0) #18
  %call210448 = call i32 @prepare_to_wait_event(ptr noundef %call208, ptr noundef %93, i32 noundef 2) #18
  %call.i.i.i395449 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef 4) #18
  %95 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %call9.i, align 128
  %conv213450 = zext i32 %96 to i64
  %97 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom218451 = zext i32 %98 to i64
  %shr219452 = lshr i64 %sub201, %sh_prom218451
  call void @__sanitizer_cov_trace_cmp8(i64 %shr219452, i64 %conv213450)
  %cmp220453 = icmp eq i64 %shr219452, %conv213450
  br i1 %cmp220453, label %if.end207.for.end227_crit_edge, label %if.end207.cleanup224_crit_edge

if.end207.cleanup224_crit_edge:                   ; preds = %if.end207
  br label %cleanup224

if.end207.for.end227_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end227

cleanup224:                                       ; preds = %cleanup224.cleanup224_crit_edge, %if.end207.cleanup224_crit_edge
  call void @schedule() #18
  %call210 = call i32 @prepare_to_wait_event(ptr noundef %call208, ptr noundef %93, i32 noundef 2) #18
  %call.i.i.i395 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef 4) #18
  %99 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %call9.i, align 128
  %conv213 = zext i32 %100 to i64
  %101 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom218 = zext i32 %102 to i64
  %shr219 = lshr i64 %sub201, %sh_prom218
  %cmp220 = icmp eq i64 %shr219, %conv213
  br i1 %cmp220, label %cleanup224.for.end227_crit_edge, label %cleanup224.cleanup224_crit_edge

cleanup224.cleanup224_crit_edge:                  ; preds = %cleanup224
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup224

cleanup224.for.end227_crit_edge:                  ; preds = %cleanup224
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end227

for.end227:                                       ; preds = %cleanup224.for.end227_crit_edge, %if.end207.for.end227_crit_edge
  call void @finish_wait(ptr noundef %call208, ptr noundef %93) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #18
  br label %do.end231

do.end231:                                        ; preds = %for.end227, %do.body192.do.end231_crit_edge
  %call.i.i.i396 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef 4) #18
  %103 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool234.not = icmp eq i32 %104, 0
  br i1 %tobool234.not, label %cond.false242, label %cond.end243, !prof !105

cond.false242:                                    ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 971) #21
  unreachable

cond.end243:                                      ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @finish_compressed_bio_read(ptr noundef nonnull %call9.i, ptr noundef null)
  br label %cleanup244

cleanup244:                                       ; preds = %cond.end243, %if.end185.cleanup244_crit_edge, %out, %cleanup167.cleanup244_crit_edge, %for.end.cleanup244_crit_edge, %bio_first_page_all.exit.cleanup244_crit_edge
  %retval.0 = phi i8 [ 9, %out ], [ %ret.3422, %cond.end243 ], [ 10, %bio_first_page_all.exit.cleanup244_crit_edge ], [ %ret.3422, %if.end185.cleanup244_crit_edge ], [ 0, %for.end.cleanup244_crit_edge ], [ 0, %cleanup167.cleanup244_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_stripe_start) #18
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_extent_mapping(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_map(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_ra_bio_pages(ptr noundef %inode, i64 noundef %compressed_end, ptr nocapture noundef readonly %cb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %orig_bio = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 10
  %4 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_bio, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i.i, align 4
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.not.i.i = icmp eq i16 %8, 0
  br i1 %cmp.i.not.i.i, label %entry.bio_end_offset.exit_crit_edge, label %land.rhs.i.i

entry.bio_end_offset.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_end_offset.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b39.i.i = load i1, ptr @bio_last_bvec_all.__already_done, align 1
  br i1 %.b39.i.i, label %land.rhs.i.i.bio_end_offset.exit_crit_edge, label %if.then.i.i, !prof !104

land.rhs.i.i.bio_end_offset.exit_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_end_offset.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @bio_last_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 259, i32 noundef 9, ptr noundef null) #18
  br label %bio_end_offset.exit

bio_end_offset.exit:                              ; preds = %if.then.i.i, %land.rhs.i.i.bio_end_offset.exit_crit_edge, %entry.bio_end_offset.exit_crit_edge
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 20
  %9 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_vcnt.i.i = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 17
  %11 = ptrtoint ptr %bi_vcnt.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bi_vcnt.i.i, align 8
  %conv.i.i = zext i16 %12 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %arrayidx.i.i = getelementptr %struct.bio_vec, ptr %10, i32 %sub.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i.i, align 4
  %conv.i6.i = zext i32 %16 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i6.i, 12
  %bv_len.i = getelementptr %struct.bio_vec, ptr %10, i32 %sub.i.i, i32 1
  %17 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bv_len.i, align 4
  %conv.i = zext i32 %18 to i64
  %add.i = add nuw nsw i64 %shl.i.i, %conv.i
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %10, i32 %sub.i.i, i32 2
  %19 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bv_offset.i, align 4
  %conv2.i = zext i32 %20 to i64
  %add3.i = add nuw nsw i64 %add.i, %conv2.i
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %21 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_mapping, align 8
  %extent_tree = getelementptr i8, ptr %inode, i32 -796
  %io_tree = getelementptr i8, ptr %inode, i32 -736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call2)
  %cmp = icmp eq i64 %call2, 0
  br i1 %cmp, label %bio_end_offset.exit.cleanup110_crit_edge, label %if.end

bio_end_offset.exit.cleanup110_crit_edge:         ; preds = %bio_end_offset.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

if.end:                                           ; preds = %bio_end_offset.exit
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i2 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i2, align 16
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %26, i32 0, i32 167
  %27 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %28)
  %cmp7 = icmp ult i32 %28, 4096
  br i1 %cmp7, label %if.end.cleanup110_crit_edge, label %if.end9

if.end.cleanup110_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %sub = add i64 %call10, 17592186044415
  %29 = lshr i64 %sub, 12
  %conv = trunc i64 %29 to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %add3.i, i64 %compressed_end)
  %cmp1162 = icmp ult i64 %add3.i, %compressed_end
  br i1 %cmp1162, label %while.body.lr.ph, label %if.end9.cleanup110_crit_edge

if.end9.cleanup110_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

while.body.lr.ph:                                 ; preds = %if.end9
  %conv14 = and i64 %29, 4294967295
  %i_pages = getelementptr inbounds %struct.address_space, ptr %22, i32 0, i32 1
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 168
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %22, i32 0, i32 3
  %lock = getelementptr i8, ptr %inode, i32 -780
  %sectorsize61 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %conv78 = trunc i64 %call2 to i32
  %and79 = and i32 %conv78, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %sub82 = sub nuw nsw i32 4096, %and79
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %sectors_missed.065 = phi i32 [ 0, %while.body.lr.ph ], [ %sectors_missed.1, %cleanup.while.body_crit_edge ]
  %cur.063 = phi i64 [ %add3.i, %while.body.lr.ph ], [ %cur.1, %cleanup.while.body_crit_edge ]
  %shr13 = lshr i64 %cur.063, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr13, i64 %conv14)
  %cmp15 = icmp ugt i64 %shr13, %conv14
  br i1 %cmp15, label %while.body.cleanup110_crit_edge, label %if.end18

while.body.cleanup110_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

if.end18:                                         ; preds = %while.body
  %conv19 = trunc i64 %shr13 to i32
  %call20 = tail call ptr @xa_load(ptr noundef %i_pages, i32 noundef %conv19) #18
  %tobool.not = icmp eq ptr %call20, null
  %30 = ptrtoint ptr %call20 to i32
  %and.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool.i
  br i1 %or.cond, label %if.end31, label %if.then22

if.then22:                                        ; preds = %if.end18
  %conv23 = trunc i64 %cur.063 to i32
  %and = and i32 %conv23, 4095
  %sub24 = sub nuw nsw i32 4096, %and
  %31 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sectorsize_bits, align 8
  %shr25 = lshr i32 %sub24, %32
  %add = add i32 %shr25, %sectors_missed.065
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp26 = icmp sgt i32 %add, 4
  br i1 %cmp26, label %if.then22.cleanup110_crit_edge, label %if.end29

if.then22.cleanup110_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

if.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  %33 = add i64 %cur.063, 4096
  %add30 = and i64 %33, -4096
  br label %cleanup

if.end31:                                         ; preds = %if.end18
  %34 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gfp_mask.i.i, align 4
  %and.i3 = and i32 %35, -129
  %call38.i.i.i.i = tail call ptr @__folio_alloc(i32 noundef %and.i3, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  %tobool34.not = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool34.not, label %if.end31.cleanup110_crit_edge, label %if.end36

if.end31.cleanup110_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

if.end36:                                         ; preds = %if.end31
  %call38 = tail call i32 @add_to_page_cache_lru(ptr noundef nonnull %call38.i.i.i.i, ptr noundef %22, i32 noundef %conv19, i32 noundef 3136) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end36
  %36 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i5, !prof !104

if.then.i.i5:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i4 = add i32 %38, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #20
  %39 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i5
  %retval.0.i.i = phi i32 [ %sub.i.i4, %if.then.i.i5 ], [ %39, %if.end.i.i ]
  %40 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %41 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i.i.i = icmp eq i32 %42, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !105

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %43 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.24) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !107
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@add_ra_bio_pages, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !111

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %40, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %40) #18
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %45 = add i64 %cur.063, 4096
  %add42 = and i64 %45, -4096
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %call44 = tail call i32 @set_page_extent_mapped(ptr noundef nonnull %call38.i.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  tail call void @unlock_page(ptr noundef nonnull %call38.i.i.i.i) #18
  %46 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i6 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i6)
  %tobool.not.i.i7 = icmp eq i32 %and.i.i6, 0
  br i1 %tobool.not.i.i7, label %if.end.i.i10, label %if.then.i.i9, !prof !104

if.then.i.i9:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i8 = add i32 %48, -1
  br label %_compound_head.exit.i15

if.end.i.i10:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #20
  %49 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit.i15

_compound_head.exit.i15:                          ; preds = %if.end.i.i10, %if.then.i.i9
  %retval.0.i.i11 = phi i32 [ %sub.i.i8, %if.then.i.i9 ], [ %49, %if.end.i.i10 ]
  %50 = inttoptr i32 %retval.0.i.i11 to ptr
  %_refcount.i.i.i.i.i12 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  %call.i.i.i.i.i.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i12, i32 noundef 4) #18
  %51 = ptrtoint ptr %_refcount.i.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i.i.i14 = icmp eq i32 %52, 0
  br i1 %cmp.i.i.i.i14, label %if.then.i.i.i.i16, label %do.end5.i.i.i.i20, !prof !105

if.then.i.i.i.i16:                                ; preds = %_compound_head.exit.i15
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.24) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !107
  unreachable

do.end5.i.i.i.i20:                                ; preds = %_compound_head.exit.i15
  %call.i.i.i10.i.i.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i12, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i12, i32 1, i32 3, i32 1) #18
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i12, ptr %_refcount.i.i.i.i.i12, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i12) #18, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i.i.i18 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i18)
  %cmp.i.i.i.i.i.i.i19 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i18, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@add_ra_bio_pages, %if.then.i.i.i.i.i22)) #18
          to label %folio_put_testzero.exit.i.i23 [label %if.then.i.i.i.i.i22], !srcloc !111

if.then.i.i.i.i.i22:                              ; preds = %do.end5.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i21 = zext i1 %cmp.i.i.i.i.i.i.i19 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %50, i32 noundef -1, i32 noundef %conv.i.i.i.i.i21) #18
  br label %folio_put_testzero.exit.i.i23

folio_put_testzero.exit.i.i23:                    ; preds = %if.then.i.i.i.i.i22, %do.end5.i.i.i.i20
  br i1 %cmp.i.i.i.i.i.i.i19, label %if.then.i4.i24, label %folio_put_testzero.exit.i.i23.cleanup110_crit_edge

folio_put_testzero.exit.i.i23.cleanup110_crit_edge: ; preds = %folio_put_testzero.exit.i.i23
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

if.then.i4.i24:                                   ; preds = %folio_put_testzero.exit.i.i23
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %50) #18
  br label %cleanup110

if.end48:                                         ; preds = %if.end43
  %54 = add i64 %cur.063, 4096
  %add50 = and i64 %54, -4096
  %sub51 = add i64 %add50, -1
  %call.i = tail call i32 @lock_extent_bits(ptr noundef %io_tree, i64 noundef %cur.063, i64 noundef %sub51, ptr noundef null) #18
  tail call void @_raw_read_lock(ptr noundef %lock) #18
  %sub54 = sub i64 %add50, %cur.063
  %call55 = tail call ptr @lookup_extent_mapping(ptr noundef %extent_tree, i64 noundef %cur.063, i64 noundef %sub54) #18
  tail call void @_raw_read_unlock(ptr noundef %lock) #18
  %tobool57.not = icmp eq ptr %call55, null
  br i1 %tobool57.not, label %if.end48.if.then72_crit_edge, label %lor.lhs.false

if.end48.if.then72_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then72

lor.lhs.false:                                    ; preds = %if.end48
  %start = getelementptr inbounds %struct.extent_map, ptr %call55, i32 0, i32 1
  %55 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %cur.063, i64 %56)
  %cmp58 = icmp ult i64 %cur.063, %56
  br i1 %cmp58, label %lor.lhs.false.if.then72_crit_edge, label %lor.lhs.false60

lor.lhs.false.if.then72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then72

lor.lhs.false60:                                  ; preds = %lor.lhs.false
  %57 = ptrtoint ptr %sectorsize61 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sectorsize61, align 4
  %conv62 = zext i32 %58 to i64
  %add63 = add i64 %cur.063, %conv62
  %len.i = getelementptr inbounds %struct.extent_map, ptr %call55, i32 0, i32 2
  %59 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %len.i, align 8
  %61 = tail call i64 @llvm.uadd.sat.i64(i64 %56, i64 %60) #18
  call void @__sanitizer_cov_trace_cmp8(i64 %add63, i64 %61)
  %cmp65 = icmp ugt i64 %add63, %61
  br i1 %cmp65, label %lor.lhs.false60.if.then72_crit_edge, label %lor.lhs.false67

lor.lhs.false60.if.then72_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then72

lor.lhs.false67:                                  ; preds = %lor.lhs.false60
  %block_start = getelementptr inbounds %struct.extent_map, ptr %call55, i32 0, i32 8
  %62 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %block_start, align 8
  %shr68 = lshr i64 %63, 9
  %64 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %orig_bio, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %bi_iter, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr68, i64 %67)
  %cmp70.not = icmp eq i64 %shr68, %67
  br i1 %cmp70.not, label %if.end74, label %lor.lhs.false67.if.then72_crit_edge

lor.lhs.false67.if.then72_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false67.if.then72_crit_edge, %lor.lhs.false60.if.then72_crit_edge, %lor.lhs.false.if.then72_crit_edge, %if.end48.if.then72_crit_edge
  tail call void @free_extent_map(ptr noundef %call55) #18
  %call.i26 = tail call i32 @clear_extent_bit(ptr noundef %io_tree, i64 noundef %cur.063, i64 noundef %sub51, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null) #18
  tail call void @unlock_page(ptr noundef nonnull %call38.i.i.i.i) #18
  %68 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %and.i.i27 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.not.i.i28 = icmp eq i32 %and.i.i27, 0
  br i1 %tobool.not.i.i28, label %if.end.i.i31, label %if.then.i.i30, !prof !104

if.then.i.i30:                                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i29 = add i32 %70, -1
  br label %_compound_head.exit.i36

if.end.i.i31:                                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #20
  %71 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit.i36

_compound_head.exit.i36:                          ; preds = %if.end.i.i31, %if.then.i.i30
  %retval.0.i.i32 = phi i32 [ %sub.i.i29, %if.then.i.i30 ], [ %71, %if.end.i.i31 ]
  %72 = inttoptr i32 %retval.0.i.i32 to ptr
  %_refcount.i.i.i.i.i33 = getelementptr inbounds %struct.page, ptr %72, i32 0, i32 3
  %call.i.i.i.i.i.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i33, i32 noundef 4) #18
  %73 = ptrtoint ptr %_refcount.i.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %_refcount.i.i.i.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i.i.i.i35 = icmp eq i32 %74, 0
  br i1 %cmp.i.i.i.i35, label %if.then.i.i.i.i37, label %do.end5.i.i.i.i41, !prof !105

if.then.i.i.i.i37:                                ; preds = %_compound_head.exit.i36
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %72, ptr noundef nonnull @.str.24) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !107
  unreachable

do.end5.i.i.i.i41:                                ; preds = %_compound_head.exit.i36
  %call.i.i.i10.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i33, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i33, i32 1, i32 3, i32 1) #18
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i33, ptr %_refcount.i.i.i.i.i33, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i33) #18, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i.i.i39 = extractvalue { i32, i32 } %75, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i39)
  %cmp.i.i.i.i.i.i.i40 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i39, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@add_ra_bio_pages, %if.then.i.i.i.i.i43)) #18
          to label %folio_put_testzero.exit.i.i44 [label %if.then.i.i.i.i.i43], !srcloc !111

if.then.i.i.i.i.i43:                              ; preds = %do.end5.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i42 = zext i1 %cmp.i.i.i.i.i.i.i40 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %72, i32 noundef -1, i32 noundef %conv.i.i.i.i.i42) #18
  br label %folio_put_testzero.exit.i.i44

folio_put_testzero.exit.i.i44:                    ; preds = %if.then.i.i.i.i.i43, %do.end5.i.i.i.i41
  br i1 %cmp.i.i.i.i.i.i.i40, label %if.then.i4.i45, label %folio_put_testzero.exit.i.i44.cleanup110_crit_edge

folio_put_testzero.exit.i.i44.cleanup110_crit_edge: ; preds = %folio_put_testzero.exit.i.i44
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

if.then.i4.i45:                                   ; preds = %folio_put_testzero.exit.i.i44
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %72) #18
  br label %cleanup110

if.end74:                                         ; preds = %lor.lhs.false67
  tail call void @free_extent_map(ptr noundef nonnull %call55) #18
  %index = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1, i32 0, i32 2
  %76 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %conv)
  %cmp75 = icmp ne i32 %77, %conv
  %brmerge = select i1 %cmp75, i1 true, i1 %tobool80.not
  br i1 %brmerge, label %if.end74.if.end84_crit_edge, label %if.then81

if.end74.if.end84_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end84

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @memzero_page(ptr noundef nonnull %call38.i.i.i.i, i32 noundef %and79, i32 noundef %sub82)
  tail call void @flush_dcache_page(ptr noundef nonnull %call38.i.i.i.i) #18
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end74.if.end84_crit_edge
  %78 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %start, align 8
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %len.i, align 8
  %add86 = add i64 %81, %79
  %82 = tail call i64 @llvm.umin.i64(i64 %add86, i64 %add50)
  %sub90 = sub i64 %82, %cur.063
  %conv91 = trunc i64 %sub90 to i32
  %83 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %orig_bio, align 8
  %conv93 = trunc i64 %cur.063 to i32
  %and94 = and i32 %conv93, 4095
  %call95 = tail call i32 @bio_add_page(ptr noundef %84, ptr noundef nonnull %call38.i.i.i.i, i32 noundef %conv91, i32 noundef %and94) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call95, i32 %conv91)
  %cmp96.not = icmp eq i32 %call95, %conv91
  br i1 %cmp96.not, label %if.end100, label %if.then98

if.then98:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #20
  %call.i47 = tail call i32 @clear_extent_bit(ptr noundef %io_tree, i64 noundef %cur.063, i64 noundef %sub51, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null) #18
  tail call void @unlock_page(ptr noundef nonnull %call38.i.i.i.i) #18
  tail call fastcc void @put_page(ptr noundef nonnull %call38.i.i.i.i)
  br label %cleanup110

if.end100:                                        ; preds = %if.end84
  %85 = ptrtoint ptr %sectorsize61 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sectorsize61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %86)
  %cmp102 = icmp ult i32 %86, 4096
  br i1 %cmp102, label %if.then104, label %if.end100.if.end105_crit_edge

if.end100.if.end105_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end105

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @btrfs_subpage_start_reader(ptr noundef %3, ptr noundef nonnull %call38.i.i.i.i, i64 noundef %cur.063, i32 noundef %conv91) #18
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end100.if.end105_crit_edge
  tail call fastcc void @put_page(ptr noundef nonnull %call38.i.i.i.i)
  %conv106 = and i64 %sub90, 4294967295
  %add107 = add i64 %conv106, %cur.063
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %put_page.exit, %if.end29
  %cur.1 = phi i64 [ %add42, %put_page.exit ], [ %add107, %if.end105 ], [ %add30, %if.end29 ]
  %sectors_missed.1 = phi i32 [ %sectors_missed.065, %put_page.exit ], [ %sectors_missed.065, %if.end105 ], [ %add, %if.end29 ]
  %cmp11 = icmp ult i64 %cur.1, %compressed_end
  br i1 %cmp11, label %cleanup.while.body_crit_edge, label %cleanup.cleanup110_crit_edge

cleanup.cleanup110_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

cleanup110:                                       ; preds = %cleanup.cleanup110_crit_edge, %if.then98, %if.then.i4.i45, %folio_put_testzero.exit.i.i44.cleanup110_crit_edge, %if.then.i4.i24, %folio_put_testzero.exit.i.i23.cleanup110_crit_edge, %if.end31.cleanup110_crit_edge, %if.then22.cleanup110_crit_edge, %while.body.cleanup110_crit_edge, %if.end9.cleanup110_crit_edge, %if.end.cleanup110_crit_edge, %bio_end_offset.exit.cleanup110_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @end_compressed_bio_read(ptr noundef %bio) #4 align 64 {
entry:
  %__shash_desc.i = alloca [376 x i8], align 8
  %csum.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %add.ptr.i = getelementptr i8, ptr %bio, i32 -96
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  %call1 = tail call fastcc zeroext i1 @dec_and_test_compressed_bio(ptr noundef %1, ptr noundef %bio)
  br i1 %call1, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %orig_bio = getelementptr inbounds %struct.compressed_bio, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_bio, align 8
  %add.ptr.i33 = getelementptr i8, ptr %5, i32 -96
  %6 = ptrtoint ptr %add.ptr.i33 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %add.ptr.i33, align 8
  %mirror_num4 = getelementptr inbounds %struct.compressed_bio, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %mirror_num4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %mirror_num4, align 4
  %errors = getelementptr inbounds %struct.compressed_bio, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %errors to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %errors, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %if.end.if.end17_crit_edge, label %if.end7

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.end7:                                          ; preds = %if.end
  %inode8 = getelementptr inbounds %struct.compressed_bio, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %inode8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inode8, align 4
  %add.ptr.i34 = getelementptr i8, ptr %11, i32 -864
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %12 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bi_iter, align 8
  %shl = shl i64 %13, 9
  %14 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i34, align 8
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fs_info1.i, align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc.i) #18
  %18 = call ptr @memset(ptr %__shash_desc.i, i32 255, i32 376)
  %csum_size2.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %17, i32 0, i32 169
  %19 = ptrtoint ptr %csum_size2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %csum_size2.i, align 4
  %sectorsize3.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %17, i32 0, i32 167
  %21 = ptrtoint ptr %sectorsize3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sectorsize3.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %csum.i) #18
  %23 = call ptr @memset(ptr %csum.i, i32 255, i32 32)
  %24 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bi_private, align 4
  %sums.i = getelementptr inbounds %struct.compressed_bio, ptr %25, i32 0, i32 11
  %flags.i = getelementptr i8, ptr %11, i32 -240
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

lor.lhs.false.i:                                  ; preds = %if.end7
  %fs_state.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %17, i32 0, i32 149
  %28 = ptrtoint ptr %fs_state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %fs_state.i, align 4
  %30 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool5.not.i = icmp eq i32 %30, 0
  br i1 %tobool5.not.i, label %if.end.i, label %lor.lhs.false.i.if.end12_crit_edge

lor.lhs.false.i.if.end12_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.end.i:                                         ; preds = %lor.lhs.false.i
  %csum_shash.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %17, i32 0, i32 174
  %31 = ptrtoint ptr %csum_shash.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csum_shash.i, align 8
  %33 = ptrtoint ptr %__shash_desc.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %__shash_desc.i, align 8
  %nr_pages.i = getelementptr inbounds %struct.compressed_bio, ptr %25, i32 0, i32 1
  %34 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp82.not.i = icmp eq i32 %35, 0
  br i1 %cmp82.not.i, label %if.end.i.if.end12_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %compressed_pages.i = getelementptr inbounds %struct.compressed_bio, ptr %25, i32 0, i32 2
  %compressed_len.i = getelementptr inbounds %struct.compressed_bio, ptr %25, i32 0, i32 6
  %conv.i = zext i32 %22 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc34.critedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %36 = phi i32 [ %35, %for.body.lr.ph.i ], [ %97, %for.inc34.critedge.i.for.body.i_crit_edge ]
  %cb_sum.086.i = phi ptr [ %sums.i, %for.body.lr.ph.i ], [ %cb_sum.1.lcssa.i, %for.inc34.critedge.i.for.body.i_crit_edge ]
  %i.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc34.critedge.i.for.body.i_crit_edge ]
  %disk_start.addr.083.i = phi i64 [ %shl, %for.body.lr.ph.i ], [ %disk_start.addr.1.lcssa.i, %for.inc34.critedge.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %compressed_pages.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %compressed_pages.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %38, i32 %i.084.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %sub.i = add i32 %36, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.084.i, i32 %sub.i)
  %cmp7.i = icmp eq i32 %i.084.i, %sub.i
  br i1 %cmp7.i, label %if.end10.i, label %for.body.i.for.body13.preheader.i_crit_edge

for.body.i.for.body13.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body13.preheader.i

if.end10.i:                                       ; preds = %for.body.i
  %41 = ptrtoint ptr %compressed_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %compressed_len.i, align 4
  %mul.neg.i = mul i32 %i.084.i, -4096
  %sub9.i = add i32 %42, %mul.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.i)
  %cmp1277.not.i = icmp eq i32 %sub9.i, 0
  br i1 %cmp1277.not.i, label %if.end10.i.for.inc34.critedge.i_crit_edge, label %if.end10.i.for.body13.preheader.i_crit_edge

if.end10.i.for.body13.preheader.i_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body13.preheader.i

if.end10.i.for.inc34.critedge.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc34.critedge.i

for.body13.preheader.i:                           ; preds = %if.end10.i.for.body13.preheader.i_crit_edge, %for.body.i.for.body13.preheader.i_crit_edge
  %bytes_left.091.i = phi i32 [ %sub9.i, %if.end10.i.for.body13.preheader.i_crit_edge ], [ 4096, %for.body.i.for.body13.preheader.i_crit_edge ]
  br label %for.body13.i

for.body13.i:                                     ; preds = %if.end30.i.for.body13.i_crit_edge, %for.body13.preheader.i
  %pg_offset.080.i = phi i32 [ %add32.i, %if.end30.i.for.body13.i_crit_edge ], [ 0, %for.body13.preheader.i ]
  %cb_sum.179.i = phi ptr [ %add.ptr31.i, %if.end30.i.for.body13.i_crit_edge ], [ %cb_sum.086.i, %for.body13.preheader.i ]
  %disk_start.addr.178.i = phi i64 [ %add.i, %if.end30.i.for.body13.i_crit_edge ], [ %disk_start.addr.083.i, %for.body13.preheader.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %43 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %43, 512
  %44 = call i32 @llvm.read_register.i32(metadata !93) #18
  %and.i.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %47, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !112
  %48 = call i32 @llvm.read_register.i32(metadata !93) #18
  %and.i.i.i1.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 213
  %52 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !113
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %40, i32 noundef %or.i.i) #18
  %add.ptr.i35 = getelementptr i8, ptr %call.i.i.i, i32 %pg_offset.080.i
  %call16.i = call i32 @crypto_shash_digest(ptr noundef nonnull %__shash_desc.i, ptr noundef %add.ptr.i35, i32 noundef %22, ptr noundef nonnull %csum.i) #18
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !114
  %54 = call i32 @llvm.read_register.i32(metadata !93) #18
  %and.i.i.i1.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 213
  %58 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %59, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !115
  %60 = call i32 @llvm.read_register.i32(metadata !93) #18
  %and.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %bcmp.i = call i32 @bcmp(ptr nonnull %csum.i, ptr %cb_sum.179.i, i32 %20) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp21.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp21.not.i, label %if.end30.i, label %if.then22.i

if.then22.i:                                      ; preds = %for.body13.i
  %mirror_num.i = getelementptr inbounds %struct.compressed_bio, ptr %25, i32 0, i32 9
  %64 = ptrtoint ptr %mirror_num.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mirror_num.i, align 4
  %66 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i34, align 8
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_root, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fs_info.i.i, align 8
  %csum_size2.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %69, i32 0, i32 169
  %70 = ptrtoint ptr %csum_size2.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %csum_size2.i.i, align 4
  %root_key.i.i = getelementptr inbounds %struct.btrfs_root, ptr %67, i32 0, i32 7
  %72 = ptrtoint ptr %root_key.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %root_key.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -257, i64 %73)
  %cmp.i.i = icmp ugt i64 %73, -257
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body8.i.i

do.body.i.i:                                      ; preds = %if.then22.i
  %call.i.i = call i32 @___ratelimit(ptr noundef nonnull @btrfs_print_data_csum_error._rs, ptr noundef nonnull @__func__.btrfs_print_data_csum_error) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.btrfs_print_data_csum_error.exit.i_crit_edge, label %if.then3.i.i

do.body.i.i.btrfs_print_data_csum_error.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %btrfs_print_data_csum_error.exit.i

if.then3.i.i:                                     ; preds = %do.body.i.i
  %74 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fs_info.i.i, align 8
  %76 = ptrtoint ptr %root_key.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %77 = load i64, ptr %root_key.i.i, align 1
  %location.i.i.i = getelementptr i8, ptr %11, i32 -860
  %78 = ptrtoint ptr %location.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %location.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %tobool.not.i.i.i = icmp eq i64 %79, 0
  br i1 %tobool.not.i.i.i, label %if.then3.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then3.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then3.i.i
  %type.i.i.i = getelementptr i8, ptr %11, i32 -852
  %80 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %81)
  %cmp.i.i.i = icmp eq i8 %81, -124
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge

lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %btrfs_ino.exit.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %if.then3.i.i.if.then.i.i.i_crit_edge
  %i_ino.i.i.i = getelementptr i8, ptr %11, i32 40
  %82 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_ino.i.i.i, align 8
  %conv3.i.i.i = zext i32 %83 to i64
  br label %btrfs_ino.exit.i.i

btrfs_ino.exit.i.i:                               ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge
  %ino.0.i.i.i = phi i64 [ %conv3.i.i.i, %if.then.i.i.i ], [ %79, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge ]
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %75, ptr noundef nonnull @.str.27, i64 noundef %77, i64 noundef %ino.0.i.i.i, i64 noundef %disk_start.addr.178.i, i32 noundef %71, ptr noundef nonnull %csum.i, i32 noundef %71, ptr noundef %cb_sum.179.i, i32 noundef %65) #24
  br label %btrfs_print_data_csum_error.exit.i

do.body8.i.i:                                     ; preds = %if.then22.i
  %call9.i.i = call i32 @___ratelimit(ptr noundef nonnull @btrfs_print_data_csum_error._rs.28, ptr noundef nonnull @__func__.btrfs_print_data_csum_error) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %do.body8.i.i.btrfs_print_data_csum_error.exit.i_crit_edge, label %if.then11.i.i

do.body8.i.i.btrfs_print_data_csum_error.exit.i_crit_edge: ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %btrfs_print_data_csum_error.exit.i

if.then11.i.i:                                    ; preds = %do.body8.i.i
  %84 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fs_info.i.i, align 8
  %86 = ptrtoint ptr %root_key.i.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %87 = load i64, ptr %root_key.i.i, align 1
  %location.i34.i.i = getelementptr i8, ptr %11, i32 -860
  %88 = ptrtoint ptr %location.i34.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %89 = load i64, ptr %location.i34.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %tobool.not.i35.i.i = icmp eq i64 %89, 0
  br i1 %tobool.not.i35.i.i, label %if.then11.i.i.if.then.i41.i.i_crit_edge, label %lor.lhs.false.i38.i.i

if.then11.i.i.if.then.i41.i.i_crit_edge:          ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i41.i.i

lor.lhs.false.i38.i.i:                            ; preds = %if.then11.i.i
  %type.i36.i.i = getelementptr i8, ptr %11, i32 -852
  %90 = ptrtoint ptr %type.i36.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %type.i36.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %91)
  %cmp.i37.i.i = icmp eq i8 %91, -124
  br i1 %cmp.i37.i.i, label %lor.lhs.false.i38.i.i.if.then.i41.i.i_crit_edge, label %lor.lhs.false.i38.i.i.btrfs_ino.exit43.i.i_crit_edge

lor.lhs.false.i38.i.i.btrfs_ino.exit43.i.i_crit_edge: ; preds = %lor.lhs.false.i38.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %btrfs_ino.exit43.i.i

lor.lhs.false.i38.i.i.if.then.i41.i.i_crit_edge:  ; preds = %lor.lhs.false.i38.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i41.i.i

if.then.i41.i.i:                                  ; preds = %lor.lhs.false.i38.i.i.if.then.i41.i.i_crit_edge, %if.then11.i.i.if.then.i41.i.i_crit_edge
  %i_ino.i39.i.i = getelementptr i8, ptr %11, i32 40
  %92 = ptrtoint ptr %i_ino.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %i_ino.i39.i.i, align 8
  %conv3.i40.i.i = zext i32 %93 to i64
  br label %btrfs_ino.exit43.i.i

btrfs_ino.exit43.i.i:                             ; preds = %if.then.i41.i.i, %lor.lhs.false.i38.i.i.btrfs_ino.exit43.i.i_crit_edge
  %ino.0.i42.i.i = phi i64 [ %conv3.i40.i.i, %if.then.i41.i.i ], [ %89, %lor.lhs.false.i38.i.i.btrfs_ino.exit43.i.i_crit_edge ]
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %85, ptr noundef nonnull @.str.29, i64 noundef %87, i64 noundef %ino.0.i42.i.i, i64 noundef %disk_start.addr.178.i, i32 noundef %71, ptr noundef nonnull %csum.i, i32 noundef %71, ptr noundef %cb_sum.179.i, i32 noundef %65) #24
  br label %btrfs_print_data_csum_error.exit.i

btrfs_print_data_csum_error.exit.i:               ; preds = %btrfs_ino.exit43.i.i, %do.body8.i.i.btrfs_print_data_csum_error.exit.i_crit_edge, %btrfs_ino.exit.i.i, %do.body.i.i.btrfs_print_data_csum_error.exit.i_crit_edge
  %device.i = getelementptr i8, ptr %bio, i32 -92
  %94 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device.i, align 4
  %tobool25.not.i = icmp eq ptr %95, null
  br i1 %tobool25.not.i, label %btrfs_print_data_csum_error.exit.i.csum_failed.thread42_crit_edge, label %if.then26.i

btrfs_print_data_csum_error.exit.i.csum_failed.thread42_crit_edge: ; preds = %btrfs_print_data_csum_error.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %csum_failed.thread42

if.then26.i:                                      ; preds = %btrfs_print_data_csum_error.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @btrfs_dev_stat_inc_and_print(ptr noundef nonnull %95, i32 noundef 3) #18
  br label %csum_failed.thread42

if.end30.i:                                       ; preds = %for.body13.i
  %add.ptr31.i = getelementptr i8, ptr %cb_sum.179.i, i32 %20
  %add.i = add i64 %disk_start.addr.178.i, %conv.i
  %add32.i = add i32 %pg_offset.080.i, %22
  %cmp12.i = icmp ult i32 %add32.i, %bytes_left.091.i
  br i1 %cmp12.i, label %if.end30.i.for.body13.i_crit_edge, label %if.end30.i.for.inc34.critedge.i_crit_edge

if.end30.i.for.inc34.critedge.i_crit_edge:        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc34.critedge.i

if.end30.i.for.body13.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body13.i

for.inc34.critedge.i:                             ; preds = %if.end30.i.for.inc34.critedge.i_crit_edge, %if.end10.i.for.inc34.critedge.i_crit_edge
  %disk_start.addr.1.lcssa.i = phi i64 [ %disk_start.addr.083.i, %if.end10.i.for.inc34.critedge.i_crit_edge ], [ %add.i, %if.end30.i.for.inc34.critedge.i_crit_edge ]
  %cb_sum.1.lcssa.i = phi ptr [ %cb_sum.086.i, %if.end10.i.for.inc34.critedge.i_crit_edge ], [ %add.ptr31.i, %if.end30.i.for.inc34.critedge.i_crit_edge ]
  %inc.i = add nuw i32 %i.084.i, 1
  %96 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nr_pages.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %97
  br i1 %cmp.i, label %for.inc34.critedge.i.for.body.i_crit_edge, label %for.inc34.critedge.i.if.end12_crit_edge

for.inc34.critedge.i.if.end12_crit_edge:          ; preds = %for.inc34.critedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

for.inc34.critedge.i.for.body.i_crit_edge:        ; preds = %for.inc34.critedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

csum_failed.thread42:                             ; preds = %if.then26.i, %btrfs_print_data_csum_error.exit.i.csum_failed.thread42_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %csum.i) #18
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc.i) #18
  br label %if.then15

if.end12:                                         ; preds = %for.inc34.critedge.i.if.end12_crit_edge, %if.end.i.if.end12_crit_edge, %lor.lhs.false.i.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %csum.i) #18
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc.i) #18
  %compress_type.i = getelementptr inbounds %struct.compressed_bio, ptr %1, i32 0, i32 7
  %98 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %compress_type.i, align 8
  %100 = zext i8 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %99, label %do.body.i.i37 [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb1.i.i
    i8 2, label %sw.bb3.i.i
    i8 3, label %sw.bb5.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i36 = call ptr @btrfs_get_workspace(i32 noundef 0, i32 noundef 0) #18
  br label %get_workspace.exit.i

sw.bb1.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %call2.i.i = call ptr @zlib_get_workspace(i32 noundef 0) #18
  br label %get_workspace.exit.i

sw.bb3.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %call4.i.i = call ptr @btrfs_get_workspace(i32 noundef 2, i32 noundef 0) #18
  br label %get_workspace.exit.i

sw.bb5.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %call6.i.i = call ptr @zstd_get_workspace(i32 noundef 0) #18
  br label %get_workspace.exit.i

do.body.i.i37:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/compression.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1246, 0\0A.popsection", ""() #18, !srcloc !116
  unreachable

get_workspace.exit.i:                             ; preds = %sw.bb5.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi ptr [ %call6.i.i, %sw.bb5.i.i ], [ %call4.i.i, %sw.bb3.i.i ], [ %call2.i.i, %sw.bb1.i.i ], [ %call.i.i36, %sw.bb.i.i ]
  %101 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %compress_type.i, align 8
  %103 = zext i8 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %102, label %do.body.i11.i [
    i8 1, label %sw.bb.i6.i
    i8 2, label %sw.bb1.i8.i
    i8 3, label %sw.bb3.i10.i
  ]

sw.bb.i6.i:                                       ; preds = %get_workspace.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i5.i = call i32 @zlib_decompress_bio(ptr noundef %retval.0.i.i, ptr noundef %1) #18
  br label %compression_decompress_bio.exit.i

sw.bb1.i8.i:                                      ; preds = %get_workspace.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %call2.i7.i = call i32 @lzo_decompress_bio(ptr noundef %retval.0.i.i, ptr noundef %1) #18
  br label %compression_decompress_bio.exit.i

sw.bb3.i10.i:                                     ; preds = %get_workspace.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %call4.i9.i = call i32 @zstd_decompress_bio(ptr noundef %retval.0.i.i, ptr noundef %1) #18
  br label %compression_decompress_bio.exit.i

do.body.i11.i:                                    ; preds = %get_workspace.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/compression.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #18, !srcloc !117
  unreachable

compression_decompress_bio.exit.i:                ; preds = %sw.bb3.i10.i, %sw.bb1.i8.i, %sw.bb.i6.i
  %retval.0.i12.i = phi i32 [ %call4.i9.i, %sw.bb3.i10.i ], [ %call2.i7.i, %sw.bb1.i8.i ], [ %call.i5.i, %sw.bb.i6.i ]
  %104 = zext i8 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %99, label %do.body.i16.i [
    i8 0, label %sw.bb.i13.i
    i8 1, label %sw.bb1.i14.i
    i8 2, label %sw.bb2.i.i
    i8 3, label %sw.bb3.i15.i
  ]

sw.bb.i13.i:                                      ; preds = %compression_decompress_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @btrfs_put_workspace(i32 noundef 0, ptr noundef %retval.0.i.i) #18
  br label %csum_failed

sw.bb1.i14.i:                                     ; preds = %compression_decompress_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @btrfs_put_workspace(i32 noundef 1, ptr noundef %retval.0.i.i) #18
  br label %csum_failed

sw.bb2.i.i:                                       ; preds = %compression_decompress_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @btrfs_put_workspace(i32 noundef 2, ptr noundef %retval.0.i.i) #18
  br label %csum_failed

sw.bb3.i15.i:                                     ; preds = %compression_decompress_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @zstd_put_workspace(ptr noundef %retval.0.i.i) #18
  br label %csum_failed

do.body.i16.i:                                    ; preds = %compression_decompress_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/compression.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1297, 0\0A.popsection", ""() #18, !srcloc !118
  unreachable

csum_failed:                                      ; preds = %sw.bb3.i15.i, %sw.bb2.i.i, %sw.bb1.i14.i, %sw.bb.i13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i12.i)
  %tobool14.not = icmp eq i32 %retval.0.i12.i, 0
  br i1 %tobool14.not, label %csum_failed.if.end17_crit_edge, label %csum_failed.if.then15_crit_edge

csum_failed.if.then15_crit_edge:                  ; preds = %csum_failed
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

csum_failed.if.end17_crit_edge:                   ; preds = %csum_failed
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then15:                                        ; preds = %csum_failed.if.then15_crit_edge, %csum_failed.thread42
  %105 = ptrtoint ptr %errors to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %errors, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %csum_failed.if.end17_crit_edge, %if.end.if.end17_crit_edge
  call fastcc void @finish_compressed_bio_read(ptr noundef %1, ptr noundef %bio)
  br label %out

out:                                              ; preds = %if.end17, %entry.out_crit_edge
  call void @bio_put(ptr noundef %bio) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_lookup_bio_sums(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_compressed_bio_read(ptr noundef %cb, ptr noundef readonly %bio) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_pages = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp75.not = icmp eq i32 %1, 0
  br i1 %cmp75.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %compressed_pages = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %index.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compressed_pages, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %index.076
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mapping, align 4
  %7 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !104

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %12 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !105

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %14 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.24) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !107
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@finish_compressed_bio_read, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !111

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %11, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %11) #18
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %index.076, 1
  %16 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pages, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %errors = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 8
  %18 = ptrtoint ptr %errors to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %errors, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %orig_bio = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 10
  %20 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %orig_bio, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %bi_status.i, align 2
  br label %if.end

if.else:                                          ; preds = %for.end
  %tobool1.not = icmp eq ptr %bio, null
  br i1 %tobool1.not, label %cond.false, label %cond.end, !prof !105

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.30, i32 noundef 256) #21
  unreachable

cond.end:                                         ; preds = %if.else
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %23 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not = icmp eq i8 %24, 0
  br i1 %tobool4.not, label %cond.end15, label %cond.false14, !prof !104

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.31, i32 noundef 257) #21
  unreachable

cond.end15:                                       ; preds = %cond.end
  %bi_flags.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %25 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bi_flags.i, align 4
  %27 = and i16 %26, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i.not = icmp eq i16 %27, 0
  br i1 %cmp.i.not, label %for.cond28.preheader, label %cond.false25, !prof !104

for.cond28.preheader:                             ; preds = %cond.end15
  %orig_bio29 = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 10
  %28 = ptrtoint ptr %orig_bio29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %orig_bio29, align 8
  %bi_vcnt.i77 = getelementptr inbounds %struct.bio, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %bi_vcnt.i77 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bi_vcnt.i77, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.not.i79.not = icmp eq i16 %31, 0
  br i1 %cmp.not.i79.not, label %for.cond28.preheader.if.end_crit_edge, label %if.end.i.lr.ph

for.cond28.preheader.if.end_crit_edge:            ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i.lr.ph:                                   ; preds = %for.cond28.preheader
  %inode = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 3
  br label %if.end.i

cond.false25:                                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.32, i32 noundef 262) #21
  unreachable

if.end.i:                                         ; preds = %if.end.i.i59.if.end.i_crit_edge, %if.end.i.lr.ph
  %32 = phi ptr [ %29, %if.end.i.lr.ph ], [ %51, %if.end.i.i59.if.end.i_crit_edge ]
  %iter_all.sroa.0.082 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %if.end.i.i59.if.end.i_crit_edge ]
  %iter_all.sroa.14.081 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select73, %if.end.i.i59.if.end.i_crit_edge ]
  %iter_all.sroa.18.080 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %if.end.i.i59.if.end.i_crit_edge ]
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %32, i32 0, i32 20
  %33 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.18.080)
  %tobool.not.i.i55 = icmp eq i32 %iter_all.sroa.18.080, 0
  br i1 %tobool.not.i.i55, label %if.else.i.i, label %if.then.i.i56

if.then.i.i56:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.082, i32 1
  br label %if.end.i.i59

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %34, i32 %iter_all.sroa.14.081
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %34, i32 %iter_all.sroa.14.081, i32 2
  %37 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %38, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %36, i32 %shr.i.i
  %and.i.i57 = and i32 %38, 4095
  br label %if.end.i.i59

if.end.i.i59:                                     ; preds = %if.else.i.i, %if.then.i.i56
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i56 ]
  %.sink.i.i = phi i32 [ %and.i.i57, %if.else.i.i ], [ 0, %if.then.i.i56 ]
  %sub.i.i58 = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %34, i32 %iter_all.sroa.14.081, i32 1
  %39 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %40, %iter_all.sroa.18.080
  %41 = tail call i32 @llvm.umin.i32(i32 %sub.i.i58, i32 %sub9.i.i) #18
  %add.i.i = add i32 %41, %iter_all.sroa.18.080
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %40)
  %cmp15.i.i = icmp eq i32 %add.i.i, %40
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select73 = add nuw nsw i32 %iter_all.sroa.14.081, %inc.i.i
  %index.i = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index.i, align 4
  %conv.i60 = zext i32 %43 to i64
  %shl.i = shl nuw nsw i64 %conv.i60, 12
  %conv = zext i32 %.sink.i.i to i64
  %add = or i64 %shl.i, %conv
  %44 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %inode, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @btrfs_page_set_checked(ptr noundef %49, ptr noundef %iter_all.sroa.0.1, i64 noundef %add, i32 noundef %41) #18
  %50 = ptrtoint ptr %orig_bio29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %orig_bio29, align 8
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %51, i32 0, i32 17
  %52 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %53 to i32
  %cmp.not.i = icmp ult i32 %spec.select73, %conv.i
  br i1 %cmp.not.i, label %if.end.i.i59.if.end.i_crit_edge, label %if.end.i.i59.if.end_crit_edge

if.end.i.i59.if.end_crit_edge:                    ; preds = %if.end.i.i59
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i.i59.if.end.i_crit_edge:                  ; preds = %if.end.i.i59
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.end:                                           ; preds = %if.end.i.i59.if.end_crit_edge, %for.cond28.preheader.if.end_crit_edge, %if.then
  %.lcssa.sink = phi ptr [ %21, %if.then ], [ %29, %for.cond28.preheader.if.end_crit_edge ], [ %51, %if.end.i.i59.if.end_crit_edge ]
  tail call void @bio_endio(ptr noundef %.lcssa.sink) #18
  %compressed_pages37 = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 2
  %54 = ptrtoint ptr %compressed_pages37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %compressed_pages37, align 8
  tail call void @kfree(ptr noundef %55) #18
  tail call void @kfree(ptr noundef %cb) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_get_workspace(i32 noundef %type, i32 noundef %level) local_unnamed_addr #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @btrfs_compress_op, i32 0, i32 %type
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %ws_lock2 = getelementptr inbounds %struct.workspace_manager, ptr %4, i32 0, i32 1
  %total_ws3 = getelementptr inbounds %struct.workspace_manager, ptr %4, i32 0, i32 3
  %ws_wait4 = getelementptr inbounds %struct.workspace_manager, ptr %4, i32 0, i32 4
  %free_ws5 = getelementptr inbounds %struct.workspace_manager, ptr %4, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %ws_lock2) #18
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 4
  %cmp.i.not75 = icmp eq ptr %6, %4
  br i1 %cmp.i.not75, label %if.end.lr.ph, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %11 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %if.end

if.then:                                          ; preds = %again.backedge.if.then_crit_edge, %entry.if.then_crit_edge
  %.lcssa = phi ptr [ %6, %entry.if.then_crit_edge ], [ %39, %again.backedge.if.then_crit_edge ]
  %call.i.i66 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa) #18
  br i1 %call.i.i66, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.lcssa, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %18 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %20 = ptrtoint ptr %free_ws5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %free_ws5, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %free_ws5, align 4
  call void @_raw_spin_unlock(ptr noundef %ws_lock2) #18
  br label %cleanup

if.end:                                           ; preds = %again.backedge.if.end_crit_edge, %if.end.lr.ph
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %total_ws3, i32 noundef 4) #18
  %22 = ptrtoint ptr %total_ws3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %total_ws3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %0)
  %cmp = icmp sgt i32 %23, %0
  br i1 %cmp, label %if.then8, label %if.end19

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #18
  %24 = call ptr @memset(ptr %11, i32 255, i32 16)
  %25 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %wait, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !93) #18
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %7, align 4
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @autoremove_wake_function, ptr %8, align 4
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %9, ptr %9, align 4
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %9, ptr %10, align 4
  call void @_raw_spin_unlock(ptr noundef %ws_lock2) #18
  call void @prepare_to_wait(ptr noundef %ws_wait4, ptr noundef nonnull %wait, i32 noundef 2) #18
  %call.i.i62 = call zeroext i1 @__kasan_check_read(ptr noundef %total_ws3, i32 noundef 4) #18
  %34 = ptrtoint ptr %total_ws3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %total_ws3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %0)
  %cmp15 = icmp sgt i32 %35, %0
  br i1 %cmp15, label %land.lhs.true, label %if.then8.if.end18_crit_edge

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then8
  %36 = ptrtoint ptr %free_ws5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %free_ws5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool16.not = icmp eq i32 %37, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  call void @schedule() #18
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true.if.end18_crit_edge, %if.then8.if.end18_crit_edge
  call void @finish_wait(ptr noundef %ws_wait4, ptr noundef nonnull %wait) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #18
  br label %again.backedge

again.backedge:                                   ; preds = %do.end, %if.then26.again.backedge_crit_edge, %if.then23.again.backedge_crit_edge, %if.end18
  call void @_raw_spin_lock(ptr noundef %ws_lock2) #18
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %4, align 4
  %cmp.i.not = icmp eq ptr %39, %4
  br i1 %cmp.i.not, label %again.backedge.if.end_crit_edge, label %again.backedge.if.then_crit_edge

again.backedge.if.then_crit_edge:                 ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

again.backedge.if.end_crit_edge:                  ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end19:                                         ; preds = %if.end
  %call.i.i63 = call zeroext i1 @__kasan_check_write(ptr noundef %total_ws3, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %total_ws3, i32 1, i32 3, i32 1) #18
  %40 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_ws3, ptr %total_ws3, i32 1, ptr elementtype(i32) %total_ws3) #18, !srcloc !119
  call void @_raw_spin_unlock(ptr noundef %ws_lock2) #18
  %41 = call i32 @llvm.read_register.i32(metadata !93) #18
  %and.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags1.i, align 4
  %and.i67 = and i32 %46, 262144
  %or.i = or i32 %46, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %call21 = call fastcc ptr @alloc_workspace(i32 noundef %type, i32 noundef %level)
  %47 = call i32 @llvm.read_register.i32(metadata !93) #18
  %and.i.i68 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i68 to ptr
  %task.i69 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i69, align 8
  %flags1.i70 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %flags1.i70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags1.i70, align 4
  %and.i71 = and i32 %52, -262145
  %or.i72 = or i32 %and.i71, %and.i67
  store i32 %or.i72, ptr %flags1.i70, align 4
  %cmp.i73 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  %call.i.i64 = call zeroext i1 @__kasan_check_write(ptr noundef %total_ws3, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %total_ws3, i32 1, i32 3, i32 1) #18
  %53 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_ws3, ptr %total_ws3, i32 1, ptr elementtype(i32) %total_ws3) #18, !srcloc !120
  call void @__wake_up(ptr noundef %ws_wait4, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  %call.i.i65 = call zeroext i1 @__kasan_check_read(ptr noundef %total_ws3, i32 noundef 4) #18
  %54 = ptrtoint ptr %total_ws3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %total_ws3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp25 = icmp eq i32 %55, 0
  br i1 %cmp25, label %if.then26, label %if.then23.again.backedge_crit_edge

if.then23.again.backedge_crit_edge:               ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #20
  br label %again.backedge

if.then26:                                        ; preds = %if.then23
  %call27 = call i32 @___ratelimit(ptr noundef nonnull @btrfs_get_workspace._rs, ptr noundef nonnull @__func__.btrfs_get_workspace) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.again.backedge_crit_edge, label %do.end

if.then26.again.backedge_crit_edge:               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #20
  br label %again.backedge

do.end:                                           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #20
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #24
  br label %again.backedge

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %list_del.exit
  %retval.0 = phi ptr [ %.lcssa, %list_del.exit ], [ %call21, %if.end19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_workspace(i32 noundef %type, i32 noundef %level) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %type, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #26
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 8192, i32 noundef 3264, i32 noundef -1) #22
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %call7.i.i.i, align 8
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.fail.i_crit_edge, label %if.end6.i

if.end.i.fail.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail.i

if.end6.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1024) #26
  %bucket.i = getelementptr inbounds %struct.heuristic_ws, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %bucket.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i.i, ptr %bucket.i, align 8
  %tobool9.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.fail.i_crit_edge, label %if.end11.i

if.end6.i.fail.i_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail.i

if.end11.i:                                       ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1024) #26
  %bucket_b.i = getelementptr inbounds %struct.heuristic_ws, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %bucket_b.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i1.i, ptr %bucket_b.i, align 4
  %tobool14.not.i = icmp eq ptr %call7.i.i.i1.i, null
  br i1 %tobool14.not.i, label %if.end11.i.fail.i_crit_edge, label %if.end16.i

if.end11.i.fail.i_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail.i

if.end16.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  %list.i = getelementptr inbounds %struct.heuristic_ws, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.heuristic_ws, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list.i, ptr %prev.i.i, align 4
  br label %sw.epilog

fail.i:                                           ; preds = %if.end11.i.fail.i_crit_edge, %if.end6.i.fail.i_crit_edge, %if.end.i.fail.i_crit_edge
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @kvfree(ptr noundef %10) #18
  %bucket.i.i = getelementptr %struct.heuristic_ws, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bucket.i.i, align 8
  tail call void @kfree(ptr noundef %12) #18
  %bucket_b.i.i = getelementptr %struct.heuristic_ws, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %bucket_b.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bucket_b.i.i, align 4
  tail call void @kfree(ptr noundef %14) #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #18
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = tail call ptr @zlib_alloc_workspace(i32 noundef %level) #18
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call4 = tail call ptr @lzo_alloc_workspace(i32 noundef %level) #18
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call6 = tail call ptr @zstd_alloc_workspace(i32 noundef %level) #18
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/compression.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1089, 0\0A.popsection", ""() #18, !srcloc !121
  unreachable

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %sw.bb1, %fail.i, %if.end16.i, %sw.bb.sw.epilog_crit_edge
  %retval.0 = phi ptr [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %list.i, %if.end16.i ], [ inttoptr (i32 -12 to ptr), %fail.i ], [ inttoptr (i32 -12 to ptr), %sw.bb.sw.epilog_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_put_workspace(i32 noundef %type, ptr noundef %ws) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x ptr], ptr @btrfs_compress_op, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ws_lock2 = getelementptr inbounds %struct.workspace_manager, ptr %3, i32 0, i32 1
  %free_ws5 = getelementptr inbounds %struct.workspace_manager, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %ws_lock2) #18
  %4 = ptrtoint ptr %free_ws5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_ws5, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %6 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp.not = icmp ugt i32 %5, %6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call.i.i15 = tail call zeroext i1 @__list_add_valid(ptr noundef %ws, ptr noundef %3, ptr noundef %8) #18
  br i1 %call.i.i15, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ws, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %ws to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %ws, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ws, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %ws, ptr %3, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  %13 = ptrtoint ptr %free_ws5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %free_ws5, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %free_ws5, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ws_lock2) #18
  br label %wake

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %total_ws3 = getelementptr inbounds %struct.workspace_manager, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %ws_lock2) #18
  tail call fastcc void @free_workspace(i32 noundef %type, ptr noundef %ws)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ws3, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %total_ws3, i32 1, i32 3, i32 1) #18
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_ws3, ptr %total_ws3, i32 1, ptr elementtype(i32) %total_ws3) #18, !srcloc !120
  br label %wake

wake:                                             ; preds = %if.end, %list_add.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !122
  %head.i.i.i = getelementptr inbounds %struct.workspace_manager, ptr %3, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %17, %head.i.i.i
  br i1 %cmp.i.i.i.not.i, label %wake.cond_wake_up.exit_crit_edge, label %if.then.i

wake.cond_wake_up.exit_crit_edge:                 ; preds = %wake
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond_wake_up.exit

if.then.i:                                        ; preds = %wake
  call void @__sanitizer_cov_trace_pc() #20
  %ws_wait4 = getelementptr inbounds %struct.workspace_manager, ptr %3, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %ws_wait4, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %cond_wake_up.exit

cond_wake_up.exit:                                ; preds = %if.then.i, %wake.cond_wake_up.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_workspace(i32 noundef %type, ptr noundef %ws) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %type, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %ws, i32 -16
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  tail call void @kvfree(ptr noundef %2) #18
  %bucket.i = getelementptr i8, ptr %ws, i32 -8
  %3 = ptrtoint ptr %bucket.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bucket.i, align 4
  tail call void @kfree(ptr noundef %4) #18
  %bucket_b.i = getelementptr i8, ptr %ws, i32 -4
  %5 = ptrtoint ptr %bucket_b.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bucket_b.i, align 4
  tail call void @kfree(ptr noundef %6) #18
  tail call void @kfree(ptr noundef %add.ptr.i) #18
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @zlib_free_workspace(ptr noundef %ws) #18
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lzo_free_workspace(ptr noundef %ws) #18
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @zstd_free_workspace(ptr noundef %ws) #18
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/compression.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1105, 0\0A.popsection", ""() #18, !srcloc !123
  unreachable

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_compress_pages(i32 noundef %type_level, ptr noundef %mapping, i64 noundef %start, ptr noundef %pages, ptr noundef %out_pages, ptr noundef %total_in, ptr noundef %total_out) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %type_level, 15
  %and.i11 = lshr i32 %type_level, 4
  %shr.i = and i32 %and.i11, 15
  %arrayidx.i = getelementptr [4 x ptr], ptr @btrfs_compress_op, i32 0, i32 %and.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %default_level.i = getelementptr inbounds %struct.btrfs_compress_op, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %default_level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %default_level.i, align 4
  br label %btrfs_compress_set_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %max_level.i = getelementptr inbounds %struct.btrfs_compress_op, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %max_level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_level.i, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %shr.i) #18
  br label %btrfs_compress_set_level.exit

btrfs_compress_set_level.exit:                    ; preds = %if.else.i, %if.then.i
  %level.addr.0.i = phi i32 [ %3, %if.then.i ], [ %6, %if.else.i ]
  %7 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %and.i, label %do.body.i [
    i32 0, label %sw.bb.i19
    i32 1, label %sw.bb1.i20
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i21
  ]

do.body.i:                                        ; preds = %btrfs_compress_set_level.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/compression.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1246, 0\0A.popsection", ""() #18, !srcloc !116
  unreachable

sw.bb.i19:                                        ; preds = %btrfs_compress_set_level.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @btrfs_get_workspace(i32 noundef 0, i32 noundef %level.addr.0.i) #18
  %8 = ptrtoint ptr %out_pages to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %out_pages, align 4
  tail call void @btrfs_put_workspace(i32 noundef 0, ptr noundef %call.i) #18
  br label %put_workspace.exit

sw.bb1.i20:                                       ; preds = %btrfs_compress_set_level.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call2.i = tail call ptr @zlib_get_workspace(i32 noundef %level.addr.0.i) #18
  %call.i12 = tail call i32 @zlib_compress_pages(ptr noundef %call2.i, ptr noundef %mapping, i64 noundef %start, ptr noundef %pages, ptr noundef %out_pages, ptr noundef %total_in, ptr noundef %total_out) #18
  tail call void @btrfs_put_workspace(i32 noundef 1, ptr noundef %call2.i) #18
  br label %put_workspace.exit

sw.bb2.i:                                         ; preds = %btrfs_compress_set_level.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call4.i = tail call ptr @btrfs_get_workspace(i32 noundef 2, i32 noundef %level.addr.0.i) #18
  %call2.i14 = tail call i32 @lzo_compress_pages(ptr noundef %call4.i, ptr noundef %mapping, i64 noundef %start, ptr noundef %pages, ptr noundef %out_pages, ptr noundef %total_in, ptr noundef %total_out) #18
  tail call void @btrfs_put_workspace(i32 noundef 2, ptr noundef %call4.i) #18
  br label %put_workspace.exit

sw.bb3.i21:                                       ; preds = %btrfs_compress_set_level.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call6.i = tail call ptr @zstd_get_workspace(i32 noundef %level.addr.0.i) #18
  %call4.i16 = tail call i32 @zstd_compress_pages(ptr noundef %call6.i, ptr noundef %mapping, i64 noundef %start, ptr noundef %pages, ptr noundef %out_pages, ptr noundef %total_in, ptr noundef %total_out) #18
  tail call void @zstd_put_workspace(ptr noundef %call6.i) #18
  br label %put_workspace.exit

put_workspace.exit:                               ; preds = %sw.bb3.i21, %sw.bb2.i, %sw.bb1.i20, %sw.bb.i19
  %retval.0.i1835 = phi i32 [ -7, %sw.bb.i19 ], [ %call.i12, %sw.bb1.i20 ], [ %call2.i14, %sw.bb2.i ], [ %call4.i16, %sw.bb3.i21 ]
  ret i32 %retval.0.i1835
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_decompress(i32 noundef %type, ptr noundef %data_in, ptr noundef %dest_page, i32 noundef %start_byte, i32 noundef %srclen, i32 noundef %destlen) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %type, label %do.body.i [
    i32 0, label %do.body.i11
    i32 1, label %sw.bb1.i14
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i15
  ]

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/compression.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1246, 0\0A.popsection", ""() #18, !srcloc !116
  unreachable

do.body.i11:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @btrfs_get_workspace(i32 noundef 0, i32 noundef 0) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/compression.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #18, !srcloc !124
  unreachable

sw.bb1.i14:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call2.i = tail call ptr @zlib_get_workspace(i32 noundef 0) #18
  %call.i5 = tail call i32 @zlib_decompress(ptr noundef %call2.i, ptr noundef %data_in, ptr noundef %dest_page, i32 noundef %start_byte, i32 noundef %srclen, i32 noundef %destlen) #18
  tail call void @btrfs_put_workspace(i32 noundef 1, ptr noundef %call2.i) #18
  br label %put_workspace.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call4.i = tail call ptr @btrfs_get_workspace(i32 noundef 2, i32 noundef 0) #18
  %call2.i7 = tail call i32 @lzo_decompress(ptr noundef %call4.i, ptr noundef %data_in, ptr noundef %dest_page, i32 noundef %start_byte, i32 noundef %srclen, i32 noundef %destlen) #18
  tail call void @btrfs_put_workspace(i32 noundef 2, ptr noundef %call4.i) #18
  br label %put_workspace.exit

sw.bb3.i15:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call6.i = tail call ptr @zstd_get_workspace(i32 noundef 0) #18
  %call4.i9 = tail call i32 @zstd_decompress(ptr noundef %call6.i, ptr noundef %data_in, ptr noundef %dest_page, i32 noundef %start_byte, i32 noundef %srclen, i32 noundef %destlen) #18
  tail call void @zstd_put_workspace(ptr noundef %call6.i) #18
  br label %put_workspace.exit

put_workspace.exit:                               ; preds = %sw.bb3.i15, %sw.bb2.i, %sw.bb1.i14
  %retval.0.i1228 = phi i32 [ %call.i5, %sw.bb1.i14 ], [ %call2.i7, %sw.bb2.i ], [ %call4.i9, %sw.bb3.i15 ]
  ret i32 %retval.0.i1228
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_init_compress() local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @btrfs_init_workspace_manager(i32 noundef 0)
  tail call fastcc void @btrfs_init_workspace_manager(i32 noundef 1)
  tail call fastcc void @btrfs_init_workspace_manager(i32 noundef 2)
  tail call void @zstd_init_workspace_manager() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_init_workspace_manager(i32 noundef %type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x ptr], ptr @btrfs_compress_op, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %prev.i, align 4
  %ws_lock = getelementptr inbounds %struct.workspace_manager, ptr %3, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ws_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @btrfs_init_workspace_manager.__key, i16 noundef signext 3) #18
  %total_ws = getelementptr inbounds %struct.workspace_manager, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ws, i32 noundef 4) #18
  %6 = ptrtoint ptr %total_ws to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %total_ws, align 4
  %ws_wait = getelementptr inbounds %struct.workspace_manager, ptr %3, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %ws_wait, ptr noundef nonnull @.str.35, ptr noundef nonnull @btrfs_init_workspace_manager.__key.34) #18
  %call4 = tail call fastcc ptr @alloc_workspace(i32 noundef %type, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.else

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #24
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ws, i32 noundef 4) #18
  %7 = ptrtoint ptr %total_ws to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %total_ws, align 4
  %free_ws = getelementptr inbounds %struct.workspace_manager, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %free_ws to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %free_ws, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call.i.i21 = tail call zeroext i1 @__list_add_valid(ptr noundef %call4, ptr noundef %3, ptr noundef %10) #18
  br i1 %call.i.i21, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %call4, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call4, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call4, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge, %do.end8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zstd_init_workspace_manager() local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_exit_compress() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @btrfs_cleanup_workspace_manager(i32 noundef 0)
  tail call fastcc void @btrfs_cleanup_workspace_manager(i32 noundef 1)
  tail call fastcc void @btrfs_cleanup_workspace_manager(i32 noundef 2)
  tail call void @zstd_cleanup_workspace_manager() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_cleanup_workspace_manager(i32 noundef %type) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x ptr], ptr @btrfs_compress_op, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %3, align 4
  %cmp.i.not7 = icmp eq ptr %5, %3
  br i1 %cmp.i.not7, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %total_ws = getelementptr inbounds %struct.workspace_manager, ptr %3, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %17, %list_del.exit.while.body_crit_edge ]
  %call.i.i6 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #18
  br i1 %call.i.i6, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @free_workspace(i32 noundef %type, ptr noundef %6)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_ws, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %total_ws, i32 1, i32 3, i32 1) #18
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_ws, ptr %total_ws, i32 1, ptr elementtype(i32) %total_ws) #18, !srcloc !120
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %3, align 4
  %cmp.i.not = icmp eq ptr %17, %3
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zstd_cleanup_workspace_manager() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_decompress_buf2page(ptr nocapture noundef readonly %buf, i32 noundef %buf_len, ptr nocapture noundef readonly %cb, i32 noundef %decompressed) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_bio1 = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 10
  %0 = ptrtoint ptr %orig_bio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_bio1, align 8
  %add = add i32 %decompressed, %buf_len
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 20
  %bi_idx = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 2
  %bi_bvec_done = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 3
  %bi_size = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %start = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 4
  %idx.neg = sub i32 0, %decompressed
  %add.ptr88 = getelementptr i8, ptr %buf, i32 %idx.neg
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %entry
  %cur_offset.0 = phi i32 [ %decompressed, %entry ], [ %add91, %cleanup.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_offset.0, i32 %add)
  %cmp = icmp ult i32 %cur_offset.0, %add
  br i1 %cmp, label %while.body, label %while.cond.cleanup100_crit_edge

while.cond.cleanup100_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup100

while.body:                                       ; preds = %while.cond
  %2 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_io_vec, align 8
  %4 = ptrtoint ptr %bi_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_idx, align 4
  %arrayidx = getelementptr %struct.bio_vec, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %3, i32 %5, i32 2
  %8 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_offset, align 4
  %10 = ptrtoint ptr %bi_bvec_done to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_bvec_done, align 8
  %add8 = add i32 %11, %9
  %div148 = lshr i32 %add8, 12
  %add.ptr = getelementptr %struct.page, ptr %7, i32 %div148
  %rem = and i32 %add8, 4095
  %index.i = getelementptr %struct.page, ptr %7, i32 %div148, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %13 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %conv = zext i32 %rem to i64
  %14 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start, align 8
  %add45 = sub i64 %conv, %15
  %sub46 = add i64 %add45, %shl.i
  %conv47 = trunc i64 %sub46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv47)
  %cmp49.not = icmp ugt i32 %add, %conv47
  br i1 %cmp49.not, label %if.end, label %while.body.cleanup100_crit_edge

while.body.cleanup100_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup100

if.end:                                           ; preds = %while.body
  %16 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_size, align 8
  %bv_len14 = getelementptr %struct.bio_vec, ptr %3, i32 %5, i32 1
  %18 = ptrtoint ptr %bv_len14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len14, align 4
  %sub = sub i32 %19, %11
  %20 = tail call i32 @llvm.umin.i32(i32 %17, i32 %sub)
  %sub26 = sub nuw nsw i32 4096, %rem
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub26)
  %22 = tail call i32 @llvm.umax.i32(i32 %cur_offset.0, i32 %conv47)
  %add59 = add i32 %21, %conv47
  %23 = tail call i32 @llvm.umin.i32(i32 %add59, i32 %add)
  %sub68 = sub i32 %23, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %22)
  %tobool.not = icmp eq i32 %23, %22
  br i1 %tobool.not, label %cond.false72, label %cond.end73, !prof !105

cond.false72:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.10, i32 noundef 1464) #21
  unreachable

cond.end73:                                       ; preds = %if.end
  %sub74 = sub i32 %22, %decompressed
  call void @__sanitizer_cov_trace_cmp4(i32 %sub74, i32 %buf_len)
  %cmp75 = icmp ult i32 %sub74, %buf_len
  br i1 %cmp75, label %cond.end85, label %cond.false84, !prof !104

cond.false84:                                     ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.11, i32 noundef 1470) #21
  unreachable

cond.end85:                                       ; preds = %cond.end73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %24 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %24, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i.i) #18
  %add.i = add i32 %sub68, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.body2.i, label %memcpy_to_page.exit, !prof !105

do.body2.i:                                       ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/highmem.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #18, !srcloc !125
  unreachable

memcpy_to_page.exit:                              ; preds = %cond.end85
  %add.ptr89 = getelementptr i8, ptr %add.ptr88, i32 %22
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %rem
  %25 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr89, i32 %sub68)
  tail call void @flush_dcache_page(ptr noundef %add.ptr) #18
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #18
  tail call void @flush_dcache_page(ptr noundef %add.ptr) #18
  %26 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub68)
  %cmp.i149 = icmp eq i32 %27, %sub68
  br i1 %cmp.i149, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %memcpy_to_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bi_size, align 8
  br label %cleanup100

cleanup:                                          ; preds = %memcpy_to_page.exit
  %add91 = add i32 %sub68, %cur_offset.0
  tail call void @__bio_advance(ptr noundef %1, i32 noundef %sub68) #18
  %29 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %bi_size, align 8
  %tobool94.not = icmp eq i32 %.pr, 0
  br i1 %tobool94.not, label %cleanup.cleanup100_crit_edge, label %cleanup.while.cond_crit_edge

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

cleanup.cleanup100_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup100

cleanup100:                                       ; preds = %cleanup.cleanup100_crit_edge, %cleanup.thread, %while.body.cleanup100_crit_edge, %while.cond.cleanup100_crit_edge
  %retval.2 = phi i32 [ 0, %cleanup.thread ], [ 1, %while.body.cleanup100_crit_edge ], [ 1, %while.cond.cleanup100_crit_edge ], [ 0, %cleanup.cleanup100_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_compress_heuristic(ptr nocapture noundef readonly %inode, i64 noundef %start, i64 noundef %end) local_unnamed_addr #4 align 64 {
entry:
  %counters.i.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @btrfs_get_workspace(i32 noundef 0, i32 noundef 0) #18
  %add.ptr = getelementptr i8, ptr %call.i, i32 -16
  tail call fastcc void @heuristic_collect_sample(ptr noundef %inode, i64 noundef %start, i64 noundef %end, ptr noundef %add.ptr)
  %sample_size.i = getelementptr i8, ptr %call.i, i32 -12
  %0 = ptrtoint ptr %sample_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sample_size.i, align 4
  %div5.i = lshr i32 %1, 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %arrayidx1.i = getelementptr i8, ptr %3, i32 %div5.i
  %bcmp.i = tail call i32 @bcmp(ptr %3, ptr %arrayidx1.i, i32 %div5.i) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %bucket = getelementptr i8, ptr %call.i, i32 -8
  %4 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bucket, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 1024)
  %7 = ptrtoint ptr %sample_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sample_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp74.not = icmp eq i32 %8, 0
  br i1 %cmp74.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.075 = phi i32 [ %inc4, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 %i.075
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bucket, align 4
  %idxprom = zext i8 %12 to i32
  %arrayidx3 = getelementptr %struct.bucket_item, ptr %14, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx3, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %arrayidx3, align 4
  %inc4 = add nuw i32 %i.075, 1
  %17 = ptrtoint ptr %sample_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sample_size.i, align 4
  %cmp = icmp ult i32 %inc4, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %19 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bucket, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end
  %byte_set_size.031.i = phi i32 [ 0, %for.end ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %i.030.i = phi i32 [ 0, %for.end ], [ %inc2.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bucket_item, ptr %20, i32 %i.030.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1.not.i = icmp ne i32 %22, 0
  %inc.i = zext i1 %cmp1.not.i to i32
  %spec.select.i = add i32 %byte_set_size.031.i, %inc.i
  %inc2.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc2.i, 64
  br i1 %exitcond.not.i, label %for.body.i.for.body5.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc16.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %byte_set_size.234.i = phi i32 [ %byte_set_size.3.i, %for.inc16.i.for.body5.i_crit_edge ], [ %spec.select.i, %for.body.i.for.body5.i_crit_edge ]
  %i.133.i = phi i32 [ %inc17.i, %for.inc16.i.for.body5.i_crit_edge ], [ 64, %for.body.i.for.body5.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.bucket_item, ptr %20, i32 %i.133.i
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9.not.i = icmp eq i32 %24, 0
  br i1 %cmp9.not.i, label %for.body5.i.for.inc16.i_crit_edge, label %if.then10.i

for.body5.i.for.inc16.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc16.i

if.then10.i:                                      ; preds = %for.body5.i
  %inc11.i = add i32 %byte_set_size.234.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc11.i)
  %cmp12.i = icmp ugt i32 %inc11.i, 64
  br i1 %cmp12.i, label %if.then10.i.if.end8_crit_edge, label %if.then10.i.for.inc16.i_crit_edge

if.then10.i.for.inc16.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc16.i

if.then10.i.if.end8_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

for.inc16.i:                                      ; preds = %if.then10.i.for.inc16.i_crit_edge, %for.body5.i.for.inc16.i_crit_edge
  %byte_set_size.3.i = phi i32 [ %inc11.i, %if.then10.i.for.inc16.i_crit_edge ], [ %byte_set_size.234.i, %for.body5.i.for.inc16.i_crit_edge ]
  %inc17.i = add nuw nsw i32 %i.133.i, 1
  %exitcond36.not.i = icmp eq i32 %inc17.i, 256
  br i1 %exitcond36.not.i, label %byte_set_size.exit, label %for.inc16.i.for.body5.i_crit_edge

for.inc16.i.for.body5.i_crit_edge:                ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body5.i

byte_set_size.exit:                               ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %byte_set_size.3.i)
  %cmp6 = icmp ult i32 %byte_set_size.3.i, 64
  br i1 %cmp6, label %byte_set_size.exit.out_crit_edge, label %byte_set_size.exit.if.end8_crit_edge

byte_set_size.exit.if.end8_crit_edge:             ; preds = %byte_set_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

byte_set_size.exit.out_crit_edge:                 ; preds = %byte_set_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8:                                          ; preds = %byte_set_size.exit.if.end8_crit_edge, %if.then10.i.if.end8_crit_edge
  %25 = ptrtoint ptr %sample_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sample_size.i, align 4
  %bucket_b.i = getelementptr i8, ptr %call.i, i32 -4
  %27 = ptrtoint ptr %bucket_b.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bucket_b.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %counters.i.i) #18
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %20, align 4
  %conv.i.i = zext i32 %30 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end8
  %i.011.i.i = phi i32 [ 1, %if.end8 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %max_num.010.i.i = phi i64 [ %conv.i.i, %if.end8 ], [ %33, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx2.i.i = getelementptr %struct.bucket_item, ptr %20, i32 %i.011.i.i
  %31 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.i.i, align 4
  %conv4.i.i = zext i32 %32 to i64
  %33 = tail call i64 @llvm.umax.i64(i64 %max_num.010.i.i, i64 %conv4.i.i) #18
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %mul.i = mul i32 %26, 90
  %div.i = udiv i32 %mul.i, 100
  %conv1.i.i.i.i = trunc i64 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %conv1.i.i.i.i, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i.i, i1 true) #18, !range !126
  %sub.i6.i.i.op.i.i.op = sub nuw nsw i32 38, %34
  %sub.i6.i.i.op.i.i.op.op = and i32 %sub.i6.i.i.op.i.i.op, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i6.i.i.op.i.i.op.op)
  %cmp1518.i.i.not79 = icmp eq i32 %sub.i6.i.i.op.i.i.op.op, 0
  %cmp1518.i.i.not = select i1 %tobool.not.i5.i.i.i.i, i1 true, i1 %cmp1518.i.i.not79
  br i1 %cmp1518.i.i.not, label %for.end.i.i.radix_sort.exit.i_crit_edge, label %while.body.preheader.i.i

for.end.i.i.radix_sort.exit.i_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %radix_sort.exit.i

while.body.preheader.i.i:                         ; preds = %for.end.i.i
  %arrayidx37.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 1
  %arrayidx37.1.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 2
  %arrayidx37.2.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 3
  %arrayidx37.3.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 4
  %arrayidx37.4.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 5
  %arrayidx37.5.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 6
  %arrayidx37.6.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 7
  %arrayidx37.7.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 8
  %arrayidx37.8.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 9
  %arrayidx37.9.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 10
  %arrayidx37.10.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 11
  %arrayidx37.11.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 12
  %arrayidx37.12.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 13
  %arrayidx37.13.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 14
  %arrayidx37.14.i.i = getelementptr inbounds [16 x i32], ptr %counters.i.i, i32 0, i32 15
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %for.end103.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %shift.019.i.i = phi i32 [ %add104.i.i, %for.end103.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %35 = call ptr @memset(ptr %counters.i.i, i32 0, i32 64)
  %sh_prom.i.i.i = zext i32 %shift.019.i.i to i64
  br label %for.body20.i.i

for.body20.i.i:                                   ; preds = %for.body20.i.i.for.body20.i.i_crit_edge, %while.body.i.i
  %i.112.i.i = phi i32 [ 0, %while.body.i.i ], [ %inc29.i.i, %for.body20.i.i.for.body20.i.i_crit_edge ]
  %arrayidx21.i.i = getelementptr %struct.bucket_item, ptr %20, i32 %i.112.i.i
  %36 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx21.i.i, align 4
  %conv23.i.i = zext i32 %37 to i64
  %shr.i.i.i = lshr i64 %conv23.i.i, %sh_prom.i.i.i
  %38 = trunc i64 %shr.i.i.i to i32
  %39 = and i32 %38, 15
  %conv.i.i.i = xor i32 %39, 15
  %arrayidx26.i.i = getelementptr [16 x i32], ptr %counters.i.i, i32 0, i32 %conv.i.i.i
  %40 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx26.i.i, align 4
  %inc27.i.i = add i32 %41, 1
  store i32 %inc27.i.i, ptr %arrayidx26.i.i, align 4
  %inc29.i.i = add nuw nsw i32 %i.112.i.i, 1
  %exitcond20.not.i.i = icmp eq i32 %inc29.i.i, 256
  br i1 %exitcond20.not.i.i, label %for.body34.preheader.i.i, label %for.body20.i.i.for.body20.i.i_crit_edge

for.body20.i.i.for.body20.i.i_crit_edge:          ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body20.i.i

for.body34.preheader.i.i:                         ; preds = %for.body20.i.i
  %42 = ptrtoint ptr %counters.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %counters.i.i, align 4
  %44 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx37.i.i, align 4
  %add38.i.i = add i32 %45, %43
  store i32 %add38.i.i, ptr %arrayidx37.i.i, align 4
  %46 = ptrtoint ptr %arrayidx37.1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx37.1.i.i, align 4
  %add38.1.i.i = add i32 %47, %add38.i.i
  store i32 %add38.1.i.i, ptr %arrayidx37.1.i.i, align 4
  %48 = ptrtoint ptr %arrayidx37.2.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx37.2.i.i, align 4
  %add38.2.i.i = add i32 %49, %add38.1.i.i
  store i32 %add38.2.i.i, ptr %arrayidx37.2.i.i, align 4
  %50 = ptrtoint ptr %arrayidx37.3.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx37.3.i.i, align 4
  %add38.3.i.i = add i32 %51, %add38.2.i.i
  store i32 %add38.3.i.i, ptr %arrayidx37.3.i.i, align 4
  %52 = ptrtoint ptr %arrayidx37.4.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx37.4.i.i, align 4
  %add38.4.i.i = add i32 %53, %add38.3.i.i
  store i32 %add38.4.i.i, ptr %arrayidx37.4.i.i, align 4
  %54 = ptrtoint ptr %arrayidx37.5.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx37.5.i.i, align 4
  %add38.5.i.i = add i32 %55, %add38.4.i.i
  store i32 %add38.5.i.i, ptr %arrayidx37.5.i.i, align 4
  %56 = ptrtoint ptr %arrayidx37.6.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx37.6.i.i, align 4
  %add38.6.i.i = add i32 %57, %add38.5.i.i
  store i32 %add38.6.i.i, ptr %arrayidx37.6.i.i, align 4
  %58 = ptrtoint ptr %arrayidx37.7.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx37.7.i.i, align 4
  %add38.7.i.i = add i32 %59, %add38.6.i.i
  store i32 %add38.7.i.i, ptr %arrayidx37.7.i.i, align 4
  %60 = ptrtoint ptr %arrayidx37.8.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx37.8.i.i, align 4
  %add38.8.i.i = add i32 %61, %add38.7.i.i
  store i32 %add38.8.i.i, ptr %arrayidx37.8.i.i, align 4
  %62 = ptrtoint ptr %arrayidx37.9.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx37.9.i.i, align 4
  %add38.9.i.i = add i32 %63, %add38.8.i.i
  store i32 %add38.9.i.i, ptr %arrayidx37.9.i.i, align 4
  %64 = ptrtoint ptr %arrayidx37.10.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx37.10.i.i, align 4
  %add38.10.i.i = add i32 %65, %add38.9.i.i
  store i32 %add38.10.i.i, ptr %arrayidx37.10.i.i, align 4
  %66 = ptrtoint ptr %arrayidx37.11.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx37.11.i.i, align 4
  %add38.11.i.i = add i32 %67, %add38.10.i.i
  store i32 %add38.11.i.i, ptr %arrayidx37.11.i.i, align 4
  %68 = ptrtoint ptr %arrayidx37.12.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx37.12.i.i, align 4
  %add38.12.i.i = add i32 %69, %add38.11.i.i
  store i32 %add38.12.i.i, ptr %arrayidx37.12.i.i, align 4
  %70 = ptrtoint ptr %arrayidx37.13.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx37.13.i.i, align 4
  %add38.13.i.i = add i32 %71, %add38.12.i.i
  store i32 %add38.13.i.i, ptr %arrayidx37.13.i.i, align 4
  %72 = ptrtoint ptr %arrayidx37.14.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx37.14.i.i, align 4
  %add38.14.i.i = add i32 %73, %add38.13.i.i
  store i32 %add38.14.i.i, ptr %arrayidx37.14.i.i, align 4
  br label %for.body46.i.i

for.body46.i.i:                                   ; preds = %for.body46.i.i.for.body46.i.i_crit_edge, %for.body34.preheader.i.i
  %i.314.i.i = phi i32 [ 255, %for.body34.preheader.i.i ], [ %dec57.i.i, %for.body46.i.i.for.body46.i.i_crit_edge ]
  %arrayidx47.i.i = getelementptr %struct.bucket_item, ptr %20, i32 %i.314.i.i
  %74 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx47.i.i, align 4
  %conv49.i.i = zext i32 %75 to i64
  %shr.i2.i.i = lshr i64 %conv49.i.i, %sh_prom.i.i.i
  %76 = trunc i64 %shr.i2.i.i to i32
  %77 = and i32 %76, 15
  %conv.i3.i.i = xor i32 %77, 15
  %arrayidx52.i.i = getelementptr [16 x i32], ptr %counters.i.i, i32 0, i32 %conv.i3.i.i
  %78 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx52.i.i, align 4
  %dec.i.i = add i32 %79, -1
  store i32 %dec.i.i, ptr %arrayidx52.i.i, align 4
  %arrayidx54.i.i = getelementptr %struct.bucket_item, ptr %28, i32 %dec.i.i
  %80 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %75, ptr %arrayidx54.i.i, align 4
  %dec57.i.i = add nsw i32 %i.314.i.i, -1
  %cmp44.not.i.i = icmp eq i32 %i.314.i.i, 0
  br i1 %cmp44.not.i.i, label %for.end58.i.i, label %for.body46.i.i.for.body46.i.i_crit_edge

for.body46.i.i.for.body46.i.i_crit_edge:          ; preds = %for.body46.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body46.i.i

for.end58.i.i:                                    ; preds = %for.body46.i.i
  %add59.i.i = or i32 %shift.019.i.i, 4
  %81 = call ptr @memset(ptr %counters.i.i, i32 0, i32 64)
  %sh_prom.i4.i.i = zext i32 %add59.i.i to i64
  br label %for.body64.i.i

for.body64.i.i:                                   ; preds = %for.body64.i.i.for.body64.i.i_crit_edge, %for.end58.i.i
  %i.415.i.i = phi i32 [ 0, %for.end58.i.i ], [ %inc73.i.i, %for.body64.i.i.for.body64.i.i_crit_edge ]
  %arrayidx65.i.i = getelementptr %struct.bucket_item, ptr %28, i32 %i.415.i.i
  %82 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx65.i.i, align 4
  %conv67.i.i = zext i32 %83 to i64
  %shr.i5.i.i = lshr i64 %conv67.i.i, %sh_prom.i4.i.i
  %84 = trunc i64 %shr.i5.i.i to i32
  %85 = and i32 %84, 15
  %conv.i6.i.i = xor i32 %85, 15
  %arrayidx70.i.i = getelementptr [16 x i32], ptr %counters.i.i, i32 0, i32 %conv.i6.i.i
  %86 = ptrtoint ptr %arrayidx70.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx70.i.i, align 4
  %inc71.i.i = add i32 %87, 1
  store i32 %inc71.i.i, ptr %arrayidx70.i.i, align 4
  %inc73.i.i = add nuw nsw i32 %i.415.i.i, 1
  %exitcond22.not.i.i = icmp eq i32 %inc73.i.i, 256
  br i1 %exitcond22.not.i.i, label %for.body78.preheader.i.i, label %for.body64.i.i.for.body64.i.i_crit_edge

for.body64.i.i.for.body64.i.i_crit_edge:          ; preds = %for.body64.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body64.i.i

for.body78.preheader.i.i:                         ; preds = %for.body64.i.i
  %88 = ptrtoint ptr %counters.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %counters.i.i, align 4
  %90 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx37.i.i, align 4
  %add82.i.i = add i32 %91, %89
  store i32 %add82.i.i, ptr %arrayidx37.i.i, align 4
  %92 = ptrtoint ptr %arrayidx37.1.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx37.1.i.i, align 4
  %add82.1.i.i = add i32 %93, %add82.i.i
  store i32 %add82.1.i.i, ptr %arrayidx37.1.i.i, align 4
  %94 = ptrtoint ptr %arrayidx37.2.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx37.2.i.i, align 4
  %add82.2.i.i = add i32 %95, %add82.1.i.i
  store i32 %add82.2.i.i, ptr %arrayidx37.2.i.i, align 4
  %96 = ptrtoint ptr %arrayidx37.3.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx37.3.i.i, align 4
  %add82.3.i.i = add i32 %97, %add82.2.i.i
  store i32 %add82.3.i.i, ptr %arrayidx37.3.i.i, align 4
  %98 = ptrtoint ptr %arrayidx37.4.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx37.4.i.i, align 4
  %add82.4.i.i = add i32 %99, %add82.3.i.i
  store i32 %add82.4.i.i, ptr %arrayidx37.4.i.i, align 4
  %100 = ptrtoint ptr %arrayidx37.5.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx37.5.i.i, align 4
  %add82.5.i.i = add i32 %101, %add82.4.i.i
  store i32 %add82.5.i.i, ptr %arrayidx37.5.i.i, align 4
  %102 = ptrtoint ptr %arrayidx37.6.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx37.6.i.i, align 4
  %add82.6.i.i = add i32 %103, %add82.5.i.i
  store i32 %add82.6.i.i, ptr %arrayidx37.6.i.i, align 4
  %104 = ptrtoint ptr %arrayidx37.7.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx37.7.i.i, align 4
  %add82.7.i.i = add i32 %105, %add82.6.i.i
  store i32 %add82.7.i.i, ptr %arrayidx37.7.i.i, align 4
  %106 = ptrtoint ptr %arrayidx37.8.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx37.8.i.i, align 4
  %add82.8.i.i = add i32 %107, %add82.7.i.i
  store i32 %add82.8.i.i, ptr %arrayidx37.8.i.i, align 4
  %108 = ptrtoint ptr %arrayidx37.9.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx37.9.i.i, align 4
  %add82.9.i.i = add i32 %109, %add82.8.i.i
  store i32 %add82.9.i.i, ptr %arrayidx37.9.i.i, align 4
  %110 = ptrtoint ptr %arrayidx37.10.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx37.10.i.i, align 4
  %add82.10.i.i = add i32 %111, %add82.9.i.i
  store i32 %add82.10.i.i, ptr %arrayidx37.10.i.i, align 4
  %112 = ptrtoint ptr %arrayidx37.11.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx37.11.i.i, align 4
  %add82.11.i.i = add i32 %113, %add82.10.i.i
  store i32 %add82.11.i.i, ptr %arrayidx37.11.i.i, align 4
  %114 = ptrtoint ptr %arrayidx37.12.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx37.12.i.i, align 4
  %add82.12.i.i = add i32 %115, %add82.11.i.i
  store i32 %add82.12.i.i, ptr %arrayidx37.12.i.i, align 4
  %116 = ptrtoint ptr %arrayidx37.13.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx37.13.i.i, align 4
  %add82.13.i.i = add i32 %117, %add82.12.i.i
  store i32 %add82.13.i.i, ptr %arrayidx37.13.i.i, align 4
  %118 = ptrtoint ptr %arrayidx37.14.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx37.14.i.i, align 4
  %add82.14.i.i = add i32 %119, %add82.13.i.i
  store i32 %add82.14.i.i, ptr %arrayidx37.14.i.i, align 4
  br label %for.body90.i.i

for.body90.i.i:                                   ; preds = %for.body90.i.i.for.body90.i.i_crit_edge, %for.body78.preheader.i.i
  %i.617.i.i = phi i32 [ 255, %for.body78.preheader.i.i ], [ %dec102.i.i, %for.body90.i.i.for.body90.i.i_crit_edge ]
  %arrayidx91.i.i = getelementptr %struct.bucket_item, ptr %28, i32 %i.617.i.i
  %120 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx91.i.i, align 4
  %conv93.i.i = zext i32 %121 to i64
  %shr.i8.i.i = lshr i64 %conv93.i.i, %sh_prom.i4.i.i
  %122 = trunc i64 %shr.i8.i.i to i32
  %123 = and i32 %122, 15
  %conv.i9.i.i = xor i32 %123, 15
  %arrayidx96.i.i = getelementptr [16 x i32], ptr %counters.i.i, i32 0, i32 %conv.i9.i.i
  %124 = ptrtoint ptr %arrayidx96.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx96.i.i, align 4
  %dec97.i.i = add i32 %125, -1
  store i32 %dec97.i.i, ptr %arrayidx96.i.i, align 4
  %arrayidx99.i.i = getelementptr %struct.bucket_item, ptr %20, i32 %dec97.i.i
  %126 = ptrtoint ptr %arrayidx99.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %121, ptr %arrayidx99.i.i, align 4
  %dec102.i.i = add nsw i32 %i.617.i.i, -1
  %cmp88.not.i.i = icmp eq i32 %i.617.i.i, 0
  br i1 %cmp88.not.i.i, label %for.end103.i.i, label %for.body90.i.i.for.body90.i.i_crit_edge

for.body90.i.i.for.body90.i.i_crit_edge:          ; preds = %for.body90.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body90.i.i

for.end103.i.i:                                   ; preds = %for.body90.i.i
  %add104.i.i = add nuw nsw i32 %shift.019.i.i, 8
  %cmp15.i.i = icmp ult i32 %add104.i.i, %sub.i6.i.i.op.i.i.op.op
  br i1 %cmp15.i.i, label %for.end103.i.i.while.body.i.i_crit_edge, label %for.end103.i.i.radix_sort.exit.i_crit_edge

for.end103.i.i.radix_sort.exit.i_crit_edge:       ; preds = %for.end103.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %radix_sort.exit.i

for.end103.i.i.while.body.i.i_crit_edge:          ; preds = %for.end103.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.i

radix_sort.exit.i:                                ; preds = %for.end103.i.i.radix_sort.exit.i_crit_edge, %for.end.i.i.radix_sort.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %counters.i.i) #18
  br label %for.body.i42

for.body.i42:                                     ; preds = %for.body.i42.for.body.i42_crit_edge, %radix_sort.exit.i
  %coreset_sum.040.i = phi i32 [ 0, %radix_sort.exit.i ], [ %add.i, %for.body.i42.for.body.i42_crit_edge ]
  %i.039.i = phi i32 [ 0, %radix_sort.exit.i ], [ %inc.i40, %for.body.i42.for.body.i42_crit_edge ]
  %arrayidx.i39 = getelementptr %struct.bucket_item, ptr %20, i32 %i.039.i
  %127 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i39, align 4
  %add.i = add i32 %128, %coreset_sum.040.i
  %inc.i40 = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i41 = icmp eq i32 %inc.i40, 64
  br i1 %exitcond.not.i41, label %for.end.i, label %for.body.i42.for.body.i42_crit_edge

for.body.i42.for.body.i42_crit_edge:              ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i42

for.end.i:                                        ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %div.i)
  %cmp3.not.i = icmp ugt i32 %add.i, %div.i
  br i1 %cmp3.not.i, label %for.end.i.out_crit_edge, label %for.end.i.land.rhs.i_crit_edge

for.end.i.land.rhs.i_crit_edge:                   ; preds = %for.end.i
  br label %land.rhs.i

for.end.i.out_crit_edge:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

land.rhs.i:                                       ; preds = %for.inc16.i44.land.rhs.i_crit_edge, %for.end.i.land.rhs.i_crit_edge
  %coreset_sum.143.i = phi i32 [ %add12.i, %for.inc16.i44.land.rhs.i_crit_edge ], [ %add.i, %for.end.i.land.rhs.i_crit_edge ]
  %i.142.i = phi i32 [ %inc17.i43, %for.inc16.i44.land.rhs.i_crit_edge ], [ 64, %for.end.i.land.rhs.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.bucket_item, ptr %20, i32 %i.142.i
  %129 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp8.not.i = icmp eq i32 %130, 0
  br i1 %cmp8.not.i, label %land.rhs.i.byte_core_set_size.exit_crit_edge, label %for.body9.i

land.rhs.i.byte_core_set_size.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %byte_core_set_size.exit

for.body9.i:                                      ; preds = %land.rhs.i
  %add12.i = add i32 %130, %coreset_sum.143.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %div.i)
  %cmp13.i = icmp ugt i32 %add12.i, %div.i
  br i1 %cmp13.i, label %for.body9.i.byte_core_set_size.exit_crit_edge, label %for.inc16.i44

for.body9.i.byte_core_set_size.exit_crit_edge:    ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %byte_core_set_size.exit

for.inc16.i44:                                    ; preds = %for.body9.i
  %inc17.i43 = add nuw nsw i32 %i.142.i, 1
  %exitcond46.not.i = icmp eq i32 %inc17.i43, 200
  br i1 %exitcond46.not.i, label %for.inc16.i44.out_crit_edge, label %for.inc16.i44.land.rhs.i_crit_edge

for.inc16.i44.land.rhs.i_crit_edge:               ; preds = %for.inc16.i44
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i

for.inc16.i44.out_crit_edge:                      ; preds = %for.inc16.i44
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

byte_core_set_size.exit:                          ; preds = %for.body9.i.byte_core_set_size.exit_crit_edge, %land.rhs.i.byte_core_set_size.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %i.142.i)
  %cmp10 = icmp ult i32 %i.142.i, 65
  br i1 %cmp10, label %byte_core_set_size.exit.out_crit_edge, label %if.end12

byte_core_set_size.exit.out_crit_edge:            ; preds = %byte_core_set_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end12:                                         ; preds = %byte_core_set_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %i.142.i)
  %cmp13 = icmp ugt i32 %i.142.i, 199
  br i1 %cmp13, label %if.end12.out_crit_edge, label %if.end15

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end15:                                         ; preds = %if.end12
  %131 = ptrtoint ptr %sample_size.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sample_size.i, align 4
  %conv.i = zext i32 %132 to i64
  %133 = mul nuw i64 %conv.i, %conv.i
  %134 = mul i64 %133, %133
  %shr.i.i.i.i = lshr i64 %134, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %conv.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %135 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i.i, i1 true) #18, !range !126
  %add.i.i.i.i = sub nuw nsw i32 64, %135
  br label %ilog2_w.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %conv1.i.i.i.i50 = trunc i64 %134 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i.i50)
  %tobool.not.i5.i.i.i.i51 = icmp eq i32 %conv1.i.i.i.i50, 0
  %136 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i.i50, i1 true) #18, !range !126
  %sub.i6.i.i.i.i = sub nuw nsw i32 32, %136
  %cond.i7.i.i.i.i = select i1 %tobool.not.i5.i.i.i.i51, i32 0, i32 %sub.i6.i.i.i.i
  br label %ilog2_w.exit.i

ilog2_w.exit.i:                                   ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ %cond.i7.i.i.i.i, %if.end.i.i.i.i ]
  %137 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bucket, align 4
  br label %land.rhs.i56

land.rhs.i56:                                     ; preds = %ilog2_w.exit43.i.land.rhs.i56_crit_edge, %ilog2_w.exit.i
  %i.046.i = phi i32 [ 0, %ilog2_w.exit.i ], [ %inc.i59, %ilog2_w.exit43.i.land.rhs.i56_crit_edge ]
  %entropy_sum.045.i = phi i32 [ 0, %ilog2_w.exit.i ], [ %add.i58, %ilog2_w.exit43.i.land.rhs.i56_crit_edge ]
  %arrayidx.i54 = getelementptr %struct.bucket_item, ptr %138, i32 %i.046.i
  %139 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp3.not.i55 = icmp eq i32 %140, 0
  br i1 %cmp3.not.i55, label %land.rhs.i56.shannon_entropy.exit_crit_edge, label %for.body.i57

land.rhs.i56.shannon_entropy.exit_crit_edge:      ; preds = %land.rhs.i56
  call void @__sanitizer_cov_trace_pc() #20
  br label %shannon_entropy.exit

for.body.i57:                                     ; preds = %land.rhs.i56
  %conv8.i = zext i32 %140 to i64
  %141 = mul nuw i64 %conv8.i, %conv8.i
  %142 = mul i64 %141, %141
  %shr.i.i.i28.i = lshr i64 %142, 32
  %conv.i.i.i29.i = trunc i64 %shr.i.i.i28.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i29.i)
  %tobool.not.i.i.i30.i = icmp eq i32 %conv.i.i.i29.i, 0
  br i1 %tobool.not.i.i.i30.i, label %if.end.i.i.i38.i, label %if.then.i.i.i33.i

if.then.i.i.i33.i:                                ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #20
  %143 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i29.i, i1 true) #18, !range !126
  %add.i.i.i32.neg.i = or i32 %143, -64
  br label %ilog2_w.exit43.i

if.end.i.i.i38.i:                                 ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #20
  %conv1.i.i.i34.i = trunc i64 %142 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i34.i)
  %tobool.not.i5.i.i.i35.i = icmp eq i32 %conv1.i.i.i34.i, 0
  %144 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i34.i, i1 true) #18, !range !126
  %sub.i6.i.i.i36.neg.i = or i32 %144, -32
  %cond.i7.i.i.i37.neg.i = select i1 %tobool.not.i5.i.i.i35.i, i32 0, i32 %sub.i6.i.i.i36.neg.i
  br label %ilog2_w.exit43.i

ilog2_w.exit43.i:                                 ; preds = %if.end.i.i.i38.i, %if.then.i.i.i33.i
  %retval.0.i.i.i39.neg.i = phi i32 [ %add.i.i.i32.neg.i, %if.then.i.i.i33.i ], [ %cond.i7.i.i.i37.neg.i, %if.end.i.i.i38.i ]
  %sub.i = add nsw i32 %retval.0.i.i.i39.neg.i, %retval.0.i.i.i.i
  %mul10.i = mul i32 %sub.i, %140
  %add.i58 = add i32 %mul10.i, %entropy_sum.045.i
  %inc.i59 = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i60 = icmp eq i32 %inc.i59, 256
  br i1 %exitcond.not.i60, label %ilog2_w.exit43.i.shannon_entropy.exit_crit_edge, label %ilog2_w.exit43.i.land.rhs.i56_crit_edge

ilog2_w.exit43.i.land.rhs.i56_crit_edge:          ; preds = %ilog2_w.exit43.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i56

ilog2_w.exit43.i.shannon_entropy.exit_crit_edge:  ; preds = %ilog2_w.exit43.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %shannon_entropy.exit

shannon_entropy.exit:                             ; preds = %ilog2_w.exit43.i.shannon_entropy.exit_crit_edge, %land.rhs.i56.shannon_entropy.exit_crit_edge
  %entropy_sum.0.lcssa.i = phi i32 [ %add.i58, %ilog2_w.exit43.i.shannon_entropy.exit_crit_edge ], [ %entropy_sum.045.i, %land.rhs.i56.shannon_entropy.exit_crit_edge ]
  %div.i61 = udiv i32 %entropy_sum.0.lcssa.i, %132
  %mul12.i = mul i32 %div.i61, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 2112, i32 %mul12.i)
  %cmp17 = icmp ult i32 %mul12.i, 2112
  br i1 %cmp17, label %shannon_entropy.exit.out_crit_edge, label %if.end19

shannon_entropy.exit.out_crit_edge:               ; preds = %shannon_entropy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end19:                                         ; preds = %shannon_entropy.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %mul12.i)
  %cmp20 = icmp ult i32 %mul12.i, 2560
  %. = select i1 %cmp20, i32 5, i32 0
  br label %out

out:                                              ; preds = %if.end19, %shannon_entropy.exit.out_crit_edge, %if.end12.out_crit_edge, %byte_core_set_size.exit.out_crit_edge, %for.inc16.i44.out_crit_edge, %for.end.i.out_crit_edge, %byte_set_size.exit.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 1, %entry.out_crit_edge ], [ 2, %byte_set_size.exit.out_crit_edge ], [ 3, %byte_core_set_size.exit.out_crit_edge ], [ 0, %if.end12.out_crit_edge ], [ 4, %shannon_entropy.exit.out_crit_edge ], [ %., %if.end19 ], [ 3, %for.end.i.out_crit_edge ], [ 0, %for.inc16.i44.out_crit_edge ]
  tail call void @btrfs_put_workspace(i32 noundef 0, ptr noundef %call.i) #18
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @heuristic_collect_sample(ptr nocapture noundef readonly %inode, i64 noundef %start, i64 noundef %end, ptr nocapture noundef %ws) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i64 %end, %start
  call void @__sanitizer_cov_trace_const_cmp8(i64 131072, i64 %sub)
  %cmp = icmp ugt i64 %sub, 131072
  %add = add i64 %start, 131072
  %spec.select = select i1 %cmp, i64 %add, i64 %end
  %shr = lshr i64 %start, 12
  %shr1 = lshr i64 %spec.select, 12
  %and = and i64 %spec.select, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp2 = icmp ne i64 %and, 0
  %inc = zext i1 %cmp2 to i64
  %index_end.0 = add nuw nsw i64 %shr1, %inc
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %index_end.0)
  %cmp553 = icmp ult i64 %shr, %index_end.0
  br i1 %cmp553, label %while.body.lr.ph, label %entry.while.end25_crit_edge

entry.while.end25_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end25

while.body.lr.ph:                                 ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %sub12 = add i64 %spec.select, -16
  br label %while.body

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %while.body.lr.ph
  %curr_sample_pos.056 = phi i32 [ 0, %while.body.lr.ph ], [ %curr_sample_pos.1.lcssa, %put_page.exit.while.body_crit_edge ]
  %index.055 = phi i64 [ %shr, %while.body.lr.ph ], [ %inc24, %put_page.exit.while.body_crit_edge ]
  %start.addr.054 = phi i64 [ %start, %while.body.lr.ph ], [ %start.addr.1.lcssa, %put_page.exit.while.body_crit_edge ]
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %conv = trunc i64 %index.055 to i32
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %conv, i32 noundef 0, i32 noundef 0) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %2, 512
  %call.i44 = tail call ptr @__kmap_local_page_prot(ptr noundef %call.i, i32 noundef %or.i) #18
  %3 = trunc i64 %start.addr.054 to i32
  %conv7 = and i32 %3, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4079, i32 %conv7)
  %cmp946 = icmp ugt i32 %conv7, 4079
  call void @__sanitizer_cov_trace_cmp8(i64 %start.addr.054, i64 %sub12)
  %cmp1347 = icmp ugt i64 %start.addr.054, %sub12
  %or.cond48 = select i1 %cmp946, i1 true, i1 %cmp1347
  br i1 %or.cond48, label %while.body.do.end_crit_edge, label %while.body.if.end16_crit_edge

while.body.if.end16_crit_edge:                    ; preds = %while.body
  br label %if.end16

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.end16:                                         ; preds = %if.end16.if.end16_crit_edge, %while.body.if.end16_crit_edge
  %curr_sample_pos.151 = phi i32 [ %add20, %if.end16.if.end16_crit_edge ], [ %curr_sample_pos.056, %while.body.if.end16_crit_edge ]
  %i.050 = phi i32 [ %add18, %if.end16.if.end16_crit_edge ], [ %conv7, %while.body.if.end16_crit_edge ]
  %start.addr.149 = phi i64 [ %add19, %if.end16.if.end16_crit_edge ], [ %start.addr.054, %while.body.if.end16_crit_edge ]
  %4 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ws, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %curr_sample_pos.151
  %arrayidx17 = getelementptr i8, ptr %call.i44, i32 %i.050
  %6 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx17, i32 16)
  %add18 = add nuw nsw i32 %i.050, 256
  %add19 = add i64 %start.addr.149, 256
  %add20 = add i32 %curr_sample_pos.151, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3823, i32 %i.050)
  %cmp9 = icmp ugt i32 %i.050, 3823
  call void @__sanitizer_cov_trace_cmp8(i64 %add19, i64 %sub12)
  %cmp13 = icmp ugt i64 %add19, %sub12
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.end16.do.end_crit_edge, label %if.end16.if.end16_crit_edge

if.end16.if.end16_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.end:                                           ; preds = %if.end16.do.end_crit_edge, %while.body.do.end_crit_edge
  %start.addr.1.lcssa = phi i64 [ %start.addr.054, %while.body.do.end_crit_edge ], [ %add19, %if.end16.do.end_crit_edge ]
  %curr_sample_pos.1.lcssa = phi i32 [ %curr_sample_pos.056, %while.body.do.end_crit_edge ], [ %add20, %if.end16.do.end_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i44) #18
  %7 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !104

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %12 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !105

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %14 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.24) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !107
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@heuristic_collect_sample, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !111

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %11, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %11) #18
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc24 = add nuw nsw i64 %index.055, 1
  %cmp5 = icmp ult i64 %inc24, %index_end.0
  br i1 %cmp5, label %put_page.exit.while.body_crit_edge, label %put_page.exit.while.end25_crit_edge

put_page.exit.while.end25_crit_edge:              ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end25

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end25:                                      ; preds = %put_page.exit.while.end25_crit_edge, %entry.while.end25_crit_edge
  %curr_sample_pos.0.lcssa = phi i32 [ 0, %entry.while.end25_crit_edge ], [ %curr_sample_pos.1.lcssa, %put_page.exit.while.end25_crit_edge ]
  %sample_size = getelementptr inbounds %struct.heuristic_ws, ptr %ws, i32 0, i32 1
  %16 = ptrtoint ptr %sample_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %curr_sample_pos.0.lcssa, ptr %sample_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_compress_str2level(i32 noundef %type, ptr noundef %str) local_unnamed_addr #4 align 64 {
entry:
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #18
  %0 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool.not = icmp eq i32 %type, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %2)
  %cmp = icmp eq i8 %2, 58
  br i1 %cmp, label %if.then2, label %if.end.if.end6.thread_crit_edge

if.end.if.end6.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.thread

if.then2:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %str, i32 1
  %call = call i32 @kstrtouint(ptr noundef %add.ptr, i32 noundef 10, ptr noundef nonnull %level) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end6, label %if.then2.if.end6.thread_crit_edge

if.then2.if.end6.thread_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.thread

if.end6.thread:                                   ; preds = %if.then2.if.end6.thread_crit_edge, %if.end.if.end6.thread_crit_edge
  %arrayidx.i11 = getelementptr [4 x ptr], ptr @btrfs_compress_op, i32 0, i32 %type
  %3 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i11, align 4
  br label %if.then.i

if.end6:                                          ; preds = %if.then2
  %5 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %level, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @btrfs_compress_op, i32 0, i32 %type
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i = icmp eq i32 %.pr, 0
  br i1 %cmp.i, label %if.end6.if.then.i_crit_edge, label %if.else.i

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.then.i:                                        ; preds = %if.end6.if.then.i_crit_edge, %if.end6.thread
  %8 = phi ptr [ %4, %if.end6.thread ], [ %7, %if.end6.if.then.i_crit_edge ]
  %default_level.i = getelementptr inbounds %struct.btrfs_compress_op, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %default_level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %default_level.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %max_level.i = getelementptr inbounds %struct.btrfs_compress_op, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %max_level.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_level.i, align 4
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 %.pr) #18
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %10, %if.then.i ], [ %13, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_bio_alloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_chunk_map(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_io_geometry(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dec_and_test_compressed_bio(ptr noundef %cb, ptr nocapture noundef readonly %bio) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 3
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %6 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not.i27.not = icmp eq i16 %7, 0
  br i1 %cmp.not.i27.not, label %entry.for.end_crit_edge, label %if.end.i.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %entry
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %8 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_io_vec.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %if.end.i.lr.ph
  %bi_size.031 = phi i32 [ 0, %if.end.i.lr.ph ], [ %add, %if.end.i.i.if.end.i_crit_edge ]
  %iter_all.sroa.11.029 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select26, %if.end.i.i.if.end.i_crit_edge ]
  %iter_all.sroa.15.028 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %if.end.i.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.028)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.15.028, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.i.if.end.i.i_crit_edge

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %9, i32 %iter_all.sroa.11.029, i32 2
  %10 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bv_offset3.i.i, align 4
  %and.i.i = and i32 %11, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.end.i.if.end.i.i_crit_edge
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.end.i.if.end.i.i_crit_edge ]
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %9, i32 %iter_all.sroa.11.029, i32 1
  %12 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %13, %iter_all.sroa.15.028
  %14 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #18
  %add.i.i = add i32 %14, %iter_all.sroa.15.028
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %13)
  %cmp15.i.i = icmp eq i32 %add.i.i, %13
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select26 = add nuw nsw i32 %iter_all.sroa.11.029, %inc.i.i
  %add = add i32 %14, %bi_size.031
  %cmp.not.i = icmp ult i32 %spec.select26, %conv.i
  br i1 %cmp.not.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.for.end_crit_edge

if.end.i.i.for.end_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.end:                                          ; preds = %if.end.i.i.for.end_crit_edge, %entry.for.end_crit_edge
  %bi_size.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %if.end.i.i.for.end_crit_edge ]
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %15 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %errors = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 8
  %17 = ptrtoint ptr %errors to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %errors, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bi_size.0.lcssa)
  %tobool3.not = icmp eq i32 %bi_size.0.lcssa, 0
  br i1 %tobool3.not, label %if.end.cond.false_crit_edge, label %land.rhs, !prof !105

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false

land.rhs:                                         ; preds = %if.end
  %compressed_len = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 6
  %18 = ptrtoint ptr %compressed_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %compressed_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bi_size.0.lcssa, i32 %19)
  %cmp.not = icmp ugt i32 %bi_size.0.lcssa, %19
  br i1 %cmp.not, label %land.rhs.cond.false_crit_edge, label %cond.end, !prof !105

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %if.end.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.20, i32 noundef 224) #21
  unreachable

cond.end:                                         ; preds = %land.rhs
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 168
  %20 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sectorsize_bits, align 8
  %shr = lshr i32 %bi_size.0.lcssa, %21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cb, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %cb, i32 1, i32 3, i32 1) #18
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cb, ptr %cb, i32 %shr, ptr elementtype(i32) %cb) #18, !srcloc !128
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %shr)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, %shr
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end5.i.i

do.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !129
  br label %refcount_sub_and_test.exit

if.end5.i.i:                                      ; preds = %cond.end
  %sub.i.i17 = sub i32 %asmresult.i.i.i.i.i, %shr
  %23 = or i32 %sub.i.i17, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i, label %if.end5.i.i.refcount_sub_and_test.exit_crit_edge, label %if.then10.i.i, !prof !104

if.end5.i.i.refcount_sub_and_test.exit_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %refcount_sub_and_test.exit

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %cb, i32 noundef 3) #18
  br label %refcount_sub_and_test.exit

refcount_sub_and_test.exit:                       ; preds = %if.then10.i.i, %if.end5.i.i.refcount_sub_and_test.exit_crit_edge, %do.end.i.i
  tail call void @wake_up_var(ptr noundef %cb) #18
  ret i1 %cmp.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_record_physical_zoned(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_bio_wq_end_io(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_map_bio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_writepage_endio_finish_ordered(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @end_compressed_writeback(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %cb) unnamed_addr #7 align 64 {
entry:
  %pages = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %start = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 4
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %shr = lshr i64 %5, 12
  %conv = trunc i64 %shr to i32
  %len = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 5
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 8
  %conv2 = zext i32 %7 to i64
  %add = add i64 %5, 17592186044415
  %sub = add i64 %add, %conv2
  %shr3 = lshr i64 %sub, 12
  %conv4 = trunc i64 %shr3 to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pages) #18
  %8 = call ptr @memset(ptr %pages, i32 255, i32 64)
  %sub5 = sub i32 1, %conv
  %add6 = add i32 %sub5, %conv4
  %errors = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 8
  %9 = ptrtoint ptr %errors to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %errors, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %11 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_mapping, align 8
  tail call void @__filemap_set_wb_err(ptr noundef %12, i32 noundef -5) #18
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool4.not.i = icmp eq ptr %14, null
  br i1 %tobool4.not.i, label %if.then.mapping_set_error.exit_crit_edge, label %if.then5.i

if.then.mapping_set_error.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %mapping_set_error.exit

if.then5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef -5) #18
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i, %if.then.mapping_set_error.exit_crit_edge
  %flags9.i = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags9.i) #18
  br label %if.end

if.end:                                           ; preds = %mapping_set_error.exit, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add6)
  %cmp.not66 = icmp eq i32 %add6, 0
  br i1 %cmp.not66, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %i_mapping8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %nr_pages.068 = phi i32 [ %add6, %while.body.lr.ph ], [ %nr_pages.0.be, %while.cond.backedge.while.body_crit_edge ]
  %index.067 = phi i32 [ %conv, %while.body.lr.ph ], [ %index.0.be, %while.cond.backedge.while.body_crit_edge ]
  %17 = ptrtoint ptr %i_mapping8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping8, align 8
  %19 = call i32 @llvm.umin.i32(i32 %nr_pages.068, i32 16)
  %call11 = call i32 @find_get_pages_contig(ptr noundef %18, i32 noundef %index.067, i32 noundef %19, ptr noundef nonnull %pages) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp1863 = icmp sgt i32 %call11, 0
  br i1 %cmp1863, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %sub15 = add i32 %nr_pages.068, -1
  %add16 = add i32 %index.067, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.end, %if.then14
  %index.0.be = phi i32 [ %add16, %if.then14 ], [ %add29, %for.end ]
  %nr_pages.0.be = phi i32 [ %sub15, %if.then14 ], [ %sub28, %for.end ]
  %cmp.not = icmp eq i32 %nr_pages.0.be, 0
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %put_page.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %20 = ptrtoint ptr %errors to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %errors, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21.not = icmp eq i8 %21, 0
  br i1 %tobool21.not, label %for.body.if.end23_crit_edge, label %if.then22

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.then22:                                        ; preds = %for.body
  %arrayidx = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %i.064
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !104

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.22) #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #18, !srcloc !130
  unreachable

do.body7.i:                                       ; preds = %if.then22
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %24, align 4
  %and.i31.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !104

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %28, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %23 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %29, %if.end.i.i ]
  %30 = inttoptr i32 %retval.0.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i = icmp eq i32 %32, -1
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %24, align 4
  %and.i32.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !105

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !104

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i34.i = add i32 %34, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %23 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %35, %if.end.i36.i ]
  %36 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.23) #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #18, !srcloc !131
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !104

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i41.i = add i32 %34, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #20
  %37 = ptrtoint ptr %23 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %37, %if.end.i43.i ]
  %38 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %38) #18
  br label %if.end23

if.end23:                                         ; preds = %SetPageError.exit, %for.body.if.end23_crit_edge
  %arrayidx24 = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %i.064
  %39 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx24, align 4
  %41 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %start, align 8
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 8
  call void @btrfs_page_clamp_clear_writeback(ptr noundef %3, ptr noundef %40, i64 noundef %42, i32 noundef %44) #18
  %45 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx24, align 4
  %47 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and.i.i53 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i53)
  %tobool.not.i.i54 = icmp eq i32 %and.i.i53, 0
  br i1 %tobool.not.i.i54, label %if.end.i.i57, label %if.then.i.i56, !prof !104

if.then.i.i56:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i55 = add i32 %49, -1
  br label %_compound_head.exit.i59

if.end.i.i57:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  %50 = ptrtoint ptr %46 to i32
  br label %_compound_head.exit.i59

_compound_head.exit.i59:                          ; preds = %if.end.i.i57, %if.then.i.i56
  %retval.0.i.i58 = phi i32 [ %sub.i.i55, %if.then.i.i56 ], [ %50, %if.end.i.i57 ]
  %51 = inttoptr i32 %retval.0.i.i58 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %52 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i.i.i = icmp eq i32 %53, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !105

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i59
  call void @__sanitizer_cov_trace_pc() #20
  %54 = inttoptr i32 %retval.0.i.i58 to ptr
  call void @dump_page(ptr noundef %54, ptr noundef nonnull @.str.24) #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !107
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i59
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %55 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %55, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@end_compressed_writeback, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !111

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %51, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__put_page(ptr noundef %51) #18
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %call11
  br i1 %exitcond.not, label %put_page.exit.for.end_crit_edge, label %put_page.exit.for.body_crit_edge

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sub28 = sub i32 %nr_pages.068, %call11
  %add29 = add i32 %call11, %index.067
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages) #18
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !104

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #18
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !105

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.24) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !107
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #18
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #18, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !111

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #18
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %4) #18
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_pages_contig(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_page_clamp_clear_writeback(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !132
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_off() #18
  %1 = tail call ptr @llvm.returnaddress(i32 0) #18
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #18
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #18
  tail call void @trace_hardirqs_on() #18
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %3 = tail call ptr @llvm.returnaddress(i32 0) #18
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #18
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #18
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !133
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !105

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #18, !srcloc !134
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !135
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !136
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !137
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !138
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_to_page_cache_lru(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_extent_mapped(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memzero_page(ptr noundef %page, i32 noundef %offset, i32 noundef %len) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %0, 512
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #18
  %add.ptr = getelementptr i8, ptr %call.i, i32 %offset
  %1 = call ptr @memset(ptr %add.ptr, i32 0, i32 %len)
  tail call void @flush_dcache_page(ptr noundef %page) #18
  tail call void @kunmap_local_indexed(ptr noundef %call.i) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_subpage_start_reader(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__folio_alloc(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_extent_bits(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_dev_stat_inc_and_print(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_decompress_bio(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo_decompress_bio(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_decompress_bio(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_page_set_checked(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zlib_alloc_workspace(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lzo_alloc_workspace(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_alloc_workspace(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @zlib_free_workspace(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lzo_free_workspace(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @zstd_free_workspace(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zlib_get_workspace(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_get_workspace(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_compress_pages(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo_compress_pages(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_compress_pages(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @zstd_put_workspace(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_decompress(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo_decompress(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_decompress(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_advance(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nounwind readonly }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold noreturn }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { cold nounwind }
attributes #25 = { nobuiltin nounwind }
attributes #26 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !50, !51, !53, !55, !57, !58, !60, !62, !63, !65, !67, !69, !70, !71, !73, !74, !76, !78, !80, !82, !84, !85, !87, !88, !90, !91, !92}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/compression.c", i32 521, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/compression.c", i32 560, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/compression.c", i32 571, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/btrfs/compression.c", i32 627, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/btrfs/compression.c", i32 827, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/btrfs/compression.c", i32 896, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/btrfs/compression.c", i32 913, i32 3}
!15 = !{ptr @btrfs_heuristic_compress, !16, !"btrfs_heuristic_compress", i1 false, i1 false}
!16 = !{!"../fs/btrfs/compression.c", i32 1065, i32 32}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/btrfs/compression.c", i32 1221, i32 11}
!19 = !{ptr @btrfs_get_workspace._rs, !18, !"_rs", i1 false, i1 false}
!20 = !{ptr @__func__.btrfs_get_workspace, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/compression.c", i32 1225, i32 8}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/compression.c", i32 1226, i32 5}
!24 = !{ptr @btrfs_get_workspace._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @btrfs_get_workspace._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/btrfs/compression.c", i32 1464, i32 3}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/btrfs/compression.c", i32 1470, i32 3}
!30 = !{ptr @heuristic_wsm, !31, !"heuristic_wsm", i1 false, i1 false}
!31 = !{!"../fs/btrfs/compression.c", i32 1024, i32 33}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/compression.c", i32 35, i32 53}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/btrfs/compression.c", i32 35, i32 57}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/btrfs/compression.c", i32 35, i32 65}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/btrfs/compression.c", i32 35, i32 72}
!40 = !{ptr @btrfs_compress_types, !41, !"btrfs_compress_types", i1 false, i1 false}
!41 = !{!"../fs/btrfs/compression.c", i32 35, i32 26}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @assertfail._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @assertfail._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/btrfs/volumes.h", i32 479, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/btrfs/compression.c", i32 224, i32 2}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/btrfs/compression.c", i32 432, i32 2}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/mm.h", i32 717, i32 2}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/bio.h", i32 248, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/linux/bio.h", i32 259, i32 2}
!67 = !{ptr @btrfs_print_data_csum_error._rs, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../fs/btrfs/btrfs_inode.h", i32 402, i32 3}
!69 = !{ptr @__func__.btrfs_print_data_csum_error, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @btrfs_print_data_csum_error._rs.28, !72, !"_rs", i1 false, i1 false}
!72 = !{!"../fs/btrfs/btrfs_inode.h", i32 410, i32 3}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/btrfs/compression.c", i32 256, i32 3}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/btrfs/compression.c", i32 257, i32 3}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/btrfs/compression.c", i32 262, i32 3}
!80 = !{ptr @btrfs_compress_op, !81, !"btrfs_compress_op", i1 false, i1 false}
!81 = !{!"../fs/btrfs/compression.c", i32 1069, i32 47}
!82 = !{ptr @btrfs_init_workspace_manager.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../fs/btrfs/compression.c", i32 1116, i32 2}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @btrfs_init_workspace_manager.__key.34, !86, !"__key", i1 false, i1 false}
!86 = !{!"../fs/btrfs/compression.c", i32 1118, i32 2}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/btrfs/compression.c", i32 1126, i32 3}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @btrfs_init_workspace_manager._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @btrfs_init_workspace_manager._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2158435182, i64 2158435664, i64 2158435219, i64 2158435275, i64 2158435309, i64 2158435333, i64 2158435374, i64 2158435395, i64 2158435423, i64 2158435457}
!107 = !{i64 2153236020, i64 2153236503, i64 2153236057, i64 2153236113, i64 2153236147, i64 2153236171, i64 2153236212, i64 2153236233, i64 2153236261, i64 2153236295}
!108 = !{i64 2148347425}
!109 = !{i64 2148262158, i64 2148262190, i64 2148262219, i64 2148262253, i64 2148262284, i64 2148262307}
!110 = !{i64 2148347654}
!111 = !{i64 2148740788, i64 2148740793, i64 2148740806, i64 2148740850, i64 2148740884, i64 2148740905}
!112 = !{i64 2153732030}
!113 = !{i64 2152276030}
!114 = !{i64 2152276237}
!115 = !{i64 2153734801}
!116 = !{i64 2158711827, i64 2158712315, i64 2158711864, i64 2158711920, i64 2158711954, i64 2158711978, i64 2158712019, i64 2158712040, i64 2158712068, i64 2158712102}
!117 = !{i64 2158663113, i64 2158663600, i64 2158663150, i64 2158663206, i64 2158663240, i64 2158663264, i64 2158663305, i64 2158663326, i64 2158663354, i64 2158663388}
!118 = !{i64 2158713317, i64 2158713805, i64 2158713354, i64 2158713410, i64 2158713444, i64 2158713468, i64 2158713509, i64 2158713530, i64 2158713558, i64 2158713592}
!119 = !{i64 2148258973, i64 2148258999, i64 2148259028, i64 2148259062, i64 2148259093, i64 2148259116}
!120 = !{i64 2148261438, i64 2148261464, i64 2148261493, i64 2148261527, i64 2148261558, i64 2148261581}
!121 = !{i64 2158703711, i64 2158704199, i64 2158703748, i64 2158703804, i64 2158703838, i64 2158703862, i64 2158703903, i64 2158703924, i64 2158703952, i64 2158703986}
!122 = !{i64 2149307758}
!123 = !{i64 2158705201, i64 2158705689, i64 2158705238, i64 2158705294, i64 2158705328, i64 2158705352, i64 2158705393, i64 2158705414, i64 2158705442, i64 2158705476}
!124 = !{i64 2158664600, i64 2158665087, i64 2158664637, i64 2158664693, i64 2158664727, i64 2158664751, i64 2158664792, i64 2158664813, i64 2158664841, i64 2158664875}
!125 = !{i64 2153766973, i64 2153767461, i64 2153767010, i64 2153767066, i64 2153767100, i64 2153767124, i64 2153767165, i64 2153767186, i64 2153767214, i64 2153767248}
!126 = !{i32 0, i32 33}
!127 = !{i64 2148348504}
!128 = !{i64 2148262968, i64 2148263000, i64 2148263029, i64 2148263063, i64 2148263094, i64 2148263117}
!129 = !{i64 2150471378}
!130 = !{i64 2150731069, i64 2150731242, i64 2150731257, i64 2150731309, i64 2150731368, i64 2150731392, i64 2150731433, i64 2150731454, i64 2150731482, i64 2150731514}
!131 = !{i64 2150731944, i64 2150732117, i64 2150732132, i64 2150732184, i64 2150732243, i64 2150732267, i64 2150732308, i64 2150732329, i64 2150732357, i64 2150732389}
!132 = !{i64 651454, i64 651515}
!133 = !{i64 654186}
!134 = !{i64 654471}
!135 = !{i64 2152603565}
!136 = !{i64 2152603407}
!137 = !{i64 2152603735}
!138 = !{i64 2150189549}
