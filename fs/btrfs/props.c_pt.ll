; ModuleID = '/llk/IR_all_yes/fs/btrfs/props.c_pt.bc'
source_filename = "../fs/btrfs/props.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.prop_handler = type { %struct.hlist_node, ptr, ptr, ptr, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_dir_item = type <{ %struct.btrfs_disk_key, i64, i16, i16, i8 }>
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
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.82, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.82 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.79 = type { ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ret == 0\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/props.c\00", [47 x i8] zeroinitializer }, align 32
@prop_handlers = internal global { [1 x %struct.prop_handler], [36 x i8] } { [1 x %struct.prop_handler] [%struct.prop_handler { %struct.hlist_node zeroinitializer, ptr @.str.7, ptr @prop_compression_validate, ptr @prop_compression_apply, ptr @prop_compression_extract, i32 1 }], [36 x i8] zeroinitializer }, align 32
@prop_handlers_ht = internal global { [256 x %struct.hlist_head], [256 x i8] } zeroinitializer, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"btrfs.\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014error applying prop %s to ino %llu (root %llu): %d\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"btrfs.compression\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lzo\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"COMPRESS_LZO\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zlib\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zstd\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"COMPRESS_ZSTD\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016setting incompat feature flag for %s (0x%llx)\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 93, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"prop_handlers\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 327, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"prop_handlers_ht\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 15, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 3491, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 174, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 236, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 329, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 263, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 264, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 294, i32 15 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 296, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 297, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 299, i32 22 }
@___asan_gen_.69 = private constant [20 x i8] c"../fs/btrfs/props.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 301, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 3648, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @prop_handlers, ptr @prop_handlers_ht, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prop_handlers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prop_handlers_ht to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_validate_prop(ptr noundef %name, ptr noundef %value, i32 noundef %value_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %cmp = icmp ult i32 %call, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @strlen(ptr noundef %name) #13
  %call.i.i = tail call i32 @crc32c(i32 noundef -2, ptr noundef %name, i32 noundef %call.i) #9
  %mul.i.i.i.i = mul i32 %call.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i.i = getelementptr [256 x %struct.hlist_head], ptr @prop_handlers_ht, i32 0, i32 %shr.i.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %1, null
  %tobool3.not36.i = icmp eq ptr %arrayidx.i.i, null
  %tobool3.not.i = or i1 %tobool.not.i.not.i.i, %tobool3.not36.i
  br i1 %tobool3.not.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.ithread-pre-split:                       ; preds = %for.body.i
  %2 = ptrtoint ptr %h.0.i15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %h.0.i.pr = load ptr, ptr %h.0.i15, align 4
  %tobool8.not.i = icmp eq ptr %h.0.i.pr, null
  br i1 %tobool8.not.i, label %for.cond.ithread-pre-split.cleanup_crit_edge, label %for.cond.ithread-pre-split.for.body.i_crit_edge

for.cond.ithread-pre-split.for.body.i_crit_edge:  ; preds = %for.cond.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.ithread-pre-split.cleanup_crit_edge:     ; preds = %for.cond.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.ithread-pre-split.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %h.0.i15 = phi ptr [ %h.0.i.pr, %for.cond.ithread-pre-split.for.body.i_crit_edge ], [ %1, %if.end.for.body.i_crit_edge ]
  %xattr_name.i = getelementptr inbounds %struct.prop_handler, ptr %h.0.i15, i32 0, i32 1
  %3 = ptrtoint ptr %xattr_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xattr_name.i, align 4
  %call9.i = tail call i32 @strcmp(ptr noundef %4, ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end3, label %for.cond.ithread-pre-split

if.end3:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value_len)
  %cmp4 = icmp eq i32 %value_len, 0
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %validate = getelementptr inbounds %struct.prop_handler, ptr %h.0.i15, i32 0, i32 2
  %5 = ptrtoint ptr %validate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %validate, align 4
  %call7 = tail call i32 %6(ptr noundef %value, i32 noundef %value_len) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %for.cond.ithread-pre-split.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.cond.ithread-pre-split.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_set_prop(ptr noundef %trans, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %value_len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strlen(ptr noundef %name) #13
  %call.i.i = tail call i32 @crc32c(i32 noundef -2, ptr noundef %name, i32 noundef %call.i) #9
  %mul.i.i.i.i = mul i32 %call.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i.i = getelementptr [256 x %struct.hlist_head], ptr @prop_handlers_ht, i32 0, i32 %shr.i.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %1, null
  %tobool3.not36.i = icmp eq ptr %arrayidx.i.i, null
  %tobool3.not.i = or i1 %tobool.not.i.not.i.i, %tobool3.not36.i
  br i1 %tobool3.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.ithread-pre-split:                       ; preds = %for.body.i
  %2 = ptrtoint ptr %h.0.i53 to i32
  call void @__asan_load4_noabort(i32 %2)
  %h.0.i.pr = load ptr, ptr %h.0.i53, align 4
  %tobool8.not.i = icmp eq ptr %h.0.i.pr, null
  br i1 %tobool8.not.i, label %for.cond.ithread-pre-split.cleanup_crit_edge, label %for.cond.ithread-pre-split.for.body.i_crit_edge

for.cond.ithread-pre-split.for.body.i_crit_edge:  ; preds = %for.cond.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.ithread-pre-split.cleanup_crit_edge:     ; preds = %for.cond.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.ithread-pre-split.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %h.0.i53 = phi ptr [ %h.0.i.pr, %for.cond.ithread-pre-split.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %xattr_name.i = getelementptr inbounds %struct.prop_handler, ptr %h.0.i53, i32 0, i32 1
  %3 = ptrtoint ptr %xattr_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xattr_name.i, align 4
  %call9.i = tail call i32 @strcmp(ptr noundef %4, ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end, label %for.cond.ithread-pre-split

if.end:                                           ; preds = %for.body.i
  %xattr_name.i.le = getelementptr inbounds %struct.prop_handler, ptr %h.0.i53, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value_len)
  %cmp = icmp eq i32 %value_len, 0
  %5 = ptrtoint ptr %xattr_name.i.le to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xattr_name.i.le, align 4
  br i1 %cmp, label %if.then1, label %if.end10

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @btrfs_setxattr(ptr noundef %trans, ptr noundef %inode, ptr noundef %6, ptr noundef null, i32 noundef 0, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  %apply = getelementptr inbounds %struct.prop_handler, ptr %h.0.i53, i32 0, i32 3
  %7 = ptrtoint ptr %apply to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %apply, align 4
  %call6 = tail call i32 %8(ptr noundef %inode, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %cond.false, !prof !44

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail() #14
  unreachable

if.end10:                                         ; preds = %if.end
  %call12 = tail call i32 @btrfs_setxattr(ptr noundef %trans, ptr noundef %inode, ptr noundef %6, ptr noundef %value, i32 noundef %value_len, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %apply16 = getelementptr inbounds %struct.prop_handler, ptr %h.0.i53, i32 0, i32 3
  %9 = ptrtoint ptr %apply16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %apply16, align 4
  %call17 = tail call i32 %10(ptr noundef %inode, ptr noundef %value, i32 noundef %value_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %xattr_name.i.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xattr_name.i.le, align 4
  %call21 = tail call i32 @btrfs_setxattr(ptr noundef %trans, ptr noundef %inode, ptr noundef %12, ptr noundef null, i32 noundef 0, i32 noundef %flags) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %runtime_flags = getelementptr i8, ptr %inode, i32 -356
  tail call void @_set_bit(i32 noundef 7, ptr noundef %runtime_flags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then19, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %for.cond.ithread-pre-split.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then19 ], [ 0, %if.end22 ], [ %call2, %if.then1.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.ithread-pre-split.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail() unnamed_addr #4 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 93) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #9, !srcloc !45
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_load_inode_props(ptr noundef %inode, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %location.i = getelementptr i8, ptr %inode, i32 -860
  %2 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr i8, ptr %inode, i32 -852
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %5)
  %cmp.i = icmp eq i8 %5, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i_ino.i = getelementptr i8, ptr %inode, i32 40
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %7 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %3, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %8 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  %type.i.i.i = getelementptr i8, ptr %inode, i32 -852
  %i_ino.i.i.i = getelementptr i8, ptr %inode, i32 40
  %runtime_flags.i.i = getelementptr i8, ptr %inode, i32 -356
  br label %while.cond.i.outer

while.cond.i.outer:                               ; preds = %next_slot.i, %btrfs_ino.exit
  %name_buf.0.i.ph = phi ptr [ %name_buf.5.i, %next_slot.i ], [ null, %btrfs_ino.exit ]
  %value_buf.0.i.ph = phi ptr [ %value_buf.5.i, %next_slot.i ], [ null, %btrfs_ino.exit ]
  %name_buf_len.0.i.ph = phi i32 [ %name_buf_len.5.i, %next_slot.i ], [ 0, %btrfs_ino.exit ]
  %value_buf_len.0.i.ph = phi i32 [ %value_buf_len.5.i, %next_slot.i ], [ 0, %btrfs_ino.exit ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.else.i.while.cond.i_crit_edge, %while.cond.i.outer
  %10 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slots.i, align 4
  %12 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %path, align 4
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = call ptr @page_address(ptr noundef %15) #9
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %13, align 8
  %conv.i.i = trunc i64 %17 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %nritems.i.i, align 1
  %20 = call i32 @llvm.bswap.i32(i32 %19) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %20)
  %cmp.not.i = icmp ult i32 %11, %20
  br i1 %cmp.not.i, label %if.end8.i, label %if.then.i8

if.then.i8:                                       ; preds = %while.cond.i
  %call.i27.i = call i32 @btrfs_next_old_leaf(ptr noundef %1, ptr noundef %path, i64 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %cmp3.i = icmp slt i32 %call.i27.i, 0
  br i1 %cmp3.i, label %if.then.i8.iterate_object_props.exit_crit_edge, label %if.else.i

if.then.i8.iterate_object_props.exit_crit_edge:   ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %iterate_object_props.exit

if.else.i:                                        ; preds = %if.then.i8
  %cmp5.not.i = icmp eq i32 %call.i27.i, 0
  br i1 %cmp5.not.i, label %if.else.i.while.cond.i_crit_edge, label %if.else.i.iterate_object_props.exit_crit_edge

if.else.i.iterate_object_props.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iterate_object_props.exit

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end8.i:                                        ; preds = %while.cond.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #9
  %mul.i.i.i.i.i = mul i32 %11, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %21 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %13, ptr noundef nonnull %disk_key.i.i, i32 noundef %add.i.i.i.i.i, i32 noundef 17) #9
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %9, align 1
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %8, align 8
  %26 = ptrtoint ptr %disk_key.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %disk_key.i.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #9
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %ino.0.i)
  %cmp10.not.i = icmp eq i64 %28, %ino.0.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %25)
  %cmp13.not.i = icmp eq i8 %25, 24
  %or.cond.i = select i1 %cmp10.not.i, i1 %cmp13.not.i, i1 false
  br i1 %or.cond.i, label %if.end16.i, label %if.end8.i.iterate_object_props.exit_crit_edge

if.end8.i.iterate_object_props.exit_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iterate_object_props.exit

if.end16.i:                                       ; preds = %if.end8.i
  %29 = call i64 @llvm.bswap.i64(i64 %23) #9
  %conv.i28.i = trunc i64 %29 to i32
  %mul.i.i.i.i = mul i32 %conv.i28.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i.i = getelementptr [256 x %struct.hlist_head], ptr @prop_handlers_ht, i32 0, i32 %shr.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %31, null
  %tobool.not76.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i9 = or i1 %tobool.not76.i, %tobool.not.i.not.i.i
  br i1 %tobool.not.i9, label %if.end16.i.next_slot.i_crit_edge, label %if.end19.i

if.end16.i.next_slot.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_slot.i

if.end19.i:                                       ; preds = %if.end16.i
  %32 = inttoptr i32 %add.i.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %13, ptr noundef %32, i32 noundef 17) #9
  %call.i.i32.i = call i32 @btrfs_get_32(ptr noundef %13, ptr noundef %32, i32 noundef 21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %cmp2385.not.i = icmp eq i32 %call.i.i32.i, 0
  br i1 %cmp2385.not.i, label %if.end19.i.next_slot.i_crit_edge, label %while.body25.preheader.i

if.end19.i.next_slot.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_slot.i

while.body25.preheader.i:                         ; preds = %if.end19.i
  %add.i = add i32 %call.i.i.i, 101
  %33 = inttoptr i32 %add.i to ptr
  br label %while.body25.i

while.body25.i:                                   ; preds = %cleanup.i.while.body25.i_crit_edge, %while.body25.preheader.i
  %cur.092.i = phi i32 [ %add61.i, %cleanup.i.while.body25.i_crit_edge ], [ 0, %while.body25.preheader.i ]
  %di.091.i = phi ptr [ %add.ptr62.i, %cleanup.i.while.body25.i_crit_edge ], [ %33, %while.body25.preheader.i ]
  %value_buf_len.190.i = phi i32 [ %value_buf_len.3.i, %cleanup.i.while.body25.i_crit_edge ], [ %value_buf_len.0.i.ph, %while.body25.preheader.i ]
  %name_buf_len.189.i = phi i32 [ %name_buf_len.3.i, %cleanup.i.while.body25.i_crit_edge ], [ %name_buf_len.0.i.ph, %while.body25.preheader.i ]
  %value_buf.187.i = phi ptr [ %value_buf.3.i, %cleanup.i.while.body25.i_crit_edge ], [ %value_buf.0.i.ph, %while.body25.preheader.i ]
  %name_buf.186.i = phi ptr [ %name_buf.3.i, %cleanup.i.while.body25.i_crit_edge ], [ %name_buf.0.i.ph, %while.body25.preheader.i ]
  %call.i33.i = call zeroext i16 @btrfs_get_16(ptr noundef %13, ptr noundef %di.091.i, i32 noundef 27) #9
  %conv27.i = zext i16 %call.i33.i to i32
  %call.i34.i = call zeroext i16 @btrfs_get_16(ptr noundef %13, ptr noundef %di.091.i, i32 noundef 25) #9
  %conv29.i = zext i16 %call.i34.i to i32
  %add30.i = add nuw nsw i32 %conv27.i, 30
  %add31.i = add nuw nsw i32 %add30.i, %conv29.i
  %add.ptr.i10 = getelementptr %struct.btrfs_dir_item, ptr %di.091.i, i32 1
  %34 = ptrtoint ptr %add.ptr.i10 to i32
  %add32.i = add i32 %conv27.i, %34
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %call.i33.i)
  %cmp33.i = icmp ult i16 %call.i33.i, 7
  br i1 %cmp33.i, label %while.body25.i.cleanup.i_crit_edge, label %lor.lhs.false.i11

while.body25.i.cleanup.i_crit_edge:               ; preds = %while.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

lor.lhs.false.i11:                                ; preds = %while.body25.i
  %call35.i = call i32 @memcmp_extent_buffer(ptr noundef %13, ptr noundef nonnull @.str.5, i32 noundef %34, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %lor.lhs.false.i11.cleanup.i_crit_edge

lor.lhs.false.i11.cleanup.i_crit_edge:            ; preds = %lor.lhs.false.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end38.i:                                       ; preds = %lor.lhs.false.i11
  call void @__sanitizer_cov_trace_cmp4(i32 %name_buf_len.189.i, i32 %conv27.i)
  %cmp39.not.i = icmp ugt i32 %name_buf_len.189.i, %conv27.i
  br i1 %cmp39.not.i, label %if.end38.i.if.end5.i.i_crit_edge, label %if.then41.i

if.end38.i.if.end5.i.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @kfree(ptr noundef %name_buf.186.i) #9
  %add42.i = add nuw nsw i32 %conv27.i, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add42.i, i32 noundef 3136) #16
  %tobool44.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool44.not.i, label %if.then41.i.iterate_object_props.exit_crit_edge, label %if.then41.i.if.end5.i.i_crit_edge

if.then41.i.if.end5.i.i_crit_edge:                ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.then41.i.iterate_object_props.exit_crit_edge:  ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iterate_object_props.exit

if.end5.i.i:                                      ; preds = %if.then41.i.if.end5.i.i_crit_edge, %if.end38.i.if.end5.i.i_crit_edge
  %name_buf.2.i = phi ptr [ %call9.i.i, %if.then41.i.if.end5.i.i_crit_edge ], [ %name_buf.186.i, %if.end38.i.if.end5.i.i_crit_edge ]
  %name_buf_len.2.i = phi i32 [ %add42.i, %if.then41.i.if.end5.i.i_crit_edge ], [ %name_buf_len.189.i, %if.end38.i.if.end5.i.i_crit_edge ]
  call void @read_extent_buffer(ptr noundef %13, ptr noundef %name_buf.2.i, i32 noundef %34, i32 noundef %conv27.i) #9
  %arrayidx48.i = getelementptr i8, ptr %name_buf.2.i, i32 %conv27.i
  %35 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx48.i, align 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end5.i.i
  %h.0.in.i.i = phi ptr [ %arrayidx.i.i, %if.end5.i.i ], [ %h.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %36 = ptrtoint ptr %h.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %h.0.i.i = load ptr, ptr %h.0.in.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %h.0.i.i, null
  br i1 %tobool8.not.i.i, label %for.cond.i.i.cleanup.i_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %xattr_name.i.i = getelementptr inbounds %struct.prop_handler, ptr %h.0.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %xattr_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xattr_name.i.i, align 4
  %call9.i39.i = call i32 @strcmp(ptr noundef %38, ptr noundef %name_buf.2.i) #13
  %tobool10.not.i.i = icmp eq i32 %call9.i39.i, 0
  br i1 %tobool10.not.i.i, label %if.end52.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

if.end52.i:                                       ; preds = %for.body.i.i
  %xattr_name.i.i.le = getelementptr inbounds %struct.prop_handler, ptr %h.0.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %value_buf_len.190.i, i32 %conv29.i)
  %cmp53.i = icmp ult i32 %value_buf_len.190.i, %conv29.i
  br i1 %cmp53.i, label %if.then55.i, label %if.end52.i.if.end60.i_crit_edge

if.end52.i.if.end60.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @kfree(ptr noundef %value_buf.187.i) #9
  %call9.i23.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv29.i, i32 noundef 3136) #16
  %tobool57.not.i = icmp eq ptr %call9.i23.i, null
  br i1 %tobool57.not.i, label %if.then55.i.iterate_object_props.exit_crit_edge, label %if.then55.i.if.end60.i_crit_edge

if.then55.i.if.end60.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

if.then55.i.iterate_object_props.exit_crit_edge:  ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iterate_object_props.exit

if.end60.i:                                       ; preds = %if.then55.i.if.end60.i_crit_edge, %if.end52.i.if.end60.i_crit_edge
  %value_buf.2.i = phi ptr [ %call9.i23.i, %if.then55.i.if.end60.i_crit_edge ], [ %value_buf.187.i, %if.end52.i.if.end60.i_crit_edge ]
  %value_buf_len.2.i = phi i32 [ %conv29.i, %if.then55.i.if.end60.i_crit_edge ], [ %value_buf_len.190.i, %if.end52.i.if.end60.i_crit_edge ]
  call void @read_extent_buffer(ptr noundef %13, ptr noundef %value_buf.2.i, i32 noundef %add32.i, i32 noundef %conv29.i) #9
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  %apply.i.i = getelementptr inbounds %struct.prop_handler, ptr %h.0.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %apply.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %apply.i.i, align 4
  %call2.i.i = call i32 %42(ptr noundef %inode, ptr noundef %value_buf.2.i, i32 noundef %conv29.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i41.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i41.i, label %if.else.i.i, label %if.then.i44.i, !prof !44

if.then.i44.i:                                    ; preds = %if.end60.i
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_root, ptr %40, i32 0, i32 8
  %43 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fs_info.i.i, align 8
  %45 = ptrtoint ptr %xattr_name.i.i.le to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xattr_name.i.i.le, align 4
  %47 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %tobool.not.i.i43.i = icmp eq i64 %48, 0
  br i1 %tobool.not.i.i43.i, label %if.then.i44.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then.i44.i.if.then.i.i.i_crit_edge:            ; preds = %if.then.i44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then.i44.i
  %49 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %50)
  %cmp.i.i45.i = icmp eq i8 %50, -124
  br i1 %cmp.i.i45.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge

lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %btrfs_ino.exit.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %if.then.i44.i.if.then.i.i.i_crit_edge
  %51 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_ino.i.i.i, align 8
  %conv3.i.i.i = zext i32 %52 to i64
  br label %btrfs_ino.exit.i.i

btrfs_ino.exit.i.i:                               ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge
  %ino.0.i.i.i = phi i64 [ %conv3.i.i.i, %if.then.i.i.i ], [ %48, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge ]
  %root_key.i.i = getelementptr inbounds %struct.btrfs_root, ptr %40, i32 0, i32 7
  %53 = ptrtoint ptr %root_key.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %root_key.i.i, align 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %44, ptr noundef nonnull @.str.6, ptr noundef %46, i64 noundef %ino.0.i.i.i, i64 noundef %54, i32 noundef %call2.i.i) #15
  br label %cleanup.i

if.else.i.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 7, ptr noundef %runtime_flags.i.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i.i, %btrfs_ino.exit.i.i, %for.cond.i.i.cleanup.i_crit_edge, %lor.lhs.false.i11.cleanup.i_crit_edge, %while.body25.i.cleanup.i_crit_edge
  %name_buf.3.i = phi ptr [ %name_buf.186.i, %while.body25.i.cleanup.i_crit_edge ], [ %name_buf.186.i, %lor.lhs.false.i11.cleanup.i_crit_edge ], [ %name_buf.2.i, %btrfs_ino.exit.i.i ], [ %name_buf.2.i, %if.else.i.i ], [ %name_buf.2.i, %for.cond.i.i.cleanup.i_crit_edge ]
  %value_buf.3.i = phi ptr [ %value_buf.187.i, %while.body25.i.cleanup.i_crit_edge ], [ %value_buf.187.i, %lor.lhs.false.i11.cleanup.i_crit_edge ], [ %value_buf.2.i, %btrfs_ino.exit.i.i ], [ %value_buf.2.i, %if.else.i.i ], [ %value_buf.187.i, %for.cond.i.i.cleanup.i_crit_edge ]
  %name_buf_len.3.i = phi i32 [ %name_buf_len.189.i, %while.body25.i.cleanup.i_crit_edge ], [ %name_buf_len.189.i, %lor.lhs.false.i11.cleanup.i_crit_edge ], [ %name_buf_len.2.i, %btrfs_ino.exit.i.i ], [ %name_buf_len.2.i, %if.else.i.i ], [ %name_buf_len.2.i, %for.cond.i.i.cleanup.i_crit_edge ]
  %value_buf_len.3.i = phi i32 [ %value_buf_len.190.i, %while.body25.i.cleanup.i_crit_edge ], [ %value_buf_len.190.i, %lor.lhs.false.i11.cleanup.i_crit_edge ], [ %value_buf_len.2.i, %btrfs_ino.exit.i.i ], [ %value_buf_len.2.i, %if.else.i.i ], [ %value_buf_len.190.i, %for.cond.i.i.cleanup.i_crit_edge ]
  %add61.i = add i32 %add31.i, %cur.092.i
  %add.ptr62.i = getelementptr i8, ptr %di.091.i, i32 %add31.i
  %cmp23.i = icmp ult i32 %add61.i, %call.i.i32.i
  br i1 %cmp23.i, label %cleanup.i.while.body25.i_crit_edge, label %cleanup.i.next_slot.i_crit_edge

cleanup.i.next_slot.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_slot.i

cleanup.i.while.body25.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body25.i

next_slot.i:                                      ; preds = %cleanup.i.next_slot.i_crit_edge, %if.end19.i.next_slot.i_crit_edge, %if.end16.i.next_slot.i_crit_edge
  %name_buf.5.i = phi ptr [ %name_buf.0.i.ph, %if.end16.i.next_slot.i_crit_edge ], [ %name_buf.0.i.ph, %if.end19.i.next_slot.i_crit_edge ], [ %name_buf.3.i, %cleanup.i.next_slot.i_crit_edge ]
  %value_buf.5.i = phi ptr [ %value_buf.0.i.ph, %if.end16.i.next_slot.i_crit_edge ], [ %value_buf.0.i.ph, %if.end19.i.next_slot.i_crit_edge ], [ %value_buf.3.i, %cleanup.i.next_slot.i_crit_edge ]
  %name_buf_len.5.i = phi i32 [ %name_buf_len.0.i.ph, %if.end16.i.next_slot.i_crit_edge ], [ %name_buf_len.0.i.ph, %if.end19.i.next_slot.i_crit_edge ], [ %name_buf_len.3.i, %cleanup.i.next_slot.i_crit_edge ]
  %value_buf_len.5.i = phi i32 [ %value_buf_len.0.i.ph, %if.end16.i.next_slot.i_crit_edge ], [ %value_buf_len.0.i.ph, %if.end19.i.next_slot.i_crit_edge ], [ %value_buf_len.3.i, %cleanup.i.next_slot.i_crit_edge ]
  %55 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %slots.i, align 4
  %inc.i = add i32 %56, 1
  store i32 %inc.i, ptr %slots.i, align 4
  br label %while.cond.i.outer

iterate_object_props.exit:                        ; preds = %if.then55.i.iterate_object_props.exit_crit_edge, %if.then41.i.iterate_object_props.exit_crit_edge, %if.end8.i.iterate_object_props.exit_crit_edge, %if.else.i.iterate_object_props.exit_crit_edge, %if.then.i8.iterate_object_props.exit_crit_edge
  %value_buf.666.i = phi ptr [ null, %if.then55.i.iterate_object_props.exit_crit_edge ], [ %value_buf.187.i, %if.then41.i.iterate_object_props.exit_crit_edge ], [ %value_buf.0.i.ph, %if.end8.i.iterate_object_props.exit_crit_edge ], [ %value_buf.0.i.ph, %if.else.i.iterate_object_props.exit_crit_edge ], [ %value_buf.0.i.ph, %if.then.i8.iterate_object_props.exit_crit_edge ]
  %name_buf.664.i = phi ptr [ %name_buf.2.i, %if.then55.i.iterate_object_props.exit_crit_edge ], [ null, %if.then41.i.iterate_object_props.exit_crit_edge ], [ %name_buf.0.i.ph, %if.end8.i.iterate_object_props.exit_crit_edge ], [ %name_buf.0.i.ph, %if.else.i.iterate_object_props.exit_crit_edge ], [ %name_buf.0.i.ph, %if.then.i8.iterate_object_props.exit_crit_edge ]
  %ret.5.i = phi i32 [ -12, %if.then55.i.iterate_object_props.exit_crit_edge ], [ -12, %if.then41.i.iterate_object_props.exit_crit_edge ], [ 0, %if.else.i.iterate_object_props.exit_crit_edge ], [ %call.i27.i, %if.then.i8.iterate_object_props.exit_crit_edge ], [ 0, %if.end8.i.iterate_object_props.exit_crit_edge ]
  call void @btrfs_release_path(ptr noundef %path) #9
  call void @kfree(ptr noundef %name_buf.664.i) #9
  call void @kfree(ptr noundef %value_buf.666.i) #9
  ret i32 %ret.5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_inode_inherit_props(ptr noundef %trans, ptr noundef %inode, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dir, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @inherit_props(ptr noundef %trans, ptr noundef %inode, ptr noundef nonnull %dir)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inherit_props(ptr noundef %trans, ptr noundef %inode, ptr noundef %parent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_flags = getelementptr i8, ptr %parent, i32 -356
  %0 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %runtime_flags, align 4
  %2 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup49_crit_edge, label %for.cond.preheader

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

for.cond.preheader:                               ; preds = %entry
  %runtime_flags36 = getelementptr i8, ptr %inode, i32 -356
  %3 = load i32, ptr getelementptr inbounds ([1 x %struct.prop_handler], ptr @prop_handlers, i32 0, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %for.cond.preheader.cleanup49_crit_edge, label %if.end7

for.cond.preheader.cleanup49_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.end7:                                          ; preds = %for.cond.preheader
  %4 = load ptr, ptr getelementptr inbounds ([1 x %struct.prop_handler], ptr @prop_handlers, i32 0, i32 0, i32 4), align 4
  %call8 = tail call ptr %4(ptr noundef %parent) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup49_crit_edge, label %if.end11

if.end7.cleanup49_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.end11:                                         ; preds = %if.end7
  %5 = load ptr, ptr getelementptr inbounds ([1 x %struct.prop_handler], ptr @prop_handlers, i32 0, i32 0, i32 2), align 4
  %call12 = tail call i32 @strlen(ptr noundef nonnull %call8) #12
  %call13 = tail call i32 %5(ptr noundef nonnull %call8, i32 noundef %call12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end24, label %if.end11.cleanup49_crit_edge

if.end11.cleanup49_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.end24:                                         ; preds = %if.end11
  %6 = load ptr, ptr getelementptr inbounds ([1 x %struct.prop_handler], ptr @prop_handlers, i32 0, i32 0, i32 1), align 4
  %call25 = tail call i32 @strlen(ptr noundef nonnull %call8) #12
  %call26 = tail call i32 @btrfs_setxattr(ptr noundef %trans, ptr noundef %inode, ptr noundef %6, ptr noundef nonnull %call8, i32 noundef %call25, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end24.cleanup49_crit_edge

if.end24.cleanup49_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.then28:                                        ; preds = %if.end24
  %7 = load ptr, ptr getelementptr inbounds ([1 x %struct.prop_handler], ptr @prop_handlers, i32 0, i32 0, i32 3), align 4
  %call29 = tail call i32 @strlen(ptr noundef nonnull %call8) #12
  %call30 = tail call i32 %7(ptr noundef %inode, ptr noundef nonnull %call8, i32 noundef %call29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end38.thread, label %if.then32

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %8 = load ptr, ptr getelementptr inbounds ([1 x %struct.prop_handler], ptr @prop_handlers, i32 0, i32 0, i32 1), align 4
  %call34 = tail call i32 @btrfs_setxattr(ptr noundef %trans, ptr noundef %inode, ptr noundef %8, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup49

if.end38.thread:                                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 7, ptr noundef %runtime_flags36) #9
  br label %cleanup49

cleanup49:                                        ; preds = %if.end38.thread, %if.then32, %if.end24.cleanup49_crit_edge, %if.end11.cleanup49_crit_edge, %if.end7.cleanup49_crit_edge, %for.cond.preheader.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_subvol_inherit_props(ptr noundef %trans, ptr noundef %root, ptr noundef %parent_root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 8
  %sb1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb1, align 8
  %call = tail call ptr @btrfs_iget(ptr noundef %3, i64 noundef 256, ptr noundef %parent_root) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @btrfs_iget(ptr noundef %3, i64 noundef 256, ptr noundef %root) #9
  %cmp.i22 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iput(ptr noundef %call) #9
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call fastcc i32 @inherit_props(ptr noundef %trans, ptr noundef %call4, ptr noundef %call)
  tail call void @iput(ptr noundef %call4) #9
  tail call void @iput(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %5, %if.then6 ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_iget(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_props_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ([1 x %struct.prop_handler], ptr @prop_handlers, i32 0, i32 0, i32 1), align 4
  %call = tail call i32 @strlen(ptr noundef %0) #12
  %call.i = tail call i32 @crc32c(i32 noundef -2, ptr noundef %0, i32 noundef %call) #9
  %mul.i.i = mul i32 %call.i, 1640531527
  %shr.i = lshr i32 %mul.i.i, 24
  %arrayidx4 = getelementptr [256 x %struct.hlist_head], ptr @prop_handlers_ht, i32 0, i32 %shr.i
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx4, align 4
  store volatile ptr %2, ptr @prop_handlers, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.hlist_add_head.exit_crit_edge, label %do.body12.i

entry.hlist_add_head.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr @prop_handlers, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %entry.hlist_add_head.exit_crit_edge
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr @prop_handlers, ptr %arrayidx4, align 4
  store volatile ptr %arrayidx4, ptr getelementptr inbounds ([1 x %struct.prop_handler], ptr @prop_handlers, i32 0, i32 0, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @btrfs_get_16(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prop_compression_validate(ptr noundef %value, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @btrfs_compress_is_valid_type(ptr noundef nonnull %value, i32 noundef %len) #9
  br i1 %call, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2:                                          ; preds = %if.end
  %0 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %if.end2.if.end10_crit_edge [
    i32 2, label %land.lhs.true
    i32 4, label %land.lhs.true6
  ]

if.end2.if.end10_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end2
  %call3 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(3) @.str.8, ptr noundef nonnull %value, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true6:                                   ; preds = %if.end2
  %call7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.9, ptr noundef nonnull %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true6.return_crit_edge, label %land.lhs.true6.if.end10_crit_edge

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end10:                                         ; preds = %land.lhs.true6.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end2.if.end10_crit_edge
  br label %return

return:                                           ; preds = %if.end10, %land.lhs.true6.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.end10 ], [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %land.lhs.true6.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prop_compression_apply(ptr nocapture noundef %inode, ptr nocapture noundef readonly %value, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %len, label %entry.if.end21_crit_edge [
    i32 0, label %if.then
    i32 2, label %land.lhs.true
    i32 4, label %land.lhs.true10
  ]

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr i8, ptr %inode, i32 -240
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and4 = and i32 %6, -2057
  store i32 %and4, ptr %flags, align 8
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %entry
  %call7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(3) @.str.8, ptr noundef %value, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true.if.then13_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

land.lhs.true10:                                  ; preds = %entry
  %call11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.9, ptr noundef %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true10.if.then13_crit_edge, label %land.lhs.true10.if.end21_crit_edge

land.lhs.true10.if.end21_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true10.if.then13_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %land.lhs.true10.if.then13_crit_edge, %land.lhs.true.if.then13_crit_edge
  %flags15 = getelementptr i8, ptr %inode, i32 -240
  %7 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags15, align 8
  %or = and i32 %8, -2057
  %and18 = or i32 %or, 8
  store i32 %and18, ptr %flags15, align 8
  br label %cleanup.sink.split

if.end21:                                         ; preds = %land.lhs.true10.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %entry.if.end21_crit_edge
  %call22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.10, ptr noundef %value, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end21
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 43
  %9 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %super_copy.i, align 8
  %incompat_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %incompat_flags.i.i, align 1
  %13 = and i64 %12, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then23.if.end34_crit_edge

if.then23.if.end34_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then.i:                                        ; preds = %if.then23
  %super_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %super_lock.i) #9
  %14 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %incompat_flags.i.i, align 1
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #9
  %and2.i = and i64 %16, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.if.end34.sink.split_crit_edge

if.then.i.if.end34.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i64 %16, 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %or.i) #9
  %18 = ptrtoint ptr %incompat_flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %incompat_flags.i.i, align 1
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, i64 noundef 8) #15
  br label %if.end34.sink.split

if.else:                                          ; preds = %if.end21
  %call24 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.12, ptr noundef %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else.if.end34_crit_edge, label %if.else27

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.else27:                                        ; preds = %if.else
  %call28 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.13, ptr noundef %value, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.else27.cleanup_crit_edge

if.else27.cleanup_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30:                                        ; preds = %if.else27
  %super_copy.i65 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 43
  %19 = ptrtoint ptr %super_copy.i65 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %super_copy.i65, align 8
  %incompat_flags.i.i66 = getelementptr inbounds %struct.btrfs_super_block, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %incompat_flags.i.i66 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %incompat_flags.i.i66, align 1
  %23 = and i64 %22, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool.not.i68 = icmp eq i64 %23, 0
  br i1 %tobool.not.i68, label %if.then.i72, label %if.then30.if.end34_crit_edge

if.then30.if.end34_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then.i72:                                      ; preds = %if.then30
  %super_lock.i69 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %super_lock.i69) #9
  %24 = ptrtoint ptr %incompat_flags.i.i66 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %incompat_flags.i.i66, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #9
  %and2.i70 = and i64 %26, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i70)
  %tobool3.not.i71 = icmp eq i64 %and2.i70, 0
  br i1 %tobool3.not.i71, label %if.then4.i74, label %if.then.i72.if.end34.sink.split_crit_edge

if.then.i72.if.end34.sink.split_crit_edge:        ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

if.then4.i74:                                     ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #11
  %or.i73 = or i64 %26, 16
  %27 = tail call i64 @llvm.bswap.i64(i64 %or.i73) #9
  %28 = ptrtoint ptr %incompat_flags.i.i66 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %incompat_flags.i.i66, align 1
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i64 noundef 16) #15
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then4.i74, %if.then.i72.if.end34.sink.split_crit_edge, %if.then4.i, %if.then.i.if.end34.sink.split_crit_edge
  %super_lock.i69.sink = phi ptr [ %super_lock.i, %if.then4.i ], [ %super_lock.i, %if.then.i.if.end34.sink.split_crit_edge ], [ %super_lock.i69, %if.then4.i74 ], [ %super_lock.i69, %if.then.i72.if.end34.sink.split_crit_edge ]
  %type.0.ph = phi i32 [ 2, %if.then4.i ], [ 2, %if.then.i.if.end34.sink.split_crit_edge ], [ 3, %if.then4.i74 ], [ 3, %if.then.i72.if.end34.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %super_lock.i69.sink) #9
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.then30.if.end34_crit_edge, %if.else.if.end34_crit_edge, %if.then23.if.end34_crit_edge
  %type.0 = phi i32 [ 1, %if.else.if.end34_crit_edge ], [ 2, %if.then23.if.end34_crit_edge ], [ 3, %if.then30.if.end34_crit_edge ], [ %type.0.ph, %if.end34.sink.split ]
  %flags36 = getelementptr i8, ptr %inode, i32 -240
  %29 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags36, align 8
  %and37 = and i32 %30, -2057
  %or40 = or i32 %and37, 2048
  store i32 %or40, ptr %flags36, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end34, %if.then13, %if.then
  %type.0.sink = phi i32 [ %type.0, %if.end34 ], [ 0, %if.then13 ], [ 0, %if.then ]
  %prop_compress42 = getelementptr i8, ptr %inode, i32 -136
  %31 = ptrtoint ptr %prop_compress42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %type.0.sink, ptr %prop_compress42, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else27.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else27.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prop_compression_extract(ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %prop_compress = getelementptr i8, ptr %inode, i32 -136
  %0 = ptrtoint ptr %prop_compress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prop_compress, align 8
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call ptr @btrfs_compress_type2str(i32 noundef %1) #9
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call3, %sw.bb ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_compress_is_valid_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_compress_type2str(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold noreturn }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/props.c", i32 93, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @assertfail._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @assertfail._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/btrfs/props.c", i32 174, i32 35}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/btrfs/props.c", i32 236, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/btrfs/props.c", i32 329, i32 17}
!15 = !{ptr @prop_handlers, !16, !"prop_handlers", i1 false, i1 false}
!16 = !{!"../fs/btrfs/props.c", i32 327, i32 28}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/btrfs/props.c", i32 263, i32 27}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/btrfs/props.c", i32 264, i32 27}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/props.c", i32 294, i32 15}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/btrfs/props.c", i32 296, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/btrfs/props.c", i32 297, i32 22}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/props.c", i32 299, i32 22}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/btrfs/props.c", i32 301, i32 3}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/btrfs/ctree.h", i32 3648, i32 4}
!33 = !{ptr @prop_handlers_ht, !34, !"prop_handlers_ht", i1 false, i1 false}
!34 = !{!"../fs/btrfs/props.c", i32 15, i32 8}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2158193351, i64 2158193833, i64 2158193388, i64 2158193444, i64 2158193478, i64 2158193502, i64 2158193543, i64 2158193564, i64 2158193592, i64 2158193626}
