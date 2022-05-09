; ModuleID = '/llk/IR_all_yes/fs/btrfs/backref.c_pt.bc'
source_filename = "../fs/btrfs/backref.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ulist_iterator = type { ptr }
%struct.ulist_node = type { i64, i64, %struct.list_head, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.extent_inode_elem = type { i64, i64, ptr }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.preftrees = type { %struct.preftree, %struct.preftree, %struct.preftree }
%struct.preftree = type { %struct.rb_root_cached, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.80, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_transaction = type { i64, %struct.atomic_t, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.extent_io_tree, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.btrfs_delayed_ref_root, ptr, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.list_head }
%struct.btrfs_delayed_ref_root = type { %struct.rb_root_cached, %struct.rb_root, %struct.spinlock, %struct.atomic_t, i32, i32, i64, i32, i64, i64 }
%struct.btrfs_delayed_ref_head = type { i64, i64, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.rb_root_cached, %struct.list_head, %struct.rb_node, ptr, i32, i32, i8 }
%struct.btrfs_extent_item = type { i64, i64, i64 }
%struct.share_check = type { i64, i64, i32 }
%struct.prelim_ref = type { %struct.rb_node, i64, %struct.btrfs_key, i32, i32, ptr, i64, i64 }
%struct.btrfs_extent_inline_ref = type <{ i8, i64 }>
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_seq_list = type { %struct.list_head, i64 }
%struct.btrfs_inode_ref = type <{ i64, i16 }>
%struct.btrfs_tree_block_info = type { %struct.btrfs_disk_key, i8 }
%struct.inode_fs_paths = type { ptr, ptr, ptr }
%struct.btrfs_inode_extref = type <{ i64, i64, i16, [0 x i8] }>
%struct.btrfs_data_container = type { i32, i32, i32, i32, [0 x i64] }
%struct.btrfs_backref_iter = type { i64, ptr, ptr, %struct.btrfs_key, i32, i32, i32 }
%struct.btrfs_backref_cache = type { %struct.rb_root, [8 x ptr], [8 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, i64, i32, i32, %struct.list_head, %struct.list_head, ptr, i32 }
%struct.btrfs_backref_node = type { %struct.anon.84, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i16 }
%struct.anon.84 = type { %struct.rb_node, i64 }
%struct.btrfs_backref_edge = type { [2 x %struct.list_head], [2 x ptr] }
%struct.rb_simple_node = type { %struct.rb_node, i64 }
%struct.btrfs_delayed_extent_op = type { %struct.btrfs_disk_key, i8, i8, i8, i8, i64 }
%struct.btrfs_delayed_ref_node = type { %struct.rb_node, %struct.list_head, i64, i64, i64, %struct.refcount_struct, i32, i24 }
%struct.btrfs_delayed_tree_ref = type { %struct.btrfs_delayed_ref_node, i64, i64, i32 }
%struct.btrfs_delayed_data_ref = type { %struct.btrfs_delayed_ref_node, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"btrfs_prelim_ref\00", [47 x i8] zeroinitializer }, align 32
@btrfs_prelim_ref_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/btrfs/backref.c\00", [45 x i8] zeroinitializer }, align 32
@extent_from_logical.__UNIQUE_ID_ddebug927 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 1, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"extent_from_logical\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"logical %llu is not within any extent\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017logical %llu is not within any extent\00", [56 x i8] zeroinitializer }, align 32
@extent_from_logical.__UNIQUE_ID_ddebug928 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.6, i8 1, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"logical %llu is at position %llu within the extent (%llu EXTENT_ITEM %llu) flags %#llx size %u\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\017logical %llu is at position %llu within the extent (%llu EXTENT_ITEM %llu) flags %#llx size %u\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"key->type == BTRFS_METADATA_ITEM_KEY\00", [59 x i8] zeroinitializer }, align 32
@iterate_extent_inodes.__UNIQUE_ID_ddebug931 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.9, ptr @.str.1, ptr @.str.10, i8 1, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iterate_extent_inodes\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"resolving all inodes for extent %llu\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017resolving all inodes for extent %llu\00", [57 x i8] zeroinitializer }, align 32
@iterate_extent_inodes.__UNIQUE_ID_ddebug932 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.9, ptr @.str.1, ptr @.str.12, i8 1, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"root %llu references leaf %llu, data list %#llx\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017root %llu references leaf %llu, data list %#llx\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iter->cur_ptr < iter->end_ptr\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"level >= 0 && level < BTRFS_MAX_LEVEL\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"list_empty(&cache->pending[i])\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"list_empty(&cache->pending_edge)\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"list_empty(&cache->useless_node)\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"list_empty(&cache->changed)\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"list_empty(&cache->detached)\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RB_EMPTY_ROOT(&cache->rb_root)\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"!cache->nr_nodes\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"!cache->nr_edges\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"list_is_singular(&cur->upper)\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"list_empty(&edge->list[UPPER])\00", [33 x i8] zeroinitializer }, align 32
@__func__.btrfs_backref_add_tree_node = private unnamed_addr constant [28 x i8] c"btrfs_backref_add_tree_node\00", align 1
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"start->checked\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"list_empty(&cache->useless_node) && list_empty(&cache->pending_edge)\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ret != 0\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eie\00", [28 x i8] zeroinitializer }, align 32
@btrfs_delayed_ref_head_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_btrfs_prelim_ref_merge = external dso_local global %struct.tracepoint, align 4
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_btrfs_prelim_ref_merge.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_prelim_ref_insert = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_prelim_ref_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BUG: direct ref found in indirect tree\00", [57 x i8] zeroinitializer }, align 32
@resolve_indirect_ref.__UNIQUE_ID_ddebug924 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.35, ptr @.str.1, ptr @.str.36, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"resolve_indirect_ref\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"search slot in root %llu (level %d, ref count %d) returned %d for key (%llu %u %llu)\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\017search slot in root %llu (level %d, ref count %d) returned %d for key (%llu %u %llu)\00", [41 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.40, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@iterate_leaf_refs.__UNIQUE_ID_ddebug929 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.41, ptr @.str.1, ptr @.str.42, i8 1, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iterate_leaf_refs\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ref for %llu resolved, key (%llu EXTEND_DATA %llu), root %llu\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017ref for %llu resolved, key (%llu EXTEND_DATA %llu), root %llu\00", [32 x i8] zeroinitializer }, align 32
@iterate_leaf_refs.__UNIQUE_ID_ddebug930 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.41, ptr @.str.1, ptr @.str.44, i8 1, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"stopping iteration for %llu due to ret=%d\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017stopping iteration for %llu due to ret=%d\00", [52 x i8] zeroinitializer }, align 32
@iterate_inode_refs.__UNIQUE_ID_ddebug933 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.46, ptr @.str.1, ptr @.str.47, i8 2, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iterate_inode_refs\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"following ref at offset %u for inode %llu in tree %llu\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017following ref at offset %u for inode %llu in tree %llu\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"list_empty(&node->upper)\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/btrfs/backref.h\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"list_empty(&node->list)\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"list_empty(&node->lower)\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"node->eb == NULL\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"upper->checked\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"upper && lower && upper->level == lower->level + 1\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013Unsupported V0 extent filesystem detected. Aborting. Please re-create your filesystem with a newer kernel\00", [52 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"btrfs_root_bytenr(&root->root_item) == cur->bytenr\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013couldn't find block (%llu) (level %d) in tree (%llu) with key (%llu %u %llu)\00", [49 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"btrfs_root_bytenr(&root->root_item) == lower->bytenr\00", [43 x i8] zeroinitializer }, align 32
@__func__.btrfs_backref_panic = private unnamed_addr constant [20 x i8] c"btrfs_backref_panic\00", align 1
@.str.61 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Inconsistency in backref cache found at offset %llu\00", [44 x i8] zeroinitializer }, align 32
@switch.table.btrfs_backref_iter_next = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 9, i32 0, i32 29, i32 0, i32 0, i32 0, i32 9, i32 0, i32 13], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 176, i64 178, i64 182, i64 184]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 8, i64 176, i64 178, i64 182, i64 184]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967294]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 168, i64 169]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 168, i64 169]
@__sancov_gen_cov_switch_values.67 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 176, i64 178, i64 182, i64 184]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 176, i64 182]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 168, i64 169]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967294]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 176, i64 182]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 176, i64 182]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 8, i64 176, i64 180, i64 182]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 8, i64 176, i64 180, i64 182]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 8, i64 176, i64 178, i64 182, i64 184]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 152, i32 45 }
@___asan_gen_.82 = private unnamed_addr constant [23 x i8] c"btrfs_prelim_ref_cache\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 148, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1578, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1784, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1796, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1913, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1969, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2002, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2445, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2508, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2596, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2597, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2598, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2599, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2600, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2601, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2602, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2603, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2890, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2893, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2990, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 3050, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 3133, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1215, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1369, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1830, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 108, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 693, i32 7 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 614, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 3491, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1932, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1938, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2099, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 347, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 300, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 301, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 302, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2671, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 287, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 3562, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2715, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2752, i32 3 }
@___asan_gen_.263 = private constant [22 x i8] c"../fs/btrfs/backref.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2765, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [22 x i8] c"../fs/btrfs/backref.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 365, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [37 x i8] c"switch.table.btrfs_backref_iter_next\00", align 1
@llvm.compiler.used = appending global [65 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @btrfs_prelim_ref_cache, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @switch.table.btrfs_backref_iter_next], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_prelim_ref_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btrfs_backref_iter_next to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_prelim_ref_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 0, i32 noundef 1048576, ptr noundef null) #13
  store ptr %call, ptr @btrfs_prelim_ref_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_prelim_ref_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_find_all_leafs(ptr noundef %trans, ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %time_seq, ptr nocapture noundef %leafs, ptr noundef %extent_item_pos, i1 noundef zeroext %ignore_offset) local_unnamed_addr #2 align 64 {
entry:
  %uiter.i = alloca %struct.ulist_iterator, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ulist_alloc(i32 noundef 3136) #13
  %0 = ptrtoint ptr %leafs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %leafs, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @find_parent_nodes(ptr noundef %trans, ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %time_seq, ptr noundef nonnull %call, ptr noundef null, ptr noundef %extent_item_pos, ptr noundef null, i1 noundef zeroext %ignore_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, -2
  %or.cond = or i1 %cmp, %cmp3.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %1 = ptrtoint ptr %leafs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %leafs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uiter.i) #13
  %3 = ptrtoint ptr %uiter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %uiter.i, align 4
  %call8.i = call ptr @ulist_next(ptr noundef %2, ptr noundef nonnull %uiter.i) #13
  %tobool.not9.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not9.i, label %if.then4.free_leaf_list.exit_crit_edge, label %if.then4.while.body.i_crit_edge

if.then4.while.body.i_crit_edge:                  ; preds = %if.then4
  br label %while.body.i

if.then4.free_leaf_list.exit_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_leaf_list.exit

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.then4.while.body.i_crit_edge
  %call10.i = phi ptr [ %call.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call8.i, %if.then4.while.body.i_crit_edge ]
  %aux.i = getelementptr inbounds %struct.ulist_node, ptr %call10.i, i32 0, i32 1
  %4 = ptrtoint ptr %aux.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %aux.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.not.i = icmp eq i64 %5, 0
  br i1 %tobool1.not.i, label %while.body.i.while.cond.backedge.i_crit_edge, label %unode_aux_to_inode_list.exit.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.i

unode_aux_to_inode_list.exit.i:                   ; preds = %while.body.i
  %conv.i.i = trunc i64 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not3.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not3.i.i, label %unode_aux_to_inode_list.exit.i.free_inode_elem_list.exit.i_crit_edge, label %for.body.i.preheader.i

unode_aux_to_inode_list.exit.i.free_inode_elem_list.exit.i_crit_edge: ; preds = %unode_aux_to_inode_list.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_inode_elem_list.exit.i

for.body.i.preheader.i:                           ; preds = %unode_aux_to_inode_list.exit.i
  %6 = inttoptr i32 %conv.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %eie.addr.04.i.i = phi ptr [ %8, %for.body.i.i.for.body.i.i_crit_edge ], [ %6, %for.body.i.preheader.i ]
  %next.i.i = getelementptr inbounds %struct.extent_inode_elem, ptr %eie.addr.04.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next.i.i, align 8
  call void @kfree(ptr noundef nonnull %eie.addr.04.i.i) #13
  %tobool.not.i7.i = icmp eq ptr %8, null
  br i1 %tobool.not.i7.i, label %for.body.i.i.free_inode_elem_list.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.free_inode_elem_list.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_inode_elem_list.exit.i

free_inode_elem_list.exit.i:                      ; preds = %for.body.i.i.free_inode_elem_list.exit.i_crit_edge, %unode_aux_to_inode_list.exit.i.free_inode_elem_list.exit.i_crit_edge
  %9 = ptrtoint ptr %aux.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %aux.i, align 8
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %free_inode_elem_list.exit.i, %while.body.i.while.cond.backedge.i_crit_edge
  %call.i = call ptr @ulist_next(ptr noundef %2, ptr noundef nonnull %uiter.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.cond.backedge.i.free_leaf_list.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.backedge.i.free_leaf_list.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_leaf_list.exit

free_leaf_list.exit:                              ; preds = %while.cond.backedge.i.free_leaf_list.exit_crit_edge, %if.then4.free_leaf_list.exit_crit_edge
  call void @ulist_free(ptr noundef %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uiter.i) #13
  br label %cleanup

cleanup:                                          ; preds = %free_leaf_list.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %free_leaf_list.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ulist_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_parent_nodes(ptr noundef readonly %trans, ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %time_seq, ptr noundef %refs, ptr noundef %roots, ptr noundef %extent_item_pos, ptr noundef %sc, i1 noundef zeroext %ignore_offset) unnamed_addr #2 align 64 {
entry:
  %old64.i = alloca i64, align 8
  %uiter.i = alloca %struct.ulist_iterator, align 4
  %disk_key.i103.i = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i.i442 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i.i421 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  %eie = alloca ptr, align 4
  %preftrees = alloca %struct.preftrees, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @btrfs_extent_root(ptr noundef %fs_info, i64 noundef %bytenr) #13
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #13
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eie) #13
  %2 = ptrtoint ptr %eie to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %eie, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %preftrees) #13
  %3 = call ptr @memset(ptr %preftrees, i32 0, i32 36)
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %bytenr, ptr %key, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 -1, ptr %1, align 1
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  %6 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %incompat_flags.i.i, align 1
  %10 = and i64 %9, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.i.not = icmp eq i64 %10, 0
  %. = select i1 %tobool.i.not, i8 -88, i8 -87
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %., ptr %0, align 8
  %call3 = tail call ptr @btrfs_alloc_path() #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup304_crit_edge, label %if.end5

entry.cleanup304_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup304

if.end5:                                          ; preds = %entry
  %tobool6.not = icmp eq ptr %trans, null
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %search_commit_root = getelementptr inbounds %struct.btrfs_path, ptr %call3, i32 0, i32 5
  %12 = ptrtoint ptr %search_commit_root to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %search_commit_root, align 2
  %bf.set10 = or i8 %bf.load, 48
  store i8 %bf.set10, ptr %search_commit_root, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %time_seq)
  %cmp = icmp eq i64 %time_seq, -1
  br i1 %cmp, label %if.then12, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %skip_locking13 = getelementptr inbounds %struct.btrfs_path, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %skip_locking13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load14 = load i8, ptr %skip_locking13, align 2
  %bf.set16 = or i8 %bf.load14, 32
  store i8 %bf.set16, ptr %skip_locking13, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end11.if.end17_crit_edge
  %call18542 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call, ptr noundef nonnull %key, ptr noundef nonnull %call3, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18542)
  %cmp19543 = icmp slt i32 %call18542, 0
  br i1 %cmp19543, label %if.end17.out_crit_edge, label %if.end21.lr.ph

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end21.lr.ph:                                   ; preds = %if.end17
  %type29 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 9
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  br label %if.end21

if.end21:                                         ; preds = %btrfs_put_delayed_ref_head.exit.if.end21_crit_edge, %if.end21.lr.ph
  %call18544 = phi i32 [ %call18542, %if.end21.lr.ph ], [ %call18, %btrfs_put_delayed_ref_head.exit.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18544)
  %cmp22 = icmp eq i32 %call18544, 0
  br i1 %cmp22, label %cond.false, label %if.end27

cond.false:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 1215) #16
  unreachable

if.end27:                                         ; preds = %if.end21
  br i1 %tobool6.not, label %if.end27.if.end61_crit_edge, label %land.lhs.true

if.end27.if.end61_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end27
  %14 = ptrtoint ptr %type29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %15)
  %cmp30.not = icmp eq i32 %15, 8192
  %or.cond = or i1 %cmp, %cmp30.not
  br i1 %or.cond, label %land.lhs.true.if.end61_crit_edge, label %if.then39, !prof !137

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then39:                                        ; preds = %land.lhs.true
  %16 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transaction, align 4
  %delayed_refs40 = getelementptr inbounds %struct.btrfs_transaction, ptr %17, i32 0, i32 23
  %lock = getelementptr inbounds %struct.btrfs_transaction, ptr %17, i32 0, i32 23, i32 2
  call void @_raw_spin_lock(ptr noundef %lock) #13
  %call41 = call ptr @btrfs_find_delayed_ref_head(ptr noundef %delayed_refs40, i64 noundef %bytenr) #13
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.else58, label %if.then43

if.then43:                                        ; preds = %if.then39
  %mutex = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call41, i32 0, i32 3
  %call44 = call i32 @mutex_trylock(ptr noundef %mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.then43
  %refs47 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call41, i32 0, i32 2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs47, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refs47, i32 1, i32 3, i32 1) #13
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs47, ptr %refs47, i32 1, ptr elementtype(i32) %refs47) #13, !srcloc !138
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then46.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !139

if.then46.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then46
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !140

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then46.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then46.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs47, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  call void @btrfs_release_path(ptr noundef nonnull %call3) #13
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  call void @mutex_unlock(ptr noundef %mutex) #13
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs47, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !141
  call void @llvm.prefetch.p0(ptr %refs47, i32 1, i32 3, i32 1) #13
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs47, ptr %refs47, i32 1, ptr elementtype(i32) %refs47) #13, !srcloc !142
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.btrfs_put_delayed_ref_head.exit_crit_edge, label %if.then10.i.i.i.i, !prof !140

if.end5.i.i.i.i.btrfs_put_delayed_ref_head.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_put_delayed_ref_head.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refs47, i32 noundef 3) #13
  br label %btrfs_put_delayed_ref_head.exit

if.then.i:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_delayed_ref_head_cachep to i32))
  %21 = load ptr, ptr @btrfs_delayed_ref_head_cachep, align 4
  call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %call41) #13
  br label %btrfs_put_delayed_ref_head.exit

btrfs_put_delayed_ref_head.exit:                  ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.btrfs_put_delayed_ref_head.exit_crit_edge
  %call18 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call, ptr noundef nonnull %key, ptr noundef nonnull %call3, i32 noundef 0, i32 noundef 0) #13
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %btrfs_put_delayed_ref_head.exit.out_crit_edge, label %btrfs_put_delayed_ref_head.exit.if.end21_crit_edge

btrfs_put_delayed_ref_head.exit.if.end21_crit_edge: ; preds = %btrfs_put_delayed_ref_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

btrfs_put_delayed_ref_head.exit.out_crit_edge:    ; preds = %btrfs_put_delayed_ref_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end51:                                         ; preds = %if.then43
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  %call53 = call fastcc i32 @add_delayed_refs(ptr noundef %fs_info, ptr noundef nonnull %call41, i64 noundef %time_seq, ptr noundef nonnull %preftrees, ptr noundef %sc)
  call void @mutex_unlock(ptr noundef %mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool55.not = icmp eq i32 %call53, 0
  br i1 %tobool55.not, label %if.end51.if.end61_crit_edge, label %if.end51.out_crit_edge

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.else58:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.end51.if.end61_crit_edge, %land.lhs.true.if.end61_crit_edge, %if.end27.if.end61_crit_edge
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call3, i32 0, i32 1
  %22 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool62.not = icmp eq i32 %23, 0
  br i1 %tobool62.not, label %if.end61.if.end90_crit_edge, label %if.then63

if.end61.if.end90_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then63:                                        ; preds = %if.end61
  %dec = add i32 %23, -1
  %24 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %dec, ptr %slots, align 4
  %25 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call3, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #13
  %27 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %dec, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %29 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %26, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #13
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %28, align 1
  %32 = call i64 @llvm.bswap.i64(i64 %31) #13
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %1, align 1
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %27, align 8
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %0, align 8
  %37 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %disk_key.i, align 8
  %39 = call i64 @llvm.bswap.i64(i64 %38) #13
  %40 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %bytenr)
  %cmp70 = icmp eq i64 %39, %bytenr
  %41 = and i8 %35, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %41)
  %switch = icmp eq i8 %41, -88
  %or.cond517 = select i1 %cmp70, i1 %switch, i1 false
  br i1 %or.cond517, label %if.then79, label %if.then63.if.end90_crit_edge

if.then63.if.end90_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then79:                                        ; preds = %if.then63
  %42 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call3, align 4
  %44 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %slots, align 4
  %mul.i.i.i.i418 = mul i32 %45, 25
  %add.i.i.i.i419 = add i32 %mul.i.i.i.i418, 101
  %46 = inttoptr i32 %add.i.i.i.i419 to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %43, ptr noundef %46, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call.i.i.i)
  %cmp.i = icmp ult i32 %call.i.i.i, 24
  br i1 %cmp.i, label %do.body4.i, label %do.end9.i, !prof !139

do.body4.i:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 954, 0\0A.popsection", ""() #13, !srcloc !144
  unreachable

do.end9.i:                                        ; preds = %if.then79
  %call.i.i209.i = call i32 @btrfs_get_32(ptr noundef %43, ptr noundef %46, i32 noundef 17) #13
  %add.i = add i32 %call.i.i209.i, 101
  %47 = inttoptr i32 %add.i to ptr
  %call.i.i = call i64 @btrfs_get_64(ptr noundef %43, ptr noundef %47, i32 noundef 16) #13
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #13
  %48 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 1
  %49 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  %50 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %43, ptr noundef nonnull %disk_key.i.i, i32 noundef %add.i.i.i.i419, i32 noundef 17) #13
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %49, align 1
  %53 = call i64 @llvm.bswap.i64(i64 %52) #13
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %48, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #13
  %add.ptr.i = getelementptr %struct.btrfs_extent_item, ptr %47, i32 1
  %56 = ptrtoint ptr %add.ptr.i to i32
  %add13.i = add i32 %add.i, %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %55)
  %cmp16.i = icmp ne i8 %55, -88
  %and.i = and i64 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool18.not.i = icmp eq i64 %and.i, 0
  %or.cond.i = select i1 %cmp16.i, i1 true, i1 %tobool18.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %do.end9.i
  %call.i210.i = call zeroext i8 @btrfs_get_8(ptr noundef %43, ptr noundef %add.ptr.i, i32 noundef 17) #13
  %conv21.i = zext i8 %call.i210.i to i32
  %add22.i = add i32 %56, 18
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i, i32 %add13.i)
  %cmp24.i = icmp ugt i32 %add22.i, %add13.i
  br i1 %cmp24.i, label %do.body33.i, label %if.then19.i.if.end71.i_crit_edge, !prof !139

if.then19.i.if.end71.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71.i

do.body33.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 970, 0\0A.popsection", ""() #13, !srcloc !145
  unreachable

if.else.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -87, i8 %55)
  %cmp44.i = icmp eq i8 %55, -87
  br i1 %cmp44.i, label %if.then46.i, label %do.body49.i

if.then46.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv47.i = trunc i64 %53 to i32
  br label %if.end71.i

do.body49.i:                                      ; preds = %if.else.i
  %and50.i = and i64 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and50.i)
  %tobool51.not.i = icmp eq i64 %and50.i, 0
  br i1 %tobool51.not.i, label %do.body61.i, label %do.body49.i.if.end71.i_crit_edge, !prof !139

do.body49.i.if.end71.i_crit_edge:                 ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71.i

do.body61.i:                                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 974, 0\0A.popsection", ""() #13, !srcloc !146
  unreachable

if.end71.i:                                       ; preds = %do.body49.i.if.end71.i_crit_edge, %if.then46.i, %if.then19.i.if.end71.i_crit_edge
  %info_level.0 = phi i32 [ %conv47.i, %if.then46.i ], [ 0, %do.body49.i.if.end71.i_crit_edge ], [ %conv21.i, %if.then19.i.if.end71.i_crit_edge ]
  %ptr.0.i = phi i32 [ %56, %if.then46.i ], [ %56, %do.body49.i.if.end71.i_crit_edge ], [ %add22.i, %if.then19.i.if.end71.i_crit_edge ]
  %share_count.i.i.i254.i = getelementptr inbounds %struct.share_check, ptr %sc, i32 0, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %ptr.0.i, i32 %add13.i)
  %cmp72277.i = icmp ult i32 %ptr.0.i, %add13.i
  br i1 %cmp72277.i, label %while.body.lr.ph.i, label %if.end71.i.if.end83_crit_edge

if.end71.i.if.end83_crit_edge:                    ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = add i32 %info_level.0, 1
  br label %if.end83

while.body.lr.ph.i:                               ; preds = %if.end71.i
  %tobool99.not.i = icmp eq ptr %sc, null
  %inum.i = getelementptr inbounds %struct.share_check, ptr %sc, i32 0, i32 1
  %indirect.i239.i = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 1
  %indirect_missing_keys.i.i = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 2
  %add89.i = add i32 %info_level.0, 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup142.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %ptr.1278.i = phi i32 [ %ptr.0.i, %while.body.lr.ph.i ], [ %add141.i, %cleanup142.i.while.body.i_crit_edge ]
  %57 = inttoptr i32 %ptr.1278.i to ptr
  %call76.i = call i32 @btrfs_get_extent_inline_ref_type(ptr noundef %43, ptr noundef %57, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp eq i32 %call76.i, 0
  br i1 %cmp77.i, label %while.body.i.out_crit_edge, label %if.end80.i

while.body.i.out_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end80.i:                                       ; preds = %while.body.i
  %call.i211.i = call i64 @btrfs_get_64(ptr noundef %43, ptr noundef %57, i32 noundef 1) #13
  %58 = zext i32 %call76.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call76.i, label %sw.epilog.i [
    i32 182, label %sw.bb.i
    i32 184, label %sw.bb84.i
    i32 176, label %sw.bb88.i
    i32 178, label %sw.bb91.i
  ]

sw.bb.i:                                          ; preds = %if.end80.i
  %59 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i212.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %59, i32 noundef 3136) #13
  %tobool.not.i.i.i = icmp eq ptr %call.i.i212.i, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.out_crit_edge, label %if.end2.i.i.i

sw.bb.i.out_crit_edge:                            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %root_id3.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i212.i, i32 0, i32 1
  %inode_list.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i212.i, i32 0, i32 5
  %60 = ptrtoint ptr %inode_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %inode_list.i.i.i, align 4
  %level8.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i212.i, i32 0, i32 3
  %61 = call ptr @memset(ptr %root_id3.i.i.i, i32 0, i32 25)
  %62 = ptrtoint ptr %level8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add89.i, ptr %level8.i.i.i, align 4
  %count9.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i212.i, i32 0, i32 4
  %63 = ptrtoint ptr %count9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %count9.i.i.i, align 8
  %parent10.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i212.i, i32 0, i32 6
  %64 = ptrtoint ptr %parent10.i.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %call.i211.i, ptr %parent10.i.i.i, align 8
  %wanted_disk_byte11.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i212.i, i32 0, i32 7
  %65 = ptrtoint ptr %wanted_disk_byte11.i.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %bytenr, ptr %wanted_disk_byte11.i.i.i, align 8
  call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef nonnull %preftrees, ptr noundef nonnull %call.i.i212.i, ptr noundef null) #13
  br label %cleanup142.i

sw.bb84.i:                                        ; preds = %if.end80.i
  %add.ptr85.i = getelementptr %struct.btrfs_extent_inline_ref, ptr %57, i32 1
  %call.i213.i = call i32 @btrfs_get_32(ptr noundef %43, ptr noundef %add.ptr85.i, i32 noundef 0) #13
  %66 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i214.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %66, i32 noundef 3136) #13
  %tobool.not.i.i215.i = icmp eq ptr %call.i.i214.i, null
  br i1 %tobool.not.i.i215.i, label %sw.bb84.i.out_crit_edge, label %if.end2.i.i222.i

sw.bb84.i.out_crit_edge:                          ; preds = %sw.bb84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i222.i:                                 ; preds = %sw.bb84.i
  %root_id3.i.i216.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i214.i, i32 0, i32 1
  %inode_list.i.i217.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i214.i, i32 0, i32 5
  %67 = ptrtoint ptr %inode_list.i.i217.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %inode_list.i.i217.i, align 4
  %level8.i.i218.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i214.i, i32 0, i32 3
  %68 = call ptr @memset(ptr %root_id3.i.i216.i, i32 0, i32 25)
  %69 = ptrtoint ptr %level8.i.i218.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %level8.i.i218.i, align 4
  %count9.i.i219.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i214.i, i32 0, i32 4
  %70 = ptrtoint ptr %count9.i.i219.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call.i213.i, ptr %count9.i.i219.i, align 8
  %parent10.i.i220.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i214.i, i32 0, i32 6
  %71 = ptrtoint ptr %parent10.i.i220.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %call.i211.i, ptr %parent10.i.i220.i, align 8
  %wanted_disk_byte11.i.i221.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i214.i, i32 0, i32 7
  %72 = ptrtoint ptr %wanted_disk_byte11.i.i221.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %bytenr, ptr %wanted_disk_byte11.i.i221.i, align 8
  call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef nonnull %preftrees, ptr noundef nonnull %call.i.i214.i, ptr noundef %sc) #13
  br i1 %tobool99.not.i, label %if.end2.i.i222.i.cleanup142.i_crit_edge, label %land.rhs.i.i.i.i

if.end2.i.i222.i.cleanup142.i_crit_edge:          ; preds = %if.end2.i.i222.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup142.i

land.rhs.i.i.i.i:                                 ; preds = %if.end2.i.i222.i
  %73 = ptrtoint ptr %share_count.i.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %share_count.i.i.i254.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp.i.i.i.i420 = icmp sgt i32 %74, 1
  br i1 %cmp.i.i.i.i420, label %land.rhs.i.i.i.i.out_crit_edge, label %land.rhs.i.i.i.i.cleanup142.i_crit_edge

land.rhs.i.i.i.i.cleanup142.i_crit_edge:          ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup142.i

land.rhs.i.i.i.i.out_crit_edge:                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.bb88.i:                                        ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9, i64 %call.i211.i)
  %cmp.i.i.i = icmp eq i64 %call.i211.i, -9
  br i1 %cmp.i.i.i, label %sw.bb88.i.cleanup142.i_crit_edge, label %if.end.i.i.i

sw.bb88.i.cleanup142.i_crit_edge:                 ; preds = %sw.bb88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup142.i

if.end.i.i.i:                                     ; preds = %sw.bb88.i
  %75 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i225.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %75, i32 noundef 3136) #13
  %tobool.not.i.i226.i = icmp eq ptr %call.i.i225.i, null
  br i1 %tobool.not.i.i226.i, label %if.end.i.i.i.out_crit_edge, label %if.end2.i.i228.i

if.end.i.i.i.out_crit_edge:                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i228.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %root_id3.i.i227.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i225.i, i32 0, i32 1
  %76 = ptrtoint ptr %root_id3.i.i227.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %call.i211.i, ptr %root_id3.i.i227.i, align 8
  %key_for_search6.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i225.i, i32 0, i32 2
  %77 = call ptr @memset(ptr %key_for_search6.i.i.i, i32 0, i32 17)
  %inode_list.i.i229.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i225.i, i32 0, i32 5
  %78 = ptrtoint ptr %inode_list.i.i229.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %inode_list.i.i229.i, align 4
  %level8.i.i230.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i225.i, i32 0, i32 3
  %79 = ptrtoint ptr %level8.i.i230.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add89.i, ptr %level8.i.i230.i, align 4
  %count9.i.i231.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i225.i, i32 0, i32 4
  %80 = ptrtoint ptr %count9.i.i231.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %count9.i.i231.i, align 8
  %parent10.i.i232.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i225.i, i32 0, i32 6
  %81 = ptrtoint ptr %parent10.i.i232.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 0, ptr %parent10.i.i232.i, align 8
  %wanted_disk_byte11.i.i233.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i225.i, i32 0, i32 7
  %82 = ptrtoint ptr %wanted_disk_byte11.i.i233.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %bytenr, ptr %wanted_disk_byte11.i.i233.i, align 8
  call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef %indirect_missing_keys.i.i, ptr noundef nonnull %call.i.i225.i, ptr noundef null) #13
  br label %cleanup142.i

sw.bb91.i:                                        ; preds = %if.end80.i
  %offset93.i = getelementptr inbounds %struct.btrfs_extent_inline_ref, ptr %57, i32 0, i32 1
  %call.i235.i = call i32 @btrfs_get_32(ptr noundef %43, ptr noundef %offset93.i, i32 noundef 24) #13
  %call.i236.i = call i64 @btrfs_get_64(ptr noundef %43, ptr noundef %offset93.i, i32 noundef 8) #13
  %call.i237.i = call i64 @btrfs_get_64(ptr noundef %43, ptr noundef %offset93.i, i32 noundef 16) #13
  br i1 %tobool99.not.i, label %sw.bb91.i.if.end108.i_crit_edge, label %land.lhs.true100.i

sw.bb91.i.if.end108.i_crit_edge:                  ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108.i

land.lhs.true100.i:                               ; preds = %sw.bb91.i
  %83 = ptrtoint ptr %inum.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %inum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %tobool101.not.i = icmp eq i64 %84, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i236.i, i64 %84)
  %cmp105.not.i = icmp eq i64 %call.i236.i, %84
  %or.cond276.i = select i1 %tobool101.not.i, i1 true, i1 %cmp105.not.i
  br i1 %or.cond276.i, label %land.lhs.true100.i.if.end108.i_crit_edge, label %land.lhs.true100.i.out_crit_edge

land.lhs.true100.i.out_crit_edge:                 ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true100.i.if.end108.i_crit_edge:         ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108.i

if.end108.i:                                      ; preds = %land.lhs.true100.i.if.end108.i_crit_edge, %sw.bb91.i.if.end108.i_crit_edge
  %call.i238.i = call i64 @btrfs_get_64(ptr noundef %43, ptr noundef %offset93.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9, i64 %call.i238.i)
  %cmp.i.i241.i = icmp eq i64 %call.i238.i, -9
  br i1 %cmp.i.i241.i, label %if.end108.i.cleanup142.i_crit_edge, label %if.end.i.i244.i

if.end108.i.cleanup142.i_crit_edge:               ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup142.i

if.end.i.i244.i:                                  ; preds = %if.end108.i
  %85 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i242.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %85, i32 noundef 3136) #13
  %tobool.not.i.i243.i = icmp eq ptr %call.i.i242.i, null
  br i1 %tobool.not.i.i243.i, label %if.end.i.i244.i.out_crit_edge, label %if.end2.i.i247.i

if.end.i.i244.i.out_crit_edge:                    ; preds = %if.end.i.i244.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i247.i:                                 ; preds = %if.end.i.i244.i
  %root_id3.i.i245.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i242.i, i32 0, i32 1
  %86 = ptrtoint ptr %root_id3.i.i245.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %call.i238.i, ptr %root_id3.i.i245.i, align 8
  %key_for_search6.i.i246.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i242.i, i32 0, i32 2
  %87 = ptrtoint ptr %key_for_search6.i.i246.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %call.i236.i, ptr %key_for_search6.i.i246.i, align 8
  %key.sroa.6.0.key_for_search6.i.i246.sroa_idx.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i242.i, i32 0, i32 2, i32 1
  %88 = ptrtoint ptr %key.sroa.6.0.key_for_search6.i.i246.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 108, ptr %key.sroa.6.0.key_for_search6.i.i246.sroa_idx.i, align 8
  %key.sroa.8.0.key_for_search6.i.i246.sroa_idx.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i242.i, i32 0, i32 2, i32 2
  %89 = ptrtoint ptr %key.sroa.8.0.key_for_search6.i.i246.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 %call.i237.i, ptr %key.sroa.8.0.key_for_search6.i.i246.sroa_idx.i, align 1
  %inode_list.i.i248.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i242.i, i32 0, i32 5
  %90 = ptrtoint ptr %inode_list.i.i248.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %inode_list.i.i248.i, align 4
  %level8.i.i249.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i242.i, i32 0, i32 3
  %91 = ptrtoint ptr %level8.i.i249.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %level8.i.i249.i, align 4
  %count9.i.i250.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i242.i, i32 0, i32 4
  %92 = ptrtoint ptr %count9.i.i250.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call.i235.i, ptr %count9.i.i250.i, align 8
  %parent10.i.i251.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i242.i, i32 0, i32 6
  %93 = ptrtoint ptr %parent10.i.i251.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 0, ptr %parent10.i.i251.i, align 8
  %wanted_disk_byte11.i.i252.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i242.i, i32 0, i32 7
  %94 = ptrtoint ptr %wanted_disk_byte11.i.i252.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %bytenr, ptr %wanted_disk_byte11.i.i252.i, align 8
  call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef %indirect.i239.i, ptr noundef nonnull %call.i.i242.i, ptr noundef %sc) #13
  br i1 %tobool99.not.i, label %if.end2.i.i247.i.cleanup142.i_crit_edge, label %land.rhs.i.i.i257.i

if.end2.i.i247.i.cleanup142.i_crit_edge:          ; preds = %if.end2.i.i247.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup142.i

land.rhs.i.i.i257.i:                              ; preds = %if.end2.i.i247.i
  %95 = ptrtoint ptr %share_count.i.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %share_count.i.i.i254.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp.i.i.i255.i = icmp sgt i32 %96, 1
  br i1 %cmp.i.i.i255.i, label %land.rhs.i.i.i257.i.out_crit_edge, label %land.rhs.i.i.i257.i.cleanup142.i_crit_edge

land.rhs.i.i.i257.i.cleanup142.i_crit_edge:       ; preds = %land.rhs.i.i.i257.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup142.i

land.rhs.i.i.i257.i.out_crit_edge:                ; preds = %land.rhs.i.i.i257.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.epilog.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1037, i32 noundef 9, ptr noundef null) #13
  br label %cleanup142.i

cleanup142.i:                                     ; preds = %sw.epilog.i, %land.rhs.i.i.i257.i.cleanup142.i_crit_edge, %if.end2.i.i247.i.cleanup142.i_crit_edge, %if.end108.i.cleanup142.i_crit_edge, %if.end2.i.i228.i, %sw.bb88.i.cleanup142.i_crit_edge, %land.rhs.i.i.i.i.cleanup142.i_crit_edge, %if.end2.i.i222.i.cleanup142.i_crit_edge, %if.end2.i.i.i
  %retval.0.i.i = phi i32 [ 0, %sw.epilog.i ], [ 9, %if.end2.i.i228.i ], [ 9, %sw.bb88.i.cleanup142.i_crit_edge ], [ 9, %if.end2.i.i.i ], [ 13, %if.end2.i.i222.i.cleanup142.i_crit_edge ], [ 13, %land.rhs.i.i.i.i.cleanup142.i_crit_edge ], [ 29, %if.end108.i.cleanup142.i_crit_edge ], [ 29, %if.end2.i.i247.i.cleanup142.i_crit_edge ], [ 29, %land.rhs.i.i.i257.i.cleanup142.i_crit_edge ]
  %add141.i = add i32 %retval.0.i.i, %ptr.1278.i
  %cmp72.i = icmp ult i32 %add141.i, %add13.i
  br i1 %cmp72.i, label %cleanup142.i.while.body.i_crit_edge, label %cleanup142.i.if.end83_crit_edge

cleanup142.i.if.end83_crit_edge:                  ; preds = %cleanup142.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

cleanup142.i.while.body.i_crit_edge:              ; preds = %cleanup142.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end83:                                         ; preds = %cleanup142.i.if.end83_crit_edge, %if.end71.i.if.end83_crit_edge
  %add29.i.pre-phi = phi i32 [ %.pre, %if.end71.i.if.end83_crit_edge ], [ %add89.i, %cleanup142.i.if.end83_crit_edge ]
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %call, i32 0, i32 8
  %97 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fs_info1.i, align 8
  %99 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i421, i32 0, i32 1
  %100 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i421, i32 0, i32 2
  %tobool41.not.i = icmp eq ptr %sc, null
  %inum.i422 = getelementptr inbounds %struct.share_check, ptr %sc, i32 0, i32 1
  %indirect.i144.i = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 1
  %indirect_missing_keys.i.i423 = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end83
  %101 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %slots, align 4
  %inc.i.i.i = add i32 %102, 1
  store i32 %inc.i.i.i, ptr %slots, align 4
  %103 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call3, align 4
  %pages.i.i.i.i = getelementptr inbounds %struct.extent_buffer, ptr %104, i32 0, i32 12
  %105 = ptrtoint ptr %pages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pages.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @page_address(ptr noundef %106) #13
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %104, align 8
  %conv.i.i.i.i = trunc i64 %108 to i32
  %and.i.i.i.i = and i32 %conv.i.i.i.i, 4095
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %and.i.i.i.i
  %nritems.i.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i.i, i32 0, i32 7
  %109 = ptrtoint ptr %nritems.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %nritems.i.i.i.i, align 1
  %111 = call i32 @llvm.bswap.i32(i32 %110) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %111)
  %cmp.not.i.i.i = icmp ult i32 %inc.i.i.i, %111
  br i1 %cmp.not.i.i.i, label %while.cond.i.if.end3.i_crit_edge, label %btrfs_next_item.exit.i

while.cond.i.if.end3.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

btrfs_next_item.exit.i:                           ; preds = %while.cond.i
  %call4.i.i.i = call i32 @btrfs_next_old_leaf(ptr noundef %call, ptr noundef nonnull %call3, i64 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i424 = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i424, label %btrfs_next_item.exit.i.out_crit_edge, label %if.end.i

btrfs_next_item.exit.i.out_crit_edge:             ; preds = %btrfs_next_item.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i:                                         ; preds = %btrfs_next_item.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.end.i.if.end90_crit_edge

if.end.i.if.end90_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i.if.end3.i_crit_edge, %while.cond.i.if.end3.i_crit_edge
  %112 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %slots, align 4
  %114 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call3, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i421) #13
  %mul.i.i.i.i.i = mul i32 %113, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %116 = call ptr @memset(ptr %disk_key.i.i421, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %115, ptr noundef nonnull %disk_key.i.i421, i32 noundef %add.i.i.i.i.i, i32 noundef 17) #13
  %117 = ptrtoint ptr %100 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 8)
  %118 = load i64, ptr %100, align 1
  %119 = call i64 @llvm.bswap.i64(i64 %118) #13
  %120 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %99, align 8
  %122 = ptrtoint ptr %disk_key.i.i421 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %disk_key.i.i421, align 8
  %124 = call i64 @llvm.bswap.i64(i64 %123) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i421) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %124, i64 %bytenr)
  %cmp5.not.i = icmp eq i64 %124, %bytenr
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end3.i.if.end90_crit_edge

if.end3.i.if.end90_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %121)
  %cmp8.i = icmp ult i8 %121, -80
  br i1 %cmp8.i, label %if.end7.i.while.cond.i.backedge_crit_edge, label %if.end11.i

if.end7.i.while.cond.i.backedge_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %121)
  %cmp14.i = icmp ugt i8 %121, -72
  br i1 %cmp14.i, label %if.end11.i.if.end90_crit_edge, label %if.end17.i

if.end11.i.if.end90_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.end17.i:                                       ; preds = %if.end11.i
  %125 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %121, label %do.end.i [
    i8 -74, label %sw.bb.i427
    i8 -72, label %sw.bb21.i
    i8 -80, label %sw.bb27.i
    i8 -78, label %sw.bb31.i
  ]

sw.bb.i427:                                       ; preds = %if.end17.i
  %126 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i.i425 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %126, i32 noundef 3136) #13
  %tobool.not.i.i.i426 = icmp eq ptr %call.i.i.i425, null
  br i1 %tobool.not.i.i.i426, label %sw.bb.i427.out_crit_edge, label %if.end2.i.i.i434

sw.bb.i427.out_crit_edge:                         ; preds = %sw.bb.i427
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i.i434:                                 ; preds = %sw.bb.i427
  call void @__sanitizer_cov_trace_pc() #15
  %root_id3.i.i.i428 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i.i425, i32 0, i32 1
  %inode_list.i.i.i429 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i.i425, i32 0, i32 5
  %127 = ptrtoint ptr %inode_list.i.i.i429 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %inode_list.i.i.i429, align 4
  %level8.i.i.i430 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i.i425, i32 0, i32 3
  %128 = call ptr @memset(ptr %root_id3.i.i.i428, i32 0, i32 25)
  %129 = ptrtoint ptr %level8.i.i.i430 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add29.i.pre-phi, ptr %level8.i.i.i430, align 4
  %count9.i.i.i431 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i.i425, i32 0, i32 4
  %130 = ptrtoint ptr %count9.i.i.i431 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %count9.i.i.i431, align 8
  %parent10.i.i.i432 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i.i425, i32 0, i32 6
  %131 = ptrtoint ptr %parent10.i.i.i432 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %119, ptr %parent10.i.i.i432, align 8
  %wanted_disk_byte11.i.i.i433 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i.i425, i32 0, i32 7
  %132 = ptrtoint ptr %wanted_disk_byte11.i.i.i433 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %bytenr, ptr %wanted_disk_byte11.i.i.i433, align 8
  call fastcc void @prelim_ref_insert(ptr noundef %98, ptr noundef nonnull %preftrees, ptr noundef nonnull %call.i.i.i425, ptr noundef null) #13
  br label %while.cond.i.backedge

sw.bb21.i:                                        ; preds = %if.end17.i
  %133 = inttoptr i32 %add.i.i.i.i.i to ptr
  %call.i.i115.i = call i32 @btrfs_get_32(ptr noundef %115, ptr noundef %133, i32 noundef 17) #13
  %add23.i = add i32 %call.i.i115.i, 101
  %134 = inttoptr i32 %add23.i to ptr
  %call.i.i435 = call i32 @btrfs_get_32(ptr noundef %115, ptr noundef %134, i32 noundef 0) #13
  %135 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i116.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %135, i32 noundef 3136) #13
  %tobool.not.i.i117.i = icmp eq ptr %call.i.i116.i, null
  br i1 %tobool.not.i.i117.i, label %sw.bb21.i.out_crit_edge, label %if.end2.i.i124.i

sw.bb21.i.out_crit_edge:                          ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i124.i:                                 ; preds = %sw.bb21.i
  %root_id3.i.i118.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i116.i, i32 0, i32 1
  %inode_list.i.i119.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i116.i, i32 0, i32 5
  %136 = ptrtoint ptr %inode_list.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %inode_list.i.i119.i, align 4
  %level8.i.i120.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i116.i, i32 0, i32 3
  %137 = call ptr @memset(ptr %root_id3.i.i118.i, i32 0, i32 25)
  %138 = ptrtoint ptr %level8.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %level8.i.i120.i, align 4
  %count9.i.i121.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i116.i, i32 0, i32 4
  %139 = ptrtoint ptr %count9.i.i121.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %call.i.i435, ptr %count9.i.i121.i, align 8
  %parent10.i.i122.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i116.i, i32 0, i32 6
  %140 = ptrtoint ptr %parent10.i.i122.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %119, ptr %parent10.i.i122.i, align 8
  %wanted_disk_byte11.i.i123.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i116.i, i32 0, i32 7
  %141 = ptrtoint ptr %wanted_disk_byte11.i.i123.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %bytenr, ptr %wanted_disk_byte11.i.i123.i, align 8
  call fastcc void @prelim_ref_insert(ptr noundef %98, ptr noundef nonnull %preftrees, ptr noundef nonnull %call.i.i116.i, ptr noundef %sc) #13
  br i1 %tobool41.not.i, label %if.end2.i.i124.i.while.cond.i.backedge_crit_edge, label %land.rhs.i.i.i.i437

if.end2.i.i124.i.while.cond.i.backedge_crit_edge: ; preds = %if.end2.i.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

land.rhs.i.i.i.i437:                              ; preds = %if.end2.i.i124.i
  %142 = ptrtoint ptr %share_count.i.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %share_count.i.i.i254.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp.i.i.i.i436 = icmp sgt i32 %143, 1
  br i1 %cmp.i.i.i.i436, label %land.rhs.i.i.i.i437.out_crit_edge, label %land.rhs.i.i.i.i437.while.cond.i.backedge_crit_edge

land.rhs.i.i.i.i437.while.cond.i.backedge_crit_edge: ; preds = %land.rhs.i.i.i.i437
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

land.rhs.i.i.i.i437.out_crit_edge:                ; preds = %land.rhs.i.i.i.i437
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.bb27.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -576460752303423489, i64 %118)
  %cmp.i.i.i438 = icmp eq i64 %118, -576460752303423489
  br i1 %cmp.i.i.i438, label %sw.bb27.i.while.cond.i.backedge_crit_edge, label %if.end.i.i.i439

sw.bb27.i.while.cond.i.backedge_crit_edge:        ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

if.end.i.i.i439:                                  ; preds = %sw.bb27.i
  %144 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i127.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %144, i32 noundef 3136) #13
  %tobool.not.i.i128.i = icmp eq ptr %call.i.i127.i, null
  br i1 %tobool.not.i.i128.i, label %if.end.i.i.i439.out_crit_edge, label %if.end2.i.i130.i

if.end.i.i.i439.out_crit_edge:                    ; preds = %if.end.i.i.i439
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i130.i:                                 ; preds = %if.end.i.i.i439
  call void @__sanitizer_cov_trace_pc() #15
  %root_id3.i.i129.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i127.i, i32 0, i32 1
  %145 = ptrtoint ptr %root_id3.i.i129.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %119, ptr %root_id3.i.i129.i, align 8
  %key_for_search6.i.i.i440 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i127.i, i32 0, i32 2
  %146 = call ptr @memset(ptr %key_for_search6.i.i.i440, i32 0, i32 17)
  %inode_list.i.i131.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i127.i, i32 0, i32 5
  %147 = ptrtoint ptr %inode_list.i.i131.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %inode_list.i.i131.i, align 4
  %level8.i.i132.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i127.i, i32 0, i32 3
  %148 = ptrtoint ptr %level8.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %add29.i.pre-phi, ptr %level8.i.i132.i, align 4
  %count9.i.i133.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i127.i, i32 0, i32 4
  %149 = ptrtoint ptr %count9.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 1, ptr %count9.i.i133.i, align 8
  %parent10.i.i134.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i127.i, i32 0, i32 6
  %150 = ptrtoint ptr %parent10.i.i134.i to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 0, ptr %parent10.i.i134.i, align 8
  %wanted_disk_byte11.i.i135.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i127.i, i32 0, i32 7
  %151 = ptrtoint ptr %wanted_disk_byte11.i.i135.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %bytenr, ptr %wanted_disk_byte11.i.i135.i, align 8
  call fastcc void @prelim_ref_insert(ptr noundef %98, ptr noundef %indirect_missing_keys.i.i423, ptr noundef nonnull %call.i.i127.i, ptr noundef null) #13
  br label %while.cond.i.backedge

sw.bb31.i:                                        ; preds = %if.end17.i
  %152 = inttoptr i32 %add.i.i.i.i.i to ptr
  %call.i.i139.i = call i32 @btrfs_get_32(ptr noundef %115, ptr noundef %152, i32 noundef 17) #13
  %add34.i = add i32 %call.i.i139.i, 101
  %153 = inttoptr i32 %add34.i to ptr
  %call.i140.i = call i32 @btrfs_get_32(ptr noundef %115, ptr noundef %153, i32 noundef 24) #13
  %call.i141.i = call i64 @btrfs_get_64(ptr noundef %115, ptr noundef %153, i32 noundef 8) #13
  %call.i142.i = call i64 @btrfs_get_64(ptr noundef %115, ptr noundef %153, i32 noundef 16) #13
  br i1 %tobool41.not.i, label %sw.bb31.i.if.end49.i_crit_edge, label %land.lhs.true.i

sw.bb31.i.if.end49.i_crit_edge:                   ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

land.lhs.true.i:                                  ; preds = %sw.bb31.i
  %154 = ptrtoint ptr %inum.i422 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %inum.i422, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %155)
  %tobool42.not.i = icmp eq i64 %155, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i141.i, i64 %155)
  %cmp46.not.i = icmp eq i64 %call.i141.i, %155
  %or.cond.i441 = select i1 %tobool42.not.i, i1 true, i1 %cmp46.not.i
  br i1 %or.cond.i441, label %land.lhs.true.i.if.end49.i_crit_edge, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true.i.if.end49.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

if.end49.i:                                       ; preds = %land.lhs.true.i.if.end49.i_crit_edge, %sw.bb31.i.if.end49.i_crit_edge
  %call.i143.i = call i64 @btrfs_get_64(ptr noundef %115, ptr noundef %153, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9, i64 %call.i143.i)
  %cmp.i.i146.i = icmp eq i64 %call.i143.i, -9
  br i1 %cmp.i.i146.i, label %if.end49.i.while.cond.i.backedge_crit_edge, label %if.end.i.i149.i

if.end49.i.while.cond.i.backedge_crit_edge:       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

if.end.i.i149.i:                                  ; preds = %if.end49.i
  %156 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i147.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %156, i32 noundef 3136) #13
  %tobool.not.i.i148.i = icmp eq ptr %call.i.i147.i, null
  br i1 %tobool.not.i.i148.i, label %if.end.i.i149.i.out_crit_edge, label %if.end2.i.i152.i

if.end.i.i149.i.out_crit_edge:                    ; preds = %if.end.i.i149.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i152.i:                                 ; preds = %if.end.i.i149.i
  %root_id3.i.i150.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i147.i, i32 0, i32 1
  %157 = ptrtoint ptr %root_id3.i.i150.i to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %call.i143.i, ptr %root_id3.i.i150.i, align 8
  %key_for_search6.i.i151.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i147.i, i32 0, i32 2
  %158 = ptrtoint ptr %key_for_search6.i.i151.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %call.i141.i, ptr %key_for_search6.i.i151.i, align 8
  %key.sroa.8.0.key_for_search6.i.i151.sroa_idx.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i147.i, i32 0, i32 2, i32 1
  %159 = ptrtoint ptr %key.sroa.8.0.key_for_search6.i.i151.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 108, ptr %key.sroa.8.0.key_for_search6.i.i151.sroa_idx.i, align 8
  %key.sroa.12.0.key_for_search6.i.i151.sroa_idx.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i147.i, i32 0, i32 2, i32 2
  %160 = ptrtoint ptr %key.sroa.12.0.key_for_search6.i.i151.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 8)
  store i64 %call.i142.i, ptr %key.sroa.12.0.key_for_search6.i.i151.sroa_idx.i, align 1
  %inode_list.i.i153.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i147.i, i32 0, i32 5
  %161 = ptrtoint ptr %inode_list.i.i153.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %inode_list.i.i153.i, align 4
  %level8.i.i154.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i147.i, i32 0, i32 3
  %162 = ptrtoint ptr %level8.i.i154.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %level8.i.i154.i, align 4
  %count9.i.i155.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i147.i, i32 0, i32 4
  %163 = ptrtoint ptr %count9.i.i155.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %call.i140.i, ptr %count9.i.i155.i, align 8
  %parent10.i.i156.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i147.i, i32 0, i32 6
  %164 = ptrtoint ptr %parent10.i.i156.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 0, ptr %parent10.i.i156.i, align 8
  %wanted_disk_byte11.i.i157.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i147.i, i32 0, i32 7
  %165 = ptrtoint ptr %wanted_disk_byte11.i.i157.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %bytenr, ptr %wanted_disk_byte11.i.i157.i, align 8
  call fastcc void @prelim_ref_insert(ptr noundef %98, ptr noundef %indirect.i144.i, ptr noundef nonnull %call.i.i147.i, ptr noundef %sc) #13
  br i1 %tobool41.not.i, label %if.end2.i.i152.i.while.cond.i.backedge_crit_edge, label %land.rhs.i.i.i162.i

if.end2.i.i152.i.while.cond.i.backedge_crit_edge: ; preds = %if.end2.i.i152.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

land.rhs.i.i.i162.i:                              ; preds = %if.end2.i.i152.i
  %166 = ptrtoint ptr %share_count.i.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %share_count.i.i.i254.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %167)
  %cmp.i.i.i160.i = icmp sgt i32 %167, 1
  br i1 %cmp.i.i.i160.i, label %land.rhs.i.i.i162.i.out_crit_edge, label %land.rhs.i.i.i162.i.while.cond.i.backedge_crit_edge

land.rhs.i.i.i162.i.while.cond.i.backedge_crit_edge: ; preds = %land.rhs.i.i.i162.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

land.rhs.i.i.i162.i.out_crit_edge:                ; preds = %land.rhs.i.i.i162.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end.i:                                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1135, i32 noundef 9, ptr noundef null) #13
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.end.i, %land.rhs.i.i.i162.i.while.cond.i.backedge_crit_edge, %if.end2.i.i152.i.while.cond.i.backedge_crit_edge, %if.end49.i.while.cond.i.backedge_crit_edge, %if.end2.i.i130.i, %sw.bb27.i.while.cond.i.backedge_crit_edge, %land.rhs.i.i.i.i437.while.cond.i.backedge_crit_edge, %if.end2.i.i124.i.while.cond.i.backedge_crit_edge, %if.end2.i.i.i434, %if.end7.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

if.end90:                                         ; preds = %if.end11.i.if.end90_crit_edge, %if.end3.i.if.end90_crit_edge, %if.end.i.if.end90_crit_edge, %if.then63.if.end90_crit_edge, %if.end61.if.end90_crit_edge
  call void @btrfs_release_path(ptr noundef nonnull %call3) #13
  %skip_locking91 = getelementptr inbounds %struct.btrfs_path, ptr %call3, i32 0, i32 5
  %168 = ptrtoint ptr %skip_locking91 to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load92 = load i8, ptr %skip_locking91, align 2
  %169 = and i8 %bf.load92, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %cmp94 = icmp eq i8 %169, 0
  %indirect_missing_keys.i = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 2
  %rb_leftmost.i = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 2, i32 0, i32 1
  %170 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not113.i = icmp eq ptr %171, null
  br i1 %tobool.not113.i, label %if.end90.if.end99_crit_edge, label %while.body.lr.ph.i443

if.end90.if.end99_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

while.body.lr.ph.i443:                            ; preds = %if.end90
  %172 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i103.i, i32 0, i32 1
  %173 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i103.i, i32 0, i32 2
  %174 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i442, i32 0, i32 1
  %175 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i442, i32 0, i32 2
  %indirect.i = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 1
  br label %while.body.i444

while.body.i444:                                  ; preds = %if.end71.i449.while.body.i444_crit_edge, %while.body.lr.ph.i443
  %176 = phi ptr [ %171, %while.body.lr.ph.i443 ], [ %224, %if.end71.i449.while.body.i444_crit_edge ]
  %177 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i.i = icmp eq ptr %178, %176
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i444.rb_erase_cached.exit.i_crit_edge

while.body.i444.rb_erase_cached.exit.i_crit_edge: ; preds = %while.body.i444
  call void @__sanitizer_cov_trace_pc() #15
  br label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %while.body.i444
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i445 = call ptr @rb_next(ptr noundef nonnull %176) #13
  %179 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call.i.i445, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %while.body.i444.rb_erase_cached.exit.i_crit_edge
  call void @rb_erase(ptr noundef nonnull %176, ptr noundef %indirect_missing_keys.i) #13
  %parent.i = getelementptr inbounds %struct.prelim_ref, ptr %176, i32 0, i32 6
  %180 = ptrtoint ptr %parent.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %parent.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %181)
  %tobool2.not.i = icmp eq i64 %181, 0
  br i1 %tobool2.not.i, label %do.body11.i, label %do.body5.i, !prof !140

do.body5.i:                                       ; preds = %rb_erase_cached.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 783, 0\0A.popsection", ""() #13, !srcloc !147
  unreachable

do.body11.i:                                      ; preds = %rb_erase_cached.exit.i
  %key_for_search.i = getelementptr inbounds %struct.prelim_ref, ptr %176, i32 0, i32 2
  %type.i = getelementptr inbounds %struct.prelim_ref, ptr %176, i32 0, i32 2, i32 1
  %182 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool12.not.i = icmp eq i8 %183, 0
  br i1 %tobool12.not.i, label %do.body29.i, label %do.body20.i, !prof !140

do.body20.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 784, 0\0A.popsection", ""() #13, !srcloc !148
  unreachable

do.body29.i:                                      ; preds = %do.body11.i
  %wanted_disk_byte.i = getelementptr inbounds %struct.prelim_ref, ptr %176, i32 0, i32 7
  %184 = ptrtoint ptr %wanted_disk_byte.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %wanted_disk_byte.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %185)
  %tobool30.not.i = icmp eq i64 %185, 0
  br i1 %tobool30.not.i, label %do.body40.i, label %do.end48.i, !prof !139

do.body40.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 785, 0\0A.popsection", ""() #13, !srcloc !149
  unreachable

do.end48.i:                                       ; preds = %do.body29.i
  %root_id.i = getelementptr inbounds %struct.prelim_ref, ptr %176, i32 0, i32 1
  %186 = ptrtoint ptr %root_id.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %root_id.i, align 8
  %level.i = getelementptr inbounds %struct.prelim_ref, ptr %176, i32 0, i32 3
  %188 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %level.i, align 4
  %sub.i = add i32 %189, -1
  %call50.i = call ptr @read_tree_block(ptr noundef %fs_info, i64 noundef %185, i64 noundef %187, i64 noundef 0, i32 noundef %sub.i, ptr noundef null) #13
  %cmp.i101.i = icmp ugt ptr %call50.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101.i, label %add_missing_keys.exit, label %if.else.i446

if.else.i446:                                     ; preds = %do.end48.i
  %bflags.i.i = getelementptr inbounds %struct.extent_buffer, ptr %call50.i, i32 0, i32 2
  %190 = ptrtoint ptr %bflags.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %bflags.i.i, align 4
  %and1.i.i.i = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool55.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool55.not.i, label %add_missing_keys.exit.thread507, label %if.end58.i

add_missing_keys.exit.thread507:                  ; preds = %if.else.i446
  call void @__sanitizer_cov_trace_pc() #15
  %192 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  call void @kmem_cache_free(ptr noundef %192, ptr noundef nonnull %176) #13
  call void @free_extent_buffer(ptr noundef %call50.i) #13
  br label %out

if.end58.i:                                       ; preds = %if.else.i446
  br i1 %cmp94, label %if.then60.i, label %if.end58.i.if.end61.i_crit_edge

if.end58.i.if.end61.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i

if.then60.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_tree_read_lock(ptr noundef %call50.i) #13
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then60.i, %if.end58.i.if.end61.i_crit_edge
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %call50.i, i32 0, i32 12
  %193 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pages.i.i, align 4
  %call.i102.i = call ptr @page_address(ptr noundef %194) #13
  %195 = ptrtoint ptr %call50.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %call50.i, align 8
  %conv.i.i = trunc i64 %196 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i102.i, i32 %and.i.i
  %level.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 8
  %197 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %cmp.i447 = icmp eq i8 %198, 0
  br i1 %cmp.i447, label %if.then64.i, label %if.else66.i

if.then64.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i442) #13
  %199 = call ptr @memset(ptr %disk_key.i.i442, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %call50.i, ptr noundef nonnull %disk_key.i.i442, i32 noundef 101, i32 noundef 17) #13
  %200 = ptrtoint ptr %175 to i32
  call void @__asan_loadN_noabort(i32 %200, i32 8)
  %201 = load i64, ptr %175, align 1
  %202 = call i64 @llvm.bswap.i64(i64 %201) #13
  %offset1.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %176, i32 0, i32 2, i32 2
  %203 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %203, i32 8)
  store i64 %202, ptr %offset1.i.i.i, align 1
  %204 = ptrtoint ptr %174 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %174, align 8
  %206 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %type.i, align 1
  %207 = ptrtoint ptr %disk_key.i.i442 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %disk_key.i.i442, align 8
  %209 = call i64 @llvm.bswap.i64(i64 %208) #13
  %210 = ptrtoint ptr %key_for_search.i to i32
  call void @__asan_storeN_noabort(i32 %210, i32 8)
  store i64 %209, ptr %key_for_search.i, align 1
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i442) #13
  br label %if.end68.i

if.else66.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i103.i) #13
  %211 = call ptr @memset(ptr %disk_key.i103.i, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %call50.i, ptr noundef nonnull %disk_key.i103.i, i32 noundef 0) #13
  %212 = ptrtoint ptr %173 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 8)
  %213 = load i64, ptr %173, align 1
  %214 = call i64 @llvm.bswap.i64(i64 %213) #13
  %offset1.i.i104.i = getelementptr inbounds %struct.prelim_ref, ptr %176, i32 0, i32 2, i32 2
  %215 = ptrtoint ptr %offset1.i.i104.i to i32
  call void @__asan_storeN_noabort(i32 %215, i32 8)
  store i64 %214, ptr %offset1.i.i104.i, align 1
  %216 = ptrtoint ptr %172 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %172, align 8
  %218 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %type.i, align 1
  %219 = ptrtoint ptr %disk_key.i103.i to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %disk_key.i103.i, align 8
  %221 = call i64 @llvm.bswap.i64(i64 %220) #13
  %222 = ptrtoint ptr %key_for_search.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 8)
  store i64 %221, ptr %key_for_search.i, align 1
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i103.i) #13
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.else66.i, %if.then64.i
  br i1 %cmp94, label %if.then70.i, label %if.end68.i.if.end71.i449_crit_edge

if.end68.i.if.end71.i449_crit_edge:               ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71.i449

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_tree_read_unlock(ptr noundef %call50.i) #13
  br label %if.end71.i449

if.end71.i449:                                    ; preds = %if.then70.i, %if.end68.i.if.end71.i449_crit_edge
  call void @free_extent_buffer(ptr noundef %call50.i) #13
  call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef %indirect.i, ptr noundef nonnull %176, ptr noundef null) #13
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 807, i32 noundef 0) #13
  %call.i106.i = call i32 @__cond_resched() #13
  %223 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not.i448 = icmp eq ptr %224, null
  br i1 %tobool.not.i448, label %if.end71.i449.if.end99_crit_edge, label %if.end71.i449.while.body.i444_crit_edge

if.end71.i449.while.body.i444_crit_edge:          ; preds = %if.end71.i449
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i444

if.end71.i449.if.end99_crit_edge:                 ; preds = %if.end71.i449
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

add_missing_keys.exit:                            ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  %225 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  call void @kmem_cache_free(ptr noundef %225, ptr noundef nonnull %176) #13
  %226 = ptrtoint ptr %call50.i to i32
  br label %out

if.end99:                                         ; preds = %if.end71.i449.if.end99_crit_edge, %if.end90.if.end99_crit_edge
  %227 = ptrtoint ptr %indirect_missing_keys.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile ptr, ptr %indirect_missing_keys.i, align 4
  %cmp101.not = icmp eq ptr %228, null
  br i1 %cmp101.not, label %if.end99.if.end126_crit_edge, label %do.end120, !prof !140

if.end99.if.end126_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

do.end120:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1286, i32 noundef 9, ptr noundef null) #13
  br label %if.end126

if.end126:                                        ; preds = %do.end120, %if.end99.if.end126_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uiter.i) #13
  %229 = ptrtoint ptr %uiter.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr inttoptr (i32 -1 to ptr), ptr %uiter.i, align 4, !annotation !150
  %call.i = call ptr @ulist_alloc(i32 noundef 3136) #13
  %tobool.not.i451 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i451, label %resolve_indirect_refs.exit.thread, label %while.cond.preheader.i

resolve_indirect_refs.exit.thread:                ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uiter.i) #13
  br label %out

while.cond.preheader.i:                           ; preds = %if.end126
  %indirect.i452 = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 1
  %rb_leftmost.i453 = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 1, i32 0, i32 1
  %230 = ptrtoint ptr %rb_leftmost.i453 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %rb_leftmost.i453, align 4
  %tobool1.not143.i = icmp eq ptr %231, null
  br i1 %tobool1.not143.i, label %while.cond.preheader.i.if.end138_crit_edge, label %while.body.lr.ph.i454

while.cond.preheader.i.if.end138_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

while.body.lr.ph.i454:                            ; preds = %while.cond.preheader.i
  %count.i = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 1, i32 1
  %tobool35.not.i = icmp eq ptr %sc, null
  br label %while.body.i457

while.body.i457:                                  ; preds = %cleanup70.i.while.body.i457_crit_edge, %while.body.lr.ph.i454
  %232 = phi ptr [ %231, %while.body.lr.ph.i454 ], [ %270, %cleanup70.i.while.body.i457_crit_edge ]
  %parent.i455 = getelementptr inbounds %struct.prelim_ref, ptr %232, i32 0, i32 6
  %233 = ptrtoint ptr %parent.i455 to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %parent.i455, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %234)
  %tobool2.not.i456 = icmp eq i64 %234, 0
  br i1 %tobool2.not.i456, label %if.end27.i, label %do.end.i458, !prof !140

do.end.i458:                                      ; preds = %while.body.i457
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 694, i32 noundef 9, ptr noundef nonnull @.str.34) #13
  br label %resolve_indirect_refs.exit.thread512

if.end27.i:                                       ; preds = %while.body.i457
  %235 = ptrtoint ptr %rb_leftmost.i453 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %rb_leftmost.i453, align 4
  %cmp.i.i459 = icmp eq ptr %236, %232
  br i1 %cmp.i.i459, label %if.then.i.i461, label %if.end27.i.rb_erase_cached.exit.i463_crit_edge

if.end27.i.rb_erase_cached.exit.i463_crit_edge:   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rb_erase_cached.exit.i463

if.then.i.i461:                                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i460 = call ptr @rb_next(ptr noundef nonnull %232) #13
  %237 = ptrtoint ptr %rb_leftmost.i453 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call.i.i460, ptr %rb_leftmost.i453, align 4
  br label %rb_erase_cached.exit.i463

rb_erase_cached.exit.i463:                        ; preds = %if.then.i.i461, %if.end27.i.rb_erase_cached.exit.i463_crit_edge
  call void @rb_erase(ptr noundef nonnull %232, ptr noundef %indirect.i452) #13
  %238 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %239, -1
  store i32 %dec.i, ptr %count.i, align 4
  %count32.i = getelementptr inbounds %struct.prelim_ref, ptr %232, i32 0, i32 4
  %240 = ptrtoint ptr %count32.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %count32.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp.i462 = icmp eq i32 %241, 0
  br i1 %cmp.i462, label %if.then33.i, label %if.end34.i

if.then33.i:                                      ; preds = %rb_erase_cached.exit.i463
  call void @__sanitizer_cov_trace_pc() #15
  %242 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  call void @kmem_cache_free(ptr noundef %242, ptr noundef nonnull %232) #13
  br label %cleanup70.i

if.end34.i:                                       ; preds = %rb_erase_cached.exit.i463
  br i1 %tobool35.not.i, label %if.end34.i.if.end41.i_crit_edge, label %land.lhs.true.i464

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

land.lhs.true.i464:                               ; preds = %if.end34.i
  %243 = ptrtoint ptr %sc to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %sc, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %244)
  %tobool36.not.i = icmp eq i64 %244, 0
  br i1 %tobool36.not.i, label %land.lhs.true.i464.if.end41.i_crit_edge, label %land.lhs.true37.i

land.lhs.true.i464.if.end41.i_crit_edge:          ; preds = %land.lhs.true.i464
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

land.lhs.true37.i:                                ; preds = %land.lhs.true.i464
  %root_id.i465 = getelementptr inbounds %struct.prelim_ref, ptr %232, i32 0, i32 1
  %245 = ptrtoint ptr %root_id.i465 to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %root_id.i465, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %246, i64 %244)
  %cmp39.not.i = icmp eq i64 %246, %244
  br i1 %cmp39.not.i, label %land.lhs.true37.i.if.end41.i_crit_edge, label %if.then40.i

land.lhs.true37.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.then40.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #15
  %247 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  call void @kmem_cache_free(ptr noundef %247, ptr noundef nonnull %232) #13
  br label %resolve_indirect_refs.exit.thread512

if.end41.i:                                       ; preds = %land.lhs.true37.i.if.end41.i_crit_edge, %land.lhs.true.i464.if.end41.i_crit_edge, %if.end34.i.if.end41.i_crit_edge
  %call43.i = call fastcc i32 @resolve_indirect_ref(ptr noundef %fs_info, ptr noundef nonnull %call3, i64 noundef %time_seq, ptr noundef nonnull %preftrees, ptr noundef nonnull %232, ptr noundef nonnull %call.i, ptr noundef %extent_item_pos, i1 noundef zeroext %ignore_offset) #13
  %248 = zext i32 %call43.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %248, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call43.i, label %if.then47.i [
    i32 -2, label %if.then45.i
    i32 0, label %if.end49.i468
  ]

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef nonnull %preftrees, ptr noundef nonnull %232, ptr noundef null) #13
  br label %cleanup70.i

if.then47.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  %249 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  call void @kmem_cache_free(ptr noundef %249, ptr noundef nonnull %232) #13
  br label %resolve_indirect_refs.exit.thread512

if.end49.i468:                                    ; preds = %if.end41.i
  %250 = ptrtoint ptr %uiter.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr null, ptr %uiter.i, align 4
  %call50.i466 = call ptr @ulist_next(ptr noundef nonnull %call.i, ptr noundef nonnull %uiter.i) #13
  %tobool51.not.i467 = icmp eq ptr %call50.i466, null
  br i1 %tobool51.not.i467, label %cond.end.thread.i, label %if.end.i.i

cond.end.thread.i:                                ; preds = %if.end49.i468
  call void @__sanitizer_cov_trace_pc() #15
  %251 = ptrtoint ptr %parent.i455 to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 0, ptr %parent.i455, align 8
  br label %unode_aux_to_inode_list.exit.i

if.end.i.i:                                       ; preds = %if.end49.i468
  call void @__sanitizer_cov_trace_pc() #15
  %252 = ptrtoint ptr %call50.i466 to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %call50.i466, align 8
  %254 = ptrtoint ptr %parent.i455 to i32
  call void @__asan_store8_noabort(i32 %254)
  store i64 %253, ptr %parent.i455, align 8
  %aux.i.i = getelementptr inbounds %struct.ulist_node, ptr %call50.i466, i32 0, i32 1
  %255 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load8_noabort(i32 %255)
  %256 = load i64, ptr %aux.i.i, align 8
  %conv.i.i469 = trunc i64 %256 to i32
  %257 = inttoptr i32 %conv.i.i469 to ptr
  br label %unode_aux_to_inode_list.exit.i

unode_aux_to_inode_list.exit.i:                   ; preds = %if.end.i.i, %cond.end.thread.i
  %retval.0.i.i470 = phi ptr [ %257, %if.end.i.i ], [ null, %cond.end.thread.i ]
  %inode_list.i = getelementptr inbounds %struct.prelim_ref, ptr %232, i32 0, i32 5
  %258 = ptrtoint ptr %inode_list.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %retval.0.i.i470, ptr %inode_list.i, align 4
  %call55140.i = call ptr @ulist_next(ptr noundef nonnull %call.i, ptr noundef nonnull %uiter.i) #13
  %tobool56.not141.i = icmp eq ptr %call55140.i, null
  br i1 %tobool56.not141.i, label %unode_aux_to_inode_list.exit.i.while.end.i_crit_edge, label %unode_aux_to_inode_list.exit.i.while.body57.i_crit_edge

unode_aux_to_inode_list.exit.i.while.body57.i_crit_edge: ; preds = %unode_aux_to_inode_list.exit.i
  br label %while.body57.i

unode_aux_to_inode_list.exit.i.while.end.i_crit_edge: ; preds = %unode_aux_to_inode_list.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body57.i:                                   ; preds = %cleanup.i.while.body57.i_crit_edge, %unode_aux_to_inode_list.exit.i.while.body57.i_crit_edge
  %call55142.i = phi ptr [ %call55.i, %cleanup.i.while.body57.i_crit_edge ], [ %call55140.i, %unode_aux_to_inode_list.exit.i.while.body57.i_crit_edge ]
  %259 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call58.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %259, i32 noundef 3136) #13
  %tobool59.not.i = icmp eq ptr %call58.i, null
  br i1 %tobool59.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %while.body57.i
  call void @__sanitizer_cov_trace_pc() #15
  %260 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  call void @kmem_cache_free(ptr noundef %260, ptr noundef nonnull %232) #13
  br label %resolve_indirect_refs.exit.thread512

cleanup.i:                                        ; preds = %while.body57.i
  %261 = call ptr @memcpy(ptr %call58.i, ptr %232, i32 72)
  %262 = ptrtoint ptr %call55142.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %call55142.i, align 8
  %parent63.i = getelementptr inbounds %struct.prelim_ref, ptr %call58.i, i32 0, i32 6
  %264 = ptrtoint ptr %parent63.i to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 %263, ptr %parent63.i, align 8
  %aux.i124.i = getelementptr inbounds %struct.ulist_node, ptr %call55142.i, i32 0, i32 1
  %265 = ptrtoint ptr %aux.i124.i to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %aux.i124.i, align 8
  %conv.i125.i = trunc i64 %266 to i32
  %267 = inttoptr i32 %conv.i125.i to ptr
  %inode_list65.i = getelementptr inbounds %struct.prelim_ref, ptr %call58.i, i32 0, i32 5
  %268 = ptrtoint ptr %inode_list65.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %267, ptr %inode_list65.i, align 4
  call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef nonnull %preftrees, ptr noundef nonnull %call58.i, ptr noundef null) #13
  %call55.i = call ptr @ulist_next(ptr noundef nonnull %call.i, ptr noundef nonnull %uiter.i) #13
  %tobool56.not.i = icmp eq ptr %call55.i, null
  br i1 %tobool56.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body57.i_crit_edge

cleanup.i.while.body57.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body57.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %unode_aux_to_inode_list.exit.i.while.end.i_crit_edge
  call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef nonnull %preftrees, ptr noundef nonnull %232, ptr noundef null) #13
  call void @ulist_reinit(ptr noundef nonnull %call.i) #13
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 761, i32 noundef 0) #13
  %call.i129.i = call i32 @__cond_resched() #13
  br label %cleanup70.i

cleanup70.i:                                      ; preds = %while.end.i, %if.then45.i, %if.then33.i
  %269 = ptrtoint ptr %rb_leftmost.i453 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rb_leftmost.i453, align 4
  %tobool1.not.i = icmp eq ptr %270, null
  br i1 %tobool1.not.i, label %cleanup70.i.if.end138_crit_edge, label %cleanup70.i.while.body.i457_crit_edge

cleanup70.i.while.body.i457_crit_edge:            ; preds = %cleanup70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i457

cleanup70.i.if.end138_crit_edge:                  ; preds = %cleanup70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

resolve_indirect_refs.exit.thread512:             ; preds = %cleanup.thread.i, %if.then47.i, %if.then40.i, %do.end.i458
  %ret.4.i.ph = phi i32 [ -22, %do.end.i458 ], [ 6, %if.then40.i ], [ %call43.i, %if.then47.i ], [ -12, %cleanup.thread.i ]
  call void @ulist_free(ptr noundef nonnull %call.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uiter.i) #13
  br label %out

if.end138:                                        ; preds = %cleanup70.i.if.end138_crit_edge, %while.cond.preheader.i.if.end138_crit_edge
  call void @ulist_free(ptr noundef nonnull %call.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uiter.i) #13
  %271 = ptrtoint ptr %indirect.i452 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load volatile ptr, ptr %indirect.i452, align 4
  %cmp147.not = icmp eq ptr %272, null
  br i1 %cmp147.not, label %if.end138.if.end172_crit_edge, label %do.end166, !prof !140

if.end138.if.end172_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end172

do.end166:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1293, i32 noundef 9, ptr noundef null) #13
  br label %if.end172

if.end172:                                        ; preds = %do.end166, %if.end138.if.end172_crit_edge
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %preftrees, i32 0, i32 1
  %273 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %rb_leftmost, align 4
  %tobool181.not546 = icmp eq ptr %274, null
  br i1 %tobool181.not546, label %if.end172.out_crit_edge, label %while.body.lr.ph

if.end172.out_crit_edge:                          ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.body.lr.ph:                                 ; preds = %if.end172
  %tobool184.not = icmp eq ptr %roots, null
  %tobool193.not = icmp eq ptr %sc, null
  %tobool216.not = icmp eq ptr %extent_item_pos, null
  br label %while.body

while.body:                                       ; preds = %if.end293.while.body_crit_edge, %while.body.lr.ph
  %ret.3550 = phi i32 [ 0, %while.body.lr.ph ], [ %ret.6, %if.end293.while.body_crit_edge ]
  %node.0547 = phi ptr [ %274, %while.body.lr.ph ], [ %call183, %if.end293.while.body_crit_edge ]
  %call183 = call ptr @rb_next(ptr noundef nonnull %node.0547) #13
  br i1 %tobool184.not, label %while.body.if.end209_crit_edge, label %land.lhs.true185

while.body.if.end209_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209

land.lhs.true185:                                 ; preds = %while.body
  %count = getelementptr inbounds %struct.prelim_ref, ptr %node.0547, i32 0, i32 4
  %275 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool186.not = icmp eq i32 %276, 0
  br i1 %tobool186.not, label %land.lhs.true185.if.end209_crit_edge, label %land.lhs.true187

land.lhs.true185.if.end209_crit_edge:             ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209

land.lhs.true187:                                 ; preds = %land.lhs.true185
  %root_id = getelementptr inbounds %struct.prelim_ref, ptr %node.0547, i32 0, i32 1
  %277 = ptrtoint ptr %root_id to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %root_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %278)
  %tobool188.not = icmp eq i64 %278, 0
  br i1 %tobool188.not, label %land.lhs.true187.if.end209_crit_edge, label %land.lhs.true189

land.lhs.true187.if.end209_crit_edge:             ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209

land.lhs.true189:                                 ; preds = %land.lhs.true187
  %parent = getelementptr inbounds %struct.prelim_ref, ptr %node.0547, i32 0, i32 6
  %279 = ptrtoint ptr %parent to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %parent, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %280)
  %cmp190 = icmp eq i64 %280, 0
  br i1 %cmp190, label %if.then192, label %land.lhs.true189.if.end209_crit_edge

land.lhs.true189.if.end209_crit_edge:             ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209

if.then192:                                       ; preds = %land.lhs.true189
  br i1 %tobool193.not, label %if.then192.if.end202_crit_edge, label %land.lhs.true194

if.then192.if.end202_crit_edge:                   ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end202

land.lhs.true194:                                 ; preds = %if.then192
  %281 = ptrtoint ptr %sc to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %sc, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %282)
  %tobool195.not = icmp eq i64 %282, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %278, i64 %282)
  %cmp199.not = icmp eq i64 %278, %282
  %or.cond417 = select i1 %tobool195.not, i1 true, i1 %cmp199.not
  br i1 %or.cond417, label %land.lhs.true194.if.end202_crit_edge, label %land.lhs.true194.out_crit_edge

land.lhs.true194.out_crit_edge:                   ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true194.if.end202_crit_edge:             ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end202

if.end202:                                        ; preds = %land.lhs.true194.if.end202_crit_edge, %if.then192.if.end202_crit_edge
  %call204 = call i32 @ulist_add(ptr noundef nonnull %roots, i64 noundef %278, i64 noundef 0, i32 noundef 3136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %cmp205 = icmp slt i32 %call204, 0
  br i1 %cmp205, label %if.end202.out_crit_edge, label %if.end202.if.end209_crit_edge

if.end202.if.end209_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209

if.end202.out_crit_edge:                          ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end209:                                        ; preds = %if.end202.if.end209_crit_edge, %land.lhs.true189.if.end209_crit_edge, %land.lhs.true187.if.end209_crit_edge, %land.lhs.true185.if.end209_crit_edge, %while.body.if.end209_crit_edge
  %ret.4 = phi i32 [ %call204, %if.end202.if.end209_crit_edge ], [ %ret.3550, %land.lhs.true189.if.end209_crit_edge ], [ %ret.3550, %land.lhs.true187.if.end209_crit_edge ], [ %ret.3550, %land.lhs.true185.if.end209_crit_edge ], [ %ret.3550, %while.body.if.end209_crit_edge ]
  %count210 = getelementptr inbounds %struct.prelim_ref, ptr %node.0547, i32 0, i32 4
  %283 = ptrtoint ptr %count210 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %count210, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool211.not = icmp eq i32 %284, 0
  br i1 %tobool211.not, label %if.end209.if.end293_crit_edge, label %land.lhs.true212

if.end209.if.end293_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end293

land.lhs.true212:                                 ; preds = %if.end209
  %parent213 = getelementptr inbounds %struct.prelim_ref, ptr %node.0547, i32 0, i32 6
  %285 = ptrtoint ptr %parent213 to i32
  call void @__asan_load8_noabort(i32 %285)
  %286 = load i64, ptr %parent213, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %286)
  %tobool214.not = icmp eq i64 %286, 0
  br i1 %tobool214.not, label %land.lhs.true212.if.end293_crit_edge, label %if.then215

land.lhs.true212.if.end293_crit_edge:             ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end293

if.then215:                                       ; preds = %land.lhs.true212
  br i1 %tobool216.not, label %if.then215.if.end261_crit_edge, label %land.lhs.true217

if.then215.if.end261_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

land.lhs.true217:                                 ; preds = %if.then215
  %inode_list = getelementptr inbounds %struct.prelim_ref, ptr %node.0547, i32 0, i32 5
  %287 = ptrtoint ptr %inode_list to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %inode_list, align 4
  %tobool218.not = icmp eq ptr %288, null
  br i1 %tobool218.not, label %land.lhs.true219, label %land.lhs.true217.if.end261_crit_edge

land.lhs.true217.if.end261_crit_edge:             ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

land.lhs.true219:                                 ; preds = %land.lhs.true217
  %level = getelementptr inbounds %struct.prelim_ref, ptr %node.0547, i32 0, i32 3
  %289 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %cmp220 = icmp eq i32 %290, 0
  br i1 %cmp220, label %if.then222, label %land.lhs.true219.if.end261_crit_edge

land.lhs.true219.if.end261_crit_edge:             ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end261

if.then222:                                       ; preds = %land.lhs.true219
  %call225 = call ptr @read_tree_block(ptr noundef %fs_info, i64 noundef %286, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null) #13
  %cmp.i472 = icmp ugt ptr %call225, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i472, label %if.then227, label %if.else229

if.then227:                                       ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #15
  %291 = ptrtoint ptr %call225 to i32
  br label %out

if.else229:                                       ; preds = %if.then222
  %bflags.i = getelementptr inbounds %struct.extent_buffer, ptr %call225, i32 0, i32 2
  %292 = ptrtoint ptr %bflags.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load volatile i32, ptr %bflags.i, align 4
  %and1.i.i = and i32 %293, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool231.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool231.not, label %if.then232, label %if.end234

if.then232:                                       ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #15
  call void @free_extent_buffer(ptr noundef %call225) #13
  br label %out

if.end234:                                        ; preds = %if.else229
  %294 = ptrtoint ptr %skip_locking91 to i32
  call void @__asan_load1_noabort(i32 %294)
  %bf.load236 = load i8, ptr %skip_locking91, align 2
  %295 = and i8 %bf.load236, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool240.not = icmp eq i8 %295, 0
  br i1 %tobool240.not, label %if.then241, label %if.end234.if.end242_crit_edge

if.end234.if.end242_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242

if.then241:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_tree_read_lock(ptr noundef %call225) #13
  br label %if.end242

if.end242:                                        ; preds = %if.then241, %if.end234.if.end242_crit_edge
  %296 = ptrtoint ptr %extent_item_pos to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %extent_item_pos, align 8
  %call244 = call fastcc i32 @find_extent_in_eb(ptr noundef %call225, i64 noundef %bytenr, i64 noundef %297, ptr noundef nonnull %eie, i1 noundef zeroext %ignore_offset)
  %298 = ptrtoint ptr %skip_locking91 to i32
  call void @__asan_load1_noabort(i32 %298)
  %bf.load246 = load i8, ptr %skip_locking91, align 2
  %299 = and i8 %bf.load246, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool250.not = icmp eq i8 %299, 0
  br i1 %tobool250.not, label %if.then251, label %if.end242.if.end252_crit_edge

if.end242.if.end252_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end252

if.then251:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_tree_read_unlock(ptr noundef %call225) #13
  br label %if.end252

if.end252:                                        ; preds = %if.then251, %if.end242.if.end252_crit_edge
  call void @free_extent_buffer(ptr noundef %call225) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %cmp253 = icmp slt i32 %call244, 0
  br i1 %cmp253, label %if.end252.out_crit_edge, label %cleanup258

if.end252.out_crit_edge:                          ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

cleanup258:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  %300 = ptrtoint ptr %eie to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %eie, align 4
  %302 = ptrtoint ptr %inode_list to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %301, ptr %inode_list, align 4
  br label %if.end261

if.end261:                                        ; preds = %cleanup258, %land.lhs.true219.if.end261_crit_edge, %land.lhs.true217.if.end261_crit_edge, %if.then215.if.end261_crit_edge
  %303 = ptrtoint ptr %parent213 to i32
  call void @__asan_load8_noabort(i32 %303)
  %304 = load i64, ptr %parent213, align 8
  %inode_list263 = getelementptr inbounds %struct.prelim_ref, ptr %node.0547, i32 0, i32 5
  %305 = ptrtoint ptr %inode_list263 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %inode_list263, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old64.i) #13
  %307 = ptrtoint ptr %eie to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %eie, align 4
  %309 = ptrtoint ptr %308 to i32
  %conv.i = zext i32 %309 to i64
  %310 = ptrtoint ptr %old64.i to i32
  call void @__asan_store8_noabort(i32 %310)
  store i64 %conv.i, ptr %old64.i, align 8
  %311 = ptrtoint ptr %306 to i32
  %conv1.i = zext i32 %311 to i64
  %call.i473 = call i32 @ulist_add_merge(ptr noundef %refs, i64 noundef %304, i64 noundef %conv1.i, ptr noundef nonnull %old64.i, i32 noundef 3136) #13
  %312 = ptrtoint ptr %old64.i to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %old64.i, align 8
  %conv2.i = trunc i64 %313 to i32
  %314 = inttoptr i32 %conv2.i to ptr
  %315 = ptrtoint ptr %eie to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %314, ptr %eie, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old64.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i473)
  %cmp265 = icmp slt i32 %call.i473, 0
  br i1 %cmp265, label %if.end261.out_crit_edge, label %if.end268

if.end261.out_crit_edge:                          ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end268:                                        ; preds = %if.end261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i473)
  %tobool269.not = icmp ne i32 %call.i473, 0
  %brmerge = or i1 %tobool216.not, %tobool269.not
  br i1 %brmerge, label %if.end268.if.end292_crit_edge, label %if.then272

if.end268.if.end292_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end292

if.then272:                                       ; preds = %if.end268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i)
  %tobool273.not = icmp eq i32 %conv2.i, 0
  br i1 %tobool273.not, label %cond.false281, label %while.cond286.preheader, !prof !139

while.cond286.preheader:                          ; preds = %if.then272
  %316 = ptrtoint ptr %eie to i32
  call void @__asan_load4_noabort(i32 %316)
  %eie.promoted = load ptr, ptr %eie, align 4
  br label %while.cond286

cond.false281:                                    ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1369) #16
  unreachable

while.cond286:                                    ; preds = %while.cond286.while.cond286_crit_edge, %while.cond286.preheader
  %317 = phi ptr [ %eie.promoted, %while.cond286.preheader ], [ %319, %while.cond286.while.cond286_crit_edge ]
  %next = getelementptr inbounds %struct.extent_inode_elem, ptr %317, i32 0, i32 2
  %318 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %next, align 8
  %tobool287.not = icmp eq ptr %319, null
  br i1 %tobool287.not, label %while.end, label %while.cond286.while.cond286_crit_edge

while.cond286.while.cond286_crit_edge:            ; preds = %while.cond286
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond286

while.end:                                        ; preds = %while.cond286
  call void @__sanitizer_cov_trace_pc() #15
  %next.le = getelementptr inbounds %struct.extent_inode_elem, ptr %317, i32 0, i32 2
  %320 = ptrtoint ptr %inode_list263 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %inode_list263, align 4
  %322 = ptrtoint ptr %next.le to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %321, ptr %next.le, align 8
  br label %if.end292

if.end292:                                        ; preds = %while.end, %if.end268.if.end292_crit_edge
  %323 = ptrtoint ptr %eie to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr null, ptr %eie, align 4
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %land.lhs.true212.if.end293_crit_edge, %if.end209.if.end293_crit_edge
  %ret.6 = phi i32 [ %call.i473, %if.end292 ], [ %ret.4, %land.lhs.true212.if.end293_crit_edge ], [ %ret.4, %if.end209.if.end293_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 1380, i32 noundef 0) #13
  %call.i474 = call i32 @__cond_resched() #13
  %tobool181.not = icmp eq ptr %call183, null
  br i1 %tobool181.not, label %if.end293.out_crit_edge, label %if.end293.while.body_crit_edge

if.end293.while.body_crit_edge:                   ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end293.out_crit_edge:                          ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %if.end293.out_crit_edge, %if.end261.out_crit_edge, %if.end252.out_crit_edge, %if.then232, %if.then227, %if.end202.out_crit_edge, %land.lhs.true194.out_crit_edge, %if.end172.out_crit_edge, %resolve_indirect_refs.exit.thread512, %resolve_indirect_refs.exit.thread, %add_missing_keys.exit, %add_missing_keys.exit.thread507, %land.rhs.i.i.i162.i.out_crit_edge, %if.end.i.i149.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.end.i.i.i439.out_crit_edge, %land.rhs.i.i.i.i437.out_crit_edge, %sw.bb21.i.out_crit_edge, %sw.bb.i427.out_crit_edge, %btrfs_next_item.exit.i.out_crit_edge, %land.rhs.i.i.i257.i.out_crit_edge, %if.end.i.i244.i.out_crit_edge, %land.lhs.true100.i.out_crit_edge, %if.end.i.i.i.out_crit_edge, %land.rhs.i.i.i.i.out_crit_edge, %sw.bb84.i.out_crit_edge, %sw.bb.i.out_crit_edge, %while.body.i.out_crit_edge, %if.end51.out_crit_edge, %btrfs_put_delayed_ref_head.exit.out_crit_edge, %if.end17.out_crit_edge
  %ret.7 = phi i32 [ %call53, %if.end51.out_crit_edge ], [ %226, %add_missing_keys.exit ], [ -5, %add_missing_keys.exit.thread507 ], [ -12, %resolve_indirect_refs.exit.thread ], [ %ret.4.i.ph, %resolve_indirect_refs.exit.thread512 ], [ -5, %if.then232 ], [ %291, %if.then227 ], [ 0, %if.end172.out_crit_edge ], [ %call18542, %if.end17.out_crit_edge ], [ %call204, %if.end202.out_crit_edge ], [ %call.i473, %if.end261.out_crit_edge ], [ %ret.6, %if.end293.out_crit_edge ], [ 6, %land.lhs.true194.out_crit_edge ], [ %call244, %if.end252.out_crit_edge ], [ %call4.i.i.i, %btrfs_next_item.exit.i.out_crit_edge ], [ -12, %if.end.i.i149.i.out_crit_edge ], [ -12, %if.end.i.i.i439.out_crit_edge ], [ -12, %sw.bb21.i.out_crit_edge ], [ -12, %sw.bb.i427.out_crit_edge ], [ 6, %land.rhs.i.i.i.i437.out_crit_edge ], [ 6, %land.rhs.i.i.i162.i.out_crit_edge ], [ 6, %land.lhs.true.i.out_crit_edge ], [ 6, %land.lhs.true100.i.out_crit_edge ], [ 6, %land.rhs.i.i.i257.i.out_crit_edge ], [ 6, %land.rhs.i.i.i.i.out_crit_edge ], [ -12, %if.end.i.i244.i.out_crit_edge ], [ -12, %if.end.i.i.i.out_crit_edge ], [ -12, %sw.bb84.i.out_crit_edge ], [ -12, %sw.bb.i.out_crit_edge ], [ -117, %while.body.i.out_crit_edge ], [ %call18, %btrfs_put_delayed_ref_head.exit.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call3) #13
  %call.i475 = call ptr @rb_first_postorder(ptr noundef nonnull %preftrees) #13
  %tobool2.not25.i = icmp eq ptr %call.i475, null
  br i1 %tobool2.not25.i, label %out.prelim_release.exit_crit_edge, label %out.land.rhs.i_crit_edge

out.land.rhs.i_crit_edge:                         ; preds = %out
  br label %land.rhs.i

out.prelim_release.exit_crit_edge:                ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %prelim_release.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %out.land.rhs.i_crit_edge
  %ref.026.i = phi ptr [ %call4.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %call.i475, %out.land.rhs.i_crit_edge ]
  %call4.i = call ptr @rb_next_postorder(ptr noundef nonnull %ref.026.i) #13
  %324 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  call void @kmem_cache_free(ptr noundef %324, ptr noundef nonnull %ref.026.i) #13
  %tobool2.not.i476 = icmp eq ptr %call4.i, null
  br i1 %tobool2.not.i476, label %land.rhs.i.prelim_release.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

land.rhs.i.prelim_release.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %prelim_release.exit

prelim_release.exit:                              ; preds = %land.rhs.i.prelim_release.exit_crit_edge, %out.prelim_release.exit_crit_edge
  %325 = ptrtoint ptr %preftrees to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr null, ptr %preftrees, align 4
  %.compoundliteral.sroa.2.0.root16.sroa_idx.i = getelementptr inbounds i8, ptr %preftrees, i32 4
  %326 = ptrtoint ptr %.compoundliteral.sroa.2.0.root16.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr null, ptr %.compoundliteral.sroa.2.0.root16.sroa_idx.i, align 4
  %count.i477 = getelementptr inbounds %struct.preftree, ptr %preftrees, i32 0, i32 1
  %327 = ptrtoint ptr %count.i477 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 0, ptr %count.i477, align 4
  %indirect298 = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 1
  %call.i478 = call ptr @rb_first_postorder(ptr noundef %indirect298) #13
  %tobool2.not25.i479 = icmp eq ptr %call.i478, null
  br i1 %tobool2.not25.i479, label %prelim_release.exit.prelim_release.exit486_crit_edge, label %prelim_release.exit.land.rhs.i483_crit_edge

prelim_release.exit.land.rhs.i483_crit_edge:      ; preds = %prelim_release.exit
  br label %land.rhs.i483

prelim_release.exit.prelim_release.exit486_crit_edge: ; preds = %prelim_release.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %prelim_release.exit486

land.rhs.i483:                                    ; preds = %land.rhs.i483.land.rhs.i483_crit_edge, %prelim_release.exit.land.rhs.i483_crit_edge
  %ref.026.i480 = phi ptr [ %call4.i481, %land.rhs.i483.land.rhs.i483_crit_edge ], [ %call.i478, %prelim_release.exit.land.rhs.i483_crit_edge ]
  %call4.i481 = call ptr @rb_next_postorder(ptr noundef nonnull %ref.026.i480) #13
  %328 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  call void @kmem_cache_free(ptr noundef %328, ptr noundef nonnull %ref.026.i480) #13
  %tobool2.not.i482 = icmp eq ptr %call4.i481, null
  br i1 %tobool2.not.i482, label %land.rhs.i483.prelim_release.exit486_crit_edge, label %land.rhs.i483.land.rhs.i483_crit_edge

land.rhs.i483.land.rhs.i483_crit_edge:            ; preds = %land.rhs.i483
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i483

land.rhs.i483.prelim_release.exit486_crit_edge:   ; preds = %land.rhs.i483
  call void @__sanitizer_cov_trace_pc() #15
  br label %prelim_release.exit486

prelim_release.exit486:                           ; preds = %land.rhs.i483.prelim_release.exit486_crit_edge, %prelim_release.exit.prelim_release.exit486_crit_edge
  %329 = ptrtoint ptr %indirect298 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr null, ptr %indirect298, align 4
  %.compoundliteral.sroa.2.0.root16.sroa_idx.i484 = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 1, i32 0, i32 1
  %330 = ptrtoint ptr %.compoundliteral.sroa.2.0.root16.sroa_idx.i484 to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr null, ptr %.compoundliteral.sroa.2.0.root16.sroa_idx.i484, align 4
  %count.i485 = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 1, i32 1
  %331 = ptrtoint ptr %count.i485 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 0, ptr %count.i485, align 4
  %indirect_missing_keys299 = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 2
  %call.i487 = call ptr @rb_first_postorder(ptr noundef %indirect_missing_keys299) #13
  %tobool2.not25.i488 = icmp eq ptr %call.i487, null
  br i1 %tobool2.not25.i488, label %prelim_release.exit486.prelim_release.exit495_crit_edge, label %prelim_release.exit486.land.rhs.i492_crit_edge

prelim_release.exit486.land.rhs.i492_crit_edge:   ; preds = %prelim_release.exit486
  br label %land.rhs.i492

prelim_release.exit486.prelim_release.exit495_crit_edge: ; preds = %prelim_release.exit486
  call void @__sanitizer_cov_trace_pc() #15
  br label %prelim_release.exit495

land.rhs.i492:                                    ; preds = %land.rhs.i492.land.rhs.i492_crit_edge, %prelim_release.exit486.land.rhs.i492_crit_edge
  %ref.026.i489 = phi ptr [ %call4.i490, %land.rhs.i492.land.rhs.i492_crit_edge ], [ %call.i487, %prelim_release.exit486.land.rhs.i492_crit_edge ]
  %call4.i490 = call ptr @rb_next_postorder(ptr noundef nonnull %ref.026.i489) #13
  %332 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  call void @kmem_cache_free(ptr noundef %332, ptr noundef nonnull %ref.026.i489) #13
  %tobool2.not.i491 = icmp eq ptr %call4.i490, null
  br i1 %tobool2.not.i491, label %land.rhs.i492.prelim_release.exit495_crit_edge, label %land.rhs.i492.land.rhs.i492_crit_edge

land.rhs.i492.land.rhs.i492_crit_edge:            ; preds = %land.rhs.i492
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i492

land.rhs.i492.prelim_release.exit495_crit_edge:   ; preds = %land.rhs.i492
  call void @__sanitizer_cov_trace_pc() #15
  br label %prelim_release.exit495

prelim_release.exit495:                           ; preds = %land.rhs.i492.prelim_release.exit495_crit_edge, %prelim_release.exit486.prelim_release.exit495_crit_edge
  %333 = ptrtoint ptr %indirect_missing_keys299 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr null, ptr %indirect_missing_keys299, align 4
  %.compoundliteral.sroa.2.0.root16.sroa_idx.i493 = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 2, i32 0, i32 1
  %334 = ptrtoint ptr %.compoundliteral.sroa.2.0.root16.sroa_idx.i493 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr null, ptr %.compoundliteral.sroa.2.0.root16.sroa_idx.i493, align 4
  %count.i494 = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 2, i32 1
  %335 = ptrtoint ptr %count.i494 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 0, ptr %count.i494, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7)
  %cmp300 = icmp slt i32 %ret.7, 0
  br i1 %cmp300, label %if.then302, label %prelim_release.exit495.cleanup304_crit_edge

prelim_release.exit495.cleanup304_crit_edge:      ; preds = %prelim_release.exit495
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup304

if.then302:                                       ; preds = %prelim_release.exit495
  %336 = ptrtoint ptr %eie to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %eie, align 4
  %tobool.not3.i = icmp eq ptr %337, null
  br i1 %tobool.not3.i, label %if.then302.cleanup304_crit_edge, label %if.then302.for.body.i_crit_edge

if.then302.for.body.i_crit_edge:                  ; preds = %if.then302
  br label %for.body.i

if.then302.cleanup304_crit_edge:                  ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup304

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then302.for.body.i_crit_edge
  %eie.addr.04.i = phi ptr [ %339, %for.body.i.for.body.i_crit_edge ], [ %337, %if.then302.for.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.extent_inode_elem, ptr %eie.addr.04.i, i32 0, i32 2
  %338 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %next.i, align 8
  call void @kfree(ptr noundef nonnull %eie.addr.04.i) #13
  %tobool.not.i496 = icmp eq ptr %339, null
  br i1 %tobool.not.i496, label %for.body.i.cleanup304_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.cleanup304_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup304

cleanup304:                                       ; preds = %for.body.i.cleanup304_crit_edge, %if.then302.cleanup304_crit_edge, %prelim_release.exit495.cleanup304_crit_edge, %entry.cleanup304_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup304_crit_edge ], [ %ret.7, %prelim_release.exit495.cleanup304_crit_edge ], [ %ret.7, %if.then302.cleanup304_crit_edge ], [ %ret.7, %for.body.i.cleanup304_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %preftrees) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eie) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_find_all_roots(ptr noundef %trans, ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %time_seq, ptr nocapture noundef %roots, i1 noundef zeroext %skip_commit_root_sem) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %trans, null
  %brmerge = or i1 %tobool.not, %skip_commit_root_sem
  br i1 %brmerge, label %if.end.thread, label %if.then5

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call fastcc i32 @btrfs_find_all_roots_safe(ptr noundef %trans, ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %time_seq, ptr noundef %roots, i1 noundef zeroext false)
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %commit_root_sem = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 54
  tail call void @down_read(ptr noundef %commit_root_sem) #13
  %call = tail call fastcc i32 @btrfs_find_all_roots_safe(ptr noundef null, ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %time_seq, ptr noundef %roots, i1 noundef zeroext false)
  tail call void @up_read(ptr noundef %commit_root_sem) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.thread
  %call16 = phi i32 [ %call15, %if.end.thread ], [ %call, %if.then5 ]
  ret i32 %call16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_find_all_roots_safe(ptr noundef %trans, ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %time_seq, ptr nocapture noundef %roots, i1 noundef zeroext %ignore_offset) unnamed_addr #2 align 64 {
entry:
  %uiter = alloca %struct.ulist_iterator, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uiter) #13
  %call = tail call ptr @ulist_alloc(i32 noundef 3136) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ulist_alloc(i32 noundef 3136) #13
  %0 = ptrtoint ptr %roots to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %roots, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ulist_free(ptr noundef nonnull %call) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %uiter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %uiter, align 4
  %2 = ptrtoint ptr %roots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roots, align 4
  %call632 = call fastcc i32 @find_parent_nodes(ptr noundef %trans, ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %time_seq, ptr noundef nonnull %call, ptr noundef %3, ptr noundef null, ptr noundef null, i1 noundef zeroext %ignore_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call632)
  %cmp33 = icmp sgt i32 %call632, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call632)
  %cmp7.not34 = icmp eq i32 %call632, -2
  %or.cond35 = or i1 %cmp33, %cmp7.not34
  br i1 %or.cond35, label %if.end4.if.end9_crit_edge, label %if.end4.if.then8_crit_edge

if.end4.if.then8_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  br label %if.end9

if.then8:                                         ; preds = %if.end13.if.then8_crit_edge, %if.end4.if.then8_crit_edge
  %call6.lcssa = phi i32 [ %call632, %if.end4.if.then8_crit_edge ], [ %call6, %if.end13.if.then8_crit_edge ]
  call void @ulist_free(ptr noundef nonnull %call) #13
  %4 = ptrtoint ptr %roots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %roots, align 4
  call void @ulist_free(ptr noundef %5) #13
  %6 = ptrtoint ptr %roots to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %roots, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end13.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %call10 = call ptr @ulist_next(ptr noundef nonnull %call, ptr noundef nonnull %uiter) #13
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %while.end, label %if.end13

if.end13:                                         ; preds = %if.end9
  %7 = ptrtoint ptr %call10 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %call10, align 8
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 1488, i32 noundef 0) #13
  %call.i = call i32 @__cond_resched() #13
  %9 = ptrtoint ptr %roots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %roots, align 4
  %call6 = call fastcc i32 @find_parent_nodes(ptr noundef %trans, ptr noundef %fs_info, i64 noundef %8, i64 noundef %time_seq, ptr noundef nonnull %call, ptr noundef %10, ptr noundef null, ptr noundef null, i1 noundef zeroext %ignore_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp = icmp sgt i32 %call6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, -2
  %or.cond = or i1 %cmp, %cmp7.not
  br i1 %or.cond, label %if.end13.if.end9_crit_edge, label %if.end13.if.then8_crit_edge

if.end13.if.then8_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.end13.if.end9_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

while.end:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @ulist_free(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6.lcssa, %if.then8 ], [ 0, %while.end ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uiter) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_shared(ptr noundef %root, i64 noundef %inum, i64 noundef %bytenr, ptr noundef %roots, ptr noundef %tmp) local_unnamed_addr #2 align 64 {
entry:
  %uiter = alloca %struct.ulist_iterator, align 4
  %elem = alloca %struct.btrfs_seq_list, align 8
  %shared = alloca %struct.share_check, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uiter) #13
  %2 = ptrtoint ptr %uiter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %uiter, align 4, !annotation !150
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %elem) #13
  %3 = getelementptr inbounds %struct.list_head, ptr %elem, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_seq_list, ptr %elem, i32 0, i32 1
  %5 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %elem, ptr %elem, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %elem, ptr %3, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %shared) #13
  %8 = getelementptr inbounds i8, ptr %shared, i32 16
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %8, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %10 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %root_key, align 1
  %12 = ptrtoint ptr %shared to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %shared, align 8
  %inum4 = getelementptr inbounds %struct.share_check, ptr %shared, i32 0, i32 1
  %13 = ptrtoint ptr %inum4 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %inum, ptr %inum4, align 8
  %share_count = getelementptr inbounds %struct.share_check, ptr %shared, i32 0, i32 2
  %14 = ptrtoint ptr %share_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %share_count, align 8
  call void @ulist_init(ptr noundef %roots) #13
  call void @ulist_init(ptr noundef %tmp) #13
  %call = call ptr @btrfs_join_transaction_nostart(ptr noundef %root) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = ptrtoint ptr %call to i32
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %15, label %if.then.out_crit_edge [
    i32 -2, label %if.then.if.end_crit_edge
    i32 -30, label %if.then.if.end_crit_edge61
  ]

if.then.if.end_crit_edge61:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then.if.end_crit_edge61
  %commit_root_sem = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 54
  call void @down_read(ptr noundef %commit_root_sem) #13
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i64 @btrfs_get_tree_mod_seq(ptr noundef %1, ptr noundef nonnull %elem) #13
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end
  %trans.0 = phi ptr [ null, %if.end ], [ %call, %if.else ]
  %17 = ptrtoint ptr %uiter to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %uiter, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %4, align 8
  %call1456 = call fastcc i32 @find_parent_nodes(ptr noundef %trans.0, ptr noundef %1, i64 noundef %bytenr, i64 noundef %19, ptr noundef %tmp, ptr noundef %roots, ptr noundef null, ptr noundef nonnull %shared, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call1456)
  %cmp1557 = icmp eq i32 %call1456, 6
  br i1 %cmp1557, label %if.end12.while.end_crit_edge, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  br label %if.end17

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end17:                                         ; preds = %if.end25.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %call1458 = phi i32 [ %call14, %if.end25.if.end17_crit_edge ], [ %call1456, %if.end12.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1458)
  %cmp18 = icmp sgt i32 %call1458, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1458)
  %cmp20.not = icmp eq i32 %call1458, -2
  %or.cond = or i1 %cmp18, %cmp20.not
  br i1 %or.cond, label %if.end22, label %if.end17.while.end_crit_edge

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end22:                                         ; preds = %if.end17
  %call23 = call ptr @ulist_next(ptr noundef %tmp, ptr noundef nonnull %uiter) #13
  %tobool.not = icmp eq ptr %call23, null
  br i1 %tobool.not, label %if.end22.while.end_crit_edge, label %if.end25

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end25:                                         ; preds = %if.end22
  %20 = ptrtoint ptr %call23 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %call23, align 8
  %22 = ptrtoint ptr %share_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %share_count, align 8
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 1578, i32 noundef 0) #13
  %call.i = call i32 @__cond_resched() #13
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %4, align 8
  %call14 = call fastcc i32 @find_parent_nodes(ptr noundef %trans.0, ptr noundef %1, i64 noundef %21, i64 noundef %24, ptr noundef %tmp, ptr noundef %roots, ptr noundef null, ptr noundef nonnull %shared, i1 noundef zeroext false)
  %cmp15 = icmp eq i32 %call14, 6
  br i1 %cmp15, label %if.end25.while.end_crit_edge, label %if.end25.if.end17_crit_edge

if.end25.if.end17_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %if.end22.while.end_crit_edge, %if.end17.while.end_crit_edge, %if.end12.while.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.end12.while.end_crit_edge ], [ %call1458, %if.end17.while.end_crit_edge ], [ 1, %if.end25.while.end_crit_edge ], [ 0, %if.end22.while.end_crit_edge ]
  %tobool29.not = icmp eq ptr %trans.0, null
  br i1 %tobool29.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_put_tree_mod_seq(ptr noundef %1, ptr noundef nonnull %elem) #13
  %call31 = call i32 @btrfs_end_transaction(ptr noundef nonnull %trans.0) #13
  br label %out

if.else32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %commit_root_sem33 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 54
  call void @up_read(ptr noundef %commit_root_sem33) #13
  br label %out

out:                                              ; preds = %if.else32, %if.then30, %if.then.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then30 ], [ %ret.0, %if.else32 ], [ %15, %if.then.out_crit_edge ]
  call void @ulist_release(ptr noundef %roots) #13
  call void @ulist_release(ptr noundef %tmp) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %shared) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %elem) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uiter) #13
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulist_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_join_transaction_nostart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_tree_mod_seq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ulist_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_tree_mod_seq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulist_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_find_one_extref(ptr noundef %root, i64 noundef %inode_objectid, i64 noundef %start_off, ptr noundef %path, ptr nocapture noundef writeonly %ret_extref, ptr noundef writeonly %found_off) local_unnamed_addr #2 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #13
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %inode_objectid, ptr %key, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %0, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %start_off, ptr %1, align 1
  %call = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.then4.while.cond_crit_edge, %while.cond.preheader
  %5 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %path, align 4
  %7 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slots, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %6, i32 0, i32 12
  %9 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %10) #13
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %6, align 8
  %conv.i = trunc i64 %12 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %13 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %nritems.i, align 1
  %15 = call i32 @llvm.bswap.i32(i32 %14) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %15)
  %cmp3.not = icmp ult i32 %8, %15
  br i1 %cmp3.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %while.cond
  %call.i48 = call i32 @btrfs_next_old_leaf(ptr noundef %root, ptr noundef %path, i64 noundef 0) #13
  %tobool.not = icmp eq i32 %call.i48, 0
  br i1 %tobool.not, label %if.then4.while.cond_crit_edge, label %if.then6

if.then4.while.cond_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp7 = icmp sgt i32 %call.i48, 0
  %spec.store.select = select i1 %cmp7, i32 -2, i32 %call.i48
  br label %cleanup

if.end11:                                         ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #13
  %16 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %8, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %18 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %6, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #13
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %17, align 1
  %21 = call i64 @llvm.bswap.i64(i64 %20) #13
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %16, align 8
  %24 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %disk_key.i, align 8
  %26 = call i64 @llvm.bswap.i64(i64 %25) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %inode_objectid)
  %cmp13.not = icmp eq i64 %26, %inode_objectid
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %23)
  %cmp17.not = icmp eq i8 %23, 13
  %or.cond = select i1 %cmp13.not, i1 %cmp17.not, i1 false
  br i1 %or.cond, label %if.end20, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %27 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %28, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %29 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %6, ptr noundef %29, i32 noundef 17) #13
  %add = add i32 %call.i.i, 101
  %30 = inttoptr i32 %add to ptr
  %31 = ptrtoint ptr %ret_extref to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %ret_extref, align 4
  %tobool24.not = icmp eq ptr %found_off, null
  br i1 %tobool24.not, label %if.end20.cleanup_crit_edge, label %if.then25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %found_off to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %21, ptr %found_off, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end20.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %spec.store.select, %if.then6 ], [ -2, %if.end11.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_item_key_to_cpu(ptr noundef %eb, ptr nocapture noundef writeonly %key, i32 noundef %nr) unnamed_addr #4 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #13
  %0 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 2
  %mul.i.i.i = mul i32 %nr, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %2 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %eb, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i, i32 noundef 17) #13
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %1, align 1
  %5 = call i64 @llvm.bswap.i64(i64 %4) #13
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
  %12 = call i64 @llvm.bswap.i64(i64 %11) #13
  %13 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %key, align 1
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_ref_to_path(ptr noundef %fs_root, ptr noundef %path, i32 noundef %name_len, i32 noundef %name_off, ptr noundef %eb_in, i64 noundef %parent, ptr noundef %dest, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %found_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %size to i64
  %sub = add nsw i64 %conv, -1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %found_key) #13
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %found_key, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not = icmp eq i32 %size, 0
  %1 = call ptr @memset(ptr %found_key, i32 255, i32 17)
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %idxprom = trunc i64 %sub to i32
  %arrayidx = getelementptr i8, ptr %dest, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %skip_locking = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 5
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %locks = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %name_off.addr.0 = phi i32 [ %name_off, %if.end ], [ %15, %while.cond.backedge ]
  %parent.addr.0 = phi i64 [ %parent, %if.end ], [ %6, %while.cond.backedge ]
  %name_len.addr.0 = phi i32 [ %name_len, %if.end ], [ %conv36, %while.cond.backedge ]
  %bytes_left.0 = phi i64 [ %sub, %if.end ], [ %dec, %while.cond.backedge ]
  %eb.0 = phi ptr [ %eb_in, %if.end ], [ %10, %while.cond.backedge ]
  %conv2 = zext i32 %name_len.addr.0 to i64
  %sub3 = sub i64 %bytes_left.0, %conv2
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub3)
  %cmp4 = icmp sgt i64 %sub3, -1
  br i1 %cmp4, label %if.then6, label %while.cond.if.end7_crit_edge

while.cond.if.end7_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %idx.ext = trunc i64 %sub3 to i32
  %add.ptr = getelementptr i8, ptr %dest, i32 %idx.ext
  call void @read_extent_buffer(ptr noundef %eb.0, ptr noundef %add.ptr, i32 noundef %name_off.addr.0, i32 noundef %name_len.addr.0) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %while.cond.if.end7_crit_edge
  %cmp8.not = icmp eq ptr %eb.0, %eb_in
  br i1 %cmp8.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  %3 = ptrtoint ptr %skip_locking to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %skip_locking, align 2
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then11, label %if.then10.if.end12_crit_edge

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_tree_read_unlock(ptr noundef %eb.0) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then10.if.end12_crit_edge
  call void @free_extent_buffer(ptr noundef %eb.0) #13
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end7.if.end13_crit_edge
  %call = call i32 @btrfs_find_item(ptr noundef %fs_root, ptr noundef %path, i64 noundef %parent.addr.0, i64 noundef 0, i8 noundef zeroext 12, ptr noundef nonnull %found_key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp14 = icmp sgt i32 %call, 0
  %spec.store.select = select i1 %cmp14, i32 -2, i32 %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool18.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool18.not, label %if.end20, label %if.then45.critedge

if.end20:                                         ; preds = %if.end13
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %0, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %parent.addr.0, i64 %6)
  %cmp21 = icmp eq i64 %parent.addr.0, %6
  br i1 %cmp21, label %if.end47.critedge, label %if.end24

if.end24:                                         ; preds = %if.end20
  %7 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slots, align 4
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 4
  %cmp27.not = icmp eq ptr %10, %eb_in
  br i1 %cmp27.not, label %if.end24.if.end33_crit_edge, label %if.then29

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %path, align 4
  %12 = ptrtoint ptr %locks to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %locks, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end24.if.end33_crit_edge
  call void @btrfs_release_path(ptr noundef %path) #13
  %mul.i.i.i = mul i32 %8, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %13 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %10, ptr noundef %13, i32 noundef 17) #13
  %add = add i32 %call.i.i, 101
  %14 = inttoptr i32 %add to ptr
  %call.i = call zeroext i16 @btrfs_get_16(ptr noundef %10, ptr noundef %14, i32 noundef 8) #13
  %conv36 = zext i16 %call.i to i32
  %add.ptr37 = getelementptr %struct.btrfs_inode_ref, ptr %14, i32 1
  %15 = ptrtoint ptr %add.ptr37 to i32
  %dec = add i64 %sub3, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %dec)
  %cmp38 = icmp sgt i64 %dec, -1
  br i1 %cmp38, label %if.then40, label %if.end33.while.cond.backedge_crit_edge

if.end33.while.cond.backedge_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %idxprom41 = trunc i64 %dec to i32
  %arrayidx42 = getelementptr i8, ptr %dest, i32 %idxprom41
  %16 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 47, ptr %arrayidx42, align 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then40, %if.end33.while.cond.backedge_crit_edge
  br label %while.cond

if.then45.critedge:                               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_release_path(ptr noundef %path) #13
  %17 = inttoptr i32 %spec.store.select to ptr
  br label %cleanup

if.end47.critedge:                                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_release_path(ptr noundef %path) #13
  %idx.ext48 = trunc i64 %sub3 to i32
  %add.ptr49 = getelementptr i8, ptr %dest, i32 %idx.ext48
  br label %cleanup

cleanup:                                          ; preds = %if.end47.critedge, %if.then45.critedge
  %retval.0 = phi ptr [ %17, %if.then45.critedge ], [ %add.ptr49, %if.end47.critedge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %found_key) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_read_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_find_item(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @extent_from_logical(ptr noundef %fs_info, i64 noundef %logical, ptr noundef %path, ptr nocapture noundef %found_key, ptr noundef writeonly %flags_ret) local_unnamed_addr #2 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @btrfs_extent_root(ptr noundef %fs_info, i64 noundef %logical) #13
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #13
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  %2 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %incompat_flags.i.i, align 1
  %6 = and i64 %5, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.i.not = icmp eq i64 %6, 0
  %. = select i1 %tobool.i.not, i8 -88, i8 -87
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %., ptr %0, align 8
  %8 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %logical, ptr %key, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 -1, ptr %1, align 1
  %call3 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = call i32 @btrfs_previous_extent_item(ptr noundef %call, ptr noundef %path, i64 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8 = icmp sgt i32 %call6, 0
  %spec.store.select = select i1 %cmp8, i32 -2, i32 %call6
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %12 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #13
  %14 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %13, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %16 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %11, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #13
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %15, align 1
  %19 = call i64 @llvm.bswap.i64(i64 %18) #13
  %offset1.i.i = getelementptr inbounds %struct.btrfs_key, ptr %found_key, i32 0, i32 2
  %20 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %offset1.i.i, align 1
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %14, align 8
  %type2.i.i = getelementptr inbounds %struct.btrfs_key, ptr %found_key, i32 0, i32 1
  %23 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %type2.i.i, align 1
  %24 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %disk_key.i, align 8
  %26 = call i64 @llvm.bswap.i64(i64 %25) #13
  %27 = ptrtoint ptr %found_key to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %found_key, align 1
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #13
  %28 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %22, label %if.end11.if.end26_crit_edge [
    i8 -87, label %if.then16
    i8 -88, label %if.then23
  ]

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %29 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nodesize, align 8
  %conv17 = zext i32 %30 to i64
  br label %if.end26

if.then23:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then16, %if.end11.if.end26_crit_edge
  %size.0 = phi i64 [ %conv17, %if.then16 ], [ %19, %if.then23 ], [ 0, %if.end11.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %logical)
  %cmp28 = icmp ule i64 %26, %logical
  %add = add i64 %size.0, %26
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %logical)
  %cmp31.not = icmp ugt i64 %add, %logical
  %or.cond = select i1 %cmp28, i1 %cmp31.not, i1 false
  br i1 %or.cond, label %if.end40, label %do.body

do.body:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @extent_from_logical.__UNIQUE_ID_ddebug927, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@extent_from_logical, %if.then38)) #13
          to label %cleanup [label %if.then38], !srcloc !151

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.5, i64 noundef %logical) #17
  br label %cleanup

if.end40:                                         ; preds = %if.end26
  %31 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %path, align 4
  %33 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %34, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %35 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %32, ptr noundef %35, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call.i.i)
  %cmp47 = icmp ult i32 %call.i.i, 24
  br i1 %cmp47, label %do.body56, label %do.end64, !prof !139

do.body56:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1791, 0\0A.popsection", ""() #13, !srcloc !152
  unreachable

do.end64:                                         ; preds = %if.end40
  %36 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %slots, align 4
  %mul.i.i.i188 = mul i32 %37, 25
  %add.i.i.i189 = add i32 %mul.i.i.i188, 101
  %38 = inttoptr i32 %add.i.i.i189 to ptr
  %call.i.i190 = call i32 @btrfs_get_32(ptr noundef %32, ptr noundef %38, i32 noundef 17) #13
  %add68 = add i32 %call.i.i190, 101
  %39 = inttoptr i32 %add68 to ptr
  %call.i = call i64 @btrfs_get_64(ptr noundef %32, ptr noundef %39, i32 noundef 16) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @extent_from_logical.__UNIQUE_ID_ddebug928, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@extent_from_logical, %if.then82)) #13
          to label %do.end88 [label %if.then82], !srcloc !151

if.then82:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %found_key to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %found_key, align 1
  %sub = sub i64 %logical, %41
  %42 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %offset1.i.i, align 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.7, i64 noundef %logical, i64 noundef %sub, i64 noundef %41, i64 noundef %43, i64 noundef %call.i, i32 noundef %call.i.i) #17
  br label %do.end88

do.end88:                                         ; preds = %if.then82, %do.end64
  %tobool89.not = icmp eq ptr %flags_ret, null
  br i1 %tobool89.not, label %do.end107, label %if.then122.critedge, !prof !139

do.end107:                                        ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1801, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.then122.critedge:                              ; preds = %do.end88
  %and = and i64 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool123.not = icmp eq i64 %and, 0
  br i1 %tobool123.not, label %if.else125, label %if.then122.critedge.if.end137_crit_edge

if.then122.critedge.if.end137_crit_edge:          ; preds = %if.then122.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.else125:                                       ; preds = %if.then122.critedge
  %and126 = and i64 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and126)
  %tobool127.not = icmp eq i64 %and126, 0
  br i1 %tobool127.not, label %do.body130, label %if.else125.if.end137_crit_edge

if.else125.if.end137_crit_edge:                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

do.body130:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1808, 0\0A.popsection", ""() #13, !srcloc !153
  unreachable

if.end137:                                        ; preds = %if.else125.if.end137_crit_edge, %if.then122.critedge.if.end137_crit_edge
  %storemerge = phi i64 [ 2, %if.then122.critedge.if.end137_crit_edge ], [ 1, %if.else125.if.end137_crit_edge ]
  %44 = ptrtoint ptr %flags_ret to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %storemerge, ptr %flags_ret, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end137, %do.end107, %if.then38, %do.body, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.then7 ], [ 0, %if.end137 ], [ -5, %do.end107 ], [ %call3, %entry.cleanup_crit_edge ], [ -2, %if.then38 ], [ -2, %do.body ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_extent_root(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_previous_extent_item(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tree_backref_for_extent(ptr nocapture noundef %ptr, ptr noundef %eb, ptr nocapture noundef readonly %key, ptr noundef %ei, i32 noundef %item_size, ptr nocapture noundef writeonly %out_root, ptr nocapture noundef writeonly %out_level) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %.pre.i = ptrtoint ptr %ei to i32
  %.pre110.i = add i32 %.pre.i, %item_size
  %type.i = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %add.ptr.i = getelementptr %struct.btrfs_extent_item, ptr %ei, i32 1
  %add.ptr30.i = getelementptr %struct.btrfs_tree_block_info, ptr %add.ptr.i, i32 1
  br label %while.cond

while.condthread-pre-split:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %ptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.condthread-pre-split, %while.cond.preheader
  %3 = phi i32 [ %.pr, %while.condthread-pre-split ], [ %1, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.cond.if.end39.i_crit_edge

while.cond.if.end39.i_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

if.then.i:                                        ; preds = %while.cond
  %call.i.i = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %ei, i32 noundef 16) #13
  %and.i = and i64 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool1.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end34.i_crit_edge, label %if.then2.i

if.then.i.if.end34.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then2.i:                                       ; preds = %if.then.i
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %5, label %do.end.i [
    i8 -87, label %if.then2.i.if.end34.i_crit_edge
    i8 -88, label %if.then2.i.if.end.i_crit_edge
  ], !prof !154

if.then2.i.if.end.i_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then2.i.if.end34.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1844, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then2.i.if.end.i_crit_edge
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end.i, %if.then2.i.if.end34.i_crit_edge, %if.then.i.if.end34.i_crit_edge
  %add.ptr.sink.i = phi ptr [ %add.ptr30.i, %if.end.i ], [ %add.ptr.i, %if.then2.i.if.end34.i_crit_edge ], [ %add.ptr.i, %if.then.i.if.end34.i_crit_edge ]
  %7 = ptrtoint ptr %add.ptr.sink.i to i32
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre110.i, i32 %7)
  %cmp35.not.i = icmp ugt i32 %.pre110.i, %7
  br i1 %cmp35.not.i, label %if.end34.i.if.end39.i_crit_edge, label %if.end34.i.cleanup_crit_edge

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34.i.if.end39.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end34.i.if.end39.i_crit_edge, %while.cond.if.end39.i_crit_edge
  %9 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ptr, align 4
  %11 = inttoptr i32 %10 to ptr
  %call41.i = tail call i32 @btrfs_get_extent_inline_ref_type(ptr noundef %eb, ptr noundef %11, i32 noundef 3) #13
  %12 = zext i32 %call41.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call41.i, label %if.end7.i.i [
    i32 0, label %if.end39.i.cleanup_crit_edge
    i32 176, label %if.end39.i.btrfs_extent_inline_ref_size.exit.i_crit_edge
    i32 182, label %if.end39.i.btrfs_extent_inline_ref_size.exit.i_crit_edge49
    i32 184, label %if.then3.i.i
    i32 178, label %if.then6.i.i
  ]

if.end39.i.btrfs_extent_inline_ref_size.exit.i_crit_edge49: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_extent_inline_ref_size.exit.i

if.end39.i.btrfs_extent_inline_ref_size.exit.i_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_extent_inline_ref_size.exit.i

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.i.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_extent_inline_ref_size.exit.i

if.then6.i.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_extent_inline_ref_size.exit.i

if.end7.i.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_extent_inline_ref_size.exit.i

btrfs_extent_inline_ref_size.exit.i:              ; preds = %if.end7.i.i, %if.then6.i.i, %if.then3.i.i, %if.end39.i.btrfs_extent_inline_ref_size.exit.i_crit_edge, %if.end39.i.btrfs_extent_inline_ref_size.exit.i_crit_edge49
  %retval.0.i.i = phi i32 [ 13, %if.then3.i.i ], [ 29, %if.then6.i.i ], [ 0, %if.end7.i.i ], [ 9, %if.end39.i.btrfs_extent_inline_ref_size.exit.i_crit_edge ], [ 9, %if.end39.i.btrfs_extent_inline_ref_size.exit.i_crit_edge49 ]
  %13 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ptr, align 4
  %add47.i = add i32 %14, %retval.0.i.i
  store i32 %add47.i, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add47.i, i32 %.pre110.i)
  %cmp49.i = icmp ugt i32 %add47.i, %.pre110.i
  br i1 %cmp49.i, label %do.end66.i, label %btrfs_extent_inline_ref_size.exit.i.get_extent_inline_ref.exit_crit_edge, !prof !139

btrfs_extent_inline_ref_size.exit.i.get_extent_inline_ref.exit_crit_edge: ; preds = %btrfs_extent_inline_ref_size.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_extent_inline_ref.exit

do.end66.i:                                       ; preds = %btrfs_extent_inline_ref_size.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1865, i32 noundef 9, ptr noundef null) #13
  br label %get_extent_inline_ref.exit

get_extent_inline_ref.exit:                       ; preds = %do.end66.i, %btrfs_extent_inline_ref_size.exit.i.get_extent_inline_ref.exit_crit_edge
  %15 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %.pre110.i)
  %cmp80.i = icmp eq i32 %16, %.pre110.i
  %17 = zext i32 %call41.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call41.i, label %if.end7 [
    i32 176, label %get_extent_inline_ref.exit.while.end_crit_edge
    i32 182, label %get_extent_inline_ref.exit.while.end_crit_edge50
  ]

get_extent_inline_ref.exit.while.end_crit_edge50: ; preds = %get_extent_inline_ref.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

get_extent_inline_ref.exit.while.end_crit_edge:   ; preds = %get_extent_inline_ref.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end7:                                          ; preds = %get_extent_inline_ref.exit
  br i1 %cmp80.i, label %if.end7.cleanup_crit_edge, label %while.condthread-pre-split

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.end:                                        ; preds = %get_extent_inline_ref.exit.while.end_crit_edge, %get_extent_inline_ref.exit.while.end_crit_edge50
  %18 = inttoptr i32 %10 to ptr
  %call.i = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %18, i32 noundef 1) #13
  %19 = ptrtoint ptr %out_root to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i, ptr %out_root, align 8
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type.i, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %21, label %cond.false [
    i8 -88, label %if.then15
    i8 -87, label %cond.end
  ], !prof !154

if.then15:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i42 = tail call zeroext i8 @btrfs_get_8(ptr noundef %eb, ptr noundef %add.ptr.i, i32 noundef 17) #13
  br label %if.end23

cond.false:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1913) #16
  unreachable

cond.end:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %offset = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %offset, align 1
  %conv22 = trunc i64 %24 to i8
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %if.then15
  %storemerge = phi i8 [ %conv22, %cond.end ], [ %call.i42, %if.then15 ]
  %25 = ptrtoint ptr %out_level to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %storemerge, ptr %out_level, align 1
  br i1 %cmp80.i, label %if.then26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end23.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end23.cleanup_crit_edge ], [ -2, %if.end34.i.cleanup_crit_edge ], [ -117, %if.end39.i.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, ptr noundef %file, i32 noundef %line) unnamed_addr #6 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %expr, ptr noundef %file, i32 noundef %line) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #13, !srcloc !155
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iterate_extent_inodes(ptr noundef %fs_info, i64 noundef %extent_item_objectid, i64 noundef %extent_item_pos, i32 noundef %search_commit_root, ptr nocapture noundef readonly %iterate, ptr noundef %ctx, i1 noundef zeroext %ignore_offset) local_unnamed_addr #2 align 64 {
entry:
  %uiter.i = alloca %struct.ulist_iterator, align 4
  %extent_item_pos.addr = alloca i64, align 8
  %refs = alloca ptr, align 4
  %roots = alloca ptr, align 4
  %seq_elem = alloca %struct.btrfs_seq_list, align 8
  %ref_uiter = alloca %struct.ulist_iterator, align 4
  %root_uiter = alloca %struct.ulist_iterator, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %extent_item_pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %extent_item_pos, ptr %extent_item_pos.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %refs) #13
  %1 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %refs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %roots) #13
  %2 = ptrtoint ptr %roots to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %roots, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %seq_elem) #13
  %3 = getelementptr inbounds %struct.list_head, ptr %seq_elem, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_seq_list, ptr %seq_elem, i32 0, i32 1
  %5 = ptrtoint ptr %seq_elem to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %seq_elem, ptr %seq_elem, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %seq_elem, ptr %3, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref_uiter) #13
  %8 = ptrtoint ptr %ref_uiter to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %ref_uiter, align 4, !annotation !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_uiter) #13
  %9 = ptrtoint ptr %root_uiter to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %root_uiter, align 4, !annotation !150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iterate_extent_inodes.__UNIQUE_ID_ddebug931, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iterate_extent_inodes, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.11, i64 noundef %extent_item_objectid) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %search_commit_root)
  %tobool6.not = icmp eq i32 %search_commit_root, 0
  br i1 %tobool6.not, label %if.then7, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then7:                                         ; preds = %do.end
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 2
  %10 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tree_root, align 4
  %call8 = call ptr @btrfs_attach_transaction(ptr noundef %11) #13
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.then7
  %12 = ptrtoint ptr %call8 to i32
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %12, label %if.then10.cleanup_crit_edge [
    i32 -2, label %if.then10.if.else_crit_edge
    i32 -30, label %if.then10.if.else_crit_edge139
  ]

if.then10.if.else_crit_edge139:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then10.if.else_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %if.then7
  %tobool19.not = icmp eq ptr %call8, null
  br i1 %tobool19.not, label %if.end18.if.else_crit_edge, label %if.then20

if.end18.if.else_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = call i64 @btrfs_get_tree_mod_seq(ptr noundef %fs_info, ptr noundef nonnull %seq_elem) #13
  br label %if.end22

if.else:                                          ; preds = %if.end18.if.else_crit_edge, %if.then10.if.else_crit_edge, %if.then10.if.else_crit_edge139, %do.end.if.else_crit_edge
  %commit_root_sem = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 54
  call void @down_read(ptr noundef %commit_root_sem) #13
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then20
  %tobool19.not121 = phi i1 [ true, %if.else ], [ false, %if.then20 ]
  %trans.0117 = phi ptr [ null, %if.else ], [ %call8, %if.then20 ]
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %4, align 8
  %call25 = call i32 @btrfs_find_all_leafs(ptr noundef %trans.0117, ptr noundef %fs_info, i64 noundef %extent_item_objectid, i64 noundef %15, ptr noundef nonnull %refs, ptr noundef nonnull %extent_item_pos.addr, i1 noundef zeroext %ignore_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end28:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %ref_uiter to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ref_uiter, align 4
  %17 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %refs, align 4
  %call30133 = call ptr @ulist_next(ptr noundef %18, ptr noundef nonnull %ref_uiter) #13
  %tobool31.not134 = icmp eq ptr %call30133, null
  br i1 %tobool31.not134, label %if.end28.while.end67_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  br label %while.body

if.end28.while.end67_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end67

while.body:                                       ; preds = %while.end.while.body_crit_edge, %if.end28.while.body_crit_edge
  %call30135 = phi ptr [ %call30, %while.end.while.body_crit_edge ], [ %call30133, %if.end28.while.body_crit_edge ]
  %19 = ptrtoint ptr %call30135 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %call30135, align 8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %4, align 8
  %call34 = call fastcc i32 @btrfs_find_all_roots_safe(ptr noundef %trans.0117, ptr noundef %fs_info, i64 noundef %20, i64 noundef %22, ptr noundef nonnull %roots, i1 noundef zeroext %ignore_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %while.body.while.end67_crit_edge

while.body.while.end67_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end67

if.end37:                                         ; preds = %while.body
  %23 = ptrtoint ptr %root_uiter to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %root_uiter, align 4
  %24 = ptrtoint ptr %roots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %roots, align 4
  %aux = getelementptr inbounds %struct.ulist_node, ptr %call30135, i32 0, i32 1
  br label %land.rhs41

land.rhs41:                                       ; preds = %iterate_leaf_refs.exit.land.rhs41_crit_edge, %if.end37
  %call42 = call ptr @ulist_next(ptr noundef %25, ptr noundef nonnull %root_uiter) #13
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %while.end, label %do.body46

do.body46:                                        ; preds = %land.rhs41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iterate_extent_inodes.__UNIQUE_ID_ddebug932, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iterate_extent_inodes, %if.then58)) #13
          to label %do.end63 [label %if.then58], !srcloc !151

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %call42 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %call42, align 8
  %28 = ptrtoint ptr %call30135 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %call30135, align 8
  %30 = ptrtoint ptr %aux to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %aux, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.13, i64 noundef %27, i64 noundef %29, i64 noundef %31) #17
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %do.body46
  %32 = ptrtoint ptr %aux to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %aux, align 8
  %conv = trunc i64 %33 to i32
  %34 = ptrtoint ptr %call42 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %call42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not41.i = icmp eq i32 %conv, 0
  br i1 %tobool.not41.i, label %do.end63.iterate_leaf_refs.exit_crit_edge, label %do.body.i.preheader

do.end63.iterate_leaf_refs.exit_crit_edge:        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %iterate_leaf_refs.exit

do.body.i.preheader:                              ; preds = %do.end63
  %36 = inttoptr i32 %conv to ptr
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %do.body.i.preheader
  %eie.042.i = phi ptr [ %46, %for.inc.i.do.body.i_crit_edge ], [ %36, %do.body.i.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iterate_leaf_refs.__UNIQUE_ID_ddebug929, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iterate_extent_inodes, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !151

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %eie.042.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %eie.042.i, align 8
  %offset.i = getelementptr inbounds %struct.extent_inode_elem, ptr %eie.042.i, i32 0, i32 1
  %39 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %offset.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.43, i64 noundef %extent_item_objectid, i64 noundef %38, i64 noundef %40, i64 noundef %35) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %41 = ptrtoint ptr %eie.042.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %eie.042.i, align 8
  %offset5.i = getelementptr inbounds %struct.extent_inode_elem, ptr %eie.042.i, i32 0, i32 1
  %43 = ptrtoint ptr %offset5.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %offset5.i, align 8
  %call6.i = call i32 %iterate(i64 noundef %42, i64 noundef %44, i64 noundef %35, ptr noundef %ctx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.inc.i, label %do.body9.i

do.body9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iterate_leaf_refs.__UNIQUE_ID_ddebug930, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iterate_extent_inodes, %iterate_leaf_refs.exit.thread)) #13
          to label %iterate_leaf_refs.exit [label %iterate_leaf_refs.exit.thread], !srcloc !151

iterate_leaf_refs.exit.thread:                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.45, i64 noundef %extent_item_objectid, i32 noundef %call6.i) #17
  br label %while.end.thread

for.inc.i:                                        ; preds = %do.end.i
  %next.i = getelementptr inbounds %struct.extent_inode_elem, ptr %eie.042.i, i32 0, i32 2
  %45 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %next.i, align 8
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %for.inc.i.iterate_leaf_refs.exit_crit_edge, label %for.inc.i.do.body.i_crit_edge

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.inc.i.iterate_leaf_refs.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iterate_leaf_refs.exit

iterate_leaf_refs.exit:                           ; preds = %for.inc.i.iterate_leaf_refs.exit_crit_edge, %do.body9.i, %do.end63.iterate_leaf_refs.exit_crit_edge
  %ret.1.i = phi i32 [ %call6.i, %do.body9.i ], [ 0, %do.end63.iterate_leaf_refs.exit_crit_edge ], [ 0, %for.inc.i.iterate_leaf_refs.exit_crit_edge ]
  %tobool40.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool40.not, label %iterate_leaf_refs.exit.land.rhs41_crit_edge, label %iterate_leaf_refs.exit.while.end.thread_crit_edge

iterate_leaf_refs.exit.while.end.thread_crit_edge: ; preds = %iterate_leaf_refs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.thread

iterate_leaf_refs.exit.land.rhs41_crit_edge:      ; preds = %iterate_leaf_refs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs41

while.end.thread:                                 ; preds = %iterate_leaf_refs.exit.while.end.thread_crit_edge, %iterate_leaf_refs.exit.thread
  %ret.1.lcssa.ph = phi i32 [ %call6.i, %iterate_leaf_refs.exit.thread ], [ %ret.1.i, %iterate_leaf_refs.exit.while.end.thread_crit_edge ]
  %47 = ptrtoint ptr %roots to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %roots, align 4
  call void @ulist_free(ptr noundef %48) #13
  br label %while.end67

while.end:                                        ; preds = %land.rhs41
  %49 = ptrtoint ptr %roots to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %roots, align 4
  call void @ulist_free(ptr noundef %50) #13
  %call30 = call ptr @ulist_next(ptr noundef %18, ptr noundef nonnull %ref_uiter) #13
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %while.end.while.end67_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end.while.end67_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end67

while.end67:                                      ; preds = %while.end.while.end67_crit_edge, %while.end.thread, %while.body.while.end67_crit_edge, %if.end28.while.end67_crit_edge
  %ret.2 = phi i32 [ %ret.1.lcssa.ph, %while.end.thread ], [ 0, %if.end28.while.end67_crit_edge ], [ %call34, %while.body.while.end67_crit_edge ], [ 0, %while.end.while.end67_crit_edge ]
  %51 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %refs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uiter.i) #13
  %53 = ptrtoint ptr %uiter.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %uiter.i, align 4
  %call8.i = call ptr @ulist_next(ptr noundef %52, ptr noundef nonnull %uiter.i) #13
  %tobool.not9.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not9.i, label %while.end67.free_leaf_list.exit_crit_edge, label %while.end67.while.body.i_crit_edge

while.end67.while.body.i_crit_edge:               ; preds = %while.end67
  br label %while.body.i

while.end67.free_leaf_list.exit_crit_edge:        ; preds = %while.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_leaf_list.exit

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.end67.while.body.i_crit_edge
  %call10.i = phi ptr [ %call.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call8.i, %while.end67.while.body.i_crit_edge ]
  %aux.i = getelementptr inbounds %struct.ulist_node, ptr %call10.i, i32 0, i32 1
  %54 = ptrtoint ptr %aux.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %aux.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %tobool1.not.i = icmp eq i64 %55, 0
  br i1 %tobool1.not.i, label %while.body.i.while.cond.backedge.i_crit_edge, label %unode_aux_to_inode_list.exit.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.i

unode_aux_to_inode_list.exit.i:                   ; preds = %while.body.i
  %conv.i.i = trunc i64 %55 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not3.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not3.i.i, label %unode_aux_to_inode_list.exit.i.free_inode_elem_list.exit.i_crit_edge, label %for.body.i.preheader.i

unode_aux_to_inode_list.exit.i.free_inode_elem_list.exit.i_crit_edge: ; preds = %unode_aux_to_inode_list.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_inode_elem_list.exit.i

for.body.i.preheader.i:                           ; preds = %unode_aux_to_inode_list.exit.i
  %56 = inttoptr i32 %conv.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %eie.addr.04.i.i = phi ptr [ %58, %for.body.i.i.for.body.i.i_crit_edge ], [ %56, %for.body.i.preheader.i ]
  %next.i.i = getelementptr inbounds %struct.extent_inode_elem, ptr %eie.addr.04.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %next.i.i, align 8
  call void @kfree(ptr noundef nonnull %eie.addr.04.i.i) #13
  %tobool.not.i7.i = icmp eq ptr %58, null
  br i1 %tobool.not.i7.i, label %for.body.i.i.free_inode_elem_list.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.free_inode_elem_list.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_inode_elem_list.exit.i

free_inode_elem_list.exit.i:                      ; preds = %for.body.i.i.free_inode_elem_list.exit.i_crit_edge, %unode_aux_to_inode_list.exit.i.free_inode_elem_list.exit.i_crit_edge
  %59 = ptrtoint ptr %aux.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %aux.i, align 8
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %free_inode_elem_list.exit.i, %while.body.i.while.cond.backedge.i_crit_edge
  %call.i = call ptr @ulist_next(ptr noundef %52, ptr noundef nonnull %uiter.i) #13
  %tobool.not.i113 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i113, label %while.cond.backedge.i.free_leaf_list.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.backedge.i.free_leaf_list.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_leaf_list.exit

free_leaf_list.exit:                              ; preds = %while.cond.backedge.i.free_leaf_list.exit_crit_edge, %while.end67.free_leaf_list.exit_crit_edge
  call void @ulist_free(ptr noundef %52) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uiter.i) #13
  br label %out

out:                                              ; preds = %free_leaf_list.exit, %if.end22.out_crit_edge
  %ret.3 = phi i32 [ %call25, %if.end22.out_crit_edge ], [ %ret.2, %free_leaf_list.exit ]
  br i1 %tobool19.not121, label %if.else71, label %if.then69

if.then69:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void @btrfs_put_tree_mod_seq(ptr noundef %fs_info, ptr noundef nonnull %seq_elem) #13
  %call70 = call i32 @btrfs_end_transaction(ptr noundef nonnull %trans.0117) #13
  br label %cleanup

if.else71:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %commit_root_sem72 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 54
  call void @up_read(ptr noundef %commit_root_sem72) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else71, %if.then69, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %if.else71 ], [ %ret.3, %if.then69 ], [ %12, %if.then10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_uiter) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref_uiter) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %seq_elem) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %roots) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refs) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_attach_transaction(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulist_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iterate_inodes_from_logical(i64 noundef %logical, ptr noundef %fs_info, ptr noundef %path, ptr nocapture noundef readonly %iterate, ptr noundef %ctx, i1 noundef zeroext %ignore_offset) local_unnamed_addr #2 align 64 {
entry:
  %flags = alloca i64, align 8
  %found_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flags) #13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %flags, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %found_key) #13
  %search_commit_root1 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 5
  %1 = call ptr @memset(ptr %found_key, i32 255, i32 17)
  %2 = ptrtoint ptr %search_commit_root1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %search_commit_root1, align 2
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call = call i32 @extent_from_logical(ptr noundef %fs_info, i64 noundef %logical, ptr noundef %path, ptr noundef nonnull %found_key, ptr noundef nonnull %flags)
  call void @btrfs_release_path(ptr noundef %path) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %flags, align 8
  %and = and i64 %4, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %found_key to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %found_key, align 8
  %sub = sub i64 %logical, %6
  %call6 = call i32 @iterate_extent_inodes(ptr noundef %fs_info, i64 noundef %6, i64 noundef %sub, i32 noundef %bf.cast, ptr noundef %iterate, ptr noundef %ctx, i1 noundef zeroext %ignore_offset)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %found_key) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @paths_from_inode(i64 noundef %inum, ptr nocapture noundef readonly %ipath) local_unnamed_addr #2 align 64 {
entry:
  %offset.i.i = alloca i64, align 8
  %extref.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_root = getelementptr inbounds %struct.inode_fs_paths, ptr %ipath, i32 0, i32 1
  %0 = ptrtoint ptr %fs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_root, align 4
  %2 = ptrtoint ptr %ipath to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipath, align 4
  %call.i = tail call fastcc i32 @iterate_inode_refs(i64 noundef %inum, ptr noundef %1, ptr noundef %3, ptr noundef %ipath) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call.i, label %entry.iterate_irefs.exit_crit_edge [
    i32 -2, label %entry.if.end2.i_crit_edge
    i32 0, label %entry.if.end2.i_crit_edge9
  ]

entry.if.end2.i_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2.i

entry.if.end2.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2.i

entry.iterate_irefs.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %iterate_irefs.exit

if.end2.i:                                        ; preds = %entry.if.end2.i_crit_edge, %entry.if.end2.i_crit_edge9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset.i.i) #13
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %offset.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extref.i.i) #13
  %6 = ptrtoint ptr %extref.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %extref.i.i, align 4, !annotation !150
  %call17.i.i = call i32 @btrfs_find_one_extref(ptr noundef %1, i64 noundef %inum, i64 noundef 0, ptr noundef %3, ptr noundef nonnull %extref.i.i, ptr noundef nonnull %offset.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %cmp18.i.i = icmp slt i32 %call17.i.i, 0
  br i1 %cmp18.i.i, label %if.end2.i.iterate_inode_extrefs.exit.i_crit_edge, label %if.end.lr.ph.i.i

if.end2.i.iterate_inode_extrefs.exit.i_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iterate_inode_extrefs.exit.i

if.end.lr.ph.i.i:                                 ; preds = %if.end2.i
  %slots.i.i = getelementptr inbounds %struct.btrfs_path, ptr %3, i32 0, i32 1
  %fspath1.i.i.i = getelementptr inbounds %struct.inode_fs_paths, ptr %ipath, i32 0, i32 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i.if.end.i.i_crit_edge, %if.end.lr.ph.i.i
  %call20.i.i = phi i32 [ %call17.i.i, %if.end.lr.ph.i.i ], [ %call.i.i, %while.end.i.i.if.end.i.i_crit_edge ]
  %found.019.i.i = phi i32 [ 0, %if.end.lr.ph.i.i ], [ %inc.i.i, %while.end.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.019.i.i)
  %tobool2.not.i.i = icmp eq i32 %found.019.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 -2, i32 0
  br label %iterate_inode_extrefs.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %inc.i.i = add i32 %found.019.i.i, 1
  %7 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slots.i.i, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call5.i.i = call ptr @btrfs_clone_extent_buffer(ptr noundef %10) #13
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %if.end3.i.i.iterate_inode_extrefs.exit.i_crit_edge, label %if.end8.i.i

if.end3.i.i.iterate_inode_extrefs.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iterate_inode_extrefs.exit.i

if.end8.i.i:                                      ; preds = %if.end3.i.i
  call void @btrfs_release_path(ptr noundef %3) #13
  %mul.i.i.i.i.i = mul i32 %8, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %11 = inttoptr i32 %add.i.i.i.i.i to ptr
  %call.i.i.i.i = call i32 @btrfs_get_32(ptr noundef nonnull %call5.i.i, ptr noundef %11, i32 noundef 21) #13
  %call.i.i3.i.i = call i32 @btrfs_get_32(ptr noundef nonnull %call5.i.i, ptr noundef %11, i32 noundef 17) #13
  %add.i.i = add i32 %call.i.i3.i.i, 101
  %12 = ptrtoint ptr %extref.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %extref.promoted.i.i = load ptr, ptr %extref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp1213.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp1213.not.i.i, label %if.end8.i.i.while.end.i.i_crit_edge, label %if.end8.i.i.while.body13.i.i_crit_edge

if.end8.i.i.while.body13.i.i_crit_edge:           ; preds = %if.end8.i.i
  br label %while.body13.i.i

if.end8.i.i.while.end.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.body13.i.i:                                 ; preds = %cleanup.i.i.while.body13.i.i_crit_edge, %if.end8.i.i.while.body13.i.i_crit_edge
  %cur_offset.014.i.i = phi i32 [ %add24.i.i, %cleanup.i.i.while.body13.i.i_crit_edge ], [ 0, %if.end8.i.i.while.body13.i.i_crit_edge ]
  %add14.i.i = add i32 %add.i.i, %cur_offset.014.i.i
  %13 = inttoptr i32 %add14.i.i to ptr
  %call.i.i.i = call i64 @btrfs_get_64(ptr noundef nonnull %call5.i.i, ptr noundef %13, i32 noundef 0) #13
  %call.i4.i.i = call zeroext i16 @btrfs_get_16(ptr noundef nonnull %call5.i.i, ptr noundef %13, i32 noundef 16) #13
  %conv.i.i = zext i16 %call.i4.i.i to i32
  %name.i.i = getelementptr inbounds %struct.btrfs_inode_extref, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %name.i.i to i32
  %15 = ptrtoint ptr %fspath1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fspath1.i.i.i, align 4
  %elem_cnt.i.i.i = getelementptr inbounds %struct.btrfs_data_container, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %elem_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %elem_cnt.i.i.i, align 8
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 8
  %21 = call i32 @llvm.usub.sat.i32(i32 %20, i32 4) #13
  %val.i.i.i = getelementptr inbounds %struct.btrfs_data_container, ptr %16, i32 0, i32 4
  %add.i.i.i = shl i32 %18, 2
  %mul.i.i.i = add i32 %add.i.i.i, 4
  %add.ptr.i.i.i = getelementptr i8, ptr %val.i.i.i, i32 %mul.i.i.i
  %22 = ptrtoint ptr %fs_root to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fs_root, align 4
  %24 = ptrtoint ptr %ipath to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipath, align 4
  %call.i5.i.i = call ptr @btrfs_ref_to_path(ptr noundef %23, ptr noundef %25, i32 noundef %conv.i.i, i32 noundef %14, ptr noundef nonnull %call5.i.i, i64 noundef %call.i.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef %21) #13
  %cmp.i.i.i.i = icmp ugt ptr %call.i5.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %while.body13.i.i.while.end.i.i.loopexit_crit_edge, label %if.end.i.i.i

while.body13.i.i.while.end.i.i.loopexit_crit_edge: ; preds = %while.body13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i.loopexit

if.end.i.i.i:                                     ; preds = %while.body13.i.i
  %cmp9.i.i.i = icmp ugt ptr %call.i5.i.i, %add.ptr.i.i.i
  br i1 %cmp9.i.i.i, label %if.then10.i.i.i, label %if.else.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %call.i5.i.i to i32
  %conv.i.i.i = zext i32 %26 to i64
  %27 = ptrtoint ptr %fspath1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fspath1.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.btrfs_data_container, ptr %28, i32 0, i32 4, i32 %18
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv.i.i.i, ptr %arrayidx.i.i.i, align 8
  %30 = load ptr, ptr %fspath1.i.i.i, align 4
  %elem_cnt14.i.i.i = getelementptr inbounds %struct.btrfs_data_container, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %elem_cnt14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %elem_cnt14.i.i.i, align 8
  %inc.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i, ptr %elem_cnt14.i.i.i, align 8
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %26, %sub.ptr.rhs.cast.i.i.i
  br label %cleanup.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %fspath1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fspath1.i.i.i, align 4
  %elem_missed.i.i.i = getelementptr inbounds %struct.btrfs_data_container, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %elem_missed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %elem_missed.i.i.i, align 4
  %inc18.i.i.i = add i32 %36, 1
  store i32 %inc18.i.i.i, ptr %elem_missed.i.i.i, align 4
  %sub.ptr.lhs.cast19.i.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast20.i.i.i = ptrtoint ptr %call.i5.i.i to i32
  %sub.ptr.sub21.i.i.i = sub i32 %sub.ptr.lhs.cast19.i.i.i, %sub.ptr.rhs.cast20.i.i.i
  %37 = load ptr, ptr %fspath1.i.i.i, align 4
  %bytes_missing.i.i.i = getelementptr inbounds %struct.btrfs_data_container, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %bytes_missing.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bytes_missing.i.i.i, align 4
  %add23.i.i.i = add i32 %sub.ptr.sub21.i.i.i, %39
  store i32 %add23.i.i.i, ptr %bytes_missing.i.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.else.i.i.i, %if.then10.i.i.i
  %sub.ptr.sub.i.sink.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %if.then10.i.i.i ], [ 0, %if.else.i.i.i ]
  %40 = ptrtoint ptr %fspath1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fspath1.i.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.ptr.sub.i.sink.i.i, ptr %41, align 8
  %call.i6.i.i = call zeroext i16 @btrfs_get_16(ptr noundef nonnull %call5.i.i, ptr noundef %13, i32 noundef 16) #13
  %conv22.i.i = zext i16 %call.i6.i.i to i32
  %add23.i.i = add i32 %cur_offset.014.i.i, 18
  %add24.i.i = add i32 %add23.i.i, %conv22.i.i
  %cmp12.i.i = icmp ult i32 %add24.i.i, %call.i.i.i.i
  br i1 %cmp12.i.i, label %cleanup.i.i.while.body13.i.i_crit_edge, label %cleanup.i.i.while.end.i.i.loopexit_crit_edge

cleanup.i.i.while.end.i.i.loopexit_crit_edge:     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i.loopexit

cleanup.i.i.while.body13.i.i_crit_edge:           ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body13.i.i

while.end.i.i.loopexit:                           ; preds = %cleanup.i.i.while.end.i.i.loopexit_crit_edge, %while.body13.i.i.while.end.i.i.loopexit_crit_edge
  %43 = inttoptr i32 %add14.i.i to ptr
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.i.i.loopexit, %if.end8.i.i.while.end.i.i_crit_edge
  %44 = phi ptr [ %extref.promoted.i.i, %if.end8.i.i.while.end.i.i_crit_edge ], [ %43, %while.end.i.i.loopexit ]
  %45 = ptrtoint ptr %extref.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %extref.i.i, align 4
  call void @free_extent_buffer(ptr noundef nonnull %call5.i.i) #13
  %46 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %offset.i.i, align 8
  %inc25.i.i = add i64 %47, 1
  store i64 %inc25.i.i, ptr %offset.i.i, align 8
  %call.i.i = call i32 @btrfs_find_one_extref(ptr noundef %1, i64 noundef %inum, i64 noundef %inc25.i.i, ptr noundef %3, ptr noundef nonnull %extref.i.i, ptr noundef nonnull %offset.i.i) #13
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %while.end.i.i.iterate_inode_extrefs.exit.i_crit_edge, label %while.end.i.i.if.end.i.i_crit_edge

while.end.i.i.if.end.i.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

while.end.i.i.iterate_inode_extrefs.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iterate_inode_extrefs.exit.i

iterate_inode_extrefs.exit.i:                     ; preds = %while.end.i.i.iterate_inode_extrefs.exit.i_crit_edge, %if.end3.i.i.iterate_inode_extrefs.exit.i_crit_edge, %if.then1.i.i, %if.end2.i.iterate_inode_extrefs.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %cond.i.i, %if.then1.i.i ], [ %call17.i.i, %if.end2.i.iterate_inode_extrefs.exit.i_crit_edge ], [ %call.i.i, %while.end.i.i.iterate_inode_extrefs.exit.i_crit_edge ], [ -12, %if.end3.i.i.iterate_inode_extrefs.exit.i_crit_edge ]
  call void @btrfs_release_path(ptr noundef %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extref.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %ret.0.i.i)
  %cmp4.i = icmp ne i32 %ret.0.i.i, -2
  %brmerge.i = select i1 %cmp4.i, i1 true, i1 %tobool.not.i
  %spec.select.i = select i1 %brmerge.i, i32 %ret.0.i.i, i32 0
  br label %iterate_irefs.exit

iterate_irefs.exit:                               ; preds = %iterate_inode_extrefs.exit.i, %entry.iterate_irefs.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.iterate_irefs.exit_crit_edge ], [ %spec.select.i, %iterate_inode_extrefs.exit.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @init_data_container(i32 noundef %total_bytes) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %total_bytes, i32 16)
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3264, i32 noundef -1) #18
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %total_bytes)
  %cmp2 = icmp ugt i32 %total_bytes, 15
  %sub4 = sub nuw nsw i32 16, %total_bytes
  %sub = add i32 %total_bytes, -16
  %storemerge = select i1 %cmp2, i32 %sub, i32 0
  %sub4.sink = select i1 %cmp2, i32 0, i32 %sub4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %storemerge, ptr %call.i, align 8
  %2 = getelementptr inbounds %struct.btrfs_data_container, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub4.sink, ptr %2, align 4
  %elem_cnt = getelementptr inbounds %struct.btrfs_data_container, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %elem_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %elem_cnt, align 8
  %elem_missed = getelementptr inbounds %struct.btrfs_data_container, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %elem_missed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %elem_missed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @init_ipath(i32 noundef %total_bytes, ptr noundef %fs_root, ptr noundef %path) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %total_bytes, i32 16) #13
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3264, i32 noundef -1) #18
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %init_data_container.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

init_data_container.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %total_bytes)
  %cmp2.i = icmp ugt i32 %total_bytes, 15
  %sub4.i = sub nuw nsw i32 16, %total_bytes
  %sub.i = add i32 %total_bytes, -16
  %storemerge.i = select i1 %cmp2.i, i32 %sub.i, i32 0
  %sub4.sink.i = select i1 %cmp2.i, i32 0, i32 %sub4.i
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %storemerge.i, ptr %call.i.i, align 8
  %2 = getelementptr inbounds %struct.btrfs_data_container, ptr %call.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub4.sink.i, ptr %2, align 4
  %elem_cnt.i = getelementptr inbounds %struct.btrfs_data_container, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %elem_cnt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %elem_cnt.i, align 8
  %elem_missed.i = getelementptr inbounds %struct.btrfs_data_container, ptr %call.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %elem_missed.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %elem_missed.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %init_data_container.exit.cleanup_crit_edge, label %if.end

init_data_container.exit.cleanup_crit_edge:       ; preds = %init_data_container.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %init_data_container.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 12) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %path, ptr %call7.i, align 8
  %fspath7 = getelementptr inbounds %struct.inode_fs_paths, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %fspath7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %fspath7, align 8
  %fs_root8 = getelementptr inbounds %struct.inode_fs_paths, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %fs_root8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fs_root, ptr %fs_root8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %init_data_container.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end6 ], [ inttoptr (i32 -12 to ptr), %if.then4 ], [ %call.i.i, %init_data_container.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_ipath(ptr noundef %ipath) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ipath, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fspath = getelementptr inbounds %struct.inode_fs_paths, ptr %ipath, i32 0, i32 2
  %0 = ptrtoint ptr %fspath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fspath, align 4
  tail call void @kvfree(ptr noundef %1) #13
  tail call void @kfree(ptr noundef nonnull %ipath) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_backref_iter_alloc(ptr noundef %fs_info, i32 noundef %gfp_flag) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp_flag, 256
  %and.i.i.i = and i32 %gfp_flag, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !140

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and6.i.i.i = and i32 %gfp_flag, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 48) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %call1 = tail call ptr @btrfs_alloc_path() #13
  %path = getelementptr inbounds %struct.btrfs_backref_iter, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %path, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %search_commit_root = getelementptr inbounds %struct.btrfs_path, ptr %call1, i32 0, i32 5
  %3 = ptrtoint ptr %search_commit_root to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %search_commit_root, align 2
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %search_commit_root, align 2
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 8
  %skip_locking = getelementptr inbounds %struct.btrfs_path, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %skip_locking to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load8 = load i8, ptr %skip_locking, align 2
  %bf.set10 = or i8 %bf.load8, 32
  store i8 %bf.set10, ptr %skip_locking, align 2
  %fs_info11 = getelementptr inbounds %struct.btrfs_backref_iter, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %fs_info11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fs_info, ptr %fs_info11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end5 ], [ null, %if.then4 ], [ null, %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_backref_iter_start(ptr nocapture noundef %iter, i64 noundef %bytenr) local_unnamed_addr #2 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 2
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %call = tail call ptr @btrfs_extent_root(ptr noundef %1, i64 noundef %bytenr) #13
  %path2 = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %path2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path2, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #13
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %bytenr, ptr %key, align 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -87, ptr %4, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 -1, ptr %5, align 1
  %9 = ptrtoint ptr %iter to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %bytenr, ptr %iter, align 8
  %call4 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call, ptr noundef nonnull %key, ptr noundef %3, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end.release_crit_edge, label %if.end7

if.end.release_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %release

if.end7:                                          ; preds = %if.end
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2358, i32 noundef 9, ptr noundef null) #13
  br label %release

if.end26:                                         ; preds = %if.end7
  %dec = add i32 %11, -1
  %12 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec, ptr %slots, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #13
  %15 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %dec, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %17 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %14, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #13
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %16, align 1
  %20 = call i64 @llvm.bswap.i64(i64 %19) #13
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %5, align 1
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %15, align 8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %4, align 8
  %25 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %disk_key.i, align 8
  %27 = call i64 @llvm.bswap.i64(i64 %26) #13
  %28 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #13
  %29 = and i8 %23, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %29)
  %switch = icmp eq i8 %29, -88
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %bytenr)
  %cmp40.not = icmp eq i64 %27, %bytenr
  %or.cond = select i1 %switch, i1 %cmp40.not, i1 false
  br i1 %or.cond, label %if.end43, label %if.end26.release_crit_edge

if.end26.release_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %release

if.end43:                                         ; preds = %if.end26
  %cur_key = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %cur_key, ptr %key, i32 17)
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %33 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %34, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %35 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %32, ptr noundef %35, i32 noundef 17) #13
  %add = add i32 %call.i.i, 101
  %item_ptr = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 4
  %36 = ptrtoint ptr %item_ptr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %item_ptr, align 4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %39 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %slots, align 4
  %mul.i.i.i179 = mul i32 %40, 25
  %add.i.i.i180 = add i32 %mul.i.i.i179, 101
  %41 = inttoptr i32 %add.i.i.i180 to ptr
  %call.i.i181 = call i32 @btrfs_get_32(ptr noundef %38, ptr noundef %41, i32 noundef 21) #13
  %add55 = add i32 %call.i.i181, %add
  %end_ptr = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 6
  %42 = ptrtoint ptr %end_ptr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add55, ptr %end_ptr, align 4
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %45 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %slots, align 4
  %mul.i.i.i182 = mul i32 %46, 25
  %add.i.i.i183 = add i32 %mul.i.i.i182, 101
  %47 = inttoptr i32 %add.i.i.i183 to ptr
  %call.i.i184 = call i32 @btrfs_get_32(ptr noundef %44, ptr noundef %47, i32 noundef 17) #13
  %add61 = add i32 %call.i.i184, 101
  %48 = inttoptr i32 %add61 to ptr
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %call.i = call i64 @btrfs_get_64(ptr noundef %50, ptr noundef %48, i32 noundef 16) #13
  %and = and i64 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool65.not = icmp eq i64 %and, 0
  br i1 %tobool65.not, label %if.end67, label %if.end43.release_crit_edge

if.end43.release_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %release

if.end67:                                         ; preds = %if.end43
  %51 = ptrtoint ptr %item_ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %item_ptr, align 4
  %add69 = add i32 %52, 24
  %cur_ptr = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 5
  %53 = ptrtoint ptr %cur_ptr to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add69, ptr %cur_ptr, align 8
  %54 = ptrtoint ptr %end_ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %end_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add69, i32 %55)
  %cmp72.not = icmp ult i32 %add69, %55
  br i1 %cmp72.not, label %if.end67.cleanup_crit_edge, label %if.then74

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then74:                                        ; preds = %if.end67
  %call75 = call fastcc i32 @btrfs_next_item(ptr noundef %call, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp sgt i32 %call75, 0
  br i1 %cmp76, label %if.then74.release_crit_edge, label %if.end79

if.then74.release_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %release

if.end79:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp80 = icmp slt i32 %call75, 0
  br i1 %cmp80, label %if.end79.release_crit_edge, label %if.end83

if.end79.release_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %release

if.end83:                                         ; preds = %if.end79
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %58 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %slots, align 4
  call fastcc void @btrfs_item_key_to_cpu(ptr noundef %57, ptr noundef %cur_key, i32 noundef %59)
  %60 = ptrtoint ptr %cur_key to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %cur_key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %bytenr)
  %cmp91.not = icmp eq i64 %61, %bytenr
  br i1 %cmp91.not, label %lor.lhs.false93, label %if.end83.release_crit_edge

if.end83.release_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %release

lor.lhs.false93:                                  ; preds = %if.end83
  %type95 = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %type95 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %type95, align 8
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %63, label %lor.lhs.false93.release_crit_edge [
    i8 -74, label %lor.lhs.false93.if.end106_crit_edge
    i8 -80, label %lor.lhs.false93.if.end106_crit_edge191
  ]

lor.lhs.false93.if.end106_crit_edge191:           ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

lor.lhs.false93.if.end106_crit_edge:              ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

lor.lhs.false93.release_crit_edge:                ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #15
  br label %release

if.end106:                                        ; preds = %lor.lhs.false93.if.end106_crit_edge, %lor.lhs.false93.if.end106_crit_edge191
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %67 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %slots, align 4
  %mul.i.i.i185 = mul i32 %68, 25
  %add.i.i.i186 = add i32 %mul.i.i.i185, 101
  %69 = inttoptr i32 %add.i.i.i186 to ptr
  %call.i.i187 = call i32 @btrfs_get_32(ptr noundef %66, ptr noundef %69, i32 noundef 17) #13
  %add112 = add i32 %call.i.i187, 101
  %70 = ptrtoint ptr %cur_ptr to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add112, ptr %cur_ptr, align 8
  %71 = ptrtoint ptr %item_ptr to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add112, ptr %item_ptr, align 4
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 4
  %74 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %slots, align 4
  %mul.i.i.i188 = mul i32 %75, 25
  %add.i.i.i189 = add i32 %mul.i.i.i188, 101
  %76 = inttoptr i32 %add.i.i.i189 to ptr
  %call.i.i190 = call i32 @btrfs_get_32(ptr noundef %73, ptr noundef %76, i32 noundef 21) #13
  %add122 = add i32 %call.i.i190, %add112
  %77 = ptrtoint ptr %end_ptr to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add122, ptr %end_ptr, align 4
  br label %cleanup

release:                                          ; preds = %lor.lhs.false93.release_crit_edge, %if.end83.release_crit_edge, %if.end79.release_crit_edge, %if.then74.release_crit_edge, %if.end43.release_crit_edge, %if.end26.release_crit_edge, %do.end, %if.end.release_crit_edge
  %ret.0 = phi i32 [ -117, %do.end ], [ %call75, %if.end79.release_crit_edge ], [ -117, %if.end.release_crit_edge ], [ -2, %if.end26.release_crit_edge ], [ -524, %if.end43.release_crit_edge ], [ -2, %if.then74.release_crit_edge ], [ -2, %lor.lhs.false93.release_crit_edge ], [ -2, %if.end83.release_crit_edge ]
  %78 = ptrtoint ptr %iter to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 0, ptr %iter, align 8
  %item_ptr.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 4
  %79 = ptrtoint ptr %item_ptr.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %item_ptr.i, align 4
  %cur_ptr.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 5
  %80 = ptrtoint ptr %cur_ptr.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %cur_ptr.i, align 8
  %end_ptr.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 6
  %81 = ptrtoint ptr %end_ptr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %end_ptr.i, align 4
  %82 = ptrtoint ptr %path2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %path2, align 8
  call void @btrfs_release_path(ptr noundef %83) #13
  %cur_key.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 3
  %84 = call ptr @memset(ptr %cur_key.i, i32 0, i32 17)
  br label %cleanup

cleanup:                                          ; preds = %release, %if.end106, %if.end67.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %release ], [ %call4, %entry.cleanup_crit_edge ], [ 0, %if.end106 ], [ 0, %if.end67.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_next_item(ptr noundef %root, ptr noundef %p) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slots.i, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %slots.i, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %5) #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %3, align 8
  %conv.i.i = trunc i64 %7 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %nritems.i.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %10)
  %cmp.not.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.not.i, label %entry.btrfs_next_old_item.exit_crit_edge, label %if.then.i

entry.btrfs_next_old_item.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_next_old_item.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = tail call i32 @btrfs_next_old_leaf(ptr noundef %root, ptr noundef %p, i64 noundef 0) #13
  br label %btrfs_next_old_item.exit

btrfs_next_old_item.exit:                         ; preds = %if.then.i, %entry.btrfs_next_old_item.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.then.i ], [ 0, %entry.btrfs_next_old_item.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_backref_iter_next(ptr noundef %iter) local_unnamed_addr #2 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %iter, null
  br i1 %tobool.not.i, label %entry.btrfs_backref_get_eb.exit_crit_edge, label %if.end.i

entry.btrfs_backref_get_eb.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_backref_get_eb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %path.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 1
  %0 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %btrfs_backref_get_eb.exit

btrfs_backref_get_eb.exit:                        ; preds = %if.end.i, %entry.btrfs_backref_get_eb.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.btrfs_backref_get_eb.exit_crit_edge ]
  %path1 = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 1
  %4 = ptrtoint ptr %path1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path1, align 8
  %type.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type.i, align 8
  %8 = and i8 %7, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %8)
  %switch.i = icmp eq i8 %8, -88
  br i1 %switch.i, label %if.then, label %btrfs_backref_get_eb.exit.if.end16_crit_edge

btrfs_backref_get_eb.exit.if.end16_crit_edge:     ; preds = %btrfs_backref_get_eb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then:                                          ; preds = %btrfs_backref_get_eb.exit
  %cur_ptr = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 5
  %9 = ptrtoint ptr %cur_ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_ptr, align 8
  %end_ptr = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 6
  %11 = ptrtoint ptr %end_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %cond.end, label %cond.false, !prof !140

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 2445) #16
  unreachable

cond.end:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %7)
  %cmp.i = icmp eq i8 %7, -88
  br i1 %cmp.i, label %land.lhs.true.i, label %cond.end.if.else_crit_edge

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true.i:                                  ; preds = %cond.end
  %item_ptr.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 4
  %13 = ptrtoint ptr %item_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %item_ptr.i, align 4
  %sub.i = sub i32 %10, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %cmp2.i = icmp eq i32 %sub.i, 24
  br i1 %cmp2.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.i.if.else_crit_edge, %cond.end.if.else_crit_edge
  %15 = inttoptr i32 %10 to ptr
  %call.i = tail call zeroext i8 @btrfs_get_8(ptr noundef %retval.0.i, ptr noundef %15, i32 noundef 0) #13
  %switch.tableidx = add i8 %call.i, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %16 = icmp ult i8 %switch.tableidx, 9
  br i1 %16, label %switch.lookup, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %17 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.btrfs_backref_iter_next, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.else.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %size.0 = phi i32 [ 18, %land.lhs.true.i.if.end_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.else.if.end_crit_edge ]
  %19 = ptrtoint ptr %cur_ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_ptr, align 8
  %add = add i32 %20, %size.0
  store i32 %add, ptr %cur_ptr, align 8
  %21 = ptrtoint ptr %end_ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %22)
  %cmp12 = icmp ult i32 %add, %22
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end.if.end16_crit_edge, %btrfs_backref_get_eb.exit.if.end16_crit_edge
  %fs_info = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 2
  %23 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fs_info, align 4
  %25 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %iter, align 8
  %call17 = tail call ptr @btrfs_extent_root(ptr noundef %24, i64 noundef %26) #13
  %27 = ptrtoint ptr %path1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %path1, align 8
  %slots.i.i = getelementptr inbounds %struct.btrfs_path, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %slots.i.i, align 4
  %inc.i.i = add i32 %30, 1
  store i32 %inc.i.i, ptr %slots.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %pages.i.i.i = getelementptr inbounds %struct.extent_buffer, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pages.i.i.i, align 4
  %call.i.i.i = tail call ptr @page_address(ptr noundef %34) #13
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %32, align 8
  %conv.i.i.i = trunc i64 %36 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 4095
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i.i.i
  %nritems.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %nritems.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %nritems.i.i.i, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %39)
  %cmp.not.i.i = icmp ult i32 %inc.i.i, %39
  br i1 %cmp.not.i.i, label %if.end16.if.end22_crit_edge, label %btrfs_next_item.exit

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

btrfs_next_item.exit:                             ; preds = %if.end16
  %call4.i.i = tail call i32 @btrfs_next_old_leaf(ptr noundef %call17, ptr noundef %28, i64 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool20.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool20.not, label %btrfs_next_item.exit.if.end22_crit_edge, label %btrfs_next_item.exit.cleanup_crit_edge

btrfs_next_item.exit.cleanup_crit_edge:           ; preds = %btrfs_next_item.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

btrfs_next_item.exit.if.end22_crit_edge:          ; preds = %btrfs_next_item.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end22:                                         ; preds = %btrfs_next_item.exit.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 4
  %cur_key = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 3
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %5, i32 0, i32 1
  %42 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #13
  %44 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %45 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %43, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %46 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %41, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #13
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %45, align 1
  %49 = call i64 @llvm.bswap.i64(i64 %48) #13
  %offset1.i.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %offset1.i.i, align 1
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %44, align 8
  %53 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %type.i, align 1
  %54 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %disk_key.i, align 8
  %56 = call i64 @llvm.bswap.i64(i64 %55) #13
  %57 = ptrtoint ptr %cur_key to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %cur_key, align 1
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #13
  %58 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %iter, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %59)
  %cmp26.not = icmp eq i64 %56, %59
  br i1 %cmp26.not, label %lor.lhs.false, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end22
  %60 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %type.i, align 8
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %61, label %lor.lhs.false.cleanup_crit_edge [
    i8 -80, label %lor.lhs.false.if.end39_crit_edge
    i8 -74, label %lor.lhs.false.if.end39_crit_edge99
  ]

lor.lhs.false.if.end39_crit_edge99:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge99
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 4
  %65 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %66, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %67 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %64, ptr noundef %67, i32 noundef 17) #13
  %add45 = add i32 %call.i.i, 101
  %item_ptr = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 4
  %68 = ptrtoint ptr %item_ptr to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add45, ptr %item_ptr, align 4
  %cur_ptr47 = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 5
  %69 = ptrtoint ptr %cur_ptr47 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add45, ptr %cur_ptr47, align 8
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %5, align 4
  %72 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %slots, align 4
  %mul.i.i.i93 = mul i32 %73, 25
  %add.i.i.i94 = add i32 %mul.i.i.i93, 101
  %74 = inttoptr i32 %add.i.i.i94 to ptr
  %call.i.i95 = call i32 @btrfs_get_32(ptr noundef %71, ptr noundef %74, i32 noundef 21) #13
  %add54 = add i32 %call.i.i95, %add45
  %end_ptr55 = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 6
  %75 = ptrtoint ptr %end_ptr55 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add54, ptr %end_ptr55, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %lor.lhs.false.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %btrfs_next_item.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ 0, %if.end.cleanup_crit_edge ], [ %call4.i.i, %btrfs_next_item.exit.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_backref_init_cache(ptr noundef %fs_info, ptr noundef %cache, i32 noundef %is_reloc) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cache, align 8
  %arrayidx = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %prev.i, align 4
  %arrayidx.1 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i.1 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx.1, ptr %prev.i.1, align 4
  %arrayidx.2 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i.2 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.2, ptr %prev.i.2, align 4
  %arrayidx.3 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i.3 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.3, ptr %prev.i.3, align 4
  %arrayidx.4 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx.4, ptr %arrayidx.4, align 4
  %prev.i.4 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.4, ptr %prev.i.4, align 4
  %arrayidx.5 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx.5, ptr %arrayidx.5, align 4
  %prev.i.5 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 5, i32 1
  %12 = ptrtoint ptr %prev.i.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.5, ptr %prev.i.5, align 4
  %arrayidx.6 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 6
  %13 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx.6, ptr %arrayidx.6, align 4
  %prev.i.6 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 6, i32 1
  %14 = ptrtoint ptr %prev.i.6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.6, ptr %prev.i.6, align 4
  %arrayidx.7 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 7
  %15 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %arrayidx.7, ptr %arrayidx.7, align 4
  %prev.i.7 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 7, i32 1
  %16 = ptrtoint ptr %prev.i.7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.7, ptr %prev.i.7, align 4
  %changed = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 4
  %17 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %changed, ptr %changed, align 4
  %prev.i13 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %changed, ptr %prev.i13, align 4
  %detached = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 5
  %19 = ptrtoint ptr %detached to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %detached, ptr %detached, align 4
  %prev.i14 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %detached, ptr %prev.i14, align 4
  %leaves = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 3
  %21 = ptrtoint ptr %leaves to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %leaves, ptr %leaves, align 4
  %prev.i15 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %leaves, ptr %prev.i15, align 4
  %pending_edge = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 9
  %23 = ptrtoint ptr %pending_edge to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %pending_edge, ptr %pending_edge, align 4
  %prev.i16 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pending_edge, ptr %prev.i16, align 4
  %useless_node = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 10
  %25 = ptrtoint ptr %useless_node to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %useless_node, ptr %useless_node, align 4
  %prev.i17 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %useless_node, ptr %prev.i17, align 4
  %fs_info1 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 11
  %27 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fs_info, ptr %fs_info1, align 8
  %is_reloc2 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 12
  %28 = ptrtoint ptr %is_reloc2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %is_reloc, ptr %is_reloc2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_backref_alloc_node(ptr nocapture noundef %cache, i64 noundef %bytenr, i32 noundef %level) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %level)
  %0 = icmp ult i32 %level, 8
  br i1 %0, label %cond.end, label %cond.false, !prof !140

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 2508) #16
  unreachable

cond.end:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3392, i32 noundef 80) #19
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %list = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %upper = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %upper to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %upper, ptr %upper, align 8
  %prev.i18 = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %upper, ptr %prev.i18, align 4
  %lower = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %lower to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %lower, ptr %lower, align 8
  %prev.i19 = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lower, ptr %prev.i19, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call7.i.i, align 8
  %nr_nodes = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 7
  %10 = ptrtoint ptr %nr_nodes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_nodes, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %nr_nodes, align 8
  %level5 = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i, i32 0, i32 8
  %12 = trunc i32 %level to i16
  %13 = ptrtoint ptr %level5 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %level5, align 8
  %bf.shl = shl nuw nsw i16 %12, 8
  %bf.clear = and i16 %bf.load, 255
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %level5, align 8
  %bytenr6 = getelementptr inbounds %struct.anon.84, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %bytenr6 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %bytenr, ptr %bytenr6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @btrfs_backref_alloc_edge(ptr nocapture noundef %cache) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 24) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %nr_edges = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 8
  %1 = ptrtoint ptr %nr_edges to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_edges, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %nr_edges, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_backref_cleanup_node(ptr noundef %cache, ptr noundef %node) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %lowest = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 8
  %0 = ptrtoint ptr %lowest to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %lowest, align 8
  %1 = and i16 %bf.load, 66
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %2 = icmp eq i16 %1, 0
  br i1 %2, label %do.body11, label %while.cond.preheader, !prof !139

while.cond.preheader:                             ; preds = %do.body
  %upper18 = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 4
  %3 = ptrtoint ptr %upper18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %upper18, align 4
  %cmp.i.not59 = icmp eq ptr %4, %upper18
  br i1 %cmp.i.not59, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %nr_edges.i = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 8
  %leaves = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 3
  %prev.i56 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 3, i32 1
  br label %while.body

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2551, 0\0A.popsection", ""() #13, !srcloc !156
  unreachable

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %while.body.lr.ph
  %5 = phi ptr [ %4, %while.body.lr.ph ], [ %36, %if.end34.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.btrfs_backref_edge, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %arrayidx26 = getelementptr [2 x %struct.list_head], ptr %5, i32 0, i32 1
  %call.i.i48 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx26) #13
  br i1 %call.i.i48, label %if.end.i.i51, label %list_del.exit.list_del.exit53_crit_edge

list_del.exit.list_del.exit53_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit53

if.end.i.i51:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i49 = getelementptr [2 x %struct.list_head], ptr %5, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i49, align 4
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx26, align 4
  %prev1.i.i.i50 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i50, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit53

list_del.exit53:                                  ; preds = %if.end.i.i51, %list_del.exit.list_del.exit53_crit_edge
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx26, align 4
  %prev.i52 = getelementptr [2 x %struct.list_head], ptr %5, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i52 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i52, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %list_del.exit53.btrfs_backref_free_edge.exit_crit_edge, label %if.then.i

list_del.exit53.btrfs_backref_free_edge.exit_crit_edge: ; preds = %list_del.exit53
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_backref_free_edge.exit

if.then.i:                                        ; preds = %list_del.exit53
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %nr_edges.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_edges.i, align 4
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %nr_edges.i, align 4
  tail call void @kfree(ptr noundef nonnull %5) #13
  br label %btrfs_backref_free_edge.exit

btrfs_backref_free_edge.exit:                     ; preds = %if.then.i, %list_del.exit53.btrfs_backref_free_edge.exit_crit_edge
  %lower = getelementptr inbounds %struct.btrfs_backref_node, ptr %7, i32 0, i32 5
  %26 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %lower, align 4
  %cmp.i54.not = icmp eq ptr %27, %lower
  br i1 %cmp.i54.not, label %if.then29, label %btrfs_backref_free_edge.exit.if.end34_crit_edge

btrfs_backref_free_edge.exit.if.end34_crit_edge:  ; preds = %btrfs_backref_free_edge.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then29:                                        ; preds = %btrfs_backref_free_edge.exit
  %28 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i56, align 4
  %call.i.i57 = tail call zeroext i1 @__list_add_valid(ptr noundef %lower, ptr noundef %29, ptr noundef %leaves) #13
  br i1 %call.i.i57, label %if.end.i.i58, label %if.then29.list_add_tail.exit_crit_edge

if.then29.list_add_tail.exit_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i58:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %lower, ptr %prev.i56, align 4
  %31 = ptrtoint ptr %lower to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %leaves, ptr %lower, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %7, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %lower, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i58, %if.then29.list_add_tail.exit_crit_edge
  %lowest31 = getelementptr inbounds %struct.btrfs_backref_node, ptr %7, i32 0, i32 8
  %34 = ptrtoint ptr %lowest31 to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load32 = load i16, ptr %lowest31, align 8
  %bf.set = or i16 %bf.load32, 64
  store i16 %bf.set, ptr %lowest31, align 8
  br label %if.end34

if.end34:                                         ; preds = %list_add_tail.exit, %btrfs_backref_free_edge.exit.if.end34_crit_edge
  %35 = ptrtoint ptr %upper18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %upper18, align 4
  %cmp.i.not = icmp eq ptr %36, %upper18
  br i1 %cmp.i.not, label %if.end34.while.end_crit_edge, label %if.end34.while.body_crit_edge

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end34.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call fastcc void @btrfs_backref_drop_node(ptr noundef %cache, ptr noundef nonnull %node)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_backref_drop_node(ptr noundef %tree, ptr noundef %node) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %upper = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 4
  %0 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %upper, align 4
  %cmp.i.not = icmp eq ptr %1, %upper
  br i1 %cmp.i.not, label %cond.end, label %cond.false, !prof !140

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 347) #16
  unreachable

cond.end:                                         ; preds = %entry
  %eb.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 7
  %2 = ptrtoint ptr %eb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eb.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %cond.end.btrfs_backref_drop_node_buffer.exit_crit_edge, label %if.then.i

cond.end.btrfs_backref_drop_node_buffer.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_backref_drop_node_buffer.exit

if.then.i:                                        ; preds = %cond.end
  %locked.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 8
  %4 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %locked.i.i, align 8
  %5 = and i16 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.btrfs_backref_unlock_node_buffer.exit.i_crit_edge, label %if.then.i.i

if.then.i.btrfs_backref_unlock_node_buffer.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_backref_unlock_node_buffer.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @btrfs_tree_unlock(ptr noundef nonnull %3) #13
  %6 = ptrtoint ptr %locked.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load2.i.i = load i16, ptr %locked.i.i, align 8
  %bf.clear3.i.i = and i16 %bf.load2.i.i, -33
  store i16 %bf.clear3.i.i, ptr %locked.i.i, align 8
  br label %btrfs_backref_unlock_node_buffer.exit.i

btrfs_backref_unlock_node_buffer.exit.i:          ; preds = %if.then.i.i, %if.then.i.btrfs_backref_unlock_node_buffer.exit.i_crit_edge
  %7 = ptrtoint ptr %eb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eb.i, align 4
  tail call void @free_extent_buffer(ptr noundef %8) #13
  %9 = ptrtoint ptr %eb.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %eb.i, align 4
  br label %btrfs_backref_drop_node_buffer.exit

btrfs_backref_drop_node_buffer.exit:              ; preds = %btrfs_backref_unlock_node_buffer.exit.i, %cond.end.btrfs_backref_drop_node_buffer.exit_crit_edge
  %list = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %btrfs_backref_drop_node_buffer.exit.list_del_init.exit_crit_edge

btrfs_backref_drop_node_buffer.exit.list_del_init.exit_crit_edge: ; preds = %btrfs_backref_drop_node_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %btrfs_backref_drop_node_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %btrfs_backref_drop_node_buffer.exit.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i3.i, align 4
  %lower = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 5
  %call.i.i13 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lower) #13
  br i1 %call.i.i13, label %if.end.i.i16, label %list_del_init.exit.list_del_init.exit18_crit_edge

list_del_init.exit.list_del_init.exit18_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit18

if.end.i.i16:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i14 = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %prev.i.i14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i14, align 4
  %20 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lower, align 4
  %prev1.i.i.i15 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i15, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit18

list_del_init.exit18:                             ; preds = %if.end.i.i16, %list_del_init.exit.list_del_init.exit18_crit_edge
  %24 = ptrtoint ptr %lower to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %lower, ptr %lower, align 4
  %prev.i3.i17 = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %prev.i3.i17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lower, ptr %prev.i3.i17, align 4
  %26 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %node, align 8
  %28 = ptrtoint ptr %node to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %28)
  %cmp = icmp eq i32 %27, %28
  br i1 %cmp, label %list_del_init.exit18.if.end_crit_edge, label %if.then

list_del_init.exit18.if.end_crit_edge:            ; preds = %list_del_init.exit18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rb_erase(ptr noundef %node, ptr noundef %tree) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit18.if.end_crit_edge
  %tobool.not.i19 = icmp eq ptr %node, null
  br i1 %tobool.not.i19, label %if.end.btrfs_backref_free_node.exit_crit_edge, label %if.then.i20

if.end.btrfs_backref_free_node.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_backref_free_node.exit

if.then.i20:                                      ; preds = %if.end
  %29 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %30, %list
  br i1 %cmp.i.not.i, label %cond.end.i, label %cond.false.i, !prof !140

cond.false.i:                                     ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 300) #20
  unreachable

cond.end.i:                                       ; preds = %if.then.i20
  %31 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %lower, align 4
  %cmp.i29.not.i = icmp eq ptr %32, %lower
  br i1 %cmp.i29.not.i, label %cond.end14.i, label %cond.false13.i, !prof !140

cond.false13.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef 301) #20
  unreachable

cond.end14.i:                                     ; preds = %cond.end.i
  %33 = ptrtoint ptr %eb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %eb.i, align 4
  %cmp.i22 = icmp eq ptr %34, null
  br i1 %cmp.i22, label %cond.end23.i, label %cond.false22.i, !prof !140

cond.false22.i:                                   ; preds = %cond.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50, i32 noundef 302) #20
  unreachable

cond.end23.i:                                     ; preds = %cond.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %nr_nodes.i = getelementptr inbounds %struct.btrfs_backref_cache, ptr %tree, i32 0, i32 7
  %35 = ptrtoint ptr %nr_nodes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_nodes.i, align 8
  %dec.i = add i32 %36, -1
  store i32 %dec.i, ptr %nr_nodes.i, align 8
  %root.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %node, i32 0, i32 6
  %37 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %root.i, align 8
  tail call void @btrfs_put_root(ptr noundef %38) #13
  tail call void @kfree(ptr noundef nonnull %node) #13
  br label %btrfs_backref_free_node.exit

btrfs_backref_free_node.exit:                     ; preds = %cond.end23.i, %if.end.btrfs_backref_free_node.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_backref_release_cache(ptr noundef %cache) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %detached = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 5
  %0 = ptrtoint ptr %detached to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %detached, align 4
  %cmp.i.not127 = icmp eq ptr %1, %detached
  br i1 %cmp.i.not127, label %entry.while.cond2.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond2.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader

while.cond2.preheader:                            ; preds = %while.body.while.cond2.preheader_crit_edge, %entry.while.cond2.preheader_crit_edge
  %leaves = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 3
  %2 = ptrtoint ptr %leaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %leaves, align 4
  %cmp.i115.not128 = icmp eq ptr %3, %leaves
  br i1 %cmp.i115.not128, label %while.cond2.preheader.while.end12_crit_edge, label %while.cond2.preheader.while.body6_crit_edge

while.cond2.preheader.while.body6_crit_edge:      ; preds = %while.cond2.preheader
  br label %while.body6

while.cond2.preheader.while.end12_crit_edge:      ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end12

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %6, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -40
  tail call void @btrfs_backref_cleanup_node(ptr noundef %cache, ptr noundef %add.ptr)
  %5 = ptrtoint ptr %detached to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %detached, align 4
  %cmp.i.not = icmp eq ptr %6, %detached
  br i1 %cmp.i.not, label %while.body.while.cond2.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.cond2.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader

while.body6:                                      ; preds = %while.body6.while.body6_crit_edge, %while.cond2.preheader.while.body6_crit_edge
  %7 = phi ptr [ %9, %while.body6.while.body6_crit_edge ], [ %3, %while.cond2.preheader.while.body6_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %7, i32 -56
  tail call void @btrfs_backref_cleanup_node(ptr noundef %cache, ptr noundef %add.ptr11)
  %8 = ptrtoint ptr %leaves to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %leaves, align 4
  %cmp.i115.not = icmp eq ptr %9, %leaves
  br i1 %cmp.i115.not, label %while.body6.while.end12_crit_edge, label %while.body6.while.body6_crit_edge

while.body6.while.body6_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body6

while.body6.while.end12_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end12

while.end12:                                      ; preds = %while.body6.while.end12_crit_edge, %while.cond2.preheader.while.end12_crit_edge
  %last_trans = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 6
  %10 = ptrtoint ptr %last_trans to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %last_trans, align 8
  %arrayidx = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i117.not = icmp eq ptr %12, %arrayidx
  br i1 %cmp.i117.not, label %for.cond, label %while.end12.cond.false_crit_edge, !prof !140

while.end12.cond.false_crit_edge:                 ; preds = %while.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

for.cond:                                         ; preds = %while.end12
  %arrayidx.1 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.1, align 4
  %cmp.i117.not.1 = icmp eq ptr %14, %arrayidx.1
  br i1 %cmp.i117.not.1, label %for.cond.1, label %for.cond.cond.false_crit_edge, !prof !140

for.cond.cond.false_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.2, align 4
  %cmp.i117.not.2 = icmp eq ptr %16, %arrayidx.2
  br i1 %cmp.i117.not.2, label %for.cond.2, label %for.cond.1.cond.false_crit_edge, !prof !140

for.cond.1.cond.false_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx.3, align 4
  %cmp.i117.not.3 = icmp eq ptr %18, %arrayidx.3
  br i1 %cmp.i117.not.3, label %for.cond.3, label %for.cond.2.cond.false_crit_edge, !prof !140

for.cond.2.cond.false_crit_edge:                  ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.4, align 4
  %cmp.i117.not.4 = icmp eq ptr %20, %arrayidx.4
  br i1 %cmp.i117.not.4, label %for.cond.4, label %for.cond.3.cond.false_crit_edge, !prof !140

for.cond.3.cond.false_crit_edge:                  ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %arrayidx.5, align 4
  %cmp.i117.not.5 = icmp eq ptr %22, %arrayidx.5
  br i1 %cmp.i117.not.5, label %for.cond.5, label %for.cond.4.cond.false_crit_edge, !prof !140

for.cond.4.cond.false_crit_edge:                  ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 6
  %23 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx.6, align 4
  %cmp.i117.not.6 = icmp eq ptr %24, %arrayidx.6
  br i1 %cmp.i117.not.6, label %for.cond.6, label %for.cond.5.cond.false_crit_edge, !prof !140

for.cond.5.cond.false_crit_edge:                  ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx.7, align 4
  %cmp.i117.not.7 = icmp eq ptr %26, %arrayidx.7
  br i1 %cmp.i117.not.7, label %for.cond.7, label %for.cond.6.cond.false_crit_edge, !prof !140

for.cond.6.cond.false_crit_edge:                  ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

for.cond.7:                                       ; preds = %for.cond.6
  %pending_edge = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 9
  %27 = ptrtoint ptr %pending_edge to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %pending_edge, align 4
  %cmp.i119.not = icmp eq ptr %28, %pending_edge
  br i1 %cmp.i119.not, label %cond.end28, label %cond.false27, !prof !140

cond.false:                                       ; preds = %for.cond.6.cond.false_crit_edge, %for.cond.5.cond.false_crit_edge, %for.cond.4.cond.false_crit_edge, %for.cond.3.cond.false_crit_edge, %for.cond.2.cond.false_crit_edge, %for.cond.1.cond.false_crit_edge, %for.cond.cond.false_crit_edge, %while.end12.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 2596) #16
  unreachable

cond.false27:                                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 2597) #16
  unreachable

cond.end28:                                       ; preds = %for.cond.7
  %useless_node = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 10
  %29 = ptrtoint ptr %useless_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %useless_node, align 4
  %cmp.i121.not = icmp eq ptr %30, %useless_node
  br i1 %cmp.i121.not, label %cond.end39, label %cond.false38, !prof !140

cond.false38:                                     ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 2598) #16
  unreachable

cond.end39:                                       ; preds = %cond.end28
  %changed = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 4
  %31 = ptrtoint ptr %changed to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %changed, align 4
  %cmp.i123.not = icmp eq ptr %32, %changed
  br i1 %cmp.i123.not, label %cond.end50, label %cond.false49, !prof !140

cond.false49:                                     ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 2599) #16
  unreachable

cond.end50:                                       ; preds = %cond.end39
  %33 = ptrtoint ptr %detached to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %detached, align 4
  %cmp.i125.not = icmp eq ptr %34, %detached
  br i1 %cmp.i125.not, label %do.end, label %cond.false61, !prof !140

cond.false61:                                     ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 2600) #16
  unreachable

do.end:                                           ; preds = %cond.end50
  %35 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %cache, align 8
  %cmp64 = icmp eq ptr %36, null
  br i1 %cmp64, label %cond.end73, label %cond.false72, !prof !140

cond.false72:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 2601) #16
  unreachable

cond.end73:                                       ; preds = %do.end
  %nr_nodes = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 7
  %37 = ptrtoint ptr %nr_nodes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_nodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool74.not = icmp eq i32 %38, 0
  br i1 %tobool74.not, label %cond.end85, label %cond.false84, !prof !140

cond.false84:                                     ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 2602) #16
  unreachable

cond.end85:                                       ; preds = %cond.end73
  %nr_edges = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 8
  %39 = ptrtoint ptr %nr_edges to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_edges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool86.not = icmp eq i32 %40, 0
  br i1 %tobool86.not, label %cond.end97, label %cond.false96, !prof !140

cond.false96:                                     ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 2603) #16
  unreachable

cond.end97:                                       ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_backref_add_tree_node(ptr noundef %cache, ptr noundef %path, ptr noundef %iter, ptr noundef %node_key, ptr noundef %cur) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 11
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %bytenr = getelementptr inbounds %struct.anon.84, ptr %cur, i32 0, i32 1
  %2 = ptrtoint ptr %bytenr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytenr, align 8
  %call = tail call i32 @btrfs_backref_iter_start(ptr noundef %iter, i64 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup189_crit_edge, label %if.end

entry.cleanup189_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup189

if.end:                                           ; preds = %entry
  %type.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %5)
  %cmp.i = icmp eq i8 %5, -88
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true.i:                                  ; preds = %if.end
  %cur_ptr.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 5
  %6 = ptrtoint ptr %cur_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_ptr.i, align 8
  %item_ptr.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 4
  %8 = ptrtoint ptr %item_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %item_ptr.i, align 4
  %sub.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %cmp2.i = icmp eq i32 %sub.i, 24
  br i1 %cmp2.i, label %if.then3, label %land.lhs.true.i.if.end11_crit_edge

land.lhs.true.i.if.end11_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then3:                                         ; preds = %land.lhs.true.i
  %call4 = tail call i32 @btrfs_backref_iter_next(ptr noundef %iter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then3.out_crit_edge, label %if.end7

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp8.not = icmp eq i32 %call4, 0
  br i1 %cmp8.not, label %if.end7.if.end11_crit_edge, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end11:                                         ; preds = %if.end7.if.end11_crit_edge, %land.lhs.true.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %checked = getelementptr inbounds %struct.btrfs_backref_node, ptr %cur, i32 0, i32 8
  %10 = ptrtoint ptr %checked to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %checked, align 8
  %11 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.end11.if.end26_crit_edge, label %do.end, !prof !140

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2884, i32 noundef 9, ptr noundef null) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end11.if.end26_crit_edge
  %upper = getelementptr inbounds %struct.btrfs_backref_node, ptr %cur, i32 0, i32 4
  %12 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %upper, align 4
  %cmp.i235.not = icmp eq ptr %13, %upper
  br i1 %cmp.i235.not, label %if.end26.if.end69_crit_edge, label %if.then35

if.end26.if.end69_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then35:                                        ; preds = %if.end26
  %14 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %upper, align 4
  %cmp.i.not.i = icmp eq ptr %15, %upper
  br i1 %cmp.i.not.i, label %if.then35.cond.false_crit_edge, label %list_is_singular.exit

if.then35.cond.false_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

list_is_singular.exit:                            ; preds = %if.then35
  %prev.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %cur, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %cmp.i236.not = icmp eq ptr %15, %17
  br i1 %cmp.i236.not, label %cond.end, label %list_is_singular.exit.cond.false_crit_edge, !prof !140

list_is_singular.exit.cond.false_crit_edge:       ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

cond.false:                                       ; preds = %list_is_singular.exit.cond.false_crit_edge, %if.then35.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 2890) #16
  unreachable

cond.end:                                         ; preds = %list_is_singular.exit
  %arrayidx = getelementptr [2 x %struct.list_head], ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i237.not = icmp eq ptr %19, %arrayidx
  br i1 %cmp.i237.not, label %cond.end57, label %cond.false56, !prof !140

cond.false56:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 2893) #16
  unreachable

cond.end57:                                       ; preds = %cond.end
  %arrayidx58 = getelementptr %struct.btrfs_backref_edge, ptr %15, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx58, align 4
  %checked59 = getelementptr inbounds %struct.btrfs_backref_node, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %checked59 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load60 = load i16, ptr %checked59, align 8
  %23 = and i16 %bf.load60, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool64.not = icmp eq i16 %23, 0
  br i1 %tobool64.not, label %if.then65, label %cond.end57.if.end69_crit_edge

cond.end57.if.end69_crit_edge:                    ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then65:                                        ; preds = %cond.end57
  %pending_edge = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 9
  %prev.i239 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %prev.i239 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i239, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %25, ptr noundef %pending_edge) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then65.if.end69_crit_edge

if.then65.if.end69_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.end.i.i:                                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %prev.i239 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx, ptr %prev.i239, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pending_edge, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr [2 x %struct.list_head], ptr %15, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %arrayidx, ptr %25, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end.i.i, %if.then65.if.end69_crit_edge, %cond.end57.if.end69_crit_edge, %if.end26.if.end69_crit_edge
  %exist.0 = phi ptr [ %21, %cond.end57.if.end69_crit_edge ], [ null, %if.end26.if.end69_crit_edge ], [ %21, %if.then65.if.end69_crit_edge ], [ %21, %if.end.i.i ]
  %tobool.not.i = icmp eq ptr %iter, null
  %path.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 1
  %offset87 = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 3, i32 2
  %cur_ptr = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 5
  %search_commit_root.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 5
  %lowest_level.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 4
  %type.i275 = getelementptr inbounds %struct.btrfs_key, ptr %node_key, i32 0, i32 1
  %offset62.i = getelementptr inbounds %struct.btrfs_key, ptr %node_key, i32 0, i32 2
  %nr_edges.i.i271 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 8
  %nr_nodes.i.i272 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 7
  %pending_edge.i273 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 9
  %prev.i.i274 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 9, i32 1
  %is_reloc87.i = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 12
  %useless_node91.i = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 10
  %list.i263 = getelementptr inbounds %struct.btrfs_backref_node, ptr %cur, i32 0, i32 3
  %prev3.i.i.i267 = getelementptr inbounds %struct.btrfs_backref_node, ptr %cur, i32 0, i32 3, i32 1
  %root22.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %cur, i32 0, i32 6
  %tobool1.not.i.i = icmp eq ptr %cur, null
  %prev.i.i88.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %cur, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end69
  %exist.1399 = phi ptr [ %exist.0, %if.end69 ], [ %exist.2.ph, %for.inc.for.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 2910, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  br i1 %tobool.not.i, label %for.body.btrfs_backref_get_eb.exit_crit_edge, label %if.end.i240

for.body.btrfs_backref_get_eb.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_backref_get_eb.exit

if.end.i240:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %path.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  br label %btrfs_backref_get_eb.exit

btrfs_backref_get_eb.exit:                        ; preds = %if.end.i240, %for.body.btrfs_backref_get_eb.exit_crit_edge
  %retval.0.i241 = phi ptr [ %33, %if.end.i240 ], [ null, %for.body.btrfs_backref_get_eb.exit_crit_edge ]
  %34 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %iter, align 8
  %36 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %type.i, align 8
  %38 = and i8 %37, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %38)
  %switch.i = icmp eq i8 %38, -88
  br i1 %switch.i, label %if.then76, label %if.else83

if.then76:                                        ; preds = %btrfs_backref_get_eb.exit
  %39 = ptrtoint ptr %cur_ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur_ptr, align 8
  %41 = inttoptr i32 %40 to ptr
  %call77 = tail call i32 @btrfs_get_extent_inline_ref_type(ptr noundef %retval.0.i241, ptr noundef %41, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then76.out_crit_edge, label %cleanup

if.then76.out_crit_edge:                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

cleanup:                                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i32 %call77 to i8
  %call.i243 = tail call i64 @btrfs_get_64(ptr noundef %retval.0.i241, ptr noundef %41, i32 noundef 1) #13
  br label %if.end89

if.else83:                                        ; preds = %btrfs_backref_get_eb.exit
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %offset87 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %offset87, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.else83, %cleanup
  %key.sroa.12.1 = phi i64 [ %call.i243, %cleanup ], [ %43, %if.else83 ]
  %key.sroa.5.1 = phi i8 [ %conv, %cleanup ], [ %37, %if.else83 ]
  %tobool90.not = icmp eq ptr %exist.1399, null
  br i1 %tobool90.not, label %if.end109, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end89
  %44 = zext i8 %key.sroa.5.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %key.sroa.5.1, label %land.lhs.true.for.inc_crit_edge [
    i8 -80, label %land.lhs.true95
    i8 -74, label %land.lhs.true103
    i8 -76, label %land.lhs.true.if.then131_crit_edge
  ], !prof !157

land.lhs.true.if.then131_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then131

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true95:                                  ; preds = %land.lhs.true
  %owner = getelementptr inbounds %struct.btrfs_backref_node, ptr %exist.1399, i32 0, i32 2
  %45 = ptrtoint ptr %owner to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %owner, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %key.sroa.12.1)
  %cmp97 = icmp eq i64 %46, %key.sroa.12.1
  br i1 %cmp97, label %land.lhs.true95.for.inc_crit_edge, label %land.lhs.true95.if.end143_crit_edge

land.lhs.true95.if.end143_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

land.lhs.true95.for.inc_crit_edge:                ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true103:                                 ; preds = %land.lhs.true
  %bytenr104 = getelementptr inbounds %struct.anon.84, ptr %exist.1399, i32 0, i32 1
  %47 = ptrtoint ptr %bytenr104 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %bytenr104, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %key.sroa.12.1)
  %cmp106 = icmp eq i64 %48, %key.sroa.12.1
  br i1 %cmp106, label %land.lhs.true103.for.inc_crit_edge, label %land.lhs.true103.cond.end.i_crit_edge

land.lhs.true103.cond.end.i_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

land.lhs.true103.for.inc_crit_edge:               ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end109:                                        ; preds = %if.end89
  %49 = zext i8 %key.sroa.5.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %key.sroa.5.1, label %if.end109.for.inc_crit_edge [
    i8 -74, label %if.end109.cond.end.i_crit_edge
    i8 -76, label %if.end109.if.then131_crit_edge
    i8 -80, label %if.end109.if.end143_crit_edge
  ], !prof !158

if.end109.if.end143_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

if.end109.if.then131_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then131

if.end109.cond.end.i_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

if.end109.for.inc_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

cond.end.i:                                       ; preds = %if.end109.cond.end.i_crit_edge, %land.lhs.true103.cond.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %key.sroa.12.1)
  %cmp3.i = icmp eq i64 %35, %key.sroa.12.1
  br i1 %cmp3.i, label %if.then.i, label %if.end11.i

if.then.i:                                        ; preds = %cond.end.i
  %50 = ptrtoint ptr %checked to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i = load i16, ptr %checked, align 8
  %bf.set.i = or i16 %bf.load.i, 1
  store i16 %bf.set.i, ptr %checked, align 8
  %51 = ptrtoint ptr %is_reloc87.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %is_reloc87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool5.not.i = icmp eq i32 %52, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  %53 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fs_info1, align 8
  %55 = ptrtoint ptr %bytenr to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %bytenr, align 8
  %call.i246 = tail call ptr @find_reloc_root(ptr noundef %54, i64 noundef %56) #13
  %tobool7.not.i = icmp eq ptr %call.i246, null
  br i1 %tobool7.not.i, label %if.then6.i.out_crit_edge, label %if.end.i247

if.then6.i.out_crit_edge:                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i247:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %root22.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i246, ptr %root22.i, align 8
  br label %for.inc

if.else.i:                                        ; preds = %if.then.i
  %58 = ptrtoint ptr %useless_node91.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %useless_node91.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i263, ptr noundef %useless_node91.i, ptr noundef %59) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.for.inc_crit_edge

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %list.i263, ptr %prev1.i.i.i, align 4
  %61 = ptrtoint ptr %list.i263 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %list.i263, align 4
  %62 = ptrtoint ptr %prev3.i.i.i267 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %useless_node91.i, ptr %prev3.i.i.i267, align 4
  %63 = ptrtoint ptr %useless_node91.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %list.i263, ptr %useless_node91.i, align 4
  br label %for.inc

if.end11.i:                                       ; preds = %cond.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3392, i32 noundef 24) #19
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end11.i.out_crit_edge, label %if.end15.i

if.end11.i.out_crit_edge:                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end15.i:                                       ; preds = %if.end11.i
  %65 = ptrtoint ptr %nr_edges.i.i271 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr_edges.i.i271, align 4
  %inc.i.i = add i32 %66, 1
  store i32 %inc.i.i, ptr %nr_edges.i.i271, align 4
  %67 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %67)
  %node.015.i.i = load ptr, ptr %cache, align 4
  %tobool.not16.i.i = icmp eq ptr %node.015.i.i, null
  br i1 %tobool.not16.i.i, label %if.end15.i.if.then19.i_crit_edge, label %if.end15.i.while.body.i.i_crit_edge

if.end15.i.while.body.i.i_crit_edge:              ; preds = %if.end15.i
  br label %while.body.i.i

if.end15.i.if.then19.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19.i

while.body.i.i:                                   ; preds = %if.end7.i.i.while.body.i.i_crit_edge, %if.end15.i.while.body.i.i_crit_edge
  %node.017.i.i = phi ptr [ %node.0.i.i, %if.end7.i.i.while.body.i.i_crit_edge ], [ %node.015.i.i, %if.end15.i.while.body.i.i_crit_edge ]
  %bytenr2.i.i = getelementptr inbounds %struct.rb_simple_node, ptr %node.017.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %bytenr2.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %bytenr2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %key.sroa.12.1)
  %cmp.i.i = icmp ugt i64 %69, %key.sroa.12.1
  br i1 %cmp.i.i, label %if.then.i72.i, label %if.else.i.i

if.then.i72.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i.i, i32 0, i32 2
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %key.sroa.12.1)
  %cmp4.i.i = icmp ult i64 %69, %key.sroa.12.1
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.else27.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.017.i.i, i32 0, i32 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.then.i72.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i72.i ], [ %rb_right.i.i, %if.then5.i.i ]
  %70 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i73.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i73.i, label %if.end7.i.i.if.then19.i_crit_edge, label %if.end7.i.i.while.body.i.i_crit_edge

if.end7.i.i.while.body.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end7.i.i.if.then19.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.end7.i.i.if.then19.i_crit_edge, %if.end15.i.if.then19.i_crit_edge
  %71 = ptrtoint ptr %checked to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load21.i = load i16, ptr %checked, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %bf.load21.i)
  %72 = icmp ult i16 %bf.load21.i, 1792
  br i1 %72, label %cond.end.i.i, label %cond.false.i.i, !prof !140

cond.false.i.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 2508) #20
  unreachable

cond.end.i.i:                                     ; preds = %if.then19.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i74.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3392, i32 noundef 80) #19
  %tobool3.not.i.i = icmp eq ptr %call7.i.i.i74.i, null
  br i1 %tobool3.not.i.i, label %btrfs_backref_free_edge.exit.i, label %if.end25.i

btrfs_backref_free_edge.exit.i:                   ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %nr_edges.i.i271 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr_edges.i.i271, align 4
  %dec.i.i = add i32 %75, -1
  store i32 %dec.i.i, ptr %nr_edges.i.i271, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  br label %out

if.end25.i:                                       ; preds = %cond.end.i.i
  %list.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i74.i, i32 0, i32 3
  %76 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %list.i.i, ptr %list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i74.i, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %upper.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i74.i, i32 0, i32 4
  %78 = ptrtoint ptr %upper.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %upper.i.i, ptr %upper.i.i, align 8
  %prev.i18.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i74.i, i32 0, i32 4, i32 1
  %79 = ptrtoint ptr %prev.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %upper.i.i, ptr %prev.i18.i.i, align 4
  %lower.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i74.i, i32 0, i32 5
  %80 = ptrtoint ptr %lower.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %lower.i.i, ptr %lower.i.i, align 8
  %prev.i19.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i74.i, i32 0, i32 5, i32 1
  %81 = ptrtoint ptr %prev.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %lower.i.i, ptr %prev.i19.i.i, align 4
  %82 = ptrtoint ptr %call7.i.i.i74.i to i32
  %83 = ptrtoint ptr %call7.i.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %call7.i.i.i74.i, align 8
  %84 = ptrtoint ptr %nr_nodes.i.i272 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_nodes.i.i272, align 8
  %inc.i75.i = add i32 %85, 1
  store i32 %inc.i75.i, ptr %nr_nodes.i.i272, align 8
  %level5.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i74.i, i32 0, i32 8
  %86 = ptrtoint ptr %level5.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load.i.i = load i16, ptr %level5.i.i, align 8
  %87 = add nuw nsw i16 %bf.load21.i, 256
  %bf.shl.i.i = and i16 %87, -256
  %bf.clear.i.i = and i16 %bf.load.i.i, 255
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %level5.i.i, align 8
  %bytenr6.i.i = getelementptr inbounds %struct.anon.84, ptr %call7.i.i.i74.i, i32 0, i32 1
  %88 = ptrtoint ptr %bytenr6.i.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %key.sroa.12.1, ptr %bytenr6.i.i, align 8
  %arrayidx.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i274 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i274, align 4
  %call.i.i80.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %90, ptr noundef %pending_edge.i273) #13
  br i1 %call.i.i80.i, label %if.end.i.i82.i, label %if.end25.i.if.end44.i_crit_edge

if.end25.i.if.end44.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

if.end.i.i82.i:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %prev.i.i274 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %arrayidx.i, ptr %prev.i.i274, align 4
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %pending_edge.i273, ptr %arrayidx.i, align 8
  %prev3.i.i81.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %prev3.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev3.i.i81.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %arrayidx.i, ptr %90, align 4
  br label %if.end44.i

if.else27.i:                                      ; preds = %if.else.i.i
  %checked.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %node.017.i.i, i32 0, i32 8
  %95 = ptrtoint ptr %checked.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load28.i = load i16, ptr %checked.i, align 8
  %96 = and i16 %bf.load28.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool32.not.i = icmp eq i16 %96, 0
  br i1 %tobool32.not.i, label %cond.false40.i, label %cond.end41.i, !prof !139

cond.false40.i:                                   ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 2671) #20
  unreachable

cond.end41.i:                                     ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx43.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %arrayidx43.i, ptr %arrayidx43.i, align 8
  %prev.i83.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %prev.i83.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %arrayidx43.i, ptr %prev.i83.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %cond.end41.i, %if.end.i.i82.i, %if.end25.i.if.end44.i_crit_edge
  %upper.0.i = phi ptr [ %node.017.i.i, %cond.end41.i ], [ %call7.i.i.i74.i, %if.end25.i.if.end44.i_crit_edge ], [ %call7.i.i.i74.i, %if.end.i.i82.i ]
  br i1 %tobool1.not.i.i, label %if.end44.i.cond.false.i87.i_crit_edge, label %land.rhs.i.i, !prof !159

if.end44.i.cond.false.i87.i_crit_edge:            ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i87.i

land.rhs.i.i:                                     ; preds = %if.end44.i
  %level.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %upper.0.i, i32 0, i32 8
  %99 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load.i85.i = load i16, ptr %level.i.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i85.i, 8
  %100 = ptrtoint ptr %checked to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load3.i.i = load i16, ptr %checked, align 8
  %bf.lshr4.i.i = lshr i16 %bf.load3.i.i, 8
  %narrow.i.i = add nuw nsw i16 %bf.lshr4.i.i, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr.i.i, i16 %narrow.i.i)
  %cmp.i86.i = icmp eq i16 %bf.lshr.i.i, %narrow.i.i
  br i1 %cmp.i86.i, label %cond.end.i89.i, label %land.rhs.i.i.cond.false.i87.i_crit_edge, !prof !140

land.rhs.i.i.cond.false.i87.i_crit_edge:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i87.i

cond.false.i87.i:                                 ; preds = %land.rhs.i.i.cond.false.i87.i_crit_edge, %if.end44.i.cond.false.i87.i_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.50, i32 noundef 287) #20
  unreachable

cond.end.i89.i:                                   ; preds = %land.rhs.i.i
  %node.i.i = getelementptr inbounds %struct.btrfs_backref_edge, ptr %call7.i.i.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %cur, ptr %node.i.i, align 8
  %arrayidx9.i.i = getelementptr %struct.btrfs_backref_edge, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %102 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %upper.0.i, ptr %arrayidx9.i.i, align 4
  %103 = ptrtoint ptr %prev.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i88.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %104, ptr noundef %upper) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %cond.end.i89.i.for.inc_crit_edge

cond.end.i89.i.for.inc_crit_edge:                 ; preds = %cond.end.i89.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i.i.i:                                   ; preds = %cond.end.i89.i
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %prev.i.i88.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call7.i.i.i.i, ptr %prev.i.i88.i, align 4
  %106 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %upper, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev3.i.i.i.i, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %call7.i.i.i.i, ptr %104, align 4
  br label %for.inc

if.then131:                                       ; preds = %if.end109.if.then131_crit_edge, %land.lhs.true.if.then131_crit_edge
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.57) #17
  tail call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %1, ptr noundef nonnull @__func__.btrfs_backref_add_tree_node, i32 noundef 2955, i32 noundef -22, ptr noundef null) #17
  br label %out

if.end143:                                        ; preds = %if.end109.if.end143_crit_edge, %land.lhs.true95.if.end143_crit_edge
  %109 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fs_info1, align 8
  %call.i249 = tail call ptr @btrfs_get_fs_root(ptr noundef %110, i64 noundef %key.sroa.12.1, i1 noundef zeroext false) #13
  %cmp.i.i250 = icmp ugt ptr %call.i249, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i250, label %if.then.i251, label %if.end.i253

if.then.i251:                                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %call.i249 to i32
  br label %handle_indirect_tree_backref.exit

if.end.i253:                                      ; preds = %if.end143
  %state.i = getelementptr inbounds %struct.btrfs_root, ptr %call.i249, i32 0, i32 5
  %112 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %state.i, align 4
  %114 = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i252 = icmp eq i32 %114, 0
  %115 = ptrtoint ptr %checked to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load.i254 = load i16, ptr %checked, align 8
  br i1 %tobool.not.i252, label %if.then5.i, label %if.end.i253.if.end6.i_crit_edge

if.end.i253.if.end6.i_crit_edge:                  ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set.i255 = or i16 %bf.load.i254, 128
  %116 = ptrtoint ptr %checked to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %bf.set.i255, ptr %checked, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i253.if.end6.i_crit_edge
  %bf.load9.i = phi i16 [ %bf.set.i255, %if.then5.i ], [ %bf.load.i254, %if.end.i253.if.end6.i_crit_edge ]
  %level.i.i256 = getelementptr inbounds %struct.btrfs_root, ptr %call.i249, i32 0, i32 6, i32 11
  %117 = ptrtoint ptr %level.i.i256 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %level.i.i256, align 1
  %bf.lshr.i = lshr i16 %bf.load9.i, 8
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %119 = zext i8 %118 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr.i, i16 %119)
  %cmp.i257 = icmp eq i16 %bf.lshr.i, %119
  br i1 %cmp.i257, label %if.then11.i, label %if.end24.i

if.then11.i:                                      ; preds = %if.end6.i
  %bytenr.i.i = getelementptr inbounds %struct.btrfs_root, ptr %call.i249, i32 0, i32 6, i32 3
  %120 = ptrtoint ptr %bytenr.i.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 8)
  %121 = load i64, ptr %bytenr.i.i, align 1
  %122 = tail call i64 @llvm.bswap.i64(i64 %121) #13
  %123 = ptrtoint ptr %bytenr to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %bytenr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %122, i64 %124)
  %cmp14.i = icmp eq i64 %122, %124
  br i1 %cmp14.i, label %cond.end.i260, label %cond.false.i259, !prof !140

cond.false.i259:                                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 2715) #20
  unreachable

cond.end.i260:                                    ; preds = %if.then11.i
  %call18.i = tail call i32 @btrfs_should_ignore_reloc_root(ptr noundef %call.i249) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %cond.end.i260.if.else.i269_crit_edge, label %land.lhs.true.i262

cond.end.i260.if.else.i269_crit_edge:             ; preds = %cond.end.i260
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i269

land.lhs.true.i262:                               ; preds = %cond.end.i260
  %125 = ptrtoint ptr %is_reloc87.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %is_reloc87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool20.not.i = icmp eq i32 %126, 0
  br i1 %tobool20.not.i, label %land.lhs.true.i262.if.else.i269_crit_edge, label %if.then21.i

land.lhs.true.i262.if.else.i269_crit_edge:        ; preds = %land.lhs.true.i262
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i269

if.then21.i:                                      ; preds = %land.lhs.true.i262
  tail call void @btrfs_put_root(ptr noundef %call.i249) #13
  %127 = ptrtoint ptr %useless_node91.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %useless_node91.i, align 4
  %call.i.i.i265 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i263, ptr noundef %useless_node91.i, ptr noundef %128) #13
  br i1 %call.i.i.i265, label %if.end.i.i.i268, label %if.then21.i.for.inc_crit_edge

if.then21.i.for.inc_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i.i268:                                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i266 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %prev1.i.i.i266 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %list.i263, ptr %prev1.i.i.i266, align 4
  %130 = ptrtoint ptr %list.i263 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %128, ptr %list.i263, align 4
  %131 = ptrtoint ptr %prev3.i.i.i267 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %useless_node91.i, ptr %prev3.i.i.i267, align 4
  %132 = ptrtoint ptr %useless_node91.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %list.i263, ptr %useless_node91.i, align 4
  br label %for.inc

if.else.i269:                                     ; preds = %land.lhs.true.i262.if.else.i269_crit_edge, %cond.end.i260.if.else.i269_crit_edge
  %133 = ptrtoint ptr %root22.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i249, ptr %root22.i, align 8
  br label %for.inc

if.end24.i:                                       ; preds = %if.end6.i
  %add.i = add nuw nsw i32 %bf.cast.i, 1
  %134 = ptrtoint ptr %search_commit_root.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load29.i = load i8, ptr %search_commit_root.i, align 2
  %bf.set34.i = or i8 %bf.load29.i, 48
  store i8 %bf.set34.i, ptr %search_commit_root.i, align 2
  %conv35.i = trunc i32 %add.i to i8
  %135 = ptrtoint ptr %lowest_level.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv35.i, ptr %lowest_level.i, align 1
  %call36.i = tail call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call.i249, ptr noundef %node_key, ptr noundef %path, i32 noundef 0, i32 noundef 0) #13
  %136 = ptrtoint ptr %lowest_level.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %lowest_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp38.i = icmp slt i32 %call36.i, 0
  br i1 %cmp38.i, label %handle_indirect_tree_backref.exit.thread349, label %if.end41.i

handle_indirect_tree_backref.exit.thread349:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @btrfs_put_root(ptr noundef %call.i249) #13
  br label %out

if.end41.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp42.not.i = icmp eq i32 %call36.i, 0
  br i1 %cmp42.not.i, label %if.end41.i.if.end50.i_crit_edge, label %land.lhs.true44.i

if.end41.i.if.end50.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

land.lhs.true44.i:                                ; preds = %if.end41.i
  %arrayidx.i270 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %add.i
  %137 = ptrtoint ptr %arrayidx.i270 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i270, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp45.i = icmp sgt i32 %138, 0
  br i1 %cmp45.i, label %if.then47.i, label %land.lhs.true44.i.if.end50.i_crit_edge

land.lhs.true44.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

if.then47.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #15
  %dec.i = add nsw i32 %138, -1
  %139 = ptrtoint ptr %arrayidx.i270 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %dec.i, ptr %arrayidx.i270, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %land.lhs.true44.i.if.end50.i_crit_edge, %if.end41.i.if.end50.i_crit_edge
  %arrayidx51.i = getelementptr [8 x ptr], ptr %path, i32 0, i32 %add.i
  %140 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx51.i, align 4
  %arrayidx53.i = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %add.i
  %142 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx53.i, align 4
  %mul.i.i = mul i32 %143, 33
  %add.i.i = add i32 %mul.i.i, 101
  %144 = inttoptr i32 %add.i.i to ptr
  %call.i.i296.i = tail call i64 @btrfs_get_64(ptr noundef %141, ptr noundef %144, i32 noundef 17) #13
  %145 = ptrtoint ptr %bytenr to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %bytenr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i296.i, i64 %146)
  %cmp56.not.i = icmp eq i64 %call.i.i296.i, %146
  br i1 %cmp56.not.i, label %for.cond.preheader.i, label %if.then58.i

for.cond.preheader.i:                             ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %bf.load9.i)
  %cmp64348.i = icmp ult i16 %bf.load9.i, 1792
  br i1 %cmp64348.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.out.i_crit_edge

for.cond.preheader.i.out.i_crit_edge:             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then58.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  %root_key.i = getelementptr inbounds %struct.btrfs_root, ptr %call.i249, i32 0, i32 7
  %147 = ptrtoint ptr %root_key.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 8)
  %148 = load i64, ptr %root_key.i, align 1
  %149 = ptrtoint ptr %node_key to i32
  call void @__asan_loadN_noabort(i32 %149, i32 8)
  %150 = load i64, ptr %node_key, align 1
  %151 = ptrtoint ptr %type.i275 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %type.i275, align 1
  %conv61.i = zext i8 %152 to i32
  %153 = ptrtoint ptr %offset62.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 8)
  %154 = load i64, ptr %offset62.i, align 1
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %110, ptr noundef nonnull @.str.59, i64 noundef %146, i32 noundef %bf.cast.i, i64 noundef %148, i64 noundef %150, i32 noundef %conv61.i, i64 noundef %154) #17
  tail call void @btrfs_put_root(ptr noundef %call.i249) #13
  br label %out.i

for.cond.i:                                       ; preds = %btrfs_backref_link_edge.exit.i
  %inc.i = add nuw nsw i32 %level.0350.i, 1
  %cmp64.i = icmp ult i32 %level.0350.i, 7
  br i1 %cmp64.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.out.i_crit_edge

for.cond.i.out.i_crit_edge:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %need_check.0.off0351.i = phi i1 [ %need_check.2.off0.i, %for.cond.i.for.body.i_crit_edge ], [ true, %for.cond.preheader.i.for.body.i_crit_edge ]
  %level.0350.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ %add.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %lower.0349.i = phi ptr [ %upper.0.i310, %for.cond.i.for.body.i_crit_edge ], [ %cur, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx67.i = getelementptr [8 x ptr], ptr %path, i32 0, i32 %level.0350.i
  %155 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx67.i, align 4
  %tobool68.not.i = icmp eq ptr %156, null
  br i1 %tobool68.not.i, label %if.then69.i, label %if.end95.i

if.then69.i:                                      ; preds = %for.body.i
  %bytenr.i297.i = getelementptr inbounds %struct.btrfs_root, ptr %call.i249, i32 0, i32 6, i32 3
  %157 = ptrtoint ptr %bytenr.i297.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 8)
  %158 = load i64, ptr %bytenr.i297.i, align 1
  %159 = tail call i64 @llvm.bswap.i64(i64 %158) #13
  %bytenr72.i = getelementptr inbounds %struct.anon.84, ptr %lower.0349.i, i32 0, i32 1
  %160 = ptrtoint ptr %bytenr72.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %bytenr72.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %159, i64 %161)
  %cmp73.i = icmp eq i64 %159, %161
  br i1 %cmp73.i, label %cond.end83.i, label %cond.false82.i, !prof !140

cond.false82.i:                                   ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 2766) #20
  unreachable

cond.end83.i:                                     ; preds = %if.then69.i
  %call84.i = tail call i32 @btrfs_should_ignore_reloc_root(ptr noundef %call.i249) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %cond.end83.i.if.else92.i_crit_edge, label %land.lhs.true86.i

cond.end83.i.if.else92.i_crit_edge:               ; preds = %cond.end83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else92.i

land.lhs.true86.i:                                ; preds = %cond.end83.i
  %162 = ptrtoint ptr %is_reloc87.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %is_reloc87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool88.not.i = icmp eq i32 %163, 0
  br i1 %tobool88.not.i, label %land.lhs.true86.i.if.else92.i_crit_edge, label %if.then89.i

land.lhs.true86.i.if.else92.i_crit_edge:          ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else92.i

if.then89.i:                                      ; preds = %land.lhs.true86.i
  tail call void @btrfs_put_root(ptr noundef %call.i249) #13
  %list90.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %lower.0349.i, i32 0, i32 3
  %164 = ptrtoint ptr %useless_node91.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %useless_node91.i, align 4
  %call.i.i298.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list90.i, ptr noundef %useless_node91.i, ptr noundef %165) #13
  br i1 %call.i.i298.i, label %if.end.i.i301.i, label %if.then89.i.out.i_crit_edge

if.then89.i.out.i_crit_edge:                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end.i.i301.i:                                  ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i299.i = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %prev1.i.i299.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %list90.i, ptr %prev1.i.i299.i, align 4
  %167 = ptrtoint ptr %list90.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %165, ptr %list90.i, align 4
  %prev3.i.i300.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %lower.0349.i, i32 0, i32 3, i32 1
  %168 = ptrtoint ptr %prev3.i.i300.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %useless_node91.i, ptr %prev3.i.i300.i, align 4
  %169 = ptrtoint ptr %useless_node91.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %list90.i, ptr %useless_node91.i, align 4
  br label %out.i

if.else92.i:                                      ; preds = %land.lhs.true86.i.if.else92.i_crit_edge, %cond.end83.i.if.else92.i_crit_edge
  %root93.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %lower.0349.i, i32 0, i32 6
  %170 = ptrtoint ptr %root93.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call.i249, ptr %root93.i, align 8
  br label %out.i

if.end95.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %171 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i276 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %171, i32 noundef 3392, i32 noundef 24) #19
  %tobool.not.i.i277 = icmp eq ptr %call7.i.i.i.i276, null
  br i1 %tobool.not.i.i277, label %if.then98.i, label %if.end99.i

if.then98.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @btrfs_put_root(ptr noundef %call.i249) #13
  br label %out.i

if.end99.i:                                       ; preds = %if.end95.i
  %172 = ptrtoint ptr %nr_edges.i.i271 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %nr_edges.i.i271, align 4
  %inc.i.i278 = add i32 %173, 1
  store i32 %inc.i.i278, ptr %nr_edges.i.i271, align 4
  %174 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx67.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %175, align 8
  %178 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %178)
  %node.015.i.i279 = load ptr, ptr %cache, align 4
  %tobool.not16.i.i280 = icmp eq ptr %node.015.i.i279, null
  br i1 %tobool.not16.i.i280, label %if.end99.i.if.then104.i_crit_edge, label %if.end99.i.while.body.i.i283_crit_edge

if.end99.i.while.body.i.i283_crit_edge:           ; preds = %if.end99.i
  br label %while.body.i.i283

if.end99.i.if.then104.i_crit_edge:                ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then104.i

while.body.i.i283:                                ; preds = %if.end7.i.i291.while.body.i.i283_crit_edge, %if.end99.i.while.body.i.i283_crit_edge
  %node.017.i.i281 = phi ptr [ %node.0.i.i290, %if.end7.i.i291.while.body.i.i283_crit_edge ], [ %node.015.i.i279, %if.end99.i.while.body.i.i283_crit_edge ]
  %bytenr2.i.i282 = getelementptr inbounds %struct.rb_simple_node, ptr %node.017.i.i281, i32 0, i32 1
  %179 = ptrtoint ptr %bytenr2.i.i282 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %bytenr2.i.i282, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %180, i64 %177)
  %cmp.i303.i = icmp ugt i64 %180, %177
  br i1 %cmp.i303.i, label %if.then.i304.i, label %if.else.i.i286

if.then.i304.i:                                   ; preds = %while.body.i.i283
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left.i.i284 = getelementptr inbounds %struct.rb_node, ptr %node.017.i.i281, i32 0, i32 2
  br label %if.end7.i.i291

if.else.i.i286:                                   ; preds = %while.body.i.i283
  call void @__sanitizer_cov_trace_cmp8(i64 %180, i64 %177)
  %cmp4.i.i285 = icmp ult i64 %180, %177
  br i1 %cmp4.i.i285, label %if.then5.i.i288, label %if.else161.i

if.then5.i.i288:                                  ; preds = %if.else.i.i286
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right.i.i287 = getelementptr inbounds %struct.rb_node, ptr %node.017.i.i281, i32 0, i32 1
  br label %if.end7.i.i291

if.end7.i.i291:                                   ; preds = %if.then5.i.i288, %if.then.i304.i
  %node.1.in.i.i289 = phi ptr [ %rb_left.i.i284, %if.then.i304.i ], [ %rb_right.i.i287, %if.then5.i.i288 ]
  %181 = ptrtoint ptr %node.1.in.i.i289 to i32
  call void @__asan_load4_noabort(i32 %181)
  %node.0.i.i290 = load ptr, ptr %node.1.in.i.i289, align 4
  %tobool.not.i305.i = icmp eq ptr %node.0.i.i290, null
  br i1 %tobool.not.i305.i, label %if.end7.i.i291.if.then104.i_crit_edge, label %if.end7.i.i291.while.body.i.i283_crit_edge

if.end7.i.i291.while.body.i.i283_crit_edge:       ; preds = %if.end7.i.i291
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i283

if.end7.i.i291.if.then104.i_crit_edge:            ; preds = %if.end7.i.i291
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then104.i

if.then104.i:                                     ; preds = %if.end7.i.i291.if.then104.i_crit_edge, %if.end99.i.if.then104.i_crit_edge
  %level106.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %lower.0349.i, i32 0, i32 8
  %182 = ptrtoint ptr %level106.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %bf.load107.i = load i16, ptr %level106.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %bf.load107.i)
  %183 = icmp ult i16 %bf.load107.i, 1792
  br i1 %183, label %cond.end.i.i294, label %cond.false.i.i292, !prof !140

cond.false.i.i292:                                ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 2508) #20
  unreachable

cond.end.i.i294:                                  ; preds = %if.then104.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %184 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i306.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %184, i32 noundef 3392, i32 noundef 80) #19
  %tobool3.not.i.i293 = icmp eq ptr %call7.i.i.i306.i, null
  br i1 %tobool3.not.i.i293, label %btrfs_backref_free_edge.exit.i296, label %if.end114.i

btrfs_backref_free_edge.exit.i296:                ; preds = %cond.end.i.i294
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @btrfs_put_root(ptr noundef %call.i249) #13
  %185 = ptrtoint ptr %nr_edges.i.i271 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %nr_edges.i.i271, align 4
  %dec.i.i295 = add i32 %186, -1
  store i32 %dec.i.i295, ptr %nr_edges.i.i271, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i276) #13
  br label %out.i

if.end114.i:                                      ; preds = %cond.end.i.i294
  %list.i.i297 = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i306.i, i32 0, i32 3
  %187 = ptrtoint ptr %list.i.i297 to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %list.i.i297, ptr %list.i.i297, align 8
  %prev.i.i.i298 = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i306.i, i32 0, i32 3, i32 1
  %188 = ptrtoint ptr %prev.i.i.i298 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %list.i.i297, ptr %prev.i.i.i298, align 4
  %upper.i.i299 = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i306.i, i32 0, i32 4
  %189 = ptrtoint ptr %upper.i.i299 to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %upper.i.i299, ptr %upper.i.i299, align 8
  %prev.i18.i.i300 = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i306.i, i32 0, i32 4, i32 1
  %190 = ptrtoint ptr %prev.i18.i.i300 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %upper.i.i299, ptr %prev.i18.i.i300, align 4
  %lower.i.i301 = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i306.i, i32 0, i32 5
  %191 = ptrtoint ptr %lower.i.i301 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %lower.i.i301, ptr %lower.i.i301, align 8
  %prev.i19.i.i302 = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i306.i, i32 0, i32 5, i32 1
  %192 = ptrtoint ptr %prev.i19.i.i302 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %lower.i.i301, ptr %prev.i19.i.i302, align 4
  %193 = ptrtoint ptr %call7.i.i.i306.i to i32
  %194 = ptrtoint ptr %call7.i.i.i306.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %call7.i.i.i306.i, align 8
  %195 = ptrtoint ptr %nr_nodes.i.i272 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %nr_nodes.i.i272, align 8
  %inc.i307.i = add i32 %196, 1
  store i32 %inc.i307.i, ptr %nr_nodes.i.i272, align 8
  %level5.i.i303 = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i306.i, i32 0, i32 8
  %197 = ptrtoint ptr %level5.i.i303 to i32
  call void @__asan_load2_noabort(i32 %197)
  %bf.load.i.i304 = load i16, ptr %level5.i.i303, align 8
  %198 = add nuw nsw i16 %bf.load107.i, 256
  %bf.shl.i.i305 = and i16 %198, -256
  %bf.clear.i.i306 = and i16 %bf.load.i.i304, 255
  %bf.set.i.i307 = or i16 %bf.clear.i.i306, %bf.shl.i.i305
  store i16 %bf.set.i.i307, ptr %level5.i.i303, align 8
  %bytenr6.i.i308 = getelementptr inbounds %struct.anon.84, ptr %call7.i.i.i306.i, i32 0, i32 1
  %199 = ptrtoint ptr %bytenr6.i.i308 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %177, ptr %bytenr6.i.i308, align 8
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %175, i32 0, i32 12
  %200 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pages.i.i, align 4
  %call.i.i309 = tail call ptr @page_address(ptr noundef %201) #13
  %202 = ptrtoint ptr %175 to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %175, align 8
  %conv.i.i = trunc i64 %203 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i309, i32 %and.i.i
  %owner.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 6
  %204 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 8)
  %205 = load i64, ptr %owner.i.i, align 1
  %206 = tail call i64 @llvm.bswap.i64(i64 %205) #13
  %owner.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %call7.i.i.i306.i, i32 0, i32 2
  %207 = ptrtoint ptr %owner.i to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %206, ptr %owner.i, align 8
  %208 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %state.i, align 4
  %210 = and i32 %209, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool118.not.i = icmp eq i32 %210, 0
  br i1 %tobool118.not.i, label %if.then119.i, label %if.end114.i.if.end124.i_crit_edge

if.end114.i.if.end124.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124.i

if.then119.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #15
  %211 = ptrtoint ptr %level5.i.i303 to i32
  call void @__asan_load2_noabort(i32 %211)
  %bf.load121.i = load i16, ptr %level5.i.i303, align 8
  %bf.set123.i = or i16 %bf.load121.i, 128
  store i16 %bf.set123.i, ptr %level5.i.i303, align 8
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then119.i, %if.end114.i.if.end124.i_crit_edge
  %call125.i = tail call i32 @btrfs_block_can_be_shared(ptr noundef %call.i249, ptr noundef %175) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.i)
  %tobool126.not.i = icmp eq i32 %call125.i, 0
  %212 = ptrtoint ptr %level5.i.i303 to i32
  call void @__asan_load2_noabort(i32 %212)
  %bf.load133.i = load i16, ptr %level5.i.i303, align 8
  %bf.clear129.i = and i16 %bf.load133.i, -9
  %masksel.i = select i1 %tobool126.not.i, i16 8, i16 0
  %storemerge.i = or i16 %bf.clear129.i, %masksel.i
  store i16 %storemerge.i, ptr %level5.i.i303, align 8
  %not.tobool126.not.i = xor i1 %tobool126.not.i, true
  %213 = select i1 %not.tobool126.not.i, i1 %need_check.0.off0351.i, i1 false
  br i1 %213, label %if.then146.i, label %if.else149.i

if.then146.i:                                     ; preds = %if.end124.i
  %arrayidx148.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i.i.i276, i32 0, i32 1
  %214 = ptrtoint ptr %prev.i.i274 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %prev.i.i274, align 4
  %call.i.i312.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx148.i, ptr noundef %215, ptr noundef %pending_edge.i273) #13
  br i1 %call.i.i312.i, label %if.end.i.i314.i, label %if.then146.i.if.end185.i_crit_edge

if.then146.i.if.end185.i_crit_edge:               ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185.i

if.end.i.i314.i:                                  ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #15
  %216 = ptrtoint ptr %prev.i.i274 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %arrayidx148.i, ptr %prev.i.i274, align 4
  %217 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %pending_edge.i273, ptr %arrayidx148.i, align 8
  %prev3.i.i313.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i.i.i276, i32 0, i32 1, i32 1
  %218 = ptrtoint ptr %prev3.i.i313.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %215, ptr %prev3.i.i313.i, align 4
  %219 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %arrayidx148.i, ptr %215, align 4
  br label %if.end185.i

if.else149.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select.i = select i1 %tobool126.not.i, i1 true, i1 %need_check.0.off0351.i
  %arrayidx159.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i.i.i276, i32 0, i32 1
  %220 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %arrayidx159.i, ptr %arrayidx159.i, align 8
  %prev.i315.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i.i.i276, i32 0, i32 1, i32 1
  %221 = ptrtoint ptr %prev.i315.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %arrayidx159.i, ptr %prev.i315.i, align 4
  br label %if.end185.i

if.else161.i:                                     ; preds = %if.else.i.i286
  %checked162.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %node.017.i.i281, i32 0, i32 8
  %222 = ptrtoint ptr %checked162.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %bf.load163.i = load i16, ptr %checked162.i, align 8
  %223 = and i16 %bf.load163.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %tobool167.not.i = icmp eq i16 %223, 0
  br i1 %tobool167.not.i, label %cond.false175.i, label %cond.end176.i, !prof !139

cond.false175.i:                                  ; preds = %if.else161.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 2826) #20
  unreachable

cond.end176.i:                                    ; preds = %if.else161.i
  %arrayidx178.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i.i.i276, i32 0, i32 1
  %224 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %arrayidx178.i, ptr %arrayidx178.i, align 8
  %prev.i316.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i.i.i276, i32 0, i32 1, i32 1
  %225 = ptrtoint ptr %prev.i316.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %arrayidx178.i, ptr %prev.i316.i, align 4
  %owner179.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %node.017.i.i281, i32 0, i32 2
  %226 = ptrtoint ptr %owner179.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %owner179.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %227)
  %tobool180.not.i = icmp eq i64 %227, 0
  br i1 %tobool180.not.i, label %if.then181.i, label %cond.end176.i.if.end185.i_crit_edge

cond.end176.i.if.end185.i_crit_edge:              ; preds = %cond.end176.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185.i

if.then181.i:                                     ; preds = %cond.end176.i
  call void @__sanitizer_cov_trace_pc() #15
  %pages.i317.i = getelementptr inbounds %struct.extent_buffer, ptr %175, i32 0, i32 12
  %228 = ptrtoint ptr %pages.i317.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %pages.i317.i, align 4
  %call.i318.i = tail call ptr @page_address(ptr noundef %229) #13
  %230 = ptrtoint ptr %175 to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %175, align 8
  %conv.i319.i = trunc i64 %231 to i32
  %and.i320.i = and i32 %conv.i319.i, 4095
  %add.ptr.i321.i = getelementptr i8, ptr %call.i318.i, i32 %and.i320.i
  %owner.i322.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i321.i, i32 0, i32 6
  %232 = ptrtoint ptr %owner.i322.i to i32
  call void @__asan_loadN_noabort(i32 %232, i32 8)
  %233 = load i64, ptr %owner.i322.i, align 1
  %234 = tail call i64 @llvm.bswap.i64(i64 %233) #13
  %235 = ptrtoint ptr %owner179.i to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %234, ptr %owner179.i, align 8
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.then181.i, %cond.end176.i.if.end185.i_crit_edge, %if.else149.i, %if.end.i.i314.i, %if.then146.i.if.end185.i_crit_edge
  %tobool103.not332.i = phi i1 [ false, %cond.end176.i.if.end185.i_crit_edge ], [ false, %if.then181.i ], [ true, %if.else149.i ], [ true, %if.then146.i.if.end185.i_crit_edge ], [ true, %if.end.i.i314.i ]
  %upper.0.i310 = phi ptr [ %node.017.i.i281, %cond.end176.i.if.end185.i_crit_edge ], [ %node.017.i.i281, %if.then181.i ], [ %call7.i.i.i306.i, %if.else149.i ], [ %call7.i.i.i306.i, %if.then146.i.if.end185.i_crit_edge ], [ %call7.i.i.i306.i, %if.end.i.i314.i ]
  %need_check.2.off0.i = phi i1 [ %need_check.0.off0351.i, %cond.end176.i.if.end185.i_crit_edge ], [ %need_check.0.off0351.i, %if.then181.i ], [ %spec.select.i, %if.else149.i ], [ false, %if.then146.i.if.end185.i_crit_edge ], [ false, %if.end.i.i314.i ]
  %tobool1.not.i.i311 = icmp eq ptr %lower.0349.i, null
  br i1 %tobool1.not.i.i311, label %if.end185.i.cond.false.i327.i_crit_edge, label %land.rhs.i.i317, !prof !159

if.end185.i.cond.false.i327.i_crit_edge:          ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i327.i

land.rhs.i.i317:                                  ; preds = %if.end185.i
  %level.i324.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %upper.0.i310, i32 0, i32 8
  %236 = ptrtoint ptr %level.i324.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %bf.load.i325.i = load i16, ptr %level.i324.i, align 8
  %bf.lshr.i.i312 = lshr i16 %bf.load.i325.i, 8
  %level2.i.i313 = getelementptr inbounds %struct.btrfs_backref_node, ptr %lower.0349.i, i32 0, i32 8
  %237 = ptrtoint ptr %level2.i.i313 to i32
  call void @__asan_load2_noabort(i32 %237)
  %bf.load3.i.i314 = load i16, ptr %level2.i.i313, align 8
  %bf.lshr4.i.i315 = lshr i16 %bf.load3.i.i314, 8
  %narrow.i.i316 = add nuw nsw i16 %bf.lshr4.i.i315, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr.i.i312, i16 %narrow.i.i316)
  %cmp.i326.i = icmp eq i16 %bf.lshr.i.i312, %narrow.i.i316
  br i1 %cmp.i326.i, label %cond.end.i329.i, label %land.rhs.i.i317.cond.false.i327.i_crit_edge, !prof !140

land.rhs.i.i317.cond.false.i327.i_crit_edge:      ; preds = %land.rhs.i.i317
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i327.i

cond.false.i327.i:                                ; preds = %land.rhs.i.i317.cond.false.i327.i_crit_edge, %if.end185.i.cond.false.i327.i_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.50, i32 noundef 287) #20
  unreachable

cond.end.i329.i:                                  ; preds = %land.rhs.i.i317
  %node.i.i318 = getelementptr inbounds %struct.btrfs_backref_edge, ptr %call7.i.i.i.i276, i32 0, i32 1
  %238 = ptrtoint ptr %node.i.i318 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %lower.0349.i, ptr %node.i.i318, align 8
  %arrayidx9.i.i319 = getelementptr %struct.btrfs_backref_edge, ptr %call7.i.i.i.i276, i32 0, i32 1, i32 1
  %239 = ptrtoint ptr %arrayidx9.i.i319 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %upper.0.i310, ptr %arrayidx9.i.i319, align 4
  %upper12.i.i320 = getelementptr inbounds %struct.btrfs_backref_node, ptr %lower.0349.i, i32 0, i32 4
  %prev.i.i328.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %lower.0349.i, i32 0, i32 4, i32 1
  %240 = ptrtoint ptr %prev.i.i328.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %prev.i.i328.i, align 4
  %call.i.i.i.i321 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i276, ptr noundef %241, ptr noundef %upper12.i.i320) #13
  br i1 %call.i.i.i.i321, label %if.end.i.i.i.i323, label %cond.end.i329.i.btrfs_backref_link_edge.exit.i_crit_edge

cond.end.i329.i.btrfs_backref_link_edge.exit.i_crit_edge: ; preds = %cond.end.i329.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_backref_link_edge.exit.i

if.end.i.i.i.i323:                                ; preds = %cond.end.i329.i
  call void @__sanitizer_cov_trace_pc() #15
  %242 = ptrtoint ptr %prev.i.i328.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %call7.i.i.i.i276, ptr %prev.i.i328.i, align 4
  %243 = ptrtoint ptr %call7.i.i.i.i276 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %upper12.i.i320, ptr %call7.i.i.i.i276, align 8
  %prev3.i.i.i.i322 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i276, i32 0, i32 1
  %244 = ptrtoint ptr %prev3.i.i.i.i322 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %241, ptr %prev3.i.i.i.i322, align 4
  %245 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %245)
  store volatile ptr %call7.i.i.i.i276, ptr %241, align 4
  br label %btrfs_backref_link_edge.exit.i

btrfs_backref_link_edge.exit.i:                   ; preds = %if.end.i.i.i.i323, %cond.end.i329.i.btrfs_backref_link_edge.exit.i_crit_edge
  br i1 %tobool103.not332.i, label %for.cond.i, label %if.then187.i

if.then187.i:                                     ; preds = %btrfs_backref_link_edge.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @btrfs_put_root(ptr noundef %call.i249) #13
  br label %out.i

out.i:                                            ; preds = %if.then187.i, %btrfs_backref_free_edge.exit.i296, %if.then98.i, %if.else92.i, %if.end.i.i301.i, %if.then89.i.out.i_crit_edge, %for.cond.i.out.i_crit_edge, %if.then58.i, %for.cond.preheader.i.out.i_crit_edge
  %ret.0.i = phi i32 [ -2, %if.then58.i ], [ %call36.i, %if.then187.i ], [ -12, %btrfs_backref_free_edge.exit.i296 ], [ -12, %if.then98.i ], [ %call36.i, %if.else92.i ], [ %call36.i, %if.then89.i.out.i_crit_edge ], [ %call36.i, %if.end.i.i301.i ], [ %call36.i, %for.cond.preheader.i.out.i_crit_edge ], [ %call36.i, %for.cond.i.out.i_crit_edge ]
  tail call void @btrfs_release_path(ptr noundef %path) #13
  br label %handle_indirect_tree_backref.exit

handle_indirect_tree_backref.exit:                ; preds = %out.i, %if.then.i251
  %retval.0.i324 = phi i32 [ %111, %if.then.i251 ], [ %ret.0.i, %out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i324)
  %cmp145 = icmp slt i32 %retval.0.i324, 0
  br i1 %cmp145, label %handle_indirect_tree_backref.exit.out_crit_edge, label %handle_indirect_tree_backref.exit.for.inc_crit_edge

handle_indirect_tree_backref.exit.for.inc_crit_edge: ; preds = %handle_indirect_tree_backref.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

handle_indirect_tree_backref.exit.out_crit_edge:  ; preds = %handle_indirect_tree_backref.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc:                                          ; preds = %handle_indirect_tree_backref.exit.for.inc_crit_edge, %if.else.i269, %if.end.i.i.i268, %if.then21.i.for.inc_crit_edge, %if.end.i.i.i.i, %cond.end.i89.i.for.inc_crit_edge, %if.end.i.i.i, %if.else.i.for.inc_crit_edge, %if.end.i247, %if.end109.for.inc_crit_edge, %land.lhs.true103.for.inc_crit_edge, %land.lhs.true95.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %exist.2.ph = phi ptr [ %exist.1399, %handle_indirect_tree_backref.exit.for.inc_crit_edge ], [ null, %if.end109.for.inc_crit_edge ], [ null, %land.lhs.true95.for.inc_crit_edge ], [ null, %land.lhs.true103.for.inc_crit_edge ], [ %exist.1399, %if.end.i247 ], [ %exist.1399, %if.else.i.for.inc_crit_edge ], [ %exist.1399, %if.end.i.i.i ], [ %exist.1399, %cond.end.i89.i.for.inc_crit_edge ], [ %exist.1399, %if.end.i.i.i.i ], [ %exist.1399, %if.else.i269 ], [ %exist.1399, %if.then21.i.for.inc_crit_edge ], [ %exist.1399, %if.end.i.i.i268 ], [ %exist.1399, %land.lhs.true.for.inc_crit_edge ]
  %call154 = tail call i32 @btrfs_backref_iter_next(ptr noundef %iter)
  %cmp70 = icmp eq i32 %call154, 0
  br i1 %cmp70, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %246 = ptrtoint ptr %checked to i32
  call void @__asan_load2_noabort(i32 %246)
  %bf.load156 = load i16, ptr %checked, align 8
  %bf.set = or i16 %bf.load156, 8
  store i16 %bf.set, ptr %checked, align 8
  %tobool159.not = icmp eq ptr %exist.2.ph, null
  br i1 %tobool159.not, label %for.end.out_crit_edge, label %do.end175, !prof !140

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end175:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2973, i32 noundef 9, ptr noundef null) #13
  br label %out

out:                                              ; preds = %do.end175, %for.end.out_crit_edge, %handle_indirect_tree_backref.exit.out_crit_edge, %handle_indirect_tree_backref.exit.thread349, %if.then131, %btrfs_backref_free_edge.exit.i, %if.end11.i.out_crit_edge, %if.then6.i.out_crit_edge, %if.then76.out_crit_edge, %if.end7.out_crit_edge, %if.then3.out_crit_edge
  %ret.5 = phi i32 [ %call4, %if.then3.out_crit_edge ], [ -117, %if.end7.out_crit_edge ], [ 0, %do.end175 ], [ 0, %for.end.out_crit_edge ], [ -22, %if.then131 ], [ -12, %btrfs_backref_free_edge.exit.i ], [ %call36.i, %handle_indirect_tree_backref.exit.thread349 ], [ %retval.0.i324, %handle_indirect_tree_backref.exit.out_crit_edge ], [ -117, %if.then76.out_crit_edge ], [ -12, %if.end11.i.out_crit_edge ], [ -2, %if.then6.i.out_crit_edge ]
  %247 = ptrtoint ptr %iter to i32
  call void @__asan_store8_noabort(i32 %247)
  store i64 0, ptr %iter, align 8
  %item_ptr.i325 = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 4
  %248 = ptrtoint ptr %item_ptr.i325 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %item_ptr.i325, align 4
  %cur_ptr.i326 = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 5
  %249 = ptrtoint ptr %cur_ptr.i326 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %cur_ptr.i326, align 8
  %end_ptr.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 6
  %250 = ptrtoint ptr %end_ptr.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %end_ptr.i, align 4
  %path.i327 = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 1
  %251 = ptrtoint ptr %path.i327 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %path.i327, align 8
  tail call void @btrfs_release_path(ptr noundef %252) #13
  %cur_key.i = getelementptr inbounds %struct.btrfs_backref_iter, ptr %iter, i32 0, i32 3
  %253 = call ptr @memset(ptr %cur_key.i, i32 0, i32 17)
  br label %cleanup189

cleanup189:                                       ; preds = %out, %entry.cleanup189_crit_edge
  %retval.0 = phi i32 [ %ret.5, %out ], [ %call, %entry.cleanup189_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_extent_inline_ref_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_handle_fs_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_backref_finish_upper_links(ptr noundef %cache, ptr noundef %start) local_unnamed_addr #2 align 64 {
entry:
  %pending_edge = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %useless_node1 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pending_edge) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %pending_edge, i32 0, i32 1
  %1 = ptrtoint ptr %pending_edge to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pending_edge, ptr %pending_edge, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pending_edge, ptr %0, align 4
  %checked = getelementptr inbounds %struct.btrfs_backref_node, ptr %start, i32 0, i32 8
  %3 = ptrtoint ptr %checked to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %checked, align 8
  %4 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !139

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 2990) #16
  unreachable

cond.end:                                         ; preds = %entry
  %5 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool8.not = icmp eq i16 %5, 0
  br i1 %tobool8.not, label %if.then, label %cond.end.if.end13_crit_edge

cond.end.if.end13_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then:                                          ; preds = %cond.end
  %bytenr = getelementptr inbounds %struct.anon.84, ptr %start, i32 0, i32 1
  %6 = ptrtoint ptr %bytenr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytenr, align 8
  %8 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache, align 4
  %tobool.not24.i = icmp eq ptr %9, null
  br i1 %tobool.not24.i, label %if.then.rb_simple_insert.exit.thread_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.rb_simple_insert.exit.thread_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rb_simple_insert.exit.thread

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %10 = phi ptr [ %14, %if.end7.i.while.body.i_crit_edge ], [ %9, %if.then.while.body.i_crit_edge ]
  %bytenr2.i = getelementptr inbounds %struct.rb_simple_node, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bytenr2.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytenr2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %7)
  %cmp.i = icmp ugt i64 %12, %7
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %7)
  %cmp4.i = icmp ult i64 %12, %7
  br i1 %cmp4.i, label %if.then5.i, label %if.then11

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %13 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.le.i = ptrtoint ptr %10 to i32
  br label %rb_simple_insert.exit.thread

rb_simple_insert.exit.thread:                     ; preds = %while.cond.while.end_crit_edge.i, %if.then.rb_simple_insert.exit.thread_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then.rb_simple_insert.exit.thread_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %cache, %if.then.rb_simple_insert.exit.thread_crit_edge ]
  %15 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parent.0.lcssa.i, ptr %start, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %start, i32 0, i32 1
  %16 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %start, i32 0, i32 2
  %17 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_left.i.i, align 4
  %18 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %start, ptr %p.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef %start, ptr noundef %cache) #13
  %lower = getelementptr inbounds %struct.btrfs_backref_node, ptr %start, i32 0, i32 5
  %leaves = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %lower, ptr noundef %20, ptr noundef %leaves) #13
  br i1 %call.i.i, label %if.end.i.i, label %rb_simple_insert.exit.thread.if.end13_crit_edge

rb_simple_insert.exit.thread.if.end13_crit_edge:  ; preds = %rb_simple_insert.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then11:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %fs_info = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 11
  %21 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fs_info, align 8
  %23 = ptrtoint ptr %bytenr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bytenr, align 8
  call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_panic(ptr noundef %22, ptr noundef nonnull @__func__.btrfs_backref_panic, i32 noundef 367, i32 noundef -17, ptr noundef nonnull @.str.61, i64 noundef %24) #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 367, 0\0A.popsection", ""() #13, !srcloc !160
  unreachable

if.end.i.i:                                       ; preds = %rb_simple_insert.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lower, ptr %prev.i, align 4
  %26 = ptrtoint ptr %lower to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %leaves, ptr %lower, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %start, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %20, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %lower, ptr %20, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end.i.i, %rb_simple_insert.exit.thread.if.end13_crit_edge, %cond.end.if.end13_crit_edge
  %upper = getelementptr inbounds %struct.btrfs_backref_node, ptr %start, i32 0, i32 4
  %29 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %29)
  %edge.0255 = load ptr, ptr %upper, align 4
  %cmp.not256 = icmp eq ptr %edge.0255, %upper
  br i1 %cmp.not256, label %if.end13.while.cond.preheader_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.while.cond.preheader_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %list_add_tail.exit191.while.cond.preheader_crit_edge, %if.end13.while.cond.preheader_crit_edge
  %30 = ptrtoint ptr %pending_edge to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %pending_edge, align 4
  %cmp.i192.not261 = icmp eq ptr %31, %pending_edge
  br i1 %cmp.i192.not261, label %while.cond.preheader.cleanup140_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup140_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup140

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %nr_edges.i = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 8
  br label %while.body

for.body:                                         ; preds = %list_add_tail.exit191.for.body_crit_edge, %if.end13.for.body_crit_edge
  %edge.0257 = phi ptr [ %edge.0, %list_add_tail.exit191.for.body_crit_edge ], [ %edge.0255, %if.end13.for.body_crit_edge ]
  %arrayidx19 = getelementptr [2 x %struct.list_head], ptr %edge.0257, i32 0, i32 1
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %0, align 4
  %call.i.i188 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx19, ptr noundef %33, ptr noundef nonnull %pending_edge) #13
  br i1 %call.i.i188, label %if.end.i.i190, label %for.body.list_add_tail.exit191_crit_edge

for.body.list_add_tail.exit191_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit191

if.end.i.i190:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx19, ptr %0, align 4
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %pending_edge, ptr %arrayidx19, align 4
  %prev3.i.i189 = getelementptr [2 x %struct.list_head], ptr %edge.0257, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev3.i.i189 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i189, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %arrayidx19, ptr %33, align 4
  br label %list_add_tail.exit191

list_add_tail.exit191:                            ; preds = %if.end.i.i190, %for.body.list_add_tail.exit191_crit_edge
  %38 = ptrtoint ptr %edge.0257 to i32
  call void @__asan_load4_noabort(i32 %38)
  %edge.0 = load ptr, ptr %edge.0257, align 4
  %cmp.not = icmp eq ptr %edge.0, %upper
  br i1 %cmp.not, label %list_add_tail.exit191.while.cond.preheader_crit_edge, label %list_add_tail.exit191.for.body_crit_edge

list_add_tail.exit191.for.body_crit_edge:         ; preds = %list_add_tail.exit191
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_add_tail.exit191.while.cond.preheader_crit_edge: ; preds = %list_add_tail.exit191
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %39 = phi ptr [ %31, %while.body.lr.ph ], [ %125, %cleanup.while.body_crit_edge ]
  %call.i.i193 = call zeroext i1 @__list_del_entry_valid(ptr noundef %39) #13
  br i1 %call.i.i193, label %if.end.i.i194, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i194:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i194, %while.body.list_del_init.exit_crit_edge
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %39, ptr %39, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %39, ptr %prev.i3.i, align 4
  %node = getelementptr i8, ptr %39, i32 8
  %arrayidx38 = getelementptr i8, ptr %39, i32 12
  %48 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx38, align 4
  %50 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %node, align 4
  %detached = getelementptr inbounds %struct.btrfs_backref_node, ptr %49, i32 0, i32 8
  %52 = ptrtoint ptr %detached to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load41 = load i16, ptr %detached, align 8
  %53 = and i16 %bf.load41, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool45.not = icmp eq i16 %53, 0
  br i1 %tobool45.not, label %if.end55, label %if.then46

if.then46:                                        ; preds = %list_del_init.exit
  %add.ptr35 = getelementptr i8, ptr %39, i32 -8
  %call.i.i195 = call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr35) #13
  br i1 %call.i.i195, label %if.end.i.i198, label %if.then46.list_del.exit_crit_edge

if.then46.list_del.exit_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i198:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i196 = getelementptr i8, ptr %39, i32 -4
  %54 = ptrtoint ptr %prev.i.i196 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i196, align 4
  %56 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr35, align 4
  %prev1.i.i.i197 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i197 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i197, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i198, %if.then46.list_del.exit_crit_edge
  %60 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr35, align 4
  %prev.i199 = getelementptr i8, ptr %39, i32 -4
  %61 = ptrtoint ptr %prev.i199 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i199, align 4
  %tobool.not.i200 = icmp eq ptr %add.ptr35, null
  br i1 %tobool.not.i200, label %list_del.exit.btrfs_backref_free_edge.exit_crit_edge, label %if.then.i201

list_del.exit.btrfs_backref_free_edge.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_backref_free_edge.exit

if.then.i201:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %nr_edges.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_edges.i, align 4
  %dec.i = add i32 %63, -1
  store i32 %dec.i, ptr %nr_edges.i, align 4
  call void @kfree(ptr noundef nonnull %add.ptr35) #13
  br label %btrfs_backref_free_edge.exit

btrfs_backref_free_edge.exit:                     ; preds = %if.then.i201, %list_del.exit.btrfs_backref_free_edge.exit_crit_edge
  %upper49 = getelementptr inbounds %struct.btrfs_backref_node, ptr %51, i32 0, i32 4
  %64 = ptrtoint ptr %upper49 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %upper49, align 4
  %cmp.i202.not = icmp eq ptr %65, %upper49
  br i1 %cmp.i202.not, label %if.then52, label %btrfs_backref_free_edge.exit.cleanup_crit_edge

btrfs_backref_free_edge.exit.cleanup_crit_edge:   ; preds = %btrfs_backref_free_edge.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then52:                                        ; preds = %btrfs_backref_free_edge.exit
  %list53 = getelementptr inbounds %struct.btrfs_backref_node, ptr %51, i32 0, i32 3
  %66 = ptrtoint ptr %useless_node1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %useless_node1, align 4
  %call.i.i204 = call zeroext i1 @__list_add_valid(ptr noundef %list53, ptr noundef %useless_node1, ptr noundef %67) #13
  br i1 %call.i.i204, label %if.end.i.i206, label %if.then52.cleanup_crit_edge

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i206:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %list53, ptr %prev1.i.i, align 4
  %69 = ptrtoint ptr %list53 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %67, ptr %list53, align 4
  %prev3.i.i205 = getelementptr inbounds %struct.btrfs_backref_node, ptr %51, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %prev3.i.i205 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %useless_node1, ptr %prev3.i.i205, align 4
  %71 = ptrtoint ptr %useless_node1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %list53, ptr %useless_node1, align 4
  br label %cleanup

if.end55:                                         ; preds = %list_del_init.exit
  %72 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %49, align 8
  %74 = ptrtoint ptr %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %74)
  %cmp58 = icmp eq i32 %73, %74
  br i1 %cmp58, label %if.end74, label %if.then59

if.then59:                                        ; preds = %if.end55
  %75 = and i16 %bf.load41, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool64.not = icmp eq i16 %75, 0
  br i1 %tobool64.not, label %if.then59.if.end70_crit_edge, label %if.then65

if.then59.if.end70_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then65:                                        ; preds = %if.then59
  %lower66 = getelementptr inbounds %struct.btrfs_backref_node, ptr %49, i32 0, i32 5
  %call.i.i207 = call zeroext i1 @__list_del_entry_valid(ptr noundef %lower66) #13
  br i1 %call.i.i207, label %if.end.i.i210, label %if.then65.list_del_init.exit212_crit_edge

if.then65.list_del_init.exit212_crit_edge:        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit212

if.end.i.i210:                                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i208 = getelementptr inbounds %struct.btrfs_backref_node, ptr %49, i32 0, i32 5, i32 1
  %76 = ptrtoint ptr %prev.i.i208 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i208, align 4
  %78 = ptrtoint ptr %lower66 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lower66, align 4
  %prev1.i.i.i209 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i209 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i209, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del_init.exit212

list_del_init.exit212:                            ; preds = %if.end.i.i210, %if.then65.list_del_init.exit212_crit_edge
  %82 = ptrtoint ptr %lower66 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %lower66, ptr %lower66, align 4
  %prev.i3.i211 = getelementptr inbounds %struct.btrfs_backref_node, ptr %49, i32 0, i32 5, i32 1
  %83 = ptrtoint ptr %prev.i3.i211 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %lower66, ptr %prev.i3.i211, align 4
  %84 = ptrtoint ptr %detached to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load68 = load i16, ptr %detached, align 8
  %bf.clear69 = and i16 %bf.load68, -65
  store i16 %bf.clear69, ptr %detached, align 8
  br label %if.end70

if.end70:                                         ; preds = %list_del_init.exit212, %if.then59.if.end70_crit_edge
  %lower73 = getelementptr inbounds %struct.btrfs_backref_node, ptr %49, i32 0, i32 5
  %prev.i213 = getelementptr inbounds %struct.btrfs_backref_node, ptr %49, i32 0, i32 5, i32 1
  %85 = ptrtoint ptr %prev.i213 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i213, align 4
  %call.i.i214 = call zeroext i1 @__list_add_valid(ptr noundef %39, ptr noundef %86, ptr noundef %lower73) #13
  br i1 %call.i.i214, label %if.end.i.i216, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i216:                                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %prev.i213 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %39, ptr %prev.i213, align 4
  %88 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %lower73, ptr %39, align 4
  %89 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev.i3.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %39, ptr %86, align 4
  br label %cleanup

if.end74:                                         ; preds = %if.end55
  %91 = and i16 %bf.load41, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool80.not = icmp eq i16 %91, 0
  br i1 %tobool80.not, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 3050) #16
  unreachable

if.end82:                                         ; preds = %if.end74
  %92 = ptrtoint ptr %checked to i32
  call void @__asan_load2_noabort(i32 %92)
  %bf.load84 = load i16, ptr %checked, align 8
  %bf.lshr85 = lshr i16 %bf.load84, 7
  %bf.clear86 = and i16 %bf.lshr85, 1
  %bf.lshr90 = lshr i16 %bf.load41, 7
  %bf.clear91 = and i16 %bf.lshr90, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear86, i16 %bf.clear91)
  %cmp93.not = icmp eq i16 %bf.clear86, %bf.clear91
  br i1 %cmp93.not, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 3056) #16
  unreachable

if.end95:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear86)
  %tobool101.not = icmp eq i16 %bf.clear86, 0
  br i1 %tobool101.not, label %if.then102, label %if.end95.if.end112_crit_edge

if.end95.if.end112_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.then102:                                       ; preds = %if.end95
  %bytenr104 = getelementptr inbounds %struct.anon.84, ptr %49, i32 0, i32 1
  %93 = ptrtoint ptr %bytenr104 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %bytenr104, align 8
  %95 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cache, align 4
  %tobool.not24.i218 = icmp eq ptr %96, null
  br i1 %tobool.not24.i218, label %if.then102.rb_simple_insert.exit238.thread_crit_edge, label %if.then102.while.body.i221_crit_edge

if.then102.while.body.i221_crit_edge:             ; preds = %if.then102
  br label %while.body.i221

if.then102.rb_simple_insert.exit238.thread_crit_edge: ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  br label %rb_simple_insert.exit238.thread

while.body.i221:                                  ; preds = %if.end7.i230.while.body.i221_crit_edge, %if.then102.while.body.i221_crit_edge
  %97 = phi ptr [ %101, %if.end7.i230.while.body.i221_crit_edge ], [ %96, %if.then102.while.body.i221_crit_edge ]
  %bytenr2.i219 = getelementptr inbounds %struct.rb_simple_node, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %bytenr2.i219 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %bytenr2.i219, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %94)
  %cmp.i220 = icmp ugt i64 %99, %94
  br i1 %cmp.i220, label %if.then.i223, label %if.else.i225

if.then.i223:                                     ; preds = %while.body.i221
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left.i222 = getelementptr inbounds %struct.rb_node, ptr %97, i32 0, i32 2
  br label %if.end7.i230

if.else.i225:                                     ; preds = %while.body.i221
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %94)
  %cmp4.i224 = icmp ult i64 %99, %94
  br i1 %cmp4.i224, label %if.then5.i227, label %if.then108

if.then5.i227:                                    ; preds = %if.else.i225
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right.i226 = getelementptr inbounds %struct.rb_node, ptr %97, i32 0, i32 1
  br label %if.end7.i230

if.end7.i230:                                     ; preds = %if.then5.i227, %if.then.i223
  %p.1.i228 = phi ptr [ %rb_left.i222, %if.then.i223 ], [ %rb_right.i226, %if.then5.i227 ]
  %100 = ptrtoint ptr %p.1.i228 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %p.1.i228, align 4
  %tobool.not.i229 = icmp eq ptr %101, null
  br i1 %tobool.not.i229, label %while.cond.while.end_crit_edge.i232, label %if.end7.i230.while.body.i221_crit_edge

if.end7.i230.while.body.i221_crit_edge:           ; preds = %if.end7.i230
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i221

while.cond.while.end_crit_edge.i232:              ; preds = %if.end7.i230
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.le.i231 = ptrtoint ptr %97 to i32
  br label %rb_simple_insert.exit238.thread

rb_simple_insert.exit238.thread:                  ; preds = %while.cond.while.end_crit_edge.i232, %if.then102.rb_simple_insert.exit238.thread_crit_edge
  %parent.0.lcssa.i233 = phi i32 [ %phi.cast.le.i231, %while.cond.while.end_crit_edge.i232 ], [ 0, %if.then102.rb_simple_insert.exit238.thread_crit_edge ]
  %p.0.lcssa.i234 = phi ptr [ %p.1.i228, %while.cond.while.end_crit_edge.i232 ], [ %cache, %if.then102.rb_simple_insert.exit238.thread_crit_edge ]
  %102 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %parent.0.lcssa.i233, ptr %49, align 4
  %rb_right.i.i235 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 1
  %103 = ptrtoint ptr %rb_right.i.i235 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %rb_right.i.i235, align 4
  %rb_left.i.i236 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2
  %104 = ptrtoint ptr %rb_left.i.i236 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %rb_left.i.i236, align 4
  %105 = ptrtoint ptr %p.0.lcssa.i234 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %49, ptr %p.0.lcssa.i234, align 4
  call void @rb_insert_color(ptr noundef %49, ptr noundef %cache) #13
  br label %if.end112

if.then108:                                       ; preds = %if.else.i225
  call void @__sanitizer_cov_trace_pc() #15
  %fs_info109 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 11
  %106 = ptrtoint ptr %fs_info109 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fs_info109, align 8
  %108 = ptrtoint ptr %bytenr104 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %bytenr104, align 8
  call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_panic(ptr noundef %107, ptr noundef nonnull @__func__.btrfs_backref_panic, i32 noundef 367, i32 noundef -17, ptr noundef nonnull @.str.61, i64 noundef %109) #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 367, 0\0A.popsection", ""() #13, !srcloc !160
  unreachable

if.end112:                                        ; preds = %rb_simple_insert.exit238.thread, %if.end95.if.end112_crit_edge
  %lower115 = getelementptr inbounds %struct.btrfs_backref_node, ptr %49, i32 0, i32 5
  %prev.i240 = getelementptr inbounds %struct.btrfs_backref_node, ptr %49, i32 0, i32 5, i32 1
  %110 = ptrtoint ptr %prev.i240 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i240, align 4
  %call.i.i241 = call zeroext i1 @__list_add_valid(ptr noundef %39, ptr noundef %111, ptr noundef %lower115) #13
  br i1 %call.i.i241, label %if.end.i.i243, label %if.end112.list_add_tail.exit244_crit_edge

if.end112.list_add_tail.exit244_crit_edge:        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit244

if.end.i.i243:                                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %112 = ptrtoint ptr %prev.i240 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %39, ptr %prev.i240, align 4
  %113 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %lower115, ptr %39, align 4
  %114 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev.i3.i, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %39, ptr %111, align 4
  br label %list_add_tail.exit244

list_add_tail.exit244:                            ; preds = %if.end.i.i243, %if.end112.list_add_tail.exit244_crit_edge
  %upper117 = getelementptr inbounds %struct.btrfs_backref_node, ptr %49, i32 0, i32 4
  %116 = ptrtoint ptr %upper117 to i32
  call void @__asan_load4_noabort(i32 %116)
  %edge.1258 = load ptr, ptr %upper117, align 4
  %cmp125.not259 = icmp eq ptr %edge.1258, %upper117
  br i1 %cmp125.not259, label %list_add_tail.exit244.cleanup_crit_edge, label %list_add_tail.exit244.for.body128_crit_edge

list_add_tail.exit244.for.body128_crit_edge:      ; preds = %list_add_tail.exit244
  br label %for.body128

list_add_tail.exit244.cleanup_crit_edge:          ; preds = %list_add_tail.exit244
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body128:                                      ; preds = %list_add_tail.exit249.for.body128_crit_edge, %list_add_tail.exit244.for.body128_crit_edge
  %edge.1260 = phi ptr [ %edge.1, %list_add_tail.exit249.for.body128_crit_edge ], [ %edge.1258, %list_add_tail.exit244.for.body128_crit_edge ]
  %arrayidx130 = getelementptr [2 x %struct.list_head], ptr %edge.1260, i32 0, i32 1
  %117 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %0, align 4
  %call.i.i246 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx130, ptr noundef %118, ptr noundef nonnull %pending_edge) #13
  br i1 %call.i.i246, label %if.end.i.i248, label %for.body128.list_add_tail.exit249_crit_edge

for.body128.list_add_tail.exit249_crit_edge:      ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit249

if.end.i.i248:                                    ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #15
  %119 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %arrayidx130, ptr %0, align 4
  %120 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %pending_edge, ptr %arrayidx130, align 4
  %prev3.i.i247 = getelementptr [2 x %struct.list_head], ptr %edge.1260, i32 0, i32 1, i32 1
  %121 = ptrtoint ptr %prev3.i.i247 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev3.i.i247, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %arrayidx130, ptr %118, align 4
  br label %list_add_tail.exit249

list_add_tail.exit249:                            ; preds = %if.end.i.i248, %for.body128.list_add_tail.exit249_crit_edge
  %123 = ptrtoint ptr %edge.1260 to i32
  call void @__asan_load4_noabort(i32 %123)
  %edge.1 = load ptr, ptr %edge.1260, align 4
  %cmp125.not = icmp eq ptr %edge.1, %upper117
  br i1 %cmp125.not, label %list_add_tail.exit249.cleanup_crit_edge, label %list_add_tail.exit249.for.body128_crit_edge

list_add_tail.exit249.for.body128_crit_edge:      ; preds = %list_add_tail.exit249
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body128

list_add_tail.exit249.cleanup_crit_edge:          ; preds = %list_add_tail.exit249
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit249.cleanup_crit_edge, %list_add_tail.exit244.cleanup_crit_edge, %if.end.i.i216, %if.end70.cleanup_crit_edge, %if.end.i.i206, %if.then52.cleanup_crit_edge, %btrfs_backref_free_edge.exit.cleanup_crit_edge
  %124 = ptrtoint ptr %pending_edge to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %pending_edge, align 4
  %cmp.i192.not = icmp eq ptr %125, %pending_edge
  br i1 %cmp.i192.not, label %cleanup.cleanup140_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.cleanup140_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup140

cleanup140:                                       ; preds = %cleanup.cleanup140_crit_edge, %while.cond.preheader.cleanup140_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pending_edge) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_backref_error_cleanup(ptr noundef %cache, ptr noundef %node) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %useless_node = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 10
  %0 = ptrtoint ptr %useless_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %useless_node, align 4
  %cmp.i.not155 = icmp eq ptr %1, %useless_node
  br i1 %cmp.i.not155, label %entry.while.cond2.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond2.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader

while.cond2.preheader:                            ; preds = %list_del_init.exit.while.cond2.preheader_crit_edge, %entry.while.cond2.preheader_crit_edge
  %pending_edge = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 9
  %2 = ptrtoint ptr %pending_edge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_edge, align 4
  %cmp.i116.not159 = icmp eq ptr %3, %pending_edge
  br i1 %cmp.i116.not159, label %while.cond2.preheader.while.cond58.preheader_crit_edge, label %while.body6.lr.ph

while.cond2.preheader.while.cond58.preheader_crit_edge: ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond58.preheader

while.body6.lr.ph:                                ; preds = %while.cond2.preheader
  %nr_edges.i = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 8
  %prev.i132 = getelementptr inbounds %struct.btrfs_backref_cache, ptr %cache, i32 0, i32 9, i32 1
  br label %while.body6

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %14, %list_del_init.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %useless_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %useless_node, align 4
  %cmp.i.not = icmp eq ptr %14, %useless_node
  br i1 %cmp.i.not, label %list_del_init.exit.while.cond2.preheader_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del_init.exit.while.cond2.preheader_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader

while.cond58.preheader:                           ; preds = %while.cond2.backedge.while.cond58.preheader_crit_edge, %while.cond2.preheader.while.cond58.preheader_crit_edge
  %15 = ptrtoint ptr %useless_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %useless_node, align 4
  %cmp.i143.not161 = icmp eq ptr %16, %useless_node
  br i1 %cmp.i143.not161, label %while.cond58.preheader.while.end73_crit_edge, label %while.cond58.preheader.while.body63_crit_edge

while.cond58.preheader.while.body63_crit_edge:    ; preds = %while.cond58.preheader
  br label %while.body63

while.cond58.preheader.while.end73_crit_edge:     ; preds = %while.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end73

while.body6:                                      ; preds = %while.cond2.backedge.while.body6_crit_edge, %while.body6.lr.ph
  %17 = phi ptr [ %3, %while.body6.lr.ph ], [ %71, %while.cond2.backedge.while.body6_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %17, i32 -8
  %call.i.i118 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #13
  br i1 %call.i.i118, label %if.end.i.i121, label %while.body6.list_del.exit_crit_edge

while.body6.list_del.exit_crit_edge:              ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i121:                                    ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i119 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i119 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i119, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i120 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i120, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i121, %while.body6.list_del.exit_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call.i.i122 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr11) #13
  br i1 %call.i.i122, label %if.end.i.i125, label %list_del.exit.list_del.exit127_crit_edge

list_del.exit.list_del.exit127_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit127

if.end.i.i125:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i123 = getelementptr i8, ptr %17, i32 -4
  %26 = ptrtoint ptr %prev.i.i123 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i123, align 4
  %28 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr11, align 4
  %prev1.i.i.i124 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i124, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit127

list_del.exit127:                                 ; preds = %if.end.i.i125, %list_del.exit.list_del.exit127_crit_edge
  %32 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr11, align 4
  %prev.i126 = getelementptr i8, ptr %17, i32 -4
  %33 = ptrtoint ptr %prev.i126 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i126, align 4
  %node15 = getelementptr i8, ptr %17, i32 8
  %34 = ptrtoint ptr %node15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %node15, align 4
  %arrayidx18 = getelementptr i8, ptr %17, i32 12
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx18, align 4
  %tobool.not.i = icmp eq ptr %add.ptr11, null
  br i1 %tobool.not.i, label %list_del.exit127.btrfs_backref_free_edge.exit_crit_edge, label %if.then.i

list_del.exit127.btrfs_backref_free_edge.exit_crit_edge: ; preds = %list_del.exit127
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_backref_free_edge.exit

if.then.i:                                        ; preds = %list_del.exit127
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %nr_edges.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_edges.i, align 4
  %dec.i = add i32 %39, -1
  store i32 %dec.i, ptr %nr_edges.i, align 4
  tail call void @kfree(ptr noundef nonnull %add.ptr11) #13
  br label %btrfs_backref_free_edge.exit

btrfs_backref_free_edge.exit:                     ; preds = %if.then.i, %list_del.exit127.btrfs_backref_free_edge.exit_crit_edge
  %upper19 = getelementptr inbounds %struct.btrfs_backref_node, ptr %35, i32 0, i32 4
  %40 = ptrtoint ptr %upper19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %upper19, align 4
  %cmp.i128.not = icmp eq ptr %41, %upper19
  br i1 %cmp.i128.not, label %land.lhs.true, label %btrfs_backref_free_edge.exit.if.end_crit_edge

btrfs_backref_free_edge.exit.if.end_crit_edge:    ; preds = %btrfs_backref_free_edge.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %btrfs_backref_free_edge.exit
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %35, align 8
  %44 = ptrtoint ptr %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %44)
  %cmp = icmp eq i32 %43, %44
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %list23 = getelementptr inbounds %struct.btrfs_backref_node, ptr %35, i32 0, i32 3
  %45 = ptrtoint ptr %useless_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %useless_node, align 4
  %call.i.i130 = tail call zeroext i1 @__list_add_valid(ptr noundef %list23, ptr noundef %useless_node, ptr noundef %46) #13
  br i1 %call.i.i130, label %if.end.i.i131, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.i131:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list23, ptr %prev1.i.i, align 4
  %48 = ptrtoint ptr %list23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %list23, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_backref_node, ptr %35, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %useless_node, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %useless_node to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list23, ptr %useless_node, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i131, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %btrfs_backref_free_edge.exit.if.end_crit_edge
  %51 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %37, align 8
  %53 = ptrtoint ptr %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %53)
  %cmp28 = icmp eq i32 %52, %53
  br i1 %cmp28, label %if.end30, label %if.end.while.cond2.backedge_crit_edge

if.end.while.cond2.backedge_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.backedge

if.end30:                                         ; preds = %if.end
  %upper32 = getelementptr inbounds %struct.btrfs_backref_node, ptr %37, i32 0, i32 4
  %54 = ptrtoint ptr %upper32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %edge.0156 = load ptr, ptr %upper32, align 4
  %cmp39.not157 = icmp eq ptr %edge.0156, %upper32
  br i1 %cmp39.not157, label %if.end30.for.end_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end30.for.body_crit_edge
  %edge.0158 = phi ptr [ %edge.0, %list_add_tail.exit.for.body_crit_edge ], [ %edge.0156, %if.end30.for.body_crit_edge ]
  %arrayidx42 = getelementptr [2 x %struct.list_head], ptr %edge.0158, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i132 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i132, align 4
  %call.i.i133 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx42, ptr noundef %56, ptr noundef %pending_edge) #13
  br i1 %call.i.i133, label %if.end.i.i135, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i135:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %prev.i132 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx42, ptr %prev.i132, align 4
  %58 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %pending_edge, ptr %arrayidx42, align 4
  %prev3.i.i134 = getelementptr [2 x %struct.list_head], ptr %edge.0158, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev3.i.i134 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i134, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %arrayidx42, ptr %56, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i135, %for.body.list_add_tail.exit_crit_edge
  %61 = ptrtoint ptr %edge.0158 to i32
  call void @__asan_load4_noabort(i32 %61)
  %edge.0 = load ptr, ptr %edge.0158, align 4
  %cmp39.not = icmp eq ptr %edge.0, %upper32
  br i1 %cmp39.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %if.end30.for.end_crit_edge
  %62 = ptrtoint ptr %upper32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %upper32, align 4
  %cmp.i136.not = icmp eq ptr %63, %upper32
  br i1 %cmp.i136.not, label %if.then53, label %for.end.while.cond2.backedge_crit_edge

for.end.while.cond2.backedge_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.backedge

if.then53:                                        ; preds = %for.end
  %list54 = getelementptr inbounds %struct.btrfs_backref_node, ptr %37, i32 0, i32 3
  %64 = ptrtoint ptr %useless_node to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %useless_node, align 4
  %call.i.i138 = tail call zeroext i1 @__list_add_valid(ptr noundef %list54, ptr noundef %useless_node, ptr noundef %65) #13
  br i1 %call.i.i138, label %if.end.i.i141, label %if.then53.while.cond2.backedge_crit_edge

if.then53.while.cond2.backedge_crit_edge:         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.backedge

if.end.i.i141:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i139 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i139 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %list54, ptr %prev1.i.i139, align 4
  %67 = ptrtoint ptr %list54 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %list54, align 4
  %prev3.i.i140 = getelementptr inbounds %struct.btrfs_backref_node, ptr %37, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %prev3.i.i140 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %useless_node, ptr %prev3.i.i140, align 4
  %69 = ptrtoint ptr %useless_node to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %list54, ptr %useless_node, align 4
  br label %while.cond2.backedge

while.cond2.backedge:                             ; preds = %if.end.i.i141, %if.then53.while.cond2.backedge_crit_edge, %for.end.while.cond2.backedge_crit_edge, %if.end.while.cond2.backedge_crit_edge
  %70 = ptrtoint ptr %pending_edge to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %pending_edge, align 4
  %cmp.i116.not = icmp eq ptr %71, %pending_edge
  br i1 %cmp.i116.not, label %while.cond2.backedge.while.cond58.preheader_crit_edge, label %while.cond2.backedge.while.body6_crit_edge

while.cond2.backedge.while.body6_crit_edge:       ; preds = %while.cond2.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body6

while.cond2.backedge.while.cond58.preheader_crit_edge: ; preds = %while.cond2.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond58.preheader

while.body63:                                     ; preds = %list_del_init.exit150.while.body63_crit_edge, %while.cond58.preheader.while.body63_crit_edge
  %72 = phi ptr [ %82, %list_del_init.exit150.while.body63_crit_edge ], [ %16, %while.cond58.preheader.while.body63_crit_edge ]
  %node.addr.0162 = phi ptr [ %spec.store.select, %list_del_init.exit150.while.body63_crit_edge ], [ %node, %while.cond58.preheader.while.body63_crit_edge ]
  %add.ptr68 = getelementptr i8, ptr %72, i32 -40
  %call.i.i145 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %72) #13
  br i1 %call.i.i145, label %if.end.i.i148, label %while.body63.list_del_init.exit150_crit_edge

while.body63.list_del_init.exit150_crit_edge:     ; preds = %while.body63
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit150

if.end.i.i148:                                    ; preds = %while.body63
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i146 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i146 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i146, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %72, align 4
  %prev1.i.i.i147 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i147 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i147, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del_init.exit150

list_del_init.exit150:                            ; preds = %if.end.i.i148, %while.body63.list_del_init.exit150_crit_edge
  %79 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %72, ptr %72, align 4
  %prev.i3.i149 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i3.i149 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %72, ptr %prev.i3.i149, align 4
  %cmp70 = icmp eq ptr %add.ptr68, %node.addr.0162
  %spec.store.select = select i1 %cmp70, ptr null, ptr %node.addr.0162
  tail call fastcc void @btrfs_backref_drop_node(ptr noundef %cache, ptr noundef %add.ptr68)
  %81 = ptrtoint ptr %useless_node to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %useless_node, align 4
  %cmp.i143.not = icmp eq ptr %82, %useless_node
  br i1 %cmp.i143.not, label %list_del_init.exit150.while.end73_crit_edge, label %list_del_init.exit150.while.body63_crit_edge

list_del_init.exit150.while.body63_crit_edge:     ; preds = %list_del_init.exit150
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body63

list_del_init.exit150.while.end73_crit_edge:      ; preds = %list_del_init.exit150
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end73

while.end73:                                      ; preds = %list_del_init.exit150.while.end73_crit_edge, %while.cond58.preheader.while.end73_crit_edge
  %node.addr.0.lcssa = phi ptr [ %node, %while.cond58.preheader.while.end73_crit_edge ], [ %spec.store.select, %list_del_init.exit150.while.end73_crit_edge ]
  tail call void @btrfs_backref_cleanup_node(ptr noundef %cache, ptr noundef %node.addr.0.lcssa)
  %83 = ptrtoint ptr %useless_node to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %useless_node, align 4
  %cmp.i151.not = icmp eq ptr %84, %useless_node
  br i1 %cmp.i151.not, label %land.rhs, label %while.end73.cond.false_crit_edge, !prof !140

while.end73.cond.false_crit_edge:                 ; preds = %while.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

land.rhs:                                         ; preds = %while.end73
  %85 = ptrtoint ptr %pending_edge to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %pending_edge, align 4
  %cmp.i153 = icmp eq ptr %86, %pending_edge
  br i1 %cmp.i153, label %cond.end, label %land.rhs.cond.false_crit_edge, !prof !140

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %while.end73.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 3134) #16
  unreachable

cond.end:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_find_delayed_ref_head(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_delayed_refs(ptr noundef %fs_info, ptr noundef %head, i64 noundef %seq, ptr noundef %preftrees, ptr noundef %sc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %extent_op1 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 8
  %0 = ptrtoint ptr %extent_op1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extent_op1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %update_key = getelementptr inbounds %struct.btrfs_delayed_extent_op, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %update_key to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %update_key, align 2, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr inbounds %struct.btrfs_disk_key, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %offset.i, align 1
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #13
  %type.i = getelementptr inbounds %struct.btrfs_disk_key, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type.i, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %1, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tmp_op_key.sroa.7.0 = phi i64 [ -1, %entry.if.end_crit_edge ], [ -1, %land.lhs.true.if.end_crit_edge ], [ %6, %if.then ]
  %tmp_op_key.sroa.5.0 = phi i8 [ -1, %entry.if.end_crit_edge ], [ -1, %land.lhs.true.if.end_crit_edge ], [ %8, %if.then ]
  %tmp_op_key.sroa.0.0 = phi i64 [ -1, %entry.if.end_crit_edge ], [ -1, %land.lhs.true.if.end_crit_edge ], [ %11, %if.then ]
  %lock = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %rb_leftmost = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_leftmost, align 4
  %tobool4.not245 = icmp eq ptr %13, null
  br i1 %tobool4.not245, label %if.end.if.then106_crit_edge, label %for.body.lr.ph

if.end.if.then106_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then106

for.body.lr.ph:                                   ; preds = %if.end
  %tobool.not.i.i.i209 = icmp eq ptr %sc, null
  %share_count.i.i.i211 = getelementptr inbounds %struct.share_check, ptr %sc, i32 0, i32 2
  %inum = getelementptr inbounds %struct.share_check, ptr %sc, i32 0, i32 1
  %indirect.i180 = getelementptr inbounds %struct.preftrees, ptr %preftrees, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.0247 = phi ptr [ %13, %for.body.lr.ph ], [ %call104, %for.inc.for.body_crit_edge ]
  %ret.0246 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.3, %for.inc.for.body_crit_edge ]
  %seq5 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %n.0247, i32 0, i32 4
  %14 = ptrtoint ptr %seq5 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %seq5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %seq)
  %cmp = icmp ugt i64 %15, %seq
  br i1 %cmp, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %action = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %n.0247, i32 0, i32 7
  %16 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %action, align 8
  %bf.lshr = lshr i32 %bf.load, 24
  %trunc = trunc i32 %bf.lshr to i8
  %17 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %trunc, label %do.body29 [
    i8 3, label %if.end7.do.end_crit_edge
    i8 4, label %if.end7.do.end_crit_edge252
    i8 1, label %sw.bb26
    i8 2, label %sw.bb27
  ]

if.end7.do.end_crit_edge252:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %if.end7.do.end_crit_edge, %if.end7.do.end_crit_edge252
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 841, i32 noundef 9, ptr noundef null) #13
  br label %for.inc

sw.bb26:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %ref_mod = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %n.0247, i32 0, i32 6
  %18 = ptrtoint ptr %ref_mod to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ref_mod, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %ref_mod28 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %n.0247, i32 0, i32 6
  %20 = ptrtoint ptr %ref_mod28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ref_mod28, align 4
  %mul = sub i32 0, %21
  br label %sw.epilog

do.body29:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/backref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 850, 0\0A.popsection", ""() #13, !srcloc !162
  unreachable

sw.epilog:                                        ; preds = %sw.bb27, %sw.bb26
  %count.0 = phi i32 [ %mul, %sw.bb27 ], [ %19, %sw.bb26 ]
  %bf.lshr36 = lshr i32 %bf.load, 16
  %trunc163 = trunc i32 %bf.lshr36 to i8
  %22 = zext i8 %trunc163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %trunc163, label %sw.epilog98 [
    i8 -80, label %sw.bb37
    i8 -74, label %sw.bb39
    i8 -78, label %sw.bb46
    i8 -72, label %sw.bb64
  ]

sw.bb37:                                          ; preds = %sw.epilog
  %root = getelementptr inbounds %struct.btrfs_delayed_tree_ref, ptr %n.0247, i32 0, i32 1
  %23 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %root, align 8
  %level = getelementptr inbounds %struct.btrfs_delayed_tree_ref, ptr %n.0247, i32 0, i32 3
  %25 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %level, align 8
  %add = add i32 %26, 1
  %bytenr = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %n.0247, i32 0, i32 2
  %27 = ptrtoint ptr %bytenr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bytenr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9, i64 %24)
  %cmp.i.i = icmp eq i64 %24, -9
  br i1 %cmp.i.i, label %sw.bb37.for.inc_crit_edge, label %if.end.i.i

sw.bb37.for.inc_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i:                                       ; preds = %sw.bb37
  %29 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %29, i32 noundef 2592) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.out_crit_edge, label %if.end2.i.i

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i:                                      ; preds = %if.end.i.i
  %root_id3.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %root_id3.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %24, ptr %root_id3.i.i, align 8
  %key_for_search6.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %key_for_search6.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %tmp_op_key.sroa.0.0, ptr %key_for_search6.i.i, align 8
  %tmp_op_key.sroa.5.0.key_for_search6.i.i.sroa_idx = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %tmp_op_key.sroa.5.0.key_for_search6.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %tmp_op_key.sroa.5.0, ptr %tmp_op_key.sroa.5.0.key_for_search6.i.i.sroa_idx, align 8
  %tmp_op_key.sroa.7.0.key_for_search6.i.i.sroa_idx = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %tmp_op_key.sroa.7.0.key_for_search6.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %tmp_op_key.sroa.7.0, ptr %tmp_op_key.sroa.7.0.key_for_search6.i.i.sroa_idx, align 1
  %inode_list.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %inode_list.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %inode_list.i.i, align 4
  %level8.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %level8.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %level8.i.i, align 4
  %count9.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %count9.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %count.0, ptr %count9.i.i, align 8
  %parent10.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %parent10.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %parent10.i.i, align 8
  %wanted_disk_byte11.i.i = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %wanted_disk_byte11.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %28, ptr %wanted_disk_byte11.i.i, align 8
  tail call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef %indirect.i180, ptr noundef nonnull %call.i.i, ptr noundef %sc) #13
  br i1 %tobool.not.i.i.i209, label %if.end2.i.i.for.inc_crit_edge, label %land.rhs.i.i.i

if.end2.i.i.for.inc_crit_edge:                    ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs.i.i.i:                                   ; preds = %if.end2.i.i
  %39 = ptrtoint ptr %share_count.i.i.i211 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %share_count.i.i.i211, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i.i.i = icmp sgt i32 %40, 1
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i.for.inc.fold.split_crit_edge, label %land.rhs.i.i.i.for.inc_crit_edge

land.rhs.i.i.i.for.inc_crit_edge:                 ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs.i.i.i.for.inc.fold.split_crit_edge:      ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.fold.split

sw.bb39:                                          ; preds = %sw.epilog
  %level42 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, ptr %n.0247, i32 0, i32 3
  %41 = ptrtoint ptr %level42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %level42, align 8
  %parent = getelementptr inbounds %struct.btrfs_delayed_tree_ref, ptr %n.0247, i32 0, i32 2
  %43 = ptrtoint ptr %parent to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %parent, align 8
  %bytenr44 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %n.0247, i32 0, i32 2
  %45 = ptrtoint ptr %bytenr44 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %bytenr44, align 8
  %47 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i165 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %47, i32 noundef 2592) #13
  %tobool.not.i.i166 = icmp eq ptr %call.i.i165, null
  br i1 %tobool.not.i.i166, label %sw.bb39.out_crit_edge, label %if.end2.i.i174

sw.bb39.out_crit_edge:                            ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i174:                                   ; preds = %sw.bb39
  %add43 = add i32 %42, 1
  %root_id3.i.i167 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i165, i32 0, i32 1
  %inode_list.i.i168 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i165, i32 0, i32 5
  %48 = ptrtoint ptr %inode_list.i.i168 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %inode_list.i.i168, align 4
  %level8.i.i169 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i165, i32 0, i32 3
  %49 = call ptr @memset(ptr %root_id3.i.i167, i32 0, i32 25)
  %50 = ptrtoint ptr %level8.i.i169 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add43, ptr %level8.i.i169, align 4
  %count9.i.i170 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i165, i32 0, i32 4
  %51 = ptrtoint ptr %count9.i.i170 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %count.0, ptr %count9.i.i170, align 8
  %parent10.i.i171 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i165, i32 0, i32 6
  %52 = ptrtoint ptr %parent10.i.i171 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %44, ptr %parent10.i.i171, align 8
  %wanted_disk_byte11.i.i172 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i165, i32 0, i32 7
  %53 = ptrtoint ptr %wanted_disk_byte11.i.i172 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %46, ptr %wanted_disk_byte11.i.i172, align 8
  tail call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef %preftrees, ptr noundef nonnull %call.i.i165, ptr noundef %sc) #13
  br i1 %tobool.not.i.i.i209, label %if.end2.i.i174.for.inc_crit_edge, label %land.rhs.i.i.i178

if.end2.i.i174.for.inc_crit_edge:                 ; preds = %if.end2.i.i174
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs.i.i.i178:                                ; preds = %if.end2.i.i174
  %54 = ptrtoint ptr %share_count.i.i.i211 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %share_count.i.i.i211, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i.i.i176 = icmp sgt i32 %55, 1
  br i1 %cmp.i.i.i176, label %land.rhs.i.i.i178.for.inc.fold.split_crit_edge, label %land.rhs.i.i.i178.for.inc_crit_edge

land.rhs.i.i.i178.for.inc_crit_edge:              ; preds = %land.rhs.i.i.i178
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs.i.i.i178.for.inc.fold.split_crit_edge:   ; preds = %land.rhs.i.i.i178
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.fold.split

sw.bb46:                                          ; preds = %sw.epilog
  %objectid = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %n.0247, i32 0, i32 3
  %56 = ptrtoint ptr %objectid to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %objectid, align 8
  %offset = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %n.0247, i32 0, i32 4
  %58 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %offset, align 8
  br i1 %tobool.not.i.i.i209, label %sw.bb46.if.end60_crit_edge, label %land.lhs.true53

sw.bb46.if.end60_crit_edge:                       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

land.lhs.true53:                                  ; preds = %sw.bb46
  %60 = ptrtoint ptr %inum to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %inum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %tobool54.not = icmp eq i64 %61, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %61)
  %cmp58.not = icmp eq i64 %57, %61
  %or.cond = select i1 %tobool54.not, i1 true, i1 %cmp58.not
  br i1 %or.cond, label %land.lhs.true53.if.end60_crit_edge, label %land.lhs.true53.out_crit_edge

land.lhs.true53.out_crit_edge:                    ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true53.if.end60_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true53.if.end60_crit_edge, %sw.bb46.if.end60_crit_edge
  %root61 = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %n.0247, i32 0, i32 1
  %62 = ptrtoint ptr %root61 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %root61, align 8
  %bytenr62 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %n.0247, i32 0, i32 2
  %64 = ptrtoint ptr %bytenr62 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %bytenr62, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9, i64 %63)
  %cmp.i.i182 = icmp eq i64 %63, -9
  br i1 %cmp.i.i182, label %if.end60.for.inc_crit_edge, label %if.end.i.i185

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i185:                                    ; preds = %if.end60
  %66 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i183 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %66, i32 noundef 2592) #13
  %tobool.not.i.i184 = icmp eq ptr %call.i.i183, null
  br i1 %tobool.not.i.i184, label %if.end.i.i185.out_crit_edge, label %if.end2.i.i188

if.end.i.i185.out_crit_edge:                      ; preds = %if.end.i.i185
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i188:                                   ; preds = %if.end.i.i185
  %root_id3.i.i186 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i183, i32 0, i32 1
  %67 = ptrtoint ptr %root_id3.i.i186 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %63, ptr %root_id3.i.i186, align 8
  %key_for_search6.i.i187 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i183, i32 0, i32 2
  %68 = ptrtoint ptr %key_for_search6.i.i187 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %57, ptr %key_for_search6.i.i187, align 8
  %key.sroa.5.0.key_for_search6.i.i187.sroa_idx = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i183, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %key.sroa.5.0.key_for_search6.i.i187.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 108, ptr %key.sroa.5.0.key_for_search6.i.i187.sroa_idx, align 8
  %key.sroa.7.0.key_for_search6.i.i187.sroa_idx = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i183, i32 0, i32 2, i32 2
  %70 = ptrtoint ptr %key.sroa.7.0.key_for_search6.i.i187.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 %59, ptr %key.sroa.7.0.key_for_search6.i.i187.sroa_idx, align 1
  %inode_list.i.i189 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i183, i32 0, i32 5
  %71 = ptrtoint ptr %inode_list.i.i189 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %inode_list.i.i189, align 4
  %level8.i.i190 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i183, i32 0, i32 3
  %72 = ptrtoint ptr %level8.i.i190 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %level8.i.i190, align 4
  %count9.i.i191 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i183, i32 0, i32 4
  %73 = ptrtoint ptr %count9.i.i191 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %count.0, ptr %count9.i.i191, align 8
  %parent10.i.i192 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i183, i32 0, i32 6
  %74 = ptrtoint ptr %parent10.i.i192 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %parent10.i.i192, align 8
  %wanted_disk_byte11.i.i193 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i183, i32 0, i32 7
  %75 = ptrtoint ptr %wanted_disk_byte11.i.i193 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %65, ptr %wanted_disk_byte11.i.i193, align 8
  tail call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef %indirect.i180, ptr noundef nonnull %call.i.i183, ptr noundef %sc) #13
  br i1 %tobool.not.i.i.i209, label %if.end2.i.i188.for.inc_crit_edge, label %land.rhs.i.i.i198

if.end2.i.i188.for.inc_crit_edge:                 ; preds = %if.end2.i.i188
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs.i.i.i198:                                ; preds = %if.end2.i.i188
  %76 = ptrtoint ptr %share_count.i.i.i211 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %share_count.i.i.i211, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp.i.i.i196 = icmp sgt i32 %77, 1
  br i1 %cmp.i.i.i196, label %land.rhs.i.i.i198.for.inc.fold.split_crit_edge, label %land.rhs.i.i.i198.for.inc_crit_edge

land.rhs.i.i.i198.for.inc_crit_edge:              ; preds = %land.rhs.i.i.i198
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs.i.i.i198.for.inc.fold.split_crit_edge:   ; preds = %land.rhs.i.i.i198
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.fold.split

sw.bb64:                                          ; preds = %sw.epilog
  %parent67 = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %n.0247, i32 0, i32 2
  %78 = ptrtoint ptr %parent67 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %parent67, align 8
  %bytenr68 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %n.0247, i32 0, i32 2
  %80 = ptrtoint ptr %bytenr68 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %bytenr68, align 8
  %82 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  %call.i.i201 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %82, i32 noundef 2592) #13
  %tobool.not.i.i202 = icmp eq ptr %call.i.i201, null
  br i1 %tobool.not.i.i202, label %sw.bb64.out_crit_edge, label %if.end2.i.i210

sw.bb64.out_crit_edge:                            ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end2.i.i210:                                   ; preds = %sw.bb64
  %root_id3.i.i203 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i201, i32 0, i32 1
  %inode_list.i.i204 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i201, i32 0, i32 5
  %83 = ptrtoint ptr %inode_list.i.i204 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %inode_list.i.i204, align 4
  %level8.i.i205 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i201, i32 0, i32 3
  %84 = call ptr @memset(ptr %root_id3.i.i203, i32 0, i32 25)
  %85 = ptrtoint ptr %level8.i.i205 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %level8.i.i205, align 4
  %count9.i.i206 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i201, i32 0, i32 4
  %86 = ptrtoint ptr %count9.i.i206 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %count.0, ptr %count9.i.i206, align 8
  %parent10.i.i207 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i201, i32 0, i32 6
  %87 = ptrtoint ptr %parent10.i.i207 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %79, ptr %parent10.i.i207, align 8
  %wanted_disk_byte11.i.i208 = getelementptr inbounds %struct.prelim_ref, ptr %call.i.i201, i32 0, i32 7
  %88 = ptrtoint ptr %wanted_disk_byte11.i.i208 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %81, ptr %wanted_disk_byte11.i.i208, align 8
  tail call fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef %preftrees, ptr noundef nonnull %call.i.i201, ptr noundef %sc) #13
  br i1 %tobool.not.i.i.i209, label %if.end2.i.i210.for.inc_crit_edge, label %land.rhs.i.i.i214

if.end2.i.i210.for.inc_crit_edge:                 ; preds = %if.end2.i.i210
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs.i.i.i214:                                ; preds = %if.end2.i.i210
  %89 = ptrtoint ptr %share_count.i.i.i211 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %share_count.i.i.i211, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp.i.i.i212 = icmp sgt i32 %90, 1
  br i1 %cmp.i.i.i212, label %land.rhs.i.i.i214.for.inc.fold.split_crit_edge, label %land.rhs.i.i.i214.for.inc_crit_edge

land.rhs.i.i.i214.for.inc_crit_edge:              ; preds = %land.rhs.i.i.i214
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.rhs.i.i.i214.for.inc.fold.split_crit_edge:   ; preds = %land.rhs.i.i.i214
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.fold.split

sw.epilog98:                                      ; preds = %sw.epilog
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 910, i32 noundef 9, ptr noundef null) #13
  %91 = zext i32 %ret.0246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %ret.0246, label %sw.epilog98.out_crit_edge [
    i32 0, label %sw.epilog98.for.inc_crit_edge
    i32 6, label %sw.epilog98.for.inc.fold.split_crit_edge
  ]

sw.epilog98.for.inc.fold.split_crit_edge:         ; preds = %sw.epilog98
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.fold.split

sw.epilog98.for.inc_crit_edge:                    ; preds = %sw.epilog98
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.epilog98.out_crit_edge:                        ; preds = %sw.epilog98
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc.fold.split:                               ; preds = %sw.epilog98.for.inc.fold.split_crit_edge, %land.rhs.i.i.i214.for.inc.fold.split_crit_edge, %land.rhs.i.i.i198.for.inc.fold.split_crit_edge, %land.rhs.i.i.i178.for.inc.fold.split_crit_edge, %land.rhs.i.i.i.for.inc.fold.split_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %for.inc.fold.split, %sw.epilog98.for.inc_crit_edge, %land.rhs.i.i.i214.for.inc_crit_edge, %if.end2.i.i210.for.inc_crit_edge, %land.rhs.i.i.i198.for.inc_crit_edge, %if.end2.i.i188.for.inc_crit_edge, %if.end60.for.inc_crit_edge, %land.rhs.i.i.i178.for.inc_crit_edge, %if.end2.i.i174.for.inc_crit_edge, %land.rhs.i.i.i.for.inc_crit_edge, %if.end2.i.i.for.inc_crit_edge, %sw.bb37.for.inc_crit_edge, %do.end, %for.body.for.inc_crit_edge
  %ret.3 = phi i32 [ %ret.0246, %for.body.for.inc_crit_edge ], [ %ret.0246, %sw.epilog98.for.inc_crit_edge ], [ %ret.0246, %do.end ], [ 6, %for.inc.fold.split ], [ 0, %sw.bb37.for.inc_crit_edge ], [ 0, %if.end2.i.i.for.inc_crit_edge ], [ 0, %land.rhs.i.i.i.for.inc_crit_edge ], [ 0, %if.end2.i.i174.for.inc_crit_edge ], [ 0, %land.rhs.i.i.i178.for.inc_crit_edge ], [ 0, %if.end2.i.i210.for.inc_crit_edge ], [ 0, %land.rhs.i.i.i214.for.inc_crit_edge ], [ 0, %land.rhs.i.i.i198.for.inc_crit_edge ], [ 0, %if.end2.i.i188.for.inc_crit_edge ], [ 0, %if.end60.for.inc_crit_edge ]
  %call104 = tail call ptr @rb_next(ptr noundef nonnull %n.0247) #13
  %tobool4.not = icmp eq ptr %call104, null
  br i1 %tobool4.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool105.not = icmp eq i32 %ret.3, 0
  br i1 %tobool105.not, label %for.end.if.then106_crit_edge, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.end.if.then106_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then106

if.then106:                                       ; preds = %for.end.if.then106_crit_edge, %if.end.if.then106_crit_edge
  %tobool.not.i = icmp eq ptr %sc, null
  br i1 %tobool.not.i, label %if.then106.out_crit_edge, label %land.rhs.i

if.then106.out_crit_edge:                         ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.rhs.i:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  %share_count.i = getelementptr inbounds %struct.share_check, ptr %sc, i32 0, i32 2
  %92 = ptrtoint ptr %share_count.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %share_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp.i = icmp sgt i32 %93, 1
  %phi.sel.i = select i1 %cmp.i, i32 6, i32 0
  br label %out

out:                                              ; preds = %land.rhs.i, %if.then106.out_crit_edge, %for.end.out_crit_edge, %sw.epilog98.out_crit_edge, %sw.bb64.out_crit_edge, %if.end.i.i185.out_crit_edge, %land.lhs.true53.out_crit_edge, %sw.bb39.out_crit_edge, %if.end.i.i.out_crit_edge
  %ret.5 = phi i32 [ %ret.3, %for.end.out_crit_edge ], [ 0, %if.then106.out_crit_edge ], [ %phi.sel.i, %land.rhs.i ], [ 6, %land.lhs.true53.out_crit_edge ], [ %ret.0246, %sw.epilog98.out_crit_edge ], [ -12, %if.end.i.i185.out_crit_edge ], [ -12, %if.end.i.i.out_crit_edge ], [ -12, %sw.bb39.out_crit_edge ], [ -12, %sw.bb64.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret i32 %ret.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ulist_add(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_tree_block(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_extent_in_eb(ptr noundef %eb, i64 noundef %wanted_disk_byte, i64 noundef %extent_item_pos, ptr nocapture noundef %eie, i1 noundef zeroext %ignore_offset) unnamed_addr #2 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #13
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #13
  %4 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %eb, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %6 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nritems.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp39 = icmp sgt i32 %8, 0
  br i1 %cmp39, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %9 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %slot.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #13
  %mul.i.i.i.i = mul i32 %slot.040, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %11 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %eb, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #13
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %10, align 1
  %14 = call i64 @llvm.bswap.i64(i64 %13) #13
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %1, align 1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %9, align 8
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %0, align 8
  %19 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %disk_key.i, align 8
  %21 = call i64 @llvm.bswap.i64(i64 %20) #13
  %22 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %17)
  %cmp1.not = icmp eq i8 %17, 108
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %23 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %eb, ptr noundef %23, i32 noundef 17) #13
  %add = add i32 %call.i.i, 101
  %24 = inttoptr i32 %add to ptr
  %call.i37 = call zeroext i8 @btrfs_get_8(ptr noundef %eb, ptr noundef %24, i32 noundef 20) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i37)
  %cmp6 = icmp eq i8 %call.i37, 0
  br i1 %cmp6, label %if.end.for.inc_crit_edge, label %if.end9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %call.i38 = call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %24, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i38, i64 %wanted_disk_byte)
  %cmp11.not = icmp eq i64 %call.i38, %wanted_disk_byte
  br i1 %cmp11.not, label %if.end14, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end14:                                         ; preds = %if.end9
  %call15 = call fastcc i32 @check_extent_in_eb(ptr noundef nonnull %key, ptr noundef %eb, ptr noundef %24, i64 noundef %extent_item_pos, ptr noundef %eie, i1 noundef zeroext %ignore_offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %slot.040, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prelim_ref_insert(ptr noundef %fs_info, ptr noundef %preftree, ptr noundef %newref, ptr noundef %sc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %preftree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %preftree, align 4
  %tobool.not94 = icmp eq ptr %1, null
  br i1 %tobool.not94, label %entry.while.end25_crit_edge, label %while.body.lr.ph

entry.while.end25_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end25

while.body.lr.ph:                                 ; preds = %entry
  %level1.i = getelementptr inbounds %struct.prelim_ref, ptr %newref, i32 0, i32 3
  %2 = ptrtoint ptr %level1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level1.i, align 4
  %root_id7.i = getelementptr inbounds %struct.prelim_ref, ptr %newref, i32 0, i32 1
  %key_for_search16.i = getelementptr inbounds %struct.prelim_ref, ptr %newref, i32 0, i32 2
  %type17.i = getelementptr inbounds %struct.prelim_ref, ptr %newref, i32 0, i32 2, i32 1
  %offset50.i = getelementptr inbounds %struct.prelim_ref, ptr %newref, i32 0, i32 2, i32 2
  %parent63.i = getelementptr inbounds %struct.prelim_ref, ptr %newref, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %1, %while.body.lr.ph ], [ %51, %if.end24.while.body_crit_edge ]
  %leftmost.0.off095 = phi i1 [ true, %while.body.lr.ph ], [ %leftmost.1.off0, %if.end24.while.body_crit_edge ]
  %level.i = getelementptr inbounds %struct.prelim_ref, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp.i = icmp slt i32 %6, %3
  br i1 %cmp.i, label %while.body.if.then_crit_edge, label %if.end.i

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp4.i = icmp sgt i32 %6, %3
  br i1 %cmp4.i, label %if.end.i.if.then3_crit_edge, label %if.end6.i

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end6.i:                                        ; preds = %if.end.i
  %root_id.i = getelementptr inbounds %struct.prelim_ref, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %root_id.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %root_id.i, align 8
  %9 = ptrtoint ptr %root_id7.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %root_id7.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp8.i = icmp ult i64 %8, %10
  br i1 %cmp8.i, label %if.end6.i.if.then_crit_edge, label %if.end10.i

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp13.i = icmp ugt i64 %8, %10
  br i1 %cmp13.i, label %if.end10.i.if.then3_crit_edge, label %if.end15.i

if.end10.i.if.then3_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end15.i:                                       ; preds = %if.end10.i
  %key_for_search.i = getelementptr inbounds %struct.prelim_ref, ptr %4, i32 0, i32 2
  %type.i = getelementptr inbounds %struct.prelim_ref, ptr %4, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 8
  %13 = ptrtoint ptr %type17.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type17.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp19.i = icmp ult i8 %12, %14
  br i1 %cmp19.i, label %if.end15.i.if.then_crit_edge, label %if.end22.i

if.end15.i.if.then_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp29.i = icmp ugt i8 %12, %14
  br i1 %cmp29.i, label %if.end22.i.if.then3_crit_edge, label %if.end32.i

if.end22.i.if.then3_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end32.i:                                       ; preds = %if.end22.i
  %15 = ptrtoint ptr %key_for_search.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %key_for_search.i, align 8
  %17 = ptrtoint ptr %key_for_search16.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %key_for_search16.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp36.i = icmp ult i64 %16, %18
  br i1 %cmp36.i, label %if.end32.i.if.then_crit_edge, label %if.end39.i

if.end32.i.if.then_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp44.i = icmp ugt i64 %16, %18
  br i1 %cmp44.i, label %if.end39.i.if.then3_crit_edge, label %if.end47.i

if.end39.i.if.then3_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end47.i:                                       ; preds = %if.end39.i
  %offset.i = getelementptr inbounds %struct.prelim_ref, ptr %4, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %offset.i, align 1
  %21 = ptrtoint ptr %offset50.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %offset50.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp51.i = icmp ult i64 %20, %22
  br i1 %cmp51.i, label %if.end47.i.if.then_crit_edge, label %if.end54.i

if.end47.i.if.then_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end54.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp59.i = icmp ugt i64 %20, %22
  br i1 %cmp59.i, label %if.end54.i.if.then3_crit_edge, label %if.end62.i

if.end54.i.if.then3_crit_edge:                    ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.end62.i:                                       ; preds = %if.end54.i
  %parent.i = getelementptr inbounds %struct.prelim_ref, ptr %4, i32 0, i32 6
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %parent.i, align 8
  %25 = ptrtoint ptr %parent63.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %parent63.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp64.i = icmp ult i64 %24, %26
  br i1 %cmp64.i, label %if.end62.i.if.then_crit_edge, label %if.else

if.end62.i.if.then_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %if.end62.i.if.then_crit_edge, %if.end47.i.if.then_crit_edge, %if.end32.i.if.then_crit_edge, %if.end15.i.if.then_crit_edge, %if.end6.i.if.then_crit_edge, %while.body.if.then_crit_edge
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  br label %if.end24

if.else:                                          ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp70.i.not = icmp ugt i64 %24, %26
  br i1 %cmp70.i.not, label %if.else.if.then3_crit_edge, label %if.else4

if.else.if.then3_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.then3:                                         ; preds = %if.else.if.then3_crit_edge, %if.end54.i.if.then3_crit_edge, %if.end39.i.if.then3_crit_edge, %if.end22.i.if.then3_crit_edge, %if.end10.i.if.then3_crit_edge, %if.end.i.if.then3_crit_edge
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  br label %if.end24

if.else4:                                         ; preds = %if.else
  %inode_list = getelementptr inbounds %struct.prelim_ref, ptr %4, i32 0, i32 5
  %27 = ptrtoint ptr %inode_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %inode_list, align 4
  br label %while.cond5

while.cond5:                                      ; preds = %land.rhs.while.cond5_crit_edge, %if.else4
  %eie.0 = phi ptr [ %28, %if.else4 ], [ %30, %land.rhs.while.cond5_crit_edge ]
  %tobool6.not = icmp eq ptr %eie.0, null
  br i1 %tobool6.not, label %if.then11.critedge, label %land.rhs

land.rhs:                                         ; preds = %while.cond5
  %next = getelementptr inbounds %struct.extent_inode_elem, ptr %eie.0, i32 0, i32 2
  %29 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %next, align 8
  %tobool7.not = icmp eq ptr %30, null
  br i1 %tobool7.not, label %if.else14, label %land.rhs.while.cond5_crit_edge

land.rhs.while.cond5_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond5

if.then11.critedge:                               ; preds = %while.cond5
  call void @__sanitizer_cov_trace_pc() #15
  %inode_list12 = getelementptr inbounds %struct.prelim_ref, ptr %newref, i32 0, i32 5
  %31 = ptrtoint ptr %inode_list12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %inode_list12, align 4
  %33 = ptrtoint ptr %inode_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %inode_list, align 4
  br label %if.end

if.else14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %next.le = getelementptr inbounds %struct.extent_inode_elem, ptr %eie.0, i32 0, i32 2
  %inode_list15 = getelementptr inbounds %struct.prelim_ref, ptr %newref, i32 0, i32 5
  %34 = ptrtoint ptr %inode_list15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %inode_list15, align 4
  %36 = ptrtoint ptr %next.le to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %next.le, align 8
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then11.critedge
  %count = getelementptr inbounds %struct.preftree, ptr %preftree, i32 0, i32 1
  %37 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count, align 4
  %conv = zext i32 %38 to i64
  tail call fastcc void @trace_btrfs_prelim_ref_merge(ptr noundef %fs_info, ptr noundef nonnull %4, ptr noundef %newref, i64 noundef %conv)
  %count17 = getelementptr inbounds %struct.prelim_ref, ptr %4, i32 0, i32 4
  %39 = ptrtoint ptr %count17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count17, align 8
  %count19 = getelementptr inbounds %struct.prelim_ref, ptr %newref, i32 0, i32 4
  %41 = ptrtoint ptr %count19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count19, align 8
  %add = add i32 %42, %40
  %tobool.not.i = icmp eq ptr %sc, null
  br i1 %tobool.not.i, label %if.end.update_share_count.exit_crit_edge, label %lor.lhs.false.i

if.end.update_share_count.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_share_count.exit

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i71 = icmp eq i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp1.i = icmp slt i32 %add, 1
  %or.cond.i = and i1 %cmp.i71, %cmp1.i
  br i1 %or.cond.i, label %lor.lhs.false.i.update_share_count.exit_crit_edge, label %if.end.i72

lor.lhs.false.i.update_share_count.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_share_count.exit

if.end.i72:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp2.i = icmp sgt i32 %40, 0
  %or.cond19.i = and i1 %cmp2.i, %cmp1.i
  br i1 %or.cond19.i, label %if.end.i72.if.end12.sink.split.i_crit_edge, label %if.else.i

if.end.i72.if.end12.sink.split.i_crit_edge:       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp6.i = icmp slt i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp8.i73 = icmp sgt i32 %add, 0
  %or.cond20.i = and i1 %cmp6.i, %cmp8.i73
  br i1 %or.cond20.i, label %if.else.i.if.end12.sink.split.i_crit_edge, label %if.else.i.update_share_count.exit_crit_edge

if.else.i.update_share_count.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_share_count.exit

if.else.i.if.end12.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %if.else.i.if.end12.sink.split.i_crit_edge, %if.end.i72.if.end12.sink.split.i_crit_edge
  %.sink21.i = phi i32 [ -1, %if.end.i72.if.end12.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end12.sink.split.i_crit_edge ]
  %share_count.i = getelementptr inbounds %struct.share_check, ptr %sc, i32 0, i32 2
  %43 = ptrtoint ptr %share_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %share_count.i, align 8
  %inc.i = add i32 %44, %.sink21.i
  store i32 %inc.i, ptr %share_count.i, align 8
  br label %update_share_count.exit

update_share_count.exit:                          ; preds = %if.end12.sink.split.i, %if.else.i.update_share_count.exit_crit_edge, %lor.lhs.false.i.update_share_count.exit_crit_edge, %if.end.update_share_count.exit_crit_edge
  %45 = ptrtoint ptr %count19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count19, align 8
  %47 = ptrtoint ptr %count17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count17, align 8
  %add22 = add i32 %48, %46
  store i32 %add22, ptr %count17, align 8
  %49 = load ptr, ptr @btrfs_prelim_ref_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %49, ptr noundef %newref) #13
  br label %cleanup

if.end24:                                         ; preds = %if.then3, %if.then
  %leftmost.1.off0 = phi i1 [ %leftmost.0.off095, %if.then ], [ false, %if.then3 ]
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then3 ]
  %50 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %51, null
  br i1 %tobool.not, label %while.cond.while.end25_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.while.end25_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.le = ptrtoint ptr %4 to i32
  br label %while.end25

while.end25:                                      ; preds = %while.cond.while.end25_crit_edge, %entry.while.end25_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end25_crit_edge ], [ 0, %entry.while.end25_crit_edge ]
  %leftmost.0.off0.lcssa = phi i1 [ %leftmost.1.off0, %while.cond.while.end25_crit_edge ], [ true, %entry.while.end25_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end25_crit_edge ], [ %preftree, %entry.while.end25_crit_edge ]
  %count26 = getelementptr inbounds %struct.prelim_ref, ptr %newref, i32 0, i32 4
  %52 = ptrtoint ptr %count26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count26, align 8
  %tobool.not.i74 = icmp eq ptr %sc, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp1.i75 = icmp slt i32 %53, 1
  %or.cond = select i1 %tobool.not.i74, i1 true, i1 %cmp1.i75
  br i1 %or.cond, label %while.end25.update_share_count.exit84_crit_edge, label %if.end12.sink.split.i83

while.end25.update_share_count.exit84_crit_edge:  ; preds = %while.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_share_count.exit84

if.end12.sink.split.i83:                          ; preds = %while.end25
  call void @__sanitizer_cov_trace_pc() #15
  %share_count.i81 = getelementptr inbounds %struct.share_check, ptr %sc, i32 0, i32 2
  %54 = ptrtoint ptr %share_count.i81 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %share_count.i81, align 8
  %inc.i82 = add i32 %55, 1
  store i32 %inc.i82, ptr %share_count.i81, align 8
  br label %update_share_count.exit84

update_share_count.exit84:                        ; preds = %if.end12.sink.split.i83, %while.end25.update_share_count.exit84_crit_edge
  %count27 = getelementptr inbounds %struct.preftree, ptr %preftree, i32 0, i32 1
  %56 = ptrtoint ptr %count27 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count27, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %count27, align 4
  %conv29 = zext i32 %inc to i64
  tail call fastcc void @trace_btrfs_prelim_ref_insert(ptr noundef %fs_info, ptr noundef %newref, i64 noundef %conv29)
  %58 = ptrtoint ptr %newref to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %parent.0.lcssa, ptr %newref, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %newref, i32 0, i32 1
  %59 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %newref, i32 0, i32 2
  %60 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %rb_left.i, align 4
  %61 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %newref, ptr %p.0.lcssa, align 4
  br i1 %leftmost.0.off0.lcssa, label %if.then.i, label %update_share_count.exit84.rb_insert_color_cached.exit_crit_edge

update_share_count.exit84.rb_insert_color_cached.exit_crit_edge: ; preds = %update_share_count.exit84
  call void @__sanitizer_cov_trace_pc() #15
  br label %rb_insert_color_cached.exit

if.then.i:                                        ; preds = %update_share_count.exit84
  call void @__sanitizer_cov_trace_pc() #15
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %preftree, i32 0, i32 1
  %62 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %newref, ptr %rb_leftmost.i, align 4
  br label %rb_insert_color_cached.exit

rb_insert_color_cached.exit:                      ; preds = %if.then.i, %update_share_count.exit84.rb_insert_color_cached.exit_crit_edge
  tail call void @rb_insert_color(ptr noundef %newref, ptr noundef %preftree) #13
  br label %cleanup

cleanup:                                          ; preds = %rb_insert_color_cached.exit, %update_share_count.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_prelim_ref_merge(ptr noundef %fs_info, ptr noundef %oldref, ptr noundef %newref, i64 noundef %tree_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_prelim_ref_merge, i32 0, i32 1), ptr blockaddress(@trace_btrfs_prelim_ref_merge, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !127) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !127) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !163
  %call42 = tail call i32 @__traceiter_btrfs_prelim_ref_merge(ptr noundef null, ptr noundef %fs_info, ptr noundef %oldref, ptr noundef %newref, i64 noundef %tree_size) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !164
  %13 = tail call i32 @llvm.read_register.i32(metadata !127) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !127) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !127) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_prelim_ref_merge, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_prelim_ref_merge, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_btrfs_prelim_ref_merge.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_btrfs_prelim_ref_merge.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 1835, ptr noundef nonnull @.str.32) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !166
  %31 = tail call i32 @llvm.read_register.i32(metadata !127) #13
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_prelim_ref_insert(ptr noundef %fs_info, ptr noundef %oldref, i64 noundef %tree_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_prelim_ref_insert, i32 0, i32 1), ptr blockaddress(@trace_btrfs_prelim_ref_insert, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !151

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !127) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !127) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !167
  %call42 = tail call i32 @__traceiter_btrfs_prelim_ref_insert(ptr noundef null, ptr noundef %fs_info, ptr noundef %oldref, ptr noundef null, i64 noundef %tree_size) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %13 = tail call i32 @llvm.read_register.i32(metadata !127) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !127) #13
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !140

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !127) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_prelim_ref_insert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_prelim_ref_insert, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_btrfs_prelim_ref_insert.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_btrfs_prelim_ref_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 1842, ptr noundef nonnull @.str.32) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !166
  %31 = tail call i32 @llvm.read_register.i32(metadata !127) #13
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
declare dso_local i32 @__traceiter_btrfs_prelim_ref_merge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_prelim_ref_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_node_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @resolve_indirect_ref(ptr noundef %fs_info, ptr noundef %path, i64 noundef %time_seq, ptr nocapture noundef readonly %preftrees, ptr nocapture noundef readonly %ref, ptr noundef %parents, ptr noundef readonly %extent_item_pos, i1 noundef zeroext %ignore_offset) unnamed_addr #2 align 64 {
entry:
  %old64.i.i = alloca i64, align 8
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  %key.i = alloca %struct.btrfs_key, align 8
  %eie.i = alloca ptr, align 4
  %search_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %level1 = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 3
  %0 = ptrtoint ptr %level1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %search_key) #13
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %search_key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %search_key, i32 0, i32 2
  %key_for_search = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %search_key, ptr %key_for_search, i32 17)
  %search_commit_root = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 5
  %5 = ptrtoint ptr %search_commit_root to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %search_commit_root, align 2
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %root_id2 = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 1
  %7 = ptrtoint ptr %root_id2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %root_id2, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call ptr @btrfs_get_fs_root_commit_root(ptr noundef %fs_info, ptr noundef %path, i64 noundef %8) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call ptr @btrfs_get_fs_root(ptr noundef %fs_info, i64 noundef %8, i1 noundef zeroext false) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %root.0 = phi ptr [ %call, %if.then ], [ %call3, %if.else ]
  %cmp.i = icmp ugt ptr %root.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %root.0 to i32
  br label %out_free

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %search_commit_root to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load9 = load i8, ptr %search_commit_root, align 2
  %11 = and i8 %bf.load9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end17.thread

land.lhs.true:                                    ; preds = %if.end7
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root.0, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state, align 4
  %14 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %if.end17, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end17:                                         ; preds = %land.lhs.true
  %fs_state.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %15 = ptrtoint ptr %fs_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %fs_state.i, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %if.else30, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end17.thread:                                  ; preds = %if.end7
  %fs_state.i176 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %18 = ptrtoint ptr %fs_state.i176 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %fs_state.i176, align 4
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not179 = icmp eq i32 %20, 0
  br i1 %tobool19.not179, label %if.then28, label %if.end17.thread.out_crit_edge

if.end17.thread.out_crit_edge:                    ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then28:                                        ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #15
  %commit_root = getelementptr inbounds %struct.btrfs_root, ptr %root.0, i32 0, i32 2
  %21 = ptrtoint ptr %commit_root to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %commit_root, align 8
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %24) #13
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %22, align 8
  %conv.i = trunc i64 %26 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %27 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %level.i, align 1
  %conv = zext i8 %28 to i32
  br label %if.end38

if.else30:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %time_seq)
  %cmp = icmp eq i64 %time_seq, -1
  br i1 %cmp, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root.0, i32 0, i32 1
  %29 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %node, align 4
  %pages.i167 = getelementptr inbounds %struct.extent_buffer, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %pages.i167 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pages.i167, align 4
  %call.i168 = tail call ptr @page_address(ptr noundef %32) #13
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %30, align 8
  %conv.i169 = trunc i64 %34 to i32
  %and.i170 = and i32 %conv.i169, 4095
  %add.ptr.i171 = getelementptr i8, ptr %call.i168, i32 %and.i170
  %level.i172 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i171, i32 0, i32 8
  %35 = ptrtoint ptr %level.i172 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %level.i172, align 1
  %conv34 = zext i8 %36 to i32
  br label %if.end38

if.else35:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  %call36 = tail call i32 @btrfs_old_root_level(ptr noundef %root.0, i64 noundef %time_seq) #13
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then32, %if.then28
  %root_level.0 = phi i32 [ %conv, %if.then28 ], [ %conv34, %if.then32 ], [ %call36, %if.else35 ]
  %add = add i32 %root_level.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp39 = icmp eq i32 %add, %1
  br i1 %cmp39, label %if.end38.out_crit_edge, label %if.end42

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end42:                                         ; preds = %if.end38
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %38)
  %cmp44 = icmp eq i8 %38, 108
  br i1 %cmp44, label %land.lhs.true46, label %if.end42.if.end51_crit_edge

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.lhs.true46:                                  ; preds = %if.end42
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775806, i64 %40)
  %cmp47 = icmp ugt i64 %40, 9223372036854775806
  br i1 %cmp47, label %if.then49, label %land.lhs.true46.if.end51_crit_edge

land.lhs.true46.if.end51_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %3, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %land.lhs.true46.if.end51_crit_edge, %if.end42.if.end51_crit_edge
  %conv52 = trunc i32 %1 to i8
  %lowest_level = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 4
  %42 = ptrtoint ptr %lowest_level to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv52, ptr %lowest_level, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %time_seq)
  %cmp53 = icmp eq i64 %time_seq, -1
  br i1 %cmp53, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %call56 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root.0, ptr noundef nonnull %search_key, ptr noundef %path, i32 noundef 0, i32 noundef 0) #13
  br label %do.body

if.else57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %call58 = call i32 @btrfs_search_old_slot(ptr noundef %root.0, ptr noundef nonnull %search_key, ptr noundef %path, i64 noundef %time_seq) #13
  br label %do.body

do.body:                                          ; preds = %if.else57, %if.then55
  %ret.0 = phi i32 [ %call56, %if.then55 ], [ %call58, %if.else57 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resolve_indirect_ref.__UNIQUE_ID_ddebug924, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resolve_indirect_ref, %if.then65)) #13
          to label %do.end [label %if.then65], !srcloc !151

if.then65:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %root_id66 = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 1
  %43 = ptrtoint ptr %root_id66 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %root_id66, align 8
  %count = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 4
  %45 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count, align 8
  %47 = ptrtoint ptr %key_for_search to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %key_for_search, align 8
  %type69 = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %type69 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %type69, align 8
  %conv70 = zext i8 %50 to i32
  %offset72 = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %offset72 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %offset72, align 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.37, i64 noundef %44, i32 noundef %1, i32 noundef %46, i32 noundef %ret.0, i64 noundef %48, i32 noundef %conv70, i64 noundef %52) #17
  br label %do.end

do.end:                                           ; preds = %if.then65, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp74 = icmp slt i32 %ret.0, 0
  br i1 %cmp74, label %do.end.out_crit_edge, label %while.cond.preheader

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.cond.preheader:                             ; preds = %do.end
  %eb.0.in191 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %1
  %53 = ptrtoint ptr %eb.0.in191 to i32
  call void @__asan_load4_noabort(i32 %53)
  %eb.0192 = load ptr, ptr %eb.0.in191, align 4
  %tobool78.not193 = icmp eq ptr %eb.0192, null
  br i1 %tobool78.not193, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end115.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %level.0194 = phi i32 [ %dec, %if.end115.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0194)
  %tobool81.not = icmp eq i32 %level.0194, 0
  br i1 %tobool81.not, label %do.end99, label %if.end115, !prof !139

do.end99:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 624, i32 noundef 9, ptr noundef null) #13
  br label %out

if.end115:                                        ; preds = %while.body
  %dec = add i32 %level.0194, -1
  %eb.0.in = getelementptr [8 x ptr], ptr %path, i32 0, i32 %dec
  %54 = ptrtoint ptr %eb.0.in to i32
  call void @__asan_load4_noabort(i32 %54)
  %eb.0 = load ptr, ptr %eb.0.in, align 4
  %tobool78.not = icmp eq ptr %eb.0, null
  br i1 %tobool78.not, label %if.end115.while.body_crit_edge, label %if.end115.while.end_crit_edge

if.end115.while.end_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end115.while.body_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end115.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %level.0.lcssa = phi i32 [ %1, %while.cond.preheader.while.end_crit_edge ], [ %dec, %if.end115.while.end_crit_edge ]
  %eb.0.lcssa = phi ptr [ %eb.0192, %while.cond.preheader.while.end_crit_edge ], [ %eb.0, %if.end115.while.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #13
  %55 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %56 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %57 = call ptr @memset(ptr %key.i, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eie.i) #13
  %58 = ptrtoint ptr %eie.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %eie.i, align 4
  %wanted_disk_byte2.i = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 7
  %59 = ptrtoint ptr %wanted_disk_byte2.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %wanted_disk_byte2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0.lcssa)
  %cmp.not.i = icmp eq i32 %level.0.lcssa, 0
  br i1 %cmp.not.i, label %if.end5.i, label %if.then.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %eb.0.lcssa to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %eb.0.lcssa, align 8
  %call.i173 = call i32 @ulist_add(ptr noundef %parents, i64 noundef %62, i64 noundef 0, i32 noundef 3136) #13
  %63 = call i32 @llvm.smin.i32(i32 %call.i173, i32 0) #13
  br label %add_all_parents.exit

if.end5.i:                                        ; preds = %while.end
  %64 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %path, align 4
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %66 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %slots.i, align 4
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %65, i32 0, i32 12
  %68 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = call ptr @page_address(ptr noundef %69) #13
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %65, align 8
  %conv.i.i = trunc i64 %71 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %72 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %nritems.i.i, align 1
  %74 = call i32 @llvm.bswap.i32(i32 %73) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %74)
  %cmp10.not.i = icmp ult i32 %67, %74
  br i1 %cmp10.not.i, label %lor.lhs.false.i, label %if.end5.i.if.then16.i_crit_edge

if.end5.i.if.then16.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %75 = ptrtoint ptr %preftrees to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %preftrees, align 4
  %tobool.not21.i.i = icmp eq ptr %76, null
  br i1 %tobool.not21.i.i, label %lor.lhs.false.i.lor.lhs.false13.i_crit_edge, label %lor.lhs.false.i.while.body.i.i_crit_edge

lor.lhs.false.i.while.body.i.i_crit_edge:         ; preds = %lor.lhs.false.i
  br label %while.body.i.i

lor.lhs.false.i.lor.lhs.false13.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false13.i

while.body.i.i:                                   ; preds = %if.end5.i.i.while.body.i.i_crit_edge, %lor.lhs.false.i.while.body.i.i_crit_edge
  %77 = phi ptr [ %91, %if.end5.i.i.while.body.i.i_crit_edge ], [ %76, %lor.lhs.false.i.while.body.i.i_crit_edge ]
  %level.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %level.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i.i.i = icmp slt i32 %79, 0
  br i1 %cmp.i.i.i, label %while.body.i.i.if.then.i.i_crit_edge, label %if.end.i.i.i

while.body.i.i.if.then.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp4.i.not.i.i = icmp eq i32 %79, 0
  br i1 %cmp4.i.not.i.i, label %if.end10.i.i.i, label %if.end.i.i.i.if.then3.i.i_crit_edge

if.end.i.i.i.if.then3.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i.i

if.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  %root_id.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %77, i32 0, i32 1
  %80 = ptrtoint ptr %root_id.i.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %root_id.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %81)
  %cmp13.i.not.i.i = icmp eq i64 %81, 0
  br i1 %cmp13.i.not.i.i, label %if.end22.i.i.i, label %if.end10.i.i.i.if.then3.i.i_crit_edge

if.end10.i.i.i.if.then3.i.i_crit_edge:            ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i.i

if.end22.i.i.i:                                   ; preds = %if.end10.i.i.i
  %type.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %77, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %type.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp29.i.not.i.i = icmp eq i8 %83, 0
  br i1 %cmp29.i.not.i.i, label %if.end39.i.i.i, label %if.end22.i.i.i.if.then3.i.i_crit_edge

if.end22.i.i.i.if.then3.i.i_crit_edge:            ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i.i

if.end39.i.i.i:                                   ; preds = %if.end22.i.i.i
  %key_for_search.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %77, i32 0, i32 2
  %84 = ptrtoint ptr %key_for_search.i.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %key_for_search.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %85)
  %cmp44.i.not.i.i = icmp eq i64 %85, 0
  br i1 %cmp44.i.not.i.i, label %if.end54.i.i.i, label %if.end39.i.i.i.if.then3.i.i_crit_edge

if.end39.i.i.i.if.then3.i.i_crit_edge:            ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i.i

if.end54.i.i.i:                                   ; preds = %if.end39.i.i.i
  %offset.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %77, i32 0, i32 2, i32 2
  %86 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %87 = load i64, ptr %offset.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %87)
  %cmp59.i.not.i.i = icmp eq i64 %87, 0
  br i1 %cmp59.i.not.i.i, label %if.end62.i.i.i, label %if.end54.i.i.i.if.then3.i.i_crit_edge

if.end54.i.i.i.if.then3.i.i_crit_edge:            ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i.i

if.end62.i.i.i:                                   ; preds = %if.end54.i.i.i
  %parent.i.i.i = getelementptr inbounds %struct.prelim_ref, ptr %77, i32 0, i32 6
  %88 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %parent.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %71)
  %cmp64.i.i.i = icmp ult i64 %89, %71
  br i1 %cmp64.i.i.i, label %if.end62.i.i.i.if.then.i.i_crit_edge, label %if.else.i.i

if.end62.i.i.i.if.then.i.i_crit_edge:             ; preds = %if.end62.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end62.i.i.i.if.then.i.i_crit_edge, %while.body.i.i.if.then.i.i_crit_edge
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 2
  br label %if.end5.i.i

if.else.i.i:                                      ; preds = %if.end62.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %71)
  %cmp70.i.not.i.i = icmp ugt i64 %89, %71
  br i1 %cmp70.i.not.i.i, label %if.else.i.i.if.then3.i.i_crit_edge, label %if.else.i.i.if.then16.i_crit_edge

if.else.i.i.if.then16.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16.i

if.else.i.i.if.then3.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i.if.then3.i.i_crit_edge, %if.end54.i.i.i.if.then3.i.i_crit_edge, %if.end39.i.i.i.if.then3.i.i_crit_edge, %if.end22.i.i.i.if.then3.i.i_crit_edge, %if.end10.i.i.i.if.then3.i.i_crit_edge, %if.end.i.i.i.if.then3.i.i_crit_edge
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 1
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %p.1.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %90 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %p.1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %91, null
  br i1 %tobool.not.i.i, label %if.end5.i.i.lor.lhs.false13.i_crit_edge, label %if.end5.i.i.while.body.i.i_crit_edge

if.end5.i.i.while.body.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end5.i.i.lor.lhs.false13.i_crit_edge:          ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false13.i

lor.lhs.false13.i:                                ; preds = %if.end5.i.i.lor.lhs.false13.i_crit_edge, %lor.lhs.false.i.lor.lhs.false13.i_crit_edge
  %root_id.i = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 1
  %92 = ptrtoint ptr %root_id.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %root_id.i, align 8
  %94 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pages.i.i, align 4
  %call.i187.i = call ptr @page_address(ptr noundef %95) #13
  %96 = ptrtoint ptr %65 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %65, align 8
  %conv.i188.i = trunc i64 %97 to i32
  %and.i189.i = and i32 %conv.i188.i, 4095
  %add.ptr.i190.i = getelementptr i8, ptr %call.i187.i, i32 %and.i189.i
  %owner.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i190.i, i32 0, i32 6
  %98 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %99 = load i64, ptr %owner.i.i, align 1
  %100 = call i64 @llvm.bswap.i64(i64 %99) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %100)
  %cmp15.not.i = icmp eq i64 %93, %100
  br i1 %cmp15.not.i, label %lor.lhs.false13.i.land.rhs.lr.ph.lr.ph.i_crit_edge, label %lor.lhs.false13.i.if.then16.i_crit_edge

lor.lhs.false13.i.if.then16.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16.i

lor.lhs.false13.i.land.rhs.lr.ph.lr.ph.i_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.lr.ph.lr.ph.i

if.then16.i:                                      ; preds = %lor.lhs.false13.i.if.then16.i_crit_edge, %if.else.i.i.if.then16.i_crit_edge, %if.end5.i.if.then16.i_crit_edge
  %.time_seq.i = select i1 %cmp53, i64 0, i64 %time_seq
  %call.i191.i = call i32 @btrfs_next_old_leaf(ptr noundef %root.0, ptr noundef %path, i64 noundef %.time_seq.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191.i)
  %tobool23.not263274.i = icmp eq i32 %call.i191.i, 0
  br i1 %tobool23.not263274.i, label %if.then16.i.land.rhs.lr.ph.lr.ph.i_crit_edge, label %if.then16.i.while.end110.i_crit_edge

if.then16.i.while.end110.i_crit_edge:             ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end110.i

if.then16.i.land.rhs.lr.ph.lr.ph.i_crit_edge:     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.lr.ph.lr.ph.i

land.rhs.lr.ph.lr.ph.i:                           ; preds = %if.then16.i.land.rhs.lr.ph.lr.ph.i_crit_edge, %lor.lhs.false13.i.land.rhs.lr.ph.lr.ph.i_crit_edge
  %count24.i = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 4
  %101 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 1
  %102 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  %root_id46.i = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 1
  %offset.i = getelementptr inbounds %struct.prelim_ref, ptr %ref, i32 0, i32 2, i32 2
  %tobool72.not.i = icmp eq ptr %extent_item_pos, null
  %103 = ptrtoint ptr %count24.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %count24.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp25.i197202.not = icmp eq i32 %104, 0
  br i1 %cmp25.i197202.not, label %land.rhs.lr.ph.lr.ph.i.add_all_parents.exit_crit_edge, label %while.body.i.lr.ph.lr.ph

land.rhs.lr.ph.lr.ph.i.add_all_parents.exit_crit_edge: ; preds = %land.rhs.lr.ph.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %add_all_parents.exit

while.body.i.lr.ph.lr.ph:                         ; preds = %land.rhs.lr.ph.lr.ph.i
  %.time_seq309.i = select i1 %cmp53, i64 0, i64 %time_seq
  br label %while.body.i.lr.ph

land.rhs.lr.ph.i:                                 ; preds = %if.end109.i.land.rhs.lr.ph.i_crit_edge, %next102.i.land.rhs.lr.ph.i_crit_edge
  %105 = ptrtoint ptr %count24.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %count24.i, align 8
  %conv.i174196 = sext i32 %106 to i64
  %cmp25.i197 = icmp ult i64 %count.1.i, %conv.i174196
  br i1 %cmp25.i197, label %land.rhs.lr.ph.i.while.body.i.lr.ph_crit_edge, label %land.rhs.lr.ph.i.add_all_parents.exit_crit_edge

land.rhs.lr.ph.i.add_all_parents.exit_crit_edge:  ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %add_all_parents.exit

land.rhs.lr.ph.i.while.body.i.lr.ph_crit_edge:    ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.lr.ph

while.body.i.lr.ph:                               ; preds = %land.rhs.lr.ph.i.while.body.i.lr.ph_crit_edge, %while.body.i.lr.ph.lr.ph
  %count.0.ph275.i203 = phi i64 [ 0, %while.body.i.lr.ph.lr.ph ], [ %count.1.i, %land.rhs.lr.ph.i.while.body.i.lr.ph_crit_edge ]
  br label %while.body.i

land.rhs.i:                                       ; preds = %if.then50.i
  %107 = ptrtoint ptr %count24.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %count24.i, align 8
  %conv.i174 = sext i32 %108 to i64
  %cmp25.i = icmp ult i64 %count.0.ph275.i203, %conv.i174
  br i1 %cmp25.i, label %land.rhs.i.while.body.i_crit_edge, label %land.rhs.i.add_all_parents.exit_crit_edge

land.rhs.i.add_all_parents.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %add_all_parents.exit

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %while.body.i.lr.ph
  %109 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %path, align 4
  %111 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %slots.i, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #13
  %mul.i.i.i.i.i = mul i32 %112, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %113 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %110, ptr noundef nonnull %disk_key.i.i, i32 noundef %add.i.i.i.i.i, i32 noundef 17) #13
  %114 = ptrtoint ptr %102 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 8)
  %115 = load i64, ptr %102, align 1
  %116 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %101, align 8
  %118 = ptrtoint ptr %disk_key.i.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %disk_key.i.i, align 8
  %120 = call i64 @llvm.bswap.i64(i64 %119) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #13
  %121 = ptrtoint ptr %key_for_search to i32
  call void @__asan_loadN_noabort(i32 %121, i32 8)
  %122 = load i64, ptr %key_for_search, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %120, i64 %122)
  %cmp32.not.i = icmp eq i64 %120, %122
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %117)
  %cmp36.not.i = icmp eq i8 %117, 108
  %or.cond.i = select i1 %cmp32.not.i, i1 %cmp36.not.i, i1 false
  br i1 %or.cond.i, label %if.end39.i, label %while.body.i.add_all_parents.exit_crit_edge

while.body.i.add_all_parents.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %add_all_parents.exit

if.end39.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp40.i = icmp eq i32 %112, 0
  br i1 %cmp40.i, label %land.lhs.true.i, label %if.end39.i.if.end58.i_crit_edge

if.end39.i.if.end58.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

land.lhs.true.i:                                  ; preds = %if.end39.i
  %123 = ptrtoint ptr %110 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %110, align 8
  %125 = ptrtoint ptr %preftrees to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %preftrees, align 4
  %tobool.not21.i192.i = icmp eq ptr %126, null
  br i1 %tobool.not21.i192.i, label %land.lhs.true.i.lor.lhs.false45.i_crit_edge, label %land.lhs.true.i.while.body.i195.i_crit_edge

land.lhs.true.i.while.body.i195.i_crit_edge:      ; preds = %land.lhs.true.i
  br label %while.body.i195.i

land.lhs.true.i.lor.lhs.false45.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false45.i

while.body.i195.i:                                ; preds = %if.end5.i221.i.while.body.i195.i_crit_edge, %land.lhs.true.i.while.body.i195.i_crit_edge
  %127 = phi ptr [ %141, %if.end5.i221.i.while.body.i195.i_crit_edge ], [ %126, %land.lhs.true.i.while.body.i195.i_crit_edge ]
  %level.i.i193.i = getelementptr inbounds %struct.prelim_ref, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %level.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %level.i.i193.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp.i.i194.i = icmp slt i32 %129, 0
  br i1 %cmp.i.i194.i, label %while.body.i195.i.if.then.i214.i_crit_edge, label %if.end.i.i197.i

while.body.i195.i.if.then.i214.i_crit_edge:       ; preds = %while.body.i195.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i214.i

if.end.i.i197.i:                                  ; preds = %while.body.i195.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp4.i.not.i196.i = icmp eq i32 %129, 0
  br i1 %cmp4.i.not.i196.i, label %if.end10.i.i200.i, label %if.end.i.i197.i.if.then3.i218.i_crit_edge

if.end.i.i197.i.if.then3.i218.i_crit_edge:        ; preds = %if.end.i.i197.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i218.i

if.end10.i.i200.i:                                ; preds = %if.end.i.i197.i
  %root_id.i.i198.i = getelementptr inbounds %struct.prelim_ref, ptr %127, i32 0, i32 1
  %130 = ptrtoint ptr %root_id.i.i198.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %root_id.i.i198.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %131)
  %cmp13.i.not.i199.i = icmp eq i64 %131, 0
  br i1 %cmp13.i.not.i199.i, label %if.end22.i.i203.i, label %if.end10.i.i200.i.if.then3.i218.i_crit_edge

if.end10.i.i200.i.if.then3.i218.i_crit_edge:      ; preds = %if.end10.i.i200.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i218.i

if.end22.i.i203.i:                                ; preds = %if.end10.i.i200.i
  %type.i.i201.i = getelementptr inbounds %struct.prelim_ref, ptr %127, i32 0, i32 2, i32 1
  %132 = ptrtoint ptr %type.i.i201.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %type.i.i201.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp29.i.not.i202.i = icmp eq i8 %133, 0
  br i1 %cmp29.i.not.i202.i, label %if.end39.i.i206.i, label %if.end22.i.i203.i.if.then3.i218.i_crit_edge

if.end22.i.i203.i.if.then3.i218.i_crit_edge:      ; preds = %if.end22.i.i203.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i218.i

if.end39.i.i206.i:                                ; preds = %if.end22.i.i203.i
  %key_for_search.i.i204.i = getelementptr inbounds %struct.prelim_ref, ptr %127, i32 0, i32 2
  %134 = ptrtoint ptr %key_for_search.i.i204.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %key_for_search.i.i204.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %135)
  %cmp44.i.not.i205.i = icmp eq i64 %135, 0
  br i1 %cmp44.i.not.i205.i, label %if.end54.i.i209.i, label %if.end39.i.i206.i.if.then3.i218.i_crit_edge

if.end39.i.i206.i.if.then3.i218.i_crit_edge:      ; preds = %if.end39.i.i206.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i218.i

if.end54.i.i209.i:                                ; preds = %if.end39.i.i206.i
  %offset.i.i207.i = getelementptr inbounds %struct.prelim_ref, ptr %127, i32 0, i32 2, i32 2
  %136 = ptrtoint ptr %offset.i.i207.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %offset.i.i207.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %137)
  %cmp59.i.not.i208.i = icmp eq i64 %137, 0
  br i1 %cmp59.i.not.i208.i, label %if.end62.i.i212.i, label %if.end54.i.i209.i.if.then3.i218.i_crit_edge

if.end54.i.i209.i.if.then3.i218.i_crit_edge:      ; preds = %if.end54.i.i209.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i218.i

if.end62.i.i212.i:                                ; preds = %if.end54.i.i209.i
  %parent.i.i210.i = getelementptr inbounds %struct.prelim_ref, ptr %127, i32 0, i32 6
  %138 = ptrtoint ptr %parent.i.i210.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %parent.i.i210.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %139, i64 %124)
  %cmp64.i.i211.i = icmp ult i64 %139, %124
  br i1 %cmp64.i.i211.i, label %if.end62.i.i212.i.if.then.i214.i_crit_edge, label %if.else.i216.i

if.end62.i.i212.i.if.then.i214.i_crit_edge:       ; preds = %if.end62.i.i212.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i214.i

if.then.i214.i:                                   ; preds = %if.end62.i.i212.i.if.then.i214.i_crit_edge, %while.body.i195.i.if.then.i214.i_crit_edge
  %rb_left.i213.i = getelementptr inbounds %struct.rb_node, ptr %127, i32 0, i32 2
  br label %if.end5.i221.i

if.else.i216.i:                                   ; preds = %if.end62.i.i212.i
  call void @__sanitizer_cov_trace_cmp8(i64 %139, i64 %124)
  %cmp70.i.not.i215.i = icmp ugt i64 %139, %124
  br i1 %cmp70.i.not.i215.i, label %if.else.i216.i.if.then3.i218.i_crit_edge, label %if.else.i216.i.if.then50.i_crit_edge

if.else.i216.i.if.then50.i_crit_edge:             ; preds = %if.else.i216.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then50.i

if.else.i216.i.if.then3.i218.i_crit_edge:         ; preds = %if.else.i216.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i218.i

if.then3.i218.i:                                  ; preds = %if.else.i216.i.if.then3.i218.i_crit_edge, %if.end54.i.i209.i.if.then3.i218.i_crit_edge, %if.end39.i.i206.i.if.then3.i218.i_crit_edge, %if.end22.i.i203.i.if.then3.i218.i_crit_edge, %if.end10.i.i200.i.if.then3.i218.i_crit_edge, %if.end.i.i197.i.if.then3.i218.i_crit_edge
  %rb_right.i217.i = getelementptr inbounds %struct.rb_node, ptr %127, i32 0, i32 1
  br label %if.end5.i221.i

if.end5.i221.i:                                   ; preds = %if.then3.i218.i, %if.then.i214.i
  %p.1.i219.i = phi ptr [ %rb_left.i213.i, %if.then.i214.i ], [ %rb_right.i217.i, %if.then3.i218.i ]
  %140 = ptrtoint ptr %p.1.i219.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %p.1.i219.i, align 4
  %tobool.not.i220.i = icmp eq ptr %141, null
  br i1 %tobool.not.i220.i, label %if.end5.i221.i.lor.lhs.false45.i_crit_edge, label %if.end5.i221.i.while.body.i195.i_crit_edge

if.end5.i221.i.while.body.i195.i_crit_edge:       ; preds = %if.end5.i221.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i195.i

if.end5.i221.i.lor.lhs.false45.i_crit_edge:       ; preds = %if.end5.i221.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false45.i

lor.lhs.false45.i:                                ; preds = %if.end5.i221.i.lor.lhs.false45.i_crit_edge, %land.lhs.true.i.lor.lhs.false45.i_crit_edge
  %142 = ptrtoint ptr %root_id46.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %root_id46.i, align 8
  %pages.i224.i = getelementptr inbounds %struct.extent_buffer, ptr %110, i32 0, i32 12
  %144 = ptrtoint ptr %pages.i224.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pages.i224.i, align 4
  %call.i225.i = call ptr @page_address(ptr noundef %145) #13
  %146 = ptrtoint ptr %110 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %110, align 8
  %conv.i226.i = trunc i64 %147 to i32
  %and.i227.i = and i32 %conv.i226.i, 4095
  %add.ptr.i228.i = getelementptr i8, ptr %call.i225.i, i32 %and.i227.i
  %owner.i229.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i228.i, i32 0, i32 6
  %148 = ptrtoint ptr %owner.i229.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 8)
  %149 = load i64, ptr %owner.i229.i, align 1
  %150 = call i64 @llvm.bswap.i64(i64 %149) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %143, i64 %150)
  %cmp48.not.i = icmp eq i64 %143, %150
  br i1 %cmp48.not.i, label %lor.lhs.false45.i.if.end58.i_crit_edge, label %lor.lhs.false45.i.if.then50.i_crit_edge

lor.lhs.false45.i.if.then50.i_crit_edge:          ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then50.i

lor.lhs.false45.i.if.end58.i_crit_edge:           ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

if.then50.i:                                      ; preds = %lor.lhs.false45.i.if.then50.i_crit_edge, %if.else.i216.i.if.then50.i_crit_edge
  %call56.i = call i32 @btrfs_next_old_leaf(ptr noundef %root.0, ptr noundef %path, i64 noundef %.time_seq309.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool23.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool23.not.i, label %land.rhs.i, label %if.then50.i.while.end110.i_crit_edge

if.then50.i.while.end110.i_crit_edge:             ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end110.i

if.end58.i:                                       ; preds = %lor.lhs.false45.i.if.end58.i_crit_edge, %if.end39.i.if.end58.i_crit_edge
  %151 = call i64 @llvm.bswap.i64(i64 %115) #13
  %152 = ptrtoint ptr %56 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 8)
  store i64 %151, ptr %56, align 1
  %153 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 108, ptr %55, align 8
  %154 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %120, ptr %key.i, align 8
  %155 = inttoptr i32 %add.i.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %110, ptr noundef %155, i32 noundef 17) #13
  %add.i = add i32 %call.i.i.i, 101
  %156 = inttoptr i32 %add.i to ptr
  %call.i231.i = call i64 @btrfs_get_64(ptr noundef %110, ptr noundef %156, i32 noundef 21) #13
  %call.i232.i = call i64 @btrfs_get_64(ptr noundef %110, ptr noundef %156, i32 noundef 37) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i231.i, i64 %60)
  %cmp62.i = icmp eq i64 %call.i231.i, %60
  br i1 %cmp62.i, label %if.then64.i, label %if.end58.i.next102.i_crit_edge

if.end58.i.next102.i_crit_edge:                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next102.i

if.then64.i:                                      ; preds = %if.end58.i
  %157 = ptrtoint ptr %eie.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %eie.i, align 4
  %158 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 8)
  %159 = load i64, ptr %offset.i, align 1
  %sub.i = sub i64 %151, %call.i232.i
  call void @__sanitizer_cov_trace_cmp8(i64 %159, i64 %sub.i)
  %cmp67.i = icmp eq i64 %159, %sub.i
  br i1 %cmp67.i, label %if.then69.i, label %if.then64.i.next102.i_crit_edge

if.then64.i.next102.i_crit_edge:                  ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next102.i

if.then69.i:                                      ; preds = %if.then64.i
  %inc.i = add i64 %count.0.ph275.i203, 1
  br i1 %tobool72.not.i, label %if.then69.i.if.end84.i_crit_edge, label %if.then73.i

if.then69.i.if.end84.i_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

if.then73.i:                                      ; preds = %if.then69.i
  %160 = ptrtoint ptr %extent_item_pos to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %extent_item_pos, align 8
  %call75.i = call fastcc i32 @check_extent_in_eb(ptr noundef nonnull %key.i, ptr noundef %110, ptr noundef %156, i64 noundef %161, ptr noundef nonnull %eie.i, i1 noundef zeroext %ignore_offset) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp76.i = icmp slt i32 %call75.i, 0
  br i1 %cmp76.i, label %if.then73.i.if.then117.i_crit_edge, label %if.end80.i

if.then73.i.if.then117.i_crit_edge:               ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then117.i

if.end80.i:                                       ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp81.not.i = icmp eq i32 %call75.i, 0
  br i1 %cmp81.not.i, label %if.end80.i.if.end84.i_crit_edge, label %if.end80.i.next102.i_crit_edge

if.end80.i.next102.i_crit_edge:                   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next102.i

if.end80.i.if.end84.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.end80.i.if.end84.i_crit_edge, %if.then69.i.if.end84.i_crit_edge
  %162 = ptrtoint ptr %110 to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %110, align 8
  %164 = ptrtoint ptr %eie.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %eie.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old64.i.i) #13
  %166 = ptrtoint ptr %old64.i.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 0, ptr %old64.i.i, align 8
  %167 = ptrtoint ptr %165 to i32
  %conv1.i.i = zext i32 %167 to i64
  %call.i234.i = call i32 @ulist_add_merge(ptr noundef %parents, i64 noundef %163, i64 noundef %conv1.i.i, ptr noundef nonnull %old64.i.i, i32 noundef 3136) #13
  %168 = ptrtoint ptr %old64.i.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %old64.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old64.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234.i)
  %cmp87.i = icmp slt i32 %call.i234.i, 0
  br i1 %cmp87.i, label %if.end84.i.if.then117.i_crit_edge, label %if.end90.i

if.end84.i.if.then117.i_crit_edge:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then117.i

if.end90.i:                                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234.i)
  %tobool91.not.i = icmp ne i32 %call.i234.i, 0
  %brmerge.i = or i1 %tobool72.not.i, %tobool91.not.i
  br i1 %brmerge.i, label %if.end90.i.if.end100.i_crit_edge, label %while.cond95.preheader.i

if.end90.i.if.end100.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100.i

while.cond95.preheader.i:                         ; preds = %if.end90.i
  %conv2.i.i = trunc i64 %169 to i32
  %170 = inttoptr i32 %conv2.i.i to ptr
  br label %while.cond95.i

while.cond95.i:                                   ; preds = %while.cond95.i.while.cond95.i_crit_edge, %while.cond95.preheader.i
  %old.0.i = phi ptr [ %172, %while.cond95.i.while.cond95.i_crit_edge ], [ %170, %while.cond95.preheader.i ]
  %next.i = getelementptr inbounds %struct.extent_inode_elem, ptr %old.0.i, i32 0, i32 2
  %171 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %next.i, align 8
  %tobool96.not.i = icmp eq ptr %172, null
  br i1 %tobool96.not.i, label %while.end.i, label %while.cond95.i.while.cond95.i_crit_edge

while.cond95.i.while.cond95.i_crit_edge:          ; preds = %while.cond95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond95.i

while.end.i:                                      ; preds = %while.cond95.i
  call void @__sanitizer_cov_trace_pc() #15
  %next.i.le = getelementptr inbounds %struct.extent_inode_elem, ptr %old.0.i, i32 0, i32 2
  %173 = ptrtoint ptr %next.i.le to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %165, ptr %next.i.le, align 8
  br label %if.end100.i

if.end100.i:                                      ; preds = %while.end.i, %if.end90.i.if.end100.i_crit_edge
  %174 = ptrtoint ptr %eie.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %eie.i, align 4
  br label %next102.i

next102.i:                                        ; preds = %if.end100.i, %if.end80.i.next102.i_crit_edge, %if.then64.i.next102.i_crit_edge, %if.end58.i.next102.i_crit_edge
  %count.1.i = phi i64 [ %inc.i, %if.end80.i.next102.i_crit_edge ], [ %inc.i, %if.end100.i ], [ %count.0.ph275.i203, %if.then64.i.next102.i_crit_edge ], [ %count.0.ph275.i203, %if.end58.i.next102.i_crit_edge ]
  %175 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %slots.i, align 4
  %inc.i.i.i = add i32 %176, 1
  store i32 %inc.i.i.i, ptr %slots.i, align 4
  %177 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %path, align 4
  %pages.i.i.i.i = getelementptr inbounds %struct.extent_buffer, ptr %178, i32 0, i32 12
  %179 = ptrtoint ptr %pages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pages.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @page_address(ptr noundef %180) #13
  %181 = ptrtoint ptr %178 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %178, align 8
  %conv.i.i.i.i = trunc i64 %182 to i32
  %and.i.i.i.i = and i32 %conv.i.i.i.i, 4095
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %and.i.i.i.i
  %nritems.i.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i.i, i32 0, i32 7
  %183 = ptrtoint ptr %nritems.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %nritems.i.i.i.i, align 1
  %185 = call i32 @llvm.bswap.i32(i32 %184) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %185)
  %cmp.not.i.i.i = icmp ult i32 %inc.i.i.i, %185
  br i1 %cmp.not.i.i.i, label %next102.i.land.rhs.lr.ph.i_crit_edge, label %if.end109.i

next102.i.land.rhs.lr.ph.i_crit_edge:             ; preds = %next102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.lr.ph.i

if.end109.i:                                      ; preds = %next102.i
  %call4.i.i = call i32 @btrfs_next_old_leaf(ptr noundef %root.0, ptr noundef %path, i64 noundef %.time_seq309.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool23.not263.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool23.not263.i, label %if.end109.i.land.rhs.lr.ph.i_crit_edge, label %if.end109.i.while.end110.i_crit_edge

if.end109.i.while.end110.i_crit_edge:             ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end110.i

if.end109.i.land.rhs.lr.ph.i_crit_edge:           ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.lr.ph.i

while.end110.i:                                   ; preds = %if.end109.i.while.end110.i_crit_edge, %if.then50.i.while.end110.i_crit_edge, %if.then16.i.while.end110.i_crit_edge
  %ret.1.lcssa.i = phi i32 [ %call.i191.i, %if.then16.i.while.end110.i_crit_edge ], [ %call56.i, %if.then50.i.while.end110.i_crit_edge ], [ %call4.i.i, %if.end109.i.while.end110.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.lcssa.i)
  %cmp115.i = icmp slt i32 %ret.1.lcssa.i, 0
  br i1 %cmp115.i, label %while.end110.i.if.then117.i_crit_edge, label %while.end110.i.add_all_parents.exit_crit_edge

while.end110.i.add_all_parents.exit_crit_edge:    ; preds = %while.end110.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %add_all_parents.exit

while.end110.i.if.then117.i_crit_edge:            ; preds = %while.end110.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then117.i

if.then117.i:                                     ; preds = %while.end110.i.if.then117.i_crit_edge, %if.end84.i.if.then117.i_crit_edge, %if.then73.i.if.then117.i_crit_edge
  %ret.5254.i = phi i32 [ %ret.1.lcssa.i, %while.end110.i.if.then117.i_crit_edge ], [ %call.i234.i, %if.end84.i.if.then117.i_crit_edge ], [ %call75.i, %if.then73.i.if.then117.i_crit_edge ]
  %186 = ptrtoint ptr %eie.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %eie.i, align 4
  %tobool.not3.i.i = icmp eq ptr %187, null
  br i1 %tobool.not3.i.i, label %if.then117.i.add_all_parents.exit_crit_edge, label %if.then117.i.for.body.i.i_crit_edge

if.then117.i.for.body.i.i_crit_edge:              ; preds = %if.then117.i
  br label %for.body.i.i

if.then117.i.add_all_parents.exit_crit_edge:      ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %add_all_parents.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then117.i.for.body.i.i_crit_edge
  %eie.addr.04.i.i = phi ptr [ %189, %for.body.i.i.for.body.i.i_crit_edge ], [ %187, %if.then117.i.for.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.extent_inode_elem, ptr %eie.addr.04.i.i, i32 0, i32 2
  %188 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %next.i.i, align 8
  call void @kfree(ptr noundef nonnull %eie.addr.04.i.i) #13
  %tobool.not.i238.i = icmp eq ptr %189, null
  br i1 %tobool.not.i238.i, label %for.body.i.i.add_all_parents.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.add_all_parents.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %add_all_parents.exit

add_all_parents.exit:                             ; preds = %for.body.i.i.add_all_parents.exit_crit_edge, %if.then117.i.add_all_parents.exit_crit_edge, %while.end110.i.add_all_parents.exit_crit_edge, %while.body.i.add_all_parents.exit_crit_edge, %land.rhs.i.add_all_parents.exit_crit_edge, %land.rhs.lr.ph.i.add_all_parents.exit_crit_edge, %land.rhs.lr.ph.lr.ph.i.add_all_parents.exit_crit_edge, %if.then.i
  %retval.0.i175 = phi i32 [ %63, %if.then.i ], [ 0, %while.end110.i.add_all_parents.exit_crit_edge ], [ %ret.5254.i, %if.then117.i.add_all_parents.exit_crit_edge ], [ 0, %land.rhs.lr.ph.lr.ph.i.add_all_parents.exit_crit_edge ], [ %ret.5254.i, %for.body.i.i.add_all_parents.exit_crit_edge ], [ 0, %land.rhs.i.add_all_parents.exit_crit_edge ], [ 0, %while.body.i.add_all_parents.exit_crit_edge ], [ 0, %land.rhs.lr.ph.i.add_all_parents.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eie.i) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #13
  br label %out

out:                                              ; preds = %add_all_parents.exit, %do.end99, %do.end.out_crit_edge, %if.end38.out_crit_edge, %if.end17.thread.out_crit_edge, %if.end17.out_crit_edge, %land.lhs.true.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.end38.out_crit_edge ], [ %ret.0, %do.end.out_crit_edge ], [ 1, %do.end99 ], [ %retval.0.i175, %add_all_parents.exit ], [ -2, %land.lhs.true.out_crit_edge ], [ -2, %if.end17.out_crit_edge ], [ -2, %if.end17.thread.out_crit_edge ]
  call void @btrfs_put_root(ptr noundef %root.0) #13
  br label %out_free

out_free:                                         ; preds = %out, %if.then5
  %ret.2 = phi i32 [ %9, %if.then5 ], [ %ret.1, %out ]
  %lowest_level120 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 4
  %190 = ptrtoint ptr %lowest_level120 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %lowest_level120, align 1
  call void @btrfs_release_path(ptr noundef %path) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %search_key) #13
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulist_reinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_fs_root_commit_root(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_fs_root(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_old_root_level(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_old_slot(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_extent_in_eb(ptr nocapture noundef readonly %key, ptr noundef %eb, ptr noundef %fi, i64 noundef %extent_item_pos, ptr nocapture noundef %eie, i1 noundef zeroext %ignore_offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %ignore_offset, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %call.i = tail call zeroext i8 @btrfs_get_8(ptr noundef %eb, ptr noundef %fi, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool1.not = icmp eq i8 %call.i, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call.i41 = tail call zeroext i8 @btrfs_get_8(ptr noundef %eb, ptr noundef %fi, i32 noundef 17) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i41)
  %tobool4.not = icmp eq i8 %call.i41, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true2.if.end13_crit_edge

land.lhs.true2.if.end13_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %call.i42 = tail call zeroext i16 @btrfs_get_16(ptr noundef %eb, ptr noundef %fi, i32 noundef 18) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i42)
  %tobool7.not = icmp eq i16 %call.i42, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true5.if.end13_crit_edge

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true5
  %call.i43 = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %fi, i32 noundef 37) #13
  %call.i44 = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %fi, i32 noundef 45) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i43, i64 %extent_item_pos)
  %cmp = icmp ule i64 %call.i43, %extent_item_pos
  %add = add i64 %call.i44, %call.i43
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %extent_item_pos)
  %cmp10.not = icmp ugt i64 %add, %extent_item_pos
  %or.cond = select i1 %cmp, i1 %cmp10.not, i1 false
  %sub = sub i64 %extent_item_pos, %call.i43
  br i1 %or.cond, label %if.then.if.end13_crit_edge, label %if.then.cleanup21_crit_edge

if.then.cleanup21_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup21

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end13:                                         ; preds = %if.then.if.end13_crit_edge, %land.lhs.true5.if.end13_crit_edge, %land.lhs.true2.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %offset.1 = phi i64 [ 0, %entry.if.end13_crit_edge ], [ 0, %land.lhs.true.if.end13_crit_edge ], [ 0, %land.lhs.true2.if.end13_crit_edge ], [ 0, %land.lhs.true5.if.end13_crit_edge ], [ %sub, %if.then.if.end13_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 24) #19
  %tobool15.not = icmp eq ptr %call7.i, null
  br i1 %tobool15.not, label %if.end13.cleanup21_crit_edge, label %if.end17

if.end13.cleanup21_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup21

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %eie to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %eie, align 4
  %next = getelementptr inbounds %struct.extent_inode_elem, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %next, align 8
  %4 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %key, align 1
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %call7.i, align 8
  %offset18 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %7 = ptrtoint ptr %offset18 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %offset18, align 1
  %add19 = add i64 %8, %offset.1
  %offset20 = getelementptr inbounds %struct.extent_inode_elem, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %offset20 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add19, ptr %offset20, align 8
  store ptr %call7.i, ptr %eie, align 4
  br label %cleanup21

cleanup21:                                        ; preds = %if.end17, %if.end13.cleanup21_crit_edge, %if.then.cleanup21_crit_edge
  %retval.1 = phi i32 [ 0, %if.end17 ], [ 1, %if.then.cleanup21_crit_edge ], [ -12, %if.end13.cleanup21_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_get_8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @btrfs_get_16(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ulist_add_merge(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iterate_inode_refs(i64 noundef %inum, ptr noundef %fs_root, ptr noundef %path, ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %found_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %found_key) #13
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %found_key, i32 0, i32 2
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %fs_root, i32 0, i32 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %fs_root, i32 0, i32 7
  %fspath1.i = getelementptr inbounds %struct.inode_fs_paths, ptr %ctx, i32 0, i32 2
  %fs_root.i = getelementptr inbounds %struct.inode_fs_paths, ptr %ctx, i32 0, i32 1
  %1 = call ptr @memset(ptr %found_key, i32 255, i32 17)
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %entry
  %found.016 = phi i32 [ 0, %entry ], [ %inc, %for.end.while.body_crit_edge ]
  %parent.015 = phi i64 [ 0, %entry ], [ %3, %for.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %parent.015)
  %tobool1.not = icmp eq i64 %parent.015, 0
  %add = add i64 %parent.015, 1
  %spec.select = select i1 %tobool1.not, i64 0, i64 %add
  %call = call i32 @btrfs_find_item(ptr noundef %fs_root, ptr noundef %path, i64 noundef %inum, i64 noundef %spec.select, i8 noundef zeroext 12, ptr noundef nonnull %found_key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.016)
  %tobool4.not = icmp eq i32 %found.016, 0
  %cond5 = select i1 %tobool4.not, i32 -2, i32 0
  br label %while.end

if.end6:                                          ; preds = %if.end
  %inc = add i32 %found.016, 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %0, align 1
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slots, align 4
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path, align 4
  %call8 = call ptr @btrfs_clone_extent_buffer(ptr noundef %7) #13
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.while.end_crit_edge, label %if.end11

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end11:                                         ; preds = %if.end6
  call void @btrfs_release_path(ptr noundef %path) #13
  %mul.i.i.i = mul i32 %5, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %8 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef nonnull %call8, ptr noundef %8, i32 noundef 17) #13
  %call.i.i310 = call i32 @btrfs_get_32(ptr noundef nonnull %call8, ptr noundef %8, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i310)
  %cmp1511.not = icmp eq i32 %call.i.i310, 0
  br i1 %cmp1511.not, label %if.end11.for.end_crit_edge, label %for.body.preheader

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %if.end11
  %add13 = add i32 %call.i.i, 101
  %9 = inttoptr i32 %add13 to ptr
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.preheader
  %iref.014 = phi ptr [ %add.ptr30, %if.end28.for.body_crit_edge ], [ %9, %for.body.preheader ]
  %cur.012 = phi i32 [ %add31, %if.end28.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call.i = call zeroext i16 @btrfs_get_16(ptr noundef nonnull %call8, ptr noundef %iref.014, i32 noundef 8) #13
  %conv = zext i16 %call.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iterate_inode_refs.__UNIQUE_ID_ddebug933, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iterate_inode_refs, %if.then22)) #13
          to label %do.end [label %if.then22], !srcloc !151

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_info, align 8
  %12 = ptrtoint ptr %found_key to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %found_key, align 8
  %14 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %root_key, align 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %11, ptr noundef nonnull @.str.48, i32 noundef %cur.012, i64 noundef %13, i64 noundef %15) #17
  br label %do.end

do.end:                                           ; preds = %if.then22, %for.body
  %add.ptr = getelementptr %struct.btrfs_inode_ref, ptr %iref.014, i32 1
  %16 = ptrtoint ptr %add.ptr to i32
  %17 = ptrtoint ptr %fspath1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fspath1.i, align 4
  %elem_cnt.i = getelementptr inbounds %struct.btrfs_data_container, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %elem_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %elem_cnt.i, align 8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 8
  %23 = call i32 @llvm.usub.sat.i32(i32 %22, i32 4) #13
  %val.i = getelementptr inbounds %struct.btrfs_data_container, ptr %18, i32 0, i32 4
  %add.i = shl i32 %20, 2
  %mul.i = add i32 %add.i, 4
  %add.ptr.i = getelementptr i8, ptr %val.i, i32 %mul.i
  %24 = ptrtoint ptr %fs_root.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fs_root.i, align 4
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %call.i4 = call ptr @btrfs_ref_to_path(ptr noundef %25, ptr noundef %27, i32 noundef %conv, i32 noundef %16, ptr noundef nonnull %call8, i64 noundef %3, ptr noundef %add.ptr.i, i32 noundef %23) #13
  %cmp.i.i = icmp ugt ptr %call.i4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %inode_to_path.exit, label %if.end.i

if.end.i:                                         ; preds = %do.end
  %cmp9.i = icmp ugt ptr %call.i4, %add.ptr.i
  br i1 %cmp9.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %call.i4 to i32
  %conv.i = zext i32 %28 to i64
  %29 = ptrtoint ptr %fspath1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fspath1.i, align 4
  %arrayidx.i = getelementptr %struct.btrfs_data_container, ptr %30, i32 0, i32 4, i32 %20
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  %32 = load ptr, ptr %fspath1.i, align 4
  %elem_cnt14.i = getelementptr inbounds %struct.btrfs_data_container, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %elem_cnt14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %elem_cnt14.i, align 8
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %elem_cnt14.i, align 8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %28, %sub.ptr.rhs.cast.i
  br label %if.end28

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %fspath1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fspath1.i, align 4
  %elem_missed.i = getelementptr inbounds %struct.btrfs_data_container, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %elem_missed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %elem_missed.i, align 4
  %inc18.i = add i32 %38, 1
  store i32 %inc18.i, ptr %elem_missed.i, align 4
  %sub.ptr.lhs.cast19.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast20.i = ptrtoint ptr %call.i4 to i32
  %sub.ptr.sub21.i = sub i32 %sub.ptr.lhs.cast19.i, %sub.ptr.rhs.cast20.i
  %39 = load ptr, ptr %fspath1.i, align 4
  %bytes_missing.i = getelementptr inbounds %struct.btrfs_data_container, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %bytes_missing.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bytes_missing.i, align 4
  %add23.i = add i32 %sub.ptr.sub21.i, %41
  store i32 %add23.i, ptr %bytes_missing.i, align 4
  br label %if.end28

inode_to_path.exit:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %call.i4 to i32
  br label %for.end

if.end28:                                         ; preds = %if.else.i, %if.then10.i
  %sub.ptr.sub.i.sink = phi i32 [ %sub.ptr.sub.i, %if.then10.i ], [ 0, %if.else.i ]
  %43 = ptrtoint ptr %fspath1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fspath1.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub.ptr.sub.i.sink, ptr %44, align 8
  %add29 = add nuw nsw i32 %conv, 10
  %add.ptr30 = getelementptr i8, ptr %iref.014, i32 %add29
  %add31 = add i32 %add29, %cur.012
  %call.i.i3 = call i32 @btrfs_get_32(ptr noundef nonnull %call8, ptr noundef %8, i32 noundef 21) #13
  %cmp15 = icmp ult i32 %add31, %call.i.i3
  br i1 %cmp15, label %if.end28.for.body_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %inode_to_path.exit, %if.end11.for.end_crit_edge
  %ret.2 = phi i32 [ %42, %inode_to_path.exit ], [ 0, %if.end11.for.end_crit_edge ], [ 0, %if.end28.for.end_crit_edge ]
  call void @free_extent_buffer(ptr noundef nonnull %call8) #13
  %tobool.not = icmp eq i32 %ret.2, 0
  br i1 %tobool.not, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.end6.while.end_crit_edge, %if.then3, %while.body.while.end_crit_edge
  %ret.3 = phi i32 [ %cond5, %if.then3 ], [ -12, %if.end6.while.end_crit_edge ], [ %ret.2, %for.end.while.end_crit_edge ], [ %call, %while.body.while.end_crit_edge ]
  call void @btrfs_release_path(ptr noundef %path) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %found_key) #13
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_clone_extent_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_reloc_root(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_should_ignore_reloc_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_block_can_be_shared(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_panic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold noreturn }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.named.register.sp = !{!127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/backref.c", i32 152, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/backref.c", i32 1578, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/backref.c", i32 1784, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @extent_from_logical.__UNIQUE_ID_ddebug927, !5, !"__UNIQUE_ID_ddebug927", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/backref.c", i32 1796, i32 2}
!12 = !{ptr @extent_from_logical.__UNIQUE_ID_ddebug928, !11, !"__UNIQUE_ID_ddebug928", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/backref.c", i32 1913, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/backref.c", i32 1969, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @iterate_extent_inodes.__UNIQUE_ID_ddebug931, !17, !"__UNIQUE_ID_ddebug931", i1 false, i1 false}
!20 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/backref.c", i32 2002, i32 4}
!23 = !{ptr @iterate_extent_inodes.__UNIQUE_ID_ddebug932, !22, !"__UNIQUE_ID_ddebug932", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/btrfs/backref.c", i32 2445, i32 3}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/backref.c", i32 2508, i32 2}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/btrfs/backref.c", i32 2596, i32 3}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/btrfs/backref.c", i32 2597, i32 2}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/btrfs/backref.c", i32 2598, i32 2}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/btrfs/backref.c", i32 2599, i32 2}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/btrfs/backref.c", i32 2600, i32 2}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/btrfs/backref.c", i32 2601, i32 2}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/btrfs/backref.c", i32 2602, i32 2}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/btrfs/backref.c", i32 2603, i32 2}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/btrfs/backref.c", i32 2890, i32 3}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/btrfs/backref.c", i32 2893, i32 3}
!49 = !{ptr @__func__.btrfs_backref_add_tree_node, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/btrfs/backref.c", i32 2955, i32 4}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/btrfs/backref.c", i32 2990, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/btrfs/backref.c", i32 3050, i32 4}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/btrfs/backref.c", i32 3133, i32 2}
!57 = !{ptr @btrfs_prelim_ref_cache, !58, !"btrfs_prelim_ref_cache", i1 false, i1 false}
!58 = !{!"../fs/btrfs/backref.c", i32 148, i32 27}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/btrfs/backref.c", i32 1215, i32 3}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/btrfs/backref.c", i32 1369, i32 5}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/trace/events/btrfs.h", i32 1830, i32 1}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!67 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/trace/events/btrfs.h", i32 1837, i32 1}
!73 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/btrfs/backref.c", i32 693, i32 7}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/btrfs/backref.c", i32 614, i32 2}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @resolve_indirect_ref.__UNIQUE_ID_ddebug924, !77, !"__UNIQUE_ID_ddebug924", i1 false, i1 false}
!80 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @assertfail._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @assertfail._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/btrfs/backref.c", i32 1932, i32 3}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @iterate_leaf_refs.__UNIQUE_ID_ddebug929, !88, !"__UNIQUE_ID_ddebug929", i1 false, i1 false}
!91 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/btrfs/backref.c", i32 1938, i32 4}
!94 = !{ptr @iterate_leaf_refs.__UNIQUE_ID_ddebug930, !93, !"__UNIQUE_ID_ddebug930", i1 false, i1 false}
!95 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/btrfs/backref.c", i32 2099, i32 4}
!98 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @iterate_inode_refs.__UNIQUE_ID_ddebug933, !97, !"__UNIQUE_ID_ddebug933", i1 false, i1 false}
!100 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/btrfs/backref.h", i32 347, i32 2}
!103 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/btrfs/backref.h", i32 300, i32 3}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/btrfs/backref.h", i32 301, i32 3}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/btrfs/backref.h", i32 302, i32 3}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/btrfs/backref.c", i32 2626, i32 2}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/btrfs/backref.c", i32 2671, i32 3}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/btrfs/backref.h", i32 287, i32 2}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/btrfs/ctree.h", i32 3562, i32 2}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/btrfs/backref.c", i32 2715, i32 3}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/btrfs/backref.c", i32 2752, i32 3}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/btrfs/backref.c", i32 2765, i32 4}
!124 = !{ptr @__func__.btrfs_backref_panic, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/btrfs/backref.h", i32 365, i32 2}
!126 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!127 = !{!"sp"}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"branch_weights", i32 2002, i32 2000}
!138 = !{i64 2148749820, i64 2148749852, i64 2148749881, i64 2148749915, i64 2148749946, i64 2148749969}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i64 2148837845}
!142 = !{i64 2148752285, i64 2148752317, i64 2148752346, i64 2148752380, i64 2148752411, i64 2148752434}
!143 = !{i64 2150034080}
!144 = !{i64 2158476477, i64 2158476960, i64 2158476514, i64 2158476570, i64 2158476604, i64 2158476628, i64 2158476669, i64 2158476690, i64 2158476718, i64 2158476752}
!145 = !{i64 2158478311, i64 2158478794, i64 2158478348, i64 2158478404, i64 2158478438, i64 2158478462, i64 2158478503, i64 2158478524, i64 2158478552, i64 2158478586}
!146 = !{i64 2158479926, i64 2158480409, i64 2158479963, i64 2158480019, i64 2158480053, i64 2158480077, i64 2158480118, i64 2158480139, i64 2158480167, i64 2158480201}
!147 = !{i64 2158462983, i64 2158463466, i64 2158463020, i64 2158463076, i64 2158463110, i64 2158463134, i64 2158463175, i64 2158463196, i64 2158463224, i64 2158463258}
!148 = !{i64 2158464584, i64 2158465067, i64 2158464621, i64 2158464677, i64 2158464711, i64 2158464735, i64 2158464776, i64 2158464797, i64 2158464825, i64 2158464859}
!149 = !{i64 2158470242, i64 2158470725, i64 2158470279, i64 2158470335, i64 2158470369, i64 2158470393, i64 2158470434, i64 2158470455, i64 2158470483, i64 2158470517}
!150 = !{!"auto-init"}
!151 = !{i64 2148348967, i64 2148348972, i64 2148348985, i64 2148349029, i64 2148349063, i64 2148349084}
!152 = !{i64 2158502341, i64 2158502825, i64 2158502378, i64 2158502434, i64 2158502468, i64 2158502492, i64 2158502533, i64 2158502554, i64 2158502582, i64 2158502616}
!153 = !{i64 2158507553, i64 2158508037, i64 2158507590, i64 2158507646, i64 2158507680, i64 2158507704, i64 2158507745, i64 2158507766, i64 2158507794, i64 2158507828}
!154 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!155 = !{i64 2158325162, i64 2158325644, i64 2158325199, i64 2158325255, i64 2158325289, i64 2158325313, i64 2158325354, i64 2158325375, i64 2158325403, i64 2158325437}
!156 = !{i64 2158528607, i64 2158529091, i64 2158528644, i64 2158528700, i64 2158528734, i64 2158528758, i64 2158528799, i64 2158528820, i64 2158528848, i64 2158528882}
!157 = !{!"branch_weights", i32 2000, i32 2002, i32 2002, i32 2}
!158 = !{!"branch_weights", i32 2000, i32 4002, i32 2, i32 2000}
!159 = !{!"branch_weights", i32 4001, i32 4000000}
!160 = !{i64 2158378170, i64 2158378653, i64 2158378207, i64 2158378263, i64 2158378297, i64 2158378321, i64 2158378362, i64 2158378383, i64 2158378411, i64 2158378445}
!161 = !{i8 0, i8 2}
!162 = !{i64 2158473707, i64 2158474190, i64 2158473744, i64 2158473800, i64 2158473834, i64 2158473858, i64 2158473899, i64 2158473920, i64 2158473948, i64 2158473982}
!163 = !{i64 2155862227}
!164 = !{i64 2155862502}
!165 = !{i64 2150092182}
!166 = !{i64 2150093218}
!167 = !{i64 2155881074}
!168 = !{i64 2155881351}
