; ModuleID = '/llk/IR_all_yes/fs/btrfs/reflink.c_pt.bc'
source_filename = "../fs/btrfs/reflink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.82, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
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
%union.anon.82 = type { i64 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.73 = type { %struct.callback_head }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.77 = type { ptr }
%struct.btrfs_replace_extent_info = type { i64, i64, i64, i64, i64, ptr, i8, i32, i32 }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
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
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_drop_extents_args = type { ptr, i64, i64, i8, i8, i32, i64, i64, i8 }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_inode = type { ptr, %struct.btrfs_key, %struct.spinlock, %struct.extent_map_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.mutex, %struct.btrfs_ordered_inode_tree, %struct.list_head, %struct.rb_node, i32, %struct.atomic_t, i64, i64, i64, i32, i32, i64, %union.anon.83, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.btrfs_block_rsv, i32, i32, ptr, %struct.timespec64, %struct.list_head, %struct.rw_semaphore, %struct.inode }
%struct.btrfs_ordered_inode_tree = type { %struct.spinlock, %struct.rb_root, ptr }
%union.anon.83 = type { i64 }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.extent_changeset = type { i32, %struct.ulist }
%struct.ulist = type { i32, %struct.list_head, %struct.rb_root }

@btrfs_extent_same._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.btrfs_extent_same = private unnamed_addr constant [18 x i8] c"btrfs_extent_same\00", align 1
@.str.1 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014cannot deduplicate to root %llu while send operations are using it (%d in progress)\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"key.type == BTRFS_EXTENT_DATA_KEY\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/btrfs/reflink.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"key.offset == 0\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"datal <= fs_info->sectorsize\00", [35 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"key.offset > 0\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@clone_copy_inline_extent.__UNIQUE_ID_ddebug925 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clone_copy_inline_extent\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IS_ALIGNED(file_offset, block_size)\00", [60 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@clone_finish_inode_update.__UNIQUE_ID_ddebug924 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.17, ptr @.str.3, ptr @.str.13, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clone_finish_inode_update\00", [38 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@___asan_gen_.22 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 658, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 412, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 506, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 507, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 3491, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 209, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 297, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 66, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 717, i32 2 }
@___asan_gen_.80 = private constant [22 x i8] c"../fs/btrfs/reflink.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 40, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 271, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @btrfs_extent_same._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_extent_same._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @btrfs_remap_file_range(ptr noundef %src_file, i64 noundef %off, ptr noundef %dst_file, i64 noundef %destoff, i64 noundef %len, i32 noundef %remap_flags) local_unnamed_addr #0 align 64 {
entry:
  %len.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %len, ptr %len.addr, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %f_inode.i76 = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i76 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i76, align 8
  %cmp = icmp eq ptr %4, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %remap_flags)
  %tobool.not = icmp ult i32 %remap_flags, 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @btrfs_inode_lock(ptr noundef %2, i32 noundef 4) #12
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_two_nondirectories(ptr noundef %2, ptr noundef %4) #12
  %cmp.i = icmp ult ptr %2, %4
  %spec.select.i = select i1 %cmp.i, ptr %2, ptr %4
  %spec.select7.i = select i1 %cmp.i, ptr %4, ptr %2
  %i_mmap_lock.i = getelementptr i8, ptr %spec.select7.i, i32 -96
  tail call void @down_write(ptr noundef %i_mmap_lock.i) #12
  %i_mmap_lock2.i = getelementptr i8, ptr %spec.select.i, i32 -96
  tail call void @down_write_nested(ptr noundef %i_mmap_lock2.i, i32 noundef 1) #12
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %7 = ptrtoint ptr %f_inode.i76 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i76, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 -864
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 8
  %fs_info.i = getelementptr inbounds %struct.btrfs_root, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_info.i, align 8
  %sb.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %12, i32 0, i32 45
  %13 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sb.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocksize.i, align 16
  %conv.i = zext i32 %16 to i64
  %cmp.i77 = icmp eq ptr %8, %6
  %and.i = and i32 %remap_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end5.if.end17.i_crit_edge

if.end5.if.end17.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then.i:                                        ; preds = %if.end5
  %flags.i.i = getelementptr inbounds %struct.btrfs_root, ptr %10, i32 0, i32 6, i32 7
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %flags.i.i, align 8
  %and.i.i = and i64 %18, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %cmp.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.i.out_unlock_crit_edge

if.then.i.out_unlock_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end.i:                                         ; preds = %if.then.i
  %f_path.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 1
  %19 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_path.i, align 8
  %f_path8.i = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 1
  %21 = ptrtoint ptr %f_path8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_path8.i, align 8
  %cmp10.not.i = icmp eq ptr %20, %22
  br i1 %cmp10.not.i, label %cleanup.i, label %if.end.i.out_unlock_crit_edge

if.end.i.out_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

cleanup.i:                                        ; preds = %if.end.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %i_sb12.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb12.i, align 4
  %cmp13.not.i = icmp eq ptr %24, %26
  br i1 %cmp13.not.i, label %cleanup.i.if.end17.i_crit_edge, label %cleanup.i.out_unlock_crit_edge

cleanup.i.out_unlock_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

cleanup.i.if.end17.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %cleanup.i.if.end17.i_crit_edge, %if.end5.if.end17.i_crit_edge
  %flags.i = getelementptr i8, ptr %6, i32 -240
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 8
  %flags21.i = getelementptr i8, ptr %8, i32 -240
  %29 = ptrtoint ptr %flags21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags21.i, align 8
  %31 = xor i32 %30, %28
  %32 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp23.not.i = icmp eq i32 %32, 0
  br i1 %cmp23.not.i, label %if.end26.i, label %if.end17.i.out_unlock_crit_edge

if.end17.i.out_unlock_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end26.i:                                       ; preds = %if.end17.i
  %33 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %len.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %cmp27.i = icmp eq i64 %34, 0
  %35 = and i1 %tobool.not.i, %cmp27.i
  br i1 %35, label %if.then31.i, label %if.else.i

if.then31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_size.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 14
  %36 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_size.i, align 8
  %sub.i = add nsw i64 %conv.i, -1
  %add.i = add i64 %sub.i, %37
  %neg.i = sub nsw i64 0, %conv.i
  %and33.i = and i64 %add.i, %neg.i
  %and40.i = and i64 %neg.i, %off
  %sub41.i = sub i64 %and33.i, %and40.i
  br label %if.end47.i

if.else.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub42.i = add nsw i64 %conv.i, -1
  %add43.i = add i64 %sub42.i, %34
  %neg45.i = sub nsw i64 0, %conv.i
  %and46.i = and i64 %add43.i, %neg45.i
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else.i, %if.then31.i
  %wb_len.0.i = phi i64 [ %and46.i, %if.else.i ], [ %sub41.i, %if.then31.i ]
  tail call void @inode_dio_wait(ptr noundef %6) #12
  br i1 %cmp.i77, label %if.end47.i.if.end50.i_crit_edge, label %if.then49.i

if.end47.i.if.end50.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.then49.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @inode_dio_wait(ptr noundef %8) #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.end47.i.if.end50.i_crit_edge
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %38 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_mapping.i, align 8
  %call51.i = tail call i32 @filemap_flush(ptr noundef %39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.end50.i.out_unlock_crit_edge, label %if.end55.i

if.end50.i.out_unlock_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end55.i:                                       ; preds = %if.end50.i
  %neg61.i = sub nsw i64 0, %conv.i
  %and62.i = and i64 %neg61.i, %off
  %call63.i = tail call i32 @btrfs_wait_ordered_range(ptr noundef %6, i64 noundef %and62.i, i64 noundef %wb_len.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %cmp64.i = icmp slt i32 %call63.i, 0
  br i1 %cmp64.i, label %if.end55.i.out_unlock_crit_edge, label %if.end67.i

if.end55.i.out_unlock_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end67.i:                                       ; preds = %if.end55.i
  %and74.i = and i64 %neg61.i, %destoff
  %call75.i = tail call i32 @btrfs_wait_ordered_range(ptr noundef %8, i64 noundef %and74.i, i64 noundef %wb_len.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp76.i = icmp slt i32 %call75.i, 0
  br i1 %cmp76.i, label %if.end67.i.out_unlock_crit_edge, label %btrfs_remap_file_range_prep.exit

if.end67.i.out_unlock_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

btrfs_remap_file_range_prep.exit:                 ; preds = %if.end67.i
  %call80.i = call i32 @generic_remap_file_range_prep(ptr noundef %src_file, i64 noundef %off, ptr noundef %dst_file, i64 noundef %destoff, ptr noundef nonnull %len.addr, i32 noundef %remap_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %cmp7 = icmp slt i32 %call80.i, 0
  br i1 %cmp7, label %btrfs_remap_file_range_prep.exit.out_unlock_crit_edge, label %lor.lhs.false

btrfs_remap_file_range_prep.exit.out_unlock_crit_edge: ; preds = %btrfs_remap_file_range_prep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

lor.lhs.false:                                    ; preds = %btrfs_remap_file_range_prep.exit
  %40 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %len.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp8 = icmp eq i64 %41, 0
  br i1 %cmp8, label %lor.lhs.false.out_unlock_crit_edge, label %if.end10

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end10:                                         ; preds = %lor.lhs.false
  br i1 %tobool.not.i, label %if.else15, label %if.then13

if.then13:                                        ; preds = %if.end10
  %add.ptr.i.i78 = getelementptr i8, ptr %4, i32 -864
  %42 = ptrtoint ptr %add.ptr.i.i78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i.i78, align 8
  %root_item_lock.i = getelementptr inbounds %struct.btrfs_root, ptr %43, i32 0, i32 37
  call void @_raw_spin_lock(ptr noundef %root_item_lock.i) #12
  %send_in_progress.i = getelementptr inbounds %struct.btrfs_root, ptr %43, i32 0, i32 50
  %44 = ptrtoint ptr %send_in_progress.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %send_in_progress.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i79 = icmp eq i32 %45, 0
  br i1 %tobool.not.i79, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.then13
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @btrfs_extent_same._rs, ptr noundef nonnull @__func__.btrfs_extent_same) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.btrfs_extent_same.exit_crit_edge, label %if.then3.i

do.body.i.btrfs_extent_same.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %btrfs_extent_same.exit

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %fs_info.i80 = getelementptr inbounds %struct.btrfs_root, ptr %43, i32 0, i32 8
  %46 = ptrtoint ptr %fs_info.i80 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fs_info.i80, align 8
  %root_key.i = getelementptr inbounds %struct.btrfs_root, ptr %43, i32 0, i32 7
  %48 = ptrtoint ptr %root_key.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %root_key.i, align 1
  %50 = ptrtoint ptr %send_in_progress.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %send_in_progress.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %47, ptr noundef nonnull @.str.1, i64 noundef %49, i32 noundef %51) #15
  br label %btrfs_extent_same.exit

if.end6.i:                                        ; preds = %if.then13
  %dedupe_in_progress.i = getelementptr inbounds %struct.btrfs_root, ptr %43, i32 0, i32 51
  %52 = ptrtoint ptr %dedupe_in_progress.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dedupe_in_progress.i, align 4
  %inc.i = add i32 %53, 1
  store i32 %inc.i, ptr %dedupe_in_progress.i, align 4
  call void @_raw_spin_unlock(ptr noundef %root_item_lock.i) #12
  %rem.i = and i64 %41, 16777215
  %shr.i.i.i = lshr i64 %41, 24
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %41)
  %cmp49.not.i = icmp ult i64 %41, 16777216
  br i1 %cmp49.not.i, label %if.end6.i.for.end.i_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.for.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %i.052.i = phi i64 [ %inc14.i, %if.end12.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  %dst_loff.addr.051.i = phi i64 [ %add13.i, %if.end12.i.for.body.i_crit_edge ], [ %destoff, %if.end6.i.for.body.i_crit_edge ]
  %loff.addr.050.i = phi i64 [ %add.i81, %if.end12.i.for.body.i_crit_edge ], [ %off, %if.end6.i.for.body.i_crit_edge ]
  %call9.i = call fastcc i32 @btrfs_extent_same_range(ptr noundef %2, i64 noundef %loff.addr.050.i, i64 noundef 16777216, ptr noundef %4, i64 noundef %dst_loff.addr.051.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %for.body.i.out.i_crit_edge

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end12.i:                                       ; preds = %for.body.i
  %add.i81 = add i64 %loff.addr.050.i, 16777216
  %add13.i = add i64 %dst_loff.addr.051.i, 16777216
  %inc14.i = add nuw nsw i64 %i.052.i, 1
  %cmp.i82 = icmp ult i64 %inc14.i, %shr.i.i.i
  br i1 %cmp.i82, label %if.end12.i.for.body.i_crit_edge, label %if.end12.i.for.end.i_crit_edge

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %if.end12.i.for.end.i_crit_edge, %if.end6.i.for.end.i_crit_edge
  %loff.addr.0.lcssa.i = phi i64 [ %off, %if.end6.i.for.end.i_crit_edge ], [ %add.i81, %if.end12.i.for.end.i_crit_edge ]
  %dst_loff.addr.0.lcssa.i = phi i64 [ %destoff, %if.end6.i.for.end.i_crit_edge ], [ %add13.i, %if.end12.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.i)
  %cmp15.not.i = icmp eq i64 %rem.i, 0
  br i1 %cmp15.not.i, label %for.end.i.out.i_crit_edge, label %if.then16.i

for.end.i.out.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = call fastcc i32 @btrfs_extent_same_range(ptr noundef %2, i64 noundef %loff.addr.0.lcssa.i, i64 noundef %rem.i, ptr noundef %4, i64 noundef %dst_loff.addr.0.lcssa.i) #12
  br label %out.i

out.i:                                            ; preds = %if.then16.i, %for.end.i.out.i_crit_edge, %for.body.i.out.i_crit_edge
  %ret.1.i = phi i32 [ %call17.i, %if.then16.i ], [ 0, %for.end.i.out.i_crit_edge ], [ %call9.i, %for.body.i.out.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %root_item_lock.i) #12
  %54 = ptrtoint ptr %dedupe_in_progress.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dedupe_in_progress.i, align 4
  %dec.i = add i32 %55, -1
  store i32 %dec.i, ptr %dedupe_in_progress.i, align 4
  br label %btrfs_extent_same.exit

btrfs_extent_same.exit:                           ; preds = %out.i, %if.then3.i, %do.body.i.btrfs_extent_same.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %out.i ], [ -11, %if.then3.i ], [ -11, %do.body.i.btrfs_extent_same.exit_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %root_item_lock.i) #12
  br label %out_unlock

if.else15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = call fastcc i32 @btrfs_clone_files(ptr noundef %dst_file, ptr noundef %src_file, i64 noundef %off, i64 noundef %41, i64 noundef %destoff)
  br label %out_unlock

out_unlock:                                       ; preds = %if.else15, %btrfs_extent_same.exit, %lor.lhs.false.out_unlock_crit_edge, %btrfs_remap_file_range_prep.exit.out_unlock_crit_edge, %if.end67.i.out_unlock_crit_edge, %if.end55.i.out_unlock_crit_edge, %if.end50.i.out_unlock_crit_edge, %if.end17.i.out_unlock_crit_edge, %cleanup.i.out_unlock_crit_edge, %if.end.i.out_unlock_crit_edge, %if.then.i.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call80.i, %btrfs_remap_file_range_prep.exit.out_unlock_crit_edge ], [ %call80.i, %lor.lhs.false.out_unlock_crit_edge ], [ %retval.0.i, %btrfs_extent_same.exit ], [ %call16, %if.else15 ], [ -30, %if.then.i.out_unlock_crit_edge ], [ -18, %if.end.i.out_unlock_crit_edge ], [ %call75.i, %if.end67.i.out_unlock_crit_edge ], [ %call63.i, %if.end55.i.out_unlock_crit_edge ], [ %call51.i, %if.end50.i.out_unlock_crit_edge ], [ -22, %if.end17.i.out_unlock_crit_edge ], [ -18, %cleanup.i.out_unlock_crit_edge ]
  br i1 %cmp, label %if.then19, label %if.else20

if.then19:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  call void @btrfs_inode_unlock(ptr noundef %2, i32 noundef 4) #12
  br label %if.end21

if.else20:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  %i_mmap_lock.i84 = getelementptr i8, ptr %2, i32 -96
  call void @up_write(ptr noundef %i_mmap_lock.i84) #12
  %i_mmap_lock2.i85 = getelementptr i8, ptr %4, i32 -96
  call void @up_write(ptr noundef %i_mmap_lock2.i85) #12
  call void @unlock_two_nondirectories(ptr noundef %2, ptr noundef %4) #12
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp22 = icmp eq i32 %ret.0, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end21.if.end36_crit_edge

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end21
  %56 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %len.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %57)
  %cmp23 = icmp sgt i64 %57, 0
  br i1 %cmp23, label %land.lhs.true24, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true24:                                  ; preds = %land.lhs.true
  %f_flags.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 7
  %58 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %f_flags.i, align 4
  %and.i86 = and i32 %59, 1052672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %tobool.not.i87 = icmp eq i32 %and.i86, 0
  br i1 %tobool.not.i87, label %if.end.i91, label %land.lhs.true24.if.then28_crit_edge

land.lhs.true24.if.then28_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.end.i91:                                       ; preds = %land.lhs.true24
  %60 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i89 = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %i_sb.i89 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb.i89, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_flags.i, align 4
  %and1.i = and i32 %65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i90 = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i90, label %file_sync_write.exit, label %if.end.i91.if.then28_crit_edge

if.end.i91.if.then28_crit_edge:                   ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

file_sync_write.exit:                             ; preds = %if.end.i91
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 4
  %66 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_flags.i, align 4
  %and4.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i.not = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i.not, label %lor.lhs.false26, label %file_sync_write.exit.if.then28_crit_edge

file_sync_write.exit.if.then28_crit_edge:         ; preds = %file_sync_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

lor.lhs.false26:                                  ; preds = %file_sync_write.exit
  %f_flags.i93 = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 7
  %68 = ptrtoint ptr %f_flags.i93 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %f_flags.i93, align 4
  %and.i94 = and i32 %69, 1052672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i95 = icmp eq i32 %and.i94, 0
  br i1 %tobool.not.i95, label %if.end.i101, label %lor.lhs.false26.if.then28_crit_edge

lor.lhs.false26.if.then28_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.end.i101:                                      ; preds = %lor.lhs.false26
  %70 = ptrtoint ptr %f_inode.i76 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %f_inode.i76, align 8
  %i_sb.i97 = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %i_sb.i97 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb.i97, align 4
  %s_flags.i98 = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 10
  %74 = ptrtoint ptr %s_flags.i98 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_flags.i98, align 4
  %and1.i99 = and i32 %75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i99)
  %tobool2.not.i100 = icmp eq i32 %and1.i99, 0
  br i1 %tobool2.not.i100, label %file_sync_write.exit107, label %if.end.i101.if.then28_crit_edge

if.end.i101.if.then28_crit_edge:                  ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

file_sync_write.exit107:                          ; preds = %if.end.i101
  %i_flags.i102 = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 4
  %76 = ptrtoint ptr %i_flags.i102 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i_flags.i102, align 4
  %and4.i103 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i103)
  %tobool5.not.i104.not = icmp eq i32 %and4.i103, 0
  br i1 %tobool5.not.i104.not, label %file_sync_write.exit107.cond.false_crit_edge, label %file_sync_write.exit107.if.then28_crit_edge

file_sync_write.exit107.if.then28_crit_edge:      ; preds = %file_sync_write.exit107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

file_sync_write.exit107.cond.false_crit_edge:     ; preds = %file_sync_write.exit107
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

if.then28:                                        ; preds = %file_sync_write.exit107.if.then28_crit_edge, %if.end.i101.if.then28_crit_edge, %lor.lhs.false26.if.then28_crit_edge, %file_sync_write.exit.if.then28_crit_edge, %if.end.i91.if.then28_crit_edge, %land.lhs.true24.if.then28_crit_edge
  %add = add i64 %off, -1
  %sub = add i64 %add, %57
  %call29 = call i32 @btrfs_sync_file(ptr noundef %src_file, i64 noundef %off, i64 noundef %sub, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.then28.if.end36_crit_edge

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %len.addr, align 8
  %add32 = add i64 %destoff, -1
  %sub33 = add i64 %add32, %79
  %call34 = call i32 @btrfs_sync_file(ptr noundef %dst_file, i64 noundef %destoff, i64 noundef %sub33, i32 noundef 0) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.then28.if.end36_crit_edge, %if.end21.if.end36_crit_edge
  %ret.1 = phi i32 [ %call34, %if.then31 ], [ %call29, %if.then28.if.end36_crit_edge ], [ %ret.0, %if.end21.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp37 = icmp slt i32 %ret.1, 0
  br i1 %cmp37, label %cond.true, label %if.end36.cond.false_crit_edge

if.end36.cond.false_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.true:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %conv = sext i32 %ret.1 to i64
  br label %cleanup

cond.false:                                       ; preds = %if.end36.cond.false_crit_edge, %file_sync_write.exit107.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %80 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %len.addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %cond.true, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ -22, %entry.cleanup_crit_edge ], [ %conv, %cond.true ], [ %81, %cond.false ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inode_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_clone_files(ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %file_src, i64 noundef %off, i64 noundef %olen, i64 noundef %destoff) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %f_inode.i91 = getelementptr inbounds %struct.file, ptr %file_src, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i91 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i91, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 45
  %8 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sb, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %conv = zext i32 %11 to i64
  %add = add i64 %olen, %off
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %13)
  %cmp = icmp eq i64 %add, %13
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add nsw i64 %conv, -1
  %add5 = add i64 %sub, %add
  %neg = sub nsw i64 0, %conv
  %and = and i64 %add5, %neg
  %sub7 = sub i64 %and, %off
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i64 [ %sub7, %if.then ], [ %olen, %entry.if.end_crit_edge ]
  %i_size8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %i_size8 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_size8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %destoff)
  %cmp9 = icmp ult i64 %15, %destoff
  br i1 %cmp9, label %if.then11, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then11:                                        ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %1, i32 -864
  %call22 = tail call i32 @btrfs_cont_expand(ptr noundef %add.ptr.i, i64 noundef %15, i64 noundef %destoff) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %cleanup, label %if.then11.cleanup39_crit_edge

if.then11.cleanup39_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

cleanup:                                          ; preds = %if.then11
  %neg18 = sub nsw i64 0, %conv
  %and19 = and i64 %15, %neg18
  %sub25 = sub i64 %destoff, %and19
  %call26 = tail call i32 @btrfs_wait_ordered_range(ptr noundef %1, i64 noundef %and19, i64 noundef %sub25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup.if.end30_crit_edge, label %cleanup.cleanup39_crit_edge

cleanup.cleanup39_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

cleanup.if.end30_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end30:                                         ; preds = %cleanup.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %cmp.i = icmp ult ptr %3, %1
  br i1 %cmp.i, label %if.end30.btrfs_double_extent_lock.exit_crit_edge, label %if.else.i

if.end30.btrfs_double_extent_lock.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %btrfs_double_extent_lock.exit

if.else.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %cmp4.i = icmp eq ptr %3, %1
  call void @__sanitizer_cov_trace_cmp8(i64 %destoff, i64 %off)
  %cmp5.i = icmp ult i64 %destoff, %off
  %or.cond.i = and i1 %cmp5.i, %cmp4.i
  %spec.select.i = select i1 %or.cond.i, i64 %off, i64 %destoff
  %spec.select32.i = select i1 %or.cond.i, i64 %destoff, i64 %off
  br label %btrfs_double_extent_lock.exit

btrfs_double_extent_lock.exit:                    ; preds = %if.else.i, %if.end30.btrfs_double_extent_lock.exit_crit_edge
  %loff2.addr.0.i = phi i64 [ %off, %if.end30.btrfs_double_extent_lock.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  %inode2.addr.0.i = phi ptr [ %3, %if.end30.btrfs_double_extent_lock.exit_crit_edge ], [ %1, %if.else.i ]
  %loff1.addr.0.i = phi i64 [ %destoff, %if.end30.btrfs_double_extent_lock.exit_crit_edge ], [ %spec.select32.i, %if.else.i ]
  %inode1.addr.0.i = phi ptr [ %1, %if.end30.btrfs_double_extent_lock.exit_crit_edge ], [ %3, %if.else.i ]
  %io_tree.i = getelementptr i8, ptr %inode1.addr.0.i, i32 -736
  %add.i = add i64 %len.0, -1
  %sub.i = add i64 %loff1.addr.0.i, %add.i
  %call.i.i = tail call i32 @lock_extent_bits(ptr noundef %io_tree.i, i64 noundef %loff1.addr.0.i, i64 noundef %sub.i, ptr noundef null) #12
  %io_tree13.i = getelementptr i8, ptr %inode2.addr.0.i, i32 -736
  %sub15.i = add i64 %loff2.addr.0.i, %add.i
  %call.i34.i = tail call i32 @lock_extent_bits(ptr noundef %io_tree13.i, i64 noundef %loff2.addr.0.i, i64 noundef %sub15.i, ptr noundef null) #12
  %call31 = tail call fastcc i32 @btrfs_clone(ptr noundef %3, ptr noundef %1, i64 noundef %off, i64 noundef %olen, i64 noundef %len.0, i64 noundef %destoff, i32 noundef 0)
  %io_tree.i92 = getelementptr i8, ptr %3, i32 -736
  %sub.i94 = add i64 %add.i, %off
  %call.i.i95 = tail call i32 @clear_extent_bit(ptr noundef %io_tree.i92, i64 noundef %off, i64 noundef %sub.i94, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  %io_tree3.i = getelementptr i8, ptr %1, i32 -736
  %sub5.i = add i64 %add.i, %destoff
  %call.i11.i = tail call i32 @clear_extent_bit(ptr noundef %io_tree3.i, i64 noundef %destoff, i64 noundef %sub5.i, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  %call32 = tail call i32 @btrfs_wait_ordered_range(ptr noundef %1, i64 noundef %destoff, i64 noundef %len.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool33.not = icmp eq i32 %call31, 0
  %call32.call31 = select i1 %tobool33.not, i32 %call32, i32 %call31
  %i_data = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 46
  %and34 = and i64 %destoff, -4096
  %or = or i64 %sub5.i, 4095
  tail call void @truncate_inode_pages_range(ptr noundef %i_data, i64 noundef %and34, i64 noundef %or) #12
  br label %cleanup39

cleanup39:                                        ; preds = %btrfs_double_extent_lock.exit, %cleanup.cleanup39_crit_edge, %if.then11.cleanup39_crit_edge
  %retval.1 = phi i32 [ %call32.call31, %btrfs_double_extent_lock.exit ], [ %call26, %cleanup.cleanup39_crit_edge ], [ %call22, %if.then11.cleanup39_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_sync_file(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_wait_ordered_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_remap_file_range_prep(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_extent_same_range(ptr noundef %src, i64 noundef %loff, i64 noundef %len, ptr noundef %dst, i64 noundef %dst_loff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %src, i32 -864
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info, align 8
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %cmp.i = icmp ult ptr %src, %dst
  br i1 %cmp.i, label %entry.btrfs_double_extent_lock.exit_crit_edge, label %if.else.i

entry.btrfs_double_extent_lock.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %btrfs_double_extent_lock.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cmp4.i = icmp eq ptr %src, %dst
  call void @__sanitizer_cov_trace_cmp8(i64 %dst_loff, i64 %loff)
  %cmp5.i = icmp ult i64 %dst_loff, %loff
  %or.cond.i = and i1 %cmp4.i, %cmp5.i
  %spec.select.i = select i1 %or.cond.i, i64 %loff, i64 %dst_loff
  %spec.select32.i = select i1 %or.cond.i, i64 %dst_loff, i64 %loff
  br label %btrfs_double_extent_lock.exit

btrfs_double_extent_lock.exit:                    ; preds = %if.else.i, %entry.btrfs_double_extent_lock.exit_crit_edge
  %loff2.addr.0.i = phi i64 [ %loff, %entry.btrfs_double_extent_lock.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  %inode2.addr.0.i = phi ptr [ %src, %entry.btrfs_double_extent_lock.exit_crit_edge ], [ %dst, %if.else.i ]
  %loff1.addr.0.i = phi i64 [ %dst_loff, %entry.btrfs_double_extent_lock.exit_crit_edge ], [ %spec.select32.i, %if.else.i ]
  %inode1.addr.0.i = phi ptr [ %dst, %entry.btrfs_double_extent_lock.exit_crit_edge ], [ %src, %if.else.i ]
  %conv = zext i32 %7 to i64
  %io_tree.i = getelementptr i8, ptr %inode1.addr.0.i, i32 -736
  %add.i = add i64 %len, -1
  %sub.i = add i64 %loff1.addr.0.i, %add.i
  %call.i.i = tail call i32 @lock_extent_bits(ptr noundef %io_tree.i, i64 noundef %loff1.addr.0.i, i64 noundef %sub.i, ptr noundef null) #12
  %io_tree13.i = getelementptr i8, ptr %inode2.addr.0.i, i32 -736
  %sub15.i = add i64 %loff2.addr.0.i, %add.i
  %call.i34.i = tail call i32 @lock_extent_bits(ptr noundef %io_tree13.i, i64 noundef %loff2.addr.0.i, i64 noundef %sub15.i, ptr noundef null) #12
  %add = add i64 %add.i, %conv
  %neg = sub nsw i64 0, %conv
  %and = and i64 %add, %neg
  %call2 = tail call fastcc i32 @btrfs_clone(ptr noundef %src, ptr noundef %dst, i64 noundef %loff, i64 noundef %len, i64 noundef %and, i64 noundef %dst_loff, i32 noundef 1)
  %io_tree.i16 = getelementptr i8, ptr %src, i32 -736
  %sub.i18 = add i64 %add.i, %loff
  %call.i.i19 = tail call i32 @clear_extent_bit(ptr noundef %io_tree.i16, i64 noundef %loff, i64 noundef %sub.i18, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  %io_tree3.i = getelementptr i8, ptr %dst, i32 -736
  %sub5.i = add i64 %add.i, %dst_loff
  %call.i11.i = tail call i32 @clear_extent_bit(ptr noundef %io_tree3.i, i64 noundef %dst_loff, i64 noundef %sub5.i, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_clone(ptr nocapture noundef %src, ptr noundef %inode, i64 noundef %off, i64 noundef %olen, i64 noundef %olen_aligned, i64 noundef %destoff, i32 noundef %no_time_update) unnamed_addr #0 align 64 {
entry:
  %disk_key.i451 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %trans = alloca ptr, align 4
  %key = alloca %struct.btrfs_key, align 8
  %new_key = alloca %struct.btrfs_key, align 8
  %clone_info = alloca %struct.btrfs_replace_extent_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trans) #12
  %4 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %trans, align 4, !annotation !47
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #12
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %6 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 166
  %7 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nodesize, align 8
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %8, i32 noundef 3264, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup294_crit_edge, label %if.end

entry.cleanup294_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup294

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @btrfs_alloc_path() #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree(ptr noundef nonnull %call.i) #12
  br label %cleanup294

if.end5:                                          ; preds = %if.end
  %reada = getelementptr inbounds %struct.btrfs_path, ptr %call2, i32 0, i32 3
  %9 = ptrtoint ptr %reada to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %reada, align 4
  %add.ptr.i = getelementptr i8, ptr %src, i32 -864
  %location.i = getelementptr i8, ptr %src, i32 -860
  %10 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i, label %if.end5.if.then.i_crit_edge, label %lor.lhs.false.i

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end5
  %type.i = getelementptr i8, ptr %src, i32 -852
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %13)
  %cmp.i = icmp eq i8 %13, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end5.if.then.i_crit_edge
  %i_ino.i = getelementptr i8, ptr %src, i32 40
  %14 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %15 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %11, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %16 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %ino.0.i, ptr %key, align 8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 108, ptr %5, align 8
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %off, ptr %6, align 1
  %19 = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 2
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call2, i32 0, i32 1
  %20 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %22 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i451, i32 0, i32 1
  %23 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i451, i32 0, i32 2
  %type.i459 = getelementptr i8, ptr %src, i32 -852
  %i_ino.i462 = getelementptr i8, ptr %src, i32 40
  %add106 = add i64 %olen_aligned, %off
  %add.ptr.i481 = getelementptr i8, ptr %inode, i32 -864
  %location.i482 = getelementptr i8, ptr %inode, i32 -860
  %type.i484 = getelementptr i8, ptr %inode, i32 -852
  %i_ino.i487 = getelementptr i8, ptr %inode, i32 40
  %add125 = sub i64 %destoff, %off
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %disk_len = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %clone_info, i32 0, i32 1
  %data_offset = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %clone_info, i32 0, i32 2
  %data_len = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %clone_info, i32 0, i32 3
  %file_offset = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %clone_info, i32 0, i32 4
  %extent_buf = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %clone_info, i32 0, i32 5
  %is_new_extent = getelementptr inbounds %struct.btrfs_replace_extent_info, ptr %clone_info, i32 0, i32 6
  %last_reflink_trans = getelementptr i8, ptr %src, i32 -256
  %last_reflink_trans229 = getelementptr i8, ptr %inode, i32 -256
  %add246 = add i64 %destoff, %olen_aligned
  %24 = getelementptr inbounds i8, ptr %clone_info, i32 40
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %new_key) #12
  %25 = call ptr @memset(ptr %new_key, i32 255, i32 17)
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %call11566 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %27, ptr noundef nonnull %key, ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11566)
  %cmp567 = icmp slt i32 %call11566, 0
  br i1 %cmp567, label %btrfs_ino.exit.cleanup258.thread508_crit_edge, label %btrfs_ino.exit.if.end13_crit_edge

btrfs_ino.exit.if.end13_crit_edge:                ; preds = %btrfs_ino.exit
  br label %if.end13

btrfs_ino.exit.cleanup258.thread508_crit_edge:    ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258.thread508

if.end13:                                         ; preds = %cleanup258.if.end13_crit_edge, %btrfs_ino.exit.if.end13_crit_edge
  %call11569 = phi i32 [ %call11, %cleanup258.if.end13_crit_edge ], [ %call11566, %btrfs_ino.exit.if.end13_crit_edge ]
  %last_dest_end.0568 = phi i64 [ %and, %cleanup258.if.end13_crit_edge ], [ %destoff, %btrfs_ino.exit.if.end13_crit_edge ]
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %off)
  %cmp15 = icmp eq i64 %29, %off
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11569)
  %cmp16 = icmp ne i32 %call11569, 0
  %or.cond = select i1 %cmp15, i1 %cmp16, i1 false
  br i1 %or.cond, label %land.lhs.true17, label %if.end13.if.end30_crit_edge

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.lhs.true17:                                  ; preds = %if.end13
  %30 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp18 = icmp sgt i32 %31, 0
  br i1 %cmp18, label %if.then19, label %land.lhs.true17.if.end30_crit_edge

land.lhs.true17.if.end30_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then19:                                        ; preds = %land.lhs.true17
  %32 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call2, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #12
  %34 = mul i32 %31, 25
  %add.i.i.i.i = add i32 %34, 76
  %35 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %33, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #12
  %36 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %21, align 1
  %38 = call i64 @llvm.bswap.i64(i64 %37) #12
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %6, align 1
  %40 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %20, align 8
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %5, align 8
  %43 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %disk_key.i, align 8
  %45 = call i64 @llvm.bswap.i64(i64 %44) #12
  %46 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %41)
  %cmp24 = icmp eq i8 %41, 108
  br i1 %cmp24, label %if.then26, label %if.then19.if.end30_crit_edge

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then26:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %slots, align 4
  %dec = add i32 %48, -1
  store i32 %dec, ptr %slots, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then19.if.end30_crit_edge, %land.lhs.true17.if.end30_crit_edge, %if.end13.if.end30_crit_edge
  %49 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call2, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pages.i, align 4
  %call.i441 = call ptr @page_address(ptr noundef %52) #12
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %50, align 8
  %conv.i = trunc i64 %54 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i442 = getelementptr i8, ptr %call.i441, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i442, i32 0, i32 7
  %55 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %nritems.i, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56) #12
  br label %process_slot

process_slot:                                     ; preds = %if.then101, %if.end30
  %nritems.0 = phi i32 [ %57, %if.end30 ], [ %nritems.1, %if.then101 ]
  %disko.0 = phi i64 [ 0, %if.end30 ], [ %disko.1, %if.then101 ]
  %diskl.0 = phi i64 [ 0, %if.end30 ], [ %diskl.1, %if.then101 ]
  %datao.0 = phi i64 [ 0, %if.end30 ], [ %datao.1, %if.then101 ]
  %datal.0 = phi i64 [ 0, %if.end30 ], [ %datal.1, %if.then101 ]
  %58 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %nritems.0)
  %cmp36.not = icmp ult i32 %59, %nritems.0
  br i1 %cmp36.not, label %process_slot.if.end53_crit_edge, label %if.then38

process_slot.if.end53_crit_edge:                  ; preds = %process_slot
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then38:                                        ; preds = %process_slot
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 8
  %call.i444 = call i32 @btrfs_next_old_leaf(ptr noundef %61, ptr noundef nonnull %call2, i64 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i444)
  %cmp42 = icmp slt i32 %call.i444, 0
  br i1 %cmp42, label %if.then38.cleanup258.thread508_crit_edge, label %if.end45

if.then38.cleanup258.thread508_crit_edge:         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258.thread508

if.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i444)
  %cmp46.not = icmp eq i32 %call.i444, 0
  br i1 %cmp46.not, label %if.end49, label %if.end45.cleanup258.thread_crit_edge

if.end45.cleanup258.thread_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258.thread

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call2, align 4
  %pages.i445 = getelementptr inbounds %struct.extent_buffer, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %pages.i445 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pages.i445, align 4
  %call.i446 = call ptr @page_address(ptr noundef %65) #12
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %63, align 8
  %conv.i447 = trunc i64 %67 to i32
  %and.i448 = and i32 %conv.i447, 4095
  %add.ptr.i449 = getelementptr i8, ptr %call.i446, i32 %and.i448
  %nritems.i450 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i449, i32 0, i32 7
  %68 = ptrtoint ptr %nritems.i450 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %nritems.i450, align 1
  %70 = call i32 @llvm.bswap.i32(i32 %69) #12
  br label %if.end53

if.end53:                                         ; preds = %if.end49, %process_slot.if.end53_crit_edge
  %nritems.1 = phi i32 [ %70, %if.end49 ], [ %nritems.0, %process_slot.if.end53_crit_edge ]
  %71 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call2, align 4
  %73 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i451) #12
  %mul.i.i.i.i452 = mul i32 %74, 25
  %add.i.i.i.i453 = add i32 %mul.i.i.i.i452, 101
  %75 = call ptr @memset(ptr %disk_key.i451, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %72, ptr noundef nonnull %disk_key.i451, i32 noundef %add.i.i.i.i453, i32 noundef 17) #12
  %76 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %77 = load i64, ptr %23, align 1
  %78 = call i64 @llvm.bswap.i64(i64 %77) #12
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 8)
  store i64 %78, ptr %6, align 1
  %80 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %22, align 8
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %5, align 8
  %83 = ptrtoint ptr %disk_key.i451 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %disk_key.i451, align 8
  %85 = call i64 @llvm.bswap.i64(i64 %84) #12
  %86 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i451) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %81)
  %cmp60 = icmp ugt i8 %81, 108
  br i1 %cmp60, label %if.end53.cleanup258.thread_crit_edge, label %lor.lhs.false

if.end53.cleanup258.thread_crit_edge:             ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258.thread

lor.lhs.false:                                    ; preds = %if.end53
  %87 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %88 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %tobool.not.i458 = icmp eq i64 %88, 0
  br i1 %tobool.not.i458, label %lor.lhs.false.if.then.i464_crit_edge, label %lor.lhs.false.i461

lor.lhs.false.if.then.i464_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i464

lor.lhs.false.i461:                               ; preds = %lor.lhs.false
  %89 = ptrtoint ptr %type.i459 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %type.i459, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %90)
  %cmp.i460 = icmp eq i8 %90, -124
  br i1 %cmp.i460, label %lor.lhs.false.i461.if.then.i464_crit_edge, label %lor.lhs.false.i461.btrfs_ino.exit466_crit_edge

lor.lhs.false.i461.btrfs_ino.exit466_crit_edge:   ; preds = %lor.lhs.false.i461
  call void @__sanitizer_cov_trace_pc() #14
  br label %btrfs_ino.exit466

lor.lhs.false.i461.if.then.i464_crit_edge:        ; preds = %lor.lhs.false.i461
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i464

if.then.i464:                                     ; preds = %lor.lhs.false.i461.if.then.i464_crit_edge, %lor.lhs.false.if.then.i464_crit_edge
  %91 = ptrtoint ptr %i_ino.i462 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i_ino.i462, align 8
  %conv3.i463 = zext i32 %92 to i64
  br label %btrfs_ino.exit466

btrfs_ino.exit466:                                ; preds = %if.then.i464, %lor.lhs.false.i461.btrfs_ino.exit466_crit_edge
  %ino.0.i465 = phi i64 [ %conv3.i463, %if.then.i464 ], [ %88, %lor.lhs.false.i461.btrfs_ino.exit466_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %ino.0.i465)
  %cmp65.not = icmp eq i64 %85, %ino.0.i465
  br i1 %cmp65.not, label %if.end68, label %btrfs_ino.exit466.cleanup258.thread_crit_edge

btrfs_ino.exit466.cleanup258.thread_crit_edge:    ; preds = %btrfs_ino.exit466
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258.thread

if.end68:                                         ; preds = %btrfs_ino.exit466
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %81)
  %cmp71 = icmp eq i8 %81, 108
  br i1 %cmp71, label %cond.end, label %cond.false, !prof !48

cond.false:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 412) #17
  unreachable

cond.end:                                         ; preds = %if.end68
  %93 = inttoptr i32 %add.i.i.i.i453 to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %72, ptr noundef %93, i32 noundef 17) #12
  %add76 = add i32 %call.i.i, 101
  %94 = inttoptr i32 %add76 to ptr
  %call.i467 = call i64 @btrfs_get_64(ptr noundef %72, ptr noundef %94, i32 noundef 0) #12
  %call.i468 = call zeroext i8 @btrfs_get_8(ptr noundef %72, ptr noundef %94, i32 noundef 16) #12
  %call.i469 = call zeroext i8 @btrfs_get_8(ptr noundef %72, ptr noundef %94, i32 noundef 20) #12
  %95 = zext i8 %call.i469 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call.i469, label %cond.end.if.end96_crit_edge [
    i8 2, label %cond.end.if.then86_crit_edge
    i8 1, label %cond.end.if.then86_crit_edge595
    i8 0, label %cond.end.if.end96.sink.split_crit_edge
  ]

cond.end.if.end96.sink.split_crit_edge:           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96.sink.split

cond.end.if.then86_crit_edge595:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then86

cond.end.if.then86_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then86

cond.end.if.end96_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then86:                                        ; preds = %cond.end.if.then86_crit_edge, %cond.end.if.then86_crit_edge595
  %call.i470 = call i64 @btrfs_get_64(ptr noundef %72, ptr noundef %94, i32 noundef 21) #12
  %call.i471 = call i64 @btrfs_get_64(ptr noundef %72, ptr noundef %94, i32 noundef 29) #12
  %call.i472 = call i64 @btrfs_get_64(ptr noundef %72, ptr noundef %94, i32 noundef 37) #12
  br label %if.end96.sink.split

if.end96.sink.split:                              ; preds = %if.then86, %cond.end.if.end96.sink.split_crit_edge
  %.sink = phi i32 [ 45, %if.then86 ], [ 8, %cond.end.if.end96.sink.split_crit_edge ]
  %disko.1.ph = phi i64 [ %call.i470, %if.then86 ], [ %disko.0, %cond.end.if.end96.sink.split_crit_edge ]
  %diskl.1.ph = phi i64 [ %call.i471, %if.then86 ], [ %diskl.0, %cond.end.if.end96.sink.split_crit_edge ]
  %datao.1.ph = phi i64 [ %call.i472, %if.then86 ], [ %datao.0, %cond.end.if.end96.sink.split_crit_edge ]
  %call.i474 = call i64 @btrfs_get_64(ptr noundef %72, ptr noundef %94, i32 noundef %.sink) #12
  br label %if.end96

if.end96:                                         ; preds = %if.end96.sink.split, %cond.end.if.end96_crit_edge
  %disko.1 = phi i64 [ %disko.0, %cond.end.if.end96_crit_edge ], [ %disko.1.ph, %if.end96.sink.split ]
  %diskl.1 = phi i64 [ %diskl.0, %cond.end.if.end96_crit_edge ], [ %diskl.1.ph, %if.end96.sink.split ]
  %datao.1 = phi i64 [ %datao.0, %cond.end.if.end96_crit_edge ], [ %datao.1.ph, %if.end96.sink.split ]
  %datal.1 = phi i64 [ %datal.0, %cond.end.if.end96_crit_edge ], [ %call.i474, %if.end96.sink.split ]
  %96 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 8)
  %97 = load i64, ptr %6, align 1
  %add98 = add i64 %97, %datal.1
  %cmp99.not = icmp ugt i64 %add98, %off
  br i1 %cmp99.not, label %if.else104, label %if.then101

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %slots, align 4
  %inc = add i32 %99, 1
  store i32 %inc, ptr %slots, align 4
  br label %process_slot

if.else104:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_cmp8(i64 %97, i64 %add106)
  %cmp107.not = icmp ult i64 %97, %add106
  br i1 %cmp107.not, label %if.end111, label %if.else104.cleanup258.thread_crit_edge

if.else104.cleanup258.thread_crit_edge:           ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258.thread

if.end111:                                        ; preds = %if.else104
  %100 = inttoptr i32 %add.i.i.i.i453 to ptr
  %call.i.i477 = call i32 @btrfs_get_32(ptr noundef %72, ptr noundef %100, i32 noundef 21) #12
  %call.i.i480 = call i32 @btrfs_get_32(ptr noundef %72, ptr noundef %100, i32 noundef 17) #12
  %add116 = add i32 %call.i.i480, 101
  call void @read_extent_buffer(ptr noundef %72, ptr noundef nonnull %call.i, i32 noundef %add116, i32 noundef %call.i.i477) #12
  call void @btrfs_release_path(ptr noundef nonnull %call2) #12
  %101 = call ptr @memcpy(ptr %new_key, ptr %key, i32 16)
  %102 = ptrtoint ptr %location.i482 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %103 = load i64, ptr %location.i482, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %103)
  %tobool.not.i483 = icmp eq i64 %103, 0
  br i1 %tobool.not.i483, label %if.end111.if.then.i489_crit_edge, label %lor.lhs.false.i486

if.end111.if.then.i489_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i489

lor.lhs.false.i486:                               ; preds = %if.end111
  %104 = ptrtoint ptr %type.i484 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %type.i484, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %105)
  %cmp.i485 = icmp eq i8 %105, -124
  br i1 %cmp.i485, label %lor.lhs.false.i486.if.then.i489_crit_edge, label %lor.lhs.false.i486.btrfs_ino.exit491_crit_edge

lor.lhs.false.i486.btrfs_ino.exit491_crit_edge:   ; preds = %lor.lhs.false.i486
  call void @__sanitizer_cov_trace_pc() #14
  br label %btrfs_ino.exit491

lor.lhs.false.i486.if.then.i489_crit_edge:        ; preds = %lor.lhs.false.i486
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i489

if.then.i489:                                     ; preds = %lor.lhs.false.i486.if.then.i489_crit_edge, %if.end111.if.then.i489_crit_edge
  %106 = ptrtoint ptr %i_ino.i487 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %i_ino.i487, align 8
  %conv3.i488 = zext i32 %107 to i64
  br label %btrfs_ino.exit491

btrfs_ino.exit491:                                ; preds = %if.then.i489, %lor.lhs.false.i486.btrfs_ino.exit491_crit_edge
  %ino.0.i490 = phi i64 [ %conv3.i488, %if.then.i489 ], [ %103, %lor.lhs.false.i486.btrfs_ino.exit491_crit_edge ]
  %108 = ptrtoint ptr %new_key to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %ino.0.i490, ptr %new_key, align 8
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 8)
  %110 = load i64, ptr %6, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %110, i64 %off)
  %cmp121.not = icmp ult i64 %110, %off
  %sub126 = add i64 %add125, %110
  %storemerge = select i1 %cmp121.not, i64 %destoff, i64 %sub126
  %111 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 8)
  store i64 %storemerge, ptr %19, align 1
  %112 = zext i8 %call.i469 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %call.i469, label %btrfs_ino.exit491.if.end218_crit_edge [
    i8 2, label %btrfs_ino.exit491.if.then143_crit_edge
    i8 1, label %btrfs_ino.exit491.if.then143_crit_edge596
    i8 0, label %if.then177
  ]

btrfs_ino.exit491.if.then143_crit_edge596:        ; preds = %btrfs_ino.exit491
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then143

btrfs_ino.exit491.if.then143_crit_edge:           ; preds = %btrfs_ino.exit491
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then143

btrfs_ino.exit491.if.end218_crit_edge:            ; preds = %btrfs_ino.exit491
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

if.then143:                                       ; preds = %btrfs_ino.exit491.if.then143_crit_edge, %btrfs_ino.exit491.if.then143_crit_edge596
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %clone_info) #12
  %113 = call ptr @memset(ptr %24, i32 255, i32 16)
  %add145 = add i64 %110, %datal.1
  call void @__sanitizer_cov_trace_cmp8(i64 %add145, i64 %add106)
  %cmp147 = icmp ugt i64 %add145, %add106
  %sub152 = sub i64 %add106, %110
  %spec.select = select i1 %cmp147, i64 %sub152, i64 %datal.1
  br i1 %cmp121.not, label %if.then157, label %if.then143.if.end164_crit_edge

if.then143.if.end164_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end164

if.then157:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  %sub159 = sub i64 %off, %110
  %add160 = add i64 %sub159, %datao.1
  %sub163 = sub i64 %spec.select, %sub159
  br label %if.end164

if.end164:                                        ; preds = %if.then157, %if.then143.if.end164_crit_edge
  %datao.2 = phi i64 [ %add160, %if.then157 ], [ %datao.1, %if.then143.if.end164_crit_edge ]
  %datal.3 = phi i64 [ %sub163, %if.then157 ], [ %spec.select, %if.then143.if.end164_crit_edge ]
  %114 = ptrtoint ptr %clone_info to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %disko.1, ptr %clone_info, align 8
  %115 = ptrtoint ptr %disk_len to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %diskl.1, ptr %disk_len, align 8
  %116 = ptrtoint ptr %data_offset to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %datao.2, ptr %data_offset, align 8
  %117 = ptrtoint ptr %data_len to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %datal.3, ptr %data_len, align 8
  %118 = ptrtoint ptr %file_offset to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %storemerge, ptr %file_offset, align 8
  %119 = ptrtoint ptr %extent_buf to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i, ptr %extent_buf, align 8
  %120 = ptrtoint ptr %is_new_extent to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %is_new_extent, align 4
  %add168 = add i64 %storemerge, -1
  %sub169 = add i64 %add168, %datal.3
  %call170 = call i32 @btrfs_replace_file_extents(ptr noundef %add.ptr.i481, ptr noundef nonnull %call2, i64 noundef %last_dest_end.0568, i64 noundef %sub169, ptr noundef nonnull %clone_info, ptr noundef nonnull %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %clone_info) #12
  br i1 %tobool171.not, label %if.end164.if.end218_crit_edge, label %out.loopexit

if.end164.if.end218_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

if.then177:                                       ; preds = %btrfs_ino.exit491
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %110)
  %cmp179 = icmp eq i64 %110, 0
  br i1 %cmp179, label %cond.end189, label %cond.false188, !prof !48

cond.false188:                                    ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 506) #17
  unreachable

cond.end189:                                      ; preds = %if.then177
  %121 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sectorsize, align 4
  %conv190 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %datal.1, i64 %conv190)
  %cmp191.not = icmp ugt i64 %datal.1, %conv190
  br i1 %cmp191.not, label %cond.false200, label %if.end211, !prof !49

cond.false200:                                    ; preds = %cond.end189
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.5, i32 noundef 507) #17
  unreachable

if.end211:                                        ; preds = %cond.end189
  %conv212 = zext i32 %call.i.i477 to i64
  %call213 = call fastcc i32 @clone_copy_inline_extent(ptr noundef %inode, ptr noundef nonnull %call2, ptr noundef nonnull %new_key, i64 noundef %last_dest_end.0568, i64 noundef %datal.1, i64 noundef %conv212, i8 noundef zeroext %call.i468, ptr noundef nonnull %call.i, ptr noundef nonnull %trans)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.end211.if.end218_crit_edge, label %if.end211.cleanup258.thread508_crit_edge

if.end211.cleanup258.thread508_crit_edge:         ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258.thread508

if.end211.if.end218_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

if.end218:                                        ; preds = %if.end211.if.end218_crit_edge, %if.end164.if.end218_crit_edge, %btrfs_ino.exit491.if.end218_crit_edge
  %datal.4 = phi i64 [ %datal.3, %if.end164.if.end218_crit_edge ], [ %datal.1, %if.end211.if.end218_crit_edge ], [ %datal.1, %btrfs_ino.exit491.if.end218_crit_edge ]
  call void @btrfs_release_path(ptr noundef nonnull %call2) #12
  %123 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %trans, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %124, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i467, i64 %126)
  %cmp219 = icmp ne i64 %call.i467, %126
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %disko.1)
  %cmp222.not = icmp eq i64 %disko.1, 0
  %or.cond439 = select i1 %cmp219, i1 true, i1 %cmp222.not
  br i1 %or.cond439, label %if.end218.if.end230_crit_edge, label %if.then224

if.end218.if.end230_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end230

if.then224:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #14
  %127 = ptrtoint ptr %last_reflink_trans to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %call.i467, ptr %last_reflink_trans, align 8
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %124, align 8
  %130 = ptrtoint ptr %last_reflink_trans229 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %last_reflink_trans229, align 8
  br label %if.end230

if.end230:                                        ; preds = %if.then224, %if.end218.if.end230_crit_edge
  %131 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 8)
  %132 = load i64, ptr %19, align 1
  %133 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %sectorsize, align 4
  %conv234 = zext i32 %134 to i64
  %sub235 = add i64 %datal.4, -1
  %add232 = add i64 %sub235, %132
  %add236 = add i64 %add232, %conv234
  %neg = sub nsw i64 0, %conv234
  %and = and i64 %add236, %neg
  %call240 = call fastcc i32 @clone_finish_inode_update(ptr noundef %124, ptr noundef %inode, i64 noundef %and, i64 noundef %destoff, i64 noundef %olen, i32 noundef %no_time_update)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end243, label %if.end230.cleanup258.thread508_crit_edge

if.end230.cleanup258.thread508_crit_edge:         ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258.thread508

if.end243:                                        ; preds = %if.end230
  %135 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 8)
  %136 = load i64, ptr %19, align 1
  %add245 = add i64 %136, %datal.4
  call void @__sanitizer_cov_trace_cmp8(i64 %add245, i64 %add246)
  %cmp247.not = icmp ult i64 %add245, %add246
  br i1 %cmp247.not, label %if.end250, label %if.end243.cleanup258.thread_crit_edge

if.end243.cleanup258.thread_crit_edge:            ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258.thread

if.end250:                                        ; preds = %if.end243
  call void @btrfs_release_path(ptr noundef nonnull %call2) #12
  %137 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 8)
  store i64 %add98, ptr %6, align 1
  %138 = call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i495 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i495 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %stack.i.i.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %143, align 4
  %and1.i.i.i.i.i = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i496 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i496, label %if.end250.cleanup258_crit_edge, label %fatal_signal_pending.exit

if.end250.cleanup258_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258

fatal_signal_pending.exit:                        ; preds = %if.end250
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 116, i32 1
  %146 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %signal.i.i, align 4
  %148 = and i32 %147, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool254.not = icmp eq i32 %148, 0
  br i1 %tobool254.not, label %fatal_signal_pending.exit.cleanup258_crit_edge, label %fatal_signal_pending.exit.cleanup258.thread508_crit_edge

fatal_signal_pending.exit.cleanup258.thread508_crit_edge: ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258.thread508

fatal_signal_pending.exit.cleanup258_crit_edge:   ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258

cleanup258.thread:                                ; preds = %if.end243.cleanup258.thread_crit_edge, %if.else104.cleanup258.thread_crit_edge, %btrfs_ino.exit466.cleanup258.thread_crit_edge, %if.end53.cleanup258.thread_crit_edge, %if.end45.cleanup258.thread_crit_edge
  %last_dest_end.1.ph = phi i64 [ %last_dest_end.0568, %if.end53.cleanup258.thread_crit_edge ], [ %last_dest_end.0568, %btrfs_ino.exit466.cleanup258.thread_crit_edge ], [ %last_dest_end.0568, %if.end45.cleanup258.thread_crit_edge ], [ %last_dest_end.0568, %if.else104.cleanup258.thread_crit_edge ], [ %and, %if.end243.cleanup258.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %new_key) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %last_dest_end.1.ph, i64 %add246)
  %cmp273 = icmp ult i64 %last_dest_end.1.ph, %add246
  br i1 %cmp273, label %if.then275, label %cleanup258.thread.out_crit_edge

cleanup258.thread.out_crit_edge:                  ; preds = %cleanup258.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

cleanup258.thread508:                             ; preds = %cleanup258.cleanup258.thread508_crit_edge, %fatal_signal_pending.exit.cleanup258.thread508_crit_edge, %if.end230.cleanup258.thread508_crit_edge, %if.end211.cleanup258.thread508_crit_edge, %if.then38.cleanup258.thread508_crit_edge, %btrfs_ino.exit.cleanup258.thread508_crit_edge
  %ret.2.ph = phi i32 [ %call11566, %btrfs_ino.exit.cleanup258.thread508_crit_edge ], [ %call.i444, %if.then38.cleanup258.thread508_crit_edge ], [ %call11, %cleanup258.cleanup258.thread508_crit_edge ], [ %call213, %if.end211.cleanup258.thread508_crit_edge ], [ %call240, %if.end230.cleanup258.thread508_crit_edge ], [ -4, %fatal_signal_pending.exit.cleanup258.thread508_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %new_key) #12
  br label %out

cleanup258:                                       ; preds = %fatal_signal_pending.exit.cleanup258_crit_edge, %if.end250.cleanup258_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 550, i32 noundef 0) #12
  %call.i497 = call i32 @__cond_resched() #12
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %new_key) #12
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %new_key) #12
  %149 = call ptr @memset(ptr %new_key, i32 255, i32 17)
  %150 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr.i, align 8
  %call11 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %151, ptr noundef nonnull %key, ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0) #12
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %cleanup258.cleanup258.thread508_crit_edge, label %cleanup258.if.end13_crit_edge

cleanup258.if.end13_crit_edge:                    ; preds = %cleanup258
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

cleanup258.cleanup258.thread508_crit_edge:        ; preds = %cleanup258
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup258.thread508

if.then275:                                       ; preds = %cleanup258.thread
  call void @btrfs_release_path(ptr noundef nonnull %call2) #12
  %call276 = call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %last_dest_end.1.ph, i64 %call276)
  %cmp277.not = icmp ult i64 %last_dest_end.1.ph, %call276
  br i1 %cmp277.not, label %if.then275.if.end281_crit_edge, label %if.then279

if.then275.if.end281_crit_edge:                   ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end281

if.then279:                                       ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  %runtime_flags = getelementptr i8, ptr %inode, i32 -356
  call void @_set_bit(i32 noundef 4, ptr noundef %runtime_flags) #12
  br label %if.end281

if.end281:                                        ; preds = %if.then279, %if.then275.if.end281_crit_edge
  %sub284 = add i64 %add246, -1
  %call285 = call i32 @btrfs_replace_file_extents(ptr noundef %add.ptr.i481, ptr noundef nonnull %call2, i64 noundef %last_dest_end.1.ph, i64 noundef %sub284, ptr noundef null, ptr noundef nonnull %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %if.end288, label %if.end281.out_crit_edge

if.end281.out_crit_edge:                          ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end288:                                        ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #14
  %152 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %trans, align 4
  %call290 = call fastcc i32 @clone_finish_inode_update(ptr noundef %153, ptr noundef %inode, i64 noundef %add246, i64 noundef %destoff, i64 noundef %olen, i32 noundef %no_time_update)
  br label %out

out.loopexit:                                     ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %new_key) #12
  br label %out

out:                                              ; preds = %out.loopexit, %if.end288, %if.end281.out_crit_edge, %cleanup258.thread508, %cleanup258.thread.out_crit_edge
  %ret.3 = phi i32 [ %call285, %if.end281.out_crit_edge ], [ %call290, %if.end288 ], [ 0, %cleanup258.thread.out_crit_edge ], [ %ret.2.ph, %cleanup258.thread508 ], [ %call170, %out.loopexit ]
  call void @btrfs_free_path(ptr noundef nonnull %call2) #12
  call void @kvfree(ptr noundef nonnull %call.i) #12
  %runtime_flags293 = getelementptr i8, ptr %inode, i32 -356
  call void @_clear_bit(i32 noundef 10, ptr noundef %runtime_flags293) #12
  br label %cleanup294

cleanup294:                                       ; preds = %out, %if.then4, %entry.cleanup294_crit_edge
  %retval.2 = phi i32 [ %ret.3, %out ], [ -12, %if.then4 ], [ -12, %entry.cleanup294_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trans) #12
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_extent_bits(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #5 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %expr, ptr noundef nonnull @.str.3, i32 noundef %line) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #12, !srcloc !50
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_replace_file_extents(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clone_copy_inline_extent(ptr noundef %dst, ptr noundef %path, ptr noundef %new_key, i64 noundef %drop_start, i64 noundef %datal, i64 noundef %size, i8 noundef zeroext %comp_type, ptr noundef %inline_data, ptr nocapture noundef writeonly %trans_out) unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %drop_args = alloca %struct.btrfs_drop_extents_args, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dst, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %dst, i32 -864
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %offset = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %offset, align 1
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %8 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %9 to i64
  %sub = add i64 %datal, -1
  %add = add i64 %sub, %7
  %add3 = add i64 %add, %conv
  %neg = sub nsw i64 0, %conv
  %and = and i64 %add3, %neg
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %drop_args) #12
  %10 = call ptr @memset(ptr %drop_args, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #12
  %11 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %12 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.not = icmp eq i64 %7, 0
  %13 = call ptr @memset(ptr %key, i32 255, i32 17)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call fastcc i32 @copy_inline_to_page(ptr noundef %add.ptr.i, i64 noundef %7, ptr noundef %inline_data, i64 noundef %size, i64 noundef %datal, i8 noundef zeroext %comp_type)
  br label %out

if.end:                                           ; preds = %entry
  %location.i = getelementptr i8, ptr %dst, i32 -860
  %14 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not.i = icmp eq i64 %15, 0
  br i1 %tobool.not.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %type.i = getelementptr i8, ptr %dst, i32 -852
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %17)
  %cmp.i = icmp eq i8 %17, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %i_ino.i = getelementptr i8, ptr %dst, i32 40
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
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 108, ptr %11, align 8
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 0, ptr %12, align 1
  %call15 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %5, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %btrfs_ino.exit.cleanup187_crit_edge, label %if.else

btrfs_ino.exit.cleanup187_crit_edge:              ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup187

if.else:                                          ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp19.not = icmp eq i32 %call15, 0
  br i1 %cmp19.not, label %if.else57, label %if.then21

if.then21:                                        ; preds = %if.else
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %23 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slots, align 4
  %25 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %path, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %28) #12
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %26, align 8
  %conv.i = trunc i64 %30 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i273 = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i273, i32 0, i32 7
  %31 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %nritems.i, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %32) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %33)
  %cmp24.not = icmp ult i32 %24, %33
  br i1 %cmp24.not, label %if.then21.if.end37_crit_edge, label %if.then26

if.then21.if.end37_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then26:                                        ; preds = %if.then21
  %call.i274 = call i32 @btrfs_next_old_leaf(ptr noundef %5, ptr noundef %path, i64 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %cmp28 = icmp slt i32 %call.i274, 0
  br i1 %cmp28, label %if.then26.cleanup187_crit_edge, label %if.else31

if.then26.cleanup187_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup187

if.else31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %cmp32.not = icmp eq i32 %call.i274, 0
  br i1 %cmp32.not, label %if.else31.if.end37_crit_edge, label %if.else31.copy_inline_extent_crit_edge

if.else31.copy_inline_extent_crit_edge:           ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_inline_extent

if.else31.if.end37_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end37:                                         ; preds = %if.else31.if.end37_crit_edge, %if.then21.if.end37_crit_edge
  %34 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %path, align 4
  %36 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #12
  %38 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %39 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %37, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %40 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %35, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #12
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %39, align 1
  %43 = call i64 @llvm.bswap.i64(i64 %42) #12
  %44 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %12, align 1
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %38, align 8
  %47 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %11, align 8
  %48 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %disk_key.i, align 8
  %50 = call i64 @llvm.bswap.i64(i64 %49) #12
  %51 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #12
  %52 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %tobool.not.i277 = icmp eq i64 %53, 0
  br i1 %tobool.not.i277, label %if.end37.if.then.i283_crit_edge, label %lor.lhs.false.i280

if.end37.if.then.i283_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i283

lor.lhs.false.i280:                               ; preds = %if.end37
  %type.i278 = getelementptr i8, ptr %dst, i32 -852
  %54 = ptrtoint ptr %type.i278 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type.i278, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %55)
  %cmp.i279 = icmp eq i8 %55, -124
  br i1 %cmp.i279, label %lor.lhs.false.i280.if.then.i283_crit_edge, label %lor.lhs.false.i280.btrfs_ino.exit285_crit_edge

lor.lhs.false.i280.btrfs_ino.exit285_crit_edge:   ; preds = %lor.lhs.false.i280
  call void @__sanitizer_cov_trace_pc() #14
  br label %btrfs_ino.exit285

lor.lhs.false.i280.if.then.i283_crit_edge:        ; preds = %lor.lhs.false.i280
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i283

if.then.i283:                                     ; preds = %lor.lhs.false.i280.if.then.i283_crit_edge, %if.end37.if.then.i283_crit_edge
  %i_ino.i281 = getelementptr i8, ptr %dst, i32 40
  %56 = ptrtoint ptr %i_ino.i281 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_ino.i281, align 8
  %conv3.i282 = zext i32 %57 to i64
  br label %btrfs_ino.exit285

btrfs_ino.exit285:                                ; preds = %if.then.i283, %lor.lhs.false.i280.btrfs_ino.exit285_crit_edge
  %ino.0.i284 = phi i64 [ %conv3.i282, %if.then.i283 ], [ %53, %lor.lhs.false.i280.btrfs_ino.exit285_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %ino.0.i284)
  %cmp45 = icmp eq i64 %50, %ino.0.i284
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %46)
  %cmp49 = icmp eq i8 %46, 108
  %or.cond316 = select i1 %cmp45, i1 %cmp49, i1 false
  br i1 %or.cond316, label %if.then51, label %btrfs_ino.exit285.copy_inline_extent_crit_edge

btrfs_ino.exit285.copy_inline_extent_crit_edge:   ; preds = %btrfs_ino.exit285
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_inline_extent

if.then51:                                        ; preds = %btrfs_ino.exit285
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %cmp53.not = icmp eq i64 %42, 0
  br i1 %cmp53.not, label %cond.false, label %if.then51.copy_to_page_crit_edge, !prof !49

if.then51.copy_to_page_crit_edge:                 ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_page

cond.false:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.9, i32 noundef 209) #17
  unreachable

if.else57:                                        ; preds = %if.else
  %call58 = call fastcc i64 @i_size_read(ptr noundef %dst)
  call void @__sanitizer_cov_trace_cmp8(i64 %call58, i64 %datal)
  %cmp59.not = icmp ugt i64 %call58, %datal
  br i1 %cmp59.not, label %if.else57.copy_inline_extent_crit_edge, label %if.then61

if.else57.copy_inline_extent_crit_edge:           ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_inline_extent

if.then61:                                        ; preds = %if.else57
  %58 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %path, align 4
  %slots64 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %60 = ptrtoint ptr %slots64 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %slots64, align 4
  %mul.i.i.i = mul i32 %61, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %62 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %59, ptr noundef %62, i32 noundef 17) #12
  %add67 = add i32 %call.i.i, 101
  %63 = inttoptr i32 %add67 to ptr
  %64 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %path, align 4
  %call.i286 = call zeroext i8 @btrfs_get_8(ptr noundef %65, ptr noundef %63, i32 noundef 20) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i286)
  %cmp72 = icmp eq i8 %call.i286, 0
  br i1 %cmp72, label %if.then61.copy_inline_extent_crit_edge, label %if.then61.copy_to_page_crit_edge

if.then61.copy_to_page_crit_edge:                 ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_page

if.then61.copy_inline_extent_crit_edge:           ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_inline_extent

copy_inline_extent:                               ; preds = %if.then61.copy_inline_extent_crit_edge, %if.else57.copy_inline_extent_crit_edge, %btrfs_ino.exit285.copy_inline_extent_crit_edge, %if.else31.copy_inline_extent_crit_edge
  %call79 = call fastcc i64 @i_size_read(ptr noundef %dst)
  call void @__sanitizer_cov_trace_cmp8(i64 %call79, i64 %datal)
  %cmp80 = icmp ugt i64 %call79, %datal
  br i1 %cmp80, label %copy_inline_extent.copy_to_page_crit_edge, label %if.end83

copy_inline_extent.copy_to_page_crit_edge:        ; preds = %copy_inline_extent
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_page

if.end83:                                         ; preds = %copy_inline_extent
  call void @btrfs_release_path(ptr noundef %path) #12
  %call84 = call ptr @btrfs_start_transaction(ptr noundef %5, i32 noundef 3) #12
  %cmp.i287 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i287, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %call84 to i32
  br label %out

if.end88:                                         ; preds = %if.end83
  %67 = ptrtoint ptr %drop_args to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %path, ptr %drop_args, align 8
  %start = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %drop_args, i32 0, i32 1
  %68 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %drop_start, ptr %start, align 8
  %end = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %drop_args, i32 0, i32 2
  %69 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %and, ptr %end, align 8
  %drop_cache = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %drop_args, i32 0, i32 3
  %70 = ptrtoint ptr %drop_cache to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %drop_cache, align 8
  %call91 = call i32 @btrfs_drop_extents(ptr noundef %call84, ptr noundef %5, ptr noundef %add.ptr.i, ptr noundef nonnull %drop_args) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end88.if.end122_crit_edge

if.end88.if.end122_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122

if.end94:                                         ; preds = %if.end88
  %conv95 = trunc i64 %size to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %71 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv95, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #12
  %72 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %73 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %74 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %75 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %new_key, ptr %batch.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %data_size.addr.i, ptr %72, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv95, ptr %73, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %74, align 4
  %call.i289 = call i32 @btrfs_insert_empty_items(ptr noundef %call84, ptr noundef %5, ptr noundef %path, ptr noundef nonnull %batch.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %tobool97.not = icmp eq i32 %call.i289, 0
  br i1 %tobool97.not, label %if.end99, label %if.end94.if.end122_crit_edge

if.end94.if.end122_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122

if.end99:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %path, align 4
  %slots104 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %81 = ptrtoint ptr %slots104 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %slots104, align 4
  %mul.i.i.i290 = mul i32 %82, 25
  %add.i.i.i291 = add i32 %mul.i.i.i290, 101
  %83 = inttoptr i32 %add.i.i.i291 to ptr
  %call.i.i292 = call i32 @btrfs_get_32(ptr noundef %80, ptr noundef %83, i32 noundef 17) #12
  %add107 = add i32 %call.i.i292, 101
  call void @write_extent_buffer(ptr noundef %80, ptr noundef %inline_data, i32 noundef %add107, i32 noundef %conv95) #12
  %bytes_found = getelementptr inbounds %struct.btrfs_drop_extents_args, ptr %drop_args, i32 0, i32 7
  %84 = ptrtoint ptr %bytes_found to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %bytes_found, align 8
  call void @btrfs_update_inode_bytes(ptr noundef %add.ptr.i, i64 noundef %datal, i64 noundef %85) #12
  %runtime_flags = getelementptr i8, ptr %dst, i32 -356
  call void @_set_bit(i32 noundef 4, ptr noundef %runtime_flags) #12
  %call112 = call i32 @btrfs_inode_set_file_extent_range(ptr noundef %add.ptr.i, i64 noundef 0, i64 noundef %and) #12
  br label %out

out:                                              ; preds = %copy_to_page, %if.end99, %if.then86, %if.then
  %ret.0 = phi i32 [ %call11, %if.then ], [ %call186, %copy_to_page ], [ %66, %if.then86 ], [ %call112, %if.end99 ]
  %trans.0 = phi ptr [ null, %if.then ], [ null, %copy_to_page ], [ null, %if.then86 ], [ %call84, %if.end99 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool113.not = icmp eq i32 %ret.0, 0
  br i1 %tobool113.not, label %land.lhs.true114, label %out.if.end122_crit_edge

out.if.end122_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122

land.lhs.true114:                                 ; preds = %out
  %tobool115.not = icmp eq ptr %trans.0, null
  br i1 %tobool115.not, label %if.then116, label %land.lhs.true114.if.then182_crit_edge

land.lhs.true114.if.then182_crit_edge:            ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then182

if.then116:                                       ; preds = %land.lhs.true114
  %call117 = call ptr @btrfs_start_transaction(ptr noundef %5, i32 noundef 1) #12
  %cmp.i296 = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296, label %if.end122.thread, label %if.then116.if.then182_crit_edge

if.then116.if.then182_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then182

if.end122.thread:                                 ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %call117 to i32
  br label %cleanup187

if.end122:                                        ; preds = %out.if.end122_crit_edge, %if.end94.if.end122_crit_edge, %if.end88.if.end122_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out.if.end122_crit_edge ], [ %call.i289, %if.end94.if.end122_crit_edge ], [ %call91, %if.end88.if.end122_crit_edge ]
  %trans.1 = phi ptr [ %trans.0, %out.if.end122_crit_edge ], [ %call84, %if.end94.if.end122_crit_edge ], [ %call84, %if.end88.if.end122_crit_edge ]
  %tobool125.not = icmp eq ptr %trans.1, null
  br i1 %tobool125.not, label %if.end122.cleanup187_crit_edge, label %do.body

if.end122.cleanup187_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup187

do.body:                                          ; preds = %if.end122
  %fs_info127 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans.1, i32 0, i32 16
  %87 = ptrtoint ptr %fs_info127 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fs_info127, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %88, i32 0, i32 149
  %call128 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then130, label %do.body.if.end176_crit_edge

do.body.if.end176_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

if.then130:                                       ; preds = %do.body
  %89 = zext i32 %ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %ret.1, label %do.end [
    i32 -5, label %if.then130.do.body160_crit_edge
    i32 -30, label %if.then130.do.body160_crit_edge317
  ]

if.then130.do.body160_crit_edge317:               ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body160

if.then130.do.body160_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body160

do.end:                                           ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %ret.1) #12
  br label %if.end176

do.body160:                                       ; preds = %if.then130.do.body160_crit_edge, %if.then130.do.body160_crit_edge317
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clone_copy_inline_extent.__UNIQUE_ID_ddebug925, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clone_copy_inline_extent, %if.then170)) #12
          to label %if.end176 [label %if.then170], !srcloc !51

if.then170:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %fs_info127 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fs_info127, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %91, ptr noundef nonnull @.str.14, i32 noundef %ret.1) #15
  br label %if.end176

if.end176:                                        ; preds = %if.then170, %do.body160, %do.end, %do.body.if.end176_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef nonnull %trans.1, ptr noundef nonnull @.str.12, i32 noundef 297, i32 noundef %ret.1) #15
  %call179 = call i32 @btrfs_end_transaction(ptr noundef nonnull %trans.1) #12
  br label %cleanup187

if.then182:                                       ; preds = %if.then116.if.then182_crit_edge, %land.lhs.true114.if.then182_crit_edge
  %trans.1308311 = phi ptr [ %trans.0, %land.lhs.true114.if.then182_crit_edge ], [ %call117, %if.then116.if.then182_crit_edge ]
  %92 = ptrtoint ptr %trans_out to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %trans.1308311, ptr %trans_out, align 4
  br label %cleanup187

copy_to_page:                                     ; preds = %copy_inline_extent.copy_to_page_crit_edge, %if.then61.copy_to_page_crit_edge, %if.then51.copy_to_page_crit_edge
  call void @btrfs_release_path(ptr noundef %path) #12
  %93 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %93, i32 8)
  %94 = load i64, ptr %offset, align 1
  %call186 = call fastcc i32 @copy_inline_to_page(ptr noundef %add.ptr.i, i64 noundef %94, ptr noundef %inline_data, i64 noundef %size, i64 noundef %datal, i8 noundef zeroext %comp_type)
  br label %out

cleanup187:                                       ; preds = %if.then182, %if.end176, %if.end122.cleanup187_crit_edge, %if.end122.thread, %if.then26.cleanup187_crit_edge, %btrfs_ino.exit.cleanup187_crit_edge
  %retval.0 = phi i32 [ %call15, %btrfs_ino.exit.cleanup187_crit_edge ], [ %call.i274, %if.then26.cleanup187_crit_edge ], [ 0, %if.then182 ], [ %86, %if.end122.thread ], [ %ret.1, %if.end176 ], [ %ret.1, %if.end122.cleanup187_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %drop_args) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clone_finish_inode_update(ptr noundef %trans, ptr noundef %inode, i64 noundef %endoff, i64 noundef %destoff, i64 noundef %olen, i32 noundef %no_time_update) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !52
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #12
  %call.i.i1.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #12
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %entry
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %entry ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %2 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %2, -2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #12
  %call.i.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #12
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !48

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_time_update)
  %tobool.not = icmp eq i32 %no_time_update, 0
  br i1 %tobool.not, label %if.then, label %inode_inc_iversion.exit.if.end_crit_edge

inode_inc_iversion.exit.if.end_crit_edge:         ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #14
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #12
  %3 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #12
  %4 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %inode_inc_iversion.exit.if.end_crit_edge
  %add = add i64 %olen, %destoff
  %5 = call i64 @llvm.umin.i64(i64 %add, i64 %endoff)
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp5 = icmp ugt i64 %5, %7
  br i1 %cmp5, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.end
  %8 = call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i84 = add i32 %11, 1
  store volatile i32 %add.i.i84, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.then6.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then6.i_size_write.exit_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then6
  %13 = call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !54
  %17 = call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %22, ptrtoint (ptr @lockdep_recursion to i32)
  %23 = inttoptr i32 %add.i28.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !55
  %26 = call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i7.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool20.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %30 = call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i29.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i85 = icmp eq i32 %33, 0
  br i1 %cmp.i.i85, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %34 = call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i9.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %37, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !56
  %38 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %41, ptrtoint (ptr @hardirqs_enabled to i32)
  %42 = inttoptr i32 %add47.i.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !57
  %45 = call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i12.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %48, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool54.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !48

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then6.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %49 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !58
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %51 = call ptr @llvm.returnaddress(i32 0) #12
  %52 = ptrtoint ptr %51 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %52) #12
  %53 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %5, ptr %i_size, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %52) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !59
  %54 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %55, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !60
  %56 = call i32 @llvm.read_register.i32(metadata !37) #12
  %and.i.i.i26.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  call void @btrfs_inode_safe_disk_i_size_write(ptr noundef %add.ptr.i, i64 noundef 0) #12
  br label %if.end8

if.end8:                                          ; preds = %i_size_write.exit, %if.end.if.end8_crit_edge
  %call10 = call i32 @btrfs_update_inode(ptr noundef %trans, ptr noundef %1, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end58, label %do.body

do.body:                                          ; preds = %if.end8
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %60 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fs_info, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %61, i32 0, i32 149
  %call13 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %do.body.if.end54_crit_edge

do.body.if.end54_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then15:                                        ; preds = %do.body
  %62 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call10, label %do.end [
    i32 -5, label %if.then15.do.body38_crit_edge
    i32 -30, label %if.then15.do.body38_crit_edge89
  ]

if.then15.do.body38_crit_edge89:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body38

if.then15.do.body38_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body38

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %call10) #12
  br label %if.end54

do.body38:                                        ; preds = %if.then15.do.body38_crit_edge, %if.then15.do.body38_crit_edge89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clone_finish_inode_update.__UNIQUE_ID_ddebug924, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clone_finish_inode_update, %if.then48)) #12
          to label %if.end54 [label %if.then48], !srcloc !51

if.then48:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fs_info, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %64, ptr noundef nonnull @.str.14, i32 noundef %call10) #15
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %do.body38, %do.end, %do.body.if.end54_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.17, i32 noundef 40, i32 noundef %call10) #15
  %call57 = call i32 @btrfs_end_transaction(ptr noundef %trans) #12
  br label %out

if.end58:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call59 = call i32 @btrfs_end_transaction(ptr noundef %trans) #12
  br label %out

out:                                              ; preds = %if.end58, %if.end54
  %ret.0 = phi i32 [ %call10, %if.end54 ], [ %call59, %if.end58 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !61
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !62
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !49

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !63
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !64
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !65
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !66
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !67
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_get_8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_inline_to_page(ptr noundef %inode, i64 noundef %file_offset, ptr noundef %inline_data, i64 noundef %size, i64 noundef %datal, i8 noundef zeroext %comp_type) unnamed_addr #0 align 64 {
entry:
  %data_reserved = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
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
  %conv = zext i32 %5 to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %file_offset
  %6 = trunc i64 %size to i32
  %conv4 = add i32 %6, -21
  %add.ptr = getelementptr i8, ptr %inline_data, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_reserved) #12
  %7 = ptrtoint ptr %data_reserved to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %data_reserved, align 4
  %i_mapping = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %and = and i64 %add, %file_offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cond.end, label %cond.false, !prof !48

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.15, i32 noundef 66) #17
  unreachable

cond.end:                                         ; preds = %entry
  %call11 = call i32 @btrfs_delalloc_reserve_space(ptr noundef %inode, ptr noundef nonnull %data_reserved, i64 noundef %file_offset, i64 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %cond.end
  %shr = lshr i64 %file_offset, 12
  %conv13 = trunc i64 %shr to i32
  %gfp_mask.i.i.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %gfp_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gfp_mask.i.i.i, align 4
  %and.i.i = and i32 %11, -129
  %call.i = call ptr @pagecache_get_page(ptr noundef %9, i32 noundef %conv13, i32 noundef 7, i32 noundef %and.i.i) #12
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end.if.then58_crit_edge, label %if.end18

if.end.if.then58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.end18:                                         ; preds = %if.end
  %call19 = call i32 @set_page_extent_mapped(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.if.then55_crit_edge, label %if.end23

if.end18.if.then55_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.end23:                                         ; preds = %if.end18
  %io_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 4
  %call24 = call i32 @clear_extent_bit(ptr noundef %io_tree, i64 noundef %file_offset, i64 noundef %sub, i32 noundef 8496, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %call25 = call i32 @btrfs_set_extent_delalloc(ptr noundef %inode, i64 noundef %file_offset, i64 noundef %sub, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.if.then55_crit_edge

if.end23.if.then55_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.end28:                                         ; preds = %if.end23
  %runtime_flags = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 11
  call void @_set_bit(i32 noundef 10, ptr noundef %runtime_flags) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %comp_type)
  %cmp30 = icmp eq i8 %comp_type, 0
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end28
  %conv33 = trunc i64 %file_offset to i32
  %and34 = and i32 %conv33, 4095
  %conv35 = trunc i64 %datal to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %12, 512
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i, i32 noundef %or.i.i) #12
  %add.i = add i32 %and34, %conv35
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.body2.i, label %memcpy_to_page.exit, !prof !49

do.body2.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/highmem.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #12, !srcloc !68
  unreachable

memcpy_to_page.exit:                              ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and34
  %13 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr, i32 %conv35)
  call void @flush_dcache_page(ptr noundef nonnull %call.i) #12
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #12
  br label %if.end44

if.else:                                          ; preds = %if.end28
  %conv29 = zext i8 %comp_type to i32
  %conv37 = trunc i64 %file_offset to i32
  %and38 = and i32 %conv37, 4095
  %conv39 = trunc i64 %datal to i32
  %call40 = call i32 @btrfs_decompress(i32 noundef %conv29, ptr noundef %add.ptr, ptr noundef nonnull %call.i, i32 noundef %and38, i32 noundef %conv4, i32 noundef %conv39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.else.if.end44_crit_edge, label %if.else.if.then55_crit_edge

if.else.if.then55_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end44:                                         ; preds = %if.else.if.end44_crit_edge, %memcpy_to_page.exit
  call void @flush_dcache_page(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %datal)
  %cmp46 = icmp ugt i64 %conv, %datal
  br i1 %cmp46, label %if.then48, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %conv49 = trunc i64 %datal to i32
  %conv52 = sub i32 %5, %conv49
  call fastcc void @memzero_page(ptr noundef nonnull %call.i, i32 noundef %conv49, i32 noundef %conv52)
  call void @flush_dcache_page(ptr noundef nonnull %call.i) #12
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end44.if.end53_crit_edge
  call void @btrfs_page_set_uptodate(ptr noundef %3, ptr noundef nonnull %call.i, i64 noundef %file_offset, i32 noundef %5) #12
  call void @btrfs_page_clear_checked(ptr noundef %3, ptr noundef nonnull %call.i, i64 noundef %file_offset, i32 noundef %5) #12
  call void @btrfs_page_set_dirty(ptr noundef %3, ptr noundef nonnull %call.i, i64 noundef %file_offset, i32 noundef %5) #12
  br label %if.then55

if.then55:                                        ; preds = %if.end53, %if.else.if.then55_crit_edge, %if.end23.if.then55_crit_edge, %if.end18.if.then55_crit_edge
  %ret.1.ph = phi i32 [ %call40, %if.else.if.then55_crit_edge ], [ 0, %if.end53 ], [ %call25, %if.end23.if.then55_crit_edge ], [ %call19, %if.end18.if.then55_crit_edge ]
  call void @unlock_page(ptr noundef nonnull %call.i) #12
  %14 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i118 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i118)
  %tobool.not.i.i = icmp eq i32 %and.i.i118, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !48

if.then.i.i:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !49

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.16) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !69
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !70
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %21 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !71
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@copy_inline_to_page, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !51

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end56_crit_edge

folio_put_testzero.exit.i.i.if.end56_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %18) #12
  br label %if.end56

if.end56:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end56_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.ph)
  %tobool57.not = icmp eq i32 %ret.1.ph, 0
  br i1 %tobool57.not, label %if.end56.if.end60_crit_edge, label %if.end56.if.then58_crit_edge

if.end56.if.then58_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then58:                                        ; preds = %if.end56.if.then58_crit_edge, %if.end.if.then58_crit_edge
  %ret.1121124 = phi i32 [ %ret.1.ph, %if.end56.if.then58_crit_edge ], [ -12, %if.end.if.then58_crit_edge ]
  %22 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data_reserved, align 4
  call void @btrfs_delalloc_release_space(ptr noundef %inode, ptr noundef %23, i64 noundef %file_offset, i64 noundef %conv, i1 noundef zeroext true) #12
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56.if.end60_crit_edge
  %ret.1121125 = phi i32 [ %ret.1121124, %if.then58 ], [ 0, %if.end56.if.end60_crit_edge ]
  call void @btrfs_delalloc_release_extents(ptr noundef %inode, i64 noundef %conv) #12
  br label %out

out:                                              ; preds = %if.end60, %cond.end.out_crit_edge
  %ret.2 = phi i32 [ %call11, %cond.end.out_crit_edge ], [ %ret.1121125, %if.end60 ]
  %24 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data_reserved, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %out.extent_changeset_free.exit_crit_edge, label %extent_changeset_release.exit.i

out.extent_changeset_free.exit_crit_edge:         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %extent_changeset_free.exit

extent_changeset_release.exit.i:                  ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %25, align 4
  %range_changed.i.i = getelementptr inbounds %struct.extent_changeset, ptr %25, i32 0, i32 1
  call void @ulist_release(ptr noundef %range_changed.i.i) #12
  call void @kfree(ptr noundef nonnull %25) #12
  br label %extent_changeset_free.exit

extent_changeset_free.exit:                       ; preds = %extent_changeset_release.exit.i, %out.extent_changeset_free.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_reserved) #12
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_start_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_drop_extents(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_update_inode_bytes(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inode_set_file_extent_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_delalloc_reserve_space(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_extent_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_set_extent_delalloc(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_decompress(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memzero_page(ptr noundef %page, i32 noundef %offset, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %0, 512
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #12
  %add.ptr = getelementptr i8, ptr %call.i, i32 %offset
  %1 = call ptr @memset(ptr %add.ptr, i32 0, i32 %len)
  tail call void @flush_dcache_page(ptr noundef %page) #12
  tail call void @kunmap_local_indexed(ptr noundef %call.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_page_set_uptodate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_page_clear_checked(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_page_set_dirty(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_delalloc_release_space(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_delalloc_release_extents(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulist_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_inode_safe_disk_i_size_write(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_update_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_cont_expand(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold noreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/reflink.c", i32 658, i32 3}
!2 = !{ptr @btrfs_extent_same._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.btrfs_extent_same, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/reflink.c", i32 412, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/btrfs/reflink.c", i32 506, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/reflink.c", i32 507, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @assertfail._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @assertfail._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/reflink.c", i32 209, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/reflink.c", i32 297, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @clone_copy_inline_extent.__UNIQUE_ID_ddebug925, !21, !"__UNIQUE_ID_ddebug925", i1 false, i1 false}
!26 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/reflink.c", i32 66, i32 2}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/mm.h", i32 717, i32 2}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/btrfs/reflink.c", i32 40, i32 3}
!33 = !{ptr @clone_finish_inode_update.__UNIQUE_ID_ddebug924, !32, !"__UNIQUE_ID_ddebug924", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2158224730, i64 2158225212, i64 2158224767, i64 2158224823, i64 2158224857, i64 2158224881, i64 2158224922, i64 2158224943, i64 2158224971, i64 2158225005}
!51 = !{i64 2148298550, i64 2148298555, i64 2148298568, i64 2148298612, i64 2148298646, i64 2148298667}
!52 = !{i64 2154287803}
!53 = !{i64 2152604877}
!54 = !{i64 2150132454}
!55 = !{i64 2150137388}
!56 = !{i64 2150159106}
!57 = !{i64 2150164000}
!58 = !{i64 2150240527}
!59 = !{i64 2150240852}
!60 = !{i64 2152616739}
!61 = !{i64 879415, i64 879476}
!62 = !{i64 882147}
!63 = !{i64 882432}
!64 = !{i64 2152602946}
!65 = !{i64 2152602788}
!66 = !{i64 2152603116}
!67 = !{i64 2150240202}
!68 = !{i64 2153762293, i64 2153762781, i64 2153762330, i64 2153762386, i64 2153762420, i64 2153762444, i64 2153762485, i64 2153762506, i64 2153762534, i64 2153762568}
!69 = !{i64 2153235401, i64 2153235884, i64 2153235438, i64 2153235494, i64 2153235528, i64 2153235552, i64 2153235593, i64 2153235614, i64 2153235642, i64 2153235676}
!70 = !{i64 2148573609}
!71 = !{i64 2148488342, i64 2148488374, i64 2148488403, i64 2148488437, i64 2148488468, i64 2148488491}
!72 = !{i64 2148573838}
