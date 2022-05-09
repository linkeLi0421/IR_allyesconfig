; ModuleID = '/llk/IR_all_yes/fs/btrfs/delayed-inode.c_pt.bc'
source_filename = "../fs/btrfs/delayed-inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.80, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.btrfs_delayed_root = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head }
%struct.btrfs_delayed_node = type { i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root_cached, %struct.rb_root_cached, %struct.mutex, %struct.btrfs_inode_item, %struct.refcount_struct, i64, i32, i32 }
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.btrfs_inode = type { ptr, %struct.btrfs_key, %struct.spinlock, %struct.extent_map_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.mutex, %struct.btrfs_ordered_inode_tree, %struct.list_head, %struct.rb_node, i32, %struct.atomic_t, i64, i64, i64, i32, i32, i64, %union.anon.83, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.btrfs_block_rsv, i32, i32, ptr, %struct.timespec64, %struct.list_head, %struct.rw_semaphore, %struct.inode }
%struct.btrfs_ordered_inode_tree = type { %struct.spinlock, %struct.rb_root, ptr }
%union.anon.83 = type { i64 }
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
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_delayed_item = type { %struct.rb_node, %struct.btrfs_key, %struct.list_head, %struct.list_head, i64, ptr, %struct.refcount_struct, i32, i32, [0 x i8] }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.btrfs_async_delayed_work = type { ptr, i32, %struct.btrfs_work }
%struct.btrfs_dir_item = type <{ %struct.btrfs_disk_key, i64, i16, i16, i8 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dir_context = type { ptr, i64 }
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

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btrfs_delayed_node\00", [45 x i8] zeroinitializer }, align 32
@delayed_node_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/btrfs/delayed-inode.c\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"\013err add delayed dir index item(name: %.*s) into the insertion tree of the delayed node(root id: %llu, inode id: %llu, errno: %d)\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013metadata reservation failed for delayed dir item deltiona, should have been reserved\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"\013err add delayed dir index item(index: %llu) into the deletion tree of the delayed node(root id: %llu, inode id: %llu, errno: %d)\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@__btrfs_run_delayed_items.__UNIQUE_ID_ddebug927 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.1, ptr @.str.8, i8 1, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__btrfs_run_delayed_items\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"refcount_read(&delayed_node->refs) == 0\00", [56 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__btrfs_update_delayed_inode.__UNIQUE_ID_ddebug925 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.14, ptr @.str.1, ptr @.str.8, i8 0, i8 -7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__btrfs_update_delayed_inode\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delayed_node->root\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"delayed_inode\00", [18 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_space_reservation = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_btrfs_space_reservation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@btrfs_init_delayed_node.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&delayed_node->mutex\00", [43 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"delayed_item\00", [19 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ret == 0 || ret == -ENOSPC\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 26, i32 41 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"delayed_node_cache\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 22, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1308, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1394, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1461, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1470, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1092, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 278, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 3491, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 999, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1012, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 923, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 662, i32 41 }
@___asan_gen_.95 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1052, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 108, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 50, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 36, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 573, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 271, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [28 x i8] c"../fs/btrfs/delayed-inode.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 636, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @delayed_node_cache, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @btrfs_init_delayed_node.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayed_node_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_delayed_node.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_delayed_inode_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 328, i32 noundef 0, i32 noundef 1048576, ptr noundef null) #15
  store ptr %call, ptr @delayed_node_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_delayed_inode_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @delayed_node_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_run_delayed_items(ptr noundef %trans) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__btrfs_run_delayed_items(ptr noundef %trans, i32 noundef -1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__btrfs_run_delayed_items(ptr noundef %trans, i32 noundef %nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp = icmp sgt i32 %nr, 0
  %aborted = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 10
  %2 = ptrtoint ptr %aborted to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !68

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @btrfs_alloc_path() #15
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %block_rsv7 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 5
  %4 = ptrtoint ptr %block_rsv7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %block_rsv7, align 8
  %delayed_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 23
  store ptr %delayed_block_rsv, ptr %block_rsv7, align 8
  %delayed_root9 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 150
  %6 = ptrtoint ptr %delayed_root9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %delayed_root9, align 4
  tail call void @_raw_spin_lock(ptr noundef %7) #15
  %node_list.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %node_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %node_list.i
  br i1 %cmp.i.not.i, label %btrfs_first_delayed_node.exit.thread, label %if.end.i

btrfs_first_delayed_node.exit.thread:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %7) #15
  br label %if.end74

if.end.i:                                         ; preds = %if.end6
  %add.ptr.i = getelementptr i8, ptr %9, i32 -20
  %refs.i = getelementptr i8, ptr %9, i32 284
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #15, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.btrfs_first_delayed_node.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.btrfs_first_delayed_node.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_first_delayed_node.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #15
  br label %btrfs_first_delayed_node.exit

btrfs_first_delayed_node.exit:                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.btrfs_first_delayed_node.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %7) #15
  %tobool11.not115 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool11.not115, label %btrfs_first_delayed_node.exit.if.end74_crit_edge, label %btrfs_first_delayed_node.exit.land.rhs_crit_edge

btrfs_first_delayed_node.exit.land.rhs_crit_edge: ; preds = %btrfs_first_delayed_node.exit
  br label %land.rhs

btrfs_first_delayed_node.exit.if.end74_crit_edge: ; preds = %btrfs_first_delayed_node.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

land.rhs:                                         ; preds = %if.end70.land.rhs_crit_edge, %btrfs_first_delayed_node.exit.land.rhs_crit_edge
  %nr.addr.0117 = phi i32 [ %nr.addr.1, %if.end70.land.rhs_crit_edge ], [ %nr, %btrfs_first_delayed_node.exit.land.rhs_crit_edge ]
  %curr_node.0116 = phi ptr [ %call71, %if.end70.land.rhs_crit_edge ], [ %add.ptr.i, %btrfs_first_delayed_node.exit.land.rhs_crit_edge ]
  br i1 %cmp, label %lor.rhs, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %dec = add i32 %nr.addr.0117, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.addr.0117)
  %tobool13.not = icmp eq i32 %nr.addr.0117, 0
  br i1 %tobool13.not, label %if.then73, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  %nr.addr.1 = phi i32 [ %dec, %lor.rhs.while.body_crit_edge ], [ %nr.addr.0117, %land.rhs.while.body_crit_edge ]
  %call14 = tail call fastcc i32 @__btrfs_commit_inode_delayed_items(ptr noundef %trans, ptr noundef nonnull %call, ptr noundef nonnull %curr_node.0116)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end70, label %if.then16

if.then16:                                        ; preds = %while.body
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %curr_node.0116, i32 noundef 0) #15
  %12 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %13, i32 0, i32 149
  %call19 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.then16.if.end67_crit_edge

if.then16.if.end67_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then21:                                        ; preds = %if.then16
  %14 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call14, label %do.end36 [
    i32 -5, label %if.then21.do.body50_crit_edge
    i32 -30, label %if.then21.do.body50_crit_edge136
  ]

if.then21.do.body50_crit_edge136:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body50

if.then21.do.body50_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body50

do.end36:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1092, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call14) #15
  br label %if.end67

do.body50:                                        ; preds = %if.then21.do.body50_crit_edge, %if.then21.do.body50_crit_edge136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__btrfs_run_delayed_items.__UNIQUE_ID_ddebug927, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__btrfs_run_delayed_items, %if.then61)) #15
          to label %if.end67 [label %if.then61], !srcloc !71

if.then61:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fs_info1, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef %call14) #18
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %do.body50, %do.end36, %if.then16.if.end67_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.7, i32 noundef 1092, i32 noundef %call14) #18
  br label %if.end74

if.end70:                                         ; preds = %while.body
  %call71 = tail call fastcc ptr @btrfs_next_delayed_node(ptr noundef nonnull %curr_node.0116)
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %curr_node.0116, i32 noundef 0) #15
  %tobool11.not = icmp eq ptr %call71, null
  br i1 %tobool11.not, label %if.end70.if.end74_crit_edge, label %if.end70.land.rhs_crit_edge

if.end70.land.rhs_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

if.end70.if.end74_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

if.then73:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %curr_node.0116, i32 noundef 0) #15
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end70.if.end74_crit_edge, %if.end67, %btrfs_first_delayed_node.exit.if.end74_crit_edge, %btrfs_first_delayed_node.exit.thread
  %ret.1112 = phi i32 [ 0, %if.then73 ], [ %call14, %if.end67 ], [ 0, %btrfs_first_delayed_node.exit.if.end74_crit_edge ], [ 0, %btrfs_first_delayed_node.exit.thread ], [ 0, %if.end70.if.end74_crit_edge ]
  tail call void @btrfs_free_path(ptr noundef nonnull %call) #15
  %17 = ptrtoint ptr %block_rsv7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %5, ptr %block_rsv7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1112, %if.end74 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_run_delayed_items_nr(ptr noundef %trans, i32 noundef %nr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__btrfs_run_delayed_items(ptr noundef %trans, i32 noundef %nr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_commit_inode_delayed_items(ptr noundef %trans, ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @btrfs_get_delayed_node(ptr noundef %inode)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %count = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %call, i32 noundef 0) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @btrfs_alloc_path() #15
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %call, i32 noundef 0) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %block_rsv10 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 5
  %2 = ptrtoint ptr %block_rsv10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_rsv10, align 8
  %root = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info, align 8
  %delayed_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 23
  store ptr %delayed_block_rsv, ptr %block_rsv10, align 8
  %call12 = tail call fastcc i32 @__btrfs_commit_inode_delayed_items(ptr noundef %trans, ptr noundef nonnull %call6, ptr noundef nonnull %call)
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %call, i32 noundef 0) #15
  tail call void @btrfs_free_path(ptr noundef nonnull %call6) #15
  %8 = ptrtoint ptr %block_rsv10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %block_rsv10, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -12, %if.then8 ], [ 0, %if.then2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @btrfs_get_delayed_node(ptr noundef %btrfs_inode) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btrfs_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btrfs_inode, align 8
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 1
  %2 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %5)
  %cmp.i = icmp eq i8 %5, -124
  %extract.t77 = trunc i64 %3 to i32
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 37, i32 11
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino.i, align 8
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i.off0 = phi i32 [ %7, %if.then.i ], [ %extract.t77, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %delayed_node = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 33
  %8 = ptrtoint ptr %delayed_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %delayed_node, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %btrfs_ino.exit
  %refs = getelementptr inbounds %struct.btrfs_delayed_node, ptr %9, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #15, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !70

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !68

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #15
  br label %cleanup

if.end:                                           ; preds = %btrfs_ino.exit
  %inode_lock = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %inode_lock) #15
  %delayed_nodes_tree = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 35
  %call2 = tail call ptr @radix_tree_lookup(ptr noundef %delayed_nodes_tree, i32 noundef %ino.0.i.off0) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end33, label %if.then4

if.then4:                                         ; preds = %if.end
  %12 = ptrtoint ptr %delayed_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %delayed_node, align 8
  %tobool6.not = icmp eq ptr %13, null
  %refs26 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call2, i32 0, i32 9
  br i1 %tobool6.not, label %if.end25, label %if.then7

if.then7:                                         ; preds = %if.then4
  %call.i.i.i.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs26, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refs26, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs26, ptr %refs26, i32 1, ptr elementtype(i32) %refs26) #15, !srcloc !69
  %asmresult.i.i.i.i.i57 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i57)
  %tobool1.not.i.i.i58 = icmp eq i32 %asmresult.i.i.i.i.i57, 0
  br i1 %tobool1.not.i.i.i58, label %if.then7.if.end15.sink.split.i.i.i63_crit_edge, label %if.else.i.i.i61, !prof !70

if.then7.if.end15.sink.split.i.i.i63_crit_edge:   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i63

if.else.i.i.i61:                                  ; preds = %if.then7
  %add.i.i.i59 = add i32 %asmresult.i.i.i.i.i57, 1
  %15 = or i32 %add.i.i.i59, %asmresult.i.i.i.i.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i60 = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i60, label %if.else.i.i.i61.refcount_inc.exit64_crit_edge, label %if.else.i.i.i61.if.end15.sink.split.i.i.i63_crit_edge, !prof !68

if.else.i.i.i61.if.end15.sink.split.i.i.i63_crit_edge: ; preds = %if.else.i.i.i61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i63

if.else.i.i.i61.refcount_inc.exit64_crit_edge:    ; preds = %if.else.i.i.i61
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit64

if.end15.sink.split.i.i.i63:                      ; preds = %if.else.i.i.i61.if.end15.sink.split.i.i.i63_crit_edge, %if.then7.if.end15.sink.split.i.i.i63_crit_edge
  %.sink.i.i.i62 = phi i32 [ 2, %if.then7.if.end15.sink.split.i.i.i63_crit_edge ], [ 1, %if.else.i.i.i61.if.end15.sink.split.i.i.i63_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs26, i32 noundef %.sink.i.i.i62) #15
  br label %refcount_inc.exit64

refcount_inc.exit64:                              ; preds = %if.end15.sink.split.i.i.i63, %if.else.i.i.i61.refcount_inc.exit64_crit_edge
  %16 = ptrtoint ptr %delayed_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %delayed_node, align 8
  %cmp.not = icmp eq ptr %17, %call2
  br i1 %cmp.not, label %do.end23, label %do.body15, !prof !68

do.body15:                                        ; preds = %refcount_inc.exit64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/delayed-inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #15, !srcloc !72
  unreachable

do.end23:                                         ; preds = %refcount_inc.exit64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %inode_lock) #15
  br label %cleanup

if.end25:                                         ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs26, i32 noundef 4) #15
  %18 = ptrtoint ptr %refs26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %refs26, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end25
  %20 = phi i32 [ %19, %if.end25 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %21 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i65 = add i32 %20, 1
  %call.i.i.i.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef %refs26, i32 noundef 4) #15
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #15
  %22 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refs26, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %24 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refs26, ptr %refs26, i32 %23, i32 %add.i.i.i65, ptr elementtype(i32) %refs26) #15, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %23
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !68

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %25 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %26, 1
  %27 = or i32 %add5.i.i.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i67 = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i67, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !68

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refs26, i32 noundef 0) #15
  %28 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %29 = phi i32 [ %26, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.i.i.i.not = icmp eq i32 %29, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #15
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.if.end31_crit_edge, label %if.then28

refcount_inc_not_zero.exit.if.end31_crit_edge:    ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then28:                                        ; preds = %refcount_inc_not_zero.exit
  %call.i.i.i.i.i68 = call zeroext i1 @__kasan_check_write(ptr noundef %refs26, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %refs26, i32 1, i32 3, i32 1) #15
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs26, ptr %refs26, i32 1, ptr elementtype(i32) %refs26) #15, !srcloc !69
  %asmresult.i.i.i.i.i69 = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i69)
  %tobool1.not.i.i.i70 = icmp eq i32 %asmresult.i.i.i.i.i69, 0
  br i1 %tobool1.not.i.i.i70, label %if.then28.if.end15.sink.split.i.i.i75_crit_edge, label %if.else.i.i.i73, !prof !70

if.then28.if.end15.sink.split.i.i.i75_crit_edge:  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i75

if.else.i.i.i73:                                  ; preds = %if.then28
  %add.i.i.i71 = add i32 %asmresult.i.i.i.i.i69, 1
  %31 = or i32 %add.i.i.i71, %asmresult.i.i.i.i.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i72 = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i72, label %if.else.i.i.i73.refcount_inc.exit76_crit_edge, label %if.else.i.i.i73.if.end15.sink.split.i.i.i75_crit_edge, !prof !68

if.else.i.i.i73.if.end15.sink.split.i.i.i75_crit_edge: ; preds = %if.else.i.i.i73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i75

if.else.i.i.i73.refcount_inc.exit76_crit_edge:    ; preds = %if.else.i.i.i73
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit76

if.end15.sink.split.i.i.i75:                      ; preds = %if.else.i.i.i73.if.end15.sink.split.i.i.i75_crit_edge, %if.then28.if.end15.sink.split.i.i.i75_crit_edge
  %.sink.i.i.i74 = phi i32 [ 2, %if.then28.if.end15.sink.split.i.i.i75_crit_edge ], [ 1, %if.else.i.i.i73.if.end15.sink.split.i.i.i75_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs26, i32 noundef %.sink.i.i.i74) #15
  br label %refcount_inc.exit76

refcount_inc.exit76:                              ; preds = %if.end15.sink.split.i.i.i75, %if.else.i.i.i73.refcount_inc.exit76_crit_edge
  %32 = ptrtoint ptr %delayed_node to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call2, ptr %delayed_node, align 8
  br label %if.end31

if.end31:                                         ; preds = %refcount_inc.exit76, %refcount_inc_not_zero.exit.if.end31_crit_edge
  %node.0 = phi ptr [ %call2, %refcount_inc.exit76 ], [ null, %refcount_inc_not_zero.exit.if.end31_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %inode_lock) #15
  br label %cleanup

if.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %inode_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end31, %do.end23, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %do.end23 ], [ %node.0, %if.end31 ], [ null, %if.end33 ], [ %9, %if.else.i.i.i.cleanup_crit_edge ], [ %9, %if.end15.sink.split.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__btrfs_commit_inode_delayed_items(ptr noundef %trans, ptr noundef %path, ptr noundef %node) unnamed_addr #4 align 64 {
entry:
  %disk_key.i4.i.i = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i.i.i = alloca %struct.btrfs_disk_key, align 8
  %key.i.i21 = alloca %struct.btrfs_key, align 8
  %head.i.i = alloca %struct.list_head, align 4
  %item_list.i.i = alloca %struct.list_head, align 4
  %batch.i.i = alloca %struct.btrfs_item_batch, align 8
  call void @__sanitizer_cov_trace_pc() #17
  %root = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 8
  %mutex.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 7
  %rb_leftmost.i.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 5, i32 1
  %2 = getelementptr inbounds %struct.list_head, ptr %item_list.i.i, i32 0, i32 1
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %3 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 3
  %slots.i.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #15
  %6 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_leftmost.i.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %item_list.i.i) #15
  %8 = ptrtoint ptr %item_list.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %item_list.i.i, ptr %item_list.i.i, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %item_list.i.i, ptr %2, align 4
  %10 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_info.i.i, align 8
  %nodesize.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %11, i32 0, i32 166
  %12 = ptrtoint ptr %nodesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nodesize.i.i.i, align 8
  %sub.i.i.i = add i32 %13, -101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i.i) #15
  %tree_list.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %batch.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %batch.i.i, align 8
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %tree_list.i.i, ptr noundef nonnull %item_list.i.i, ptr noundef nonnull %item_list.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i161.i.i, label %if.end.i.list_add_tail.exit.i.i_crit_edge

if.end.i.list_add_tail.exit.i.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i.i

if.end.i.i161.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tree_list.i.i, ptr %2, align 4
  %16 = ptrtoint ptr %tree_list.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %item_list.i.i, ptr %tree_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %7, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %item_list.i.i, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %item_list.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %tree_list.i.i, ptr %item_list.i.i, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i161.i.i, %if.end.i.list_add_tail.exit.i.i_crit_edge
  %data_len.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %7, i32 0, i32 8
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %4, align 8
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %5, align 4
  %call.i190.i.i = call ptr @rb_next(ptr noundef nonnull %7) #15
  %tobool.not191.i.i = icmp eq ptr %call.i190.i.i, null
  br i1 %tobool.not191.i.i, label %list_add_tail.exit.i.i.while.end.i.i_crit_edge, label %lor.lhs.false.preheader.i.i

list_add_tail.exit.i.i.while.end.i.i_crit_edge:   ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

lor.lhs.false.preheader.i.i:                      ; preds = %list_add_tail.exit.i.i
  %add.i.i = add i32 %20, 25
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %cleanup.i.i.lor.lhs.false.i.i_crit_edge, %lor.lhs.false.preheader.i.i
  %call.i194.i.i = phi ptr [ %call.i.i.i, %cleanup.i.i.lor.lhs.false.i.i_crit_edge ], [ %call.i190.i.i, %lor.lhs.false.preheader.i.i ]
  %curr.0193.i.i = phi ptr [ %call.i194.i.i, %cleanup.i.i.lor.lhs.false.i.i_crit_edge ], [ %7, %lor.lhs.false.preheader.i.i ]
  %total_size.0192.i.i = phi i32 [ %add8.i.i, %cleanup.i.i.lor.lhs.false.i.i_crit_edge ], [ %add.i.i, %lor.lhs.false.preheader.i.i ]
  %type.i.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %curr.0193.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %24)
  %cmp.i162.i.i = icmp eq i8 %24, 96
  br i1 %cmp.i162.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.while.end.i.i_crit_edge

lor.lhs.false.i.i.while.end.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i
  %key.i.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %curr.0193.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %key.i.i.i, align 4
  %key3.i.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call.i194.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %key3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %key3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp5.i.i.i = icmp eq i64 %26, %28
  br i1 %cmp5.i.i.i, label %land.lhs.true7.i.i.i, label %land.lhs.true.i.i.i.while.end.i.i_crit_edge

land.lhs.true.i.i.i.while.end.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

land.lhs.true7.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %type12.i.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call.i194.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %type12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type12.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %30)
  %cmp14.i.i.i = icmp eq i8 %30, 96
  br i1 %cmp14.i.i.i, label %land.lhs.true16.i.i.i, label %land.lhs.true7.i.i.i.while.end.i.i_crit_edge

land.lhs.true7.i.i.i.while.end.i.i_crit_edge:     ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

land.lhs.true16.i.i.i:                            ; preds = %land.lhs.true7.i.i.i
  %offset.i.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %curr.0193.i.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %offset.i.i.i, align 1
  %add.i.i.i = add i64 %32, 1
  %offset19.i.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call.i194.i.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %offset19.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %offset19.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %34)
  %cmp20.i.i.i = icmp eq i64 %add.i.i.i, %34
  br i1 %cmp20.i.i.i, label %if.end.i.i, label %land.lhs.true16.i.i.i.while.end.i.i_crit_edge

land.lhs.true16.i.i.i.while.end.i.i_crit_edge:    ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true16.i.i.i
  %data_len6.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call.i194.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %data_len6.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len6.i.i, align 4
  %add7.i.i = add i32 %total_size.0192.i.i, 25
  %add8.i.i = add i32 %add7.i.i, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i.i, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %add8.i.i, %sub.i.i.i
  br i1 %cmp.i.i, label %if.end.i.i.while.end.i.i_crit_edge, label %if.end10.i.i

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %tree_list11.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call.i194.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %call.i.i165.i.i = call zeroext i1 @__list_add_valid(ptr noundef %tree_list11.i.i, ptr noundef %38, ptr noundef nonnull %item_list.i.i) #15
  br i1 %call.i.i165.i.i, label %if.end.i.i167.i.i, label %if.end10.i.i.cleanup.i.i_crit_edge

if.end10.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

if.end.i.i167.i.i:                                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %tree_list11.i.i, ptr %2, align 4
  %40 = ptrtoint ptr %tree_list11.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %item_list.i.i, ptr %tree_list11.i.i, align 4
  %prev3.i.i166.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call.i194.i.i, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %prev3.i.i166.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i166.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %tree_list11.i.i, ptr %38, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i167.i.i, %if.end10.i.i.cleanup.i.i_crit_edge
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 4
  %inc.i.i = add i32 %44, 1
  store i32 %inc.i.i, ptr %5, align 4
  %45 = ptrtoint ptr %data_len6.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_len6.i.i, align 4
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %4, align 8
  %add16.i.i = add i32 %48, %46
  store i32 %add16.i.i, ptr %4, align 8
  %call.i.i.i = call ptr @rb_next(ptr noundef nonnull %call.i194.i.i) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.while.end.i.i_crit_edge, label %cleanup.i.i.lor.lhs.false.i.i_crit_edge

cleanup.i.i.lor.lhs.false.i.i_crit_edge:          ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i.i

cleanup.i.i.while.end.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %cleanup.i.i.while.end.i.i_crit_edge, %if.end.i.i.while.end.i.i_crit_edge, %land.lhs.true16.i.i.i.while.end.i.i_crit_edge, %land.lhs.true7.i.i.i.while.end.i.i_crit_edge, %land.lhs.true.i.i.i.while.end.i.i_crit_edge, %lor.lhs.false.i.i.while.end.i.i_crit_edge, %list_add_tail.exit.i.i.while.end.i.i_crit_edge
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp18.i.i = icmp eq i32 %50, 1
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end8.i.i.i

if.then19.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %key.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %7, i32 0, i32 1
  %51 = ptrtoint ptr %batch.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %key.i.i, ptr %batch.i.i, align 8
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %data_len.i.i, ptr %3, align 4
  br label %if.end51.i.i

if.end8.i.i.i:                                    ; preds = %while.end.i.i
  %add24.i.i = mul i32 %50, 21
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add24.i.i, i32 noundef 3136) #19
  %tobool26.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool26.not.i.i, label %if.end8.i.i.i.cleanup.i_crit_edge, label %if.end28.i.i

if.end8.i.i.i.cleanup.i_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end28.i.i:                                     ; preds = %if.end8.i.i.i
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %5, align 4
  %mul30.i.i = shl i32 %54, 2
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %mul30.i.i
  %55 = ptrtoint ptr %batch.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i.i, ptr %batch.i.i, align 8
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call9.i.i.i, ptr %3, align 4
  %57 = ptrtoint ptr %item_list.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn157195.i.i = load ptr, ptr %item_list.i.i, align 4
  %cmp36.not196.i.i = icmp eq ptr %.pn157195.i.i, %item_list.i.i
  br i1 %cmp36.not196.i.i, label %if.end28.i.i.if.end51.i.i_crit_edge, label %if.end28.i.i.for.body.i.i_crit_edge

if.end28.i.i.for.body.i.i_crit_edge:              ; preds = %if.end28.i.i
  br label %for.body.i.i

if.end28.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end28.i.i.for.body.i.i_crit_edge
  %.pn157198.i.i = phi ptr [ %.pn157.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn157195.i.i, %if.end28.i.i.for.body.i.i_crit_edge ]
  %i.0197.i.i = phi i32 [ %inc40.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end28.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.btrfs_key, ptr %add.ptr.i.i, i32 %i.0197.i.i
  %key37.i.i = getelementptr i8, ptr %.pn157198.i.i, i32 -20
  %58 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %key37.i.i, i32 17)
  %data_len38.i.i = getelementptr i8, ptr %.pn157198.i.i, i32 36
  %59 = ptrtoint ptr %data_len38.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_len38.i.i, align 4
  %arrayidx39.i.i = getelementptr i32, ptr %call9.i.i.i, i32 %i.0197.i.i
  %61 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx39.i.i, align 4
  %inc40.i.i = add i32 %i.0197.i.i, 1
  %62 = ptrtoint ptr %.pn157198.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn157.i.i = load ptr, ptr %.pn157198.i.i, align 4
  %cmp36.not.i.i = icmp eq ptr %.pn157.i.i, %item_list.i.i
  br i1 %cmp36.not.i.i, label %for.body.i.i.if.end51.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.if.end51.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %for.body.i.i.if.end51.i.i_crit_edge, %if.end28.i.i.if.end51.i.i_crit_edge, %if.then19.i.i
  %ins_data.0.i.i = phi ptr [ null, %if.then19.i.i ], [ %call9.i.i.i, %if.end28.i.i.if.end51.i.i_crit_edge ], [ %call9.i.i.i, %for.body.i.i.if.end51.i.i_crit_edge ]
  %call52.i.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %1, ptr noundef %path, ptr noundef nonnull %batch.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %tobool53.not.i.i = icmp eq i32 %call52.i.i, 0
  br i1 %tobool53.not.i.i, label %for.cond60.preheader.i.i, label %if.end51.i.i.cleanup.i_crit_edge

if.end51.i.i.cleanup.i_crit_edge:                 ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

for.cond60.preheader.i.i:                         ; preds = %if.end51.i.i
  %63 = ptrtoint ptr %item_list.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn199.i.i = load ptr, ptr %item_list.i.i, align 4
  %cmp62.not200.i.i = icmp eq ptr %.pn199.i.i, %item_list.i.i
  br i1 %cmp62.not200.i.i, label %for.cond60.preheader.i.i.for.end81.i.i_crit_edge, label %for.cond60.preheader.i.i.for.body64.i.i_crit_edge

for.cond60.preheader.i.i.for.body64.i.i_crit_edge: ; preds = %for.cond60.preheader.i.i
  br label %for.body64.i.i

for.cond60.preheader.i.i.for.end81.i.i_crit_edge: ; preds = %for.cond60.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end81.i.i

for.body64.i.i:                                   ; preds = %for.body64.i.i.for.body64.i.i_crit_edge, %for.cond60.preheader.i.i.for.body64.i.i_crit_edge
  %.pn201.i.i = phi ptr [ %.pn.i.i, %for.body64.i.i.for.body64.i.i_crit_edge ], [ %.pn199.i.i, %for.cond60.preheader.i.i.for.body64.i.i_crit_edge ]
  %64 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %path, align 4
  %66 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %slots.i.i, align 4
  %mul.i.i.i.i.i = mul i32 %67, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %68 = inttoptr i32 %add.i.i.i.i.i to ptr
  %call.i.i169.i.i = call i32 @btrfs_get_32(ptr noundef %65, ptr noundef %68, i32 noundef 17) #15
  %add68.i.i = add i32 %call.i.i169.i.i, 101
  %69 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %path, align 4
  %data.i.i = getelementptr i8, ptr %.pn201.i.i, i32 40
  %data_len71.i.i = getelementptr i8, ptr %.pn201.i.i, i32 36
  %71 = ptrtoint ptr %data_len71.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data_len71.i.i, align 4
  call void @write_extent_buffer(ptr noundef %70, ptr noundef %data.i.i, i32 noundef %add68.i.i, i32 noundef %72) #15
  %73 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %slots.i.i, align 4
  %inc74.i.i = add i32 %74, 1
  store i32 %inc74.i.i, ptr %slots.i.i, align 4
  %75 = ptrtoint ptr %.pn201.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn.i.i = load ptr, ptr %.pn201.i.i, align 4
  %cmp62.not.i.i = icmp eq ptr %.pn.i.i, %item_list.i.i
  br i1 %cmp62.not.i.i, label %for.body64.i.i.for.end81.i.i_crit_edge, label %for.body64.i.i.for.body64.i.i_crit_edge

for.body64.i.i.for.body64.i.i_crit_edge:          ; preds = %for.body64.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body64.i.i

for.body64.i.i.for.end81.i.i_crit_edge:           ; preds = %for.body64.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end81.i.i

for.end81.i.i:                                    ; preds = %for.body64.i.i.for.end81.i.i_crit_edge, %for.cond60.preheader.i.i.for.end81.i.i_crit_edge
  call void @btrfs_release_path(ptr noundef %path) #15
  %76 = ptrtoint ptr %item_list.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %item_list.i.i, align 4
  %cmp93.not202.i.i = icmp eq ptr %77, %item_list.i.i
  br i1 %cmp93.not202.i.i, label %for.end81.i.i.cleanup.i_crit_edge, label %for.end81.i.i.for.body95.i.i_crit_edge

for.end81.i.i.for.body95.i.i_crit_edge:           ; preds = %for.end81.i.i
  br label %for.body95.i.i

for.end81.i.i.cleanup.i_crit_edge:                ; preds = %for.end81.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

for.body95.i.i:                                   ; preds = %btrfs_delayed_item_release_metadata.exit.i.i.for.body95.i.i_crit_edge, %for.end81.i.i.for.body95.i.i_crit_edge
  %.pn156.in203.i.i = phi ptr [ %.pn156.i.i, %btrfs_delayed_item_release_metadata.exit.i.i.for.body95.i.i_crit_edge ], [ %77, %for.end81.i.i.for.body95.i.i_crit_edge ]
  %curr.4.i.i = getelementptr i8, ptr %.pn156.in203.i.i, i32 -32
  %78 = ptrtoint ptr %.pn156.in203.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn156.i.i = load ptr, ptr %.pn156.in203.i.i, align 8
  %call.i.i170.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn156.in203.i.i) #15
  br i1 %call.i.i170.i.i, label %if.end.i.i171.i.i, label %for.body95.i.i.list_del.exit.i.i_crit_edge

for.body95.i.i.list_del.exit.i.i_crit_edge:       ; preds = %for.body95.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i171.i.i:                                ; preds = %for.body95.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn156.in203.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i.i, align 4
  %81 = ptrtoint ptr %.pn156.in203.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %.pn156.in203.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i171.i.i, %for.body95.i.i.list_del.exit.i.i_crit_edge
  %85 = ptrtoint ptr %.pn156.in203.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn156.in203.i.i, align 4
  %prev.i172.i.i = getelementptr inbounds %struct.list_head, ptr %.pn156.in203.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i172.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i172.i.i, align 4
  %bytes_reserved.i.i.i = getelementptr i8, ptr %.pn156.in203.i.i, i32 16
  %87 = ptrtoint ptr %bytes_reserved.i.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %bytes_reserved.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %tobool.not.i.i.i = icmp eq i64 %88, 0
  br i1 %tobool.not.i.i.i, label %list_del.exit.i.i.btrfs_delayed_item_release_metadata.exit.i.i_crit_edge, label %if.end.i175.i.i

list_del.exit.i.i.btrfs_delayed_item_release_metadata.exit.i.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_delayed_item_release_metadata.exit.i.i

if.end.i175.i.i:                                  ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fs_info.i.i, align 8
  %delayed_block_rsv.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %90, i32 0, i32 23
  %key.i173.i.i = getelementptr i8, ptr %.pn156.in203.i.i, i32 -20
  %91 = ptrtoint ptr %key.i173.i.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 8)
  %92 = load i64, ptr %key.i173.i.i, align 4
  call fastcc void @trace_btrfs_space_reservation(ptr noundef %90, ptr noundef nonnull @.str.25, i64 noundef %92, i64 noundef %88, i32 noundef 0) #15
  %93 = ptrtoint ptr %bytes_reserved.i.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %bytes_reserved.i.i.i, align 8
  %call.i174.i.i = call i64 @btrfs_block_rsv_release(ptr noundef %90, ptr noundef %delayed_block_rsv.i.i.i, i64 noundef %94, ptr noundef null) #15
  br label %btrfs_delayed_item_release_metadata.exit.i.i

btrfs_delayed_item_release_metadata.exit.i.i:     ; preds = %if.end.i175.i.i, %list_del.exit.i.i.btrfs_delayed_item_release_metadata.exit.i.i_crit_edge
  call fastcc void @btrfs_release_delayed_item(ptr noundef %curr.4.i.i) #15
  %cmp93.not.i.i = icmp eq ptr %.pn156.i.i, %item_list.i.i
  br i1 %cmp93.not.i.i, label %btrfs_delayed_item_release_metadata.exit.i.i.cleanup.i_crit_edge, label %btrfs_delayed_item_release_metadata.exit.i.i.for.body95.i.i_crit_edge

btrfs_delayed_item_release_metadata.exit.i.i.for.body95.i.i_crit_edge: ; preds = %btrfs_delayed_item_release_metadata.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body95.i.i

btrfs_delayed_item_release_metadata.exit.i.i.cleanup.i_crit_edge: ; preds = %btrfs_delayed_item_release_metadata.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

cleanup.i:                                        ; preds = %btrfs_delayed_item_release_metadata.exit.i.i.cleanup.i_crit_edge, %for.end81.i.i.cleanup.i_crit_edge, %if.end51.i.i.cleanup.i_crit_edge, %if.end8.i.i.i.cleanup.i_crit_edge
  %ret.1.i.i = phi i32 [ %call52.i.i, %if.end51.i.i.cleanup.i_crit_edge ], [ -12, %if.end8.i.i.i.cleanup.i_crit_edge ], [ 0, %for.end81.i.i.cleanup.i_crit_edge ], [ 0, %btrfs_delayed_item_release_metadata.exit.i.i.cleanup.i_crit_edge ]
  %ins_data.1.i.i = phi ptr [ %ins_data.0.i.i, %if.end51.i.i.cleanup.i_crit_edge ], [ null, %if.end8.i.i.i.cleanup.i_crit_edge ], [ %ins_data.0.i.i, %for.end81.i.i.cleanup.i_crit_edge ], [ %ins_data.0.i.i, %btrfs_delayed_item_release_metadata.exit.i.i.cleanup.i_crit_edge ]
  call void @kfree(ptr noundef %ins_data.1.i.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %item_list.i.i) #15
  call void @mutex_unlock(ptr noundef %mutex.i) #15
  %cmp.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end:                                           ; preds = %while.body.i
  call void @mutex_unlock(ptr noundef %mutex.i) #15
  %95 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %root, align 8
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #15
  %rb_leftmost.i.i23 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 6, i32 1
  %97 = ptrtoint ptr %rb_leftmost.i.i23 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rb_leftmost.i.i23, align 4
  %tobool.not33.i = icmp eq ptr %98, null
  br i1 %tobool.not33.i, label %if.end.btrfs_delete_delayed_items.exit_crit_edge, label %if.end.lr.ph.i

if.end.btrfs_delete_delayed_items.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_delete_delayed_items.exit

if.end.lr.ph.i:                                   ; preds = %if.end
  %99 = getelementptr inbounds %struct.btrfs_key, ptr %key.i.i21, i32 0, i32 1
  %100 = getelementptr inbounds %struct.btrfs_key, ptr %key.i.i21, i32 0, i32 2
  %101 = getelementptr inbounds %struct.list_head, ptr %head.i.i, i32 0, i32 1
  %102 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i.i, i32 0, i32 1
  %103 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i.i, i32 0, i32 2
  %104 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i4.i.i, i32 0, i32 1
  %105 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i4.i.i, i32 0, i32 2
  %fs_info1.i.i.i = getelementptr inbounds %struct.btrfs_root, ptr %96, i32 0, i32 8
  br label %if.end.i26

if.end.i26:                                       ; preds = %do_again.backedge.i.if.end.i26_crit_edge, %if.end.lr.ph.i
  %106 = phi ptr [ %98, %if.end.lr.ph.i ], [ %108, %do_again.backedge.i.if.end.i26_crit_edge ]
  %key.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %106, i32 0, i32 1
  %call1.i = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %96, ptr noundef %key.i, ptr noundef %path, i32 noundef -1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i25 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i25, label %if.end.i26.btrfs_delete_delayed_items.exit_crit_edge, label %if.else.i

if.end.i26.btrfs_delete_delayed_items.exit_crit_edge: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_delete_delayed_items.exit

if.else.i:                                        ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp3.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp3.not.i, label %if.end11.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  %call.i.i = call ptr @rb_next(ptr noundef nonnull %106) #15
  call fastcc void @btrfs_release_delayed_item(ptr noundef nonnull %106) #15
  call void @btrfs_release_path(ptr noundef %path) #15
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.then4.i.btrfs_delete_delayed_items.exit_crit_edge, label %if.then4.i.do_again.backedge.i_crit_edge

if.then4.i.do_again.backedge.i_crit_edge:         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_again.backedge.i

if.then4.i.btrfs_delete_delayed_items.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_delete_delayed_items.exit

do_again.backedge.i:                              ; preds = %btrfs_batch_delete_items.exit.i, %if.then4.i.do_again.backedge.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #15
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #15
  %107 = ptrtoint ptr %rb_leftmost.i.i23 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rb_leftmost.i.i23, align 4
  %tobool.not.i27 = icmp eq ptr %108, null
  br i1 %tobool.not.i27, label %do_again.backedge.i.btrfs_delete_delayed_items.exit_crit_edge, label %do_again.backedge.i.if.end.i26_crit_edge

do_again.backedge.i.if.end.i26_crit_edge:         ; preds = %do_again.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i26

do_again.backedge.i.btrfs_delete_delayed_items.exit_crit_edge: ; preds = %do_again.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_delete_delayed_items.exit

if.end11.i:                                       ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i.i21) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i.i) #15
  %109 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %path, align 4
  %tobool.not.i.i28 = icmp eq ptr %110, null
  br i1 %tobool.not.i.i28, label %do.body4.i.i, label %do.end9.i.i, !prof !70

do.body4.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/delayed-inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 806, 0\0A.popsection", ""() #15, !srcloc !74
  unreachable

do.end9.i.i:                                      ; preds = %if.end11.i
  %111 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %slots.i.i, align 4
  %pages.i.i.i = getelementptr inbounds %struct.extent_buffer, ptr %110, i32 0, i32 12
  %113 = ptrtoint ptr %pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pages.i.i.i, align 4
  %call.i.i.i29 = call ptr @page_address(ptr noundef %114) #15
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %110, align 8
  %conv.i.i.i = trunc i64 %116 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 4095
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i29, i32 %and.i.i.i
  %nritems.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i, i32 0, i32 7
  %117 = ptrtoint ptr %nritems.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %nritems.i.i.i, align 1
  %119 = call i32 @llvm.bswap.i32(i32 %118) #15
  %sub.i.i = add i32 %119, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %sub.i.i)
  %cmp.i.i30 = icmp sgt i32 %112, %sub.i.i
  br i1 %cmp.i.i30, label %do.end9.i.i.btrfs_batch_delete_items.exit.i_crit_edge, label %if.end14.i.i

do.end9.i.i.btrfs_batch_delete_items.exit.i_crit_edge: ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_batch_delete_items.exit.i

if.end14.i.i:                                     ; preds = %do.end9.i.i
  %120 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %head.i.i, ptr %head.i.i, align 4
  %121 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %head.i.i, ptr %101, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i.i) #15
  %mul.i.i.i.i.i.i = mul i32 %112, 25
  %add.i.i.i.i.i.i = add i32 %mul.i.i.i.i.i.i, 101
  %122 = call ptr @memset(ptr %disk_key.i.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef nonnull %110, ptr noundef nonnull %disk_key.i.i.i, i32 noundef %add.i.i.i.i.i.i, i32 noundef 17) #15
  %123 = ptrtoint ptr %103 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 8)
  %124 = load i64, ptr %103, align 1
  %125 = call i64 @llvm.bswap.i64(i64 %124) #15
  %126 = ptrtoint ptr %100 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 8)
  store i64 %125, ptr %100, align 1
  %127 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %102, align 8
  %129 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %99, align 8
  %130 = ptrtoint ptr %disk_key.i.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %disk_key.i.i.i, align 8
  %132 = call i64 @llvm.bswap.i64(i64 %131) #15
  %133 = ptrtoint ptr %key.i.i21 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %key.i.i21, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i.i) #15
  %call1618.i.i = call i32 @btrfs_comp_cpu_keys(ptr noundef %key.i, ptr noundef nonnull %key.i.i21) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1618.i.i)
  %cmp1719.i.i = icmp eq i32 %call1618.i.i, 0
  br i1 %cmp1719.i.i, label %if.end14.i.i.while.body.i.i_crit_edge, label %if.end14.i.i.btrfs_batch_delete_items.exit.i_crit_edge

if.end14.i.i.btrfs_batch_delete_items.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_batch_delete_items.exit.i

if.end14.i.i.while.body.i.i_crit_edge:            ; preds = %if.end14.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end29.i.i.while.body.i.i_crit_edge, %if.end14.i.i.while.body.i.i_crit_edge
  %key1524.i.i = phi ptr [ %key3.i.i.i39, %if.end29.i.i.while.body.i.i_crit_edge ], [ %key.i, %if.end14.i.i.while.body.i.i_crit_edge ]
  %next.022.i.i = phi ptr [ %call.i3.i.i, %if.end29.i.i.while.body.i.i_crit_edge ], [ %106, %if.end14.i.i.while.body.i.i_crit_edge ]
  %nitems.021.i.i = phi i32 [ %inc.i.i35, %if.end29.i.i.while.body.i.i_crit_edge ], [ 0, %if.end14.i.i.while.body.i.i_crit_edge ]
  %i.020.i.i = phi i32 [ %inc26.i.i, %if.end29.i.i.while.body.i.i_crit_edge ], [ %112, %if.end14.i.i.while.body.i.i_crit_edge ]
  %tree_list.i.i31 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %next.022.i.i, i32 0, i32 2
  %134 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %101, align 4
  %call.i.i.i.i32 = call zeroext i1 @__list_add_valid(ptr noundef %tree_list.i.i31, ptr noundef %135, ptr noundef nonnull %head.i.i) #15
  br i1 %call.i.i.i.i32, label %if.end.i.i.i.i34, label %while.body.i.i.list_add_tail.exit.i.i36_crit_edge

while.body.i.i.list_add_tail.exit.i.i36_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i.i36

if.end.i.i.i.i34:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %136 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %tree_list.i.i31, ptr %101, align 4
  %137 = ptrtoint ptr %tree_list.i.i31 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %head.i.i, ptr %tree_list.i.i31, align 4
  %prev3.i.i.i.i33 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %next.022.i.i, i32 0, i32 2, i32 1
  %138 = ptrtoint ptr %prev3.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev3.i.i.i.i33, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %tree_list.i.i31, ptr %135, align 4
  br label %list_add_tail.exit.i.i36

list_add_tail.exit.i.i36:                         ; preds = %if.end.i.i.i.i34, %while.body.i.i.list_add_tail.exit.i.i36_crit_edge
  %inc.i.i35 = add i32 %nitems.021.i.i, 1
  %call.i3.i.i = call ptr @rb_next(ptr noundef nonnull %next.022.i.i) #15
  %tobool19.not.i.i = icmp eq ptr %call.i3.i.i, null
  br i1 %tobool19.not.i.i, label %list_add_tail.exit.i.i36.while.end.i.i50_crit_edge, label %if.end21.i.i

list_add_tail.exit.i.i36.while.end.i.i50_crit_edge: ; preds = %list_add_tail.exit.i.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i50

if.end21.i.i:                                     ; preds = %list_add_tail.exit.i.i36
  %type.i.i.i37 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %next.022.i.i, i32 0, i32 1, i32 1
  %140 = ptrtoint ptr %type.i.i.i37 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %type.i.i.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %141)
  %cmp.i.i.i38 = icmp eq i8 %141, 96
  br i1 %cmp.i.i.i38, label %land.lhs.true.i.i.i41, label %if.end21.i.i.while.end.i.i50_crit_edge

if.end21.i.i.while.end.i.i50_crit_edge:           ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i50

land.lhs.true.i.i.i41:                            ; preds = %if.end21.i.i
  %142 = ptrtoint ptr %key1524.i.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 8)
  %143 = load i64, ptr %key1524.i.i, align 4
  %key3.i.i.i39 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call.i3.i.i, i32 0, i32 1
  %144 = ptrtoint ptr %key3.i.i.i39 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 8)
  %145 = load i64, ptr %key3.i.i.i39, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %143, i64 %145)
  %cmp5.i.i.i40 = icmp eq i64 %143, %145
  br i1 %cmp5.i.i.i40, label %land.lhs.true7.i.i.i44, label %land.lhs.true.i.i.i41.while.end.i.i50_crit_edge

land.lhs.true.i.i.i41.while.end.i.i50_crit_edge:  ; preds = %land.lhs.true.i.i.i41
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i50

land.lhs.true7.i.i.i44:                           ; preds = %land.lhs.true.i.i.i41
  %type12.i.i.i42 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call.i3.i.i, i32 0, i32 1, i32 1
  %146 = ptrtoint ptr %type12.i.i.i42 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %type12.i.i.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %147)
  %cmp14.i.i.i43 = icmp eq i8 %147, 96
  br i1 %cmp14.i.i.i43, label %land.lhs.true16.i.i.i49, label %land.lhs.true7.i.i.i44.while.end.i.i50_crit_edge

land.lhs.true7.i.i.i44.while.end.i.i50_crit_edge: ; preds = %land.lhs.true7.i.i.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i50

land.lhs.true16.i.i.i49:                          ; preds = %land.lhs.true7.i.i.i44
  %offset.i.i.i45 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %next.022.i.i, i32 0, i32 1, i32 2
  %148 = ptrtoint ptr %offset.i.i.i45 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 8)
  %149 = load i64, ptr %offset.i.i.i45, align 1
  %add.i.i.i46 = add i64 %149, 1
  %offset19.i.i.i47 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call.i3.i.i, i32 0, i32 1, i32 2
  %150 = ptrtoint ptr %offset19.i.i.i47 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 8)
  %151 = load i64, ptr %offset19.i.i.i47, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i46, i64 %151)
  %cmp20.i.i.i48 = icmp eq i64 %add.i.i.i46, %151
  br i1 %cmp20.i.i.i48, label %if.end25.i.i, label %land.lhs.true16.i.i.i49.while.end.i.i50_crit_edge

land.lhs.true16.i.i.i49.while.end.i.i50_crit_edge: ; preds = %land.lhs.true16.i.i.i49
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i50

if.end25.i.i:                                     ; preds = %land.lhs.true16.i.i.i49
  %inc26.i.i = add i32 %i.020.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc26.i.i, i32 %sub.i.i)
  %cmp27.i.i = icmp sgt i32 %inc26.i.i, %sub.i.i
  br i1 %cmp27.i.i, label %if.end25.i.i.while.end.i.i50_crit_edge, label %if.end29.i.i

if.end25.i.i.while.end.i.i50_crit_edge:           ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i50

if.end29.i.i:                                     ; preds = %if.end25.i.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i4.i.i) #15
  %mul.i.i.i.i5.i.i = mul i32 %inc26.i.i, 25
  %add.i.i.i.i6.i.i = add i32 %mul.i.i.i.i5.i.i, 101
  %152 = call ptr @memset(ptr %disk_key.i4.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef nonnull %110, ptr noundef nonnull %disk_key.i4.i.i, i32 noundef %add.i.i.i.i6.i.i, i32 noundef 17) #15
  %153 = ptrtoint ptr %105 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 8)
  %154 = load i64, ptr %105, align 1
  %155 = call i64 @llvm.bswap.i64(i64 %154) #15
  %156 = ptrtoint ptr %100 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 8)
  store i64 %155, ptr %100, align 1
  %157 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %104, align 8
  %159 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %99, align 8
  %160 = ptrtoint ptr %disk_key.i4.i.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %disk_key.i4.i.i, align 8
  %162 = call i64 @llvm.bswap.i64(i64 %161) #15
  %163 = ptrtoint ptr %key.i.i21 to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %162, ptr %key.i.i21, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i4.i.i) #15
  %call16.i.i = call i32 @btrfs_comp_cpu_keys(ptr noundef %key3.i.i.i39, ptr noundef nonnull %key.i.i21) #20
  %cmp17.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %cmp17.i.i, label %if.end29.i.i.while.body.i.i_crit_edge, label %if.end29.i.i.while.end.i.i50_crit_edge

if.end29.i.i.while.end.i.i50_crit_edge:           ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i50

if.end29.i.i.while.body.i.i_crit_edge:            ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

while.end.i.i50:                                  ; preds = %if.end29.i.i.while.end.i.i50_crit_edge, %if.end25.i.i.while.end.i.i50_crit_edge, %land.lhs.true16.i.i.i49.while.end.i.i50_crit_edge, %land.lhs.true7.i.i.i44.while.end.i.i50_crit_edge, %land.lhs.true.i.i.i41.while.end.i.i50_crit_edge, %if.end21.i.i.while.end.i.i50_crit_edge, %list_add_tail.exit.i.i36.while.end.i.i50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i35)
  %tobool30.not.i.i = icmp eq i32 %inc.i.i35, 0
  br i1 %tobool30.not.i.i, label %while.end.i.i50.btrfs_batch_delete_items.exit.i_crit_edge, label %if.end32.i.i

while.end.i.i50.btrfs_batch_delete_items.exit.i_crit_edge: ; preds = %while.end.i.i50
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_batch_delete_items.exit.i

if.end32.i.i:                                     ; preds = %while.end.i.i50
  %164 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %slots.i.i, align 4
  %call35.i.i = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %96, ptr noundef %path, i32 noundef %165, i32 noundef %inc.i.i35) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end38.i.i, label %if.end32.i.i.btrfs_batch_delete_items.exit.i_crit_edge

if.end32.i.i.btrfs_batch_delete_items.exit.i_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_batch_delete_items.exit.i

if.end38.i.i:                                     ; preds = %if.end32.i.i
  %166 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %head.i.i, align 4
  %cmp46.not31.i.i = icmp eq ptr %167, %head.i.i
  br i1 %cmp46.not31.i.i, label %if.end38.i.i.btrfs_batch_delete_items.exit.i_crit_edge, label %if.end38.i.i.for.body.i.i54_crit_edge

if.end38.i.i.for.body.i.i54_crit_edge:            ; preds = %if.end38.i.i
  br label %for.body.i.i54

if.end38.i.i.btrfs_batch_delete_items.exit.i_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_batch_delete_items.exit.i

for.body.i.i54:                                   ; preds = %list_del.exit.i.i59.for.body.i.i54_crit_edge, %if.end38.i.i.for.body.i.i54_crit_edge
  %.pn.in32.i.i = phi ptr [ %.pn.i.i51, %list_del.exit.i.i59.for.body.i.i54_crit_edge ], [ %167, %if.end38.i.i.for.body.i.i54_crit_edge ]
  %curr.0.i.i = getelementptr i8, ptr %.pn.in32.i.i, i32 -32
  %168 = ptrtoint ptr %.pn.in32.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %.pn.i.i51 = load ptr, ptr %.pn.in32.i.i, align 8
  %bytes_reserved.i.i.i52 = getelementptr i8, ptr %.pn.in32.i.i, i32 16
  %169 = ptrtoint ptr %bytes_reserved.i.i.i52 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %bytes_reserved.i.i.i52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %170)
  %tobool.not.i.i.i53 = icmp eq i64 %170, 0
  br i1 %tobool.not.i.i.i53, label %for.body.i.i54.btrfs_delayed_item_release_metadata.exit.i.i56_crit_edge, label %if.end.i11.i.i

for.body.i.i54.btrfs_delayed_item_release_metadata.exit.i.i56_crit_edge: ; preds = %for.body.i.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_delayed_item_release_metadata.exit.i.i56

if.end.i11.i.i:                                   ; preds = %for.body.i.i54
  call void @__sanitizer_cov_trace_pc() #17
  %171 = ptrtoint ptr %fs_info1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %fs_info1.i.i.i, align 8
  %delayed_block_rsv.i.i.i55 = getelementptr inbounds %struct.btrfs_fs_info, ptr %172, i32 0, i32 23
  %key.i9.i.i = getelementptr i8, ptr %.pn.in32.i.i, i32 -20
  %173 = ptrtoint ptr %key.i9.i.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 8)
  %174 = load i64, ptr %key.i9.i.i, align 4
  call fastcc void @trace_btrfs_space_reservation(ptr noundef %172, ptr noundef nonnull @.str.25, i64 noundef %174, i64 noundef %170, i32 noundef 0) #15
  %175 = ptrtoint ptr %bytes_reserved.i.i.i52 to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %bytes_reserved.i.i.i52, align 8
  %call.i10.i.i = call i64 @btrfs_block_rsv_release(ptr noundef %172, ptr noundef %delayed_block_rsv.i.i.i55, i64 noundef %176, ptr noundef null) #15
  br label %btrfs_delayed_item_release_metadata.exit.i.i56

btrfs_delayed_item_release_metadata.exit.i.i56:   ; preds = %if.end.i11.i.i, %for.body.i.i54.btrfs_delayed_item_release_metadata.exit.i.i56_crit_edge
  %call.i.i12.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in32.i.i) #15
  br i1 %call.i.i12.i.i, label %if.end.i.i13.i.i, label %btrfs_delayed_item_release_metadata.exit.i.i56.list_del.exit.i.i59_crit_edge

btrfs_delayed_item_release_metadata.exit.i.i56.list_del.exit.i.i59_crit_edge: ; preds = %btrfs_delayed_item_release_metadata.exit.i.i56
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i59

if.end.i.i13.i.i:                                 ; preds = %btrfs_delayed_item_release_metadata.exit.i.i56
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %.pn.in32.i.i, i32 0, i32 1
  %177 = ptrtoint ptr %prev.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %prev.i.i.i.i57, align 4
  %179 = ptrtoint ptr %.pn.in32.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %.pn.in32.i.i, align 4
  %prev1.i.i.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %prev1.i.i.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %178, ptr %prev1.i.i.i.i.i58, align 4
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %180, ptr %178, align 4
  br label %list_del.exit.i.i59

list_del.exit.i.i59:                              ; preds = %if.end.i.i13.i.i, %btrfs_delayed_item_release_metadata.exit.i.i56.list_del.exit.i.i59_crit_edge
  %183 = ptrtoint ptr %.pn.in32.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in32.i.i, align 4
  %prev.i14.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in32.i.i, i32 0, i32 1
  %184 = ptrtoint ptr %prev.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i14.i.i, align 4
  call fastcc void @btrfs_release_delayed_item(ptr noundef %curr.0.i.i) #15
  %cmp46.not.i.i = icmp eq ptr %.pn.i.i51, %head.i.i
  br i1 %cmp46.not.i.i, label %list_del.exit.i.i59.btrfs_batch_delete_items.exit.i_crit_edge, label %list_del.exit.i.i59.for.body.i.i54_crit_edge

list_del.exit.i.i59.for.body.i.i54_crit_edge:     ; preds = %list_del.exit.i.i59
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i54

list_del.exit.i.i59.btrfs_batch_delete_items.exit.i_crit_edge: ; preds = %list_del.exit.i.i59
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_batch_delete_items.exit.i

btrfs_batch_delete_items.exit.i:                  ; preds = %list_del.exit.i.i59.btrfs_batch_delete_items.exit.i_crit_edge, %if.end38.i.i.btrfs_batch_delete_items.exit.i_crit_edge, %if.end32.i.i.btrfs_batch_delete_items.exit.i_crit_edge, %while.end.i.i50.btrfs_batch_delete_items.exit.i_crit_edge, %if.end14.i.i.btrfs_batch_delete_items.exit.i_crit_edge, %do.end9.i.i.btrfs_batch_delete_items.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i.i) #15
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i21) #15
  call void @btrfs_release_path(ptr noundef %path) #15
  br label %do_again.backedge.i

btrfs_delete_delayed_items.exit:                  ; preds = %do_again.backedge.i.btrfs_delete_delayed_items.exit_crit_edge, %if.then4.i.btrfs_delete_delayed_items.exit_crit_edge, %if.end.i26.btrfs_delete_delayed_items.exit_crit_edge, %if.end.btrfs_delete_delayed_items.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %if.end.btrfs_delete_delayed_items.exit_crit_edge ], [ 0, %do_again.backedge.i.btrfs_delete_delayed_items.exit_crit_edge ], [ %call1.i, %if.end.i26.btrfs_delete_delayed_items.exit_crit_edge ], [ 0, %if.then4.i.btrfs_delete_delayed_items.exit_crit_edge ]
  call void @btrfs_release_path(ptr noundef %path) #15
  call void @mutex_unlock(ptr noundef %mutex.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool3.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool3.not, label %if.end5, label %btrfs_delete_delayed_items.exit.cleanup_crit_edge

btrfs_delete_delayed_items.exit.cleanup_crit_edge: ; preds = %btrfs_delete_delayed_items.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %btrfs_delete_delayed_items.exit
  %185 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %root, align 8
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #15
  %flags.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 11
  %187 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %flags.i, align 4
  %189 = and i32 %188, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.not.i61 = icmp eq i32 %189, 0
  br i1 %tobool.not.i61, label %if.end5.btrfs_update_delayed_inode.exit_crit_edge, label %if.end.i62

if.end5.btrfs_update_delayed_inode.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_update_delayed_inode.exit

if.end.i62:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i = call fastcc i32 @__btrfs_update_delayed_inode(ptr noundef %trans, ptr noundef %186, ptr noundef %path, ptr noundef %node) #15
  br label %btrfs_update_delayed_inode.exit

btrfs_update_delayed_inode.exit:                  ; preds = %if.end.i62, %if.end5.btrfs_update_delayed_inode.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i62 ], [ 0, %if.end5.btrfs_update_delayed_inode.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #15
  br label %cleanup

cleanup:                                          ; preds = %btrfs_update_delayed_inode.exit, %btrfs_delete_delayed_items.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %btrfs_update_delayed_inode.exit ], [ %ret.1.i, %btrfs_delete_delayed_items.exit.cleanup_crit_edge ], [ %ret.1.i.i, %cleanup.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_commit_inode_delayed_inode(ptr noundef %inode) local_unnamed_addr #2 align 64 {
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
  %call = tail call fastcc ptr @btrfs_get_delayed_node(ptr noundef %inode)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %flags = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %root8 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %root8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %root8, align 8
  %call9 = tail call ptr @btrfs_join_transaction(ptr noundef %8) #15
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %call9 to i32
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end6
  %call14 = tail call ptr @btrfs_alloc_path() #15
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.trans_out_crit_edge, label %if.end17

if.end13.trans_out_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %trans_out

if.end17:                                         ; preds = %if.end13
  %block_rsv18 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call9, i32 0, i32 5
  %10 = ptrtoint ptr %block_rsv18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block_rsv18, align 8
  %delayed_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 23
  store ptr %delayed_block_rsv, ptr %block_rsv18, align 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool23.not = icmp eq i32 %14, 0
  br i1 %tobool23.not, label %if.end17.if.end27_crit_edge, label %if.then24

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %root8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %root8, align 8
  %call26 = tail call fastcc i32 @__btrfs_update_delayed_inode(ptr noundef %call9, ptr noundef %16, ptr noundef nonnull %call14, ptr noundef nonnull %call)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end17.if.end27_crit_edge
  %ret.0 = phi i32 [ %call26, %if.then24 ], [ 0, %if.end17.if.end27_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  tail call void @btrfs_free_path(ptr noundef nonnull %call14) #15
  %17 = ptrtoint ptr %block_rsv18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %11, ptr %block_rsv18, align 8
  br label %trans_out

trans_out:                                        ; preds = %if.end27, %if.end13.trans_out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end27 ], [ -12, %if.end13.trans_out_crit_edge ]
  %call30 = tail call i32 @btrfs_end_transaction(ptr noundef %call9) #15
  tail call void @btrfs_btree_balance_dirty(ptr noundef %3) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %trans_out, %if.then11, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end.cleanup.sink.split_crit_edge ], [ %9, %if.then11 ], [ %ret.1, %trans_out ]
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %call, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_join_transaction(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__btrfs_update_delayed_inode(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #15
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %node, align 8
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %key, align 8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %2, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %3, align 1
  %flags = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 11
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %. = select i1 %tobool.not, i32 1, i32 -1
  %call2 = call i32 @btrfs_lookup_inode(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef nonnull %key, i32 noundef %.) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp sgt i32 %call2, 0
  %spec.store.select = select i1 %cmp, i32 -2, i32 %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp5 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp5, label %entry.out_crit_edge, label %if.end7

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end7:                                          ; preds = %entry
  %12 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %14 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %15, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %16 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %13, ptr noundef %16, i32 noundef 17) #15
  %add = add i32 %call.i.i, 101
  %inode_item10 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 8
  call void @write_extent_buffer(ptr noundef %13, ptr noundef %inode_item10, i32 noundef %add, i32 noundef 160) #15
  call void @btrfs_mark_buffer_dirty(ptr noundef %13) #15
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %if.end7.out_crit_edge, label %if.end15

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end15:                                         ; preds = %if.end7
  %20 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slots, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %slots, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %13, i32 0, i32 12
  %22 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %23) #15
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %13, align 8
  %conv.i = trunc i64 %25 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %26 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %nritems.i, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %27) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %28)
  %cmp21.not = icmp ult i32 %inc, %28
  br i1 %cmp21.not, label %if.end15.again_crit_edge, label %search

if.end15.again_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %again

again:                                            ; preds = %cond.end, %if.end15.again_crit_edge
  %leaf.0 = phi ptr [ %91, %cond.end ], [ %13, %if.end15.again_crit_edge ]
  %29 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #15
  %31 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %30, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %33 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %leaf.0, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #15
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %32, align 1
  %36 = call i64 @llvm.bswap.i64(i64 %35) #15
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %3, align 1
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %31, align 8
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %2, align 8
  %41 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %disk_key.i, align 8
  %43 = call i64 @llvm.bswap.i64(i64 %42) #15
  %44 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #15
  %45 = ptrtoint ptr %node to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %node, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %46)
  %cmp28.not = icmp eq i64 %43, %46
  %47 = and i8 %39, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %47)
  %switch = icmp eq i8 %47, 12
  %or.cond = select i1 %cmp28.not, i1 %switch, i1 false
  br i1 %or.cond, label %if.end39, label %again.out_crit_edge

again.out_crit_edge:                              ; preds = %again
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end39:                                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %slots, align 4
  %call.i160 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef %49, i32 noundef 1) #15
  br label %out

out:                                              ; preds = %if.end39, %again.out_crit_edge, %if.end7.out_crit_edge, %entry.out_crit_edge
  %call.i161 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i, label %out.btrfs_release_delayed_iref.exit_crit_edge, label %if.then.i

out.btrfs_release_delayed_iref.exit_crit_edge:    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_release_delayed_iref.exit

if.then.i:                                        ; preds = %out
  %root.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 2
  %50 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %root.i, align 8
  %tobool1.not.i = icmp eq ptr %51, null
  br i1 %tobool1.not.i, label %cond.false.i, label %cond.end.i, !prof !70

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.16, i32 noundef 923) #21
  unreachable

cond.end.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %count.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 12
  %52 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %53, -1
  store i32 %dec.i, ptr %count.i, align 4
  %fs_info.i = getelementptr inbounds %struct.btrfs_root, ptr %51, i32 0, i32 8
  %54 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fs_info.i, align 8
  %delayed_root5.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %55, i32 0, i32 150
  %56 = ptrtoint ptr %delayed_root5.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %delayed_root5.i, align 4
  call fastcc void @finish_one_item(ptr noundef %57) #15
  br label %btrfs_release_delayed_iref.exit

btrfs_release_delayed_iref.exit:                  ; preds = %cond.end.i, %out.btrfs_release_delayed_iref.exit_crit_edge
  call void @btrfs_release_path(ptr noundef %path) #15
  br label %err_out

err_out:                                          ; preds = %search.err_out_crit_edge, %btrfs_release_delayed_iref.exit
  %ret.2 = phi i32 [ %spec.store.select, %btrfs_release_delayed_iref.exit ], [ %call99, %search.err_out_crit_edge ]
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 1
  %58 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %bytes_reserved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool.not.i162 = icmp eq i64 %59, 0
  br i1 %tobool.not.i162, label %err_out.btrfs_delayed_inode_release_metadata.exit_crit_edge, label %if.end.i

err_out.btrfs_delayed_inode_release_metadata.exit_crit_edge: ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_delayed_inode_release_metadata.exit

if.end.i:                                         ; preds = %err_out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp41 = icmp slt i32 %ret.2, 0
  %delayed_block_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 23
  %60 = ptrtoint ptr %node to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %node, align 8
  call fastcc void @trace_btrfs_space_reservation(ptr noundef %1, ptr noundef nonnull @.str.17, i64 noundef %61, i64 noundef %59, i32 noundef 0) #15
  %62 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %bytes_reserved.i, align 8
  %call.i163 = call i64 @btrfs_block_rsv_release(ptr noundef %1, ptr noundef %delayed_block_rsv.i, i64 noundef %63, ptr noundef null) #15
  %root.i164 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 2
  %64 = ptrtoint ptr %root.i164 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %root.i164, align 8
  %66 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %bytes_reserved.i, align 8
  %conv.i165 = trunc i64 %67 to i32
  br i1 %cmp41, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__btrfs_qgroup_free_meta(ptr noundef %65, i32 noundef %conv.i165, i32 noundef 2) #15
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @btrfs_qgroup_convert_reserved_meta(ptr noundef %65, i32 noundef %conv.i165) #15
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then4.i
  %68 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 0, ptr %bytes_reserved.i, align 8
  br label %btrfs_delayed_inode_release_metadata.exit

btrfs_delayed_inode_release_metadata.exit:        ; preds = %if.end9.i, %err_out.btrfs_delayed_inode_release_metadata.exit_crit_edge
  %tobool.not.i166 = icmp eq ptr %node, null
  br i1 %tobool.not.i166, label %btrfs_delayed_inode_release_metadata.exit.btrfs_release_delayed_inode.exit_crit_edge, label %land.lhs.true.i

btrfs_delayed_inode_release_metadata.exit.btrfs_release_delayed_inode.exit_crit_edge: ; preds = %btrfs_delayed_inode_release_metadata.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_release_delayed_inode.exit

land.lhs.true.i:                                  ; preds = %btrfs_delayed_inode_release_metadata.exit
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags, align 4
  %71 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool1.not.i168 = icmp eq i32 %71, 0
  br i1 %tobool1.not.i168, label %land.lhs.true.i.btrfs_release_delayed_inode.exit_crit_edge, label %do.body.i

land.lhs.true.i.btrfs_release_delayed_inode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_release_delayed_inode.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  %root.i169 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 2
  %72 = ptrtoint ptr %root.i169 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %root.i169, align 8
  %tobool2.not.i = icmp eq ptr %73, null
  br i1 %tobool2.not.i, label %do.body7.i, label %do.end12.i, !prof !70

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/delayed-inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 908, 0\0A.popsection", ""() #15, !srcloc !75
  unreachable

do.end12.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #15
  %count.i170 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 12
  %74 = ptrtoint ptr %count.i170 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %count.i170, align 4
  %dec.i171 = add i32 %75, -1
  store i32 %dec.i171, ptr %count.i170, align 4
  %76 = ptrtoint ptr %root.i169 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %root.i169, align 8
  %fs_info.i172 = getelementptr inbounds %struct.btrfs_root, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %fs_info.i172 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fs_info.i172, align 8
  %delayed_root15.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %79, i32 0, i32 150
  %80 = ptrtoint ptr %delayed_root15.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %delayed_root15.i, align 4
  call fastcc void @finish_one_item(ptr noundef %81) #15
  br label %btrfs_release_delayed_inode.exit

btrfs_release_delayed_inode.exit:                 ; preds = %do.end12.i, %land.lhs.true.i.btrfs_release_delayed_inode.exit_crit_edge, %btrfs_delayed_inode_release_metadata.exit.btrfs_release_delayed_inode.exit_crit_edge
  %82 = zext i32 %ret.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %ret.2, label %do.body [
    i32 0, label %btrfs_release_delayed_inode.exit.if.end96_crit_edge
    i32 -2, label %btrfs_release_delayed_inode.exit.if.end96_crit_edge174
  ]

btrfs_release_delayed_inode.exit.if.end96_crit_edge174: ; preds = %btrfs_release_delayed_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

btrfs_release_delayed_inode.exit.if.end96_crit_edge: ; preds = %btrfs_release_delayed_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

do.body:                                          ; preds = %btrfs_release_delayed_inode.exit
  %fs_info48 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %83 = ptrtoint ptr %fs_info48 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fs_info48, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %84, i32 0, i32 149
  %call49 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %do.body.if.end93_crit_edge

do.body.if.end93_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end93

if.then51:                                        ; preds = %do.body
  %85 = zext i32 %ret.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %ret.2, label %do.end [
    i32 -5, label %if.then51.do.body77_crit_edge
    i32 -30, label %if.then51.do.body77_crit_edge175
  ]

if.then51.do.body77_crit_edge175:                 ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body77

if.then51.do.body77_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body77

do.end:                                           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 999, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %ret.2) #15
  br label %if.end93

do.body77:                                        ; preds = %if.then51.do.body77_crit_edge, %if.then51.do.body77_crit_edge175
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__btrfs_update_delayed_inode.__UNIQUE_ID_ddebug925, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__btrfs_update_delayed_inode, %if.then87)) #15
          to label %if.end93 [label %if.then87], !srcloc !71

if.then87:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %fs_info48 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fs_info48, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %87, ptr noundef nonnull @.str.9, i32 noundef %ret.2) #18
  br label %if.end93

if.end93:                                         ; preds = %if.then87, %do.body77, %do.end, %do.body.if.end93_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.14, i32 noundef 999, i32 noundef %ret.2) #18
  br label %if.end96

if.end96:                                         ; preds = %if.end93, %btrfs_release_delayed_inode.exit.if.end96_crit_edge, %btrfs_release_delayed_inode.exit.if.end96_crit_edge174
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #15
  ret i32 %ret.2

search:                                           ; preds = %if.end15
  call void @btrfs_release_path(ptr noundef %path) #15
  %88 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 13, ptr %2, align 8
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 -1, ptr %3, align 1
  %call99 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef -1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %search.err_out_crit_edge, label %if.end103

search.err_out_crit_edge:                         ; preds = %search
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

if.end103:                                        ; preds = %search
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool104.not = icmp eq i32 %call99, 0
  br i1 %tobool104.not, label %cond.false, label %cond.end, !prof !70

cond.false:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.15, i32 noundef 1012) #22
  unreachable

cond.end:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #17
  %90 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %path, align 4
  %92 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %slots, align 4
  %dec = add i32 %93, -1
  store i32 %dec, ptr %slots, align 4
  br label %again
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_btree_balance_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_remove_delayed_node(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %delayed_node1 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 33
  %0 = ptrtoint ptr %delayed_node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %delayed_node1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %delayed_node1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %delayed_node1, align 8
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %1, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_assert_delayed_root_empty(ptr nocapture noundef readonly %fs_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %delayed_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 150
  %0 = ptrtoint ptr %delayed_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %delayed_root, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #15
  %node_list.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %node_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %node_list.i
  br i1 %cmp.i.not.i, label %btrfs_first_delayed_node.exit.thread, label %if.end.i

btrfs_first_delayed_node.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -20
  %refs.i = getelementptr i8, ptr %3, i32 284
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #15, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.btrfs_first_delayed_node.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.btrfs_first_delayed_node.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_first_delayed_node.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #15
  br label %btrfs_first_delayed_node.exit

btrfs_first_delayed_node.exit:                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.btrfs_first_delayed_node.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %btrfs_first_delayed_node.exit.if.end_crit_edge, label %do.end, !prof !68

btrfs_first_delayed_node.exit.if.end_crit_edge:   ; preds = %btrfs_first_delayed_node.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %btrfs_first_delayed_node.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1308, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %btrfs_first_delayed_node.exit.if.end_crit_edge, %btrfs_first_delayed_node.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_balance_delayed_items(ptr nocapture noundef readonly %fs_info) local_unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %delayed_root1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 150
  %0 = ptrtoint ptr %delayed_root1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %delayed_root1, align 4
  %items = getelementptr inbounds %struct.btrfs_delayed_root, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %items, i32 noundef 4) #15
  %2 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %3)
  %cmp = icmp slt i32 %3, 128
  br i1 %cmp, label %entry.cleanup33_crit_edge, label %lor.lhs.false

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup33

lor.lhs.false:                                    ; preds = %entry
  %delayed_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 88
  %4 = ptrtoint ptr %delayed_workers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delayed_workers, align 8
  %call2 = tail call zeroext i1 @btrfs_workqueue_normal_congested(ptr noundef %5) #15
  br i1 %call2, label %lor.lhs.false.cleanup33_crit_edge, label %if.end

lor.lhs.false.cleanup33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup33

if.end:                                           ; preds = %lor.lhs.false
  %call.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef %items, i32 noundef 4) #15
  %6 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %7)
  %cmp5 = icmp sgt i32 %7, 511
  br i1 %cmp5, label %if.then6, label %if.end31

if.then6:                                         ; preds = %if.end
  %items_seq = getelementptr inbounds %struct.btrfs_delayed_root, ptr %1, i32 0, i32 4
  %call.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef %items_seq, i32 noundef 4) #15
  %8 = ptrtoint ptr %items_seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %items_seq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3136, i32 noundef 80) #23
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then6.cleanup33_crit_edge, label %if.end10

if.then6.cleanup33_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup33

if.end10:                                         ; preds = %if.then6
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %call7.i.i, align 8
  %work.i = getelementptr inbounds %struct.btrfs_async_delayed_work, ptr %call7.i.i, i32 0, i32 2
  tail call void @btrfs_init_work(ptr noundef %work.i, ptr noundef nonnull @btrfs_async_run_delayed_root, ptr noundef null, ptr noundef null) #15
  %nr2.i = getelementptr inbounds %struct.btrfs_async_delayed_work, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %nr2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nr2.i, align 4
  %13 = ptrtoint ptr %delayed_workers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %delayed_workers, align 8
  tail call void @btrfs_queue_work(ptr noundef %14, ptr noundef %work.i) #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1343) #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %items_seq, i32 noundef 4) #15
  %15 = ptrtoint ptr %items_seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %items_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp.i = icmp sge i32 %16, %9
  %add.i = add i32 %9, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add.i)
  %cmp1.not.i = icmp slt i32 %16, %add.i
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %could_end_wait.exit, label %if.end10.cleanup33_crit_edge

if.end10.cleanup33_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup33

could_end_wait.exit:                              ; preds = %if.end10
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %items, i32 noundef 4) #15
  %17 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %18)
  %cmp3.i = icmp sgt i32 %18, 127
  br i1 %cmp3.i, label %if.then16, label %could_end_wait.exit.cleanup33_crit_edge

could_end_wait.exit.cleanup33_crit_edge:          ; preds = %could_end_wait.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup33

if.then16:                                        ; preds = %could_end_wait.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %wait = getelementptr inbounds %struct.btrfs_delayed_root, ptr %1, i32 0, i32 6
  %call1886 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %call.i.i.i5487 = call zeroext i1 @__kasan_check_read(ptr noundef %items_seq, i32 noundef 4) #15
  %20 = ptrtoint ptr %items_seq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %items_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %9)
  %cmp.i5588 = icmp sge i32 %21, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp1.not.i5789 = icmp slt i32 %21, %add.i
  %or.cond.i5890 = and i1 %cmp.i5588, %cmp1.not.i5789
  br i1 %or.cond.i5890, label %if.then16.could_end_wait.exit65_crit_edge, label %if.then16.for.end_crit_edge

if.then16.for.end_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then16.could_end_wait.exit65_crit_edge:        ; preds = %if.then16
  br label %could_end_wait.exit65

could_end_wait.exit65:                            ; preds = %cleanup.could_end_wait.exit65_crit_edge, %if.then16.could_end_wait.exit65_crit_edge
  %call1891 = phi i32 [ %call18, %cleanup.could_end_wait.exit65_crit_edge ], [ %call1886, %if.then16.could_end_wait.exit65_crit_edge ]
  %call.i.i9.i60 = call zeroext i1 @__kasan_check_read(ptr noundef %items, i32 noundef 4) #15
  %22 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %23)
  %cmp3.i61 = icmp sgt i32 %23, 127
  br i1 %cmp3.i61, label %if.end22, label %could_end_wait.exit65.for.end_crit_edge

could_end_wait.exit65.for.end_crit_edge:          ; preds = %could_end_wait.exit65
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end22:                                         ; preds = %could_end_wait.exit65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1891)
  %tobool23.not = icmp eq i32 %call1891, 0
  br i1 %tobool23.not, label %cleanup, label %if.end22.__out_crit_edge

if.end22.__out_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %__out

cleanup:                                          ; preds = %if.end22
  call void @schedule() #15
  %call18 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %call.i.i.i54 = call zeroext i1 @__kasan_check_read(ptr noundef %items_seq, i32 noundef 4) #15
  %24 = ptrtoint ptr %items_seq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %items_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %9)
  %cmp.i55 = icmp sge i32 %25, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add.i)
  %cmp1.not.i57 = icmp slt i32 %25, %add.i
  %or.cond.i58 = and i1 %cmp.i55, %cmp1.not.i57
  br i1 %or.cond.i58, label %cleanup.could_end_wait.exit65_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.could_end_wait.exit65_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %could_end_wait.exit65

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %could_end_wait.exit65.for.end_crit_edge, %if.then16.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #15
  br label %__out

__out:                                            ; preds = %for.end, %if.end22.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %cleanup33

if.end31:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3136, i32 noundef 80) #23
  %tobool.not.i67 = icmp eq ptr %call7.i.i66, null
  br i1 %tobool.not.i67, label %if.end31.cleanup33_crit_edge, label %if.end.i71

if.end31.cleanup33_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup33

if.end.i71:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %call7.i.i66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %call7.i.i66, align 8
  %work.i68 = getelementptr inbounds %struct.btrfs_async_delayed_work, ptr %call7.i.i66, i32 0, i32 2
  tail call void @btrfs_init_work(ptr noundef %work.i68, ptr noundef nonnull @btrfs_async_run_delayed_root, ptr noundef null, ptr noundef null) #15
  %nr2.i69 = getelementptr inbounds %struct.btrfs_async_delayed_work, ptr %call7.i.i66, i32 0, i32 1
  %28 = ptrtoint ptr %nr2.i69 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %nr2.i69, align 4
  %29 = ptrtoint ptr %delayed_workers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %delayed_workers, align 8
  tail call void @btrfs_queue_work(ptr noundef %30, ptr noundef %work.i68) #15
  br label %cleanup33

cleanup33:                                        ; preds = %if.end.i71, %if.end31.cleanup33_crit_edge, %__out, %could_end_wait.exit.cleanup33_crit_edge, %if.end10.cleanup33_crit_edge, %if.then6.cleanup33_crit_edge, %lor.lhs.false.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_workqueue_normal_congested(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_insert_delayed_dir_index(ptr nocapture noundef readonly %trans, ptr noundef %name, i32 noundef %name_len, ptr noundef %dir, ptr nocapture noundef readonly %disk_key, i8 noundef zeroext %type, i64 noundef %index) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @btrfs_get_or_create_delayed_node(ptr noundef %dir)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.i = add i32 %name_len, 102
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #19
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end.release_node_crit_edge, label %if.end5

if.end.release_node_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %release_node

if.end5:                                          ; preds = %if.end
  %add = add i32 %name_len, 30
  %data_len1.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call9.i.i, i32 0, i32 8
  %1 = ptrtoint ptr %data_len1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %data_len1.i, align 4
  %ins_or_del.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call9.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %ins_or_del.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ins_or_del.i, align 64
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call9.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %bytes_reserved.i, align 16
  %delayed_node.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call9.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %delayed_node.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %delayed_node.i, align 8
  %refs.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call9.i.i, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #15
  %5 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %refs.i, align 4
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %dir, i32 0, i32 1
  %6 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.i73 = icmp eq i64 %7, 0
  br i1 %tobool.not.i73, label %if.end5.if.then.i75_crit_edge, label %lor.lhs.false.i

if.end5.if.then.i75_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i75

lor.lhs.false.i:                                  ; preds = %if.end5
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %dir, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %9)
  %cmp.i74 = icmp eq i8 %9, -124
  br i1 %cmp.i74, label %lor.lhs.false.i.if.then.i75_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i75_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i75

if.then.i75:                                      ; preds = %lor.lhs.false.i.if.then.i75_crit_edge, %if.end5.if.then.i75_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %dir, i32 0, i32 37, i32 11
  %10 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %11 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i75, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i75 ], [ %7, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %key = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call9.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %ino.0.i, ptr %key, align 4
  %type8 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call9.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %type8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 96, ptr %type8, align 4
  %offset = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call9.i.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %index, ptr %offset, align 1
  %data = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call9.i.i, i32 0, i32 9
  %15 = call ptr @memcpy(ptr %data, ptr %disk_key, i32 17)
  %16 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %trans, align 8
  %transid.i = getelementptr inbounds %struct.btrfs_dir_item, ptr %data, i32 0, i32 1
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #15
  %19 = ptrtoint ptr %transid.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %transid.i, align 1
  %data_len.i = getelementptr inbounds %struct.btrfs_dir_item, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %data_len.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 0, ptr %data_len.i, align 1
  %conv = trunc i32 %name_len to i16
  %name_len.i = getelementptr inbounds %struct.btrfs_dir_item, ptr %data, i32 0, i32 3
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv) #15
  %22 = ptrtoint ptr %name_len.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %name_len.i, align 1
  %type.i76 = getelementptr inbounds %struct.btrfs_dir_item, ptr %data, i32 0, i32 4
  %23 = ptrtoint ptr %type.i76 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %type, ptr %type.i76, align 1
  %add.ptr = getelementptr %struct.btrfs_dir_item, ptr %data, i32 1
  %24 = call ptr @memcpy(ptr %add.ptr, ptr %name, i32 %name_len)
  %25 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dir, align 8
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fs_info1.i, align 8
  %bytes_reserved.i77 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 1
  %29 = ptrtoint ptr %bytes_reserved.i77 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bytes_reserved.i77, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool.not.i78 = icmp eq i64 %30, 0
  br i1 %tobool.not.i78, label %btrfs_ino.exit.do.end21_crit_edge, label %if.end.i

btrfs_ino.exit.do.end21_crit_edge:                ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end21

if.end.i:                                         ; preds = %btrfs_ino.exit
  %block_rsv.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 5
  %31 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %block_rsv.i, align 8
  %delayed_block_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %28, i32 0, i32 23
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %28, i32 0, i32 166
  %33 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nodesize.i.i, align 8
  %conv.i.i = zext i32 %34 to i64
  %mul1.i.i = shl nuw nsw i64 %conv.i.i, 4
  %call2.i = tail call i32 @btrfs_block_rsv_migrate(ptr noundef %32, ptr noundef %delayed_block_rsv.i, i64 noundef %mul1.i.i, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %do.body15

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %key, align 4
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %28, ptr noundef nonnull @.str.25, i64 noundef %36, i64 noundef %mul1.i.i, i32 noundef 1) #15
  %37 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %mul1.i.i, ptr %bytes_reserved.i, align 16
  br label %do.end21

do.body15:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/delayed-inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1389, 0\0A.popsection", ""() #15, !srcloc !76
  unreachable

do.end21:                                         ; preds = %if.then4.i, %btrfs_ino.exit.do.end21_crit_edge
  %mutex = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %call.i = tail call fastcc i32 @__btrfs_add_delayed_item(ptr noundef %call, ptr noundef nonnull %call9.i.i, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end39, label %if.then30, !prof !68

if.then30:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %38 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fs_info, align 4
  %root31 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 2
  %40 = ptrtoint ptr %root31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %root31, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %root_key, align 1
  %44 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %call, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %39, ptr noundef nonnull @.str.2, i32 noundef %name_len, ptr noundef %name, i64 noundef %43, i64 noundef %45, i32 noundef %call.i) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/delayed-inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1398, 0\0A.popsection", ""() #15, !srcloc !77
  unreachable

if.end39:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  br label %release_node

release_node:                                     ; preds = %if.end39, %if.end.release_node_crit_edge
  %ret.0 = phi i32 [ 0, %if.end39 ], [ -12, %if.end.release_node_crit_edge ]
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef %call, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %release_node, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.0, %release_node ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @btrfs_get_or_create_delayed_node(ptr noundef %btrfs_inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btrfs_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btrfs_inode, align 8
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 1
  %2 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %5)
  %cmp.i = icmp eq i8 %5, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 37, i32 11
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %7 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %3, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %call250 = tail call fastcc ptr @btrfs_get_delayed_node(ptr noundef %btrfs_inode)
  %tobool.not51 = icmp eq ptr %call250, null
  br i1 %tobool.not51, label %if.end.lr.ph, label %btrfs_ino.exit.cleanup_crit_edge

btrfs_ino.exit.cleanup_crit_edge:                 ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.lr.ph:                                     ; preds = %btrfs_ino.exit
  %inode_lock = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 33
  %delayed_nodes_tree = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 35
  %conv = trunc i64 %ino.0.i to i32
  br label %if.end

if.end:                                           ; preds = %if.then15.if.end_crit_edge, %if.end.lr.ph
  %8 = load ptr, ptr @delayed_node_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3392) #15
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %root1.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %root1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %root1.i, align 8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %ino.0.i, ptr %call.i, align 8
  %refs.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call.i, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #15
  %11 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %refs.i, align 8
  %ins_root.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call.i, i32 0, i32 5
  %mutex.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call.i, i32 0, i32 7
  %12 = call ptr @memset(ptr %ins_root.i, i32 0, i32 16)
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @btrfs_init_delayed_node.__key) #15
  %n_list.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %n_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %n_list.i, ptr %n_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %n_list.i, ptr %prev.i.i, align 8
  %p_list.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %p_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %p_list.i, ptr %p_list.i, align 4
  %prev.i14.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %p_list.i, ptr %prev.i14.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #15
  %17 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 2, ptr %refs.i, align 8
  %call8 = tail call i32 @radix_tree_preload(i32 noundef 3136) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %18 = load ptr, ptr @delayed_node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %18, ptr noundef nonnull %call.i) #15
  %19 = inttoptr i32 %call8 to ptr
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  tail call void @_raw_spin_lock(ptr noundef %inode_lock) #15
  %call13 = tail call i32 @radix_tree_insert(ptr noundef %delayed_nodes_tree, i32 noundef %conv, ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call13)
  %cmp = icmp eq i32 %call13, -17
  br i1 %cmp, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  tail call void @_raw_spin_unlock(ptr noundef %inode_lock) #15
  %20 = load ptr, ptr @delayed_node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef nonnull %call.i) #15
  %21 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %26, ptrtoint (ptr @radix_tree_preloads to i32)
  %27 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %27) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !78
  %28 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %call2 = tail call fastcc ptr @btrfs_get_delayed_node(ptr noundef %btrfs_inode)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then15.if.end_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then15.if.end_crit_edge:                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %delayed_node = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 33
  %32 = ptrtoint ptr %delayed_node to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %delayed_node, align 8
  tail call void @_raw_spin_unlock(ptr noundef %inode_lock) #15
  %33 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i41 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i41 to ptr
  %cpu.i42 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i42, align 4
  %arrayidx.i43 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i43, align 4
  %add.i44 = add i32 %38, ptrtoint (ptr @radix_tree_preloads to i32)
  %39 = inttoptr i32 %add.i44 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %39) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !78
  %40 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i.i45 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i45 to ptr
  %preempt_count.i.i.i46 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i46, align 4
  %sub.i.i47 = add i32 %43, -1
  store volatile i32 %sub.i.i47, ptr %preempt_count.i.i.i46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %btrfs_ino.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %19, %if.then10 ], [ %call.i, %if.end17 ], [ %call250, %btrfs_ino.exit.cleanup_crit_edge ], [ %call2, %if.then15.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_delete_delayed_dir_index(ptr nocapture noundef readonly %trans, ptr noundef %dir, i64 noundef %index) local_unnamed_addr #2 align 64 {
entry:
  %item_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %item_key) #15
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %item_key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %item_key, i32 0, i32 2
  %call = tail call fastcc ptr @btrfs_get_or_create_delayed_node(ptr noundef %dir)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %dir, i32 0, i32 1
  %3 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not.i = icmp eq i64 %4, 0
  br i1 %tobool.not.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %dir, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %6)
  %cmp.i54 = icmp eq i8 %6, -124
  br i1 %cmp.i54, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %dir, i32 0, i32 37, i32 11
  %7 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %8 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %4, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %9 = ptrtoint ptr %item_key to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %ino.0.i, ptr %item_key, align 8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 96, ptr %0, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %index, ptr %1, align 1
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %mutex.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #15
  %ins_root.i.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %ins_root.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.01.i.i.i = load ptr, ptr %ins_root.i.i, align 4
  %tobool.not2.i.i.i = icmp eq ptr %node.01.i.i.i, null
  br i1 %tobool.not2.i.i.i, label %btrfs_ino.exit.if.end6_crit_edge, label %btrfs_ino.exit.while.body.i.i.i_crit_edge

btrfs_ino.exit.while.body.i.i.i_crit_edge:        ; preds = %btrfs_ino.exit
  br label %while.body.i.i.i

btrfs_ino.exit.if.end6_crit_edge:                 ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

while.body.i.i.i:                                 ; preds = %if.end5.i.i.i.while.body.i.i.i_crit_edge, %btrfs_ino.exit.while.body.i.i.i_crit_edge
  %node.03.i.i.i = phi ptr [ %node.0.i.i.i, %if.end5.i.i.i.while.body.i.i.i_crit_edge ], [ %node.01.i.i.i, %btrfs_ino.exit.while.body.i.i.i_crit_edge ]
  %key1.i.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %node.03.i.i.i, i32 0, i32 1
  %call.i.i.i = call i32 @btrfs_comp_cpu_keys(ptr noundef %key1.i.i.i, ptr noundef nonnull %item_key) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.03.i.i.i, i32 0, i32 1
  br label %if.end5.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp2.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp2.not.i.i.i, label %if.end.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.03.i.i.i, i32 0, i32 2
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.then.i.i.i
  %node.1.in.i.i.i = phi ptr [ %rb_right.i.i.i, %if.then.i.i.i ], [ %rb_left.i.i.i, %if.then3.i.i.i ]
  %13 = ptrtoint ptr %node.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.0.i.i.i = load ptr, ptr %node.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end5.i.i.i.if.end6_crit_edge, label %if.end5.i.i.i.while.body.i.i.i_crit_edge

if.end5.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i.i

if.end5.i.i.i.if.end6_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end.i:                                         ; preds = %if.else.i.i.i
  %bytes_reserved.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %node.03.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %bytes_reserved.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bytes_reserved.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not.i.i = icmp eq i64 %15, 0
  br i1 %tobool.not.i.i, label %if.end.i.btrfs_delete_delayed_insertion_item.exit_crit_edge, label %if.end.i.i

if.end.i.btrfs_delete_delayed_insertion_item.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_delete_delayed_insertion_item.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %root.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root.i, align 8
  %fs_info1.i.i = getelementptr inbounds %struct.btrfs_root, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %fs_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fs_info1.i.i, align 8
  %delayed_block_rsv.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %key1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %key1.i.i.i, align 4
  call fastcc void @trace_btrfs_space_reservation(ptr noundef %19, ptr noundef nonnull @.str.25, i64 noundef %21, i64 noundef %15, i32 noundef 0) #15
  %22 = ptrtoint ptr %bytes_reserved.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes_reserved.i.i, align 8
  %call.i.i = call i64 @btrfs_block_rsv_release(ptr noundef %19, ptr noundef %delayed_block_rsv.i.i, i64 noundef %23, ptr noundef null) #15
  br label %btrfs_delete_delayed_insertion_item.exit

btrfs_delete_delayed_insertion_item.exit:         ; preds = %if.end.i.i, %if.end.i.btrfs_delete_delayed_insertion_item.exit_crit_edge
  call fastcc void @btrfs_release_delayed_item(ptr noundef nonnull %node.03.i.i.i) #15
  call void @mutex_unlock(ptr noundef %mutex.i) #15
  br label %end

if.end6:                                          ; preds = %if.end5.i.i.i.if.end6_crit_edge, %btrfs_ino.exit.if.end6_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3136, i32 noundef 72) #23
  %tobool.not.i56 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i56, label %if.end6.end_crit_edge, label %if.end10

if.end6.end_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %end

if.end10:                                         ; preds = %if.end6
  %data_len1.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %data_len1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %data_len1.i, align 4
  %ins_or_del.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %ins_or_del.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ins_or_del.i, align 8
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %bytes_reserved.i, align 8
  %delayed_node.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %delayed_node.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %delayed_node.i, align 8
  %refs.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #15
  %29 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1, ptr %refs.i, align 4
  %key = getelementptr inbounds %struct.btrfs_delayed_item, ptr %call7.i.i, i32 0, i32 1
  %30 = call ptr @memcpy(ptr %key, ptr %item_key, i32 17)
  %31 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dir, align 8
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fs_info1.i, align 8
  %bytes_reserved.i59 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 1
  %35 = ptrtoint ptr %bytes_reserved.i59 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bytes_reserved.i59, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool.not.i60 = icmp eq i64 %36, 0
  br i1 %tobool.not.i60, label %if.end10.if.end14_crit_edge, label %if.end.i61

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.end.i61:                                       ; preds = %if.end10
  %block_rsv.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 5
  %37 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %block_rsv.i, align 8
  %delayed_block_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %34, i32 0, i32 23
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %34, i32 0, i32 166
  %39 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nodesize.i.i, align 8
  %conv.i.i = zext i32 %40 to i64
  %mul1.i.i = shl nuw nsw i64 %conv.i.i, 4
  %call2.i = call i32 @btrfs_block_rsv_migrate(ptr noundef %38, ptr noundef %delayed_block_rsv.i, i64 noundef %mul1.i.i, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %btrfs_delayed_item_reserve_metadata.exit

if.then4.i:                                       ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %key, align 4
  call fastcc void @trace_btrfs_space_reservation(ptr noundef %34, ptr noundef nonnull @.str.25, i64 noundef %42, i64 noundef %mul1.i.i, i32 noundef 1) #15
  %43 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %mul1.i.i, ptr %bytes_reserved.i, align 8
  br label %if.end14

btrfs_delayed_item_reserve_metadata.exit:         ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.then12, label %btrfs_delayed_item_reserve_metadata.exit.if.end14_crit_edge

btrfs_delayed_item_reserve_metadata.exit.if.end14_crit_edge: ; preds = %btrfs_delayed_item_reserve_metadata.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %btrfs_delayed_item_reserve_metadata.exit
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fs_info, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %45, ptr noundef nonnull @.str.3) #18
  call fastcc void @btrfs_release_delayed_item(ptr noundef nonnull %call7.i.i)
  br label %end

if.end14:                                         ; preds = %btrfs_delayed_item_reserve_metadata.exit.if.end14_crit_edge, %if.then4.i, %if.end10.if.end14_crit_edge
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #15
  %call.i = call fastcc i32 @__btrfs_add_delayed_item(ptr noundef %call, ptr noundef nonnull %call7.i.i, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end14.if.end24_crit_edge, label %if.then19, !prof !68

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fs_info, align 4
  %root21 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 2
  %48 = ptrtoint ptr %root21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %root21, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %root_key, align 1
  %52 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %call, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %47, ptr noundef nonnull @.str.4, i64 noundef %index, i64 noundef %51, i64 noundef %53, i32 noundef %call.i) #18
  %54 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dir, align 8
  call fastcc void @btrfs_delayed_item_release_metadata(ptr noundef %55, ptr noundef nonnull %call7.i.i)
  call fastcc void @btrfs_release_delayed_item(ptr noundef nonnull %call7.i.i)
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end14.if.end24_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #15
  br label %end

end:                                              ; preds = %if.end24, %if.then12, %if.end6.end_crit_edge, %btrfs_delete_delayed_insertion_item.exit
  %ret.0 = phi i32 [ %call2.i, %if.then12 ], [ %call.i, %if.end24 ], [ 0, %btrfs_delete_delayed_insertion_item.exit ], [ -12, %if.end6.end_crit_edge ]
  call fastcc void @__btrfs_release_delayed_node(ptr noundef %call, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %ret.0, %end ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %item_key) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_release_delayed_item(ptr noundef %item) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %item, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

if.then:                                          ; preds = %entry
  %delayed_node.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %delayed_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %delayed_node.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.__btrfs_remove_delayed_item.exit_crit_edge, label %if.end.i

if.then.__btrfs_remove_delayed_item.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %__btrfs_remove_delayed_item.exit

if.end.i:                                         ; preds = %if.then
  %root2.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %root2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root2.i, align 8
  %fs_info.i = getelementptr inbounds %struct.btrfs_root, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info.i, align 8
  %delayed_root3.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 150
  %6 = ptrtoint ptr %delayed_root3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %delayed_root3.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %do.body9.i, label %do.body16.i, !prof !70

do.body9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/delayed-inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 485, 0\0A.popsection", ""() #15, !srcloc !79
  unreachable

do.body16.i:                                      ; preds = %if.end.i
  %ins_or_del.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %item, i32 0, i32 7
  %8 = ptrtoint ptr %ins_or_del.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ins_or_del.i, align 8
  %10 = add i32 %9, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %10)
  %11 = icmp ult i32 %10, -2
  br i1 %11, label %do.body26.i, label %do.end34.i, !prof !70

do.body26.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/delayed-inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 487, 0\0A.popsection", ""() #15, !srcloc !80
  unreachable

do.end34.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp36.i = icmp eq i32 %9, 1
  %ins_root.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %1, i32 0, i32 5
  %del_root.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %1, i32 0, i32 6
  %root.0.i = select i1 %cmp36.i, ptr %ins_root.i, ptr %del_root.i
  %rb_leftmost.i.i = getelementptr inbounds %struct.rb_root_cached, ptr %root.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i = icmp eq ptr %13, %item
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end34.i.rb_erase_cached.exit.i_crit_edge

do.end34.i.rb_erase_cached.exit.i_crit_edge:      ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call ptr @rb_next(ptr noundef nonnull %item) #15
  %14 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %rb_leftmost.i.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %do.end34.i.rb_erase_cached.exit.i_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %item, ptr noundef %root.0.i) #15
  %15 = ptrtoint ptr %delayed_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %delayed_node.i, align 8
  %count.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %count.i, align 4
  tail call fastcc void @finish_one_item(ptr noundef nonnull %7) #15
  br label %__btrfs_remove_delayed_item.exit

__btrfs_remove_delayed_item.exit:                 ; preds = %rb_erase_cached.exit.i, %if.then.__btrfs_remove_delayed_item.exit_crit_edge
  %refs = getelementptr inbounds %struct.btrfs_delayed_item, ptr %item, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #15, !srcloc !82
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then1, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %__btrfs_remove_delayed_item.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end2_crit_edge, label %if.then10.i.i.i, !prof !68

if.end5.i.i.i.if.end2_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #15
  br label %if.end2

if.then1:                                         ; preds = %__btrfs_remove_delayed_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !83
  tail call void @kfree(ptr noundef nonnull %item) #15
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.then10.i.i.i, %if.end5.i.i.i.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_delayed_item_release_metadata(ptr nocapture noundef readonly %root, ptr nocapture noundef readonly %item) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes_reserved = getelementptr inbounds %struct.btrfs_delayed_item, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bytes_reserved, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %delayed_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 23
  %key = getelementptr inbounds %struct.btrfs_delayed_item, ptr %item, i32 0, i32 1
  %4 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %key, align 4
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %3, ptr noundef nonnull @.str.25, i64 noundef %5, i64 noundef %1, i32 noundef 0)
  %6 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes_reserved, align 8
  %call = tail call i64 @btrfs_block_rsv_release(ptr noundef %3, ptr noundef %delayed_block_rsv, i64 noundef %7, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_inode_delayed_dir_index_count(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @btrfs_get_delayed_node(ptr noundef %inode)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %index_cnt = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %index_cnt to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %index_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool1.not = icmp eq i64 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end3

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %index_cnt5 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 22
  %2 = ptrtoint ptr %index_cnt5 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %index_cnt5, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end3, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end3 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %call, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_readdir_get_delayed_items(ptr noundef %inode, ptr noundef %ins_list, ptr noundef %del_list) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %call1 = tail call fastcc ptr @btrfs_get_delayed_node(ptr noundef %add.ptr.i)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @btrfs_inode_unlock(ptr noundef %inode, i32 noundef 1) #15
  %call2 = tail call i32 @btrfs_inode_lock(ptr noundef %inode, i32 noundef 0) #15
  %mutex = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %rb_leftmost.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call1, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool4.not48 = icmp eq ptr %1, null
  br i1 %tobool4.not48, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ins_list, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %item.049 = phi ptr [ %1, %while.body.lr.ph ], [ %call.i, %list_add_tail.exit.while.body_crit_edge ]
  %refs = getelementptr inbounds %struct.btrfs_delayed_item, ptr %item.049, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #15, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %while.body.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !70

while.body.if.end15.sink.split.i.i.i_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %while.body
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !68

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %while.body.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %while.body.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %readdir_list = getelementptr inbounds %struct.btrfs_delayed_item, ptr %item.049, i32 0, i32 3
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %readdir_list, ptr noundef %5, ptr noundef %ins_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %refcount_inc.exit.list_add_tail.exit_crit_edge

refcount_inc.exit.list_add_tail.exit_crit_edge:   ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %readdir_list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %readdir_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ins_list, ptr %readdir_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %item.049, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %readdir_list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %refcount_inc.exit.list_add_tail.exit_crit_edge
  %call.i = tail call ptr @rb_next(ptr noundef nonnull %item.049) #15
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %list_add_tail.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %rb_leftmost.i31 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call1, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %rb_leftmost.i31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_leftmost.i31, align 4
  %tobool8.not51 = icmp eq ptr %11, null
  br i1 %tobool8.not51, label %while.end.while.end13_crit_edge, label %while.body9.lr.ph

while.end.while.end13_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end13

while.body9.lr.ph:                                ; preds = %while.end
  %prev.i41 = getelementptr inbounds %struct.list_head, ptr %del_list, i32 0, i32 1
  br label %while.body9

while.body9:                                      ; preds = %list_add_tail.exit45.while.body9_crit_edge, %while.body9.lr.ph
  %item.152 = phi ptr [ %11, %while.body9.lr.ph ], [ %call.i46, %list_add_tail.exit45.while.body9_crit_edge ]
  %refs10 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %item.152, i32 0, i32 6
  %call.i.i.i.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs10, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refs10, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs10, ptr %refs10, i32 1, ptr elementtype(i32) %refs10) #15, !srcloc !69
  %asmresult.i.i.i.i.i33 = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i33)
  %tobool1.not.i.i.i34 = icmp eq i32 %asmresult.i.i.i.i.i33, 0
  br i1 %tobool1.not.i.i.i34, label %while.body9.if.end15.sink.split.i.i.i39_crit_edge, label %if.else.i.i.i37, !prof !70

while.body9.if.end15.sink.split.i.i.i39_crit_edge: ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i39

if.else.i.i.i37:                                  ; preds = %while.body9
  %add.i.i.i35 = add i32 %asmresult.i.i.i.i.i33, 1
  %13 = or i32 %add.i.i.i35, %asmresult.i.i.i.i.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i36 = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i36, label %if.else.i.i.i37.refcount_inc.exit40_crit_edge, label %if.else.i.i.i37.if.end15.sink.split.i.i.i39_crit_edge, !prof !68

if.else.i.i.i37.if.end15.sink.split.i.i.i39_crit_edge: ; preds = %if.else.i.i.i37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i39

if.else.i.i.i37.refcount_inc.exit40_crit_edge:    ; preds = %if.else.i.i.i37
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit40

if.end15.sink.split.i.i.i39:                      ; preds = %if.else.i.i.i37.if.end15.sink.split.i.i.i39_crit_edge, %while.body9.if.end15.sink.split.i.i.i39_crit_edge
  %.sink.i.i.i38 = phi i32 [ 2, %while.body9.if.end15.sink.split.i.i.i39_crit_edge ], [ 1, %if.else.i.i.i37.if.end15.sink.split.i.i.i39_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs10, i32 noundef %.sink.i.i.i38) #15
  br label %refcount_inc.exit40

refcount_inc.exit40:                              ; preds = %if.end15.sink.split.i.i.i39, %if.else.i.i.i37.refcount_inc.exit40_crit_edge
  %readdir_list11 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %item.152, i32 0, i32 3
  %14 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i41, align 4
  %call.i.i42 = tail call zeroext i1 @__list_add_valid(ptr noundef %readdir_list11, ptr noundef %15, ptr noundef %del_list) #15
  br i1 %call.i.i42, label %if.end.i.i44, label %refcount_inc.exit40.list_add_tail.exit45_crit_edge

refcount_inc.exit40.list_add_tail.exit45_crit_edge: ; preds = %refcount_inc.exit40
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit45

if.end.i.i44:                                     ; preds = %refcount_inc.exit40
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %readdir_list11, ptr %prev.i41, align 4
  %17 = ptrtoint ptr %readdir_list11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %del_list, ptr %readdir_list11, align 4
  %prev3.i.i43 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %item.152, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev3.i.i43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i43, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %readdir_list11, ptr %15, align 4
  br label %list_add_tail.exit45

list_add_tail.exit45:                             ; preds = %if.end.i.i44, %refcount_inc.exit40.list_add_tail.exit45_crit_edge
  %call.i46 = tail call ptr @rb_next(ptr noundef nonnull %item.152) #15
  %tobool8.not = icmp eq ptr %call.i46, null
  br i1 %tobool8.not, label %list_add_tail.exit45.while.end13_crit_edge, label %list_add_tail.exit45.while.body9_crit_edge

list_add_tail.exit45.while.body9_crit_edge:       ; preds = %list_add_tail.exit45
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body9

list_add_tail.exit45.while.end13_crit_edge:       ; preds = %list_add_tail.exit45
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end13

while.end13:                                      ; preds = %list_add_tail.exit45.while.end13_crit_edge, %while.end.while.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  %refs15 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call1, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs15, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %refs15, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs15, ptr %refs15, i32 1, ptr elementtype(i32) %refs15) #15, !srcloc !82
  %asmresult.i.i.i.i.i47 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i47)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i47, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %while.end13.cleanup_crit_edge, !prof !70

while.end13.cleanup_crit_edge:                    ; preds = %while.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3.i.i:                                     ; preds = %while.end13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refs15, i32 noundef 4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i, %while.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %21 = xor i1 %tobool.not, true
  ret i1 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inode_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_readdir_put_delayed_items(ptr noundef %inode, ptr noundef readonly %ins_list, ptr noundef readonly %del_list) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ins_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ins_list, align 4
  %cmp.not72 = icmp eq ptr %1, %ins_list
  br i1 %cmp.not72, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in73 = phi ptr [ %.pn76, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %curr.075 = getelementptr i8, ptr %.pn.in73, i32 -40
  %2 = ptrtoint ptr %.pn.in73 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn76 = load ptr, ptr %.pn.in73, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in73) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in73, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in73 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in73, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in73 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in73, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in73, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refs = getelementptr i8, ptr %.pn.in73, i32 20
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #15, !srcloc !82
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i, !prof !68

if.end5.i.i.i.for.inc_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #15
  br label %for.inc

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !83
  tail call void @kfree(ptr noundef %curr.075) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn76, %ins_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %12 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %del_list, align 4
  %cmp24.not79 = icmp eq ptr %13, %del_list
  br i1 %cmp24.not79, label %for.end.for.end38_crit_edge, label %for.end.for.body26_crit_edge

for.end.for.body26_crit_edge:                     ; preds = %for.end
  br label %for.body26

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end38

for.body26:                                       ; preds = %for.inc32.for.body26_crit_edge, %for.end.for.body26_crit_edge
  %.pn53.in80 = phi ptr [ %.pn5383, %for.inc32.for.body26_crit_edge ], [ %13, %for.end.for.body26_crit_edge ]
  %curr.182 = getelementptr i8, ptr %.pn53.in80, i32 -40
  %14 = ptrtoint ptr %.pn53.in80 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn5383 = load ptr, ptr %.pn53.in80, align 8
  %call.i.i56 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn53.in80) #15
  br i1 %call.i.i56, label %if.end.i.i59, label %for.body26.list_del.exit61_crit_edge

for.body26.list_del.exit61_crit_edge:             ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit61

if.end.i.i59:                                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i57 = getelementptr inbounds %struct.list_head, ptr %.pn53.in80, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i57, align 4
  %17 = ptrtoint ptr %.pn53.in80 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn53.in80, align 4
  %prev1.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i58, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit61

list_del.exit61:                                  ; preds = %if.end.i.i59, %for.body26.list_del.exit61_crit_edge
  %21 = ptrtoint ptr %.pn53.in80 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn53.in80, align 4
  %prev.i60 = getelementptr inbounds %struct.list_head, ptr %.pn53.in80, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i60, align 4
  %refs28 = getelementptr i8, ptr %.pn53.in80, i32 20
  %call.i.i.i.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs28, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %refs28, i32 1, i32 3, i32 1) #15
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs28, ptr %refs28, i32 1, ptr elementtype(i32) %refs28) #15, !srcloc !82
  %asmresult.i.i.i.i.i.i63 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i63)
  %cmp.i.i.i64 = icmp eq i32 %asmresult.i.i.i.i.i.i63, 1
  br i1 %cmp.i.i.i64, label %if.then30, label %if.end5.i.i.i67

if.end5.i.i.i67:                                  ; preds = %list_del.exit61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i63)
  %.not.i.i.i66 = icmp sgt i32 %asmresult.i.i.i.i.i.i63, 0
  br i1 %.not.i.i.i66, label %if.end5.i.i.i67.for.inc32_crit_edge, label %if.then10.i.i.i68, !prof !68

if.end5.i.i.i67.for.inc32_crit_edge:              ; preds = %if.end5.i.i.i67
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc32

if.then10.i.i.i68:                                ; preds = %if.end5.i.i.i67
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refs28, i32 noundef 3) #15
  br label %for.inc32

if.then30:                                        ; preds = %list_del.exit61
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !83
  tail call void @kfree(ptr noundef %curr.182) #15
  br label %for.inc32

for.inc32:                                        ; preds = %if.then30, %if.then10.i.i.i68, %if.end5.i.i.i67.for.inc32_crit_edge
  %cmp24.not = icmp eq ptr %.pn5383, %del_list
  br i1 %cmp24.not, label %for.inc32.for.end38_crit_edge, label %for.inc32.for.body26_crit_edge

for.inc32.for.body26_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body26

for.inc32.for.end38_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end38

for.end38:                                        ; preds = %for.inc32.for.end38_crit_edge, %for.end.for.end38_crit_edge
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @downgrade_write(ptr noundef %i_rwsem) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_should_delete_dir_index(ptr noundef readonly %del_list, i64 noundef %index) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %del_list, %entry ], [ %.pn, %if.end.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %del_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.cond
  %offset = getelementptr i8, ptr %.pn, i32 -19
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %offset, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %index)
  %cmp1 = icmp ugt i64 %2, %index
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end:                                           ; preds = %for.body
  %cmp4 = icmp eq i64 %2, %index
  br i1 %cmp4, label %if.end.for.end_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ], [ 1, %if.end.for.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_readdir_delayed_dir_index(ptr noundef %ctx, ptr noundef %ins_list) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ins_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ins_list, align 4
  %cmp.i.not = icmp eq ptr %1, %ins_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %.pn.in76 = phi ptr [ %1, %for.cond.preheader ], [ %.pn78, %for.inc.for.body_crit_edge ]
  %curr.077 = getelementptr i8, ptr %.pn.in76, i32 -40
  %2 = ptrtoint ptr %.pn.in76 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn78 = load ptr, ptr %.pn.in76, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in76) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in76, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in76 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in76, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in76 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in76, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in76, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %offset = getelementptr i8, ptr %.pn.in76, i32 -19
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %offset, align 1
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp8 = icmp ult i64 %12, %14
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %list_del.exit
  %refs = getelementptr i8, ptr %.pn.in76, i32 20
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #15
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #15, !srcloc !82
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then11, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i, !prof !68

if.end5.i.i.i.for.inc_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #15
  br label %for.inc

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !83
  tail call void @kfree(ptr noundef %curr.077) #15
  br label %for.inc

if.end13:                                         ; preds = %list_del.exit
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %12, ptr %pos, align 8
  %data = getelementptr i8, ptr %.pn.in76, i32 32
  %add.ptr17 = getelementptr i8, ptr %.pn.in76, i32 62
  %name_len.i = getelementptr i8, ptr %.pn.in76, i32 59
  %17 = ptrtoint ptr %name_len.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %name_len.i, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #15
  %conv = zext i16 %19 to i32
  %type = getelementptr i8, ptr %.pn.in76, i32 61
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type, align 1
  %conv19 = zext i8 %21 to i32
  %call20 = tail call zeroext i8 @fs_ftype_to_dtype(i32 noundef %conv19) #15
  %22 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %data, align 1
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #15
  %conv22 = zext i8 %call20 to i32
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx, align 8
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pos, align 8
  %call.i = tail call i32 %26(ptr noundef %ctx, ptr noundef %add.ptr17, i32 noundef %conv, i64 noundef %28, i64 noundef %24, i32 noundef %conv22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i64 = icmp eq i32 %call.i, 0
  %refs25 = getelementptr i8, ptr %.pn.in76, i32 20
  %call.i.i.i.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs25, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %refs25, i32 1, i32 3, i32 1) #15
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs25, ptr %refs25, i32 1, ptr elementtype(i32) %refs25) #15, !srcloc !82
  %asmresult.i.i.i.i.i.i66 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i66)
  %cmp.i.i.i67 = icmp eq i32 %asmresult.i.i.i.i.i.i66, 1
  br i1 %cmp.i.i.i67, label %if.then27, label %if.end5.i.i.i70

if.end5.i.i.i70:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i66)
  %.not.i.i.i69 = icmp sgt i32 %asmresult.i.i.i.i.i.i66, 0
  br i1 %.not.i.i.i69, label %if.end5.i.i.i70.if.end28_crit_edge, label %if.then10.i.i.i71, !prof !68

if.end5.i.i.i70.if.end28_crit_edge:               ; preds = %if.end5.i.i.i70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then10.i.i.i71:                                ; preds = %if.end5.i.i.i70
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refs25, i32 noundef 3) #15
  br label %if.end28

if.then27:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !83
  tail call void @kfree(ptr noundef %curr.077) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then10.i.i.i71, %if.end5.i.i.i70.if.end28_crit_edge
  br i1 %cmp.i64, label %if.end31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pos, align 8
  %inc = add i64 %31, 1
  store i64 %inc, ptr %pos, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %if.then11, %if.then10.i.i.i, %if.end5.i.i.i.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn78, %ins_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end28.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @fs_ftype_to_dtype(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_fill_inode(ptr noundef %inode, ptr nocapture noundef writeonly %rdev) local_unnamed_addr #2 align 64 {
entry:
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
  %call3 = tail call fastcc ptr @btrfs_get_delayed_node(ptr noundef %add.ptr.i)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %flags = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %call3, i32 noundef 0) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %inode_item9 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8
  %uid.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 6
  %7 = ptrtoint ptr %uid.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %uid.i, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 53
  %12 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %13, i32 noundef %9) #15
  %14 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %gid.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 7
  %15 = ptrtoint ptr %gid.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %gid.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #15
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %18 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i117 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 53
  %20 = ptrtoint ptr %s_user_ns.i.i117 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_user_ns.i.i117, align 8
  %call1.i118 = tail call i32 @make_kgid(ptr noundef %21, i32 noundef %17) #15
  %22 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call1.i118, ptr %i_gid.i, align 8
  %size.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %size.i, align 1
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #15
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %30 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i, label %if.end8.btrfs_i_size_write.exit_crit_edge, label %land.lhs.true.i.i.i

if.end8.btrfs_i_size_write.exit_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_i_size_write.exit

land.lhs.true.i.i.i:                              ; preds = %if.end8
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !85
  %35 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i28.i.i = add i32 %40, ptrtoint (ptr @lockdep_recursion to i32)
  %41 = inttoptr i32 %add.i28.i.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !86
  %44 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i7.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool20.not.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.btrfs_i_size_write.exit_crit_edge

land.lhs.true.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_i_size_write.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %48 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i29.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i29.i.i to ptr
  %preempt_count.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i.i = icmp eq i32 %51, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.btrfs_i_size_write.exit_crit_edge

land.rhs.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_i_size_write.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %52 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i9.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %55, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !87
  %56 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %59, ptrtoint (ptr @hardirqs_enabled to i32)
  %60 = inttoptr i32 %add47.i.i.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !88
  %63 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i12.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %66, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool54.not.i.i.i = icmp eq i32 %62, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.btrfs_i_size_write.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_i_size_write.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.btrfs_i_size_write.exit_crit_edge, label %if.then.i.i.i, !prof !68

land.rhs58.i.i.i.btrfs_i_size_write.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_i_size_write.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %btrfs_i_size_write.exit

btrfs_i_size_write.exit:                          ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.btrfs_i_size_write.exit_crit_edge, %land.rhs22.i.i.i.btrfs_i_size_write.exit_crit_edge, %land.rhs.i.i.i.btrfs_i_size_write.exit_crit_edge, %land.lhs.true.i.i.i.btrfs_i_size_write.exit_crit_edge, %if.end8.btrfs_i_size_write.exit_crit_edge
  %i_size_seqcount.i.i = getelementptr i8, ptr %inode, i32 168
  %67 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i.i = add i32 %68, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !89
  %dep_map.i.i.i.i = getelementptr i8, ptr %inode, i32 172
  %69 = tail call ptr @llvm.returnaddress(i32 0) #15
  %70 = ptrtoint ptr %69 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %70) #15
  %i_size8.i.i = getelementptr i8, ptr %inode, i32 56
  %71 = ptrtoint ptr %i_size8.i.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %25, ptr %i_size8.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %70) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !90
  %72 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i = add i32 %73, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !91
  %74 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i26.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i26.i.i to ptr
  %preempt_count.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i27.i.i, align 4
  %sub.i.i.i = add i32 %77, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i27.i.i, align 4
  %disk_i_size.i = getelementptr i8, ptr %inode, i32 -288
  %78 = ptrtoint ptr %disk_i_size.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %25, ptr %disk_i_size.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %btrfs_i_size_write.exit
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !92
  %and.i.i.i = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %70) #15
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %70) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %70) #15
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %70) #15
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %80 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !93
  %and.i.i.i.i121 = and i32 %80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i121)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i121, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !70

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #15, !srcloc !94
  %81 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !95
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !96
  %83 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i = and i32 %84, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %82, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %84, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !97
  %85 = ptrtoint ptr %i_size8.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %i_size8.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !98
  %87 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %88, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add i64 %86, -1
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %89 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sectorsize, align 4
  %sub16 = add i32 %90, -1
  %conv = zext i32 %sub16 to i64
  %or = or i64 %sub, %conv
  %add = add i64 %or, 1
  %call17 = tail call i32 @btrfs_inode_set_file_extent_range(ptr noundef %add.ptr.i, i64 noundef 0, i64 noundef %add) #15
  %mode.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 8
  %91 = ptrtoint ptr %mode.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %mode.i, align 1
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #15
  %conv19 = trunc i32 %93 to i16
  %94 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv19, ptr %inode, align 8
  %nlink.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 5
  %95 = ptrtoint ptr %nlink.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %nlink.i, align 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #15
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %97) #15
  %nbytes.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 3
  %98 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %99 = load i64, ptr %nbytes.i, align 1
  %100 = tail call i64 @llvm.bswap.i64(i64 %99) #15
  tail call void @inode_set_bytes(ptr noundef %inode, i64 noundef %100) #15
  %101 = ptrtoint ptr %inode_item9 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 8)
  %102 = load i64, ptr %inode_item9, align 1
  %103 = tail call i64 @llvm.bswap.i64(i64 %102) #15
  %generation = getelementptr i8, ptr %inode, i32 -344
  %104 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %generation, align 8
  %transid.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 1
  %105 = ptrtoint ptr %transid.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 8)
  %106 = load i64, ptr %transid.i, align 1
  %107 = tail call i64 @llvm.bswap.i64(i64 %106) #15
  %last_trans = getelementptr i8, ptr %inode, i32 -336
  %108 = ptrtoint ptr %last_trans to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %last_trans, align 8
  %sequence.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 11
  %109 = ptrtoint ptr %sequence.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 8)
  %110 = load i64, ptr %sequence.i, align 1
  %111 = tail call i64 @llvm.bswap.i64(i64 %110) #15
  %shl.i = shl i64 %111, 1
  %or.i = or i64 %shl.i, 1
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #15
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef %or.i) #15
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %112 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %i_rdev, align 8
  %rdev.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 9
  %113 = ptrtoint ptr %rdev.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 8)
  %114 = load i64, ptr %rdev.i, align 1
  %115 = tail call i64 @llvm.bswap.i64(i64 %114) #15
  %conv28 = trunc i64 %115 to i32
  %116 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv28, ptr %rdev, align 4
  %flags.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 10
  %117 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 8)
  %118 = load i64, ptr %flags.i, align 1
  %119 = tail call i64 @llvm.bswap.i64(i64 %118) #15
  %flags31 = getelementptr i8, ptr %inode, i32 -240
  %ro_flags = getelementptr i8, ptr %inode, i32 -236
  %conv.i = trunc i64 %119 to i32
  %120 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv.i, ptr %flags31, align 4
  %shr.i126 = lshr i64 %119, 32
  %conv1.i = trunc i64 %shr.i126 to i32
  %121 = ptrtoint ptr %ro_flags to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv1.i, ptr %ro_flags, align 4
  %atime = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 13
  %122 = ptrtoint ptr %atime to i32
  call void @__asan_loadN_noabort(i32 %122, i32 8)
  %123 = load i64, ptr %atime, align 1
  %124 = tail call i64 @llvm.bswap.i64(i64 %123) #15
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %125 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %i_atime, align 8
  %nsec.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 13, i32 1
  %126 = ptrtoint ptr %nsec.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %nsec.i, align 1
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #15
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %129 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %tv_nsec, align 8
  %mtime = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 15
  %130 = ptrtoint ptr %mtime to i32
  call void @__asan_loadN_noabort(i32 %130, i32 8)
  %131 = load i64, ptr %mtime, align 1
  %132 = tail call i64 @llvm.bswap.i64(i64 %131) #15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %133 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %i_mtime, align 8
  %nsec.i127 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 15, i32 1
  %134 = ptrtoint ptr %nsec.i127 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %nsec.i127, align 1
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #15
  %tv_nsec42 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %137 = ptrtoint ptr %tv_nsec42 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %tv_nsec42, align 8
  %ctime = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 14
  %138 = ptrtoint ptr %ctime to i32
  call void @__asan_loadN_noabort(i32 %138, i32 8)
  %139 = load i64, ptr %ctime, align 1
  %140 = tail call i64 @llvm.bswap.i64(i64 %139) #15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %141 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %i_ctime, align 8
  %nsec.i128 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 14, i32 1
  %142 = ptrtoint ptr %nsec.i128 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %nsec.i128, align 1
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #15
  %tv_nsec48 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %145 = ptrtoint ptr %tv_nsec48 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %tv_nsec48, align 8
  %otime = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 16
  %146 = ptrtoint ptr %otime to i32
  call void @__asan_loadN_noabort(i32 %146, i32 8)
  %147 = load i64, ptr %otime, align 1
  %148 = tail call i64 @llvm.bswap.i64(i64 %147) #15
  %i_otime = getelementptr i8, ptr %inode, i32 -120
  %149 = ptrtoint ptr %i_otime to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %148, ptr %i_otime, align 8
  %nsec.i130 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call3, i32 0, i32 8, i32 16, i32 1
  %150 = ptrtoint ptr %nsec.i130 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %151 = load i32, ptr %nsec.i130, align 1
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #15
  %tv_nsec56 = getelementptr i8, ptr %inode, i32 -112
  %153 = ptrtoint ptr %tv_nsec56 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %tv_nsec56, align 8
  %154 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %generation, align 8
  %conv59 = trunc i64 %155 to i32
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %156 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %conv59, ptr %i_generation, align 8
  %index_cnt = getelementptr i8, ptr %inode, i32 -280
  %157 = ptrtoint ptr %index_cnt to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 -1, ptr %index_cnt, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef %call3, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %i_size_read.exit, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %i_size_read.exit ], [ -2, %if.then6 ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inode_set_file_extent_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_delayed_update_inode(ptr nocapture noundef readonly %trans, ptr noundef %root, ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @btrfs_get_or_create_delayed_node(ptr noundef %inode)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %flags = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %inode_item = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 8
  %vfs_inode = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37
  tail call fastcc void @fill_stack_inode_item(ptr noundef %trans, ptr noundef %inode_item, ptr noundef %vfs_inode)
  br label %release_node

if.end5:                                          ; preds = %if.end
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %4 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info1.i, align 8
  %block_rsv.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 5
  %6 = ptrtoint ptr %block_rsv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block_rsv.i, align 8
  %delayed_block_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 23
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 166
  %8 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nodesize.i.i, align 8
  %conv.i.i = zext i32 %9 to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 3
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end5.if.then.i_crit_edge, label %lor.lhs.false.i

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end5
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 1
  %10 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bytes_reserved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool2.not.i = icmp eq i64 %11, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end21.i_crit_edge

lor.lhs.false.i.if.end21.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %type.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp.not.i = icmp eq i16 %13, 1
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end21.i_crit_edge, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %if.end5.if.then.i_crit_edge
  %conv4.i = trunc i64 %mul.i.i to i32
  %call5.i = tail call i32 @btrfs_qgroup_reserve_meta(ptr noundef %root, i32 noundef %conv4.i, i32 noundef 2, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then.i.release_node_crit_edge, label %if.end.i

if.then.i.release_node_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %release_node

if.end.i:                                         ; preds = %if.then.i
  %call9.i = tail call i32 @btrfs_block_rsv_add(ptr noundef %5, ptr noundef %delayed_block_rsv.i, i64 noundef %mul.i.i, i32 noundef 0) #15
  %14 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call9.i, label %cond.false.i [
    i32 0, label %if.end.i.if.end9_crit_edge
    i32 -28, label %if.end21.thread54.i
  ]

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.27, i32 noundef 636) #21
  unreachable

if.end21.thread54.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__btrfs_qgroup_free_meta(ptr noundef %root, i32 noundef %conv4.i, i32 noundef 2) #15
  br label %release_node

if.end21.i:                                       ; preds = %land.lhs.true.i.if.end21.i_crit_edge, %lor.lhs.false.i.if.end21.i_crit_edge
  %call20.i = tail call i32 @btrfs_block_rsv_migrate(ptr noundef nonnull %7, ptr noundef %delayed_block_rsv.i, i64 noundef %mul.i.i, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool22.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool22.not.i, label %if.end21.i.if.end9_crit_edge, label %if.end21.i.release_node_crit_edge

if.end21.i.release_node_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %release_node

if.end21.i.if.end9_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end9:                                          ; preds = %if.end21.i.if.end9_crit_edge, %if.end.i.if.end9_crit_edge
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %call, align 8
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %5, ptr noundef nonnull @.str.17, i64 noundef %16, i64 noundef %mul.i.i, i32 noundef 1) #15
  %bytes_reserved24.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %bytes_reserved24.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %mul.i.i, ptr %bytes_reserved24.i, align 8
  %inode_item10 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 8
  %vfs_inode11 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37
  tail call fastcc void @fill_stack_inode_item(ptr noundef %trans, ptr noundef %inode_item10, ptr noundef %vfs_inode11)
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #15
  %count = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call, i32 0, i32 12
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %count, align 4
  %20 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_info1.i, align 8
  %delayed_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %21, i32 0, i32 150
  %22 = ptrtoint ptr %delayed_root to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %delayed_root, align 4
  %items = getelementptr inbounds %struct.btrfs_delayed_root, ptr %23, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %items, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %items, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %items, ptr %items, i32 1, ptr elementtype(i32) %items) #15, !srcloc !99
  br label %release_node

release_node:                                     ; preds = %if.end9, %if.end21.i.release_node_crit_edge, %if.end21.thread54.i, %if.then.i.release_node_crit_edge, %if.then4
  %ret.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.end9 ], [ -28, %if.end21.thread54.i ], [ %call20.i, %if.end21.i.release_node_crit_edge ], [ %call5.i, %if.then.i.release_node_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef %call, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %release_node, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.0, %release_node ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_stack_inode_item(ptr nocapture noundef readonly %trans, ptr nocapture noundef writeonly %inode_item, ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %4 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %5 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %3, [1 x i32] %5) #15
  %uid.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 6
  %6 = tail call i32 @llvm.bswap.i32(i32 %call1.i) #15
  %7 = ptrtoint ptr %uid.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %uid.i, align 1
  %8 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i65 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %s_user_ns.i.i65 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_user_ns.i.i65, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %12 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack.i66 = load i32, ptr %i_gid.i, align 8
  %13 = insertvalue [1 x i32] undef, i32 %.unpack.i66, 0
  %call1.i67 = tail call i32 @from_kgid(ptr noundef %11, [1 x i32] %13) #15
  %gid.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 7
  %14 = tail call i32 @llvm.bswap.i32(i32 %call1.i67) #15
  %15 = ptrtoint ptr %gid.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %gid.i, align 1
  %disk_i_size = getelementptr i8, ptr %inode, i32 -288
  %16 = ptrtoint ptr %disk_i_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %disk_i_size, align 8
  %size.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 2
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #15
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %size.i, align 1
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %inode, align 8
  %conv = zext i16 %21 to i32
  %mode.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv) #15
  %23 = ptrtoint ptr %mode.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %mode.i, align 1
  %24 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %nlink.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 5
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #15
  %28 = ptrtoint ptr %nlink.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %nlink.i, align 1
  %call3 = tail call i64 @inode_get_bytes(ptr noundef %inode) #15
  %nbytes.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 3
  %29 = tail call i64 @llvm.bswap.i64(i64 %call3) #15
  %30 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %nbytes.i, align 1
  %generation = getelementptr i8, ptr %inode, i32 -344
  %31 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %generation, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32) #15
  %34 = ptrtoint ptr %inode_item to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %inode_item, align 1
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #15
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #15
  %shr.i = lshr i64 %call.i.i.i, 1
  %sequence.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 11
  %35 = tail call i64 @llvm.bswap.i64(i64 %shr.i) #15
  %36 = ptrtoint ptr %sequence.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %sequence.i, align 1
  %37 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %trans, align 8
  %transid.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 1
  %39 = tail call i64 @llvm.bswap.i64(i64 %38) #15
  %40 = ptrtoint ptr %transid.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %transid.i, align 1
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %41 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_rdev, align 8
  %conv6 = zext i32 %42 to i64
  %rdev.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 9
  %43 = tail call i64 @llvm.bswap.i64(i64 %conv6) #15
  %44 = ptrtoint ptr %rdev.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %rdev.i, align 1
  %flags8 = getelementptr i8, ptr %inode, i32 -240
  %45 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags8, align 8
  %ro_flags = getelementptr i8, ptr %inode, i32 -236
  %47 = ptrtoint ptr %ro_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ro_flags, align 4
  %conv.i = zext i32 %46 to i64
  %conv1.i = zext i32 %48 to i64
  %shl.i = shl nuw i64 %conv1.i, 32
  %or.i = or i64 %shl.i, %conv.i
  %flags.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 10
  %49 = tail call i64 @llvm.bswap.i64(i64 %or.i) #15
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %flags.i, align 1
  %block_group.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 4
  %51 = ptrtoint ptr %block_group.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 0, ptr %block_group.i, align 1
  %atime = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 13
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %52 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %i_atime, align 8
  %54 = tail call i64 @llvm.bswap.i64(i64 %53) #15
  %55 = ptrtoint ptr %atime to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %atime, align 1
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %56 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tv_nsec, align 8
  %nsec.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 13, i32 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #15
  %59 = ptrtoint ptr %nsec.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %nsec.i, align 1
  %mtime = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %60 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %i_mtime, align 8
  %62 = tail call i64 @llvm.bswap.i64(i64 %61) #15
  %63 = ptrtoint ptr %mtime to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %mtime, align 1
  %tv_nsec16 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %64 = ptrtoint ptr %tv_nsec16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tv_nsec16, align 8
  %nsec.i71 = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 15, i32 1
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #15
  %67 = ptrtoint ptr %nsec.i71 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %nsec.i71, align 1
  %ctime = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 14
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %68 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %i_ctime, align 8
  %70 = tail call i64 @llvm.bswap.i64(i64 %69) #15
  %71 = ptrtoint ptr %ctime to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 %70, ptr %ctime, align 1
  %tv_nsec20 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %72 = ptrtoint ptr %tv_nsec20 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tv_nsec20, align 8
  %nsec.i72 = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 14, i32 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #15
  %75 = ptrtoint ptr %nsec.i72 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %nsec.i72, align 1
  %otime = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 16
  %i_otime = getelementptr i8, ptr %inode, i32 -120
  %76 = ptrtoint ptr %i_otime to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %i_otime, align 8
  %78 = tail call i64 @llvm.bswap.i64(i64 %77) #15
  %79 = ptrtoint ptr %otime to i32
  call void @__asan_storeN_noabort(i32 %79, i32 8)
  store i64 %78, ptr %otime, align 1
  %tv_nsec26 = getelementptr i8, ptr %inode, i32 -112
  %80 = ptrtoint ptr %tv_nsec26 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tv_nsec26, align 8
  %nsec.i75 = getelementptr inbounds %struct.btrfs_inode_item, ptr %inode_item, i32 0, i32 16, i32 1
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #15
  %83 = ptrtoint ptr %nsec.i75 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %nsec.i75, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_delayed_delete_inode_ref(ptr noundef %inode) local_unnamed_addr #2 align 64 {
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
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @btrfs_get_or_create_delayed_node(ptr noundef %inode)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call2, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %flags7 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call2, i32 0, i32 11
  %8 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags7, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.release_node_crit_edge

if.end6.release_node_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %release_node

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags7) #15
  %count = getelementptr inbounds %struct.btrfs_delayed_node, ptr %call2, i32 0, i32 12
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %count, align 4
  %delayed_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 150
  %13 = ptrtoint ptr %delayed_root to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %delayed_root, align 4
  %items = getelementptr inbounds %struct.btrfs_delayed_root, ptr %14, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %items, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %items, i32 1, i32 3, i32 1) #15
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %items, ptr %items, i32 1, ptr elementtype(i32) %items) #15, !srcloc !99
  br label %release_node

release_node:                                     ; preds = %if.end11, %if.end6.release_node_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef %call2, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %release_node, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then4 ], [ 0, %release_node ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_kill_delayed_inode_items(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @btrfs_get_delayed_node(ptr noundef %inode)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__btrfs_kill_delayed_node(ptr noundef nonnull %call)
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %call, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__btrfs_kill_delayed_node(ptr noundef %delayed_node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %root1 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 2
  %0 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root1, align 8
  %fs_info2 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info2, align 8
  %mutex = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %rb_leftmost.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not58 = icmp eq ptr %5, null
  br i1 %tobool.not58, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %btrfs_delayed_item_release_metadata.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %curr_item.059 = phi ptr [ %call.i31, %btrfs_delayed_item_release_metadata.exit.while.body_crit_edge ], [ %5, %entry.while.body_crit_edge ]
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %curr_item.059, i32 0, i32 4
  %6 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes_reserved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i, label %while.body.btrfs_delayed_item_release_metadata.exit_crit_edge, label %if.end.i

while.body.btrfs_delayed_item_release_metadata.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_delayed_item_release_metadata.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_info2, align 8
  %delayed_block_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %9, i32 0, i32 23
  %key.i = getelementptr inbounds %struct.btrfs_delayed_item, ptr %curr_item.059, i32 0, i32 1
  %10 = ptrtoint ptr %key.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %key.i, align 4
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %9, ptr noundef nonnull @.str.25, i64 noundef %11, i64 noundef %7, i32 noundef 0) #15
  %12 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bytes_reserved.i, align 8
  %call.i = tail call i64 @btrfs_block_rsv_release(ptr noundef %9, ptr noundef %delayed_block_rsv.i, i64 noundef %13, ptr noundef null) #15
  br label %btrfs_delayed_item_release_metadata.exit

btrfs_delayed_item_release_metadata.exit:         ; preds = %if.end.i, %while.body.btrfs_delayed_item_release_metadata.exit_crit_edge
  %call.i31 = tail call ptr @rb_next(ptr noundef nonnull %curr_item.059) #15
  tail call fastcc void @btrfs_release_delayed_item(ptr noundef nonnull %curr_item.059)
  %tobool.not = icmp eq ptr %call.i31, null
  br i1 %tobool.not, label %btrfs_delayed_item_release_metadata.exit.while.end_crit_edge, label %btrfs_delayed_item_release_metadata.exit.while.body_crit_edge

btrfs_delayed_item_release_metadata.exit.while.body_crit_edge: ; preds = %btrfs_delayed_item_release_metadata.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

btrfs_delayed_item_release_metadata.exit.while.end_crit_edge: ; preds = %btrfs_delayed_item_release_metadata.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %btrfs_delayed_item_release_metadata.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %rb_leftmost.i32 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %rb_leftmost.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rb_leftmost.i32, align 4
  %tobool6.not60 = icmp eq ptr %15, null
  br i1 %tobool6.not60, label %while.end.while.end9_crit_edge, label %while.end.while.body7_crit_edge

while.end.while.body7_crit_edge:                  ; preds = %while.end
  br label %while.body7

while.end.while.end9_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end9

while.body7:                                      ; preds = %btrfs_delayed_item_release_metadata.exit40.while.body7_crit_edge, %while.end.while.body7_crit_edge
  %curr_item.161 = phi ptr [ %call.i41, %btrfs_delayed_item_release_metadata.exit40.while.body7_crit_edge ], [ %15, %while.end.while.body7_crit_edge ]
  %bytes_reserved.i33 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %curr_item.161, i32 0, i32 4
  %16 = ptrtoint ptr %bytes_reserved.i33 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bytes_reserved.i33, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool.not.i34 = icmp eq i64 %17, 0
  br i1 %tobool.not.i34, label %while.body7.btrfs_delayed_item_release_metadata.exit40_crit_edge, label %if.end.i39

while.body7.btrfs_delayed_item_release_metadata.exit40_crit_edge: ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_delayed_item_release_metadata.exit40

if.end.i39:                                       ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fs_info2, align 8
  %delayed_block_rsv.i36 = getelementptr inbounds %struct.btrfs_fs_info, ptr %19, i32 0, i32 23
  %key.i37 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %curr_item.161, i32 0, i32 1
  %20 = ptrtoint ptr %key.i37 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %key.i37, align 4
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %19, ptr noundef nonnull @.str.25, i64 noundef %21, i64 noundef %17, i32 noundef 0) #15
  %22 = ptrtoint ptr %bytes_reserved.i33 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes_reserved.i33, align 8
  %call.i38 = tail call i64 @btrfs_block_rsv_release(ptr noundef %19, ptr noundef %delayed_block_rsv.i36, i64 noundef %23, ptr noundef null) #15
  br label %btrfs_delayed_item_release_metadata.exit40

btrfs_delayed_item_release_metadata.exit40:       ; preds = %if.end.i39, %while.body7.btrfs_delayed_item_release_metadata.exit40_crit_edge
  %call.i41 = tail call ptr @rb_next(ptr noundef nonnull %curr_item.161) #15
  tail call fastcc void @btrfs_release_delayed_item(ptr noundef nonnull %curr_item.161)
  %tobool6.not = icmp eq ptr %call.i41, null
  br i1 %tobool6.not, label %btrfs_delayed_item_release_metadata.exit40.while.end9_crit_edge, label %btrfs_delayed_item_release_metadata.exit40.while.body7_crit_edge

btrfs_delayed_item_release_metadata.exit40.while.body7_crit_edge: ; preds = %btrfs_delayed_item_release_metadata.exit40
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body7

btrfs_delayed_item_release_metadata.exit40.while.end9_crit_edge: ; preds = %btrfs_delayed_item_release_metadata.exit40
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end9

while.end9:                                       ; preds = %btrfs_delayed_item_release_metadata.exit40.while.end9_crit_edge, %while.end.while.end9_crit_edge
  %flags.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 11
  %call.i42 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not.i43, label %while.end9.btrfs_release_delayed_iref.exit_crit_edge, label %if.then.i

while.end9.btrfs_release_delayed_iref.exit_crit_edge: ; preds = %while.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_release_delayed_iref.exit

if.then.i:                                        ; preds = %while.end9
  %24 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %root1, align 8
  %tobool1.not.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i, label %cond.false.i, label %cond.end.i, !prof !70

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.16, i32 noundef 923) #21
  unreachable

cond.end.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %count.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 12
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr %count.i, align 4
  %fs_info.i = getelementptr inbounds %struct.btrfs_root, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fs_info.i, align 8
  %delayed_root5.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %29, i32 0, i32 150
  %30 = ptrtoint ptr %delayed_root5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %delayed_root5.i, align 4
  tail call fastcc void @finish_one_item(ptr noundef %31) #15
  br label %btrfs_release_delayed_iref.exit

btrfs_release_delayed_iref.exit:                  ; preds = %cond.end.i, %while.end9.btrfs_release_delayed_iref.exit_crit_edge
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i, align 4
  %34 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool11.not = icmp eq i32 %34, 0
  br i1 %tobool11.not, label %btrfs_release_delayed_iref.exit.if.end_crit_edge, label %if.then

btrfs_release_delayed_iref.exit.if.end_crit_edge: ; preds = %btrfs_release_delayed_iref.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %btrfs_release_delayed_iref.exit
  %bytes_reserved.i45 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 1
  %35 = ptrtoint ptr %bytes_reserved.i45 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bytes_reserved.i45, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool.not.i46 = icmp eq i64 %36, 0
  br i1 %tobool.not.i46, label %if.then.btrfs_delayed_inode_release_metadata.exit_crit_edge, label %if.end.i50

if.then.btrfs_delayed_inode_release_metadata.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_delayed_inode_release_metadata.exit

if.end.i50:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %delayed_block_rsv.i47 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 23
  %37 = ptrtoint ptr %delayed_node to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %delayed_node, align 8
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %3, ptr noundef nonnull @.str.17, i64 noundef %38, i64 noundef %36, i32 noundef 0) #15
  %39 = ptrtoint ptr %bytes_reserved.i45 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %bytes_reserved.i45, align 8
  %call.i48 = tail call i64 @btrfs_block_rsv_release(ptr noundef %3, ptr noundef %delayed_block_rsv.i47, i64 noundef %40, ptr noundef null) #15
  %41 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %root1, align 8
  %43 = ptrtoint ptr %bytes_reserved.i45 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %bytes_reserved.i45, align 8
  %conv.i = trunc i64 %44 to i32
  tail call void @btrfs_qgroup_convert_reserved_meta(ptr noundef %42, i32 noundef %conv.i) #15
  %45 = ptrtoint ptr %bytes_reserved.i45 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %bytes_reserved.i45, align 8
  br label %btrfs_delayed_inode_release_metadata.exit

btrfs_delayed_inode_release_metadata.exit:        ; preds = %if.end.i50, %if.then.btrfs_delayed_inode_release_metadata.exit_crit_edge
  %tobool.not.i51 = icmp eq ptr %delayed_node, null
  br i1 %tobool.not.i51, label %btrfs_delayed_inode_release_metadata.exit.if.end_crit_edge, label %land.lhs.true.i

btrfs_delayed_inode_release_metadata.exit.if.end_crit_edge: ; preds = %btrfs_delayed_inode_release_metadata.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.i:                                  ; preds = %btrfs_delayed_inode_release_metadata.exit
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i, align 4
  %48 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool1.not.i53 = icmp eq i32 %48, 0
  br i1 %tobool1.not.i53, label %land.lhs.true.i.if.end_crit_edge, label %do.body.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body.i:                                        ; preds = %land.lhs.true.i
  %49 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %root1, align 8
  %tobool2.not.i = icmp eq ptr %50, null
  br i1 %tobool2.not.i, label %do.body7.i, label %do.end12.i, !prof !70

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/delayed-inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 908, 0\0A.popsection", ""() #15, !srcloc !75
  unreachable

do.end12.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #15
  %count.i55 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 12
  %51 = ptrtoint ptr %count.i55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count.i55, align 4
  %dec.i56 = add i32 %52, -1
  store i32 %dec.i56, ptr %count.i55, align 4
  %53 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %root1, align 8
  %fs_info.i57 = getelementptr inbounds %struct.btrfs_root, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %fs_info.i57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fs_info.i57, align 8
  %delayed_root15.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %56, i32 0, i32 150
  %57 = ptrtoint ptr %delayed_root15.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %delayed_root15.i, align 4
  tail call fastcc void @finish_one_item(ptr noundef %58) #15
  br label %if.end

if.end:                                           ; preds = %do.end12.i, %land.lhs.true.i.if.end_crit_edge, %btrfs_delayed_inode_release_metadata.exit.if.end_crit_edge, %btrfs_release_delayed_iref.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_kill_all_delayed_nodes(ptr noundef %root) local_unnamed_addr #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %delayed_nodes = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %delayed_nodes) #15
  %inode_lock = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 33
  %0 = call ptr @memset(ptr %delayed_nodes, i32 255, i32 32)
  call void @_raw_spin_lock(ptr noundef %inode_lock) #15
  %delayed_nodes_tree = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 35
  %call42 = call i32 @radix_tree_gang_lookup(ptr noundef %delayed_nodes_tree, ptr noundef nonnull %delayed_nodes, i32 noundef 0, i32 noundef 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool.not43 = icmp eq i32 %call42, 0
  br i1 %tobool.not43, label %entry.if.then_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

while.cond.loopexit:                              ; preds = %for.inc20.while.cond.loopexit_crit_edge, %for.end.while.cond.loopexit_crit_edge, %for.end.thread
  %1 = trunc i64 %5 to i32
  %extract.t.le = add i32 %1, 1
  call void @_raw_spin_lock(ptr noundef %inode_lock) #15
  %call = call i32 @radix_tree_gang_lookup(ptr noundef %delayed_nodes_tree, ptr noundef nonnull %delayed_nodes, i32 noundef %extract.t.le, i32 noundef 8) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.loopexit.if.then_crit_edge, label %while.cond.loopexit.if.end_crit_edge

while.cond.loopexit.if.end_crit_edge:             ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

while.cond.loopexit.if.then_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %while.cond.loopexit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @_raw_spin_unlock(ptr noundef %inode_lock) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %delayed_nodes) #15
  ret void

if.end:                                           ; preds = %while.cond.loopexit.if.end_crit_edge, %entry.if.end_crit_edge
  %call44 = phi i32 [ %call, %while.cond.loopexit.if.end_crit_edge ], [ %call42, %entry.if.end_crit_edge ]
  %sub = add i32 %call44, -1
  %arrayidx = getelementptr [8 x ptr], ptr %delayed_nodes, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp37 = icmp sgt i32 %call44, 0
  br i1 %cmp37, label %if.end.for.body_crit_edge, label %for.end.thread

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef %inode_lock) #15
  br label %while.cond.loopexit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx4 = getelementptr [8 x ptr], ptr %delayed_nodes, i32 0, i32 %i.038
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %refs = getelementptr inbounds %struct.btrfs_delayed_node, ptr %7, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #15
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #15
  %8 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refs, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %for.body
  %10 = phi i32 [ %9, %for.body ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %10, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #15
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #15
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 %13, i32 %add.i.i.i, ptr elementtype(i32) %refs) #15, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !68

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !68

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 0) #15
  %18 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %19 = phi i32 [ %16, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.not = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #15
  br i1 %tobool12.i.i.i.not, label %if.then6, label %refcount_inc_not_zero.exit.for.inc_crit_edge

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then6:                                         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %refcount_inc_not_zero.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %call44
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @_raw_spin_unlock(ptr noundef %inode_lock) #15
  br i1 %cmp37, label %for.end.for.body13_crit_edge, label %for.end.while.cond.loopexit_crit_edge

for.end.while.cond.loopexit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.loopexit

for.end.for.body13_crit_edge:                     ; preds = %for.end
  br label %for.body13

for.body13:                                       ; preds = %for.inc20.for.body13_crit_edge, %for.end.for.body13_crit_edge
  %i.141 = phi i32 [ %inc21, %for.inc20.for.body13_crit_edge ], [ 0, %for.end.for.body13_crit_edge ]
  %arrayidx14 = getelementptr [8 x ptr], ptr %delayed_nodes, i32 0, i32 %i.141
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %22, null
  br i1 %tobool15.not, label %for.body13.for.inc20_crit_edge, label %if.end17

for.body13.for.inc20_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc20

if.end17:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @__btrfs_kill_delayed_node(ptr noundef nonnull %22)
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx14, align 4
  call fastcc void @__btrfs_release_delayed_node(ptr noundef %24, i32 noundef 0) #15
  br label %for.inc20

for.inc20:                                        ; preds = %if.end17, %for.body13.for.inc20_crit_edge
  %inc21 = add nuw nsw i32 %i.141, 1
  %exitcond45.not = icmp eq i32 %inc21, %call44
  br i1 %exitcond45.not, label %for.inc20.while.cond.loopexit_crit_edge, label %for.inc20.for.body13_crit_edge

for.inc20.for.body13_crit_edge:                   ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body13

for.inc20.while.cond.loopexit_crit_edge:          ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.loopexit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_gang_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_destroy_delayed_inodes(ptr nocapture noundef readonly %fs_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %delayed_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 150
  %0 = ptrtoint ptr %delayed_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %delayed_root, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #15
  %node_list.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %node_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %node_list.i
  br i1 %cmp.i.not.i, label %btrfs_first_delayed_node.exit.thread, label %if.end.i

btrfs_first_delayed_node.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  br label %while.end

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -20
  %refs.i = getelementptr i8, ptr %3, i32 284
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #15, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.btrfs_first_delayed_node.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.btrfs_first_delayed_node.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_first_delayed_node.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #15
  br label %btrfs_first_delayed_node.exit

btrfs_first_delayed_node.exit:                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.btrfs_first_delayed_node.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  %tobool.not5 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not5, label %btrfs_first_delayed_node.exit.while.end_crit_edge, label %btrfs_first_delayed_node.exit.while.body_crit_edge

btrfs_first_delayed_node.exit.while.body_crit_edge: ; preds = %btrfs_first_delayed_node.exit
  br label %while.body

btrfs_first_delayed_node.exit.while.end_crit_edge: ; preds = %btrfs_first_delayed_node.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %btrfs_first_delayed_node.exit.while.body_crit_edge
  %curr_node.06 = phi ptr [ %call1, %while.body.while.body_crit_edge ], [ %add.ptr.i, %btrfs_first_delayed_node.exit.while.body_crit_edge ]
  tail call fastcc void @__btrfs_kill_delayed_node(ptr noundef nonnull %curr_node.06)
  %call1 = tail call fastcc ptr @btrfs_next_delayed_node(ptr noundef nonnull %curr_node.06)
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %curr_node.06, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %btrfs_first_delayed_node.exit.while.end_crit_edge, %btrfs_first_delayed_node.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @btrfs_next_delayed_node(ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info, align 8
  %delayed_root1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 150
  %4 = ptrtoint ptr %delayed_root1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delayed_root1, align 4
  tail call void @_raw_spin_lock(ptr noundef %5) #15
  %flags = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 11
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %node_list = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %node_list, align 4
  %cmp.i.not = icmp eq ptr %9, %node_list
  br i1 %cmp.i.not, label %if.then.out_crit_edge, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.else:                                          ; preds = %entry
  %n_list = getelementptr inbounds %struct.btrfs_delayed_node, ptr %node, i32 0, i32 3
  %node_list7 = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %n_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %n_list, align 4
  %cmp.i25.not = icmp eq ptr %11, %node_list7
  br i1 %cmp.i25.not, label %if.else.out_crit_edge, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %p.0.in = phi ptr [ %node_list, %if.then.if.end15_crit_edge ], [ %n_list, %if.else.if.end15_crit_edge ]
  %12 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %add.ptr = getelementptr i8, ptr %p.0, i32 -20
  %refs = getelementptr i8, ptr %p.0, i32 284
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #15, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end15.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !70

if.end15.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end15
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.out_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !68

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.out_crit_edge:                      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end15.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end15.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #15
  br label %out

out:                                              ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.out_crit_edge, %if.else.out_crit_edge, %if.then.out_crit_edge
  %next.0 = phi ptr [ null, %if.else.out_crit_edge ], [ null, %if.then.out_crit_edge ], [ %add.ptr, %if.else.i.i.i.out_crit_edge ], [ %add.ptr, %if.end15.sink.split.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %5) #15
  ret ptr %next.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__btrfs_release_delayed_node(ptr noundef %delayed_node, i32 noundef %mod) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %delayed_node, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %root = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 2
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info, align 8
  %delayed_root1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 150
  %4 = ptrtoint ptr %delayed_root1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delayed_root1, align 4
  %mutex = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %count = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 12
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  tail call void @_raw_spin_lock(ptr noundef %5) #15
  %flags.i30 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 11
  %8 = ptrtoint ptr %flags.i30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i30, align 4
  %and1.i.i31 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i31)
  %tobool.not.i32 = icmp eq i32 %and1.i.i31, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %tobool.not.i32, label %if.else10.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  %p_list.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 4
  %10 = ptrtoint ptr %p_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %p_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %p_list.i
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  %prepare_list.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then3.i.__list_del_entry.exit.i.i_crit_edge

if.then3.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %p_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then3.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_list.i, ptr noundef %19, ptr noundef %prepare_list.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end4_crit_edge

__list_del_entry.exit.i.i.if.end4_crit_edge:      ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %p_list.i, ptr %prev.i2.i.i, align 4
  %21 = ptrtoint ptr %p_list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %prepare_list.i, ptr %p_list.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %p_list.i, ptr %19, align 4
  br label %if.end4

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mod)
  %tobool5.not.i = icmp eq i32 %mod, 0
  br i1 %tobool5.not.i, label %if.else.i.if.end4_crit_edge, label %if.then6.i

if.else.i.if.end4_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then6.i:                                       ; preds = %if.else.i
  %prepare_list8.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %call.i.i29.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_list.i, ptr noundef %25, ptr noundef %prepare_list8.i) #15
  br i1 %call.i.i29.i, label %if.end.i.i30.i, label %if.then6.i.if.end4_crit_edge

if.then6.i.if.end4_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end.i.i30.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %p_list.i, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %p_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %prepare_list8.i, ptr %p_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %p_list.i, ptr %25, align 4
  br label %if.end4

if.else10.i:                                      ; preds = %if.then3
  %n_list.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 3
  %node_list.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 1
  %prev.i31.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i31.i, align 4
  %call.i.i32.i = tail call zeroext i1 @__list_add_valid(ptr noundef %n_list.i, ptr noundef %31, ptr noundef %node_list.i) #15
  br i1 %call.i.i32.i, label %if.end.i.i34.i, label %if.else10.i.list_add_tail.exit35.i_crit_edge

if.else10.i.list_add_tail.exit35.i_crit_edge:     ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit35.i

if.end.i.i34.i:                                   ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %prev.i31.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %n_list.i, ptr %prev.i31.i, align 4
  %33 = ptrtoint ptr %n_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %node_list.i, ptr %n_list.i, align 4
  %prev3.i.i33.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %prev3.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i33.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %n_list.i, ptr %31, align 4
  br label %list_add_tail.exit35.i

list_add_tail.exit35.i:                           ; preds = %if.end.i.i34.i, %if.else10.i.list_add_tail.exit35.i_crit_edge
  %p_list11.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 4
  %prepare_list12.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 2
  %prev.i36.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev.i36.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i36.i, align 4
  %call.i.i37.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_list11.i, ptr noundef %37, ptr noundef %prepare_list12.i) #15
  br i1 %call.i.i37.i, label %if.end.i.i39.i, label %list_add_tail.exit35.i.list_add_tail.exit40.i_crit_edge

list_add_tail.exit35.i.list_add_tail.exit40.i_crit_edge: ; preds = %list_add_tail.exit35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit40.i

if.end.i.i39.i:                                   ; preds = %list_add_tail.exit35.i
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %prev.i36.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %p_list11.i, ptr %prev.i36.i, align 4
  %39 = ptrtoint ptr %p_list11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %prepare_list12.i, ptr %p_list11.i, align 4
  %prev3.i.i38.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %prev3.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i38.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %p_list11.i, ptr %37, align 4
  br label %list_add_tail.exit40.i

list_add_tail.exit40.i:                           ; preds = %if.end.i.i39.i, %list_add_tail.exit35.i.list_add_tail.exit40.i_crit_edge
  %refs.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #15
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #15, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit40.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

list_add_tail.exit40.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit40.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %43 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit40.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit40.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #15
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %nodes.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 5
  %44 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nodes.i, align 4
  %inc.i = add i32 %45, 1
  store i32 %inc.i, ptr %nodes.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i30) #15
  br label %if.end4

if.else:                                          ; preds = %if.end
  br i1 %tobool.not.i32, label %if.else.if.end4_crit_edge, label %if.then.i36

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then.i36:                                      ; preds = %if.else
  %nodes.i33 = getelementptr inbounds %struct.btrfs_delayed_root, ptr %5, i32 0, i32 5
  %46 = ptrtoint ptr %nodes.i33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nodes.i33, align 4
  %dec.i = add i32 %47, -1
  store i32 %dec.i, ptr %nodes.i33, align 4
  %refs.i34 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i34, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %refs.i34, i32 1, i32 3, i32 1) #15
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i34, ptr %refs.i34, i32 1, ptr elementtype(i32) %refs.i34) #15, !srcloc !82
  %asmresult.i.i.i.i.i.i35 = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i35)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i35, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.then.i36.refcount_dec.exit.i_crit_edge, !prof !70

if.then.i36.refcount_dec.exit.i_crit_edge:        ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_dec.exit.i

if.then3.i.i.i:                                   ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refs.i34, i32 noundef 4) #15
  br label %refcount_dec.exit.i

refcount_dec.exit.i:                              ; preds = %if.then3.i.i.i, %if.then.i36.refcount_dec.exit.i_crit_edge
  %n_list.i37 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 3
  %call.i.i.i38 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %n_list.i37) #15
  br i1 %call.i.i.i38, label %if.end.i.i.i41, label %refcount_dec.exit.i.list_del_init.exit.i_crit_edge

refcount_dec.exit.i.list_del_init.exit.i_crit_edge: ; preds = %refcount_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i41:                                   ; preds = %refcount_dec.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i39 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i.i39, align 4
  %51 = ptrtoint ptr %n_list.i37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %n_list.i37, align 4
  %prev1.i.i.i.i40 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i.i40, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i41, %refcount_dec.exit.i.list_del_init.exit.i_crit_edge
  %55 = ptrtoint ptr %n_list.i37 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %n_list.i37, ptr %n_list.i37, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %n_list.i37, ptr %prev.i3.i.i, align 4
  %p_list.i42 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 4
  %57 = ptrtoint ptr %p_list.i42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %p_list.i42, align 4
  %cmp.i.not.i43 = icmp eq ptr %58, %p_list.i42
  br i1 %cmp.i.not.i43, label %list_del_init.exit.i.if.end.i_crit_edge, label %if.then3.i44

list_del_init.exit.i.if.end.i_crit_edge:          ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then3.i44:                                     ; preds = %list_del_init.exit.i
  %call.i.i15.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p_list.i42) #15
  br i1 %call.i.i15.i, label %if.end.i.i18.i, label %if.then3.i44.list_del_init.exit20.i_crit_edge

if.then3.i44.list_del_init.exit20.i_crit_edge:    ; preds = %if.then3.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit20.i

if.end.i.i18.i:                                   ; preds = %if.then3.i44
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i16.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %prev.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i16.i, align 4
  %61 = ptrtoint ptr %p_list.i42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %p_list.i42, align 4
  %prev1.i.i.i17.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i17.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del_init.exit20.i

list_del_init.exit20.i:                           ; preds = %if.end.i.i18.i, %if.then3.i44.list_del_init.exit20.i_crit_edge
  %65 = ptrtoint ptr %p_list.i42 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %p_list.i42, ptr %p_list.i42, align 4
  %prev.i3.i19.i = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %prev.i3.i19.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %p_list.i42, ptr %prev.i3.i19.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_del_init.exit20.i, %list_del_init.exit.i.if.end.i_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i30) #15
  br label %if.end4

if.end4:                                          ; preds = %if.end.i, %if.else.if.end4_crit_edge, %refcount_inc.exit.i, %if.end.i.i30.i, %if.then6.i.if.end4_crit_edge, %if.else.i.if.end4_crit_edge, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.if.end4_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %5) #15
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  %refs = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 9
  %call.i.i.i.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #15
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #15, !srcloc !82
  %asmresult.i.i.i.i.i.i46 = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i46)
  %cmp.i.i.i47 = icmp eq i32 %asmresult.i.i.i.i.i.i46, 1
  br i1 %cmp.i.i.i47, label %if.then6, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i46)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i46, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !68

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #15
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !83
  %68 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %root, align 8
  %inode_lock = getelementptr inbounds %struct.btrfs_root, ptr %69, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %inode_lock) #15
  %call.i.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #15
  %70 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp = icmp eq i32 %71, 0
  br i1 %cmp, label %cond.end, label %cond.false, !prof !68

cond.false:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.10, i32 noundef 278) #22
  unreachable

cond.end:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %delayed_nodes_tree = getelementptr inbounds %struct.btrfs_root, ptr %69, i32 0, i32 35
  %72 = ptrtoint ptr %delayed_node to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %delayed_node, align 8
  %conv = trunc i64 %73 to i32
  %call13 = tail call ptr @radix_tree_delete(ptr noundef %delayed_nodes_tree, i32 noundef %conv) #15
  tail call void @_raw_spin_unlock(ptr noundef %inode_lock) #15
  %74 = load ptr, ptr @delayed_node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %74, ptr noundef nonnull %delayed_node) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #7 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #15, !srcloc !100
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @btrfs_comp_cpu_keys(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_lookup_inode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_one_item(ptr noundef %delayed_root) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %items_seq = getelementptr inbounds %struct.btrfs_delayed_root, ptr %delayed_root, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %items_seq, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr %items_seq, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %items_seq, ptr %items_seq, i32 1, ptr elementtype(i32) %items_seq) #15, !srcloc !102
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !103
  %items = getelementptr inbounds %struct.btrfs_delayed_root, ptr %delayed_root, i32 0, i32 3
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %items, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %items, i32 1, i32 3, i32 1) #15
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %items, ptr %items, i32 1, ptr elementtype(i32) %items) #15, !srcloc !105
  %asmresult.i.i.i.i6 = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %asmresult.i.i.i.i6)
  %cmp = icmp slt i32 %asmresult.i.i.i.i6, 128
  %2 = and i32 %asmresult.i.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp eq i32 %2, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %delayed_root, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %4, %head.i.i
  br i1 %cmp.i.i.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %wait = getelementptr inbounds %struct.btrfs_delayed_root, ptr %delayed_root, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef %type, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 1), ptr blockaddress(@trace_btrfs_space_reservation, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #15
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !68

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !107
  %call42 = tail call i32 @__traceiter_btrfs_space_reservation(ptr noundef null, ptr noundef %fs_info, ptr noundef %type, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !58) #15
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !68

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_btrfs_space_reservation.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_btrfs_space_reservation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1076, ptr noundef nonnull @.str.19) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !58) #15
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
declare dso_local i64 @btrfs_block_rsv_release(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_qgroup_convert_reserved_meta(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_space_reservation(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__btrfs_qgroup_free_meta(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_init_work(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btrfs_async_run_delayed_root(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call ptr @btrfs_alloc_path() #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body.preheader:                                ; preds = %entry
  %items = getelementptr inbounds %struct.btrfs_delayed_root, ptr %1, i32 0, i32 3
  %prepare_list.i = getelementptr inbounds %struct.btrfs_delayed_root, ptr %1, i32 0, i32 2
  %nr = getelementptr i8, ptr %work, i32 -4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %total_done.0 = phi i32 [ %total_done.1, %do.cond.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %items, i32 noundef 4) #15
  %2 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp slt i32 %3, 64
  br i1 %cmp, label %do.body.do.end_crit_edge, label %if.end4

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end4:                                          ; preds = %do.body
  tail call void @_raw_spin_lock(ptr noundef %1) #15
  %4 = ptrtoint ptr %prepare_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %prepare_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %prepare_list.i
  br i1 %cmp.i.not.i, label %btrfs_first_prepared_delayed_node.exit.thread, label %if.end.i

btrfs_first_prepared_delayed_node.exit.thread:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  br label %do.end

if.end.i:                                         ; preds = %if.end4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -28
  %refs.i = getelementptr i8, ptr %5, i32 276
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #15, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_del_init.exit.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

list_del_init.exit.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_del_init.exit.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.btrfs_first_prepared_delayed_node.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.btrfs_first_prepared_delayed_node.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %btrfs_first_prepared_delayed_node.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_del_init.exit.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_del_init.exit.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #15
  br label %btrfs_first_prepared_delayed_node.exit

btrfs_first_prepared_delayed_node.exit:           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.btrfs_first_prepared_delayed_node.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  %tobool6.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool6.not, label %btrfs_first_prepared_delayed_node.exit.do.end_crit_edge, label %if.end8

btrfs_first_prepared_delayed_node.exit.do.end_crit_edge: ; preds = %btrfs_first_prepared_delayed_node.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end8:                                          ; preds = %btrfs_first_prepared_delayed_node.exit
  %root9 = getelementptr i8, ptr %5, i32 -12
  %16 = ptrtoint ptr %root9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root9, align 8
  %call10 = tail call ptr @btrfs_join_transaction(ptr noundef %17) #15
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end8.do.cond_crit_edge, label %if.end13

if.end8.do.cond_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %block_rsv14 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call10, i32 0, i32 5
  %18 = ptrtoint ptr %block_rsv14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %block_rsv14, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_info, align 8
  %delayed_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %21, i32 0, i32 23
  store ptr %delayed_block_rsv, ptr %block_rsv14, align 8
  %call16 = tail call fastcc i32 @__btrfs_commit_inode_delayed_items(ptr noundef %call10, ptr noundef nonnull %call, ptr noundef nonnull %add.ptr.i)
  %22 = ptrtoint ptr %block_rsv14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %block_rsv14, align 8
  %call18 = tail call i32 @btrfs_end_transaction(ptr noundef %call10) #15
  %23 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fs_info, align 8
  tail call void @btrfs_btree_balance_dirty_nodelay(ptr noundef %24) #15
  br label %do.cond

do.cond:                                          ; preds = %if.end13, %if.end8.do.cond_crit_edge
  tail call void @btrfs_release_path(ptr noundef nonnull %call) #15
  tail call fastcc void @__btrfs_release_delayed_node(ptr noundef nonnull %add.ptr.i, i32 noundef 1) #15
  %total_done.1 = add i32 %total_done.0, 1
  %25 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp21 = icmp eq i32 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %total_done.1)
  %cmp22 = icmp slt i32 %total_done.1, 512
  %or.cond = select i1 %cmp21, i1 %cmp22, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %total_done.1, i32 %26)
  %cmp24 = icmp slt i32 %total_done.1, %26
  %or.cond50 = select i1 %or.cond, i1 true, i1 %cmp24
  br i1 %or.cond50, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %btrfs_first_prepared_delayed_node.exit.do.end_crit_edge, %btrfs_first_prepared_delayed_node.exit.thread, %do.body.do.end_crit_edge
  tail call void @btrfs_free_path(ptr noundef nonnull %call) #15
  br label %out

out:                                              ; preds = %do.end, %entry.out_crit_edge
  %wait = getelementptr inbounds %struct.btrfs_delayed_root, ptr %1, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_btree_balance_dirty_nodelay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !58) #15
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !68

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #15
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_block_rsv_migrate(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__btrfs_add_delayed_item(ptr noundef %delayed_node, ptr noundef %ins, i32 noundef %action) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp1 = icmp eq i32 %action, 1
  %ins_root = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 5
  %del_root = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 6
  %root.0 = select i1 %cmp1, ptr %ins_root, ptr %del_root
  %0 = ptrtoint ptr %root.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root.0, align 4
  %tobool.not70 = icmp eq ptr %1, null
  br i1 %tobool.not70, label %if.then.i.critedge, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %key10 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %ins, i32 0, i32 1
  br label %while.body.outer

while.body.outer:                                 ; preds = %if.end18.thread.while.body.outer_crit_edge, %while.body.lr.ph
  %.ph = phi ptr [ %6, %if.end18.thread.while.body.outer_crit_edge ], [ %1, %while.body.lr.ph ]
  %leftmost.0.off071.ph = phi i1 [ false, %if.end18.thread.while.body.outer_crit_edge ], [ true, %while.body.lr.ph ]
  br label %while.body

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.body.outer
  %2 = phi ptr [ %4, %if.end18.while.body_crit_edge ], [ %.ph, %while.body.outer ]
  %key = getelementptr inbounds %struct.btrfs_delayed_item, ptr %2, i32 0, i32 1
  %call = tail call i32 @btrfs_comp_cpu_keys(ptr noundef %key, ptr noundef %key10) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %if.end18.thread, label %if.else13

if.else13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp14.not = icmp eq i32 %call, 0
  br i1 %cmp14.not, label %if.else13.cleanup_crit_edge, label %if.end18

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.else13
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rb_left, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end18.thread:                                  ; preds = %while.body
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rb_right, align 4
  %tobool.not77 = icmp eq ptr %6, null
  br i1 %tobool.not77, label %while.cond.while.end_crit_edge.thread, label %if.end18.thread.while.body.outer_crit_edge

if.end18.thread.while.body.outer_crit_edge:       ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.outer

while.cond.while.end_crit_edge.thread:            ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #17
  %rb_right.le = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  %phi.cast.le82 = ptrtoint ptr %2 to i32
  %7 = ptrtoint ptr %ins to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %phi.cast.le82, ptr %ins, align 4
  %rb_right.i83 = getelementptr inbounds %struct.rb_node, ptr %ins, i32 0, i32 1
  %8 = ptrtoint ptr %rb_right.i83 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rb_right.i83, align 4
  %rb_left.i84 = getelementptr inbounds %struct.rb_node, ptr %ins, i32 0, i32 2
  %9 = ptrtoint ptr %rb_left.i84 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rb_left.i84, align 4
  br label %rb_insert_color_cached.exit.sink.split

while.cond.while.end_crit_edge:                   ; preds = %if.end18
  %rb_left.le = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  %phi.cast.le = ptrtoint ptr %2 to i32
  %10 = ptrtoint ptr %ins to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %phi.cast.le, ptr %ins, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %ins, i32 0, i32 1
  %11 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %ins, i32 0, i32 2
  %12 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rb_left.i, align 4
  %13 = ptrtoint ptr %rb_left.le to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ins, ptr %rb_left.le, align 4
  br i1 %leftmost.0.off071.ph, label %while.cond.while.end_crit_edge.if.then.i_crit_edge, label %while.cond.while.end_crit_edge.rb_insert_color_cached.exit_crit_edge

while.cond.while.end_crit_edge.rb_insert_color_cached.exit_crit_edge: ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #17
  br label %rb_insert_color_cached.exit

while.cond.while.end_crit_edge.if.then.i_crit_edge: ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %ins to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ins, align 4
  %rb_right.i.c = getelementptr inbounds %struct.rb_node, ptr %ins, i32 0, i32 1
  %15 = ptrtoint ptr %rb_right.i.c to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_right.i.c, align 4
  %rb_left.i.c = getelementptr inbounds %struct.rb_node, ptr %ins, i32 0, i32 2
  %16 = ptrtoint ptr %rb_left.i.c to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_left.i.c, align 4
  %17 = ptrtoint ptr %root.0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ins, ptr %root.0, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.critedge, %while.cond.while.end_crit_edge.if.then.i_crit_edge
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %root.0, i32 0, i32 1
  br label %rb_insert_color_cached.exit.sink.split

rb_insert_color_cached.exit.sink.split:           ; preds = %if.then.i, %while.cond.while.end_crit_edge.thread
  %rb_right.le.sink = phi ptr [ %rb_right.le, %while.cond.while.end_crit_edge.thread ], [ %rb_leftmost.i, %if.then.i ]
  %18 = ptrtoint ptr %rb_right.le.sink to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ins, ptr %rb_right.le.sink, align 4
  br label %rb_insert_color_cached.exit

rb_insert_color_cached.exit:                      ; preds = %rb_insert_color_cached.exit.sink.split, %while.cond.while.end_crit_edge.rb_insert_color_cached.exit_crit_edge
  tail call void @rb_insert_color(ptr noundef %ins, ptr noundef %root.0) #15
  %delayed_node20 = getelementptr inbounds %struct.btrfs_delayed_item, ptr %ins, i32 0, i32 5
  %19 = ptrtoint ptr %delayed_node20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %delayed_node, ptr %delayed_node20, align 8
  %ins_or_del = getelementptr inbounds %struct.btrfs_delayed_item, ptr %ins, i32 0, i32 7
  %20 = ptrtoint ptr %ins_or_del to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %action, ptr %ins_or_del, align 8
  %type = getelementptr inbounds %struct.btrfs_delayed_item, ptr %ins, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %22)
  %cmp22 = icmp eq i8 %22, 96
  %23 = and i1 %cmp1, %cmp22
  br i1 %23, label %land.lhs.true26, label %rb_insert_color_cached.exit.if.end34_crit_edge

rb_insert_color_cached.exit.if.end34_crit_edge:   ; preds = %rb_insert_color_cached.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true26:                                  ; preds = %rb_insert_color_cached.exit
  %offset = getelementptr inbounds %struct.btrfs_delayed_item, ptr %ins, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %offset, align 1
  %index_cnt = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 10
  %26 = ptrtoint ptr %index_cnt to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %index_cnt, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp28.not = icmp ult i64 %25, %27
  br i1 %cmp28.not, label %land.lhs.true26.if.end34_crit_edge, label %if.then30

land.lhs.true26.if.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then30:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  %add = add i64 %25, 1
  %28 = ptrtoint ptr %index_cnt to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add, ptr %index_cnt, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true26.if.end34_crit_edge, %rb_insert_color_cached.exit.if.end34_crit_edge
  %count = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 12
  %29 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %count, align 4
  %root35 = getelementptr inbounds %struct.btrfs_delayed_node, ptr %delayed_node, i32 0, i32 2
  %31 = ptrtoint ptr %root35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %root35, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fs_info, align 8
  %delayed_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %34, i32 0, i32 150
  %35 = ptrtoint ptr %delayed_root to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %delayed_root, align 4
  %items = getelementptr inbounds %struct.btrfs_delayed_root, ptr %36, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %items, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %items, i32 1, i32 3, i32 1) #15
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %items, ptr %items, i32 1, ptr elementtype(i32) %items) #15, !srcloc !99
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.else13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -17, %if.else13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @inode_get_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_qgroup_reserve_meta(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_block_rsv_add(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { cold noreturn }
attributes #23 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !49, !50, !51, !53, !55, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/delayed-inode.c", i32 26, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/delayed-inode.c", i32 1308, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/delayed-inode.c", i32 1394, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/delayed-inode.c", i32 1461, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/btrfs/delayed-inode.c", i32 1470, i32 3}
!10 = !{ptr @delayed_node_cache, !11, !"delayed_node_cache", i1 false, i1 false}
!11 = !{!"../fs/btrfs/delayed-inode.c", i32 22, i32 27}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/delayed-inode.c", i32 1092, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__btrfs_run_delayed_items.__UNIQUE_ID_ddebug927, !13, !"__UNIQUE_ID_ddebug927", i1 false, i1 false}
!18 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/btrfs/delayed-inode.c", i32 278, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @assertfail._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @assertfail._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/delayed-inode.c", i32 999, i32 3}
!29 = !{ptr @__btrfs_update_delayed_inode.__UNIQUE_ID_ddebug925, !28, !"__UNIQUE_ID_ddebug925", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/btrfs/delayed-inode.c", i32 1012, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/delayed-inode.c", i32 923, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/btrfs/delayed-inode.c", i32 662, i32 41}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/trace/events/btrfs.h", i32 1052, i32 1}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @btrfs_init_delayed_node.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../fs/btrfs/delayed-inode.c", i32 50, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/btrfs/delayed-inode.c", i32 573, i32 42}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/btrfs/delayed-inode.c", i32 636, i32 3}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2148631379, i64 2148631411, i64 2148631440, i64 2148631474, i64 2148631505, i64 2148631528}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2148250575, i64 2148250580, i64 2148250593, i64 2148250637, i64 2148250671, i64 2148250692}
!72 = !{i64 2158369182, i64 2158369670, i64 2158369219, i64 2158369275, i64 2158369309, i64 2158369333, i64 2158369374, i64 2158369395, i64 2158369423, i64 2158369457}
!73 = !{i64 1115362, i64 1115386, i64 1115407, i64 1115424, i64 1115441}
!74 = !{i64 2158406974, i64 2158407463, i64 2158407011, i64 2158407067, i64 2158407101, i64 2158407125, i64 2158407166, i64 2158407187, i64 2158407215, i64 2158407249}
!75 = !{i64 2158413621, i64 2158414110, i64 2158413658, i64 2158413714, i64 2158413748, i64 2158413772, i64 2158413813, i64 2158413834, i64 2158413862, i64 2158413896}
!76 = !{i64 2158434618, i64 2158435108, i64 2158434655, i64 2158434711, i64 2158434745, i64 2158434769, i64 2158434810, i64 2158434831, i64 2158434859, i64 2158434893}
!77 = !{i64 2158436491, i64 2158436981, i64 2158436528, i64 2158436584, i64 2158436618, i64 2158436642, i64 2158436683, i64 2158436704, i64 2158436732, i64 2158436766}
!78 = !{i64 2152466095}
!79 = !{i64 2158383009, i64 2158383498, i64 2158383046, i64 2158383102, i64 2158383136, i64 2158383160, i64 2158383201, i64 2158383222, i64 2158383250, i64 2158383284}
!80 = !{i64 2158384724, i64 2158385213, i64 2158384761, i64 2158384817, i64 2158384851, i64 2158384875, i64 2158384916, i64 2158384937, i64 2158384965, i64 2158384999}
!81 = !{i64 2148719404}
!82 = !{i64 2148633844, i64 2148633876, i64 2148633905, i64 2148633939, i64 2148633970, i64 2148633993}
!83 = !{i64 2149917177}
!84 = !{i64 2152963911}
!85 = !{i64 2149701580}
!86 = !{i64 2149706512}
!87 = !{i64 2149728224}
!88 = !{i64 2149733116}
!89 = !{i64 2149809573}
!90 = !{i64 2149809898}
!91 = !{i64 2152975773}
!92 = !{i64 1034529, i64 1034590}
!93 = !{i64 1037261}
!94 = !{i64 1037546}
!95 = !{i64 2152961980}
!96 = !{i64 2152961822}
!97 = !{i64 2152962150}
!98 = !{i64 2149809248}
!99 = !{i64 2148629849, i64 2148629875, i64 2148629904, i64 2148629938, i64 2148629969, i64 2148629992}
!100 = !{i64 2158252257, i64 2158252739, i64 2158252294, i64 2158252350, i64 2158252384, i64 2158252408, i64 2158252449, i64 2158252470, i64 2158252498, i64 2158252532}
!101 = !{i64 2148715284}
!102 = !{i64 2148630569, i64 2148630601, i64 2148630630, i64 2148630664, i64 2148630695, i64 2148630718}
!103 = !{i64 2148715513}
!104 = !{i64 2148718325}
!105 = !{i64 2148633034, i64 2148633066, i64 2148633095, i64 2148633129, i64 2148633160, i64 2148633183}
!106 = !{i64 2148718554}
!107 = !{i64 2155447389}
!108 = !{i64 2155447666}
!109 = !{i64 2149975279}
!110 = !{i64 2149976315}
