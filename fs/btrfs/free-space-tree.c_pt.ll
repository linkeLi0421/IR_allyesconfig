; ModuleID = '/llk/IR_all_yes/fs/btrfs/free-space-tree.c_pt.bc'
source_filename = "../fs/btrfs/free-space-tree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_block_group = type { ptr, ptr, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.rw_semaphore, i32, i32, i8, i32, i32, ptr, i64, ptr, ptr, %struct.rb_node, %struct.list_head, %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, i32, i64, i64, i32, %struct.list_head, %struct.list_head, %struct.btrfs_io_ctl, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i8, i32, %struct.btrfs_full_stripe_locks_tree, i64, i64, i64, i64, ptr, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_io_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.80, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
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
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { i64 }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.btrfs_caching_control = type { %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.btrfs_work, ptr, i64, %struct.refcount_struct }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fs/btrfs/free-space-tree.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014block group %llu length is zero\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014missing free space info for %llu\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"found_key.objectid == block_group->start\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"found_key.offset == block_group->length\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"found_key.objectid >= start\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"found_key.objectid < end\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"found_key.objectid + found_key.offset <= end\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013incorrect extent count for %llu; counted %u, expected %u\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@convert_free_space_to_bitmaps.__UNIQUE_ID_ddebug934 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str, ptr @.str.13, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"convert_free_space_to_bitmaps\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"start_bit < end_bit\00", [44 x i8] zeroinitializer }, align 32
@convert_free_space_to_extents.__UNIQUE_ID_ddebug935 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.16, ptr @.str, ptr @.str.13, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"convert_free_space_to_extents\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"key.type == BTRFS_FREE_SPACE_BITMAP_KEY\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"offset >= found_start && offset < found_end\00", [52 x i8] zeroinitializer }, align 32
@remove_from_free_space_tree.__UNIQUE_ID_ddebug936 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.19, ptr @.str, ptr @.str.13, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"remove_from_free_space_tree\00", [36 x i8] zeroinitializer }, align 32
@add_to_free_space_tree.__UNIQUE_ID_ddebug937 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.20, ptr @.str, ptr @.str.13, i8 1, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"add_to_free_space_tree\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FREE_SPACE_TREE\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FREE_SPACE_TREE_VALID\00", [42 x i8] zeroinitializer }, align 32
@btrfs_create_free_space_tree.__UNIQUE_ID_ddebug938 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.23, ptr @.str, ptr @.str.13, i8 1, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"btrfs_create_free_space_tree\00", [35 x i8] zeroinitializer }, align 32
@btrfs_clear_free_space_tree.__UNIQUE_ID_ddebug939 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.24, ptr @.str, ptr @.str.13, i8 1, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"btrfs_clear_free_space_tree\00", [36 x i8] zeroinitializer }, align 32
@add_block_group_free_space.__UNIQUE_ID_ddebug940 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.25, ptr @.str, ptr @.str.13, i8 1, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"add_block_group_free_space\00", [37 x i8] zeroinitializer }, align 32
@remove_block_group_free_space.__UNIQUE_ID_ddebug941 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.26, ptr @.str, ptr @.str.13, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"remove_block_group_free_space\00", [34 x i8] zeroinitializer }, align 32
@__const.btrfs_free_space_root.key = private unnamed_addr constant %struct.btrfs_key <{ i64 10, i8 -124, i64 0 }>, align 1
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.29, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*start >= found_start && *start < found_end\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"end > found_start\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"key.type == BTRFS_FREE_SPACE_EXTENT_KEY\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"start >= found_start && end <= found_end\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"key.type == BTRFS_FREE_SPACE_INFO_KEY\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"found_start >= block_group->start && found_end > block_group->start\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"found_start < start && found_end <= start\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"(found_start < start && found_end <= start) || (found_start >= end && found_end > end)\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ret == 0\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016setting compat-ro feature flag for %s (0x%llx)\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016clearing compat-ro feature flag for %s (0x%llx)\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"key.objectid < end && key.objectid + key.offset <= end\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 198, i64 199]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 198, i64 200]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 198, i64 199]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 198, i64 199]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 168, i64 169, i64 192]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 8, i64 198, i64 199, i64 200]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 198, i64 200]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 198, i64 199]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 37, i32 6 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 38, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 112, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 114, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 242, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 243, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 249, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 250, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 251, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 287, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 331, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 434, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 464, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 517, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 521, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 857, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1049, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1189, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1190, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1204, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1289, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1337, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1413, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 3491, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 546, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 547, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 731, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 735, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 909, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 916, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 918, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 958, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1099, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 3710, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 3736, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [30 x i8] c"../fs/btrfs/free-space-tree.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1452, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_free_space_tree_thresholds(ptr nocapture noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %do.end, label %entry.if.end21_crit_edge, !prof !98

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #8
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 8
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %3, ptr noundef nonnull @.str.1, i64 noundef %5) #11
  br label %if.end21

if.end21:                                         ; preds = %do.end, %entry.if.end21_crit_edge
  %6 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 167
  %8 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sectorsize, align 4
  %mul = shl i32 %9, 11
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %length, align 8
  %conv = zext i32 %mul to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %11
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !99

if.then168.i.i:                                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %sub) #12, !srcloc !100
  %asmresult1.i.i.i = extractvalue { i64, i64 } %12, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %mul25 = mul i64 %dividend.addr.0.i.i, 281
  %13 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul25, i32 0) #12, !srcloc !101
  %asmresult.i.i.i58 = extractvalue { i64, i32 } %13, 0
  %asmresult4.i.i.i59 = extractvalue { i64, i32 } %13, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul25, i64 %asmresult.i.i.i58, i32 %asmresult4.i.i.i59) #12, !srcloc !102
  %asmresult10.i.i.i71 = extractvalue { i64, i32 } %14, 0
  %div158.i.i7679 = lshr i64 %asmresult10.i.i.i71, 4
  %conv27 = trunc i64 %div158.i.i7679 to i32
  %bitmap_high_thresh = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 12
  %15 = ptrtoint ptr %bitmap_high_thresh to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv27, ptr %bitmap_high_thresh, align 8
  %16 = call i32 @llvm.usub.sat.i32(i32 %conv27, i32 100)
  %17 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @search_free_space_info(ptr noundef %trans, ptr nocapture noundef readonly %block_group, ptr noundef %path, i32 noundef %cow) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.btrfs_key, align 1
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %2 = call ptr @memcpy(ptr %key.i, ptr @__const.btrfs_free_space_root.key, i32 17)
  %call.i = call ptr @btrfs_global_root(ptr noundef %1, ptr noundef nonnull %key.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start, align 8
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %key, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -58, ptr %3, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %length, align 8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %4, align 1
  %call2 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %call.i, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef %cow) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4.not = icmp eq i32 %call2, 0
  br i1 %cmp4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.2, i64 noundef %13) #11
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 114) #13
  unreachable

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %17, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %18 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %15, ptr noundef %18, i32 noundef 17) #8
  %add = add i32 %call.i.i, 101
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0.in = phi i32 [ %add, %if.end7 ], [ %call2, %entry.cleanup_crit_edge ]
  %retval.0 = inttoptr i32 %retval.0.in to ptr
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #4 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %expr, ptr noundef nonnull @.str, i32 noundef %line) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @convert_free_space_to_bitmaps(ptr noundef %trans, ptr nocapture noundef readonly %block_group, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key.i = alloca %struct.btrfs_key, align 1
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %2 = call ptr @memcpy(ptr %key.i, ptr @__const.btrfs_free_space_root.key, i32 17)
  %3 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %block_group, align 8
  %call.i = call ptr @btrfs_global_root(ptr noundef %4, ptr noundef nonnull %key.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %6 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %7 = call ptr @memset(ptr %key, i32 255, i32 17)
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %length, align 8
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 168
  %10 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sectorsize_bits.i, align 8
  %sh_prom.i = zext i32 %11 to i64
  %shr.i = lshr i64 %9, %sh_prom.i
  %sub.i = add i64 %shr.i, 7
  %div1.i = lshr i64 %sub.i, 3
  %conv.i = trunc i64 %div1.i to i32
  %sub.i320 = add i32 %conv.i, -1
  %or.i = or i32 %sub.i320, 3
  %add.i = add i32 %or.i, 1
  %12 = call i32 @llvm.read_register.i32(metadata !88) #8
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %17, 262144
  %or.i.i = or i32 %17, 262144
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3520, i32 noundef -1) #14
  %18 = call i32 @llvm.read_register.i32(metadata !88) #8
  %and.i.i2.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i2.i to ptr
  %task.i3.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i3.i, align 8
  %flags1.i4.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags1.i4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags1.i4.i, align 4
  %and.i5.i = and i32 %23, -262145
  %or.i6.i = or i32 %and.i5.i, %and.i.i
  store i32 %or.i6.i, ptr %flags1.i4.i, align 4
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.out.thread_crit_edge, label %if.end

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end:                                           ; preds = %entry
  %start4 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %24 = ptrtoint ptr %start4 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start4, align 8
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %length, align 8
  %add = add i64 %27, %25
  %sub = add i64 %add, -1
  %28 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %sub, ptr %key, align 8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %5, align 8
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 -1, ptr %6, align 1
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %31 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  %uglygep = getelementptr i8, ptr %call.i.i.i, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end111.while.body_crit_edge, %if.end
  %extent_count.0512 = phi i32 [ 0, %if.end ], [ %extent_count.1488, %if.end111.while.body_crit_edge ]
  %call.i321 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %call.i, ptr noundef nonnull %key, ptr noundef %path, i32 noundef -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %cmp.i = icmp slt i32 %call.i321, 0
  br i1 %cmp.i, label %while.body.out.thread_crit_edge, label %if.end.i

while.body.out.thread_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %cmp1.i = icmp eq i32 %call.i321, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 138) #15
  unreachable

if.end3.i:                                        ; preds = %if.end.i
  %33 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp4.i = icmp eq i32 %34, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end11

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 143) #15
  unreachable

if.end11:                                         ; preds = %if.end3.i
  %35 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp507 = icmp sgt i32 %34, 0
  br i1 %cmp507, label %if.end11.while.body16_crit_edge, label %if.end11.while.end_crit_edge

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end11.while.body16_crit_edge:                  ; preds = %if.end11
  br label %while.body16

while.body16:                                     ; preds = %le_bitmap_set.exit.while.body16_crit_edge, %if.end11.while.body16_crit_edge
  %nr.0510 = phi i32 [ %inc100, %le_bitmap_set.exit.while.body16_crit_edge ], [ 0, %if.end11.while.body16_crit_edge ]
  %extent_count.1509 = phi i32 [ %inc99, %le_bitmap_set.exit.while.body16_crit_edge ], [ %extent_count.0512, %if.end11.while.body16_crit_edge ]
  %storemerge508 = phi i32 [ %dec, %le_bitmap_set.exit.while.body16_crit_edge ], [ %34, %if.end11.while.body16_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %37 = mul i32 %storemerge508, 25
  %add.i.i.i.i = add i32 %37, 76
  %38 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %36, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #8
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %32, align 1
  %41 = call i64 @llvm.bswap.i64(i64 %40) #8
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %31, align 8
  %44 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %disk_key.i, align 8
  %46 = call i64 @llvm.bswap.i64(i64 %45) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  %47 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i8 %43, label %if.else103 [
    i8 -58, label %if.then23
    i8 -57, label %if.then48
  ]

if.then23:                                        ; preds = %while.body16
  %48 = ptrtoint ptr %start4 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %start4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %49)
  %cmp26 = icmp eq i64 %46, %49
  br i1 %cmp26, label %cond.end, label %cond.false, !prof !99

cond.false:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 242) #13
  unreachable

cond.end:                                         ; preds = %if.then23
  %50 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %51)
  %cmp33 = icmp eq i64 %41, %51
  br i1 %cmp33, label %cond.end.while.end_crit_edge, label %cond.false42, !prof !99

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cond.false42:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.5, i32 noundef 243) #13
  unreachable

if.then48:                                        ; preds = %while.body16
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %25)
  %cmp50.not = icmp ult i64 %46, %25
  br i1 %cmp50.not, label %cond.false59, label %cond.end60, !prof !98

cond.false59:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.6, i32 noundef 249) #13
  unreachable

cond.end60:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %add)
  %cmp62 = icmp ult i64 %46, %add
  br i1 %cmp62, label %cond.end72, label %cond.false71, !prof !99

cond.false71:                                     ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 250) #13
  unreachable

cond.end72:                                       ; preds = %cond.end60
  %add75 = add i64 %46, %41
  call void @__sanitizer_cov_trace_cmp8(i64 %add75, i64 %add)
  %cmp76.not = icmp ugt i64 %add75, %add
  br i1 %cmp76.not, label %cond.false85, label %cond.end86, !prof !98

cond.false85:                                     ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.8, i32 noundef 251) #13
  unreachable

cond.end86:                                       ; preds = %cond.end72
  %sub88 = sub i64 %46, %25
  %52 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub88)
  %cmp164.i.i = icmp ult i64 %sub88, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !99

if.then168.i.i:                                   ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %sub88 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %53
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.else162.i.i429

if.else174.i.i:                                   ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #10
  %54 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %53, i64 %sub88) #12, !srcloc !100
  %asmresult1.i.i.i = extractvalue { i64, i64 } %54, 1
  br label %if.else162.i.i429

if.else162.i.i429:                                ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %sub93 = sub i64 %add75, %25
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub93)
  %cmp164.i.i428 = icmp ult i64 %sub93, 4294967296
  br i1 %cmp164.i.i428, label %if.then168.i.i433, label %if.else174.i.i435, !prof !99

if.then168.i.i433:                                ; preds = %if.else162.i.i429
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i430 = trunc i64 %sub93 to i32
  %div172.i.i431 = udiv i32 %conv169.i.i430, %53
  %conv173.i.i432 = zext i32 %div172.i.i431 to i64
  br label %div_u64.exit437

if.else174.i.i435:                                ; preds = %if.else162.i.i429
  call void @__sanitizer_cov_trace_pc() #10
  %55 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %53, i64 %sub93) #12, !srcloc !100
  %asmresult1.i.i.i434 = extractvalue { i64, i64 } %55, 1
  br label %div_u64.exit437

div_u64.exit437:                                  ; preds = %if.else174.i.i435, %if.then168.i.i433
  %dividend.addr.0.i.i436 = phi i64 [ %conv173.i.i432, %if.then168.i.i433 ], [ %asmresult1.i.i.i434, %if.else174.i.i435 ]
  %conv96 = trunc i64 %dividend.addr.0.i.i to i32
  %sub97 = sub i64 %dividend.addr.0.i.i436, %dividend.addr.0.i.i
  %conv98 = trunc i64 %sub97 to i32
  %div28.i = lshr i32 %conv96, 3
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %div28.i
  %add.i438 = add i32 %conv96, %conv98
  %sub.neg.i = or i32 %conv96, -8
  %and.i = and i32 %conv96, 7
  %shl.i = shl nuw nsw i32 255, %and.i
  %phi.cast.i = and i32 %shl.i, 255
  %sub229.i = add i32 %sub.neg.i, %conv98
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub229.i)
  %cmp30.i = icmp sgt i32 %sub229.i, -1
  br i1 %cmp30.i, label %while.body.preheader.i, label %div_u64.exit437.while.end.i_crit_edge

div_u64.exit437.while.end.i_crit_edge:            ; preds = %div_u64.exit437
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.preheader.i:                           ; preds = %div_u64.exit437
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr.i, align 1
  %58 = trunc i32 %shl.i to i8
  %conv6.peel.i = or i8 %57, %58
  store i8 %conv6.peel.i, ptr %add.ptr.i, align 1
  %incdec.ptr.peel.i = getelementptr i8, ptr %add.ptr.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub229.i)
  %cmp.peel.i = icmp ugt i32 %sub229.i, 7
  br i1 %cmp.peel.i, label %while.body.i.preheader, label %while.body.preheader.i.while.end.loopexit.i_crit_edge

while.body.preheader.i.while.end.loopexit.i_crit_edge: ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.loopexit.i

while.body.i.preheader:                           ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = add nsw i32 %sub.neg.i, 7
  %60 = trunc i64 %dividend.addr.0.i.i436 to i32
  %61 = add i32 %59, %60
  %umin = call i32 @llvm.umin.i32(i32 %sub229.i, i32 15)
  %62 = add i32 %umin, %conv96
  %63 = sub i32 %61, %62
  %64 = lshr i32 %63, 3
  %65 = add nuw nsw i32 %64, 1
  %66 = call ptr @memset(ptr %incdec.ptr.peel.i, i32 255, i32 %65)
  %67 = add nuw nsw i32 %64, %div28.i
  %uglygep541 = getelementptr i8, ptr %uglygep, i32 %67
  br label %while.end.loopexit.i

while.end.loopexit.i:                             ; preds = %while.body.i.preheader, %while.body.preheader.i.while.end.loopexit.i_crit_edge
  %incdec.ptr.lcssa.i = phi ptr [ %incdec.ptr.peel.i, %while.body.preheader.i.while.end.loopexit.i_crit_edge ], [ %uglygep541, %while.body.i.preheader ]
  %68 = and i32 %sub229.i, 7
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.loopexit.i, %div_u64.exit437.while.end.i_crit_edge
  %len.addr.0.lcssa.i = phi i32 [ %conv98, %div_u64.exit437.while.end.i_crit_edge ], [ %68, %while.end.loopexit.i ]
  %p.0.lcssa.i = phi ptr [ %add.ptr.i, %div_u64.exit437.while.end.i_crit_edge ], [ %incdec.ptr.lcssa.i, %while.end.loopexit.i ]
  %mask_to_set.0.lcssa.i = phi i32 [ %phi.cast.i, %div_u64.exit437.while.end.i_crit_edge ], [ 255, %while.end.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i)
  %tobool.not.i = icmp eq i32 %len.addr.0.lcssa.i, 0
  br i1 %tobool.not.i, label %while.end.i.le_bitmap_set.exit_crit_edge, label %if.then.i

while.end.i.le_bitmap_set.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le_bitmap_set.exit

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub8.i = sub i32 0, %add.i438
  %and9.i = and i32 %sub8.i, 7
  %shr.i440 = lshr i32 255, %and9.i
  %and11.i = and i32 %mask_to_set.0.lcssa.i, %shr.i440
  %69 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %p.0.lcssa.i, align 1
  %71 = trunc i32 %and11.i to i8
  %conv16.i = or i8 %70, %71
  store i8 %conv16.i, ptr %p.0.lcssa.i, align 1
  br label %le_bitmap_set.exit

le_bitmap_set.exit:                               ; preds = %if.then.i, %while.end.i.le_bitmap_set.exit_crit_edge
  %inc99 = add i32 %extent_count.1509, 1
  %inc100 = add i32 %nr.0510, 1
  %72 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %slots.i, align 4
  %dec = add i32 %73, -1
  store i32 %dec, ptr %slots.i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %le_bitmap_set.exit.while.body16_crit_edge, label %le_bitmap_set.exit.while.end_crit_edge

le_bitmap_set.exit.while.end_crit_edge:           ; preds = %le_bitmap_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

le_bitmap_set.exit.while.body16_crit_edge:        ; preds = %le_bitmap_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body16

if.else103:                                       ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 263) #13
  unreachable

while.end:                                        ; preds = %le_bitmap_set.exit.while.end_crit_edge, %cond.end.while.end_crit_edge, %if.end11.while.end_crit_edge
  %extent_count.1488 = phi i32 [ %extent_count.1509, %cond.end.while.end_crit_edge ], [ %extent_count.0512, %if.end11.while.end_crit_edge ], [ %inc99, %le_bitmap_set.exit.while.end_crit_edge ]
  %nr.0482 = phi i32 [ %nr.0510, %cond.end.while.end_crit_edge ], [ 0, %if.end11.while.end_crit_edge ], [ %inc100, %le_bitmap_set.exit.while.end_crit_edge ]
  %tobool7.not = phi i1 [ false, %cond.end.while.end_crit_edge ], [ true, %if.end11.while.end_crit_edge ], [ true, %le_bitmap_set.exit.while.end_crit_edge ]
  %74 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %slots.i, align 4
  %call108 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %call.i, ptr noundef %path, i32 noundef %75, i32 noundef %nr.0482) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %while.end.out.thread_crit_edge

while.end.out.thread_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end111:                                        ; preds = %while.end
  call void @btrfs_release_path(ptr noundef %path) #8
  br i1 %tobool7.not, label %if.end111.while.body_crit_edge, label %while.end112

if.end111.while.body_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end112:                                     ; preds = %if.end111
  %call113 = call ptr @search_free_space_info(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path, i32 noundef 1)
  %cmp.i442 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i442, label %out, label %if.end117

if.end117:                                        ; preds = %while.end112
  %76 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %path, align 4
  %call.i443 = call i32 @btrfs_get_32(ptr noundef %77, ptr noundef %call113, i32 noundef 4) #8
  %78 = or i32 %call.i443, 1
  call void @btrfs_set_32(ptr noundef %77, ptr noundef %call113, i32 noundef 4, i32 noundef %78) #8
  %call.i444 = call i32 @btrfs_get_32(ptr noundef %77, ptr noundef %call113, i32 noundef 0) #8
  call void @btrfs_mark_buffer_dirty(ptr noundef %77) #8
  call void @btrfs_release_path(ptr noundef %path) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %extent_count.1488, i32 %call.i444)
  %cmp124.not = icmp eq i32 %extent_count.1488, %call.i444
  br i1 %cmp124.not, label %if.end128, label %if.then126

if.then126:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %start4 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %start4, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.9, i64 noundef %80, i32 noundef %extent_count.1488, i32 noundef %call.i444) #11
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 291) #13
  unreachable

if.end128:                                        ; preds = %if.end117
  %81 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sectorsize, align 4
  %mul = shl i32 %82, 11
  %conv130 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %25)
  %cmp132514 = icmp ugt i64 %add, %25
  br i1 %cmp132514, label %while.body134.lr.ph, label %if.end128.out.thread472_crit_edge

if.end128.out.thread472_crit_edge:                ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread472

while.body134.lr.ph:                              ; preds = %if.end128
  %83 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %84 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %85 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  br label %while.body134

out.thread472:                                    ; preds = %cleanup.out.thread472_crit_edge, %if.end128.out.thread472_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #8
  br label %cleanup214

while.body134:                                    ; preds = %cleanup.while.body134_crit_edge, %while.body134.lr.ph
  %i.0516 = phi i64 [ %25, %while.body134.lr.ph ], [ %add155, %cleanup.while.body134_crit_edge ]
  %bitmap_cursor.0515 = phi ptr [ %call.i.i.i, %while.body134.lr.ph ], [ %add.ptr, %cleanup.while.body134_crit_edge ]
  %sub135 = sub i64 %add, %i.0516
  %86 = call i64 @llvm.umin.i64(i64 %sub135, i64 %conv130)
  %87 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sectorsize_bits.i, align 8
  %sh_prom.i446 = zext i32 %88 to i64
  %shr.i447 = lshr i64 %86, %sh_prom.i446
  %sub.i448 = add i64 %shr.i447, 7
  %div1.i449 = lshr i64 %sub.i448, 3
  %conv.i450 = trunc i64 %div1.i449 to i32
  %89 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %i.0516, ptr %key, align 8
  %90 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -56, ptr %5, align 8
  %91 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 %86, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %92 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv.i450, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #8
  %93 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %key, ptr %batch.i, align 4
  %94 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %data_size.addr.i, ptr %83, align 4
  %95 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv.i450, ptr %84, align 4
  %96 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %85, align 4
  %call.i451 = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %call.i, ptr noundef %path, ptr noundef nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i451)
  %tobool146.not = icmp eq i32 %call.i451, 0
  br i1 %tobool146.not, label %cleanup, label %while.body134.out.thread_crit_edge

while.body134.out.thread_crit_edge:               ; preds = %while.body134
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

cleanup:                                          ; preds = %while.body134
  %97 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %path, align 4
  %99 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %slots.i, align 4
  %mul.i.i.i = mul i32 %100, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %101 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %98, ptr noundef %101, i32 noundef 17) #8
  %add154 = add i32 %call.i.i, 101
  call void @write_extent_buffer(ptr noundef %98, ptr noundef %bitmap_cursor.0515, i32 noundef %add154, i32 noundef %conv.i450) #8
  call void @btrfs_mark_buffer_dirty(ptr noundef %98) #8
  call void @btrfs_release_path(ptr noundef %path) #8
  %add155 = add i64 %86, %i.0516
  %add.ptr = getelementptr i8, ptr %bitmap_cursor.0515, i32 %conv.i450
  %cmp132 = icmp ugt i64 %add, %add155
  br i1 %cmp132, label %cleanup.while.body134_crit_edge, label %cleanup.out.thread472_crit_edge

cleanup.out.thread472_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread472

cleanup.while.body134_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body134

out.thread:                                       ; preds = %while.body134.out.thread_crit_edge, %while.end.out.thread_crit_edge, %while.body.out.thread_crit_edge, %entry.out.thread_crit_edge
  %ret.0.ph = phi i32 [ -12, %entry.out.thread_crit_edge ], [ %call.i451, %while.body134.out.thread_crit_edge ], [ %call108, %while.end.out.thread_crit_edge ], [ %call.i321, %while.body.out.thread_crit_edge ]
  call void @kvfree(ptr noundef %call.i.i.i) #8
  br label %do.body

out:                                              ; preds = %while.end112
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %call113 to i32
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #8
  br label %do.body

do.body:                                          ; preds = %out, %out.thread
  %ret.0469 = phi i32 [ %ret.0.ph, %out.thread ], [ %102, %out ]
  %103 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %104, i32 0, i32 149
  %call162 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.then164, label %do.body.if.end210_crit_edge

do.body.if.end210_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

if.then164:                                       ; preds = %do.body
  %105 = zext i32 %ret.0469 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %ret.0469, label %do.end [
    i32 -5, label %if.then164.do.body194_crit_edge
    i32 -30, label %if.then164.do.body194_crit_edge637
  ]

if.then164.do.body194_crit_edge637:               ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body194

if.then164.do.body194_crit_edge:                  ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body194

do.end:                                           ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 331, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %ret.0469) #8
  br label %if.end210

do.body194:                                       ; preds = %if.then164.do.body194_crit_edge, %if.then164.do.body194_crit_edge637
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @convert_free_space_to_bitmaps.__UNIQUE_ID_ddebug934, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@convert_free_space_to_bitmaps, %if.then204)) #8
          to label %if.end210 [label %if.then204], !srcloc !104

if.then204:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %107, ptr noundef nonnull @.str.14, i32 noundef %ret.0469) #11
  br label %if.end210

if.end210:                                        ; preds = %if.then204, %do.body194, %do.end, %do.body.if.end210_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.12, i32 noundef 331, i32 noundef %ret.0469) #11
  br label %cleanup214

cleanup214:                                       ; preds = %if.end210, %out.thread472
  %ret.0471 = phi i32 [ %ret.0469, %if.end210 ], [ 0, %out.thread472 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %ret.0471
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @convert_free_space_to_extents(ptr noundef %trans, ptr nocapture noundef readonly %block_group, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key.i = alloca %struct.btrfs_key, align 1
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %2 = call ptr @memcpy(ptr %key.i, ptr @__const.btrfs_free_space_root.key, i32 17)
  %3 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %block_group, align 8
  %call.i = call ptr @btrfs_global_root(ptr noundef %4, ptr noundef nonnull %key.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %6 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %7 = call ptr @memset(ptr %key, i32 255, i32 17)
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %length, align 8
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 168
  %10 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sectorsize_bits.i, align 8
  %sh_prom.i = zext i32 %11 to i64
  %shr.i = lshr i64 %9, %sh_prom.i
  %sub.i = add i64 %shr.i, 7
  %div1.i = lshr i64 %sub.i, 3
  %conv.i = trunc i64 %div1.i to i32
  %sub.i304 = add i32 %conv.i, -1
  %or.i = or i32 %sub.i304, 3
  %add.i = add i32 %or.i, 1
  %12 = call i32 @llvm.read_register.i32(metadata !88) #8
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %17, 262144
  %or.i.i = or i32 %17, 262144
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3520, i32 noundef -1) #14
  %18 = call i32 @llvm.read_register.i32(metadata !88) #8
  %and.i.i2.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i2.i to ptr
  %task.i3.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i3.i, align 8
  %flags1.i4.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags1.i4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags1.i4.i, align 4
  %and.i5.i = and i32 %23, -262145
  %or.i6.i = or i32 %and.i5.i, %and.i.i
  store i32 %or.i6.i, ptr %flags1.i4.i, align 4
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.out.thread_crit_edge, label %if.end

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end:                                           ; preds = %entry
  %start4 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %24 = ptrtoint ptr %start4 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start4, align 8
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %length, align 8
  %add = add i64 %27, %25
  %sub = add i64 %add, -1
  %28 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %sub, ptr %key, align 8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %5, align 8
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 -1, ptr %6, align 1
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %31 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  br label %while.body

while.body:                                       ; preds = %if.end109.while.body_crit_edge, %if.end
  %call.i305 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %call.i, ptr noundef nonnull %key, ptr noundef %path, i32 noundef -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %cmp.i = icmp slt i32 %call.i305, 0
  br i1 %cmp.i, label %while.body.out.thread_crit_edge, label %if.end.i

while.body.out.thread_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %cmp1.i = icmp eq i32 %call.i305, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 138) #15
  unreachable

if.end3.i:                                        ; preds = %if.end.i
  %33 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp4.i = icmp eq i32 %34, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end11

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 143) #15
  unreachable

if.end11:                                         ; preds = %if.end3.i
  %35 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp355 = icmp sgt i32 %34, 0
  br i1 %cmp355, label %if.end11.while.body16_crit_edge, label %if.end11.while.end_crit_edge

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end11.while.body16_crit_edge:                  ; preds = %if.end11
  br label %while.body16

while.body16:                                     ; preds = %div_u64.exit.while.body16_crit_edge, %if.end11.while.body16_crit_edge
  %nr.0357 = phi i32 [ %inc98, %div_u64.exit.while.body16_crit_edge ], [ 0, %if.end11.while.body16_crit_edge ]
  %storemerge356 = phi i32 [ %dec, %div_u64.exit.while.body16_crit_edge ], [ %34, %if.end11.while.body16_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %37 = mul i32 %storemerge356, 25
  %add.i.i.i.i = add i32 %37, 76
  %38 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %36, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #8
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %32, align 1
  %41 = call i64 @llvm.bswap.i64(i64 %40) #8
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %31, align 8
  %44 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %disk_key.i, align 8
  %46 = call i64 @llvm.bswap.i64(i64 %45) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  %47 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %43, label %if.else101 [
    i8 -58, label %if.then23
    i8 -56, label %if.then48
  ]

if.then23:                                        ; preds = %while.body16
  %48 = ptrtoint ptr %start4 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %start4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %49)
  %cmp26 = icmp eq i64 %46, %49
  br i1 %cmp26, label %cond.end, label %cond.false, !prof !99

cond.false:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 379) #13
  unreachable

cond.end:                                         ; preds = %if.then23
  %50 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %51)
  %cmp33 = icmp eq i64 %41, %51
  br i1 %cmp33, label %cond.end.while.end_crit_edge, label %cond.false42, !prof !99

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cond.false42:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.5, i32 noundef 380) #13
  unreachable

if.then48:                                        ; preds = %while.body16
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %25)
  %cmp50.not = icmp ult i64 %46, %25
  br i1 %cmp50.not, label %cond.false59, label %cond.end60, !prof !98

cond.false59:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.6, i32 noundef 388) #13
  unreachable

cond.end60:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %add)
  %cmp62 = icmp ult i64 %46, %add
  br i1 %cmp62, label %cond.end72, label %cond.false71, !prof !99

cond.false71:                                     ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 389) #13
  unreachable

cond.end72:                                       ; preds = %cond.end60
  %add75 = add i64 %46, %41
  call void @__sanitizer_cov_trace_cmp8(i64 %add75, i64 %add)
  %cmp76.not = icmp ugt i64 %add75, %add
  br i1 %cmp76.not, label %cond.false85, label %cond.end86, !prof !98

cond.false85:                                     ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.8, i32 noundef 390) #13
  unreachable

cond.end86:                                       ; preds = %cond.end72
  %sub88 = sub i64 %46, %25
  %52 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sectorsize, align 4
  %mul = shl i32 %53, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub88)
  %cmp164.i.i = icmp ult i64 %sub88, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !99

if.then168.i.i:                                   ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %sub88 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #10
  %54 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %sub88) #12, !srcloc !100
  %asmresult1.i.i.i = extractvalue { i64, i64 } %54, 1
  %extract.t335 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t335, %if.else174.i.i ]
  %add.ptr = getelementptr i8, ptr %call.i.i.i, i32 %dividend.addr.0.i.i.off0
  %55 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sectorsize_bits.i, align 8
  %sh_prom.i309 = zext i32 %56 to i64
  %shr.i310 = lshr i64 %41, %sh_prom.i309
  %sub.i311 = add i64 %shr.i310, 7
  %div1.i312 = lshr i64 %sub.i311, 3
  %conv.i313 = trunc i64 %div1.i312 to i32
  %57 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %slots.i, align 4
  %59 = mul i32 %58, 25
  %add.i.i.i = add i32 %59, 76
  %60 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %36, ptr noundef %60, i32 noundef 17) #8
  %add97 = add i32 %call.i.i, 101
  call void @read_extent_buffer(ptr noundef %36, ptr noundef %add.ptr, i32 noundef %add97, i32 noundef %conv.i313) #8
  %inc98 = add i32 %nr.0357, 1
  %61 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %slots.i, align 4
  %dec = add i32 %62, -1
  store i32 %dec, ptr %slots.i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %div_u64.exit.while.body16_crit_edge, label %div_u64.exit.while.end_crit_edge

div_u64.exit.while.end_crit_edge:                 ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

div_u64.exit.while.body16_crit_edge:              ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body16

if.else101:                                       ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 406) #13
  unreachable

while.end:                                        ; preds = %div_u64.exit.while.end_crit_edge, %cond.end.while.end_crit_edge, %if.end11.while.end_crit_edge
  %nr.0345 = phi i32 [ %nr.0357, %cond.end.while.end_crit_edge ], [ 0, %if.end11.while.end_crit_edge ], [ %inc98, %div_u64.exit.while.end_crit_edge ]
  %tobool7.not = phi i1 [ false, %cond.end.while.end_crit_edge ], [ true, %if.end11.while.end_crit_edge ], [ true, %div_u64.exit.while.end_crit_edge ]
  %63 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %slots.i, align 4
  %call106 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %call.i, ptr noundef %path, i32 noundef %64, i32 noundef %nr.0345) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %while.end.out.thread_crit_edge

while.end.out.thread_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end109:                                        ; preds = %while.end
  call void @btrfs_release_path(ptr noundef %path) #8
  br i1 %tobool7.not, label %if.end109.while.body_crit_edge, label %while.end110

if.end109.while.body_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end110:                                     ; preds = %if.end109
  %call111 = call ptr @search_free_space_info(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path, i32 noundef 1)
  %cmp.i314 = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314, label %out, label %if.end115

if.end115:                                        ; preds = %while.end110
  %65 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %path, align 4
  %call.i315 = call i32 @btrfs_get_32(ptr noundef %66, ptr noundef %call111, i32 noundef 4) #8
  %67 = and i32 %call.i315, -2
  call void @btrfs_set_32(ptr noundef %66, ptr noundef %call111, i32 noundef 4, i32 noundef %67) #8
  %call.i316 = call i32 @btrfs_get_32(ptr noundef %66, ptr noundef %call111, i32 noundef 0) #8
  call void @btrfs_mark_buffer_dirty(ptr noundef %66) #8
  call void @btrfs_release_path(ptr noundef %path) #8
  %68 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %length, align 8
  %70 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %block_group, align 8
  %sectorsize_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %71, i32 0, i32 168
  %72 = ptrtoint ptr %sectorsize_bits to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sectorsize_bits, align 8
  %sh_prom = zext i32 %73 to i64
  %shr = lshr i64 %69, %sh_prom
  %conv124 = trunc i64 %shr to i32
  %call.i317 = call i32 @_find_next_bit_le(ptr noundef nonnull %call.i.i.i, i32 noundef %conv124, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i317, i32 %conv124)
  %cmp127359 = icmp ult i32 %call.i317, %conv124
  br i1 %cmp127359, label %while.body129.lr.ph, label %if.end115.while.end161_crit_edge

if.end115.while.end161_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end161

while.body129.lr.ph:                              ; preds = %if.end115
  %74 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %75 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %76 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  br label %while.body129

while.body129:                                    ; preds = %if.end158.while.body129_crit_edge, %while.body129.lr.ph
  %extent_count.0361 = phi i32 [ 0, %while.body129.lr.ph ], [ %inc159, %if.end158.while.body129_crit_edge ]
  %start_bit.0360 = phi i32 [ %call.i317, %while.body129.lr.ph ], [ %call.i320, %if.end158.while.body129_crit_edge ]
  %call.i318 = call i32 @_find_next_zero_bit_le(ptr noundef nonnull %call.i.i.i, i32 noundef %conv124, i32 noundef %start_bit.0360) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i318, i32 %start_bit.0360)
  %cmp131 = icmp ugt i32 %call.i318, %start_bit.0360
  br i1 %cmp131, label %cond.end141, label %cond.false140, !prof !99

cond.false140:                                    ; preds = %while.body129
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.15, i32 noundef 434) #13
  unreachable

cond.end141:                                      ; preds = %while.body129
  %77 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %block_group, align 8
  %sectorsize143 = getelementptr inbounds %struct.btrfs_fs_info, ptr %78, i32 0, i32 167
  %79 = ptrtoint ptr %sectorsize143 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sectorsize143, align 4
  %mul144 = mul i32 %80, %start_bit.0360
  %conv145 = zext i32 %mul144 to i64
  %add146 = add i64 %25, %conv145
  %81 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add146, ptr %key, align 8
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -57, ptr %5, align 8
  %sub149 = sub i32 %call.i318, %start_bit.0360
  %mul152 = mul i32 %80, %sub149
  %conv153 = zext i32 %mul152 to i64
  %83 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 %conv153, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %84 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #8
  %85 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %key, ptr %batch.i, align 4
  %86 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %data_size.addr.i, ptr %74, align 4
  %87 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %75, align 4
  %88 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %76, align 4
  %call.i319 = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %call.i, ptr noundef %path, ptr noundef nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %tobool156.not = icmp eq i32 %call.i319, 0
  br i1 %tobool156.not, label %if.end158, label %cond.end141.out.thread_crit_edge

cond.end141.out.thread_crit_edge:                 ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end158:                                        ; preds = %cond.end141
  call void @btrfs_release_path(ptr noundef %path) #8
  %inc159 = add i32 %extent_count.0361, 1
  %call.i320 = call i32 @_find_next_bit_le(ptr noundef nonnull %call.i.i.i, i32 noundef %conv124, i32 noundef %call.i318) #8
  %cmp127 = icmp ult i32 %call.i320, %conv124
  br i1 %cmp127, label %if.end158.while.body129_crit_edge, label %if.end158.while.end161_crit_edge

if.end158.while.end161_crit_edge:                 ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end161

if.end158.while.body129_crit_edge:                ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body129

while.end161:                                     ; preds = %if.end158.while.end161_crit_edge, %if.end115.while.end161_crit_edge
  %extent_count.0.lcssa = phi i32 [ 0, %if.end115.while.end161_crit_edge ], [ %inc159, %if.end158.while.end161_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %extent_count.0.lcssa, i32 %call.i316)
  %cmp162.not = icmp eq i32 %extent_count.0.lcssa, %call.i316
  br i1 %cmp162.not, label %out.thread330, label %if.then164

out.thread330:                                    ; preds = %while.end161
  call void @__sanitizer_cov_trace_pc() #10
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #8
  br label %if.end220

if.then164:                                       ; preds = %while.end161
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %start4 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %start4, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.9, i64 noundef %90, i32 noundef %extent_count.0.lcssa, i32 noundef %call.i316) #11
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 455) #13
  unreachable

out.thread:                                       ; preds = %cond.end141.out.thread_crit_edge, %while.end.out.thread_crit_edge, %while.body.out.thread_crit_edge, %entry.out.thread_crit_edge
  %ret.0.ph = phi i32 [ -12, %entry.out.thread_crit_edge ], [ %call.i319, %cond.end141.out.thread_crit_edge ], [ %call106, %while.end.out.thread_crit_edge ], [ %call.i305, %while.body.out.thread_crit_edge ]
  call void @kvfree(ptr noundef %call.i.i.i) #8
  br label %do.body

out:                                              ; preds = %while.end110
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %call111 to i32
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #8
  br label %do.body

do.body:                                          ; preds = %out, %out.thread
  %ret.0328 = phi i32 [ %ret.0.ph, %out.thread ], [ %91, %out ]
  %92 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %93, i32 0, i32 149
  %call170 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.then172, label %do.body.if.end217_crit_edge

do.body.if.end217_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217

if.then172:                                       ; preds = %do.body
  %94 = zext i32 %ret.0328 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %ret.0328, label %do.end [
    i32 -5, label %if.then172.do.body201_crit_edge
    i32 -30, label %if.then172.do.body201_crit_edge452
  ]

if.then172.do.body201_crit_edge452:               ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body201

if.then172.do.body201_crit_edge:                  ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body201

do.end:                                           ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 464, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %ret.0328) #8
  br label %if.end217

do.body201:                                       ; preds = %if.then172.do.body201_crit_edge, %if.then172.do.body201_crit_edge452
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @convert_free_space_to_extents.__UNIQUE_ID_ddebug935, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@convert_free_space_to_extents, %if.then211)) #8
          to label %if.end217 [label %if.then211], !srcloc !104

if.then211:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %96, ptr noundef nonnull @.str.14, i32 noundef %ret.0328) #11
  br label %if.end217

if.end217:                                        ; preds = %if.then211, %do.body201, %do.end, %do.body.if.end217_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.16, i32 noundef 464, i32 noundef %ret.0328) #11
  br label %if.end220

if.end220:                                        ; preds = %if.end217, %out.thread330
  %ret.0329 = phi i32 [ %ret.0328, %if.end217 ], [ 0, %out.thread330 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %ret.0329
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @free_space_test_bit(ptr nocapture noundef readonly %block_group, ptr nocapture noundef readonly %path, i64 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %4 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %3, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %6 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %1, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #8
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %5, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %4, align 8
  %11 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %disk_key.i, align 8
  %13 = call i64 @llvm.bswap.i64(i64 %12) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %10)
  %cmp = icmp eq i8 %10, -56
  br i1 %cmp, label %cond.end, label %cond.false, !prof !99

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.17, i32 noundef 517) #13
  unreachable

cond.end:                                         ; preds = %entry
  %14 = call i64 @llvm.bswap.i64(i64 %8) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %offset)
  %cmp6.not = icmp ule i64 %13, %offset
  %add = add i64 %13, %14
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %offset)
  %cmp8 = icmp ugt i64 %add, %offset
  %or.cond = select i1 %cmp6.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %cond.end18, label %cond.false17, !prof !105

cond.false17:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.18, i32 noundef 521) #13
  unreachable

cond.end18:                                       ; preds = %cond.end
  %15 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %16, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %17 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %1, ptr noundef %17, i32 noundef 17) #8
  %sub = sub i64 %offset, %13
  %18 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %block_group, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %19, i32 0, i32 167
  %20 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !99

if.then168.i.i:                                   ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %21
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #10
  %22 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %sub) #12, !srcloc !100
  %asmresult1.i.i.i = extractvalue { i64, i64 } %22, 1
  %extract.t38 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t38, %if.else174.i.i ]
  %add21 = add i32 %call.i.i, 101
  %call24 = call i32 @extent_buffer_test_bit(ptr noundef %1, i32 noundef %add21, i32 noundef %dividend.addr.0.i.i.off0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot.ext29 = zext i1 %tobool25 to i32
  ret i32 %lnot.ext29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extent_buffer_test_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__remove_from_free_space_tree(ptr noundef %trans, ptr nocapture noundef %block_group, ptr noundef %path, i64 noundef %start, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i92.i = alloca i32, align 4
  %batch.i93.i = alloca %struct.btrfs_item_batch, align 4
  %data_size.addr.i.i = alloca i32, align 4
  %batch.i.i = alloca %struct.btrfs_item_batch, align 4
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  %key.i.i = alloca %struct.btrfs_key, align 1
  %key.i = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %needs_free_space = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 42
  %0 = ptrtoint ptr %needs_free_space to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %needs_free_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %needs_free_space to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %needs_free_space, align 4
  %call.i = tail call fastcc i32 @add_new_free_space_info(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__add_block_group_free_space.exit, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__add_block_group_free_space.exit:                ; preds = %if.then
  %start.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %3 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start.i, align 8
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %length.i, align 8
  %call1.i = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path, i64 noundef %4, i64 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool1.not = icmp eq i32 %call1.i, 0
  br i1 %tobool1.not, label %__add_block_group_free_space.exit.if.end3_crit_edge, label %__add_block_group_free_space.exit.cleanup_crit_edge

__add_block_group_free_space.exit.cleanup_crit_edge: ; preds = %__add_block_group_free_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__add_block_group_free_space.exit.if.end3_crit_edge: ; preds = %__add_block_group_free_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %__add_block_group_free_space.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call ptr @search_free_space_info(ptr noundef null, ptr noundef %block_group, ptr noundef %path, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %path, align 4
  %call.i32 = tail call i32 @btrfs_get_32(ptr noundef %9, ptr noundef %call4, i32 noundef 4) #8
  tail call void @btrfs_release_path(ptr noundef %path) #8
  %10 = and i32 %call.i32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call fastcc i32 @modify_free_space_bitmap(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path, i64 noundef %start, i64 noundef %size, i32 noundef 1)
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i.i) #8
  %11 = call ptr @memcpy(ptr %key.i.i, ptr @__const.btrfs_free_space_root.key, i32 17)
  %12 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %block_group, align 8
  %call.i.i = call ptr @btrfs_global_root(ptr noundef %13, ptr noundef nonnull %key.i.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i) #8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %14 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %add.i = add i64 %size, %start
  %16 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %start, ptr %key.i, align 8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %14, align 8
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 -1, ptr %15, align 1
  %call.i88.i = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %call.i.i, ptr noundef nonnull %key.i, ptr noundef %path, i32 noundef -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %cmp.i.i = icmp slt i32 %call.i88.i, 0
  br i1 %cmp.i.i, label %if.else.remove_free_space_extent.exit_crit_edge, label %if.end.i.i

if.else.remove_free_space_extent.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_free_space_extent.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %cmp1.i.i = icmp eq i32 %call.i88.i, 0
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 138) #15
  unreachable

if.end3.i.i:                                      ; preds = %if.end.i.i
  %slots.i.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %19 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slots.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4.i.i = icmp eq i32 %20, 0
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end.i34

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 143) #15
  unreachable

if.end.i34:                                       ; preds = %if.end3.i.i
  %dec.i.i = add i32 %20, -1
  %21 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dec.i.i, ptr %slots.i.i, align 4
  %22 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #8
  %24 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 1
  %25 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  %mul.i.i.i.i.i = mul i32 %dec.i.i, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %26 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %23, ptr noundef nonnull %disk_key.i.i, i32 noundef %add.i.i.i.i.i, i32 noundef 17) #8
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %25, align 1
  %29 = call i64 @llvm.bswap.i64(i64 %28) #8
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %15, align 1
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %24, align 8
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %14, align 8
  %34 = ptrtoint ptr %disk_key.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %disk_key.i.i, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35) #8
  %37 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %32)
  %cmp.i33 = icmp eq i8 %32, -57
  br i1 %cmp.i33, label %cond.end.i, label %cond.false.i, !prof !99

cond.false.i:                                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.32, i32 noundef 731) #15
  unreachable

cond.end.i:                                       ; preds = %if.end.i34
  %add10.i = add i64 %36, %29
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %start)
  %cmp11.not.i = icmp ule i64 %36, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %add10.i, i64 %add.i)
  %cmp13.i = icmp uge i64 %add10.i, %add.i
  %spec.select.i = select i1 %cmp11.not.i, i1 %cmp13.i, i1 false
  br i1 %spec.select.i, label %cond.end23.i, label %cond.false22.i, !prof !99

cond.false22.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.33, i32 noundef 735) #15
  unreachable

cond.end23.i:                                     ; preds = %cond.end.i
  %38 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slots.i.i, align 4
  %call.i90.i = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %call.i.i, ptr noundef %path, i32 noundef %39, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90.i)
  %tobool25.not.i = icmp eq i32 %call.i90.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %cond.end23.i.remove_free_space_extent.exit_crit_edge

cond.end23.i.remove_free_space_extent.exit_crit_edge: ; preds = %cond.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_free_space_extent.exit

if.end27.i:                                       ; preds = %cond.end23.i
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %start)
  %cmp28.i = icmp ult i64 %36, %start
  br i1 %cmp28.i, label %if.then30.i, label %if.end27.i.if.end38.i_crit_edge

if.end27.i.if.end38.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then30.i:                                      ; preds = %if.end27.i
  %40 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %36, ptr %key.i, align 8
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -57, ptr %14, align 8
  %sub.i = sub i64 %start, %36
  %42 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %sub.i, ptr %15, align 1
  call void @btrfs_release_path(ptr noundef %path) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i.i) #8
  %43 = ptrtoint ptr %data_size.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %data_size.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i.i) #8
  %44 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 1
  %45 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 2
  %46 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %batch.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %key.i, ptr %batch.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %data_size.addr.i.i, ptr %44, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %45, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %46, align 4
  %call.i91.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %call.i.i, ptr noundef %path, ptr noundef nonnull %batch.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool35.not.i = icmp eq i32 %call.i91.i, 0
  br i1 %tobool35.not.i, label %if.then30.i.if.end38.i_crit_edge, label %if.then30.i.remove_free_space_extent.exit_crit_edge

if.then30.i.remove_free_space_extent.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_free_space_extent.exit

if.then30.i.if.end38.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then30.i.if.end38.i_crit_edge, %if.end27.i.if.end38.i_crit_edge
  %new_extents.0.i = phi i32 [ -1, %if.end27.i.if.end38.i_crit_edge ], [ 0, %if.then30.i.if.end38.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add10.i, i64 %add.i)
  %cmp39.i = icmp ugt i64 %add10.i, %add.i
  br i1 %cmp39.i, label %if.then41.i, label %if.end38.i.if.end51.i_crit_edge

if.end38.i.if.end51.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then41.i:                                      ; preds = %if.end38.i
  %51 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add.i, ptr %key.i, align 8
  %52 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -57, ptr %14, align 8
  %sub44.i = sub i64 %add10.i, %add.i
  %53 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %sub44.i, ptr %15, align 1
  call void @btrfs_release_path(ptr noundef %path) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i92.i) #8
  %54 = ptrtoint ptr %data_size.addr.i92.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %data_size.addr.i92.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i93.i) #8
  %55 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i93.i, i32 0, i32 1
  %56 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i93.i, i32 0, i32 2
  %57 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i93.i, i32 0, i32 3
  %58 = ptrtoint ptr %batch.i93.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %key.i, ptr %batch.i93.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %data_size.addr.i92.i, ptr %55, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %56, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %57, align 4
  %call.i94.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %call.i.i, ptr noundef %path, ptr noundef nonnull %batch.i93.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i93.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i92.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %tobool47.not.i = icmp eq i32 %call.i94.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.then41.i.remove_free_space_extent.exit_crit_edge

if.then41.i.remove_free_space_extent.exit_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_free_space_extent.exit

if.end49.i:                                       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc50.i = add nsw i32 %new_extents.0.i, 1
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end49.i, %if.end38.i.if.end51.i_crit_edge
  %new_extents.1.i = phi i32 [ %inc50.i, %if.end49.i ], [ %new_extents.0.i, %if.end38.i.if.end51.i_crit_edge ]
  call void @btrfs_release_path(ptr noundef %path) #8
  %call52.i = call fastcc i32 @update_free_space_extent_count(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path, i32 noundef %new_extents.1.i) #8
  br label %remove_free_space_extent.exit

remove_free_space_extent.exit:                    ; preds = %if.end51.i, %if.then41.i.remove_free_space_extent.exit_crit_edge, %if.then30.i.remove_free_space_extent.exit_crit_edge, %cond.end23.i.remove_free_space_extent.exit_crit_edge, %if.else.remove_free_space_extent.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i90.i, %cond.end23.i.remove_free_space_extent.exit_crit_edge ], [ %call.i91.i, %if.then30.i.remove_free_space_extent.exit_crit_edge ], [ %call.i94.i, %if.then41.i.remove_free_space_extent.exit_crit_edge ], [ %call52.i, %if.end51.i ], [ %call.i88.i, %if.else.remove_free_space_extent.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  br label %cleanup

cleanup:                                          ; preds = %remove_free_space_extent.exit, %if.then11, %if.then6, %__add_block_group_free_space.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then6 ], [ %call12, %if.then11 ], [ %ret.0.i, %remove_free_space_extent.exit ], [ %call1.i, %__add_block_group_free_space.exit.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @modify_free_space_bitmap(ptr noundef %trans, ptr nocapture noundef readonly %block_group, ptr noundef %path, i64 noundef %start, i64 noundef %size, i32 noundef %remove) unnamed_addr #0 align 64 {
entry:
  %disk_key.i162 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key.i = alloca %struct.btrfs_key, align 1
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %0 = call ptr @memcpy(ptr %key.i, ptr @__const.btrfs_free_space_root.key, i32 17)
  %1 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %block_group, align 8
  %call.i = call ptr @btrfs_global_root(ptr noundef %2, ptr noundef nonnull %key.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %add = add i64 %size, %start
  %start1 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %5 = call ptr @memset(ptr %key, i32 255, i32 17)
  %6 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %start)
  %cmp = icmp ult i64 %7, %start
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %block_group, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %9, i32 0, i32 167
  %10 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %11 to i64
  %sub = sub i64 %start, %conv
  %12 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %sub, ptr %key, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 -1, ptr %4, align 1
  %call.i144 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %call.i, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp.i = icmp slt i32 %call.i144, 0
  br i1 %cmp.i, label %if.then.cleanup80_crit_edge, label %if.end.i

if.then.cleanup80_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp1.i = icmp eq i32 %call.i144, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 138) #15
  unreachable

if.end3.i:                                        ; preds = %if.end.i
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %14 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4.i = icmp eq i32 %15, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 143) #15
  unreachable

if.end:                                           ; preds = %if.end3.i
  %dec.i = add i32 %15, -1
  %16 = ptrtoint ptr %slots.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec.i, ptr %slots.i, align 4
  %call4 = call i32 @free_space_test_bit(ptr noundef %block_group, ptr noundef %path, i64 noundef %sub)
  %17 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %path, align 4
  %19 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slots.i, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %21 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %20, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %23 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %18, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #8
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %22, align 1
  %26 = call i64 @llvm.bswap.i64(i64 %25) #8
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %4, align 1
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %21, align 8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %3, align 8
  %31 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %disk_key.i, align 8
  %33 = call i64 @llvm.bswap.i64(i64 %32) #8
  %34 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  %add8 = add i64 %33, %26
  call void @__sanitizer_cov_trace_cmp8(i64 %add8, i64 %start)
  %cmp9.not = icmp ugt i64 %add8, %start
  br i1 %cmp9.not, label %if.end.if.end24_crit_edge, label %if.then11

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then11:                                        ; preds = %if.end
  %call12 = call fastcc i32 @free_space_next_bitmap(ptr noundef %trans, ptr noundef %call.i, ptr noundef %path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end24_crit_edge, label %if.then11.cleanup80_crit_edge

if.then11.cleanup80_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.else:                                          ; preds = %entry
  %35 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %start, ptr %key, align 8
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 -1, ptr %4, align 1
  %call.i145 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %call.i, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp.i146 = icmp slt i32 %call.i145, 0
  br i1 %cmp.i146, label %if.else.cleanup80_crit_edge, label %if.end.i148

if.else.cleanup80_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

if.end.i148:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp1.i147 = icmp eq i32 %call.i145, 0
  br i1 %cmp1.i147, label %if.then2.i149, label %if.end3.i152

if.then2.i149:                                    ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 138) #15
  unreachable

if.end3.i152:                                     ; preds = %if.end.i148
  %slots.i150 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %37 = ptrtoint ptr %slots.i150 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slots.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp4.i151 = icmp eq i32 %38, 0
  br i1 %cmp4.i151, label %if.then5.i153, label %btrfs_search_prev_slot.exit157.thread

if.then5.i153:                                    ; preds = %if.end3.i152
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 143) #15
  unreachable

btrfs_search_prev_slot.exit157.thread:            ; preds = %if.end3.i152
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i154 = add i32 %38, -1
  %39 = ptrtoint ptr %slots.i150 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %dec.i154, ptr %slots.i150, align 4
  br label %if.end24

if.end24:                                         ; preds = %btrfs_search_prev_slot.exit157.thread, %if.then11.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %prev_bit.1 = phi i32 [ %call4, %if.end.if.end24_crit_edge ], [ %call4, %if.then11.if.end24_crit_edge ], [ -1, %btrfs_search_prev_slot.exit157.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remove)
  %tobool25.not = icmp eq i32 %remove, 0
  %slots.i158 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %40 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 1
  %41 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end29.while.cond_crit_edge, %if.end24
  %cur_start.0 = phi i64 [ %start, %if.end24 ], [ %57, %if.end29.while.cond_crit_edge ]
  %cur_size.0 = phi i64 [ %size, %if.end24 ], [ %sub48.i, %if.end29.while.cond_crit_edge ]
  %42 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %block_group, align 8
  %add.i = add i64 %cur_size.0, %cur_start.0
  %44 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %path, align 4
  %46 = ptrtoint ptr %slots.i158 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %slots.i158, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #8
  %mul.i.i.i.i.i = mul i32 %47, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %48 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %45, ptr noundef nonnull %disk_key.i.i, i32 noundef %add.i.i.i.i.i, i32 noundef 17) #8
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %41, align 1
  %51 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %40, align 8
  %53 = ptrtoint ptr %disk_key.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %disk_key.i.i, align 8
  %55 = call i64 @llvm.bswap.i64(i64 %54) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %52)
  %cmp.i159 = icmp eq i8 %52, -56
  br i1 %cmp.i159, label %cond.end.i, label %cond.false.i, !prof !99

cond.false.i:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.17, i32 noundef 542) #15
  unreachable

cond.end.i:                                       ; preds = %while.cond
  %56 = call i64 @llvm.bswap.i64(i64 %50) #8
  %add6.i = add i64 %55, %56
  call void @__sanitizer_cov_trace_cmp8(i64 %cur_start.0, i64 %55)
  %cmp7.not.i = icmp uge i64 %cur_start.0, %55
  call void @__sanitizer_cov_trace_cmp8(i64 %cur_start.0, i64 %add6.i)
  %cmp9.i = icmp ult i64 %cur_start.0, %add6.i
  %spec.select.i = select i1 %cmp7.not.i, i1 %cmp9.i, i1 false
  br i1 %spec.select.i, label %cond.end19.i, label %cond.false18.i, !prof !99

cond.false18.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.30, i32 noundef 546) #15
  unreachable

cond.end19.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %55)
  %cmp20.i = icmp ugt i64 %add.i, %55
  br i1 %cmp20.i, label %cond.end30.i, label %cond.false29.i, !prof !99

cond.false29.i:                                   ; preds = %cond.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.31, i32 noundef 547) #15
  unreachable

cond.end30.i:                                     ; preds = %cond.end19.i
  %57 = call i64 @llvm.umin.i64(i64 %add.i, i64 %add6.i) #8
  %58 = ptrtoint ptr %slots.i158 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %slots.i158, align 4
  %mul.i.i.i.i160 = mul i32 %59, 25
  %add.i.i.i.i161 = add i32 %mul.i.i.i.i160, 101
  %60 = inttoptr i32 %add.i.i.i.i161 to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %45, ptr noundef %60, i32 noundef 17) #8
  %add35.i = add i32 %call.i.i.i, 101
  %sub.i = sub i64 %cur_start.0, %55
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %43, i32 0, i32 168
  %61 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sectorsize_bits.i, align 8
  %sh_prom.i = zext i32 %62 to i64
  %shr.i = lshr i64 %sub.i, %sh_prom.i
  %conv36.i = trunc i64 %shr.i to i32
  %sub37.i = sub i64 %57, %55
  %shr40.i = lshr i64 %sub37.i, %sh_prom.i
  %conv41.i = trunc i64 %shr40.i to i32
  %sub45.i = sub i32 %conv41.i, %conv36.i
  br i1 %tobool25.not, label %if.then43.i, label %if.else.i

if.then43.i:                                      ; preds = %cond.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @extent_buffer_bitmap_set(ptr noundef %45, i32 noundef %add35.i, i32 noundef %conv36.i, i32 noundef %sub45.i) #8
  br label %free_space_set_bits.exit

if.else.i:                                        ; preds = %cond.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @extent_buffer_bitmap_clear(ptr noundef %45, i32 noundef %add35.i, i32 noundef %conv36.i, i32 noundef %sub45.i) #8
  br label %free_space_set_bits.exit

free_space_set_bits.exit:                         ; preds = %if.else.i, %if.then43.i
  call void @btrfs_mark_buffer_dirty(ptr noundef %45) #8
  %sub47.neg.i = sub i64 %cur_start.0, %57
  %sub48.i = add i64 %sub47.neg.i, %cur_size.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub48.i)
  %cmp26 = icmp eq i64 %sub48.i, 0
  br i1 %cmp26, label %while.end, label %if.end29

if.end29:                                         ; preds = %free_space_set_bits.exit
  %call30 = call fastcc i32 @free_space_next_bitmap(ptr noundef %trans, ptr noundef %call.i, ptr noundef %path)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.while.cond_crit_edge, label %if.end29.cleanup80_crit_edge

if.end29.cleanup80_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

if.end29.while.cond_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %free_space_set_bits.exit
  %63 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %start1, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %65 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %length, align 8
  %add35 = add i64 %66, %64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add35)
  %cmp36 = icmp ult i64 %add, %add35
  br i1 %cmp36, label %if.then38, label %while.end.if.end56_crit_edge

while.end.if.end56_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then38:                                        ; preds = %while.end
  %67 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %path, align 4
  %69 = ptrtoint ptr %slots.i158 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %slots.i158, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i162) #8
  %71 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i162, i32 0, i32 1
  %72 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i162, i32 0, i32 2
  %mul.i.i.i.i163 = mul i32 %70, 25
  %add.i.i.i.i164 = add i32 %mul.i.i.i.i163, 101
  %73 = call ptr @memset(ptr %disk_key.i162, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %68, ptr noundef nonnull %disk_key.i162, i32 noundef %add.i.i.i.i164, i32 noundef 17) #8
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %72, align 1
  %76 = call i64 @llvm.bswap.i64(i64 %75) #8
  %77 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %76, ptr %4, align 1
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %71, align 8
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %3, align 8
  %81 = ptrtoint ptr %disk_key.i162 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %disk_key.i162, align 8
  %83 = call i64 @llvm.bswap.i64(i64 %82) #8
  %84 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i162) #8
  %add45 = add i64 %83, %76
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add45)
  %cmp46.not = icmp ult i64 %add, %add45
  br i1 %cmp46.not, label %if.then38.if.end53_crit_edge, label %if.then48

if.then38.if.end53_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then48:                                        ; preds = %if.then38
  %call49 = call fastcc i32 @free_space_next_bitmap(ptr noundef %trans, ptr noundef %call.i, ptr noundef %path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.if.end53_crit_edge, label %if.then48.cleanup80_crit_edge

if.then48.cleanup80_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end53:                                         ; preds = %if.then48.if.end53_crit_edge, %if.then38.if.end53_crit_edge
  %call54 = call i32 @free_space_test_bit(ptr noundef %block_group, ptr noundef %path, i64 noundef %add)
  br label %if.end56

if.end56:                                         ; preds = %if.end53, %while.end.if.end56_crit_edge
  %next_bit.0 = phi i32 [ %call54, %if.end53 ], [ -1, %while.end.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prev_bit.1)
  %cmp69 = icmp ne i32 %prev_bit.1, 1
  br i1 %tobool25.not, label %if.else68, label %if.then58

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select = sext i1 %cmp69 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %next_bit.0)
  %cmp63 = icmp eq i32 %next_bit.0, 1
  %not.cmp59 = xor i1 %cmp69, true
  %inc66 = zext i1 %not.cmp59 to i32
  %spec.select142 = select i1 %cmp63, i32 %inc66, i32 %spec.select
  br label %if.end78

if.else68:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select141 = zext i1 %cmp69 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %next_bit.0)
  %cmp73 = icmp eq i32 %next_bit.0, 1
  %not.cmp69 = xor i1 %cmp69, true
  %dec76 = sext i1 %not.cmp69 to i32
  %spec.select143 = select i1 %cmp73, i32 %dec76, i32 %spec.select141
  br label %if.end78

if.end78:                                         ; preds = %if.else68, %if.then58
  %new_extents.2 = phi i32 [ %spec.select142, %if.then58 ], [ %spec.select143, %if.else68 ]
  call void @btrfs_release_path(ptr noundef %path) #8
  %call79 = call fastcc i32 @update_free_space_extent_count(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path, i32 noundef %new_extents.2)
  br label %cleanup80

cleanup80:                                        ; preds = %if.end78, %if.then48.cleanup80_crit_edge, %if.end29.cleanup80_crit_edge, %if.else.cleanup80_crit_edge, %if.then11.cleanup80_crit_edge, %if.then.cleanup80_crit_edge
  %ret.2 = phi i32 [ %call49, %if.then48.cleanup80_crit_edge ], [ %call79, %if.end78 ], [ %call.i145, %if.else.cleanup80_crit_edge ], [ %call.i144, %if.then.cleanup80_crit_edge ], [ %call12, %if.then11.cleanup80_crit_edge ], [ %call30, %if.end29.cleanup80_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @remove_from_free_space_tree(ptr noundef %trans, i64 noundef %start, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 4
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %super_copy.i, align 8
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %compat_ro_flags.i.i, align 1
  %6 = and i64 %5, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @btrfs_alloc_path() #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %out.thread, label %if.end4

out.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_free_path(ptr noundef null) #8
  br label %do.body

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fs_info, align 4
  %call6 = tail call ptr @btrfs_lookup_block_group(ptr noundef %8, i64 noundef %start) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %out

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 843) #13
  unreachable

out:                                              ; preds = %if.end4
  %free_space_lock = getelementptr inbounds %struct.btrfs_block_group, ptr %call6, i32 0, i32 41
  tail call void @mutex_lock_nested(ptr noundef %free_space_lock, i32 noundef 0) #8
  %call10 = tail call i32 @__remove_from_free_space_tree(ptr noundef %trans, ptr noundef nonnull %call6, ptr noundef nonnull %call1, i64 noundef %start, i64 noundef %size)
  tail call void @mutex_unlock(ptr noundef %free_space_lock) #8
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call6) #8
  tail call void @btrfs_free_path(ptr noundef nonnull %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %out.cleanup_crit_edge, label %out.do.body_crit_edge

out.do.body_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %out.do.body_crit_edge, %out.thread
  %ret.081 = phi i32 [ -12, %out.thread ], [ %call10, %out.do.body_crit_edge ]
  %9 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %10, i32 0, i32 149
  %call15 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %do.body.if.end54_crit_edge

do.body.if.end54_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then17:                                        ; preds = %do.body
  %11 = zext i32 %ret.081 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %ret.081, label %do.end [
    i32 -5, label %if.then17.do.body38_crit_edge
    i32 -30, label %if.then17.do.body38_crit_edge84
  ]

if.then17.do.body38_crit_edge84:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

if.then17.do.body38_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 857, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %ret.081) #8
  br label %if.end54

do.body38:                                        ; preds = %if.then17.do.body38_crit_edge, %if.then17.do.body38_crit_edge84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_from_free_space_tree.__UNIQUE_ID_ddebug936, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_from_free_space_tree, %if.then48)) #8
          to label %if.end54 [label %if.then48], !srcloc !104

if.then48:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs_info, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %13, ptr noundef nonnull @.str.14, i32 noundef %ret.081) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %do.body38, %do.end, %do.body.if.end54_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.19, i32 noundef 857, i32 noundef %ret.081) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.081, %if.end54 ], [ 0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lookup_block_group(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_block_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__add_to_free_space_tree(ptr noundef %trans, ptr nocapture noundef %block_group, ptr noundef %path, i64 noundef %start, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i.i = alloca i32, align 4
  %batch.i.i = alloca %struct.btrfs_item_batch, align 4
  %disk_key.i241.i = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  %key.i.i = alloca %struct.btrfs_key, align 1
  %key.i = alloca %struct.btrfs_key, align 8
  %new_key.i = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %needs_free_space = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 42
  %0 = ptrtoint ptr %needs_free_space to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %needs_free_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %needs_free_space to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %needs_free_space, align 4
  %call.i = tail call fastcc i32 @add_new_free_space_info(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__add_block_group_free_space.exit, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__add_block_group_free_space.exit:                ; preds = %if.then
  %start.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %3 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start.i, align 8
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %length.i, align 8
  %call1.i = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path, i64 noundef %4, i64 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool1.not = icmp eq i32 %call1.i, 0
  br i1 %tobool1.not, label %__add_block_group_free_space.exit.if.end3_crit_edge, label %__add_block_group_free_space.exit.cleanup_crit_edge

__add_block_group_free_space.exit.cleanup_crit_edge: ; preds = %__add_block_group_free_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__add_block_group_free_space.exit.if.end3_crit_edge: ; preds = %__add_block_group_free_space.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %__add_block_group_free_space.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call ptr @search_free_space_info(ptr noundef null, ptr noundef %block_group, ptr noundef %path, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %path, align 4
  %call.i32 = tail call i32 @btrfs_get_32(ptr noundef %9, ptr noundef %call4, i32 noundef 4) #8
  tail call void @btrfs_release_path(ptr noundef %path) #8
  %10 = and i32 %call.i32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call fastcc i32 @modify_free_space_bitmap(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path, i64 noundef %start, i64 noundef %size, i32 noundef 0)
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i.i) #8
  %11 = call ptr @memcpy(ptr %key.i.i, ptr @__const.btrfs_free_space_root.key, i32 17)
  %12 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %block_group, align 8
  %call.i.i = call ptr @btrfs_global_root(ptr noundef %13, ptr noundef nonnull %key.i.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i) #8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %14 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %16 = call ptr @memset(ptr %key.i, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %new_key.i) #8
  %17 = getelementptr inbounds %struct.btrfs_key, ptr %new_key.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.btrfs_key, ptr %new_key.i, i32 0, i32 2
  %add.i = add i64 %size, %start
  %19 = ptrtoint ptr %new_key.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %start, ptr %new_key.i, align 8
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -57, ptr %17, align 8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %size, ptr %18, align 1
  %start1.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %22 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %start1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %start)
  %cmp.i33 = icmp eq i64 %23, %start
  br i1 %cmp.i33, label %if.else.right.i_crit_edge, label %if.end.i34

if.else.right.i_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %right.i

if.end.i34:                                       ; preds = %if.else
  %sub.i = add i64 %start, -1
  %24 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %sub.i, ptr %key.i, align 8
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %14, align 8
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 -1, ptr %15, align 1
  %call.i225.i = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %call.i.i, ptr noundef nonnull %key.i, ptr noundef %path, i32 noundef -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225.i)
  %cmp.i.i = icmp slt i32 %call.i225.i, 0
  br i1 %cmp.i.i, label %if.end.i34.add_free_space_extent.exit_crit_edge, label %if.end.i.i

if.end.i34.add_free_space_extent.exit_crit_edge:  ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_free_space_extent.exit

if.end.i.i:                                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225.i)
  %cmp1.i.i = icmp eq i32 %call.i225.i, 0
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 138) #15
  unreachable

if.end3.i.i:                                      ; preds = %if.end.i.i
  %slots.i.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %27 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slots.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp4.i.i = icmp eq i32 %28, 0
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end7.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 143) #15
  unreachable

if.end7.i:                                        ; preds = %if.end3.i.i
  %dec.i.i = add i32 %28, -1
  %29 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dec.i.i, ptr %slots.i.i, align 4
  %30 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #8
  %32 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 1
  %33 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  %mul.i.i.i.i.i = mul i32 %dec.i.i, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %34 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %31, ptr noundef nonnull %disk_key.i.i, i32 noundef %add.i.i.i.i.i, i32 noundef 17) #8
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %33, align 1
  %37 = call i64 @llvm.bswap.i64(i64 %36) #8
  %38 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %37, ptr %15, align 1
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %32, align 8
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %14, align 8
  %42 = ptrtoint ptr %disk_key.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %disk_key.i.i, align 8
  %44 = call i64 @llvm.bswap.i64(i64 %43) #8
  %45 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #8
  %46 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %40, label %cond.false.i [
    i8 -57, label %if.end19.i
    i8 -58, label %if.end7.i.right.sink.split.i_crit_edge
  ], !prof !106

if.end7.i.right.sink.split.i_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %right.sink.split.i

cond.false.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.34, i32 noundef 909) #15
  unreachable

if.end19.i:                                       ; preds = %if.end7.i
  %add23.i = add i64 %44, %37
  %47 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %start1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %48)
  %cmp25.not.i = icmp uge i64 %44, %48
  call void @__sanitizer_cov_trace_cmp8(i64 %add23.i, i64 %48)
  %cmp28.i = icmp ugt i64 %add23.i, %48
  %spec.select.i = select i1 %cmp25.not.i, i1 %cmp28.i, i1 false
  br i1 %spec.select.i, label %cond.end38.i, label %cond.false37.i, !prof !99

cond.false37.i:                                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.35, i32 noundef 917) #15
  unreachable

cond.end38.i:                                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %start)
  %cmp39.i = icmp ult i64 %44, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %add23.i, i64 %start)
  %cmp42.i = icmp ule i64 %add23.i, %start
  %spec.select222.i = select i1 %cmp39.i, i1 %cmp42.i, i1 false, !prof !99
  br i1 %spec.select222.i, label %cond.end53.i, label %cond.false52.i, !prof !99

cond.false52.i:                                   ; preds = %cond.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.36, i32 noundef 918) #15
  unreachable

cond.end53.i:                                     ; preds = %cond.end38.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add23.i, i64 %start)
  %cmp54.i = icmp eq i64 %add23.i, %start
  br i1 %cmp54.i, label %if.then56.i, label %cond.end53.i.right.sink.split.i_crit_edge

cond.end53.i.right.sink.split.i_crit_edge:        ; preds = %cond.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %right.sink.split.i

if.then56.i:                                      ; preds = %cond.end53.i
  %49 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %slots.i.i, align 4
  %call.i227.i = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %call.i.i, ptr noundef %path, i32 noundef %50, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227.i)
  %tobool58.not.i = icmp eq i32 %call.i227.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.then56.i.add_free_space_extent.exit_crit_edge

if.then56.i.add_free_space_extent.exit_crit_edge: ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_free_space_extent.exit

if.end60.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %new_key.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %44, ptr %new_key.i, align 8
  %52 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %15, align 1
  %54 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %18, align 1
  %add64.i = add i64 %55, %53
  store i64 %add64.i, ptr %18, align 1
  br label %right.sink.split.i

right.sink.split.i:                               ; preds = %if.end60.i, %cond.end53.i.right.sink.split.i_crit_edge, %if.end7.i.right.sink.split.i_crit_edge
  %new_extents.1.ph.i = phi i32 [ 1, %if.end7.i.right.sink.split.i_crit_edge ], [ 0, %if.end60.i ], [ 1, %cond.end53.i.right.sink.split.i_crit_edge ]
  call void @btrfs_release_path(ptr noundef %path) #8
  br label %right.i

right.i:                                          ; preds = %right.sink.split.i, %if.else.right.i_crit_edge
  %new_extents.1.i = phi i32 [ 1, %if.else.right.i_crit_edge ], [ %new_extents.1.ph.i, %right.sink.split.i ]
  %56 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %start1.i, align 8
  %length.i35 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %58 = ptrtoint ptr %length.i35 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %length.i35, align 8
  %add67.i = add i64 %59, %57
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add67.i)
  %cmp68.i = icmp eq i64 %add.i, %add67.i
  br i1 %cmp68.i, label %right.i.insert.i_crit_edge, label %if.end71.i

right.i.insert.i_crit_edge:                       ; preds = %right.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %insert.i

if.end71.i:                                       ; preds = %right.i
  %60 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add.i, ptr %key.i, align 8
  %61 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %14, align 8
  %62 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 -1, ptr %15, align 1
  %call.i228.i = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %call.i.i, ptr noundef nonnull %key.i, ptr noundef %path, i32 noundef -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228.i)
  %cmp.i229.i = icmp slt i32 %call.i228.i, 0
  br i1 %cmp.i229.i, label %if.end71.i.add_free_space_extent.exit_crit_edge, label %if.end.i231.i

if.end71.i.add_free_space_extent.exit_crit_edge:  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_free_space_extent.exit

if.end.i231.i:                                    ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228.i)
  %cmp1.i230.i = icmp eq i32 %call.i228.i, 0
  br i1 %cmp1.i230.i, label %if.then2.i232.i, label %if.end3.i235.i

if.then2.i232.i:                                  ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 138) #15
  unreachable

if.end3.i235.i:                                   ; preds = %if.end.i231.i
  %slots.i233.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %63 = ptrtoint ptr %slots.i233.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %slots.i233.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp4.i234.i = icmp eq i32 %64, 0
  br i1 %cmp4.i234.i, label %if.then5.i236.i, label %if.end78.i

if.then5.i236.i:                                  ; preds = %if.end3.i235.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 143) #15
  unreachable

if.end78.i:                                       ; preds = %if.end3.i235.i
  %dec.i237.i = add i32 %64, -1
  %65 = ptrtoint ptr %slots.i233.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %dec.i237.i, ptr %slots.i233.i, align 4
  %66 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i241.i) #8
  %68 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i241.i, i32 0, i32 1
  %69 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i241.i, i32 0, i32 2
  %mul.i.i.i.i242.i = mul i32 %dec.i237.i, 25
  %add.i.i.i.i243.i = add i32 %mul.i.i.i.i242.i, 101
  %70 = call ptr @memset(ptr %disk_key.i241.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %67, ptr noundef nonnull %disk_key.i241.i, i32 noundef %add.i.i.i.i243.i, i32 noundef 17) #8
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %72 = load i64, ptr %69, align 1
  %73 = call i64 @llvm.bswap.i64(i64 %72) #8
  %74 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 %73, ptr %15, align 1
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %68, align 8
  %77 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %14, align 8
  %78 = ptrtoint ptr %disk_key.i241.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %disk_key.i241.i, align 8
  %80 = call i64 @llvm.bswap.i64(i64 %79) #8
  %81 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i241.i) #8
  %82 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %76, label %cond.false99.i [
    i8 -57, label %if.end101.i
    i8 -58, label %if.end78.i.insert.sink.split.i_crit_edge
  ], !prof !106

if.end78.i.insert.sink.split.i_crit_edge:         ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %insert.sink.split.i

cond.false99.i:                                   ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.34, i32 noundef 949) #15
  unreachable

if.end101.i:                                      ; preds = %if.end78.i
  %add105.i = add i64 %80, %73
  %83 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %start1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %84)
  %cmp107.not.i = icmp uge i64 %80, %84
  call void @__sanitizer_cov_trace_cmp8(i64 %add105.i, i64 %84)
  %cmp111.i = icmp ugt i64 %add105.i, %84
  %spec.select223.i = select i1 %cmp107.not.i, i1 %cmp111.i, i1 false
  br i1 %spec.select223.i, label %cond.end122.i, label %cond.false121.i, !prof !99

cond.false121.i:                                  ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.35, i32 noundef 957) #15
  unreachable

cond.end122.i:                                    ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %start)
  %cmp123.i = icmp uge i64 %80, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %add105.i, i64 %start)
  %cmp125.not.i = icmp ugt i64 %add105.i, %start
  %or.cond.i = select i1 %cmp123.i, i1 true, i1 %cmp125.not.i
  br i1 %or.cond.i, label %lor.rhs.i, label %cond.end122.i.cond.end141.i_crit_edge

cond.end122.i.cond.end141.i_crit_edge:            ; preds = %cond.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end141.i

lor.rhs.i:                                        ; preds = %cond.end122.i
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %add.i)
  %cmp127.not.i = icmp uge i64 %80, %add.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add105.i, i64 %add.i)
  %cmp130.i = icmp ugt i64 %add105.i, %add.i
  %spec.select224.i = select i1 %cmp127.not.i, i1 %cmp130.i, i1 false
  br i1 %spec.select224.i, label %lor.rhs.i.cond.end141.i_crit_edge, label %cond.false140.i, !prof !99

lor.rhs.i.cond.end141.i_crit_edge:                ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end141.i

cond.false140.i:                                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.37, i32 noundef 959) #15
  unreachable

cond.end141.i:                                    ; preds = %lor.rhs.i.cond.end141.i_crit_edge, %cond.end122.i.cond.end141.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %add.i)
  %cmp142.i = icmp eq i64 %80, %add.i
  br i1 %cmp142.i, label %if.then144.i, label %cond.end141.i.insert.sink.split.i_crit_edge

cond.end141.i.insert.sink.split.i_crit_edge:      ; preds = %cond.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %insert.sink.split.i

if.then144.i:                                     ; preds = %cond.end141.i
  %85 = ptrtoint ptr %slots.i233.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %slots.i233.i, align 4
  %call.i247.i = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %call.i.i, ptr noundef %path, i32 noundef %86, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i247.i)
  %tobool146.not.i = icmp eq i32 %call.i247.i, 0
  br i1 %tobool146.not.i, label %if.end148.i, label %if.then144.i.add_free_space_extent.exit_crit_edge

if.then144.i.add_free_space_extent.exit_crit_edge: ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_free_space_extent.exit

if.end148.i:                                      ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %88 = load i64, ptr %15, align 1
  %89 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 8)
  %90 = load i64, ptr %18, align 1
  %add151.i = add i64 %90, %88
  store i64 %add151.i, ptr %18, align 1
  %dec152.i = add nsw i32 %new_extents.1.i, -1
  br label %insert.sink.split.i

insert.sink.split.i:                              ; preds = %if.end148.i, %cond.end141.i.insert.sink.split.i_crit_edge, %if.end78.i.insert.sink.split.i_crit_edge
  %new_extents.3.ph.i = phi i32 [ %new_extents.1.i, %if.end78.i.insert.sink.split.i_crit_edge ], [ %dec152.i, %if.end148.i ], [ %new_extents.1.i, %cond.end141.i.insert.sink.split.i_crit_edge ]
  call void @btrfs_release_path(ptr noundef %path) #8
  br label %insert.i

insert.i:                                         ; preds = %insert.sink.split.i, %right.i.insert.i_crit_edge
  %new_extents.3.i = phi i32 [ %new_extents.1.i, %right.i.insert.i_crit_edge ], [ %new_extents.3.ph.i, %insert.sink.split.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i.i) #8
  %91 = ptrtoint ptr %data_size.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %data_size.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i.i) #8
  %92 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 1
  %93 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 2
  %94 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %batch.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %new_key.i, ptr %batch.i.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %data_size.addr.i.i, ptr %92, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %93, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %94, align 4
  %call.i248.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %call.i.i, ptr noundef %path, ptr noundef nonnull %batch.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248.i)
  %tobool155.not.i = icmp eq i32 %call.i248.i, 0
  br i1 %tobool155.not.i, label %if.end157.i, label %insert.i.add_free_space_extent.exit_crit_edge

insert.i.add_free_space_extent.exit_crit_edge:    ; preds = %insert.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_free_space_extent.exit

if.end157.i:                                      ; preds = %insert.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @btrfs_release_path(ptr noundef %path) #8
  %call158.i = call fastcc i32 @update_free_space_extent_count(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path, i32 noundef %new_extents.3.i) #8
  br label %add_free_space_extent.exit

add_free_space_extent.exit:                       ; preds = %if.end157.i, %insert.i.add_free_space_extent.exit_crit_edge, %if.then144.i.add_free_space_extent.exit_crit_edge, %if.end71.i.add_free_space_extent.exit_crit_edge, %if.then56.i.add_free_space_extent.exit_crit_edge, %if.end.i34.add_free_space_extent.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i248.i, %insert.i.add_free_space_extent.exit_crit_edge ], [ %call158.i, %if.end157.i ], [ %call.i247.i, %if.then144.i.add_free_space_extent.exit_crit_edge ], [ %call.i227.i, %if.then56.i.add_free_space_extent.exit_crit_edge ], [ %call.i225.i, %if.end.i34.add_free_space_extent.exit_crit_edge ], [ %call.i228.i, %if.end71.i.add_free_space_extent.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %new_key.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  br label %cleanup

cleanup:                                          ; preds = %add_free_space_extent.exit, %if.then11, %if.then6, %__add_block_group_free_space.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then6 ], [ %call12, %if.then11 ], [ %ret.0.i, %add_free_space_extent.exit ], [ %call1.i, %__add_block_group_free_space.exit.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_to_free_space_tree(ptr noundef %trans, i64 noundef %start, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 4
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %super_copy.i, align 8
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %compat_ro_flags.i.i, align 1
  %6 = and i64 %5, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @btrfs_alloc_path() #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %out.thread, label %if.end4

out.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_free_path(ptr noundef null) #8
  br label %do.body

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fs_info, align 4
  %call6 = tail call ptr @btrfs_lookup_block_group(ptr noundef %8, i64 noundef %start) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %out

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 1036) #13
  unreachable

out:                                              ; preds = %if.end4
  %free_space_lock = getelementptr inbounds %struct.btrfs_block_group, ptr %call6, i32 0, i32 41
  tail call void @mutex_lock_nested(ptr noundef %free_space_lock, i32 noundef 0) #8
  %call10 = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef nonnull %call6, ptr noundef nonnull %call1, i64 noundef %start, i64 noundef %size)
  tail call void @mutex_unlock(ptr noundef %free_space_lock) #8
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call6) #8
  tail call void @btrfs_free_path(ptr noundef nonnull %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %out.cleanup_crit_edge, label %out.do.body_crit_edge

out.do.body_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %out.do.body_crit_edge, %out.thread
  %ret.081 = phi i32 [ -12, %out.thread ], [ %call10, %out.do.body_crit_edge ]
  %9 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %10, i32 0, i32 149
  %call15 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %do.body.if.end54_crit_edge

do.body.if.end54_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then17:                                        ; preds = %do.body
  %11 = zext i32 %ret.081 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %ret.081, label %do.end [
    i32 -5, label %if.then17.do.body38_crit_edge
    i32 -30, label %if.then17.do.body38_crit_edge84
  ]

if.then17.do.body38_crit_edge84:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

if.then17.do.body38_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1049, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %ret.081) #8
  br label %if.end54

do.body38:                                        ; preds = %if.then17.do.body38_crit_edge, %if.then17.do.body38_crit_edge84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_to_free_space_tree.__UNIQUE_ID_ddebug937, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_to_free_space_tree, %if.then48)) #8
          to label %if.end54 [label %if.then48], !srcloc !104

if.then48:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs_info, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %13, ptr noundef nonnull @.str.14, i32 noundef %ret.081) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %do.body38, %do.end, %do.body.if.end54_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.20, i32 noundef 1049, i32 noundef %ret.081) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.081, %if.end54 ], [ 0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_create_free_space_tree(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  %key.i = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tree_root1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 2
  %0 = ptrtoint ptr %tree_root1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tree_root1, align 4
  %call = tail call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #8
  tail call void @_set_bit(i32 noundef 18, ptr noundef %flags) #8
  %call5 = tail call ptr @btrfs_create_tree(ptr noundef %call, i64 noundef 10) #8
  %cmp.i106 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call5 to i32
  br label %abort

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @btrfs_global_root_insert(ptr noundef %call5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_put_root(ptr noundef %call5) #8
  br label %abort

if.end12:                                         ; preds = %if.end9
  %block_group_cache_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 16
  %call13 = tail call ptr @rb_first(ptr noundef %block_group_cache_tree) #8
  %tobool14.not129 = icmp eq ptr %call13, null
  br i1 %tobool14.not129, label %if.end12.while.end_crit_edge, label %while.body.lr.ph

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end12
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %fs_info.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call, i32 0, i32 16
  %6 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.body.lr.ph
  %node.0130 = phi ptr [ %call13, %while.body.lr.ph ], [ %call19, %if.end18.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.0130, i32 -272
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %8 = call ptr @memset(ptr %key.i, i32 255, i32 17)
  %call.i = call ptr @btrfs_alloc_path() #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.populate_free_space_tree.exit.thread_crit_edge, label %if.end.i

while.body.populate_free_space_tree.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %populate_free_space_tree.exit.thread

if.end.i:                                         ; preds = %while.body
  %reada.i = getelementptr inbounds %struct.btrfs_path, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %reada.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %reada.i, align 4
  %call1.i = call ptr @btrfs_alloc_path() #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #8
  br label %populate_free_space_tree.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call fastcc i32 @add_new_free_space_info(ptr noundef %call, ptr noundef %add.ptr, ptr noundef nonnull %call1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.populate_free_space_tree.exit_crit_edge

if.end4.i.populate_free_space_tree.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %populate_free_space_tree.exit

if.end8.i:                                        ; preds = %if.end4.i
  %free_space_lock.i = getelementptr i8, ptr %node.0130, i32 152
  call void @mutex_lock_nested(ptr noundef %free_space_lock.i, i32 noundef 0) #8
  %start9.i = getelementptr i8, ptr %node.0130, i32 -216
  %10 = ptrtoint ptr %start9.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start9.i, align 8
  %12 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %key.i, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -88, ptr %4, align 8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %5, align 1
  %15 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fs_info.i, align 4
  %call11.i = call ptr @btrfs_extent_root(ptr noundef %16, i64 noundef %11) #8
  %call12.i = call i32 @btrfs_search_slot_for_read(ptr noundef %call11.i, ptr noundef nonnull %key.i, ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i107 = icmp slt i32 %call12.i, 0
  br i1 %cmp.i107, label %if.end8.i.out_locked.i_crit_edge, label %if.end14.i

if.end8.i.out_locked.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_locked.i

if.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp15.i = icmp eq i32 %call12.i, 0
  br i1 %cmp15.i, label %cond.end.i, label %cond.false.i, !prof !99

cond.false.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.38, i32 noundef 1099) #15
  unreachable

cond.end.i:                                       ; preds = %if.end14.i
  %17 = ptrtoint ptr %start9.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start9.i, align 8
  %length.i = getelementptr i8, ptr %node.0130, i32 -208
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %length.i, align 8
  %add.i = add i64 %20, %18
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call.i, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end74.i.while.cond.i_crit_edge, %cond.end.i
  %start.0.i = phi i64 [ %18, %cond.end.i ], [ %start.1.i, %if.end74.i.while.cond.i_crit_edge ]
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %23 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slots.i, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #8
  %mul.i.i.i.i.i = mul i32 %24, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %25 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %22, ptr noundef nonnull %disk_key.i.i, i32 noundef %add.i.i.i.i.i, i32 noundef 17) #8
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %7, align 1
  %28 = call i64 @llvm.bswap.i64(i64 %27) #8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %5, align 1
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %6, align 8
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %4, align 8
  %33 = ptrtoint ptr %disk_key.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %disk_key.i.i, align 8
  %35 = call i64 @llvm.bswap.i64(i64 %34) #8
  %36 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #8
  %37 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %31, label %while.cond.i.if.end69.i_crit_edge [
    i8 -88, label %while.cond.i.if.then28.i_crit_edge
    i8 -87, label %while.cond.i.if.then28.i_crit_edge158
    i8 -64, label %if.then61.i
  ]

while.cond.i.if.then28.i_crit_edge158:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

while.cond.i.if.then28.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

while.cond.i.if.end69.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then28.i:                                      ; preds = %while.cond.i.if.then28.i_crit_edge, %while.cond.i.if.then28.i_crit_edge158
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %add.i)
  %cmp30.not.i = icmp ult i64 %35, %add.i
  br i1 %cmp30.not.i, label %if.end33.i, label %if.then28.i.while.end.i_crit_edge

if.then28.i.while.end.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end33.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %start.0.i)
  %cmp35.i = icmp ugt i64 %35, %start.0.i
  br i1 %cmp35.i, label %if.then37.i, label %if.end33.i.if.end43.i_crit_edge

if.end33.i.if.end43.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then37.i:                                      ; preds = %if.end33.i
  %sub.i = sub i64 %35, %start.0.i
  %call39.i = call i32 @__add_to_free_space_tree(ptr noundef %call, ptr noundef %add.ptr, ptr noundef nonnull %call1.i, i64 noundef %start.0.i, i64 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then37.i.if.end43.i_crit_edge, label %if.then37.i.out_locked.i_crit_edge

if.then37.i.out_locked.i_crit_edge:               ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_locked.i

if.then37.i.if.end43.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then37.i.if.end43.i_crit_edge, %if.end33.i.if.end43.i_crit_edge
  %38 = ptrtoint ptr %key.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %key.i, align 8
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -87, i8 %41)
  %cmp47.i = icmp eq i8 %41, -87
  br i1 %cmp47.i, label %if.then49.i, label %if.else.i

if.then49.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fs_info.i, align 4
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %43, i32 0, i32 166
  %44 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nodesize.i, align 8
  %conv51.i = zext i32 %45 to i64
  %add52.i = add i64 %39, %conv51.i
  br label %if.end69.i

if.else.i:                                        ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %5, align 1
  %add54.i = add i64 %47, %39
  br label %if.end69.i

if.then61.i:                                      ; preds = %while.cond.i
  %48 = ptrtoint ptr %start9.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %start9.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %49)
  %cmp64.not.i = icmp eq i64 %35, %49
  br i1 %cmp64.not.i, label %if.then61.i.if.end69.i_crit_edge, label %if.then61.i.while.end.i_crit_edge

if.then61.i.while.end.i_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.then61.i.if.end69.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then61.i.if.end69.i_crit_edge, %if.else.i, %if.then49.i, %while.cond.i.if.end69.i_crit_edge
  %start.1.i = phi i64 [ %add52.i, %if.then49.i ], [ %add54.i, %if.else.i ], [ %start.0.i, %if.then61.i.if.end69.i_crit_edge ], [ %start.0.i, %while.cond.i.if.end69.i_crit_edge ]
  %50 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %slots.i, align 4
  %inc.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i, ptr %slots.i, align 4
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %pages.i.i.i.i = getelementptr inbounds %struct.extent_buffer, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %pages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pages.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @page_address(ptr noundef %55) #8
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %53, align 8
  %conv.i.i.i.i = trunc i64 %57 to i32
  %and.i.i.i.i = and i32 %conv.i.i.i.i, 4095
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %and.i.i.i.i
  %nritems.i.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i.i, i32 0, i32 7
  %58 = ptrtoint ptr %nritems.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %nritems.i.i.i.i, align 1
  %60 = call i32 @llvm.bswap.i32(i32 %59) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %60)
  %cmp.not.i.i.i = icmp ult i32 %inc.i.i.i, %60
  br i1 %cmp.not.i.i.i, label %if.end69.i.if.end74.i_crit_edge, label %btrfs_next_item.exit.i

if.end69.i.if.end74.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

btrfs_next_item.exit.i:                           ; preds = %if.end69.i
  %call4.i.i.i = call i32 @btrfs_next_old_leaf(ptr noundef %call11.i, ptr noundef nonnull %call.i, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp71.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp71.i, label %btrfs_next_item.exit.i.out_locked.i_crit_edge, label %btrfs_next_item.exit.i.if.end74.i_crit_edge

btrfs_next_item.exit.i.if.end74.i_crit_edge:      ; preds = %btrfs_next_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

btrfs_next_item.exit.i.out_locked.i_crit_edge:    ; preds = %btrfs_next_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_locked.i

if.end74.i:                                       ; preds = %btrfs_next_item.exit.i.if.end74.i_crit_edge, %if.end69.i.if.end74.i_crit_edge
  %retval.0.i.i137.i = phi i32 [ %call4.i.i.i, %btrfs_next_item.exit.i.if.end74.i_crit_edge ], [ 0, %if.end69.i.if.end74.i_crit_edge ]
  %tobool75.not.i = icmp eq i32 %retval.0.i.i137.i, 0
  br i1 %tobool75.not.i, label %if.end74.i.while.cond.i_crit_edge, label %if.end74.i.while.end.i_crit_edge

if.end74.i.while.end.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end74.i.while.cond.i_crit_edge:                ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %if.end74.i.while.end.i_crit_edge, %if.then61.i.while.end.i_crit_edge, %if.then28.i.while.end.i_crit_edge
  %start.2.i = phi i64 [ %start.0.i, %if.then28.i.while.end.i_crit_edge ], [ %start.1.i, %if.end74.i.while.end.i_crit_edge ], [ %start.0.i, %if.then61.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %start.2.i)
  %cmp78.i = icmp ugt i64 %add.i, %start.2.i
  br i1 %cmp78.i, label %if.then80.i, label %while.end.i.if.end86.i_crit_edge

while.end.i.if.end86.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86.i

if.then80.i:                                      ; preds = %while.end.i
  %sub81.i = sub i64 %add.i, %start.2.i
  %call82.i = call i32 @__add_to_free_space_tree(ptr noundef %call, ptr noundef %add.ptr, ptr noundef nonnull %call1.i, i64 noundef %start.2.i, i64 noundef %sub81.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.then80.i.if.end86.i_crit_edge, label %if.then80.i.out_locked.i_crit_edge

if.then80.i.out_locked.i_crit_edge:               ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_locked.i

if.then80.i.if.end86.i_crit_edge:                 ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then80.i.if.end86.i_crit_edge, %while.end.i.if.end86.i_crit_edge
  br label %out_locked.i

out_locked.i:                                     ; preds = %if.end86.i, %if.then80.i.out_locked.i_crit_edge, %btrfs_next_item.exit.i.out_locked.i_crit_edge, %if.then37.i.out_locked.i_crit_edge, %if.end8.i.out_locked.i_crit_edge
  %ret.0.i = phi i32 [ %call12.i, %if.end8.i.out_locked.i_crit_edge ], [ %call82.i, %if.then80.i.out_locked.i_crit_edge ], [ 0, %if.end86.i ], [ %call39.i, %if.then37.i.out_locked.i_crit_edge ], [ %call4.i.i.i, %btrfs_next_item.exit.i.out_locked.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %free_space_lock.i) #8
  br label %populate_free_space_tree.exit

populate_free_space_tree.exit.thread:             ; preds = %if.then3.i, %while.body.populate_free_space_tree.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  br label %abort

populate_free_space_tree.exit:                    ; preds = %out_locked.i, %if.end4.i.populate_free_space_tree.exit_crit_edge
  %ret.1.i = phi i32 [ %call5.i, %if.end4.i.populate_free_space_tree.exit_crit_edge ], [ %ret.0.i, %out_locked.i ]
  call void @btrfs_free_path(ptr noundef nonnull %call1.i) #8
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool16.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool16.not, label %if.end18, label %populate_free_space_tree.exit.abort_crit_edge

populate_free_space_tree.exit.abort_crit_edge:    ; preds = %populate_free_space_tree.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end18:                                         ; preds = %populate_free_space_tree.exit
  %call19 = call ptr @rb_next(ptr noundef nonnull %node.0130) #8
  %tobool14.not = icmp eq ptr %call19, null
  br i1 %tobool14.not, label %if.end18.while.end_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %if.end12.while.end_crit_edge
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  %61 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %super_copy.i, align 8
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %62, i32 0, i32 21
  %63 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %compat_ro_flags.i.i, align 1
  %65 = and i64 %64, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %tobool.not.i109 = icmp eq i64 %65, 0
  br i1 %tobool.not.i109, label %if.then.i, label %while.end.__btrfs_set_fs_compat_ro.exit_crit_edge

while.end.__btrfs_set_fs_compat_ro.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__btrfs_set_fs_compat_ro.exit

if.then.i:                                        ; preds = %while.end
  %super_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 42
  call void @_raw_spin_lock(ptr noundef %super_lock.i) #8
  %66 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %compat_ro_flags.i.i, align 1
  %68 = call i64 @llvm.bswap.i64(i64 %67) #8
  %and2.i = and i64 %68, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.if.end.i110_crit_edge

if.then.i.if.end.i110_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i110

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i64 %68, 1
  %69 = call i64 @llvm.bswap.i64(i64 %or.i) #8
  %70 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 %69, ptr %compat_ro_flags.i.i, align 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.21, i64 noundef 1) #11
  br label %if.end.i110

if.end.i110:                                      ; preds = %if.then4.i, %if.then.i.if.end.i110_crit_edge
  call void @_raw_spin_unlock(ptr noundef %super_lock.i) #8
  br label %__btrfs_set_fs_compat_ro.exit

__btrfs_set_fs_compat_ro.exit:                    ; preds = %if.end.i110, %while.end.__btrfs_set_fs_compat_ro.exit_crit_edge
  %71 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %super_copy.i, align 8
  %compat_ro_flags.i.i112 = getelementptr inbounds %struct.btrfs_super_block, ptr %72, i32 0, i32 21
  %73 = ptrtoint ptr %compat_ro_flags.i.i112 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %compat_ro_flags.i.i112, align 1
  %75 = and i64 %74, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %tobool.not.i114 = icmp eq i64 %75, 0
  br i1 %tobool.not.i114, label %if.then.i118, label %__btrfs_set_fs_compat_ro.exit.__btrfs_set_fs_compat_ro.exit122_crit_edge

__btrfs_set_fs_compat_ro.exit.__btrfs_set_fs_compat_ro.exit122_crit_edge: ; preds = %__btrfs_set_fs_compat_ro.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__btrfs_set_fs_compat_ro.exit122

if.then.i118:                                     ; preds = %__btrfs_set_fs_compat_ro.exit
  %super_lock.i115 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 42
  call void @_raw_spin_lock(ptr noundef %super_lock.i115) #8
  %76 = ptrtoint ptr %compat_ro_flags.i.i112 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %77 = load i64, ptr %compat_ro_flags.i.i112, align 1
  %78 = call i64 @llvm.bswap.i64(i64 %77) #8
  %and2.i116 = and i64 %78, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i116)
  %tobool3.not.i117 = icmp eq i64 %and2.i116, 0
  br i1 %tobool3.not.i117, label %if.then4.i120, label %if.then.i118.if.end.i121_crit_edge

if.then.i118.if.end.i121_crit_edge:               ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i121

if.then4.i120:                                    ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #10
  %or.i119 = or i64 %78, 2
  %79 = call i64 @llvm.bswap.i64(i64 %or.i119) #8
  %80 = ptrtoint ptr %compat_ro_flags.i.i112 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %79, ptr %compat_ro_flags.i.i112, align 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.22, i64 noundef 2) #11
  br label %if.end.i121

if.end.i121:                                      ; preds = %if.then4.i120, %if.then.i118.if.end.i121_crit_edge
  call void @_raw_spin_unlock(ptr noundef %super_lock.i115) #8
  br label %__btrfs_set_fs_compat_ro.exit122

__btrfs_set_fs_compat_ro.exit122:                 ; preds = %if.end.i121, %__btrfs_set_fs_compat_ro.exit.__btrfs_set_fs_compat_ro.exit122_crit_edge
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #8
  %call21 = call i32 @btrfs_commit_transaction(ptr noundef %call) #8
  call void @_clear_bit(i32 noundef 18, ptr noundef %flags) #8
  br label %cleanup

abort:                                            ; preds = %populate_free_space_tree.exit.abort_crit_edge, %populate_free_space_tree.exit.thread, %if.then11, %if.then7
  %ret.0 = phi i32 [ %3, %if.then7 ], [ %call10, %if.then11 ], [ -12, %populate_free_space_tree.exit.thread ], [ %ret.1.i, %populate_free_space_tree.exit.abort_crit_edge ]
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #8
  call void @_clear_bit(i32 noundef 18, ptr noundef %flags) #8
  %fs_info25 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call, i32 0, i32 16
  %81 = ptrtoint ptr %fs_info25 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fs_info25, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %82, i32 0, i32 149
  %call26 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %abort.if.end66_crit_edge

abort.if.end66_crit_edge:                         ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then28:                                        ; preds = %abort
  %83 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %ret.0, label %do.end [
    i32 -5, label %if.then28.do.body50_crit_edge
    i32 -30, label %if.then28.do.body50_crit_edge159
  ]

if.then28.do.body50_crit_edge159:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

if.then28.do.body50_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

do.end:                                           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1204, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %ret.0) #8
  br label %if.end66

do.body50:                                        ; preds = %if.then28.do.body50_crit_edge, %if.then28.do.body50_crit_edge159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_create_free_space_tree.__UNIQUE_ID_ddebug938, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_create_free_space_tree, %if.then60)) #8
          to label %if.end66 [label %if.then60], !srcloc !104

if.then60:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %fs_info25 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fs_info25, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %85, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #11
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %do.body50, %do.end, %abort.if.end66_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %call, ptr noundef nonnull @.str.23, i32 noundef 1204, i32 noundef %ret.0) #11
  %call69 = call i32 @btrfs_end_transaction(ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %__btrfs_set_fs_compat_ro.exit122, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %ret.0, %if.end66 ], [ %call21, %__btrfs_set_fs_compat_ro.exit122 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_start_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_create_tree(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_global_root_insert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_commit_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_clear_free_space_tree(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.btrfs_key, align 8
  %key = alloca %struct.btrfs_key, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tree_root1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 2
  %0 = ptrtoint ptr %tree_root1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tree_root1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %2 = call ptr @memcpy(ptr %key, ptr @__const.btrfs_free_space_root.key, i32 17)
  %call = call ptr @btrfs_global_root(ptr noundef %fs_info, ptr noundef nonnull %key) #8
  %call2 = call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  %4 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %super_copy.i, align 8
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %compat_ro_flags.i.i, align 1
  %8 = and i64 %7, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i, label %if.end.__btrfs_clear_fs_compat_ro.exit_crit_edge, label %if.then.i

if.end.__btrfs_clear_fs_compat_ro.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__btrfs_clear_fs_compat_ro.exit

if.then.i:                                        ; preds = %if.end
  %super_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 42
  call void @_raw_spin_lock(ptr noundef %super_lock.i) #8
  %9 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %compat_ro_flags.i.i, align 1
  %11 = call i64 @llvm.bswap.i64(i64 %10) #8
  %and2.i = and i64 %11, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i = and i64 %11, -2
  %12 = call i64 @llvm.bswap.i64(i64 %and5.i) #8
  %13 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %compat_ro_flags.i.i, align 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.21, i64 noundef 1) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %super_lock.i) #8
  br label %__btrfs_clear_fs_compat_ro.exit

__btrfs_clear_fs_compat_ro.exit:                  ; preds = %if.end.i, %if.end.__btrfs_clear_fs_compat_ro.exit_crit_edge
  %14 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %super_copy.i, align 8
  %compat_ro_flags.i.i95 = getelementptr inbounds %struct.btrfs_super_block, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %compat_ro_flags.i.i95 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %compat_ro_flags.i.i95, align 1
  %18 = and i64 %17, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not.i97 = icmp eq i64 %18, 0
  br i1 %tobool.not.i97, label %__btrfs_clear_fs_compat_ro.exit.__btrfs_clear_fs_compat_ro.exit105_crit_edge, label %if.then.i101

__btrfs_clear_fs_compat_ro.exit.__btrfs_clear_fs_compat_ro.exit105_crit_edge: ; preds = %__btrfs_clear_fs_compat_ro.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__btrfs_clear_fs_compat_ro.exit105

if.then.i101:                                     ; preds = %__btrfs_clear_fs_compat_ro.exit
  %super_lock.i98 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 42
  call void @_raw_spin_lock(ptr noundef %super_lock.i98) #8
  %19 = ptrtoint ptr %compat_ro_flags.i.i95 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %compat_ro_flags.i.i95, align 1
  %21 = call i64 @llvm.bswap.i64(i64 %20) #8
  %and2.i99 = and i64 %21, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i99)
  %tobool3.not.i100 = icmp eq i64 %and2.i99, 0
  br i1 %tobool3.not.i100, label %if.then.i101.if.end.i104_crit_edge, label %if.then4.i103

if.then.i101.if.end.i104_crit_edge:               ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i104

if.then4.i103:                                    ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i102 = and i64 %21, -3
  %22 = call i64 @llvm.bswap.i64(i64 %and5.i102) #8
  %23 = ptrtoint ptr %compat_ro_flags.i.i95 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %compat_ro_flags.i.i95, align 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.22, i64 noundef 2) #11
  br label %if.end.i104

if.end.i104:                                      ; preds = %if.then4.i103, %if.then.i101.if.end.i104_crit_edge
  call void @_raw_spin_unlock(ptr noundef %super_lock.i98) #8
  br label %__btrfs_clear_fs_compat_ro.exit105

__btrfs_clear_fs_compat_ro.exit105:               ; preds = %if.end.i104, %__btrfs_clear_fs_compat_ro.exit.__btrfs_clear_fs_compat_ro.exit105_crit_edge
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %call.i = call ptr @btrfs_alloc_path() #8
  %tobool.not.i106 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i106, label %clear_free_space_tree.exit.thread, label %if.end.i107

clear_free_space_tree.exit.thread:                ; preds = %__btrfs_clear_fs_compat_ro.exit105
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  br label %do.body

if.end.i107:                                      ; preds = %__btrfs_clear_fs_compat_ro.exit105
  %24 = call ptr @memset(ptr %key.i, i32 0, i32 17)
  %call127.i = call i32 @btrfs_search_slot(ptr noundef %call2, ptr noundef %call, ptr noundef nonnull %key.i, ptr noundef nonnull %call.i, i32 noundef -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i)
  %cmp28.i = icmp slt i32 %call127.i, 0
  br i1 %cmp28.i, label %if.end.i107.clear_free_space_tree.exit.thread113_crit_edge, label %if.end3.lr.ph.i

if.end.i107.clear_free_space_tree.exit.thread113_crit_edge: ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_free_space_tree.exit.thread113

if.end3.lr.ph.i:                                  ; preds = %if.end.i107
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call.i, i32 0, i32 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end12.i.if.end3.i_crit_edge, %if.end3.lr.ph.i
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = call ptr @page_address(ptr noundef %28) #8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %26, align 8
  %conv.i.i = trunc i64 %30 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %nritems.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool5.not.i = icmp eq i32 %32, 0
  br i1 %tobool5.not.i, label %if.end7, label %if.end7.i

if.end7.i:                                        ; preds = %if.end3.i
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = ptrtoint ptr %slots.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %slots.i, align 4
  %call9.i = call i32 @btrfs_del_items(ptr noundef %call2, ptr noundef %call, ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end7.i.clear_free_space_tree.exit.thread113_crit_edge

if.end7.i.clear_free_space_tree.exit.thread113_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_free_space_tree.exit.thread113

if.end12.i:                                       ; preds = %if.end7.i
  call void @btrfs_release_path(ptr noundef nonnull %call.i) #8
  %call1.i = call i32 @btrfs_search_slot(ptr noundef %call2, ptr noundef %call, ptr noundef nonnull %key.i, ptr noundef nonnull %call.i, i32 noundef -1, i32 noundef 1) #8
  %cmp.i108 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i108, label %if.end12.i.clear_free_space_tree.exit.thread113_crit_edge, label %if.end12.i.if.end3.i_crit_edge

if.end12.i.if.end3.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end12.i.clear_free_space_tree.exit.thread113_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_free_space_tree.exit.thread113

clear_free_space_tree.exit.thread113:             ; preds = %if.end12.i.clear_free_space_tree.exit.thread113_crit_edge, %if.end7.i.clear_free_space_tree.exit.thread113_crit_edge, %if.end.i107.clear_free_space_tree.exit.thread113_crit_edge
  %ret.0.i.ph = phi i32 [ %call127.i, %if.end.i107.clear_free_space_tree.exit.thread113_crit_edge ], [ %call9.i, %if.end7.i.clear_free_space_tree.exit.thread113_crit_edge ], [ %call1.i, %if.end12.i.clear_free_space_tree.exit.thread113_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  br label %do.body

if.end7:                                          ; preds = %if.end3.i
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %call, i32 0, i32 7
  %call8 = call i32 @btrfs_del_root(ptr noundef %call2, ptr noundef %root_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.do.body_crit_edge

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end11:                                         ; preds = %if.end7
  call void @btrfs_global_root_delete(ptr noundef %call) #8
  %dirty_list = getelementptr inbounds %struct.btrfs_root, ptr %call, i32 0, i32 29
  %call.i.i110 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dirty_list) #8
  br i1 %call.i.i110, label %if.end.i.i, label %if.end11.list_del.exit_crit_edge

if.end11.list_del.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.btrfs_root, ptr %call, i32 0, i32 29, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dirty_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end11.list_del.exit_crit_edge
  %41 = ptrtoint ptr %dirty_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %dirty_list, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_root, ptr %call, i32 0, i32 29, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %node = getelementptr inbounds %struct.btrfs_root, ptr %call, i32 0, i32 1
  %43 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %node, align 4
  call void @btrfs_tree_lock(ptr noundef %44) #8
  %45 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %node, align 4
  call void @btrfs_clean_tree_block(ptr noundef %46) #8
  %47 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %node, align 4
  call void @btrfs_tree_unlock(ptr noundef %48) #8
  %49 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %root_key, align 1
  %51 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %node, align 4
  call void @btrfs_free_tree_block(ptr noundef %call2, i64 noundef %50, ptr noundef %52, i64 noundef 0, i32 noundef 1) #8
  call void @btrfs_put_root(ptr noundef %call) #8
  %call16 = call i32 @btrfs_commit_transaction(ptr noundef %call2) #8
  br label %cleanup

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %clear_free_space_tree.exit.thread113, %clear_free_space_tree.exit.thread
  %ret.0 = phi i32 [ %call8, %if.end7.do.body_crit_edge ], [ -12, %clear_free_space_tree.exit.thread ], [ %ret.0.i.ph, %clear_free_space_tree.exit.thread113 ]
  %fs_info17 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call2, i32 0, i32 16
  %53 = ptrtoint ptr %fs_info17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fs_info17, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %54, i32 0, i32 149
  %call18 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %do.body.if.end57_crit_edge

do.body.if.end57_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then20:                                        ; preds = %do.body
  %55 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %ret.0, label %do.end [
    i32 -5, label %if.then20.do.body41_crit_edge
    i32 -30, label %if.then20.do.body41_crit_edge117
  ]

if.then20.do.body41_crit_edge117:                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

if.then20.do.body41_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1289, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %ret.0) #8
  br label %if.end57

do.body41:                                        ; preds = %if.then20.do.body41_crit_edge, %if.then20.do.body41_crit_edge117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_clear_free_space_tree.__UNIQUE_ID_ddebug939, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_clear_free_space_tree, %if.then51)) #8
          to label %if.end57 [label %if.then51], !srcloc !104

if.then51:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %fs_info17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fs_info17, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %57, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #11
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %do.body41, %do.end, %do.body.if.end57_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %call2, ptr noundef nonnull @.str.24, i32 noundef 1289, i32 noundef %ret.0) #11
  %call60 = call i32 @btrfs_end_transaction(ptr noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %list_del.exit, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %ret.0, %if.end57 ], [ %call16, %list_del.exit ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_global_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_global_root_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_clean_tree_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_tree_block(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_block_group_free_space(ptr noundef %trans, ptr noundef %block_group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %super_copy.i, align 8
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %compat_ro_flags.i.i, align 1
  %6 = and i64 %5, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_space_lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 41
  tail call void @mutex_lock_nested(ptr noundef %free_space_lock, i32 noundef 0) #8
  %needs_free_space = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 42
  %7 = ptrtoint ptr %needs_free_space to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %needs_free_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @btrfs_alloc_path() #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %needs_free_space to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %needs_free_space, align 4
  %call.i = tail call fastcc i32 @add_new_free_space_info(ptr noundef %trans, ptr noundef %block_group, ptr noundef nonnull %call5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %start.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %10 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start.i, align 8
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %length.i, align 8
  %call1.i = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %block_group, ptr noundef nonnull %call5, i64 noundef %11, i64 noundef %13) #8
  br label %out

out:                                              ; preds = %if.end.i, %if.end8.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ -12, %if.end4.out_crit_edge ], [ %call1.i, %if.end.i ], [ %call.i, %if.end8.out_crit_edge ]
  %path.0 = phi ptr [ null, %if.end.out_crit_edge ], [ null, %if.end4.out_crit_edge ], [ %call5, %if.end.i ], [ %call5, %if.end8.out_crit_edge ]
  tail call void @btrfs_free_path(ptr noundef %path.0) #8
  tail call void @mutex_unlock(ptr noundef %free_space_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %out.cleanup_crit_edge, label %do.body

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %out
  %14 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %15, i32 0, i32 149
  %call14 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %do.body.if.end53_crit_edge

do.body.if.end53_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then16:                                        ; preds = %do.body
  %16 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %ret.0, label %do.end [
    i32 -5, label %if.then16.do.body37_crit_edge
    i32 -30, label %if.then16.do.body37_crit_edge77
  ]

if.then16.do.body37_crit_edge77:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body37

if.then16.do.body37_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body37

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1337, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %ret.0) #8
  br label %if.end53

do.body37:                                        ; preds = %if.then16.do.body37_crit_edge, %if.then16.do.body37_crit_edge77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_block_group_free_space.__UNIQUE_ID_ddebug940, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_block_group_free_space, %if.then47)) #8
          to label %if.end53 [label %if.then47], !srcloc !104

if.then47:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fs_info1, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %18, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %do.body37, %do.end, %do.body.if.end53_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.25, i32 noundef 1337, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.end53 ], [ 0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @remove_block_group_free_space(ptr noundef %trans, ptr nocapture noundef readonly %block_group) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key.i = alloca %struct.btrfs_key, align 1
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %0 = call ptr @memcpy(ptr %key.i, ptr @__const.btrfs_free_space_root.key, i32 17)
  %1 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %block_group, align 8
  %call.i = call ptr @btrfs_global_root(ptr noundef %2, ptr noundef nonnull %key.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %5 = call ptr @memset(ptr %key, i32 255, i32 17)
  %6 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info, align 4
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 43
  %8 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %super_copy.i, align 8
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %compat_ro_flags.i.i, align 1
  %12 = and i64 %11, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool.not = icmp eq i64 %12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %needs_free_space = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 42
  %13 = ptrtoint ptr %needs_free_space to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %needs_free_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not = icmp eq i32 %14, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @btrfs_alloc_path() #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.do.body_crit_edge, label %if.end8

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end8:                                          ; preds = %if.end4
  %start9 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %15 = ptrtoint ptr %start9 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %start9, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length, align 8
  %add = add i64 %18, %16
  %sub = add i64 %add, -1
  %19 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %sub, ptr %key, align 8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %3, align 8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 -1, ptr %4, align 1
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call5, i32 0, i32 1
  %22 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end110.while.body_crit_edge, %if.end8
  %call.i212 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %call.i, ptr noundef nonnull %key, ptr noundef nonnull %call5, i32 noundef -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %cmp.i = icmp slt i32 %call.i212, 0
  br i1 %cmp.i, label %while.body.do.body_crit_edge, label %if.end.i

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %cmp1.i = icmp eq i32 %call.i212, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 138) #15
  unreachable

if.end3.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp4.i = icmp eq i32 %25, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end15

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 143) #15
  unreachable

if.end15:                                         ; preds = %if.end3.i
  %26 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp237 = icmp sgt i32 %25, 0
  br i1 %cmp237, label %if.end15.while.body20_crit_edge, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end15.while.body20_crit_edge:                  ; preds = %if.end15
  br label %while.body20

while.body20:                                     ; preds = %cond.end97.while.body20_crit_edge, %if.end15.while.body20_crit_edge
  %nr.0239 = phi i32 [ %inc98, %cond.end97.while.body20_crit_edge ], [ 0, %if.end15.while.body20_crit_edge ]
  %storemerge238 = phi i32 [ %dec101, %cond.end97.while.body20_crit_edge ], [ %25, %if.end15.while.body20_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %28 = mul i32 %storemerge238, 25
  %add.i.i.i.i = add i32 %28, 76
  %29 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %27, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #8
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %23, align 1
  %32 = call i64 @llvm.bswap.i64(i64 %31) #8
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %22, align 8
  %35 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %disk_key.i, align 8
  %37 = call i64 @llvm.bswap.i64(i64 %36) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  %38 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %34, label %if.else102 [
    i8 -58, label %if.then27
    i8 -57, label %while.body20.if.then59_crit_edge
    i8 -56, label %while.body20.if.then59_crit_edge321
  ]

while.body20.if.then59_crit_edge321:              ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

while.body20.if.then59_crit_edge:                 ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.then27:                                        ; preds = %while.body20
  %39 = ptrtoint ptr %start9 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %start9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %40)
  %cmp30 = icmp eq i64 %37, %40
  br i1 %cmp30, label %cond.end, label %cond.false, !prof !99

cond.false:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 1385) #13
  unreachable

cond.end:                                         ; preds = %if.then27
  %41 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %42)
  %cmp37 = icmp eq i64 %32, %42
  br i1 %cmp37, label %cond.end47, label %cond.false46, !prof !99

cond.false46:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.5, i32 noundef 1386) #13
  unreachable

cond.end47:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc48 = add i32 %nr.0239, 1
  %43 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %slots.i, align 4
  %dec = add i32 %44, -1
  store i32 %dec, ptr %slots.i, align 4
  br label %while.end

if.then59:                                        ; preds = %while.body20.if.then59_crit_edge, %while.body20.if.then59_crit_edge321
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %16)
  %cmp61.not = icmp ult i64 %37, %16
  br i1 %cmp61.not, label %cond.false70, label %cond.end71, !prof !98

cond.false70:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.6, i32 noundef 1393) #13
  unreachable

cond.end71:                                       ; preds = %if.then59
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %add)
  %cmp73 = icmp ult i64 %37, %add
  br i1 %cmp73, label %cond.end83, label %cond.false82, !prof !99

cond.false82:                                     ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 1394) #13
  unreachable

cond.end83:                                       ; preds = %cond.end71
  %add86 = add i64 %37, %32
  call void @__sanitizer_cov_trace_cmp8(i64 %add86, i64 %add)
  %cmp87.not = icmp ugt i64 %add86, %add
  br i1 %cmp87.not, label %cond.false96, label %cond.end97, !prof !98

cond.false96:                                     ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.8, i32 noundef 1395) #13
  unreachable

cond.end97:                                       ; preds = %cond.end83
  %inc98 = add i32 %nr.0239, 1
  %45 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %slots.i, align 4
  %dec101 = add i32 %46, -1
  store i32 %dec101, ptr %slots.i, align 4
  %cmp = icmp sgt i32 %dec101, 0
  br i1 %cmp, label %cond.end97.while.body20_crit_edge, label %cond.end97.while.end_crit_edge

cond.end97.while.end_crit_edge:                   ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cond.end97.while.body20_crit_edge:                ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body20

if.else102:                                       ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 1399) #13
  unreachable

while.end:                                        ; preds = %cond.end97.while.end_crit_edge, %cond.end47, %if.end15.while.end_crit_edge
  %tobool11.not = phi i1 [ true, %if.end15.while.end_crit_edge ], [ false, %cond.end47 ], [ true, %cond.end97.while.end_crit_edge ]
  %nr.1 = phi i32 [ 0, %if.end15.while.end_crit_edge ], [ %inc48, %cond.end47 ], [ %inc98, %cond.end97.while.end_crit_edge ]
  %47 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %slots.i, align 4
  %call107 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %call.i, ptr noundef nonnull %call5, i32 noundef %48, i32 noundef %nr.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end110:                                        ; preds = %while.end
  call void @btrfs_release_path(ptr noundef nonnull %call5) #8
  br i1 %tobool11.not, label %if.end110.while.body_crit_edge, label %out

if.end110.while.body_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

out:                                              ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  call void @btrfs_free_path(ptr noundef nonnull %call5) #8
  br label %cleanup

do.body:                                          ; preds = %while.end.do.body_crit_edge, %while.body.do.body_crit_edge, %if.end4.do.body_crit_edge
  %ret.0.ph = phi i32 [ -12, %if.end4.do.body_crit_edge ], [ %call107, %while.end.do.body_crit_edge ], [ %call.i212, %while.body.do.body_crit_edge ]
  call void @btrfs_free_path(ptr noundef %call5) #8
  %49 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fs_info, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %50, i32 0, i32 149
  %call115 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then117, label %do.body.if.end162_crit_edge

do.body.if.end162_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.then117:                                       ; preds = %do.body
  %51 = zext i32 %ret.0.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %ret.0.ph, label %do.end [
    i32 -5, label %if.then117.do.body146_crit_edge
    i32 -30, label %if.then117.do.body146_crit_edge322
  ]

if.then117.do.body146_crit_edge322:               ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

if.then117.do.body146_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

do.end:                                           ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1413, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %ret.0.ph) #8
  br label %if.end162

do.body146:                                       ; preds = %if.then117.do.body146_crit_edge, %if.then117.do.body146_crit_edge322
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_block_group_free_space.__UNIQUE_ID_ddebug941, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_block_group_free_space, %if.then156)) #8
          to label %if.end162 [label %if.then156], !srcloc !104

if.then156:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fs_info, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %53, ptr noundef nonnull @.str.14, i32 noundef %ret.0.ph) #11
  br label %if.end162

if.end162:                                        ; preds = %if.then156, %do.body146, %do.end, %do.body.if.end162_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.26, i32 noundef 1413, i32 noundef %ret.0.ph) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end162, %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %ret.0.ph, %if.end162 ], [ 0, %out ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @load_free_space_tree(ptr noundef %caching_ctl) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i.i41 = alloca %struct.btrfs_disk_key, align 8
  %key.i.i42 = alloca %struct.btrfs_key, align 1
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  %key.i.i = alloca %struct.btrfs_key, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %block_group1 = getelementptr inbounds %struct.btrfs_caching_control, ptr %caching_ctl, i32 0, i32 4
  %0 = ptrtoint ptr %block_group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group1, align 8
  %call = tail call ptr @btrfs_alloc_path() #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %skip_locking = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %skip_locking to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %skip_locking, align 2
  %bf.set4 = or i8 %bf.load, 48
  store i8 %bf.set4, ptr %skip_locking, align 2
  %reada = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %reada to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %reada, align 4
  %call5 = tail call ptr @search_free_space_info(ptr noundef null, ptr noundef %1, ptr noundef nonnull %call, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call5 to i32
  br label %out

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @btrfs_get_32(ptr noundef %6, ptr noundef %call5, i32 noundef 0) #8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call.i39 = tail call i32 @btrfs_get_32(ptr noundef %8, ptr noundef %call5, i32 noundef 4) #8
  %9 = and i32 %call.i39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  %10 = ptrtoint ptr %block_group1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block_group1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i.i) #8
  %14 = call ptr @memcpy(ptr %key.i.i, ptr @__const.btrfs_free_space_root.key, i32 17)
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 8
  %call.i.i = call ptr @btrfs_global_root(ptr noundef %16, ptr noundef nonnull %key.i.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i) #8
  %start.i = getelementptr inbounds %struct.btrfs_block_group, ptr %11, i32 0, i32 3
  %17 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start.i, align 8
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %length.i, align 8
  %add.i = add i64 %20, %18
  %slots.i.i.i = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %21 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  %progress.i = getelementptr inbounds %struct.btrfs_caching_control, ptr %caching_ctl, i32 0, i32 5
  %wait.i = getelementptr inbounds %struct.btrfs_caching_control, ptr %caching_ctl, i32 0, i32 2
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %13, i32 0, i32 167
  br label %while.cond.i.outer

while.cond.i.outer:                               ; preds = %if.end61.i.while.cond.i.outer_crit_edge, %if.then15
  %prev_bit.0.i.ph = phi i32 [ 0, %if.then15 ], [ %call42.i, %if.end61.i.while.cond.i.outer_crit_edge ]
  %extent_start.0.i.ph = phi i64 [ 0, %if.then15 ], [ %extent_start.2.i, %if.end61.i.while.cond.i.outer_crit_edge ]
  %total_found.0.i.ph = phi i64 [ 0, %if.then15 ], [ %total_found.3.i, %if.end61.i.while.cond.i.outer_crit_edge ]
  %extent_count.0.i.ph = phi i32 [ 0, %if.then15 ], [ %extent_count.2.i, %if.end61.i.while.cond.i.outer_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %cond.end32.i.while.cond.i_crit_edge, %while.cond.i.outer
  %23 = ptrtoint ptr %slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slots.i.i.i, align 4
  %inc.i.i.i = add i32 %24, 1
  store i32 %inc.i.i.i, ptr %slots.i.i.i, align 4
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %pages.i.i.i.i = getelementptr inbounds %struct.extent_buffer, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %pages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @page_address(ptr noundef %28) #8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %26, align 8
  %conv.i.i.i.i = trunc i64 %30 to i32
  %and.i.i.i.i = and i32 %conv.i.i.i.i, 4095
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %and.i.i.i.i
  %nritems.i.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %nritems.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %nritems.i.i.i.i, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %33)
  %cmp.not.i.i.i = icmp ult i32 %inc.i.i.i, %33
  br i1 %cmp.not.i.i.i, label %while.cond.i.if.end5.i_crit_edge, label %btrfs_next_item.exit.i

while.cond.i.if.end5.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

btrfs_next_item.exit.i:                           ; preds = %while.cond.i
  %call4.i.i.i = call i32 @btrfs_next_old_leaf(ptr noundef %call.i.i, ptr noundef nonnull %call, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i40 = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i40, label %btrfs_next_item.exit.i.out_crit_edge, label %if.end.i

btrfs_next_item.exit.i.out_crit_edge:             ; preds = %btrfs_next_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %btrfs_next_item.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.end.i.while.end64.i_crit_edge

if.end.i.while.end64.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end64.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i.if.end5.i_crit_edge, %while.cond.i.if.end5.i_crit_edge
  %34 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call, align 4
  %36 = ptrtoint ptr %slots.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %slots.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #8
  %mul.i.i.i.i.i = mul i32 %37, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %38 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %35, ptr noundef nonnull %disk_key.i.i, i32 noundef %add.i.i.i.i.i, i32 noundef 17) #8
  %39 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %22, align 1
  %41 = call i64 @llvm.bswap.i64(i64 %40) #8
  %42 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %21, align 8
  %44 = ptrtoint ptr %disk_key.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %disk_key.i.i, align 8
  %46 = call i64 @llvm.bswap.i64(i64 %45) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #8
  %47 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %43, label %cond.false.i [
    i8 -58, label %if.end5.i.while.end64.i_crit_edge
    i8 -56, label %cond.end.i
  ], !prof !106

if.end5.i.while.end64.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end64.i

cond.false.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.17, i32 noundef 1451) #15
  unreachable

cond.end.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %add.i)
  %cmp17.i = icmp ult i64 %46, %add.i
  br i1 %cmp17.i, label %land.rhs.i, label %cond.end.i.cond.false31.i_crit_edge, !prof !99

cond.end.i.cond.false31.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false31.i

land.rhs.i:                                       ; preds = %cond.end.i
  %add21.i = add i64 %46, %41
  call void @__sanitizer_cov_trace_cmp8(i64 %add21.i, i64 %add.i)
  %cmp22.not.i = icmp ugt i64 %add21.i, %add.i
  br i1 %cmp22.not.i, label %land.rhs.i.cond.false31.i_crit_edge, label %cond.end32.i, !prof !98

land.rhs.i.cond.false31.i_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false31.i

cond.false31.i:                                   ; preds = %land.rhs.i.cond.false31.i_crit_edge, %cond.end.i.cond.false31.i_crit_edge
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.41, i32 noundef 1452) #15
  unreachable

cond.end32.i:                                     ; preds = %land.rhs.i
  %48 = ptrtoint ptr %progress.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %46, ptr %progress.i, align 8
  %cmp39129.i = icmp ult i64 %46, %add21.i
  br i1 %cmp39129.i, label %cond.end32.i.while.body41.i_crit_edge, label %cond.end32.i.while.cond.i_crit_edge

cond.end32.i.while.cond.i_crit_edge:              ; preds = %cond.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

cond.end32.i.while.body41.i_crit_edge:            ; preds = %cond.end32.i
  br label %while.body41.i

while.body41.i:                                   ; preds = %if.end61.i.while.body41.i_crit_edge, %cond.end32.i.while.body41.i_crit_edge
  %extent_count.1134.i = phi i32 [ %extent_count.2.i, %if.end61.i.while.body41.i_crit_edge ], [ %extent_count.0.i.ph, %cond.end32.i.while.body41.i_crit_edge ]
  %total_found.1133.i = phi i64 [ %total_found.3.i, %if.end61.i.while.body41.i_crit_edge ], [ %total_found.0.i.ph, %cond.end32.i.while.body41.i_crit_edge ]
  %offset.0132.i = phi i64 [ %add63.i, %if.end61.i.while.body41.i_crit_edge ], [ %46, %cond.end32.i.while.body41.i_crit_edge ]
  %extent_start.1131.i = phi i64 [ %extent_start.2.i, %if.end61.i.while.body41.i_crit_edge ], [ %extent_start.0.i.ph, %cond.end32.i.while.body41.i_crit_edge ]
  %prev_bit.1130.i = phi i32 [ %call42.i, %if.end61.i.while.body41.i_crit_edge ], [ %prev_bit.0.i.ph, %cond.end32.i.while.body41.i_crit_edge ]
  %call42.i = call i32 @free_space_test_bit(ptr noundef %11, ptr noundef nonnull %call, i64 noundef %offset.0132.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_bit.1130.i)
  %cmp43.i = icmp eq i32 %prev_bit.1130.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42.i)
  %cmp45.i = icmp eq i32 %call42.i, 1
  %or.cond.i = select i1 %cmp43.i, i1 %cmp45.i, i1 false
  br i1 %or.cond.i, label %while.body41.i.if.end61.i_crit_edge, label %if.else.i

while.body41.i.if.end61.i_crit_edge:              ; preds = %while.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.else.i:                                        ; preds = %while.body41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prev_bit.1130.i)
  %cmp48.i = icmp eq i32 %prev_bit.1130.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp51.i = icmp eq i32 %call42.i, 0
  %or.cond111.i = select i1 %cmp48.i, i1 %cmp51.i, i1 false
  br i1 %or.cond111.i, label %if.then53.i, label %if.else.i.if.end61.i_crit_edge

if.else.i.if.end61.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.then53.i:                                      ; preds = %if.else.i
  %call54.i = call i64 @add_new_free_space(ptr noundef %11, i64 noundef %extent_start.1131.i, i64 noundef %offset.0132.i) #8
  %add55.i = add i64 %call54.i, %total_found.1133.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097152, i64 %add55.i)
  %cmp56.i = icmp ugt i64 %add55.i, 2097152
  br i1 %cmp56.i, label %if.then58.i, label %if.then53.i.if.end59.i_crit_edge

if.then53.i.if.end59.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

if.then58.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then58.i, %if.then53.i.if.end59.i_crit_edge
  %total_found.2.i = phi i64 [ 0, %if.then58.i ], [ %add55.i, %if.then53.i.if.end59.i_crit_edge ]
  %inc.i = add i32 %extent_count.1134.i, 1
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end59.i, %if.else.i.if.end61.i_crit_edge, %while.body41.i.if.end61.i_crit_edge
  %extent_start.2.i = phi i64 [ %extent_start.1131.i, %if.end59.i ], [ %extent_start.1131.i, %if.else.i.if.end61.i_crit_edge ], [ %offset.0132.i, %while.body41.i.if.end61.i_crit_edge ]
  %total_found.3.i = phi i64 [ %total_found.2.i, %if.end59.i ], [ %total_found.1133.i, %if.else.i.if.end61.i_crit_edge ], [ %total_found.1133.i, %while.body41.i.if.end61.i_crit_edge ]
  %extent_count.2.i = phi i32 [ %inc.i, %if.end59.i ], [ %extent_count.1134.i, %if.else.i.if.end61.i_crit_edge ], [ %extent_count.1134.i, %while.body41.i.if.end61.i_crit_edge ]
  %49 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sectorsize.i, align 4
  %conv62.i = zext i32 %50 to i64
  %add63.i = add i64 %offset.0132.i, %conv62.i
  %cmp39.i = icmp ult i64 %add63.i, %add21.i
  br i1 %cmp39.i, label %if.end61.i.while.body41.i_crit_edge, label %if.end61.i.while.cond.i.outer_crit_edge

if.end61.i.while.cond.i.outer_crit_edge:          ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.outer

if.end61.i.while.body41.i_crit_edge:              ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body41.i

while.end64.i:                                    ; preds = %if.end5.i.while.end64.i_crit_edge, %if.end.i.while.end64.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prev_bit.0.i.ph)
  %cmp65.i = icmp eq i32 %prev_bit.0.i.ph, 1
  br i1 %cmp65.i, label %if.then67.i, label %while.end64.i.if.end71.i_crit_edge

while.end64.i.if.end71.i_crit_edge:               ; preds = %while.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

if.then67.i:                                      ; preds = %while.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  %call68.i = call i64 @add_new_free_space(ptr noundef %11, i64 noundef %extent_start.0.i.ph, i64 noundef %add.i) #8
  %inc70.i = add i32 %extent_count.0.i.ph, 1
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then67.i, %while.end64.i.if.end71.i_crit_edge
  %extent_count.3.i = phi i32 [ %inc70.i, %if.then67.i ], [ %extent_count.0.i.ph, %while.end64.i.if.end71.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %extent_count.3.i, i32 %call.i)
  %cmp72.not.i = icmp eq i32 %extent_count.3.i, %call.i
  br i1 %cmp72.not.i, label %if.end76.i, label %if.then74.i

if.then74.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %start.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %13, ptr noundef nonnull @.str.9, i64 noundef %52, i32 noundef %extent_count.3.i, i32 noundef %call.i) #11
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 1486) #15
  unreachable

if.end76.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %progress.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 -1, ptr %progress.i, align 8
  br label %out

if.else:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i.i42) #8
  %54 = call ptr @memcpy(ptr %key.i.i42, ptr @__const.btrfs_free_space_root.key, i32 17)
  %55 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %11, align 8
  %call.i.i44 = call ptr @btrfs_global_root(ptr noundef %56, ptr noundef nonnull %key.i.i42) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i42) #8
  %start.i45 = getelementptr inbounds %struct.btrfs_block_group, ptr %11, i32 0, i32 3
  %57 = ptrtoint ptr %start.i45 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %start.i45, align 8
  %length.i46 = getelementptr inbounds %struct.btrfs_block_group, ptr %11, i32 0, i32 4
  %59 = ptrtoint ptr %length.i46 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %length.i46, align 8
  %add.i47 = add i64 %60, %58
  %slots.i.i.i48 = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %61 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i41, i32 0, i32 1
  %62 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i41, i32 0, i32 2
  %progress.i49 = getelementptr inbounds %struct.btrfs_caching_control, ptr %caching_ctl, i32 0, i32 5
  %wait.i50 = getelementptr inbounds %struct.btrfs_caching_control, ptr %caching_ctl, i32 0, i32 2
  br label %while.cond.i61

while.cond.i61:                                   ; preds = %if.end42.i, %if.else
  %total_found.0.i51 = phi i64 [ 0, %if.else ], [ %total_found.1.i, %if.end42.i ]
  %extent_count.0.i52 = phi i32 [ 0, %if.else ], [ %inc.i75, %if.end42.i ]
  %63 = ptrtoint ptr %slots.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %slots.i.i.i48, align 4
  %inc.i.i.i53 = add i32 %64, 1
  store i32 %inc.i.i.i53, ptr %slots.i.i.i48, align 4
  %65 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call, align 4
  %pages.i.i.i.i54 = getelementptr inbounds %struct.extent_buffer, ptr %66, i32 0, i32 12
  %67 = ptrtoint ptr %pages.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pages.i.i.i.i54, align 4
  %call.i.i.i.i55 = call ptr @page_address(ptr noundef %68) #8
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %66, align 8
  %conv.i.i.i.i56 = trunc i64 %70 to i32
  %and.i.i.i.i57 = and i32 %conv.i.i.i.i56, 4095
  %add.ptr.i.i.i.i58 = getelementptr i8, ptr %call.i.i.i.i55, i32 %and.i.i.i.i57
  %nritems.i.i.i.i59 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i.i58, i32 0, i32 7
  %71 = ptrtoint ptr %nritems.i.i.i.i59 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %nritems.i.i.i.i59, align 1
  %73 = call i32 @llvm.bswap.i32(i32 %72) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i53, i32 %73)
  %cmp.not.i.i.i60 = icmp ult i32 %inc.i.i.i53, %73
  br i1 %cmp.not.i.i.i60, label %while.cond.i61.if.end5.i69_crit_edge, label %btrfs_next_item.exit.i64

while.cond.i61.if.end5.i69_crit_edge:             ; preds = %while.cond.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i69

btrfs_next_item.exit.i64:                         ; preds = %while.cond.i61
  %call4.i.i.i62 = call i32 @btrfs_next_old_leaf(ptr noundef %call.i.i44, ptr noundef nonnull %call, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i62)
  %cmp.i63 = icmp slt i32 %call4.i.i.i62, 0
  br i1 %cmp.i63, label %btrfs_next_item.exit.i64.out_crit_edge, label %if.end.i66

btrfs_next_item.exit.i64.out_crit_edge:           ; preds = %btrfs_next_item.exit.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i66:                                       ; preds = %btrfs_next_item.exit.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i62)
  %tobool.not.i65 = icmp eq i32 %call4.i.i.i62, 0
  br i1 %tobool.not.i65, label %if.end.i66.if.end5.i69_crit_edge, label %if.end.i66.while.end.i_crit_edge

if.end.i66.while.end.i_crit_edge:                 ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end.i66.if.end5.i69_crit_edge:                 ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i69

if.end5.i69:                                      ; preds = %if.end.i66.if.end5.i69_crit_edge, %while.cond.i61.if.end5.i69_crit_edge
  %74 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call, align 4
  %76 = ptrtoint ptr %slots.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %slots.i.i.i48, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i41) #8
  %mul.i.i.i.i.i67 = mul i32 %77, 25
  %add.i.i.i.i.i68 = add i32 %mul.i.i.i.i.i67, 101
  %78 = call ptr @memset(ptr %disk_key.i.i41, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %75, ptr noundef nonnull %disk_key.i.i41, i32 noundef %add.i.i.i.i.i68, i32 noundef 17) #8
  %79 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %80 = load i64, ptr %62, align 1
  %81 = call i64 @llvm.bswap.i64(i64 %80) #8
  %82 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %61, align 8
  %84 = ptrtoint ptr %disk_key.i.i41 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %disk_key.i.i41, align 8
  %86 = call i64 @llvm.bswap.i64(i64 %85) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i41) #8
  %87 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %83, label %cond.false.i70 [
    i8 -58, label %if.end5.i69.while.end.i_crit_edge
    i8 -57, label %cond.end.i72
  ], !prof !106

if.end5.i69.while.end.i_crit_edge:                ; preds = %if.end5.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

cond.false.i70:                                   ; preds = %if.end5.i69
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.32, i32 noundef 1529) #15
  unreachable

cond.end.i72:                                     ; preds = %if.end5.i69
  call void @__sanitizer_cov_trace_cmp8(i64 %86, i64 %add.i47)
  %cmp17.i71 = icmp ult i64 %86, %add.i47
  br i1 %cmp17.i71, label %land.rhs.i73, label %cond.end.i72.cond.false30.i_crit_edge, !prof !99

cond.end.i72.cond.false30.i_crit_edge:            ; preds = %cond.end.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false30.i

land.rhs.i73:                                     ; preds = %cond.end.i72
  %add20.i = add i64 %86, %81
  call void @__sanitizer_cov_trace_cmp8(i64 %add20.i, i64 %add.i47)
  %cmp21.not.i = icmp ugt i64 %add20.i, %add.i47
  br i1 %cmp21.not.i, label %land.rhs.i73.cond.false30.i_crit_edge, label %cond.end31.i, !prof !98

land.rhs.i73.cond.false30.i_crit_edge:            ; preds = %land.rhs.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false30.i

cond.false30.i:                                   ; preds = %land.rhs.i73.cond.false30.i_crit_edge, %cond.end.i72.cond.false30.i_crit_edge
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.41, i32 noundef 1530) #15
  unreachable

cond.end31.i:                                     ; preds = %land.rhs.i73
  %88 = ptrtoint ptr %progress.i49 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %86, ptr %progress.i49, align 8
  %call37.i = call i64 @add_new_free_space(ptr noundef %11, i64 noundef %86, i64 noundef %add20.i) #8
  %add38.i = add i64 %call37.i, %total_found.0.i51
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097152, i64 %add38.i)
  %cmp39.i74 = icmp ugt i64 %add38.i, 2097152
  br i1 %cmp39.i74, label %if.then41.i, label %cond.end31.i.if.end42.i_crit_edge

cond.end31.i.if.end42.i_crit_edge:                ; preds = %cond.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then41.i:                                      ; preds = %cond.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wake_up(ptr noundef %wait.i50, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %cond.end31.i.if.end42.i_crit_edge
  %total_found.1.i = phi i64 [ 0, %if.then41.i ], [ %add38.i, %cond.end31.i.if.end42.i_crit_edge ]
  %inc.i75 = add i32 %extent_count.0.i52, 1
  br label %while.cond.i61

while.end.i:                                      ; preds = %if.end5.i69.while.end.i_crit_edge, %if.end.i66.while.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %extent_count.0.i52, i32 %call.i)
  %cmp43.not.i = icmp eq i32 %extent_count.0.i52, %call.i
  br i1 %cmp43.not.i, label %if.end47.i, label %if.then45.i

if.then45.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %start.i45 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %start.i45, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %13, ptr noundef nonnull @.str.9, i64 noundef %90, i32 noundef %extent_count.0.i52, i32 noundef %call.i) #11
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 1548) #15
  unreachable

if.end47.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %progress.i49 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 -1, ptr %progress.i49, align 8
  br label %out

out:                                              ; preds = %if.end47.i, %btrfs_next_item.exit.i64.out_crit_edge, %if.end76.i, %btrfs_next_item.exit.i.out_crit_edge, %if.then7
  %ret.0 = phi i32 [ %4, %if.then7 ], [ 0, %if.end76.i ], [ 0, %if.end47.i ], [ %call4.i.i.i62, %btrfs_next_item.exit.i64.out_crit_edge ], [ %call4.i.i.i, %btrfs_next_item.exit.i.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @free_space_next_bitmap(ptr noundef %trans, ptr noundef %root, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slots, align 4
  %add = add i32 %1, 1
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %5) #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %3, align 8
  %conv.i = trunc i64 %7 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %8 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %nritems.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp = icmp ult i32 %add, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slots, align 4
  %inc = add i32 %12, 1
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %13 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %14 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %15 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p, align 4
  %17 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %19 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %18, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %20 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %16, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #8
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %19, align 1
  %23 = call i64 @llvm.bswap.i64(i64 %22) #8
  %24 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %disk_key.i, align 8
  %26 = call i64 @llvm.bswap.i64(i64 %25) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  call void @btrfs_release_path(ptr noundef %p) #8
  %add8 = add i64 %26, %23
  %27 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add8, ptr %key, align 8
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %14, align 8
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 -1, ptr %13, align 1
  %call.i17 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %p, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp.i = icmp slt i32 %call.i17, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp1.i = icmp eq i32 %call.i17, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 138) #15
  unreachable

if.end3.i:                                        ; preds = %if.end.i
  %30 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4.i = icmp eq i32 %31, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 143) #15
  unreachable

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %31, -1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6.i, %if.then
  %dec.i.sink = phi i32 [ %dec.i, %if.end6.i ], [ %inc, %if.then ]
  %32 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dec.i.sink, ptr %slots, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i17, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_free_space_extent_count(ptr noundef %trans, ptr nocapture noundef readonly %block_group, ptr noundef %path, i32 noundef %new_extents) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_extents)
  %cmp = icmp eq i32 %new_extents, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @search_free_space_info(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path, i32 noundef 1)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %path, align 4
  %call.i = tail call i32 @btrfs_get_32(ptr noundef %2, ptr noundef %call, i32 noundef 4) #8
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %path, align 4
  %call.i52 = tail call i32 @btrfs_get_32(ptr noundef %4, ptr noundef %call, i32 noundef 0) #8
  %add = add i32 %call.i52, %new_extents
  %5 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %path, align 4
  tail call void @btrfs_set_32(ptr noundef %6, ptr noundef %call, i32 noundef 0, i32 noundef %add) #8
  %7 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %path, align 4
  tail call void @btrfs_mark_buffer_dirty(ptr noundef %8) #8
  tail call void @btrfs_release_path(ptr noundef %path) #8
  %9 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true20.critedge

land.lhs.true:                                    ; preds = %if.end4
  %bitmap_high_thresh = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 12
  %10 = ptrtoint ptr %bitmap_high_thresh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bitmap_high_thresh, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp13 = icmp ugt i32 %add, %11
  br i1 %cmp13, label %if.then15, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 @convert_free_space_to_bitmaps(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path)
  br label %cleanup

land.lhs.true20.critedge:                         ; preds = %if.end4
  %bitmap_low_thresh = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 13
  %12 = ptrtoint ptr %bitmap_low_thresh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bitmap_low_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp21 = icmp ult i32 %add, %13
  br i1 %cmp21, label %if.then23, label %land.lhs.true20.critedge.cleanup_crit_edge

land.lhs.true20.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true20.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true20.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 @convert_free_space_to_extents(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %land.lhs.true20.critedge.cleanup_crit_edge, %if.then15, %land.lhs.true.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %0, %if.then2 ], [ %call24, %if.then23 ], [ 0, %land.lhs.true20.critedge.cleanup_crit_edge ], [ %call16, %if.then15 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @extent_buffer_bitmap_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @extent_buffer_bitmap_clear(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_new_free_space_info(ptr noundef %trans, ptr nocapture noundef readonly %block_group, ptr noundef %path) unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %key.i = alloca %struct.btrfs_key, align 1
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %0 = call ptr @memcpy(ptr %key.i, ptr @__const.btrfs_free_space_root.key, i32 17)
  %1 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %block_group, align 8
  %call.i = call ptr @btrfs_global_root(ptr noundef %2, ptr noundef nonnull %key.i) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start, align 8
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %key, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -58, ptr %3, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %length, align 8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %12 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #8
  %13 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %16 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %key, ptr %batch.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data_size.addr.i, ptr %13, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %14, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %15, align 4
  %call.i14 = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %call.i, ptr noundef %path, ptr noundef nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not = icmp eq i32 %call.i14, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %22 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %23, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %24 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %21, ptr noundef %24, i32 noundef 17) #8
  %add = add i32 %call.i.i, 101
  %25 = inttoptr i32 %add to ptr
  call void @btrfs_set_32(ptr noundef %21, ptr noundef %25, i32 noundef 0, i32 noundef 0) #8
  call void @btrfs_set_32(ptr noundef %21, ptr noundef %25, i32 noundef 4, i32 noundef 0) #8
  call void @btrfs_mark_buffer_dirty(ptr noundef %21) #8
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  call void @btrfs_release_path(ptr noundef %path) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %call.i14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_extent_root(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot_for_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @add_new_free_space(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { cold noreturn }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !32, !34, !36, !38, !39, !41, !42, !44, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/free-space-tree.c", i32 37, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/free-space-tree.c", i32 38, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/free-space-tree.c", i32 112, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/free-space-tree.c", i32 114, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/btrfs/free-space-tree.c", i32 242, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/free-space-tree.c", i32 243, i32 5}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/free-space-tree.c", i32 249, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/free-space-tree.c", i32 250, i32 5}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/free-space-tree.c", i32 251, i32 5}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/free-space-tree.c", i32 287, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/free-space-tree.c", i32 331, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @convert_free_space_to_bitmaps.__UNIQUE_ID_ddebug934, !21, !"__UNIQUE_ID_ddebug934", i1 false, i1 false}
!26 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/free-space-tree.c", i32 434, i32 3}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/btrfs/free-space-tree.c", i32 464, i32 3}
!31 = !{ptr @convert_free_space_to_extents.__UNIQUE_ID_ddebug935, !30, !"__UNIQUE_ID_ddebug935", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/free-space-tree.c", i32 517, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/btrfs/free-space-tree.c", i32 521, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/btrfs/free-space-tree.c", i32 857, i32 3}
!38 = !{ptr @remove_from_free_space_tree.__UNIQUE_ID_ddebug936, !37, !"__UNIQUE_ID_ddebug936", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/btrfs/free-space-tree.c", i32 1049, i32 3}
!41 = !{ptr @add_to_free_space_tree.__UNIQUE_ID_ddebug937, !40, !"__UNIQUE_ID_ddebug937", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/btrfs/free-space-tree.c", i32 1189, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/btrfs/free-space-tree.c", i32 1190, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/btrfs/free-space-tree.c", i32 1204, i32 2}
!48 = !{ptr @btrfs_create_free_space_tree.__UNIQUE_ID_ddebug938, !47, !"__UNIQUE_ID_ddebug938", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/btrfs/free-space-tree.c", i32 1289, i32 2}
!51 = !{ptr @btrfs_clear_free_space_tree.__UNIQUE_ID_ddebug939, !50, !"__UNIQUE_ID_ddebug939", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/btrfs/free-space-tree.c", i32 1337, i32 3}
!54 = !{ptr @add_block_group_free_space.__UNIQUE_ID_ddebug940, !53, !"__UNIQUE_ID_ddebug940", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/btrfs/free-space-tree.c", i32 1413, i32 3}
!57 = !{ptr @remove_block_group_free_space.__UNIQUE_ID_ddebug941, !56, !"__UNIQUE_ID_ddebug941", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @assertfail._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @assertfail._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/btrfs/free-space-tree.c", i32 546, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/btrfs/free-space-tree.c", i32 547, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/btrfs/free-space-tree.c", i32 731, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/btrfs/free-space-tree.c", i32 735, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/btrfs/free-space-tree.c", i32 909, i32 3}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/btrfs/free-space-tree.c", i32 916, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/btrfs/free-space-tree.c", i32 918, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/btrfs/free-space-tree.c", i32 958, i32 2}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/btrfs/free-space-tree.c", i32 1099, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/btrfs/ctree.h", i32 3710, i32 4}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/btrfs/ctree.h", i32 3736, i32 4}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/btrfs/free-space-tree.c", i32 1452, i32 3}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2148639385, i64 2148639665, i64 2148639999, i64 2148640333}
!101 = !{i64 1153841, i64 1153868, i64 1153890, i64 1153918}
!102 = !{i64 1154249, i64 1154276, i64 1154309, i64 1154330, i64 1154357, i64 1154383}
!103 = !{i64 2158339136, i64 2158339618, i64 2158339173, i64 2158339229, i64 2158339263, i64 2158339287, i64 2158339328, i64 2158339349, i64 2158339377, i64 2158339411}
!104 = !{i64 2148730666, i64 2148730671, i64 2148730684, i64 2148730728, i64 2148730762, i64 2148730783}
!105 = !{!"branch_weights", i32 4000000, i32 4001}
!106 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
