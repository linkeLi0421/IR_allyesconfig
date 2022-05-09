; ModuleID = '/llk/IR_all_yes/fs/btrfs/tree-checker.c_pt.bc'
source_filename = "../fs/btrfs/tree-checker.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.btrfs_raid_attr = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.86 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_block_group_item = type { i64, i64, i64 }
%struct.btrfs_dir_item = type <{ %struct.btrfs_disk_key, i64, i16, i16, i8 }>
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
%struct.btrfs_extent_item = type { i64, i64, i64 }
%struct.btrfs_tree_block_info = type { %struct.btrfs_disk_key, i8 }
%struct.btrfs_extent_inline_ref = type <{ i8, i64 }>

@btrfs_raid_array = external dso_local local_unnamed_addr constant [9 x %struct.btrfs_raid_attr], align 8
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid chunk num_stripes, have %u\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"invalid chunk num_stripes < ncopies, have %u < %d\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid chunk num_stripes == nparity, have %u == %d\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"invalid chunk logical, have %llu should aligned to %u\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid chunk sectorsize, have %u expect %u\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid chunk length, have %llu\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"invalid chunk logical start and length, have logical start %llu length %llu\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid chunk stripe length: %llu\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unrecognized chunk type: 0x%llx\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"invalid chunk profile flag: 0x%llx, expect 0 or 1 bit set\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"missing chunk type flag, have 0x%llx one bit must be set in 0x%llx\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"system chunk with data or metadata type: 0x%llx\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mixed chunk type in non-mixed mode: 0x%llx\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid num_stripes:sub_stripes %u:%u for profile %llu\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"invalid level for node, have %d expect [1, %d]\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\012corrupt node: root=%llu block=%llu, nritems too %s, have %lu expect range [1,%u]\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"small\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"large\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid NULL node pointer\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"unaligned pointer, have %llu should be aligned to %u\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bad key order, current (%llu %u %llu) next (%llu %u %llu)\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\012corrupt superblock syschunk array: chunk_start=%llu, %pV\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\012corrupt leaf: root=%llu block=%llu slot=%d chunk_start=%llu, %pV\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid level for leaf, have %d expect 0\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid root, root %llu must never be empty\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid owner, root 0 is not defined\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bad key order, prev (%llu %u %llu) current (%llu %u %llu)\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unexpected item end, have %llu expect %u\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"slot end outside of leaf, have %llu expect range [0, %u]\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"slot overlaps with its data, item end %lu data start %lu\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"unaligned file_offset for file extent, have %llu should be aligned to %u\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid item size, have %u expect [%zu, %u)\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"invalid type for file extent, have %u expect range [0, %u]\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"invalid compression for file extent, have %u expect range [0, %u]\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"invalid encryption for file extent, have %u expect 0\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"invalid file_offset for inline file extent, have %llu expect 0\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"invalid ram_bytes for uncompressed inline extent, have %u expect %llu\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"invalid item size for reg/prealloc file extent, have %u expect %zu\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"invalid %s for file extent, have %llu, should be aligned to %u\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ram_bytes\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disk_bytenr\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disk_num_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num_bytes\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"extent end overflow, have file offset %llu extent num bytes %llu\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"file extent end range (%llu) goes beyond start offset (%llu) of the next file extent\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\012corrupt %s: root=%llu block=%llu slot=%d ino=%llu file_offset=%llu, %pV\00", [54 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"leaf\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [179 x i8], [45 x i8] } { [179 x i8] c"key->type == BTRFS_XATTR_ITEM_KEY || key->type == BTRFS_INODE_REF_KEY || key->type == BTRFS_DIR_INDEX_KEY || key->type == BTRFS_DIR_ITEM_KEY || key->type == BTRFS_EXTENT_DATA_KEY\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/btrfs/tree-checker.c\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"invalid previous key objectid, have %llu expect %llu\00", [43 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.54, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.55 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\012corrupt %s: root=%llu block=%llu slot=%d ino=%llu, %pV\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"invalid key objectid for csum item, have %llu expect %llu\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"unaligned key offset for csum item, have %llu should be aligned to %u\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"unaligned item size for csum item, have %u should be aligned to %u\00", [61 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"csum end range (%llu) goes beyond the start range (%llu) of the next csum item\00", [49 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"dir item header crosses item boundary, have %zu boundary %u\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid location key type, have %u, expect %u or %u\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid dir item type, have %u expect [0, %u)\00", [50 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid dir item type for XATTR key, have %u expect %u\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"xattr dir type found for non-XATTR key\00", [57 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dir item name len too long, have %u max %u\00", [53 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"dir item name and data len too long, have %u max %u\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"dir item with invalid data len, have %u expect 0\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"dir item data crosses item boundary, have %u boundary %u\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"name hash mismatch with key, have 0x%016x expect 0x%016llx\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid root id 0\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid location key root id 0\00", [33 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"invalid location key objectid, have %llu expect [%llu, %llu]\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid root id 0 for reloc tree\00", [63 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"invalid key objectid: has %llu expect %llu or [%llu, %llu] or %llu\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"invalid location key objectid: has %llu expect %llu or [%llu, %llu] or %llu\00", [52 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid key offset: has %llu expect 0\00", [58 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid location key offset:has %llu expect 0\00", [50 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid item size, have %u expect (%zu, %u)\00", [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"inode ref overflow, ptr %lu end %lu inode_ref_size %zu\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"inode ref overflow, ptr %lu end %lu namelen %u\00", [49 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid block group size 0\00", [37 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid item size, have %u expect %zu\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"invalid block group chunk objectid, have %llu expect %llu\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"invalid block group used, have %llu expect [0, %llu)\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"invalid profile flags, have 0x%llx (%lu bits set) expect no more than 1 bit set\00", [48 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"invalid type, have 0x%llx (%lu bits set) expect either 0x%llx, 0x%llx, 0x%llx or 0x%llx\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\012corrupt %s: root=%llu block=%llu slot=%d bg_start=%llu bg_len=%llu, %pV\00", [54 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"invalid chunk item size: have %u expect [%zu, %u)\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid chunk item size: have %u expect %lu\00", [52 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid objectid: has=%llu expect=%llu\00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid item size: has %u expect %zu\00", [59 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"devid mismatch: key has=%llu item has=%llu\00", [53 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"invalid bytes used: have %llu expect [0, %llu]\00", [49 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\012corrupt %s: root=%llu block=%llu slot=%d devid=%llu %pV\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid inode generation: has %llu expect (0, %llu]\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid inode transid: has %llu expect [0, %llu]\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown mode bit detected: 0x%x\00", [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"invalid mode: has 0%o expect valid S_IF* bit(s)\00", [48 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid nlink: has %u expect no more than 1 for dir\00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unknown incompat flags detected: 0x%x\00", [58 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"unknown ro-compat flags detected on writeable mount: 0x%x\00", [38 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid root item size, have %u expect %zu or %u\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid root generation, have %llu expect (0, %llu]\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid root v2 generation, have %llu expect (0, %llu]\00", [41 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid root last_snapshot, have %llu expect (0, %llu]\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"invalid root bytenr, have %llu expect to be aligned to %u\00", [38 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"invalid root level, have %u expect [0, %u]\00", [53 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"invalid root flags, have 0x%llx expect mask 0x%llx\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"invalid key type, METADATA_ITEM type invalid when SKINNY_METADATA feature disabled\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"invalid key objectid, have %llu expect to be aligned to %u\00", [37 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid tree level, have %llu expect [0, %u]\00", [51 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"invalid generation, have %llu expect (0, %llu]\00", [49 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"invalid extent flag, have 0x%llx expect 1 bit set in 0x%llx\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"invalid extent length, have %llu expect %u\00", [53 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"invalid key type, have %u expect %u for data backref\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"invalid extent length, have %llu expect aligned to %u\00", [42 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"invalid extent flag, data has full backref set\00", [49 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"invalid tree block info level, have %u expect [0, %u]\00", [42 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"inline ref item overflows extent item, ptr %lu iref size %zu end %lu\00", [59 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"inline ref item overflows extent item, ptr %lu iref size %u end %lu\00", [60 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"invalid tree parent bytenr, have %llu expect aligned to %u\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"invalid data ref offset, have %llu expect aligned to %u\00", [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"invalid data parent bytenr, have %llu expect aligned to %u\00", [37 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unknown inline ref type: %u\00", [36 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid extent item size, padding bytes found\00", [50 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"invalid extent refs, have %llu expect >= inline %llu\00", [43 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\012corrupt %s: block=%llu slot=%d extent bytenr=%llu len=%llu %pV\00", [63 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"invalid item size, have %u expect %u for key type %u\00", [43 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"invalid key objectid for shared block ref, have %llu expect aligned to %u\00", [54 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"invalid item size, have %u expect aligned to %zu for key type %u\00", [63 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"invalid extent data backref offset, have %llu expect aligned to %u\00", [61 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\012corrupt %s: root=%llu block=%llu slot=%d, %pV\00", [48 x i8] zeroinitializer }, align 32
@switch.table.check_leaf = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 9, i32 0, i32 29, i32 0, i32 0, i32 0, i32 9, i32 0, i32 13], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 64, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 -9]
@__sancov_gen_cov_switch_values.133 = internal global [19 x i64] [i64 17, i64 8, i64 1, i64 12, i64 24, i64 84, i64 96, i64 108, i64 128, i64 132, i64 168, i64 169, i64 176, i64 178, i64 182, i64 184, i64 192, i64 216, i64 228]
@__sancov_gen_cov_switch_values.134 = internal global [7 x i64] [i64 5, i64 8, i64 12, i64 24, i64 84, i64 96, i64 108]
@__sancov_gen_cov_switch_values.135 = internal global [7 x i64] [i64 5, i64 8, i64 12, i64 24, i64 84, i64 96, i64 108]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 132]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 24, i64 84]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 16, i64 24576, i64 40960, i64 49152]
@__sancov_gen_cov_switch_values.139 = internal global [6 x i64] [i64 4, i64 8, i64 176, i64 178, i64 182, i64 184]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 64, i64 6, i64 -12]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 8, i64 169, i64 176, i64 182]
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 786, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 791, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 797, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 803, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 809, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 816, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 821, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 827, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 834, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 844, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 850, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 859, i32 6 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 872, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 894, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1783, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1788, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1803, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1809, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1817, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 742, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 746, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1632, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1656, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1663, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1693, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1714, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1726, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1735, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 210, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 232, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 240, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 253, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 260, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 268, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 282, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 293, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 297, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 308, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 329, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 90, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 176, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 194, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3491, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 150, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 347, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 353, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 359, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 372, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 506, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 524, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 534, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 542, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 549, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 562, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 568, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 576, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 586, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 604, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 448, i32 28 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 451, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 458, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 474, i32 27 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 407, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 414, i32 1 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 424, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 429, i32 5 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1526, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1539, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1548, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 653, i32 5 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 659, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 669, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 677, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 685, i32 1 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 698, i32 1 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 631, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 917, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 932, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 972, i32 9 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 978, i32 28 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 986, i32 9 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 999, i32 9 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 956, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1038, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1046, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1059, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1072, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1079, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1086, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1092, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1117, i32 8 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1135, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1143, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1151, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1160, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1166, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1180, i32 8 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1235, i32 1 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1241, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1250, i32 7 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1291, i32 7 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1299, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1309, i32 8 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1316, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1322, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1328, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1341, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1360, i32 1 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1369, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1384, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1400, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1412, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1419, i32 27 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1428, i32 7 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1435, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1211, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1452, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1459, i32 1 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1482, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1504, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.542 = private constant [27 x i8] c"../fs/btrfs/tree-checker.c\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 63, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant [24 x i8] c"switch.table.check_leaf\00", align 1
@llvm.compiler.used = appending global [136 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @switch.table.check_leaf], section "llvm.metadata"
@0 = internal global [135 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 179, i32 224, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.check_leaf to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_chunk_valid(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %call.i = tail call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %chunk, i32 noundef 0) #10
  %call.i392 = tail call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %chunk, i32 noundef 16) #10
  %call.i393 = tail call zeroext i16 @btrfs_get_16(ptr noundef %leaf, ptr noundef %chunk, i32 noundef 44) #10
  %call.i394 = tail call zeroext i16 @btrfs_get_16(ptr noundef %leaf, ptr noundef %chunk, i32 noundef 46) #10
  %call.i395 = tail call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %chunk, i32 noundef 24) #10
  %call6 = tail call i32 @btrfs_bg_flags_to_raid_index(i64 noundef %call.i395) #13
  %ncopies7 = getelementptr [9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 %call6, i32 6
  %2 = ptrtoint ptr %ncopies7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ncopies7, align 2
  %conv = zext i8 %3 to i32
  %nparity9 = getelementptr [9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 %call6, i32 7
  %4 = ptrtoint ptr %nparity9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nparity9, align 1
  %conv10 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i393)
  %tobool.not = icmp eq i16 %call.i393, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str, i32 noundef 0) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv15 = zext i16 %call.i393 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %conv)
  %cmp = icmp ult i32 %conv15, %conv
  br i1 %cmp, label %if.then23, label %if.end25, !prof !265

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.1, i32 noundef %conv15, i32 noundef %conv) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool26.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %conv10)
  %cmp28 = icmp eq i32 %conv15, %conv10
  %spec.select = select i1 %tobool26.not, i1 %cmp28, i1 false
  br i1 %spec.select, label %if.then36, label %if.end38, !prof !265

if.then36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.2, i32 noundef %conv10, i32 noundef %conv10) #14
  br label %cleanup

if.end38:                                         ; preds = %if.end25
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  %6 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sectorsize, align 4
  %conv39 = zext i32 %7 to i64
  %sub = add nsw i64 %conv39, -1
  %and = and i64 %sub, %logical
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp40.not = icmp eq i64 %and, 0
  br i1 %cmp40.not, label %if.end52, label %if.then50, !prof !266

if.then50:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.3, i64 noundef %logical, i32 noundef %7) #14
  br label %cleanup

if.end52:                                         ; preds = %if.end38
  %call.i396 = tail call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %chunk, i32 noundef 40) #10
  %8 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i396, i32 %9)
  %cmp55.not = icmp eq i32 %call.i396, %9
  br i1 %cmp55.not, label %if.end66, label %if.then63, !prof !266

if.then63:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %call.i397 = tail call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %chunk, i32 noundef 40) #10
  %10 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sectorsize, align 4
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.4, i32 noundef %call.i397, i32 noundef %11) #14
  br label %cleanup

if.end66:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %tobool67.not = icmp eq i64 %call.i, 0
  br i1 %tobool67.not, label %if.end66.if.then82_crit_edge, label %lor.rhs, !prof !265

if.end66.if.then82_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

lor.rhs:                                          ; preds = %if.end66
  %conv69 = zext i32 %call.i396 to i64
  %sub70 = add nsw i64 %conv69, -1
  %and71 = and i64 %sub70, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and71)
  %cmp72.not = icmp eq i64 %and71, 0
  br i1 %cmp72.not, label %if.end83, label %lor.rhs.if.then82_crit_edge, !prof !266

lor.rhs.if.then82_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

if.then82:                                        ; preds = %lor.rhs.if.then82_crit_edge, %if.end66.if.then82_crit_edge
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.5, i64 noundef %call.i) #14
  br label %cleanup

if.end83:                                         ; preds = %lor.rhs
  %12 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %logical, i64 %call.i)
  %13 = extractvalue { i64, i1 } %12, 1
  br i1 %13, label %if.then96, label %if.end97, !prof !265

if.then96:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.6, i64 noundef %logical, i64 noundef %call.i) #14
  br label %cleanup

if.end97:                                         ; preds = %if.end83
  %conv98 = trunc i64 %call.i392 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv98)
  %cmp.not.i = icmp eq i32 %conv98, 0
  br i1 %cmp.not.i, label %if.end97.if.then110_crit_edge, label %is_power_of_2.exit, !prof !267

if.end97.if.then110_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110

is_power_of_2.exit:                               ; preds = %if.end97
  %14 = tail call i32 @llvm.ctpop.i32(i32 %conv98) #10, !range !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp1.i = icmp ugt i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %call.i392)
  %cmp101 = icmp ne i64 %call.i392, 65536
  %brmerge = select i1 %cmp1.i, i1 true, i1 %cmp101
  br i1 %brmerge, label %is_power_of_2.exit.if.then110_crit_edge, label %if.end111, !prof !269

is_power_of_2.exit.if.then110_crit_edge:          ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then110

if.then110:                                       ; preds = %is_power_of_2.exit.if.then110_crit_edge, %if.end97.if.then110_crit_edge
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.7, i64 noundef %call.i392) #14
  br label %cleanup

if.end111:                                        ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %call.i395)
  %tobool113.not = icmp ult i64 %call.i395, 2048
  br i1 %tobool113.not, label %if.end123, label %if.then120, !prof !266

if.then120:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %call.i398 = tail call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %chunk, i32 noundef 24) #10
  %and122 = and i64 %call.i398, -2048
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.8, i64 noundef %and122) #14
  br label %cleanup

if.end123:                                        ; preds = %if.end111
  %and124 = and i64 %call.i395, 2040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and124)
  %cmp.not.i.i = icmp eq i64 %and124, 0
  %15 = tail call i64 @llvm.ctpop.i64(i64 %and124) #10, !range !270
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %15)
  %cmp1.i.i = icmp ult i64 %15, 2
  %or.cond = or i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %or.cond, label %if.end139, label %if.then137

if.then137:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.9, i64 noundef %and124) #14
  br label %cleanup

if.end139:                                        ; preds = %if.end123
  %and140 = and i64 %call.i395, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and140)
  %cmp141 = icmp eq i64 %and140, 0
  br i1 %cmp141, label %if.then149, label %if.end150, !prof !265

if.then149:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.10, i64 noundef %call.i395, i64 noundef 7) #14
  br label %cleanup

if.end150:                                        ; preds = %if.end139
  %and151 = and i64 %call.i395, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and151)
  %tobool152.not = icmp ne i64 %and151, 0
  %and154 = and i64 %call.i395, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and154)
  %tobool155 = icmp ne i64 %and154, 0
  %16 = and i1 %tobool152.not, %tobool155
  br i1 %16, label %if.then163, label %if.end164, !prof !265

if.then163:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.11, i64 noundef %call.i395) #14
  br label %cleanup

if.end164:                                        ; preds = %if.end150
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %17 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %super_copy, align 8
  %incompat_flags.i = getelementptr inbounds %struct.btrfs_super_block, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %incompat_flags.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %incompat_flags.i, align 1
  %21 = and i64 %20, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool167.not = icmp eq i64 %21, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %and154)
  %22 = icmp eq i64 %and154, 5
  %or.cond403 = and i1 %22, %tobool167.not
  br i1 %or.cond403, label %if.then184, label %if.end186, !prof !271

if.then184:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.12, i64 noundef %call.i395) #14
  br label %cleanup

if.end186:                                        ; preds = %if.end164
  %and187 = and i64 %call.i395, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and187)
  %tobool188.not = icmp eq i64 %and187, 0
  br i1 %tobool188.not, label %if.end186.lor.lhs.false_crit_edge, label %land.lhs.true

if.end186.lor.lhs.false_crit_edge:                ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end186
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @btrfs_raid_array to i32))
  %23 = load i8, ptr @btrfs_raid_array, align 8
  %24 = zext i8 %23 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i394, i16 %24)
  %cmp191.not = icmp eq i16 %call.i394, %24
  br i1 %cmp191.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then257_crit_edge, !prof !266

land.lhs.true.if.then257_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then257

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end186.lor.lhs.false_crit_edge
  %and193 = and i64 %call.i395, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and193)
  %tobool194.not = icmp eq i64 %and193, 0
  br i1 %tobool194.not, label %lor.lhs.false.lor.lhs.false200_crit_edge, label %land.lhs.true195

lor.lhs.false.lor.lhs.false200_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false200

land.lhs.true195:                                 ; preds = %lor.lhs.false
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 1, i32 3) to i32))
  %25 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 1, i32 3), align 1
  %26 = zext i8 %25 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i393, i16 %26)
  %cmp198.not = icmp eq i16 %call.i393, %26
  br i1 %cmp198.not, label %land.lhs.true195.lor.lhs.false200_crit_edge, label %land.lhs.true195.if.then257_crit_edge, !prof !266

land.lhs.true195.if.then257_crit_edge:            ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then257

land.lhs.true195.lor.lhs.false200_crit_edge:      ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %land.lhs.true195.lor.lhs.false200_crit_edge, %lor.lhs.false.lor.lhs.false200_crit_edge
  %and201 = and i64 %call.i395, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and201)
  %tobool202.not = icmp eq i64 %and201, 0
  br i1 %tobool202.not, label %lor.lhs.false200.lor.lhs.false208_crit_edge, label %land.lhs.true203

lor.lhs.false200.lor.lhs.false208_crit_edge:      ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false208

land.lhs.true203:                                 ; preds = %lor.lhs.false200
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 7, i32 3) to i32))
  %27 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 7, i32 3), align 1
  %28 = zext i8 %27 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i393, i16 %28)
  %cmp206.not = icmp eq i16 %call.i393, %28
  br i1 %cmp206.not, label %land.lhs.true203.lor.lhs.false208_crit_edge, label %land.lhs.true203.if.then257_crit_edge, !prof !266

land.lhs.true203.if.then257_crit_edge:            ; preds = %land.lhs.true203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then257

land.lhs.true203.lor.lhs.false208_crit_edge:      ; preds = %land.lhs.true203
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %land.lhs.true203.lor.lhs.false208_crit_edge, %lor.lhs.false200.lor.lhs.false208_crit_edge
  %and209 = and i64 %call.i395, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and209)
  %tobool210.not = icmp eq i64 %and209, 0
  br i1 %tobool210.not, label %lor.lhs.false208.lor.lhs.false216_crit_edge, label %land.lhs.true211

lor.lhs.false208.lor.lhs.false216_crit_edge:      ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false216

land.lhs.true211:                                 ; preds = %lor.lhs.false208
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 8, i32 3) to i32))
  %29 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 8, i32 3), align 1
  %30 = zext i8 %29 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i393, i16 %30)
  %cmp214.not = icmp eq i16 %call.i393, %30
  br i1 %cmp214.not, label %land.lhs.true211.lor.lhs.false216_crit_edge, label %land.lhs.true211.if.then257_crit_edge, !prof !266

land.lhs.true211.if.then257_crit_edge:            ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then257

land.lhs.true211.lor.lhs.false216_crit_edge:      ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false216

lor.lhs.false216:                                 ; preds = %land.lhs.true211.lor.lhs.false216_crit_edge, %lor.lhs.false208.lor.lhs.false216_crit_edge
  %and217 = and i64 %call.i395, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and217)
  %tobool218.not = icmp eq i64 %and217, 0
  br i1 %tobool218.not, label %lor.lhs.false216.lor.lhs.false224_crit_edge, label %land.lhs.true219

lor.lhs.false216.lor.lhs.false224_crit_edge:      ; preds = %lor.lhs.false216
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false224

land.lhs.true219:                                 ; preds = %lor.lhs.false216
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 5, i32 3) to i32))
  %31 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 5, i32 3), align 1
  %32 = zext i8 %31 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i393, i16 %32)
  %cmp222 = icmp ult i16 %call.i393, %32
  br i1 %cmp222, label %land.lhs.true219.if.then257_crit_edge, label %land.lhs.true219.lor.lhs.false224_crit_edge, !prof !265

land.lhs.true219.lor.lhs.false224_crit_edge:      ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false224

land.lhs.true219.if.then257_crit_edge:            ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then257

lor.lhs.false224:                                 ; preds = %land.lhs.true219.lor.lhs.false224_crit_edge, %lor.lhs.false216.lor.lhs.false224_crit_edge
  %and225 = and i64 %call.i395, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and225)
  %tobool226.not = icmp eq i64 %and225, 0
  br i1 %tobool226.not, label %lor.lhs.false224.lor.lhs.false232_crit_edge, label %land.lhs.true227

lor.lhs.false224.lor.lhs.false232_crit_edge:      ; preds = %lor.lhs.false224
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false232

land.lhs.true227:                                 ; preds = %lor.lhs.false224
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 6, i32 3) to i32))
  %33 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 6, i32 3), align 1
  %34 = zext i8 %33 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i393, i16 %34)
  %cmp230 = icmp ult i16 %call.i393, %34
  br i1 %cmp230, label %land.lhs.true227.if.then257_crit_edge, label %land.lhs.true227.lor.lhs.false232_crit_edge, !prof !265

land.lhs.true227.lor.lhs.false232_crit_edge:      ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false232

land.lhs.true227.if.then257_crit_edge:            ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then257

lor.lhs.false232:                                 ; preds = %land.lhs.true227.lor.lhs.false232_crit_edge, %lor.lhs.false224.lor.lhs.false232_crit_edge
  %and233 = and i64 %call.i395, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and233)
  %tobool234.not = icmp eq i64 %and233, 0
  br i1 %tobool234.not, label %lor.lhs.false232.lor.rhs240_crit_edge, label %land.lhs.true235

lor.lhs.false232.lor.rhs240_crit_edge:            ; preds = %lor.lhs.false232
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs240

land.lhs.true235:                                 ; preds = %lor.lhs.false232
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 2, i32 1) to i32))
  %35 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 2, i32 1), align 1
  %36 = zext i8 %35 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i393, i16 %36)
  %cmp238.not = icmp eq i16 %call.i393, %36
  br i1 %cmp238.not, label %land.lhs.true235.lor.rhs240_crit_edge, label %land.lhs.true235.if.then257_crit_edge, !prof !266

land.lhs.true235.if.then257_crit_edge:            ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then257

land.lhs.true235.lor.rhs240_crit_edge:            ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs240

lor.rhs240:                                       ; preds = %land.lhs.true235.lor.rhs240_crit_edge, %lor.lhs.false232.lor.rhs240_crit_edge
  br i1 %cmp.not.i.i, label %land.rhs244, label %lor.rhs240.cleanup_crit_edge

lor.rhs240.cleanup_crit_edge:                     ; preds = %lor.rhs240
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs244:                                      ; preds = %lor.rhs240
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 4, i32 1) to i32))
  %37 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 4, i32 1), align 1
  %38 = zext i8 %37 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i393, i16 %38)
  %cmp247.not = icmp eq i16 %call.i393, %38
  br i1 %cmp247.not, label %land.rhs244.cleanup_crit_edge, label %land.rhs244.if.then257_crit_edge, !prof !266

land.rhs244.if.then257_crit_edge:                 ; preds = %land.rhs244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then257

land.rhs244.cleanup_crit_edge:                    ; preds = %land.rhs244
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then257:                                       ; preds = %land.rhs244.if.then257_crit_edge, %land.lhs.true235.if.then257_crit_edge, %land.lhs.true227.if.then257_crit_edge, %land.lhs.true219.if.then257_crit_edge, %land.lhs.true211.if.then257_crit_edge, %land.lhs.true203.if.then257_crit_edge, %land.lhs.true195.if.then257_crit_edge, %land.lhs.true.if.then257_crit_edge
  %conv259 = zext i16 %call.i394 to i32
  tail call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef nonnull @.str.13, i32 noundef %conv15, i32 noundef %conv259, i64 noundef %and124) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then257, %land.rhs244.cleanup_crit_edge, %lor.rhs240.cleanup_crit_edge, %if.then184, %if.then163, %if.then149, %if.then137, %if.then120, %if.then110, %if.then96, %if.then82, %if.then63, %if.then50, %if.then36, %if.then23, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ -117, %if.then23 ], [ -117, %if.then36 ], [ -117, %if.then50 ], [ -117, %if.then63 ], [ -117, %if.then82 ], [ -117, %if.then96 ], [ -117, %if.then110 ], [ -117, %if.then120 ], [ -117, %if.then137 ], [ -117, %if.then149 ], [ -117, %if.then163 ], [ -117, %if.then257 ], [ -117, %if.then184 ], [ 0, %lor.rhs240.cleanup_crit_edge ], [ 0, %land.rhs244.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @btrfs_bg_flags_to_raid_index(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @chunk_err(ptr noundef %leaf, ptr noundef %chunk, i64 noundef %logical, ptr noundef %fmt, ...) unnamed_addr #3 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %vaf, align 4, !annotation !272
  %3 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !272
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %5 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !272
  %6 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %leaf, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %7)
  %cmp = icmp eq i64 %7, 65536
  br i1 %cmp, label %if.then9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 12
  %8 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages.i, align 4
  %call.i23 = tail call ptr @page_address(ptr noundef %9) #10
  %10 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %leaf, align 8
  %conv.i24 = trunc i64 %11 to i32
  %and.i25 = and i32 %conv.i24, 4095
  %add.ptr.i26 = getelementptr i8, ptr %call.i23, i32 %and.i25
  %nritems.i27 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i26, i32 0, i32 7
  %12 = ptrtoint ptr %nritems.i27 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %nritems.i27, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp228.not = icmp eq i32 %13, 0
  br i1 %cmp228.not, label %for.cond.preheader.if.else_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.else_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %14 = ptrtoint ptr %chunk to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul.i.i.i = mul i32 %i.029, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %15 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %15, i32 noundef 17) #10
  %add = add i32 %call.i.i, 101
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp4 = icmp eq i32 %add, %14
  br i1 %cmp4, label %for.body.if.else_crit_edge, label %for.inc

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.029, 1
  %16 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %17) #10
  %18 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %leaf, align 8
  %conv.i = trunc i64 %19 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %20 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %nritems.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %cmp2 = icmp ult i32 %inc, %22
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.if.else_crit_edge

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.va_start(ptr nonnull %args)
  %23 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fmt, ptr %vaf, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %args, ptr %3, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.21, i64 noundef %logical, ptr noundef nonnull %vaf) #15
  br label %if.end11

if.else:                                          ; preds = %for.inc.if.else_crit_edge, %for.body.if.else_crit_edge, %for.cond.preheader.if.else_crit_edge
  %slot.0 = phi i32 [ -1, %for.cond.preheader.if.else_crit_edge ], [ %i.029, %for.body.if.else_crit_edge ], [ -1, %for.inc.if.else_crit_edge ]
  call void @llvm.va_start(ptr nonnull %args)
  %25 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %fmt, ptr %vaf, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %args, ptr %3, align 4
  %27 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %leaf, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.22, i64 noundef 3, i64 noundef %28, i32 noundef %slot.0, i64 noundef %logical, ptr noundef nonnull %vaf) #15
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_leaf_full(ptr noundef %leaf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @check_leaf(ptr noundef %leaf, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_leaf(ptr noundef %leaf, i1 noundef zeroext %check_item_data) unnamed_addr #0 align 64 {
entry:
  %ri.i.i = alloca %struct.btrfs_root_item, align 1
  %bgi.i.i = alloca %struct.btrfs_block_group_item, align 8
  %disk_key.i.i.i = alloca %struct.btrfs_disk_key, align 8
  %location_key.i.i = alloca %struct.btrfs_key, align 8
  %namebuf.i.i = alloca [255 x i8], align 1
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %prev_key = alloca %struct.btrfs_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %prev_key) #10
  %2 = call ptr @memset(ptr %prev_key, i32 0, i32 17)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #10
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 12
  %5 = call ptr @memset(ptr %key, i32 255, i32 17)
  %6 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %7) #10
  %8 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %leaf, align 8
  %conv.i = trunc i64 %9 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %10 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %nritems.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %13 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages.i, align 4
  %call.i206 = tail call ptr @page_address(ptr noundef %14) #10
  %15 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %leaf, align 8
  %conv.i207 = trunc i64 %16 to i32
  %and.i208 = and i32 %conv.i207, 4095
  %add.ptr.i209 = getelementptr i8, ptr %call.i206, i32 %and.i208
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i209, i32 0, i32 8
  %17 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.not = icmp eq i8 %18, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !266

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i, align 4
  %call.i211 = tail call ptr @page_address(ptr noundef %20) #10
  %21 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %leaf, align 8
  %conv.i212 = trunc i64 %22 to i32
  %and.i213 = and i32 %conv.i212, 4095
  %add.ptr.i214 = getelementptr i8, ptr %call.i211, i32 %and.i213
  %level.i215 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i214, i32 0, i32 8
  %23 = ptrtoint ptr %level.i215 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %level.i215, align 1
  %conv6 = zext i8 %24 to i32
  tail call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %conv6) #14
  br label %cleanup150

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %land.lhs.true, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %25 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %generation.i.i207.i = getelementptr inbounds %struct.btrfs_root_item, ptr %ri.i.i, i32 0, i32 1
  %generation_v2.i.i.i = getelementptr inbounds %struct.btrfs_root_item, ptr %ri.i.i, i32 0, i32 12
  %last_snapshot.i.i.i = getelementptr inbounds %struct.btrfs_root_item, ptr %ri.i.i, i32 0, i32 6
  %bytenr.i.i.i = getelementptr inbounds %struct.btrfs_root_item, ptr %ri.i.i, i32 0, i32 3
  %level.i.i.i = getelementptr inbounds %struct.btrfs_root_item, ptr %ri.i.i, i32 0, i32 11
  %drop_level.i.i.i = getelementptr inbounds %struct.btrfs_root_item, ptr %ri.i.i, i32 0, i32 10
  %flags.i.i.i = getelementptr inbounds %struct.btrfs_root_item, ptr %ri.i.i, i32 0, i32 7
  %27 = getelementptr inbounds %struct.btrfs_block_group_item, ptr %bgi.i.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.btrfs_block_group_item, ptr %bgi.i.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.btrfs_key, ptr %location_key.i.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.btrfs_key, ptr %location_key.i.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i.i, i32 0, i32 2
  %type.i76.i = getelementptr inbounds %struct.btrfs_key, ptr %prev_key, i32 0, i32 1
  %offset42.i.i = getelementptr inbounds %struct.btrfs_key, ptr %prev_key, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %for.body

land.lhs.true:                                    ; preds = %if.end
  %33 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pages.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %34) #10
  %35 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %leaf, align 8
  %conv.i.i = trunc i64 %36 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %flags.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %flags.i.i, align 1
  %39 = and i64 %38, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool10.not = icmp eq i64 %39, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.cleanup150_crit_edge

land.lhs.true.cleanup150_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

if.then11:                                        ; preds = %land.lhs.true
  %40 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pages.i, align 4
  %call.i217 = tail call ptr @page_address(ptr noundef %41) #10
  %42 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %leaf, align 8
  %conv.i218 = trunc i64 %43 to i32
  %and.i219 = and i32 %conv.i218, 4095
  %add.ptr.i220 = getelementptr i8, ptr %call.i217, i32 %and.i219
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i220, i32 0, i32 6
  %44 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %owner.i, align 1
  %46 = tail call i64 @llvm.bswap.i64(i64 %45) #10
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i64 %46, label %if.then11.cleanup150_crit_edge [
    i64 1, label %if.then11.if.then34_crit_edge
    i64 3, label %if.then11.if.then34_crit_edge6617
    i64 2, label %if.then11.if.then34_crit_edge6618
    i64 4, label %if.then11.if.then34_crit_edge6619
    i64 5, label %if.then11.if.then34_crit_edge6620
    i64 -9, label %if.then11.if.then34_crit_edge6621
    i64 0, label %if.then44
  ], !prof !273

if.then11.if.then34_crit_edge6621:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then11.if.then34_crit_edge6620:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then11.if.then34_crit_edge6619:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then11.if.then34_crit_edge6618:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then11.if.then34_crit_edge6617:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then11.if.then34_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then11.cleanup150_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

if.then34:                                        ; preds = %if.then11.if.then34_crit_edge, %if.then11.if.then34_crit_edge6617, %if.then11.if.then34_crit_edge6618, %if.then11.if.then34_crit_edge6619, %if.then11.if.then34_crit_edge6620, %if.then11.if.then34_crit_edge6621
  tail call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef 0, ptr noundef nonnull @.str.24, i64 noundef %46) #14
  br label %cleanup150

if.then44:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef 0, ptr noundef nonnull @.str.25) #14
  br label %cleanup150

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %slot.01321 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %mul.i.i.i.i = mul i32 %slot.01321, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %47 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %leaf, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %26, align 1
  %50 = call i64 @llvm.bswap.i64(i64 %49) #10
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %50, ptr %4, align 1
  %52 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %25, align 8
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %3, align 8
  %55 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %disk_key.i, align 8
  %57 = call i64 @llvm.bswap.i64(i64 %56) #10
  %58 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  %call59 = call i32 @btrfs_comp_cpu_keys(ptr noundef nonnull %prev_key, ptr noundef nonnull %key) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call59)
  %cmp60 = icmp sgt i32 %call59, -1
  br i1 %cmp60, label %if.then68, label %if.end74, !prof !265

if.then68:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %prev_key to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %prev_key, align 8
  %61 = ptrtoint ptr %type.i76.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %type.i76.i, align 8
  %conv69 = zext i8 %62 to i32
  %63 = ptrtoint ptr %offset42.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %offset42.i.i, align 1
  %conv72 = zext i8 %53 to i32
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.26, i64 noundef %60, i32 noundef %conv69, i64 noundef %64, i64 noundef %57, i32 noundef %conv72, i64 noundef %50) #14
  br label %cleanup150

if.end74:                                         ; preds = %for.body
  %65 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i221 = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %conv76 = zext i32 %call.i.i221 to i64
  %call.i.i224 = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  %conv78 = zext i32 %call.i.i224 to i64
  %add = add nuw nsw i64 %conv78, %conv76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot.01321)
  %cmp79 = icmp eq i32 %slot.01321, 0
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nodesize.i, align 8
  %sub.i = add i32 %67, -101
  br label %if.end84

if.else:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i.i226 = add i32 %mul.i.i.i.i, 76
  %68 = inttoptr i32 %add.i.i.i226 to ptr
  %call.i.i227 = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %68, i32 noundef 17) #10
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then81
  %item_end_expected.0 = phi i32 [ %sub.i, %if.then81 ], [ %call.i.i227, %if.else ]
  %conv85 = zext i32 %item_end_expected.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv85)
  %cmp86.not = icmp eq i64 %add, %conv85
  br i1 %cmp86.not, label %if.end95, label %if.then94, !prof !266

if.then94:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.27, i64 noundef %add, i32 noundef %item_end_expected.0) #14
  br label %cleanup150

if.end95:                                         ; preds = %if.end84
  %69 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nodesize.i, align 8
  %sub.i229 = add i32 %70, -101
  %conv97 = zext i32 %sub.i229 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv97)
  %cmp98 = icmp ugt i64 %add, %conv97
  br i1 %cmp98, label %if.then106, label %if.end108, !prof !265

if.then106:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.28, i64 noundef %add, i32 noundef %sub.i229) #14
  br label %cleanup150

if.end108:                                        ; preds = %if.end95
  %call.i.i234 = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %add110 = add i32 %call.i.i234, 101
  %add112 = add i32 %mul.i.i.i.i, 126
  call void @__sanitizer_cov_trace_cmp4(i32 %add110, i32 %add112)
  %cmp113 = icmp ult i32 %add110, %add112
  br i1 %cmp113, label %if.then121, label %if.end126, !prof !265

if.then121:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %71 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i239 = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %71, i32 noundef 17) #10
  %add125 = add i32 %call.i.i239, 101
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.29, i32 noundef %add112, i32 noundef %add125) #14
  br label %cleanup150

if.end126:                                        ; preds = %if.end108
  br i1 %check_item_data, label %if.then128, label %if.end126.for.inc_crit_edge

if.end126.for.inc_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then128:                                       ; preds = %if.end126
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %3, align 8
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %73, label %if.then128.for.inc_crit_edge [
    i8 108, label %sw.bb.i
    i8 -128, label %sw.bb1.i
    i8 84, label %if.then128.sw.bb3.i_crit_edge
    i8 96, label %if.then128.sw.bb3.i_crit_edge6622
    i8 24, label %if.then128.sw.bb3.i_crit_edge6623
    i8 12, label %sw.bb5.i
    i8 -64, label %sw.bb7.i
    i8 -28, label %sw.bb9.i
    i8 -40, label %sw.bb12.i
    i8 1, label %sw.bb14.i
    i8 -124, label %sw.bb16.i
    i8 -88, label %if.then128.sw.bb18.i_crit_edge
    i8 -87, label %if.then128.sw.bb18.i_crit_edge6624
    i8 -80, label %if.then128.sw.bb20.i_crit_edge
    i8 -72, label %if.then128.sw.bb20.i_crit_edge6625
    i8 -74, label %if.then128.sw.bb20.i_crit_edge6626
    i8 -78, label %sw.bb22.i
  ]

if.then128.sw.bb20.i_crit_edge6626:               ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20.i

if.then128.sw.bb20.i_crit_edge6625:               ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20.i

if.then128.sw.bb20.i_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20.i

if.then128.sw.bb18.i_crit_edge6624:               ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb18.i

if.then128.sw.bb18.i_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb18.i

if.then128.sw.bb3.i_crit_edge6623:                ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.then128.sw.bb3.i_crit_edge6622:                ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.then128.sw.bb3.i_crit_edge:                    ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.then128.for.inc_crit_edge:                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb.i:                                          ; preds = %if.then128
  %75 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fs_info1, align 8
  %sectorsize2.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %76, i32 0, i32 167
  %77 = ptrtoint ptr %sectorsize2.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sectorsize2.i.i, align 4
  %call.i.i.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %80 = load i64, ptr %4, align 1
  %conv.i.i240 = zext i32 %78 to i64
  %sub.i.i = add nsw i64 %conv.i.i240, -1
  %and.i.i241 = and i64 %80, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i241)
  %cmp.not.i.i = icmp eq i64 %and.i.i241, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !266

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.30, i64 noundef %80, i32 noundef %78) #15
  br label %cleanup150

if.end.i.i:                                       ; preds = %sw.bb.i
  br i1 %cmp79, label %if.end.i.i.if.end17.i.i_crit_edge, label %if.end.i.i.i

if.end.i.i.if.end17.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %3, align 8
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %82, label %cond.false.critedge.i.i.i [
    i8 24, label %if.end.i.i.i.cond.end.i.i.i_crit_edge
    i8 12, label %if.end.i.i.i.cond.end.i.i.i_crit_edge6627
    i8 96, label %if.end.i.i.i.cond.end.i.i.i_crit_edge6628
    i8 84, label %if.end.i.i.i.cond.end.i.i.i_crit_edge6629
    i8 108, label %if.end.i.i.i.cond.end.i.i.i_crit_edge6630
  ]

if.end.i.i.i.cond.end.i.i.i_crit_edge6630:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i

if.end.i.i.i.cond.end.i.i.i_crit_edge6629:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i

if.end.i.i.i.cond.end.i.i.i_crit_edge6628:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i

if.end.i.i.i.cond.end.i.i.i_crit_edge6627:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i

if.end.i.i.i.cond.end.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i

cond.false.critedge.i.i.i:                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  call fastcc void @assertfail() #17
  unreachable

cond.end.i.i.i:                                   ; preds = %if.end.i.i.i.cond.end.i.i.i_crit_edge, %if.end.i.i.i.cond.end.i.i.i_crit_edge6627, %if.end.i.i.i.cond.end.i.i.i_crit_edge6628, %if.end.i.i.i.cond.end.i.i.i_crit_edge6629, %if.end.i.i.i.cond.end.i.i.i_crit_edge6630
  %84 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pages.i, align 4
  %call.i.i445.i.i = call ptr @page_address(ptr noundef %85) #10
  %86 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %leaf, align 8
  %conv.i.i.i.i = trunc i64 %87 to i32
  %and.i.i.i.i = and i32 %conv.i.i.i.i, 4095
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i445.i.i, i32 %and.i.i.i.i
  %owner.i.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %88 = ptrtoint ptr %owner.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %89 = load i64, ptr %owner.i.i.i.i, align 1
  %90 = call i64 @llvm.bswap.i64(i64 %89) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 360287970189639680, i64 %89)
  %cmp.i.i.i.i = icmp ne i64 %89, 360287970189639680
  %91 = add i64 %90, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %91)
  %92 = icmp ult i64 %91, -281474976710400
  %tobool23.not.i.i.i = and i1 %cmp.i.i.i.i, %92
  br i1 %tobool23.not.i.i.i, label %cond.end.i.i.i.if.end17.i.i_crit_edge, label %if.end25.i.i.i

cond.end.i.i.i.if.end17.i.i_crit_edge:            ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

if.end25.i.i.i:                                   ; preds = %cond.end.i.i.i
  %93 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %key, align 8
  %95 = ptrtoint ptr %prev_key to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %prev_key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %96)
  %cmp27.i.i.i = icmp eq i64 %94, %96
  br i1 %cmp27.i.i.i, label %if.end25.i.i.i.if.end17.i.i_crit_edge, label %check_prev_ino.exit.i.i, !prof !274

if.end25.i.i.i.if.end17.i.i_crit_edge:            ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

check_prev_ino.exit.i.i:                          ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.51, i64 noundef %96, i64 noundef %94) #15
  br label %cleanup150

if.end17.i.i:                                     ; preds = %if.end25.i.i.i.if.end17.i.i_crit_edge, %cond.end.i.i.i.if.end17.i.i_crit_edge, %if.end.i.i.if.end17.i.i_crit_edge
  %call.i.i448.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %add.i.i = add i32 %call.i.i448.i.i, 101
  %97 = inttoptr i32 %add.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %call.i.i.i.i)
  %cmp19.i.i = icmp ult i32 %call.i.i.i.i, 21
  br i1 %cmp19.i.i, label %if.then27.i.i, label %if.end28.i.i, !prof !265

if.then27.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.31, i32 noundef %call.i.i.i.i, i32 noundef 21, i32 noundef 4096) #15
  br label %cleanup150

if.end28.i.i:                                     ; preds = %if.end17.i.i
  %call.i.i.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %97, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i.i)
  %cmp31.i.i = icmp ugt i8 %call.i.i.i, 2
  br i1 %cmp31.i.i, label %if.then39.i.i, label %if.end42.i.i, !prof !265

if.then39.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = inttoptr i32 %add.i.i to ptr
  %call.i449.i.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %98, i32 noundef 20) #10
  %conv41.i.i = zext i8 %call.i449.i.i to i32
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.32, i32 noundef %conv41.i.i, i32 noundef 2) #15
  br label %cleanup150

if.end42.i.i:                                     ; preds = %if.end28.i.i
  %call.i450.i.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %97, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call.i450.i.i)
  %cmp45.i.i = icmp ugt i8 %call.i450.i.i, 3
  br i1 %cmp45.i.i, label %if.then53.i.i, label %if.end56.i.i, !prof !265

if.then53.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = inttoptr i32 %add.i.i to ptr
  %call.i451.i.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %99, i32 noundef 16) #10
  %conv55.i.i = zext i8 %call.i451.i.i to i32
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.33, i32 noundef %conv55.i.i, i32 noundef 3) #15
  br label %cleanup150

if.end56.i.i:                                     ; preds = %if.end42.i.i
  %call.i452.i.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %97, i32 noundef 17) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i452.i.i)
  %tobool58.not.i.i = icmp eq i8 %call.i452.i.i, 0
  br i1 %tobool58.not.i.i, label %if.end68.i.i, label %if.then65.i.i, !prof !266

if.then65.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = inttoptr i32 %add.i.i to ptr
  %call.i453.i.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %100, i32 noundef 17) #10
  %conv67.i.i = zext i8 %call.i453.i.i to i32
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.34, i32 noundef %conv67.i.i) #15
  br label %cleanup150

if.end68.i.i:                                     ; preds = %if.end56.i.i
  %call.i454.i.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %97, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i454.i.i)
  %cmp71.i.i = icmp eq i8 %call.i454.i.i, 0
  br i1 %cmp71.i.i, label %if.then73.i.i, label %if.end106.i.i

if.then73.i.i:                                    ; preds = %if.end68.i.i
  %101 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 8)
  %102 = load i64, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %102)
  %tobool75.not.i.i = icmp eq i64 %102, 0
  br i1 %tobool75.not.i.i, label %if.end84.i.i, label %if.then82.i.i, !prof !266

if.then82.i.i:                                    ; preds = %if.then73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.35, i64 noundef %102) #15
  br label %cleanup150

if.end84.i.i:                                     ; preds = %if.then73.i.i
  %call.i455.i.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %97, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i455.i.i)
  %cmp87.not.i.i = icmp eq i8 %call.i455.i.i, 0
  br i1 %cmp87.not.i.i, label %if.end90.i.i, label %if.end84.i.i.for.inc_crit_edge

if.end84.i.i.for.inc_crit_edge:                   ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end90.i.i:                                     ; preds = %if.end84.i.i
  %conv91.i.i = zext i32 %call.i.i.i.i to i64
  %call.i456.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 8) #10
  %add93.i.i = add i64 %call.i456.i.i, 21
  call void @__sanitizer_cov_trace_cmp8(i64 %add93.i.i, i64 %conv91.i.i)
  %cmp94.not.i.i = icmp eq i64 %add93.i.i, %conv91.i.i
  br i1 %cmp94.not.i.i, label %if.end90.i.i.for.inc_crit_edge, label %if.then102.i.i, !prof !266

if.end90.i.i.for.inc_crit_edge:                   ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then102.i.i:                                   ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %103 = inttoptr i32 %add.i.i to ptr
  %call.i457.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %103, i32 noundef 8) #10
  %add104.i.i = add i64 %call.i457.i.i, 21
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.36, i32 noundef %call.i.i.i.i, i64 noundef %add104.i.i) #15
  br label %cleanup150

if.end106.i.i:                                    ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %call.i.i.i.i)
  %cmp107.not.i.i = icmp eq i32 %call.i.i.i.i, 53
  br i1 %cmp107.not.i.i, label %if.end116.i.i, label %if.then115.i.i, !prof !266

if.then115.i.i:                                   ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.37, i32 noundef %call.i.i.i.i, i32 noundef 53) #15
  br label %cleanup150

if.end116.i.i:                                    ; preds = %if.end106.i.i
  %call.i458.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 8) #10
  %and120.i.i = and i64 %call.i458.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and120.i.i)
  %cmp121.not.i.i = icmp eq i64 %and120.i.i, 0
  br i1 %cmp121.not.i.i, label %if.end116.i.i.if.end133.i.i_crit_edge, label %if.then131.i.i, !prof !266

if.end116.i.i.if.end133.i.i_crit_edge:            ; preds = %if.end116.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133.i.i

if.then131.i.i:                                   ; preds = %if.end116.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i459.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 8) #10
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i64 noundef %call.i459.i.i, i32 noundef %78) #15
  br label %if.end133.i.i

if.end133.i.i:                                    ; preds = %if.then131.i.i, %if.end116.i.i.if.end133.i.i_crit_edge
  %call.i460.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 8) #10
  %and137.i.i = and i64 %call.i460.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and137.i.i)
  %cmp138.not.i.i = icmp eq i64 %and137.i.i, 0
  br i1 %cmp138.not.i.i, label %lor.lhs.false.i.i, label %if.end133.i.i.cleanup150_crit_edge, !prof !266

if.end133.i.i.cleanup150_crit_edge:               ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

lor.lhs.false.i.i:                                ; preds = %if.end133.i.i
  %call.i461.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 21) #10
  %and146.i.i = and i64 %call.i461.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and146.i.i)
  %cmp147.not.i.i = icmp eq i64 %and146.i.i, 0
  br i1 %cmp147.not.i.i, label %lor.lhs.false.i.i.if.end159.i.i_crit_edge, label %if.then157.i.i, !prof !266

lor.lhs.false.i.i.if.end159.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159.i.i

if.then157.i.i:                                   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i462.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 21) #10
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.40, i64 noundef %call.i462.i.i, i32 noundef %78) #15
  br label %if.end159.i.i

if.end159.i.i:                                    ; preds = %if.then157.i.i, %lor.lhs.false.i.i.if.end159.i.i_crit_edge
  %call.i463.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 21) #10
  %and164.i.i = and i64 %call.i463.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and164.i.i)
  %cmp165.not.i.i = icmp eq i64 %and164.i.i, 0
  br i1 %cmp165.not.i.i, label %lor.lhs.false170.i.i, label %if.end159.i.i.cleanup150_crit_edge, !prof !266

if.end159.i.i.cleanup150_crit_edge:               ; preds = %if.end159.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

lor.lhs.false170.i.i:                             ; preds = %if.end159.i.i
  %call.i464.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 29) #10
  %and174.i.i = and i64 %call.i464.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and174.i.i)
  %cmp175.not.i.i = icmp eq i64 %and174.i.i, 0
  br i1 %cmp175.not.i.i, label %lor.lhs.false170.i.i.if.end187.i.i_crit_edge, label %if.then185.i.i, !prof !266

lor.lhs.false170.i.i.if.end187.i.i_crit_edge:     ; preds = %lor.lhs.false170.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187.i.i

if.then185.i.i:                                   ; preds = %lor.lhs.false170.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i465.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 29) #10
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.41, i64 noundef %call.i465.i.i, i32 noundef %78) #15
  br label %if.end187.i.i

if.end187.i.i:                                    ; preds = %if.then185.i.i, %lor.lhs.false170.i.i.if.end187.i.i_crit_edge
  %call.i466.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 29) #10
  %and192.i.i = and i64 %call.i466.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and192.i.i)
  %cmp193.not.i.i = icmp eq i64 %and192.i.i, 0
  br i1 %cmp193.not.i.i, label %lor.lhs.false198.i.i, label %if.end187.i.i.cleanup150_crit_edge, !prof !266

if.end187.i.i.cleanup150_crit_edge:               ; preds = %if.end187.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

lor.lhs.false198.i.i:                             ; preds = %if.end187.i.i
  %call.i467.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 37) #10
  %and202.i.i = and i64 %call.i467.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and202.i.i)
  %cmp203.not.i.i = icmp eq i64 %and202.i.i, 0
  br i1 %cmp203.not.i.i, label %lor.lhs.false198.i.i.if.end215.i.i_crit_edge, label %if.then213.i.i, !prof !266

lor.lhs.false198.i.i.if.end215.i.i_crit_edge:     ; preds = %lor.lhs.false198.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end215.i.i

if.then213.i.i:                                   ; preds = %lor.lhs.false198.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i468.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 37) #10
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.42, i64 noundef %call.i468.i.i, i32 noundef %78) #15
  br label %if.end215.i.i

if.end215.i.i:                                    ; preds = %if.then213.i.i, %lor.lhs.false198.i.i.if.end215.i.i_crit_edge
  %call.i469.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 37) #10
  %and220.i.i = and i64 %call.i469.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and220.i.i)
  %cmp221.not.i.i = icmp eq i64 %and220.i.i, 0
  br i1 %cmp221.not.i.i, label %lor.rhs.i.i, label %if.end215.i.i.cleanup150_crit_edge, !prof !266

if.end215.i.i.cleanup150_crit_edge:               ; preds = %if.end215.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

lor.rhs.i.i:                                      ; preds = %if.end215.i.i
  %call.i470.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 45) #10
  %and229.i.i = and i64 %call.i470.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and229.i.i)
  %cmp230.not.i.i = icmp eq i64 %and229.i.i, 0
  br i1 %cmp230.not.i.i, label %lor.rhs.i.i.if.end242.i.i_crit_edge, label %if.then240.i.i, !prof !266

lor.rhs.i.i.if.end242.i.i_crit_edge:              ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end242.i.i

if.then240.i.i:                                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i471.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 45) #10
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.43, i64 noundef %call.i471.i.i, i32 noundef %78) #15
  br label %if.end242.i.i

if.end242.i.i:                                    ; preds = %if.then240.i.i, %lor.rhs.i.i.if.end242.i.i_crit_edge
  %call.i472.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 45) #10
  %and247.i.i = and i64 %call.i472.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and247.i.i)
  %cmp248.not.i.i = icmp eq i64 %and247.i.i, 0
  br i1 %cmp248.not.i.i, label %if.end260.i.i, label %if.end242.i.i.cleanup150_crit_edge, !prof !266

if.end242.i.i.cleanup150_crit_edge:               ; preds = %if.end242.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

if.end260.i.i:                                    ; preds = %if.end242.i.i
  %call.i473.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %97, i32 noundef 45) #10
  %104 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 8)
  %105 = load i64, ptr %4, align 1
  %106 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %call.i473.i.i, i64 %105) #10
  %107 = extractvalue { i64, i1 } %106, 1
  br i1 %107, label %if.then276.i.i, label %if.end279.i.i, !prof !265

if.then276.i.i:                                   ; preds = %if.end260.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = inttoptr i32 %add.i.i to ptr
  %call.i474.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %108, i32 noundef 45) #10
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.44, i64 noundef %105, i64 noundef %call.i474.i.i) #15
  br label %cleanup150

if.end279.i.i:                                    ; preds = %if.end260.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot.01321)
  %cmp280.i.i = icmp sgt i32 %slot.01321, 0
  br i1 %cmp280.i.i, label %land.lhs.true.i.i, label %if.end279.i.i.for.inc_crit_edge

if.end279.i.i.for.inc_crit_edge:                  ; preds = %if.end279.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i.i:                                ; preds = %if.end279.i.i
  %109 = ptrtoint ptr %prev_key to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %prev_key, align 8
  %111 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %110, i64 %112)
  %cmp283.i.i = icmp eq i64 %110, %112
  br i1 %cmp283.i.i, label %land.lhs.true285.i.i, label %land.lhs.true.i.i.for.inc_crit_edge

land.lhs.true.i.i.for.inc_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true285.i.i:                             ; preds = %land.lhs.true.i.i
  %113 = ptrtoint ptr %type.i76.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %type.i76.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %114)
  %cmp287.i.i = icmp eq i8 %114, 108
  br i1 %cmp287.i.i, label %if.then289.i.i, label %land.lhs.true285.i.i.for.inc_crit_edge

land.lhs.true285.i.i.for.inc_crit_edge:           ; preds = %land.lhs.true285.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then289.i.i:                                   ; preds = %land.lhs.true285.i.i
  %sub290.i.i = add nsw i32 %slot.01321, -1
  %mul.i.i.i475.i.i = mul i32 %sub290.i.i, 25
  %add.i.i.i476.i.i = add i32 %mul.i.i.i475.i.i, 101
  %115 = inttoptr i32 %add.i.i.i476.i.i to ptr
  %call.i.i477.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %115, i32 noundef 17) #10
  %add292.i.i = add i32 %call.i.i477.i.i, 101
  %116 = inttoptr i32 %add292.i.i to ptr
  %call.i.i478.i.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %116, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i478.i.i)
  %cmp.i479.i.i = icmp eq i8 %call.i.i478.i.i, 0
  br i1 %cmp.i479.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then289.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i20.i.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %116, i32 noundef 8) #10
  %117 = ptrtoint ptr %offset42.i.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 8)
  %118 = load i64, ptr %offset42.i.i, align 1
  %119 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fs_info1, align 8
  %sectorsize.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %120, i32 0, i32 167
  %121 = ptrtoint ptr %sectorsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sectorsize.i.i.i, align 4
  %conv3.i.i.i = zext i32 %122 to i64
  %sub.i.i.i = add i64 %call.i20.i.i.i, -1
  %add.i.i.i242 = add i64 %sub.i.i.i, %118
  %add4.i.i.i = add i64 %add.i.i.i242, %conv3.i.i.i
  %neg.i.i.i = sub nsw i64 0, %conv3.i.i.i
  %and.i.i.i = and i64 %add4.i.i.i, %neg.i.i.i
  br label %file_extent_end.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then289.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i21.i.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %116, i32 noundef 45) #10
  %123 = ptrtoint ptr %offset42.i.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 8)
  %124 = load i64, ptr %offset42.i.i, align 1
  %add11.i.i.i = add i64 %124, %call.i21.i.i.i
  br label %file_extent_end.exit.i.i

file_extent_end.exit.i.i:                         ; preds = %if.else.i.i.i, %if.then.i.i.i
  %end.0.i.i.i = phi i64 [ %and.i.i.i, %if.then.i.i.i ], [ %add11.i.i.i, %if.else.i.i.i ]
  %125 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 8)
  %126 = load i64, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %end.0.i.i.i, i64 %126)
  %cmp295.i.i = icmp ugt i64 %end.0.i.i.i, %126
  br i1 %cmp295.i.i, label %if.then303.i.i, label %file_extent_end.exit.i.i.for.inc_crit_edge, !prof !265

file_extent_end.exit.i.i.for.inc_crit_edge:       ; preds = %file_extent_end.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then303.i.i:                                   ; preds = %file_extent_end.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @file_extent_err(ptr noundef %leaf, i32 noundef %sub290.i.i, ptr noundef nonnull @.str.45, i64 noundef %end.0.i.i.i, i64 noundef %126) #15
  br label %cleanup150

sw.bb1.i:                                         ; preds = %if.then128
  %127 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fs_info1, align 8
  %sectorsize2.i64.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %128, i32 0, i32 167
  %129 = ptrtoint ptr %sectorsize2.i64.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sectorsize2.i64.i, align 4
  %csum_size.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %128, i32 0, i32 169
  %131 = ptrtoint ptr %csum_size.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %csum_size.i.i, align 4
  %133 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -10, i64 %134)
  %cmp.not.i65.i = icmp eq i64 %134, -10
  br i1 %cmp.not.i65.i, label %if.end.i71.i, label %if.then.i66.i, !prof !266

if.then.i66.i:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.56, i64 noundef %134, i64 noundef -10) #15
  br label %cleanup150

if.end.i71.i:                                     ; preds = %sw.bb1.i
  %135 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 8)
  %136 = load i64, ptr %4, align 1
  %conv.i68.i = zext i32 %130 to i64
  %sub.i69.i = add nsw i64 %conv.i68.i, -1
  %and.i70.i = and i64 %136, %sub.i69.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i70.i)
  %cmp5.not.i.i = icmp eq i64 %and.i70.i, 0
  br i1 %cmp5.not.i.i, label %if.end17.i75.i, label %if.then15.i.i, !prof !266

if.then15.i.i:                                    ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.57, i64 noundef %136, i32 noundef %130) #15
  br label %cleanup150

if.end17.i75.i:                                   ; preds = %if.end.i71.i
  %call.i.i.i74.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  %sub18.i.i = add i32 %132, -1
  %and19.i.i = and i32 %call.i.i.i74.i, %sub18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %cmp20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %cmp20.not.i.i, label %if.end32.i.i, label %if.then30.i.i, !prof !266

if.then30.i.i:                                    ; preds = %if.end17.i75.i
  call void @__sanitizer_cov_trace_pc() #12
  %137 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i91.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %137, i32 noundef 21) #10
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.58, i32 noundef %call.i.i91.i.i, i32 noundef %132) #15
  br label %cleanup150

if.end32.i.i:                                     ; preds = %if.end17.i75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot.01321)
  %cmp33.i.i = icmp sgt i32 %slot.01321, 0
  br i1 %cmp33.i.i, label %land.lhs.true.i77.i, label %if.end32.i.i.for.inc_crit_edge

if.end32.i.i.for.inc_crit_edge:                   ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i77.i:                              ; preds = %if.end32.i.i
  %138 = ptrtoint ptr %type.i76.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %type.i76.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %139)
  %cmp36.i.i = icmp eq i8 %139, -128
  br i1 %cmp36.i.i, label %if.then38.i.i, label %land.lhs.true.i77.i.for.inc_crit_edge

land.lhs.true.i77.i.for.inc_crit_edge:            ; preds = %land.lhs.true.i77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then38.i.i:                                    ; preds = %land.lhs.true.i77.i
  %sub39.i.i = add nsw i32 %slot.01321, -1
  %mul.i.i.i92.i.i = mul i32 %sub39.i.i, 25
  %add.i.i.i93.i.i = add i32 %mul.i.i.i92.i.i, 101
  %140 = inttoptr i32 %add.i.i.i93.i.i to ptr
  %call.i.i94.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %140, i32 noundef 21) #10
  %div.i.i = udiv i32 %call.i.i94.i.i, %132
  %mul.i.i = mul i32 %div.i.i, %130
  %conv41.i78.i = zext i32 %mul.i.i to i64
  %141 = ptrtoint ptr %offset42.i.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 8)
  %142 = load i64, ptr %offset42.i.i, align 1
  %add.i79.i = add i64 %142, %conv41.i78.i
  %143 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 8)
  %144 = load i64, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i79.i, i64 %144)
  %cmp44.i.i = icmp ugt i64 %add.i79.i, %144
  br i1 %cmp44.i.i, label %if.then52.i.i, label %if.then38.i.i.for.inc_crit_edge, !prof !265

if.then38.i.i.for.inc_crit_edge:                  ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then52.i.i:                                    ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %sub39.i.i, ptr noundef nonnull @.str.59, i64 noundef %add.i79.i, i64 noundef %144) #15
  br label %cleanup150

sw.bb3.i:                                         ; preds = %if.then128.sw.bb3.i_crit_edge, %if.then128.sw.bb3.i_crit_edge6622, %if.then128.sw.bb3.i_crit_edge6623
  %145 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fs_info1, align 8
  %call.i.i.i84.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  br i1 %cmp79, label %sw.bb3.i.if.end.i100.i_crit_edge, label %if.end.i.i87.i

sw.bb3.i.if.end.i100.i_crit_edge:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i100.i

if.end.i.i87.i:                                   ; preds = %sw.bb3.i
  %147 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %3, align 8
  %149 = zext i8 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %148, label %cond.false.critedge.i.i88.i [
    i8 24, label %if.end.i.i87.i.cond.end.i.i96.i_crit_edge
    i8 12, label %if.end.i.i87.i.cond.end.i.i96.i_crit_edge6631
    i8 96, label %if.end.i.i87.i.cond.end.i.i96.i_crit_edge6632
    i8 84, label %if.end.i.i87.i.cond.end.i.i96.i_crit_edge6633
    i8 108, label %if.end.i.i87.i.cond.end.i.i96.i_crit_edge6634
  ]

if.end.i.i87.i.cond.end.i.i96.i_crit_edge6634:    ; preds = %if.end.i.i87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i96.i

if.end.i.i87.i.cond.end.i.i96.i_crit_edge6633:    ; preds = %if.end.i.i87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i96.i

if.end.i.i87.i.cond.end.i.i96.i_crit_edge6632:    ; preds = %if.end.i.i87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i96.i

if.end.i.i87.i.cond.end.i.i96.i_crit_edge6631:    ; preds = %if.end.i.i87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i96.i

if.end.i.i87.i.cond.end.i.i96.i_crit_edge:        ; preds = %if.end.i.i87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i96.i

cond.false.critedge.i.i88.i:                      ; preds = %if.end.i.i87.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  call fastcc void @assertfail() #17
  unreachable

cond.end.i.i96.i:                                 ; preds = %if.end.i.i87.i.cond.end.i.i96.i_crit_edge, %if.end.i.i87.i.cond.end.i.i96.i_crit_edge6631, %if.end.i.i87.i.cond.end.i.i96.i_crit_edge6632, %if.end.i.i87.i.cond.end.i.i96.i_crit_edge6633, %if.end.i.i87.i.cond.end.i.i96.i_crit_edge6634
  %150 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pages.i, align 4
  %call.i.i288.i.i = call ptr @page_address(ptr noundef %151) #10
  %152 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %leaf, align 8
  %conv.i.i.i90.i = trunc i64 %153 to i32
  %and.i.i.i91.i = and i32 %conv.i.i.i90.i, 4095
  %add.ptr.i.i.i92.i = getelementptr i8, ptr %call.i.i288.i.i, i32 %and.i.i.i91.i
  %owner.i.i.i93.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i92.i, i32 0, i32 6
  %154 = ptrtoint ptr %owner.i.i.i93.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 8)
  %155 = load i64, ptr %owner.i.i.i93.i, align 1
  %156 = call i64 @llvm.bswap.i64(i64 %155) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 360287970189639680, i64 %155)
  %cmp.i.i.i94.i = icmp ne i64 %155, 360287970189639680
  %157 = add i64 %156, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %157)
  %158 = icmp ult i64 %157, -281474976710400
  %tobool23.not.i.i95.i = and i1 %cmp.i.i.i94.i, %158
  br i1 %tobool23.not.i.i95.i, label %cond.end.i.i96.i.if.end.i100.i_crit_edge, label %if.end25.i.i98.i

cond.end.i.i96.i.if.end.i100.i_crit_edge:         ; preds = %cond.end.i.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i100.i

if.end25.i.i98.i:                                 ; preds = %cond.end.i.i96.i
  %159 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %key, align 8
  %161 = ptrtoint ptr %prev_key to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %prev_key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %160, i64 %162)
  %cmp27.i.i97.i = icmp eq i64 %160, %162
  br i1 %cmp27.i.i97.i, label %if.end25.i.i98.i.if.end.i100.i_crit_edge, label %check_prev_ino.exit.i99.i, !prof !274

if.end25.i.i98.i.if.end.i100.i_crit_edge:         ; preds = %if.end25.i.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i100.i

check_prev_ino.exit.i99.i:                        ; preds = %if.end25.i.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.51, i64 noundef %162, i64 noundef %160) #15
  br label %cleanup150

if.end.i100.i:                                    ; preds = %if.end25.i.i98.i.if.end.i100.i_crit_edge, %cond.end.i.i96.i.if.end.i100.i_crit_edge, %sw.bb3.i.if.end.i100.i_crit_edge
  %call.i.i291.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i84.i)
  %cmp347.not.i.i = icmp eq i32 %call.i.i.i84.i, 0
  br i1 %cmp347.not.i.i, label %if.end.i100.i.for.inc_crit_edge, label %while.body.lr.ph.i.i

if.end.i100.i.for.inc_crit_edge:                  ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body.lr.ph.i.i:                             ; preds = %if.end.i100.i
  %add.i101.i = add i32 %call.i.i291.i.i, 101
  %163 = inttoptr i32 %add.i101.i to ptr
  %nodesize.i.i.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %146, i32 0, i32 166
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup192.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %cur.0349.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add152.i.i, %cleanup192.i.i.while.body.i.i_crit_edge ]
  %di.0348.i.i = phi ptr [ %163, %while.body.lr.ph.i.i ], [ %add.ptr191.i.i, %cleanup192.i.i.while.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %location_key.i.i) #10
  %add6.i.i = add i32 %cur.0349.i.i, 30
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i.i, i32 %call.i.i.i84.i)
  %cmp7.i.i = icmp ugt i32 %add6.i.i, %call.i.i.i84.i
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end16.i.i, !prof !265

if.then14.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.60, i32 noundef %add6.i.i, i32 noundef %call.i.i.i84.i) #15
  br label %cleanup192.thread.i.i

if.end16.i.i:                                     ; preds = %while.body.i.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i.i) #10
  %164 = ptrtoint ptr %di.0348.i.i to i32
  %165 = call ptr @memset(ptr %disk_key.i.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %leaf, ptr noundef nonnull %disk_key.i.i.i, i32 noundef %164, i32 noundef 17) #10
  %166 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 8)
  %167 = load i64, ptr %32, align 1
  %168 = call i64 @llvm.bswap.i64(i64 %167) #10
  %169 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 8)
  store i64 %168, ptr %30, align 1
  %170 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %31, align 8
  %172 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %29, align 8
  %173 = ptrtoint ptr %disk_key.i.i.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %disk_key.i.i.i, align 8
  %175 = call i64 @llvm.bswap.i64(i64 %174) #10
  %176 = ptrtoint ptr %location_key.i.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %175, ptr %location_key.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i.i) #10
  %177 = zext i8 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %171, label %if.else51.i.i [
    i8 -124, label %if.then19.i.i
    i8 1, label %if.end16.i.i.if.then39.i103.i_crit_edge
    i8 0, label %if.end16.i.i.if.then39.i103.i_crit_edge6635
  ]

if.end16.i.i.if.then39.i103.i_crit_edge6635:      ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.i103.i

if.end16.i.i.if.then39.i103.i_crit_edge:          ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.i103.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  %call20.i.i = call fastcc i32 @check_root_key(ptr noundef %leaf, ptr noundef nonnull %location_key.i.i, i32 noundef %slot.01321) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp21.i.i = icmp slt i32 %call20.i.i, 0
  br i1 %cmp21.i.i, label %if.then19.i.i.cleanup192.thread.i.i_crit_edge, label %if.then19.i.i.if.end55.i.i_crit_edge, !prof !265

if.then19.i.i.if.end55.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i.i

if.then19.i.i.cleanup192.thread.i.i_crit_edge:    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup192.thread.i.i

if.then39.i103.i:                                 ; preds = %if.end16.i.i.if.then39.i103.i_crit_edge, %if.end16.i.i.if.then39.i103.i_crit_edge6635
  %call40.i.i = call fastcc i32 @check_inode_key(ptr noundef %leaf, ptr noundef nonnull %location_key.i.i, i32 noundef %slot.01321) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %cmp41.i.i = icmp slt i32 %call40.i.i, 0
  br i1 %cmp41.i.i, label %if.then39.i103.i.cleanup192.thread.i.i_crit_edge, label %if.then39.i103.i.if.end55.i.i_crit_edge, !prof !265

if.then39.i103.i.if.end55.i.i_crit_edge:          ; preds = %if.then39.i103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i.i

if.then39.i103.i.cleanup192.thread.i.i_crit_edge: ; preds = %if.then39.i103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup192.thread.i.i

if.else51.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i104.i = zext i8 %171 to i32
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.61, i32 noundef %conv.i104.i, i32 noundef 132, i32 noundef 1) #15
  br label %cleanup192.thread.i.i

if.end55.i.i:                                     ; preds = %if.then39.i103.i.if.end55.i.i_crit_edge, %if.then19.i.i.if.end55.i.i_crit_edge
  %call.i.i105.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %di.0348.i.i, i32 noundef 29) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call.i.i105.i)
  %cmp58.i.i = icmp ugt i8 %call.i.i105.i, 8
  br i1 %cmp58.i.i, label %if.then66.i.i, label %if.end68.i107.i, !prof !265

if.then66.i.i:                                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv57.le345.i.i = zext i8 %call.i.i105.i to i32
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.62, i32 noundef %conv57.le345.i.i, i32 noundef 9) #15
  br label %cleanup192.thread.i.i

if.end68.i107.i:                                  ; preds = %if.end55.i.i
  %178 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %179)
  %cmp71.i106.i = icmp eq i8 %179, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call.i.i105.i)
  %cmp74.i.i = icmp ne i8 %call.i.i105.i, 8
  %spec.select.i.i = select i1 %cmp71.i106.i, i1 %cmp74.i.i, i1 false
  br i1 %spec.select.i.i, label %if.then82.i108.i, label %if.end84.i109.i, !prof !265

if.then82.i108.i:                                 ; preds = %if.end68.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv57.le.i.i = zext i8 %call.i.i105.i to i32
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.63, i32 noundef %conv57.le.i.i, i32 noundef 8) #15
  br label %cleanup192.thread.i.i

if.end84.i109.i:                                  ; preds = %if.end68.i107.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call.i.i105.i)
  %cmp86.i.i = icmp eq i8 %call.i.i105.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %179)
  %cmp91.i.i = icmp ne i8 %179, 24
  %or.cond.i.i = select i1 %cmp86.i.i, i1 %cmp91.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then100.i.i, label %if.end107.i.i, !prof !271

if.then100.i.i:                                   ; preds = %if.end84.i109.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.64) #15
  br label %cleanup192.thread.i.i

if.end107.i.i:                                    ; preds = %if.end84.i109.i
  %call.i292.i.i = call zeroext i16 @btrfs_get_16(ptr noundef %leaf, ptr noundef %di.0348.i.i, i32 noundef 27) #10
  %conv109.i.i = zext i16 %call.i292.i.i to i32
  %call.i293.i.i = call zeroext i16 @btrfs_get_16(ptr noundef %leaf, ptr noundef %di.0348.i.i, i32 noundef 25) #10
  %conv111.i.i = zext i16 %call.i293.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %call.i292.i.i)
  %cmp112.i.i = icmp ugt i16 %call.i292.i.i, 255
  br i1 %cmp112.i.i, label %if.then120.i.i, label %if.end121.i.i, !prof !265

if.then120.i.i:                                   ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.65, i32 noundef %conv109.i.i, i32 noundef 255) #15
  br label %cleanup192.thread.i.i

if.end121.i.i:                                    ; preds = %if.end107.i.i
  %add122.i.i = add nuw nsw i32 %conv111.i.i, %conv109.i.i
  %180 = ptrtoint ptr %nodesize.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %nodesize.i.i.i.i.i, align 8
  %sub.i.i110.i = add i32 %181, -156
  call void @__sanitizer_cov_trace_cmp4(i32 %add122.i.i, i32 %sub.i.i110.i)
  %cmp124.i.i = icmp ugt i32 %add122.i.i, %sub.i.i110.i
  br i1 %cmp124.i.i, label %if.then132.i.i, label %if.end135.i.i, !prof !265

if.then132.i.i:                                   ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.66, i32 noundef %add122.i.i, i32 noundef %sub.i.i110.i) #15
  br label %cleanup192.thread.i.i

if.end135.i.i:                                    ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i293.i.i)
  %tobool136.not.i.i = icmp ne i16 %call.i293.i.i, 0
  %spec.select287.i.i = select i1 %tobool136.not.i.i, i1 %cmp74.i.i, i1 false
  br i1 %spec.select287.i.i, label %if.then148.i.i, label %if.end149.i.i, !prof !265

if.then148.i.i:                                   ; preds = %if.end135.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.67, i32 noundef %conv111.i.i) #15
  br label %cleanup192.thread.i.i

if.end149.i.i:                                    ; preds = %if.end135.i.i
  %add151.i.i = add nuw nsw i32 %add122.i.i, 30
  %add152.i.i = add i32 %add151.i.i, %cur.0349.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add152.i.i, i32 %call.i.i.i84.i)
  %cmp153.i.i = icmp ugt i32 %add152.i.i, %call.i.i.i84.i
  br i1 %cmp153.i.i, label %if.then161.i.i, label %if.end163.i.i, !prof !265

if.then161.i.i:                                   ; preds = %if.end149.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.68, i32 noundef %add152.i.i, i32 noundef %call.i.i.i84.i) #15
  br label %cleanup192.thread.i.i

if.end163.i.i:                                    ; preds = %if.end149.i.i
  %182 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %3, align 8
  %184 = zext i8 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %183, label %if.end163.i.i.cleanup192.i.i_crit_edge [
    i8 84, label %if.end163.i.i.if.then173.i.i_crit_edge
    i8 24, label %if.end163.i.i.if.then173.i.i_crit_edge6636
  ]

if.end163.i.i.if.then173.i.i_crit_edge6636:       ; preds = %if.end163.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then173.i.i

if.end163.i.i.if.then173.i.i_crit_edge:           ; preds = %if.end163.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then173.i.i

if.end163.i.i.cleanup192.i.i_crit_edge:           ; preds = %if.end163.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup192.i.i

if.then173.i.i:                                   ; preds = %if.end163.i.i.if.then173.i.i_crit_edge, %if.end163.i.i.if.then173.i.i_crit_edge6636
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %namebuf.i.i) #10
  %185 = call ptr @memset(ptr %namebuf.i.i, i32 255, i32 255)
  %add.ptr.i.i243 = getelementptr %struct.btrfs_dir_item, ptr %di.0348.i.i, i32 1
  %186 = ptrtoint ptr %add.ptr.i.i243 to i32
  call void @read_extent_buffer(ptr noundef %leaf, ptr noundef nonnull %namebuf.i.i, i32 noundef %186, i32 noundef %conv109.i.i) #10
  %call.i296.i.i = call i32 @crc32c(i32 noundef -2, ptr noundef nonnull %namebuf.i.i, i32 noundef %conv109.i.i) #10
  %conv.i.i.i = zext i32 %call.i296.i.i to i64
  %187 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 8)
  %188 = load i64, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %188, i64 %conv.i.i.i)
  %cmp178.not.i.i = icmp eq i64 %188, %conv.i.i.i
  br i1 %cmp178.not.i.i, label %cleanup.thread.i.i, label %cleanup.i.i, !prof !266

cleanup.thread.i.i:                               ; preds = %if.then173.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %namebuf.i.i) #10
  br label %cleanup192.i.i

cleanup.i.i:                                      ; preds = %if.then173.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.69, i32 noundef %call.i296.i.i, i64 noundef %188) #15
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %namebuf.i.i) #10
  br label %cleanup192.thread.i.i

cleanup192.thread.i.i:                            ; preds = %cleanup.i.i, %if.then161.i.i, %if.then148.i.i, %if.then132.i.i, %if.then120.i.i, %if.then100.i.i, %if.then82.i108.i, %if.then66.i.i, %if.else51.i.i, %if.then39.i103.i.cleanup192.thread.i.i_crit_edge, %if.then19.i.i.cleanup192.thread.i.i_crit_edge, %if.then14.i.i
  %retval.3.ph.i.i = phi i32 [ -117, %if.else51.i.i ], [ -117, %cleanup.i.i ], [ -117, %if.then161.i.i ], [ -117, %if.then148.i.i ], [ -117, %if.then132.i.i ], [ -117, %if.then120.i.i ], [ -117, %if.then100.i.i ], [ -117, %if.then82.i108.i ], [ -117, %if.then66.i.i ], [ -117, %if.then14.i.i ], [ %call20.i.i, %if.then19.i.i.cleanup192.thread.i.i_crit_edge ], [ %call40.i.i, %if.then39.i103.i.cleanup192.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %location_key.i.i) #10
  br label %cleanup150

cleanup192.i.i:                                   ; preds = %cleanup.thread.i.i, %if.end163.i.i.cleanup192.i.i_crit_edge
  %add.ptr191.i.i = getelementptr i8, ptr %di.0348.i.i, i32 %add151.i.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %location_key.i.i) #10
  %cmp.i.i = icmp ult i32 %add152.i.i, %call.i.i.i84.i
  br i1 %cmp.i.i, label %cleanup192.i.i.while.body.i.i_crit_edge, label %cleanup192.i.i.for.inc_crit_edge

cleanup192.i.i.for.inc_crit_edge:                 ; preds = %cleanup192.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup192.i.i.while.body.i.i_crit_edge:          ; preds = %cleanup192.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

sw.bb5.i:                                         ; preds = %if.then128
  br i1 %cmp79, label %sw.bb5.i.if.end.i130.i_crit_edge, label %cond.end.i.i123.i

sw.bb5.i.if.end.i130.i_crit_edge:                 ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i130.i

cond.end.i.i123.i:                                ; preds = %sw.bb5.i
  %189 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pages.i, align 4
  %call.i.i.i116.i = call ptr @page_address(ptr noundef %190) #10
  %191 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %leaf, align 8
  %conv.i.i.i117.i = trunc i64 %192 to i32
  %and.i.i.i118.i = and i32 %conv.i.i.i117.i, 4095
  %add.ptr.i.i.i119.i = getelementptr i8, ptr %call.i.i.i116.i, i32 %and.i.i.i118.i
  %owner.i.i.i120.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i119.i, i32 0, i32 6
  %193 = ptrtoint ptr %owner.i.i.i120.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 8)
  %194 = load i64, ptr %owner.i.i.i120.i, align 1
  %195 = call i64 @llvm.bswap.i64(i64 %194) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 360287970189639680, i64 %194)
  %cmp.i.i.i121.i = icmp ne i64 %194, 360287970189639680
  %196 = add i64 %195, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %196)
  %197 = icmp ult i64 %196, -281474976710400
  %tobool23.not.i.i122.i = and i1 %cmp.i.i.i121.i, %197
  br i1 %tobool23.not.i.i122.i, label %cond.end.i.i123.i.if.end.i130.i_crit_edge, label %if.end25.i.i125.i

cond.end.i.i123.i.if.end.i130.i_crit_edge:        ; preds = %cond.end.i.i123.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i130.i

if.end25.i.i125.i:                                ; preds = %cond.end.i.i123.i
  %198 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %key, align 8
  %200 = ptrtoint ptr %prev_key to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %prev_key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %199, i64 %201)
  %cmp27.i.i124.i = icmp eq i64 %199, %201
  br i1 %cmp27.i.i124.i, label %if.end25.i.i125.i.if.end.i130.i_crit_edge, label %check_prev_ino.exit.i126.i, !prof !274

if.end25.i.i125.i.if.end.i130.i_crit_edge:        ; preds = %if.end25.i.i125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i130.i

check_prev_ino.exit.i126.i:                       ; preds = %if.end25.i.i125.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.51, i64 noundef %201, i64 noundef %199) #15
  br label %cleanup150

if.end.i130.i:                                    ; preds = %if.end25.i.i125.i.if.end.i130.i_crit_edge, %cond.end.i.i123.i.if.end.i130.i_crit_edge, %sw.bb5.i.if.end.i130.i_crit_edge
  %call.i.i77.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.i.i77.i.i)
  %cmp.i129.i = icmp ult i32 %call.i.i77.i.i, 11
  br i1 %cmp.i129.i, label %if.then10.i.i, label %if.end13.i.i, !prof !265

if.then10.i.i:                                    ; preds = %if.end.i130.i
  call void @__sanitizer_cov_trace_pc() #12
  %202 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i80.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %202, i32 noundef 21) #10
  %203 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %fs_info1, align 8
  %nodesize.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %204, i32 0, i32 166
  %205 = ptrtoint ptr %nodesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %nodesize.i.i.i, align 8
  %sub.i.i131.i = add i32 %206, -101
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.78, i32 noundef %call.i.i80.i.i, i32 noundef 10, i32 noundef %sub.i.i131.i) #15
  br label %cleanup150

if.end13.i.i:                                     ; preds = %if.end.i130.i
  %call.i.i83.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %add.i132.i = add i32 %call.i.i83.i.i, 101
  %call.i.i86.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  %add16.i.i = add i32 %add.i132.i, %call.i.i86.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i132.i, i32 %add16.i.i)
  %cmp1792.i.i = icmp ult i32 %add.i132.i, %add16.i.i
  br i1 %cmp1792.i.i, label %if.end13.i.i.while.body.i134.i_crit_edge, label %if.end13.i.i.for.inc_crit_edge

if.end13.i.i.for.inc_crit_edge:                   ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end13.i.i.while.body.i134.i_crit_edge:         ; preds = %if.end13.i.i
  br label %while.body.i134.i

while.body.i134.i:                                ; preds = %cleanup.i139.i.while.body.i134.i_crit_edge, %if.end13.i.i.while.body.i134.i_crit_edge
  %ptr.093.i.i = phi i32 [ %add30.i.i, %cleanup.i139.i.while.body.i134.i_crit_edge ], [ %add.i132.i, %if.end13.i.i.while.body.i134.i_crit_edge ]
  %add18.i.i = add i32 %ptr.093.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i.i, i32 %add16.i.i)
  %cmp19.i133.i = icmp ugt i32 %add18.i.i, %add16.i.i
  br i1 %cmp19.i133.i, label %if.then26.i.i, label %if.end27.i.i, !prof !265

if.then26.i.i:                                    ; preds = %while.body.i134.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.79, i32 noundef %ptr.093.i.i, i32 noundef %add16.i.i, i32 noundef 4) #15
  br label %cleanup150

if.end27.i.i:                                     ; preds = %while.body.i134.i
  %207 = inttoptr i32 %ptr.093.i.i to ptr
  %call.i.i135.i = call zeroext i16 @btrfs_get_16(ptr noundef %leaf, ptr noundef %207, i32 noundef 8) #10
  %add29.i.i = add i32 %ptr.093.i.i, 10
  %conv.i136.i = zext i16 %call.i.i135.i to i32
  %add30.i.i = add i32 %add29.i.i, %conv.i136.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add30.i.i, i32 %add16.i.i)
  %cmp31.i137.i = icmp ugt i32 %add30.i.i, %add16.i.i
  br i1 %cmp31.i137.i, label %if.then39.i138.i, label %cleanup.i139.i, !prof !265

if.then39.i138.i:                                 ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.80, i32 noundef %ptr.093.i.i, i32 noundef %add16.i.i, i32 noundef %conv.i136.i) #15
  br label %cleanup150

cleanup.i139.i:                                   ; preds = %if.end27.i.i
  %cmp17.i.i = icmp ult i32 %add30.i.i, %add16.i.i
  br i1 %cmp17.i.i, label %cleanup.i139.i.while.body.i134.i_crit_edge, label %cleanup.i139.i.for.inc_crit_edge

cleanup.i139.i.for.inc_crit_edge:                 ; preds = %cleanup.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup.i139.i.while.body.i134.i_crit_edge:       ; preds = %cleanup.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i134.i

sw.bb7.i:                                         ; preds = %if.then128
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bgi.i.i) #10
  %208 = call ptr @memset(ptr %bgi.i.i, i32 255, i32 24)
  %call.i.i.i142.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  %209 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 8)
  %210 = load i64, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %210)
  %cmp.i144.i = icmp eq i64 %210, 0
  br i1 %cmp.i144.i, label %if.then.i145.i, label %if.end.i146.i, !prof !265

if.then.i145.i:                                   ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @block_group_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.81) #15
  br label %check_block_group_item.exit.i

if.end.i146.i:                                    ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call.i.i.i142.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i.i142.i, 24
  br i1 %cmp2.not.i.i, label %if.end10.i.i, label %if.then9.i.i, !prof !266

if.then9.i.i:                                     ; preds = %if.end.i146.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @block_group_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.82, i32 noundef %call.i.i.i142.i, i32 noundef 24) #15
  br label %check_block_group_item.exit.i

if.end10.i.i:                                     ; preds = %if.end.i146.i
  %call.i.i2057.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %add.i147.i = add i32 %call.i.i2057.i.i, 101
  call void @read_extent_buffer(ptr noundef %leaf, ptr noundef nonnull %bgi.i.i, i32 noundef %add.i147.i, i32 noundef 24) #10
  %211 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %27, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710656, i64 %212)
  %cmp13.not.i.i = icmp eq i64 %212, 281474976710656
  br i1 %cmp13.not.i.i, label %if.end22.i.i, label %if.then20.i.i, !prof !266

if.then20.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %213 = call i64 @llvm.bswap.i64(i64 %212) #10
  call void (ptr, i32, ptr, ...) @block_group_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.83, i64 noundef %213, i64 noundef 256) #15
  br label %check_block_group_item.exit.i

if.end22.i.i:                                     ; preds = %if.end10.i.i
  %214 = ptrtoint ptr %bgi.i.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %bgi.i.i, align 8
  %216 = call i64 @llvm.bswap.i64(i64 %215) #10
  %217 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 8)
  %218 = load i64, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %216, i64 %218)
  %cmp25.i.i = icmp ugt i64 %216, %218
  br i1 %cmp25.i.i, label %if.then32.i.i, label %if.end35.i.i, !prof !265

if.then32.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @block_group_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.84, i64 noundef %216, i64 noundef %218) #15
  br label %check_block_group_item.exit.i

if.end35.i.i:                                     ; preds = %if.end22.i.i
  %219 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %28, align 8
  %221 = call i64 @llvm.bswap.i64(i64 %220) #10
  %and.i148.i = and i64 %221, 2040
  %call.i.i149.i = call i32 @__sw_hweight64(i64 noundef %and.i148.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i149.i)
  %cmp6452062.i.i = icmp ugt i32 %call.i.i149.i, 1
  br i1 %cmp6452062.i.i, label %cond.false1263.i.i, label %if.end1268.i.i, !prof !265

cond.false1263.i.i:                               ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i2059.i.i = call i32 @__sw_hweight64(i64 noundef %and.i148.i) #10
  call void (ptr, i32, ptr, ...) @block_group_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.85, i64 noundef %and.i148.i, i32 noundef %call.i2059.i.i) #15
  br label %check_block_group_item.exit.i

if.end1268.i.i:                                   ; preds = %if.end35.i.i
  %and1269.i.i = and i64 %221, 7
  %trunc.i.i = trunc i64 %221 to i3
  %switch.tableidx = xor i3 %trunc.i.i, -4
  %222 = sext i3 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %222)
  %.not = icmp eq i3 %switch.tableidx, -1
  br i1 %.not, label %if.end1268.i.i.cond.false1826.i.i_crit_edge, label %switch.hole_check

if.end1268.i.i.cond.false1826.i.i_crit_edge:      ; preds = %if.end1268.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false1826.i.i

cond.false1826.i.i:                               ; preds = %switch.hole_check.cond.false1826.i.i_crit_edge, %if.end1268.i.i.cond.false1826.i.i_crit_edge
  %call.i2060.i.i = call i32 @__sw_hweight64(i64 noundef %and1269.i.i) #10
  call void (ptr, i32, ptr, ...) @block_group_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.86, i64 noundef %and1269.i.i, i32 noundef %call.i2060.i.i, i64 noundef 1, i64 noundef 4, i64 noundef 2, i64 noundef 5) #15
  br label %check_block_group_item.exit.i

switch.hole_check:                                ; preds = %if.end1268.i.i
  %switch.maskindex = zext i3 %switch.tableidx to i8
  %switch.shifted = lshr i8 99, %switch.maskindex
  %223 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %switch.lobit.not = icmp eq i8 %223, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cond.false1826.i.i_crit_edge, label %switch.hole_check.check_block_group_item.exit.i_crit_edge

switch.hole_check.check_block_group_item.exit.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_block_group_item.exit.i

switch.hole_check.cond.false1826.i.i_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false1826.i.i

check_block_group_item.exit.i:                    ; preds = %switch.hole_check.check_block_group_item.exit.i_crit_edge, %cond.false1826.i.i, %cond.false1263.i.i, %if.then32.i.i, %if.then20.i.i, %if.then9.i.i, %if.then.i145.i
  %retval.0.i.i = phi i32 [ -117, %if.then.i145.i ], [ -117, %if.then9.i.i ], [ -117, %if.then20.i.i ], [ -117, %if.then32.i.i ], [ -117, %cond.false1263.i.i ], [ -117, %cond.false1826.i.i ], [ 0, %switch.hole_check.check_block_group_item.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bgi.i.i) #10
  br label %check_leaf_item.exit

sw.bb9.i:                                         ; preds = %if.then128
  %call.i.i151.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %add.i246 = add i32 %call.i.i151.i, 101
  %224 = inttoptr i32 %add.i246 to ptr
  %call.i.i.i154.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %call.i.i.i154.i)
  %cmp.i155.i = icmp ult i32 %call.i.i.i154.i, 80
  br i1 %cmp.i155.i, label %if.then.i160.i, label %if.end.i162.i, !prof !265

if.then.i160.i:                                   ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #12
  %225 = inttoptr i32 %add.i.i.i.i to ptr
  %226 = inttoptr i32 %add.i246 to ptr
  %227 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %227, i32 8)
  %228 = load i64, ptr %4, align 1
  %call.i.i46.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %225, i32 noundef 21) #10
  %229 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %fs_info1, align 8
  %nodesize.i.i158.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %230, i32 0, i32 166
  %231 = ptrtoint ptr %nodesize.i.i158.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %nodesize.i.i158.i, align 8
  %sub.i.i159.i = add i32 %232, -101
  call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %226, i64 noundef %228, ptr noundef nonnull @.str.88, i32 noundef %call.i.i46.i.i, i32 noundef 80, i32 noundef %sub.i.i159.i) #15
  br label %cleanup150

if.end.i162.i:                                    ; preds = %sw.bb9.i
  %call.i.i161.i = call zeroext i16 @btrfs_get_16(ptr noundef %leaf, ptr noundef %224, i32 noundef 44) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i161.i)
  %cmp5.i.i = icmp eq i16 %call.i.i161.i, 0
  br i1 %cmp5.i.i, label %if.end.i162.i.out.i.i_crit_edge, label %if.end8.i.i

if.end.i162.i.out.i.i_crit_edge:                  ; preds = %if.end.i162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end8.i.i:                                      ; preds = %if.end.i162.i
  %conv.i163.i = zext i16 %call.i.i161.i to i32
  %sub.i47.i.i = shl nuw nsw i32 %conv.i163.i, 5
  %add.i.i164.i = add nuw nsw i32 %sub.i47.i.i, 48
  %call.i.i50.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i164.i, i32 %call.i.i50.i.i)
  %cmp11.not.i.i = icmp eq i32 %add.i.i164.i, %call.i.i50.i.i
  br i1 %cmp11.not.i.i, label %if.end8.i.i.out.i.i_crit_edge, label %if.then19.i165.i, !prof !266

if.end8.i.i.out.i.i_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.then19.i165.i:                                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %233 = inttoptr i32 %add.i.i.i.i to ptr
  %234 = inttoptr i32 %add.i246 to ptr
  %235 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %235, i32 8)
  %236 = load i64, ptr %4, align 1
  %call.i.i53.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %233, i32 noundef 21) #10
  call void (ptr, ptr, i64, ptr, ...) @chunk_err(ptr noundef %leaf, ptr noundef %234, i64 noundef %236, ptr noundef nonnull @.str.89, i32 noundef %call.i.i53.i.i, i32 noundef %add.i.i164.i) #15
  br label %cleanup150

out.i.i:                                          ; preds = %if.end8.i.i.out.i.i_crit_edge, %if.end.i162.i.out.i.i_crit_edge
  %237 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %237, i32 8)
  %238 = load i64, ptr %4, align 1
  %call25.i.i = call i32 @btrfs_check_chunk_valid(ptr noundef %leaf, ptr noundef %224, i64 noundef %238) #10
  br label %check_leaf_item.exit

sw.bb12.i:                                        ; preds = %if.then128
  %call.i.i.i170.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  %239 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %240)
  %cmp.not.i171.i = icmp eq i64 %240, 1
  br i1 %cmp.not.i171.i, label %if.end.i173.i, label %if.then.i172.i, !prof !266

if.then.i172.i:                                   ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dev_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.90, i64 noundef %240, i64 noundef 1) #15
  br label %cleanup150

if.end.i173.i:                                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %call.i.i.i170.i)
  %cmp3.not.i.i = icmp eq i32 %call.i.i.i170.i, 98
  br i1 %cmp3.not.i.i, label %if.end11.i.i, label %if.then10.i174.i, !prof !266

if.then10.i174.i:                                 ; preds = %if.end.i173.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dev_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.91, i32 noundef %call.i.i.i170.i, i32 noundef 98) #15
  br label %cleanup150

if.end11.i.i:                                     ; preds = %if.end.i173.i
  %call.i.i67.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %add.i175.i = add i32 %call.i.i67.i.i, 101
  %241 = inttoptr i32 %add.i175.i to ptr
  %call.i.i176.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %241, i32 noundef 0) #10
  %242 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %242, i32 8)
  %243 = load i64, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i176.i, i64 %243)
  %cmp14.not.i.i = icmp eq i64 %call.i.i176.i, %243
  br i1 %cmp14.not.i.i, label %if.end24.i.i, label %if.then21.i.i, !prof !266

if.then21.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %244 = inttoptr i32 %add.i175.i to ptr
  %call.i68.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %244, i32 noundef 0) #10
  call void (ptr, i32, ptr, ...) @dev_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.92, i64 noundef %243, i64 noundef %call.i68.i.i) #15
  br label %cleanup150

if.end24.i.i:                                     ; preds = %if.end11.i.i
  %call.i69.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %241, i32 noundef 16) #10
  %call.i70.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %241, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i69.i.i, i64 %call.i70.i.i)
  %cmp27.i.i = icmp ugt i64 %call.i69.i.i, %call.i70.i.i
  br i1 %cmp27.i.i, label %if.then34.i.i, label %if.end24.i.i.for.inc_crit_edge, !prof !265

if.end24.i.i.for.inc_crit_edge:                   ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then34.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %245 = inttoptr i32 %add.i175.i to ptr
  %call.i71.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %245, i32 noundef 16) #10
  %call.i72.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %245, i32 noundef 8) #10
  call void (ptr, i32, ptr, ...) @dev_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.93, i64 noundef %call.i71.i.i, i64 noundef %call.i72.i.i) #15
  br label %cleanup150

sw.bb14.i:                                        ; preds = %if.then128
  %246 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %fs_info1, align 8
  %super_copy.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %247, i32 0, i32 43
  %248 = ptrtoint ptr %super_copy.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %super_copy.i.i, align 8
  %generation.i.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %249, i32 0, i32 5
  %250 = ptrtoint ptr %generation.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %250, i32 8)
  %251 = load i64, ptr %generation.i.i.i, align 1
  %252 = call i64 @llvm.bswap.i64(i64 %251) #10
  %call.i.i.i183.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  %call3.i.i = call fastcc i32 @check_inode_key(ptr noundef %leaf, ptr noundef nonnull %key, i32 noundef %slot.01321) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i184.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i184.i, label %sw.bb14.i.cleanup150_crit_edge, label %if.end.i186.i, !prof !265

sw.bb14.i.cleanup150_crit_edge:                   ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

if.end.i186.i:                                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %call.i.i.i183.i)
  %cmp5.not.i185.i = icmp eq i32 %call.i.i.i183.i, 160
  br i1 %cmp5.not.i185.i, label %if.end13.i191.i, label %if.then12.i.i, !prof !266

if.then12.i.i:                                    ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.91, i32 noundef %call.i.i.i183.i, i32 noundef 160) #15
  br label %cleanup150

if.end13.i191.i:                                  ; preds = %if.end.i186.i
  %call.i.i179.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %add.i187.i = add i32 %call.i.i179.i.i, 101
  %253 = inttoptr i32 %add.i187.i to ptr
  %call.i.i188.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %253, i32 noundef 0) #10
  %add16.i189.i = add i64 %252, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i188.i, i64 %add16.i189.i)
  %cmp17.i190.i = icmp ugt i64 %call.i.i188.i, %add16.i189.i
  br i1 %cmp17.i190.i, label %if.then24.i.i, label %if.end27.i192.i, !prof !265

if.then24.i.i:                                    ; preds = %if.end13.i191.i
  call void @__sanitizer_cov_trace_pc() #12
  %254 = inttoptr i32 %add.i187.i to ptr
  %call.i180.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %254, i32 noundef 0) #10
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.95, i64 noundef %call.i180.i.i, i64 noundef %add16.i189.i) #15
  br label %cleanup150

if.end27.i192.i:                                  ; preds = %if.end13.i191.i
  %call.i181.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %253, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i181.i.i, i64 %add16.i189.i)
  %cmp30.i.i = icmp ugt i64 %call.i181.i.i, %add16.i189.i
  br i1 %cmp30.i.i, label %if.then37.i.i, label %if.end40.i.i, !prof !265

if.then37.i.i:                                    ; preds = %if.end27.i192.i
  call void @__sanitizer_cov_trace_pc() #12
  %255 = inttoptr i32 %add.i187.i to ptr
  %call.i182.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %255, i32 noundef 8) #10
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.96, i64 noundef %call.i182.i.i, i64 noundef %add16.i189.i) #15
  br label %cleanup150

if.end40.i.i:                                     ; preds = %if.end27.i192.i
  %call.i183.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %253, i32 noundef 52) #10
  %and.i193.i = and i32 %call.i183.i.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i193.i)
  %tobool42.not.i.i = icmp eq i32 %and.i193.i, 0
  br i1 %tobool42.not.i.i, label %if.end52.i.i, label %if.then49.i.i, !prof !266

if.then49.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.97, i32 noundef %and.i193.i) #15
  br label %cleanup150

if.end52.i.i:                                     ; preds = %if.end40.i.i
  %and53.i.i = and i32 %call.i183.i.i, 61440
  %256 = call i32 @llvm.ctpop.i32(i32 %and53.i.i) #10, !range !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %256)
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %if.end76.i.i, label %if.then55.i.i

if.then55.i.i:                                    ; preds = %if.end52.i.i
  %trunc.i194.i = trunc i32 %and53.i.i to i16
  %258 = zext i16 %trunc.i194.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %258, ptr @__sancov_gen_cov_switch_values.138)
  switch i16 %trunc.i194.i, label %if.then73.critedge.i.i [
    i16 -24576, label %if.then55.i.i.if.end93.i.i_crit_edge
    i16 24576, label %if.then55.i.i.if.end93.i.i_crit_edge6637
    i16 -16384, label %if.then55.i.i.if.end93.i.i_crit_edge6638
  ]

if.then55.i.i.if.end93.i.i_crit_edge6638:         ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i.i

if.then55.i.i.if.end93.i.i_crit_edge6637:         ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i.i

if.then55.i.i.if.end93.i.i_crit_edge:             ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i.i

if.then73.critedge.i.i:                           ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.98, i32 noundef %and53.i.i) #15
  br label %cleanup150

if.end76.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and53.i.i)
  %cmp78.i.i = icmp eq i32 %and53.i.i, 16384
  br i1 %cmp78.i.i, label %land.rhs80.i.i, label %if.end76.i.i.if.end93.i.i_crit_edge

if.end76.i.i.if.end93.i.i_crit_edge:              ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i.i

land.rhs80.i.i:                                   ; preds = %if.end76.i.i
  %call.i184.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %253, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i184.i.i)
  %cmp82.i.i = icmp ugt i32 %call.i184.i.i, 1
  br i1 %cmp82.i.i, label %if.then91.i.i, label %land.rhs80.i.i.if.end93.i.i_crit_edge, !prof !265

land.rhs80.i.i.if.end93.i.i_crit_edge:            ; preds = %land.rhs80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93.i.i

if.then91.i.i:                                    ; preds = %land.rhs80.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %259 = inttoptr i32 %add.i187.i to ptr
  %call.i185.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %259, i32 noundef 40) #10
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.99, i32 noundef %call.i185.i.i) #15
  br label %cleanup150

if.end93.i.i:                                     ; preds = %land.rhs80.i.i.if.end93.i.i_crit_edge, %if.end76.i.i.if.end93.i.i_crit_edge, %if.then55.i.i.if.end93.i.i_crit_edge, %if.then55.i.i.if.end93.i.i_crit_edge6637, %if.then55.i.i.if.end93.i.i_crit_edge6638
  %call.i186.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %253, i32 noundef 64) #10
  %and95.i.i1334 = and i64 %call.i186.i.i, 2147479552
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and95.i.i1334)
  %tobool96.not.i.i = icmp eq i64 %and95.i.i1334, 0
  br i1 %tobool96.not.i.i, label %if.end104.i.i, label %if.then103.i.i, !prof !266

if.then103.i.i:                                   ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i195.i.le = trunc i64 %call.i186.i.i to i32
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.100, i32 noundef %conv.i.i195.i.le) #15
  br label %cleanup150

if.end104.i.i:                                    ; preds = %if.end93.i.i
  %sb.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %247, i32 0, i32 45
  %260 = ptrtoint ptr %sb.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %sb.i.i, align 8
  %s_flags.i.i.i = getelementptr inbounds %struct.super_block, ptr %261, i32 0, i32 10
  %262 = ptrtoint ptr %s_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %s_flags.i.i.i, align 4
  %and.i.i196.i = and i32 %263, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i196.i)
  %tobool.i.i.i = icmp eq i32 %and.i.i196.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934591, i64 %call.i186.i.i)
  %tobool108.i.i = icmp ugt i64 %call.i186.i.i, 8589934591
  %or.cond188.i.i = select i1 %tobool.i.i.i, i1 %tobool108.i.i, i1 false
  br i1 %or.cond188.i.i, label %if.then116.i.i, label %if.end104.i.i.for.inc_crit_edge, !prof !271

if.end104.i.i.for.inc_crit_edge:                  ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then116.i.i:                                   ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i.i.i = lshr i64 %call.i186.i.i, 32
  %conv1.i.i.i.le = trunc i64 %shr.i.i.i to i32
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.101, i32 noundef %conv1.i.i.i.le) #15
  br label %cleanup150

sw.bb16.i:                                        ; preds = %if.then128
  %264 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 439, ptr nonnull %ri.i.i) #10
  %266 = call ptr @memset(ptr %ri.i.i, i32 0, i32 439)
  %call.i.i247 = call fastcc i32 @check_root_key(ptr noundef %leaf, ptr noundef nonnull %key, i32 noundef %slot.01321) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i247)
  %cmp.i200.i = icmp slt i32 %call.i.i247, 0
  br i1 %cmp.i200.i, label %sw.bb16.i.check_root_item.exit.i_crit_edge, label %if.end.i204.i, !prof !265

sw.bb16.i.check_root_item.exit.i_crit_edge:       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_root_item.exit.i

if.end.i204.i:                                    ; preds = %sw.bb16.i
  %call.i.i.i203.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 439, i32 %call.i.i.i203.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i203.i, 439
  br i1 %cmp4.not.i.i, label %if.end.i204.i.if.end17.i209.i_crit_edge, label %land.rhs.i.i

if.end.i204.i.if.end17.i209.i_crit_edge:          ; preds = %if.end.i204.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i209.i

land.rhs.i.i:                                     ; preds = %if.end.i204.i
  %call.i.i166.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %call.i.i166.i.i)
  %cmp7.not.i.i = icmp eq i32 %call.i.i166.i.i, 239
  br i1 %cmp7.not.i.i, label %land.rhs.i.i.if.end17.i209.i_crit_edge, label %if.then14.i205.i, !prof !266

land.rhs.i.i.if.end17.i209.i_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i209.i

if.then14.i205.i:                                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i169.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.102, i32 noundef %call.i.i169.i.i, i32 noundef 439, i32 noundef 239) #15
  br label %check_root_item.exit.i

if.end17.i209.i:                                  ; preds = %land.rhs.i.i.if.end17.i209.i_crit_edge, %if.end.i204.i.if.end17.i209.i_crit_edge
  %call.i.i172.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %add.i206.i = add i32 %call.i.i172.i.i, 101
  %call.i.i175.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  call void @read_extent_buffer(ptr noundef %leaf, ptr noundef nonnull %ri.i.i, i32 noundef %add.i206.i, i32 noundef %call.i.i175.i.i) #10
  %267 = ptrtoint ptr %generation.i.i207.i to i32
  call void @__asan_loadN_noabort(i32 %267, i32 8)
  %268 = load i64, ptr %generation.i.i207.i, align 1
  %269 = call i64 @llvm.bswap.i64(i64 %268) #10
  %super_copy.i208.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %265, i32 0, i32 43
  %270 = ptrtoint ptr %super_copy.i208.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %super_copy.i208.i, align 8
  %generation.i176.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %271, i32 0, i32 5
  %272 = ptrtoint ptr %generation.i176.i.i to i32
  call void @__asan_loadN_noabort(i32 %272, i32 8)
  %273 = load i64, ptr %generation.i176.i.i, align 1
  %274 = call i64 @llvm.bswap.i64(i64 %273) #10
  %add22.i.i = add i64 %274, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %269, i64 %add22.i.i)
  %cmp23.i.i = icmp ugt i64 %269, %add22.i.i
  br i1 %cmp23.i.i, label %if.then30.i210.i, label %if.end35.i211.i, !prof !265

if.then30.i210.i:                                 ; preds = %if.end17.i209.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.103, i64 noundef %269, i64 noundef %add22.i.i) #15
  br label %check_root_item.exit.i

if.end35.i211.i:                                  ; preds = %if.end17.i209.i
  %275 = ptrtoint ptr %generation_v2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %275, i32 8)
  %276 = load i64, ptr %generation_v2.i.i.i, align 1
  %277 = call i64 @llvm.bswap.i64(i64 %276) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %277, i64 %add22.i.i)
  %cmp40.i.i = icmp ugt i64 %277, %add22.i.i
  br i1 %cmp40.i.i, label %if.then47.i.i, label %if.end52.i212.i, !prof !265

if.then47.i.i:                                    ; preds = %if.end35.i211.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.104, i64 noundef %277, i64 noundef %add22.i.i) #15
  br label %check_root_item.exit.i

if.end52.i212.i:                                  ; preds = %if.end35.i211.i
  %278 = ptrtoint ptr %last_snapshot.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %278, i32 8)
  %279 = load i64, ptr %last_snapshot.i.i.i, align 1
  %280 = call i64 @llvm.bswap.i64(i64 %279) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %280, i64 %add22.i.i)
  %cmp57.i.i = icmp ugt i64 %280, %add22.i.i
  br i1 %cmp57.i.i, label %if.then64.i.i, label %if.end69.i.i, !prof !265

if.then64.i.i:                                    ; preds = %if.end52.i212.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.105, i64 noundef %280, i64 noundef %add22.i.i) #15
  br label %check_root_item.exit.i

if.end69.i.i:                                     ; preds = %if.end52.i212.i
  %281 = ptrtoint ptr %bytenr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %281, i32 8)
  %282 = load i64, ptr %bytenr.i.i.i, align 1
  %283 = call i64 @llvm.bswap.i64(i64 %282) #10
  %sectorsize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %265, i32 0, i32 167
  %284 = ptrtoint ptr %sectorsize.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %sectorsize.i.i, align 4
  %conv.i213.i = zext i32 %285 to i64
  %sub.i214.i = add nsw i64 %conv.i213.i, -1
  %and.i215.i = and i64 %sub.i214.i, %283
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i215.i)
  %cmp71.not.i.i = icmp eq i64 %and.i215.i, 0
  br i1 %cmp71.not.i.i, label %if.end84.i216.i, label %if.then81.i.i, !prof !266

if.then81.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.106, i64 noundef %283, i32 noundef %285) #15
  br label %check_root_item.exit.i

if.end84.i216.i:                                  ; preds = %if.end69.i.i
  %286 = ptrtoint ptr %level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %level.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %287)
  %cmp87.i.i = icmp ugt i8 %287, 7
  br i1 %cmp87.i.i, label %if.then95.i.i, label %if.end98.i.i, !prof !265

if.then95.i.i:                                    ; preds = %if.end84.i216.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv97.i.i = zext i8 %287 to i32
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.107, i32 noundef %conv97.i.i, i32 noundef 7) #15
  br label %check_root_item.exit.i

if.end98.i.i:                                     ; preds = %if.end84.i216.i
  %288 = ptrtoint ptr %drop_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %drop_level.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %289)
  %cmp101.i.i = icmp ugt i8 %289, 7
  br i1 %cmp101.i.i, label %if.then109.i.i, label %if.end112.i.i, !prof !265

if.then109.i.i:                                   ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv111.i217.i = zext i8 %289 to i32
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.107, i32 noundef %conv111.i217.i, i32 noundef 7) #15
  br label %check_root_item.exit.i

if.end112.i.i:                                    ; preds = %if.end98.i.i
  %290 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %290, i32 8)
  %291 = load i64, ptr %flags.i.i.i, align 1
  %292 = call i64 @llvm.bswap.i64(i64 %291) #10
  %and114.i.i = and i64 %292, -281474976710658
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and114.i.i)
  %tobool115.not.i.i = icmp eq i64 %and114.i.i, 0
  br i1 %tobool115.not.i.i, label %if.end112.i.i.check_root_item.exit.i_crit_edge, label %if.then122.i.i, !prof !266

if.end112.i.i.check_root_item.exit.i_crit_edge:   ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_root_item.exit.i

if.then122.i.i:                                   ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.108, i64 noundef %292, i64 noundef 281474976710657) #15
  br label %check_root_item.exit.i

check_root_item.exit.i:                           ; preds = %if.then122.i.i, %if.end112.i.i.check_root_item.exit.i_crit_edge, %if.then109.i.i, %if.then95.i.i, %if.then81.i.i, %if.then64.i.i, %if.then47.i.i, %if.then30.i210.i, %if.then14.i205.i, %sw.bb16.i.check_root_item.exit.i_crit_edge
  %retval.0.i218.i = phi i32 [ -117, %if.then14.i205.i ], [ -117, %if.then30.i210.i ], [ -117, %if.then47.i.i ], [ -117, %if.then64.i.i ], [ -117, %if.then81.i.i ], [ -117, %if.then95.i.i ], [ -117, %if.then109.i.i ], [ -117, %if.then122.i.i ], [ %call.i.i247, %sw.bb16.i.check_root_item.exit.i_crit_edge ], [ 0, %if.end112.i.i.check_root_item.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 439, ptr nonnull %ri.i.i) #10
  br label %check_leaf_item.exit

sw.bb18.i:                                        ; preds = %if.then128.sw.bb18.i_crit_edge, %if.then128.sw.bb18.i_crit_edge6624
  %293 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %fs_info1, align 8
  %call.i.i.i223.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  %295 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -87, i8 %296)
  %cmp.i225.i = icmp eq i8 %296, -87
  br i1 %cmp.i225.i, label %land.rhs.i226.i, label %sw.bb18.i.if.end.i232.i_crit_edge

sw.bb18.i.if.end.i232.i_crit_edge:                ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i232.i

land.rhs.i226.i:                                  ; preds = %sw.bb18.i
  %super_copy.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %294, i32 0, i32 43
  %297 = ptrtoint ptr %super_copy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %super_copy.i.i.i, align 8
  %incompat_flags.i.i.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %298, i32 0, i32 22
  %299 = ptrtoint ptr %incompat_flags.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %299, i32 8)
  %300 = load i64, ptr %incompat_flags.i.i.i.i, align 1
  %301 = and i64 %300, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %301)
  %tobool.i.not.i.i = icmp eq i64 %301, 0
  br i1 %tobool.i.not.i.i, label %if.then.i227.i, label %land.rhs.i226.i.if.end.i232.i_crit_edge, !prof !265

land.rhs.i226.i.if.end.i232.i_crit_edge:          ; preds = %land.rhs.i226.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i232.i

if.then.i227.i:                                   ; preds = %land.rhs.i226.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.109) #15
  br label %cleanup150

if.end.i232.i:                                    ; preds = %land.rhs.i226.i.if.end.i232.i_crit_edge, %sw.bb18.i.if.end.i232.i_crit_edge
  %302 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %302)
  %303 = load i64, ptr %key, align 8
  %sectorsize.i228.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %294, i32 0, i32 167
  %304 = ptrtoint ptr %sectorsize.i228.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %sectorsize.i228.i, align 4
  %conv6.i.i = zext i32 %305 to i64
  %sub.i229.i = add nsw i64 %conv6.i.i, -1
  %and.i230.i = and i64 %sub.i229.i, %303
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i230.i)
  %cmp7.not.i231.i = icmp eq i64 %and.i230.i, 0
  br i1 %cmp7.not.i231.i, label %if.end20.i.i, label %if.then17.i.i, !prof !266

if.then17.i.i:                                    ; preds = %if.end.i232.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.110, i64 noundef %303, i32 noundef %305) #15
  br label %cleanup150

if.end20.i.i:                                     ; preds = %if.end.i232.i
  br i1 %cmp.i225.i, label %land.rhs25.i.i, label %if.end20.i.i.if.end37.i.i_crit_edge

if.end20.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i.i

land.rhs25.i.i:                                   ; preds = %if.end20.i.i
  %306 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %306, i32 8)
  %307 = load i64, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %307)
  %cmp26.i.i = icmp ugt i64 %307, 7
  br i1 %cmp26.i.i, label %if.then35.i.i, label %land.rhs25.i.i.if.end37.i.i_crit_edge, !prof !265

land.rhs25.i.i.if.end37.i.i_crit_edge:            ; preds = %land.rhs25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i.i

if.then35.i.i:                                    ; preds = %land.rhs25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.111, i64 noundef %307, i32 noundef 7) #15
  br label %cleanup150

if.end37.i.i:                                     ; preds = %land.rhs25.i.i.if.end37.i.i_crit_edge, %if.end20.i.i.if.end37.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call.i.i.i223.i)
  %cmp38.i.i = icmp ult i32 %call.i.i.i223.i, 24
  br i1 %cmp38.i.i, label %if.then46.i.i, label %if.end48.i.i, !prof !265

if.then46.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nodesize.i.i234.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %294, i32 0, i32 166
  %308 = ptrtoint ptr %nodesize.i.i234.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %nodesize.i.i234.i, align 8
  %sub.i.i235.i = add i32 %309, -101
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.31, i32 noundef %call.i.i.i223.i, i32 noundef 24, i32 noundef %sub.i.i235.i) #15
  br label %cleanup150

if.end48.i.i:                                     ; preds = %if.end37.i.i
  %call.i.i442.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %add.i236.i = add i32 %call.i.i.i223.i, 101
  %add50.i.i = add i32 %add.i236.i, %call.i.i442.i.i
  %call.i.i445.i237.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %add52.i.i = add i32 %call.i.i445.i237.i, 101
  %310 = inttoptr i32 %add52.i.i to ptr
  %call.i.i238.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %310, i32 noundef 16) #10
  %call.i446.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %310, i32 noundef 0) #10
  %call.i447.i.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %310, i32 noundef 8) #10
  %super_copy.i239.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %294, i32 0, i32 43
  %311 = ptrtoint ptr %super_copy.i239.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %super_copy.i239.i, align 8
  %generation.i.i240.i = getelementptr inbounds %struct.btrfs_super_block, ptr %312, i32 0, i32 5
  %313 = ptrtoint ptr %generation.i.i240.i to i32
  call void @__asan_loadN_noabort(i32 %313, i32 8)
  %314 = load i64, ptr %generation.i.i240.i, align 1
  %315 = call i64 @llvm.bswap.i64(i64 %314) #10
  %add57.i.i = add i64 %315, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i447.i.i, i64 %add57.i.i)
  %cmp58.i241.i = icmp ugt i64 %call.i447.i.i, %add57.i.i
  br i1 %cmp58.i241.i, label %if.then66.i242.i, label %if.end70.i.i, !prof !265

if.then66.i242.i:                                 ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.112, i64 noundef %call.i447.i.i, i64 noundef %add57.i.i) #15
  br label %cleanup150

if.end70.i.i:                                     ; preds = %if.end48.i.i
  %and71.i.i = and i64 %call.i.i238.i, 3
  %316 = call i64 @llvm.ctpop.i64(i64 %and71.i.i) #10, !range !276
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %316)
  %317 = icmp eq i64 %316, 1
  br i1 %317, label %if.end82.i.i, label %if.then81.i243.i, !prof !277

if.then81.i243.i:                                 ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.113, i64 noundef %call.i.i238.i, i64 noundef 3) #15
  br label %cleanup150

if.end82.i.i:                                     ; preds = %if.end70.i.i
  %and83.i.i = and i64 %call.i.i238.i, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and83.i.i)
  %tobool84.not.i.i = icmp eq i64 %and83.i.i, 0
  %318 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %319)
  %cmp113.not.i.i = icmp eq i8 %319, -88
  br i1 %tobool84.not.i.i, label %if.else.i.i, label %if.then90.i.i

if.then90.i.i:                                    ; preds = %if.end82.i.i
  br i1 %cmp113.not.i.i, label %land.rhs95.i.i, label %land.lhs.true.i246.i

land.rhs95.i.i:                                   ; preds = %if.then90.i.i
  %320 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %320, i32 8)
  %321 = load i64, ptr %4, align 1
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %294, i32 0, i32 166
  %322 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %nodesize.i.i, align 8
  %conv97.i244.i = zext i32 %323 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %321, i64 %conv97.i244.i)
  %cmp98.not.i.i = icmp eq i64 %321, %conv97.i244.i
  br i1 %cmp98.not.i.i, label %land.lhs.true.i246.thread.i, label %if.then107.i.i, !prof !266

land.lhs.true.i246.thread.i:                      ; preds = %land.rhs95.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr461.i293.i = getelementptr %struct.btrfs_extent_item, ptr %310, i32 1
  br label %if.then161.i248.i

if.then107.i.i:                                   ; preds = %land.rhs95.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.114, i64 noundef %321, i32 noundef %323) #15
  br label %cleanup150

if.else.i.i:                                      ; preds = %if.end82.i.i
  br i1 %cmp113.not.i.i, label %if.end124.i.i, label %if.then121.i.i, !prof !266

if.then121.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv112.i.i = zext i8 %319 to i32
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.115, i32 noundef %conv112.i.i, i32 noundef 168) #15
  br label %cleanup150

if.end124.i.i:                                    ; preds = %if.else.i.i
  %324 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %324, i32 8)
  %325 = load i64, ptr %4, align 1
  %326 = ptrtoint ptr %sectorsize.i228.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %sectorsize.i228.i, align 4
  %conv127.i.i = zext i32 %327 to i64
  %sub128.i.i = add nsw i64 %conv127.i.i, -1
  %and129.i.i = and i64 %sub128.i.i, %325
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and129.i.i)
  %cmp130.not.i.i = icmp eq i64 %and129.i.i, 0
  br i1 %cmp130.not.i.i, label %if.end143.i.i, label %if.then140.i.i, !prof !266

if.then140.i.i:                                   ; preds = %if.end124.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.116, i64 noundef %325, i32 noundef %327) #15
  br label %cleanup150

if.end143.i.i:                                    ; preds = %if.end124.i.i
  %and144.i.i = and i64 %call.i.i238.i, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and144.i.i)
  %tobool145.not.i.i = icmp eq i64 %and144.i.i, 0
  br i1 %tobool145.not.i.i, label %if.end154.i.i, label %if.then152.i.i, !prof !266

if.then152.i.i:                                   ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.117) #15
  br label %cleanup150

if.end154.i.i:                                    ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i245.i = getelementptr %struct.btrfs_extent_item, ptr %310, i32 1
  br label %if.end177.i.i

land.lhs.true.i246.i:                             ; preds = %if.then90.i.i
  %add.ptr461.i.i = getelementptr %struct.btrfs_extent_item, ptr %310, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -87, i8 %319)
  %cmp159.not.i.i = icmp eq i8 %319, -87
  br i1 %cmp159.not.i.i, label %land.lhs.true.i246.i.if.end177.i.i_crit_edge, label %land.lhs.true.i246.i.if.then161.i248.i_crit_edge

land.lhs.true.i246.i.if.then161.i248.i_crit_edge: ; preds = %land.lhs.true.i246.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then161.i248.i

land.lhs.true.i246.i.if.end177.i.i_crit_edge:     ; preds = %land.lhs.true.i246.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177.i.i

if.then161.i248.i:                                ; preds = %land.lhs.true.i246.i.if.then161.i248.i_crit_edge, %land.lhs.true.i246.thread.i
  %add.ptr461.i295.i = phi ptr [ %add.ptr461.i293.i, %land.lhs.true.i246.thread.i ], [ %add.ptr461.i.i, %land.lhs.true.i246.i.if.then161.i248.i_crit_edge ]
  %call.i449.i247.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %add.ptr461.i295.i, i32 noundef 17) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %call.i449.i247.i)
  %cmp164.i.i = icmp ugt i8 %call.i449.i247.i, 7
  br i1 %cmp164.i.i, label %cleanup.thread.i250.i, label %cleanup.i251.i, !prof !265

cleanup.thread.i250.i:                            ; preds = %if.then161.i248.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i450.i249.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %add.ptr461.i295.i, i32 noundef 17) #10
  %conv174.i.i = zext i8 %call.i450.i249.i to i32
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.118, i32 noundef %conv174.i.i, i32 noundef 7) #15
  br label %cleanup150

cleanup.i251.i:                                   ; preds = %if.then161.i248.i
  call void @__sanitizer_cov_trace_pc() #12
  %328 = getelementptr %struct.btrfs_extent_item, ptr %310, i32 1
  %add.ptr176.i.i = getelementptr %struct.btrfs_tree_block_info, ptr %328, i32 1
  br label %if.end177.i.i

if.end177.i.i:                                    ; preds = %cleanup.i251.i, %land.lhs.true.i246.i.if.end177.i.i_crit_edge, %if.end154.i.i
  %ptr.1.in.i.i = phi ptr [ %add.ptr176.i.i, %cleanup.i251.i ], [ %add.ptr461.i.i, %land.lhs.true.i246.i.if.end177.i.i_crit_edge ], [ %add.ptr.i245.i, %if.end154.i.i ]
  %ptr.1.i.i = ptrtoint ptr %ptr.1.in.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.i.i, i32 %ptr.1.i.i)
  %cmp178500.i.i = icmp ugt i32 %add50.i.i, %ptr.1.i.i
  br i1 %cmp178500.i.i, label %if.end177.i.i.while.body.i252.i_crit_edge, label %if.end177.i.i.while.end.i.i_crit_edge

if.end177.i.i.while.end.i.i_crit_edge:            ; preds = %if.end177.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.end177.i.i.while.body.i252.i_crit_edge:        ; preds = %if.end177.i.i
  br label %while.body.i252.i

while.body.i252.i:                                ; preds = %cleanup276.i.i.while.body.i252.i_crit_edge, %if.end177.i.i.while.body.i252.i_crit_edge
  %inline_refs.0502.i.i = phi i64 [ %inline_refs.1467.i.i, %cleanup276.i.i.while.body.i252.i_crit_edge ], [ 0, %if.end177.i.i.while.body.i252.i_crit_edge ]
  %ptr.2501.i.i = phi i32 [ %add275.i.i, %cleanup276.i.i.while.body.i252.i_crit_edge ], [ %ptr.1.i.i, %if.end177.i.i.while.body.i252.i_crit_edge ]
  %add180.i.i = add i32 %ptr.2501.i.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %add180.i.i, i32 %add50.i.i)
  %cmp181.i.i = icmp ugt i32 %add180.i.i, %add50.i.i
  br i1 %cmp181.i.i, label %if.then189.i.i, label %if.end190.i.i, !prof !265

if.then189.i.i:                                   ; preds = %while.body.i252.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.119, i32 noundef %ptr.2501.i.i, i32 noundef 9, i32 noundef %add50.i.i) #15
  br label %cleanup150

if.end190.i.i:                                    ; preds = %while.body.i252.i
  %329 = inttoptr i32 %ptr.2501.i.i to ptr
  %call.i451.i253.i = call zeroext i8 @btrfs_get_8(ptr noundef %leaf, ptr noundef %329, i32 noundef 0) #10
  %call.i452.i254.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %329, i32 noundef 1) #10
  %switch.tableidx4512 = add i8 %call.i451.i253.i, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx4512)
  %330 = icmp ult i8 %switch.tableidx4512, 9
  br i1 %330, label %switch.lookup, label %if.end190.i.i.btrfs_extent_inline_ref_size.exit.i.i_crit_edge

if.end190.i.i.btrfs_extent_inline_ref_size.exit.i.i_crit_edge: ; preds = %if.end190.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_extent_inline_ref_size.exit.i.i

switch.lookup:                                    ; preds = %if.end190.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %331 = sext i8 %switch.tableidx4512 to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.check_leaf, i32 0, i32 %331
  %332 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %332)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %btrfs_extent_inline_ref_size.exit.i.i

btrfs_extent_inline_ref_size.exit.i.i:            ; preds = %switch.lookup, %if.end190.i.i.btrfs_extent_inline_ref_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end190.i.i.btrfs_extent_inline_ref_size.exit.i.i_crit_edge ]
  %add195.i.i = add i32 %retval.0.i.i.i, %ptr.2501.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add195.i.i, i32 %add50.i.i)
  %cmp196.i.i = icmp ugt i32 %add195.i.i, %add50.i.i
  br i1 %cmp196.i.i, label %if.then204.i.i, label %if.end206.i.i, !prof !265

if.then204.i.i:                                   ; preds = %btrfs_extent_inline_ref_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv193.le498.i.i = zext i8 %call.i451.i253.i to i32
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.120, i32 noundef %ptr.2501.i.i, i32 noundef %conv193.le498.i.i, i32 noundef %add50.i.i) #15
  br label %cleanup150

if.end206.i.i:                                    ; preds = %btrfs_extent_inline_ref_size.exit.i.i
  %333 = zext i8 %call.i451.i253.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %333, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %call.i451.i253.i, label %sw.default.i.i [
    i8 -80, label %if.end206.i.i.cleanup276.i.i_crit_edge
    i8 -74, label %sw.bb208.i.i
    i8 -78, label %sw.bb227.i.i
    i8 -72, label %sw.bb250.i.i
  ]

if.end206.i.i.cleanup276.i.i_crit_edge:           ; preds = %if.end206.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup276.i.i

sw.bb208.i.i:                                     ; preds = %if.end206.i.i
  %334 = ptrtoint ptr %sectorsize.i228.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %sectorsize.i228.i, align 4
  %conv210.i.i = zext i32 %335 to i64
  %sub211.i.i = add nsw i64 %conv210.i.i, -1
  %and212.i.i = and i64 %sub211.i.i, %call.i452.i254.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and212.i.i)
  %cmp213.not.i.i = icmp eq i64 %and212.i.i, 0
  br i1 %cmp213.not.i.i, label %sw.bb208.i.i.cleanup276.i.i_crit_edge, label %if.then223.i.i, !prof !266

sw.bb208.i.i.cleanup276.i.i_crit_edge:            ; preds = %sw.bb208.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup276.i.i

if.then223.i.i:                                   ; preds = %sw.bb208.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.121, i64 noundef %call.i452.i254.i, i32 noundef %335) #15
  br label %cleanup150

sw.bb227.i.i:                                     ; preds = %if.end206.i.i
  %offset228.i.i = getelementptr inbounds %struct.btrfs_extent_inline_ref, ptr %329, i32 0, i32 1
  %call.i453.i255.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %offset228.i.i, i32 noundef 16) #10
  %336 = ptrtoint ptr %sectorsize.i228.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %sectorsize.i228.i, align 4
  %conv231.i.i = zext i32 %337 to i64
  %sub232.i.i = add nsw i64 %conv231.i.i, -1
  %and233.i.i = and i64 %sub232.i.i, %call.i453.i255.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and233.i.i)
  %cmp234.not.i.i = icmp eq i64 %and233.i.i, 0
  br i1 %cmp234.not.i.i, label %if.then6.i457.i.i, label %if.then244.i.i, !prof !266

if.then244.i.i:                                   ; preds = %sw.bb227.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.122, i64 noundef %call.i453.i255.i, i32 noundef %337) #15
  br label %cleanup150

sw.bb250.i.i:                                     ; preds = %if.end206.i.i
  %338 = ptrtoint ptr %sectorsize.i228.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %sectorsize.i228.i, align 4
  %conv253.i.i = zext i32 %339 to i64
  %sub254.i.i = add nsw i64 %conv253.i.i, -1
  %and255.i.i = and i64 %sub254.i.i, %call.i452.i254.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and255.i.i)
  %cmp256.not.i.i = icmp eq i64 %and255.i.i, 0
  br i1 %cmp256.not.i.i, label %if.then3.i456.i.i, label %if.then266.i.i, !prof !266

if.then266.i.i:                                   ; preds = %sw.bb250.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.123, i64 noundef %call.i452.i254.i, i32 noundef %339) #15
  br label %cleanup150

sw.default.i.i:                                   ; preds = %if.end206.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv193.le.i.i = zext i8 %call.i451.i253.i to i32
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.124, i32 noundef %conv193.le.i.i) #15
  br label %cleanup150

if.then3.i456.i.i:                                ; preds = %sw.bb250.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr251.i.i = getelementptr %struct.btrfs_extent_inline_ref, ptr %329, i32 1
  %call.i455.i256.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %add.ptr251.i.i, i32 noundef 0) #10
  br label %cleanup276.i.i

if.then6.i457.i.i:                                ; preds = %sw.bb227.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i454.i257.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %offset228.i.i, i32 noundef 24) #10
  br label %cleanup276.i.i

cleanup276.i.i:                                   ; preds = %if.then6.i457.i.i, %if.then3.i456.i.i, %sw.bb208.i.i.cleanup276.i.i_crit_edge, %if.end206.i.i.cleanup276.i.i_crit_edge
  %conv270.pn470.pn.shrunk.i.i = phi i32 [ %call.i455.i256.i, %if.then3.i456.i.i ], [ %call.i454.i257.i, %if.then6.i457.i.i ], [ 1, %sw.bb208.i.i.cleanup276.i.i_crit_edge ], [ 1, %if.end206.i.i.cleanup276.i.i_crit_edge ]
  %retval.0.i459.i.i = phi i32 [ 13, %if.then3.i456.i.i ], [ 29, %if.then6.i457.i.i ], [ 9, %sw.bb208.i.i.cleanup276.i.i_crit_edge ], [ 9, %if.end206.i.i.cleanup276.i.i_crit_edge ]
  %conv270.pn470.pn.i.i = zext i32 %conv270.pn470.pn.shrunk.i.i to i64
  %inline_refs.1467.i.i = add i64 %inline_refs.0502.i.i, %conv270.pn470.pn.i.i
  %add275.i.i = add i32 %retval.0.i459.i.i, %ptr.2501.i.i
  %cmp178.i.i = icmp ult i32 %add275.i.i, %add50.i.i
  br i1 %cmp178.i.i, label %cleanup276.i.i.while.body.i252.i_crit_edge, label %cleanup276.i.i.while.end.i.i_crit_edge

cleanup276.i.i.while.end.i.i_crit_edge:           ; preds = %cleanup276.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

cleanup276.i.i.while.body.i252.i_crit_edge:       ; preds = %cleanup276.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i252.i

while.end.i.i:                                    ; preds = %cleanup276.i.i.while.end.i.i_crit_edge, %if.end177.i.i.while.end.i.i_crit_edge
  %ptr.2.lcssa.i.i = phi i32 [ %ptr.1.i.i, %if.end177.i.i.while.end.i.i_crit_edge ], [ %add275.i.i, %cleanup276.i.i.while.end.i.i_crit_edge ]
  %inline_refs.0.lcssa.i.i = phi i64 [ 0, %if.end177.i.i.while.end.i.i_crit_edge ], [ %inline_refs.1467.i.i, %cleanup276.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ptr.2.lcssa.i.i, i32 %add50.i.i)
  %cmp284.not.i.i = icmp eq i32 %ptr.2.lcssa.i.i, %add50.i.i
  br i1 %cmp284.not.i.i, label %if.end293.i.i, label %if.then292.i.i, !prof !266

if.then292.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.125) #15
  br label %cleanup150

if.end293.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %inline_refs.0.lcssa.i.i, i64 %call.i446.i.i)
  %cmp294.i.i = icmp ugt i64 %inline_refs.0.lcssa.i.i, %call.i446.i.i
  br i1 %cmp294.i.i, label %if.then302.i.i, label %if.end293.i.i.for.inc_crit_edge, !prof !265

if.end293.i.i.for.inc_crit_edge:                  ; preds = %if.end293.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then302.i.i:                                   ; preds = %if.end293.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.126, i64 noundef %call.i446.i.i, i64 noundef %inline_refs.0.lcssa.i.i) #15
  br label %cleanup150

sw.bb20.i:                                        ; preds = %if.then128.sw.bb20.i_crit_edge, %if.then128.sw.bb20.i_crit_edge6625, %if.then128.sw.bb20.i_crit_edge6626
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %73)
  %cmp.i260.i = icmp eq i8 %73, -72
  %spec.store.select.i.i = select i1 %cmp.i260.i, i32 4, i32 0
  %call.i.i.i263.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i263.i, i32 %spec.store.select.i.i)
  %cmp2.not.i264.i = icmp eq i32 %call.i.i.i263.i, %spec.store.select.i.i
  br i1 %cmp2.not.i264.i, label %if.end9.i.i, label %if.then5.i.i, !prof !266

if.then5.i.i:                                     ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #12
  %340 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i71.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %340, i32 noundef 21) #10
  %341 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %3, align 8
  %conv8.i.i = zext i8 %342 to i32
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.128, i32 noundef %call.i.i71.i.i, i32 noundef %spec.store.select.i.i, i32 noundef %conv8.i.i) #15
  br label %cleanup150

if.end9.i.i:                                      ; preds = %sw.bb20.i
  %343 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %343)
  %344 = load i64, ptr %key, align 8
  %345 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %fs_info1, align 8
  %sectorsize.i266.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %346, i32 0, i32 167
  %347 = ptrtoint ptr %sectorsize.i266.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %sectorsize.i266.i, align 4
  %conv10.i.i = zext i32 %348 to i64
  %sub.i267.i = add nsw i64 %conv10.i.i, -1
  %and.i268.i = and i64 %sub.i267.i, %344
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i268.i)
  %cmp11.not.i269.i = icmp eq i64 %and.i268.i, 0
  br i1 %cmp11.not.i269.i, label %if.end25.i.i, label %if.then21.i270.i, !prof !266

if.then21.i270.i:                                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.129, i64 noundef %344, i32 noundef %348) #15
  br label %cleanup150

if.end25.i.i:                                     ; preds = %if.end9.i.i
  %349 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %350)
  %cmp28.not.i.i = icmp eq i8 %350, -80
  br i1 %cmp28.not.i.i, label %if.end25.i.i.for.inc_crit_edge, label %land.rhs.i272.i

if.end25.i.i.for.inc_crit_edge:                   ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs.i272.i:                                  ; preds = %if.end25.i.i
  %351 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %351, i32 8)
  %352 = load i64, ptr %4, align 1
  %and34.i.i = and i64 %352, %sub.i267.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34.i.i)
  %cmp35.not.i.i = icmp eq i64 %and34.i.i, 0
  br i1 %cmp35.not.i.i, label %land.rhs.i272.i.for.inc_crit_edge, label %if.then45.i.i, !prof !266

land.rhs.i272.i.for.inc_crit_edge:                ; preds = %land.rhs.i272.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then45.i.i:                                    ; preds = %land.rhs.i272.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.121, i64 noundef %352, i32 noundef %348) #15
  br label %cleanup150

sw.bb22.i:                                        ; preds = %if.then128
  %call.i.i.i277.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 17) #10
  %add.i278.i = add i32 %call.i.i.i277.i, 101
  %call.i.i73.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  %add2.i.i = add i32 %add.i278.i, %call.i.i73.i.i
  %call.i.i76.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %65, i32 noundef 21) #10
  %rem.i.i = urem i32 %call.i.i76.i.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp.not.i279.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp.not.i279.i, label %if.end.i289.i, label %if.then.i282.i, !prof !266

if.then.i282.i:                                   ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #12
  %353 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i79.i.i = call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %353, i32 noundef 21) #10
  %354 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %3, align 8
  %conv.i281.i = zext i8 %355 to i32
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.130, i32 noundef %call.i.i79.i.i, i32 noundef 28, i32 noundef %conv.i281.i) #15
  br label %cleanup150

if.end.i289.i:                                    ; preds = %sw.bb22.i
  %356 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %356)
  %357 = load i64, ptr %key, align 8
  %358 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %fs_info1, align 8
  %sectorsize.i284.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %359, i32 0, i32 167
  %360 = ptrtoint ptr %sectorsize.i284.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %sectorsize.i284.i, align 4
  %conv6.i285.i = zext i32 %361 to i64
  %sub.i286.i = add nsw i64 %conv6.i285.i, -1
  %and.i287.i = and i64 %sub.i286.i, %357
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i287.i)
  %cmp7.not.i288.i = icmp eq i64 %and.i287.i, 0
  br i1 %cmp7.not.i288.i, label %for.cond.preheader.i.i, label %if.then17.i290.i, !prof !266

for.cond.preheader.i.i:                           ; preds = %if.end.i289.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i278.i, i32 %add2.i.i)
  %cmp2280.i.i = icmp ult i32 %add.i278.i, %add2.i.i
  br i1 %cmp2280.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.inc_crit_edge

for.cond.preheader.i.i.for.inc_crit_edge:         ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

if.then17.i290.i:                                 ; preds = %if.end.i289.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.129, i64 noundef %357, i32 noundef %361) #15
  br label %cleanup150

for.cond.i.i:                                     ; preds = %for.body.i.i
  %add44.i.i = add i32 %ptr.081.i.i, 28
  %cmp22.i.i = icmp ult i32 %add44.i.i, %add2.i.i
  br i1 %cmp22.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.inc_crit_edge

for.cond.i.i.for.inc_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %ptr.081.i.i = phi i32 [ %add44.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %add.i278.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %362 = inttoptr i32 %ptr.081.i.i to ptr
  %call.i.i291.i = call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %362, i32 noundef 16) #10
  %363 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %fs_info1, align 8
  %sectorsize26.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %364, i32 0, i32 167
  %365 = ptrtoint ptr %sectorsize26.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %sectorsize26.i.i, align 4
  %conv27.i.i = zext i32 %366 to i64
  %sub28.i.i = add nsw i64 %conv27.i.i, -1
  %and29.i.i = and i64 %sub28.i.i, %call.i.i291.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29.i.i)
  %cmp30.not.i.i = icmp eq i64 %and29.i.i, 0
  br i1 %cmp30.not.i.i, label %for.cond.i.i, label %if.then40.i.i, !prof !266

if.then40.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @extent_err(ptr noundef %leaf, i32 noundef %slot.01321, ptr noundef nonnull @.str.131, i64 noundef %call.i.i291.i, i32 noundef %366) #15
  br label %cleanup150

check_leaf_item.exit:                             ; preds = %check_root_item.exit.i, %out.i.i, %check_block_group_item.exit.i
  %ret.0.i = phi i32 [ %retval.0.i218.i, %check_root_item.exit.i ], [ %retval.0.i.i, %check_block_group_item.exit.i ], [ %call25.i.i, %out.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp130 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp130, label %check_leaf_item.exit.cleanup150_crit_edge, label %check_leaf_item.exit.for.inc_crit_edge, !prof !265

check_leaf_item.exit.for.inc_crit_edge:           ; preds = %check_leaf_item.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

check_leaf_item.exit.cleanup150_crit_edge:        ; preds = %check_leaf_item.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

for.inc:                                          ; preds = %check_leaf_item.exit.for.inc_crit_edge, %for.cond.i.i.for.inc_crit_edge, %for.cond.preheader.i.i.for.inc_crit_edge, %land.rhs.i272.i.for.inc_crit_edge, %if.end25.i.i.for.inc_crit_edge, %if.end293.i.i.for.inc_crit_edge, %if.end104.i.i.for.inc_crit_edge, %if.end24.i.i.for.inc_crit_edge, %cleanup.i139.i.for.inc_crit_edge, %if.end13.i.i.for.inc_crit_edge, %cleanup192.i.i.for.inc_crit_edge, %if.end.i100.i.for.inc_crit_edge, %if.then38.i.i.for.inc_crit_edge, %land.lhs.true.i77.i.for.inc_crit_edge, %if.end32.i.i.for.inc_crit_edge, %file_extent_end.exit.i.i.for.inc_crit_edge, %land.lhs.true285.i.i.for.inc_crit_edge, %land.lhs.true.i.i.for.inc_crit_edge, %if.end279.i.i.for.inc_crit_edge, %if.end90.i.i.for.inc_crit_edge, %if.end84.i.i.for.inc_crit_edge, %if.then128.for.inc_crit_edge, %if.end126.for.inc_crit_edge
  %367 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %367)
  %368 = load i64, ptr %key, align 8
  %369 = ptrtoint ptr %prev_key to i32
  call void @__asan_store8_noabort(i32 %369)
  store i64 %368, ptr %prev_key, align 8
  %370 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %3, align 8
  %372 = ptrtoint ptr %type.i76.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %371, ptr %type.i76.i, align 8
  %373 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %373, i32 8)
  %374 = load i64, ptr %4, align 1
  %375 = ptrtoint ptr %offset42.i.i to i32
  call void @__asan_storeN_noabort(i32 %375, i32 8)
  store i64 %374, ptr %offset42.i.i, align 1
  %inc = add nuw i32 %slot.01321, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup150_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup150_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

cleanup150:                                       ; preds = %for.inc.cleanup150_crit_edge, %check_leaf_item.exit.cleanup150_crit_edge, %if.then40.i.i, %if.then17.i290.i, %if.then.i282.i, %if.then45.i.i, %if.then21.i270.i, %if.then5.i.i, %if.then302.i.i, %if.then292.i.i, %sw.default.i.i, %if.then266.i.i, %if.then244.i.i, %if.then223.i.i, %if.then204.i.i, %if.then189.i.i, %cleanup.thread.i250.i, %if.then152.i.i, %if.then140.i.i, %if.then121.i.i, %if.then107.i.i, %if.then81.i243.i, %if.then66.i242.i, %if.then46.i.i, %if.then35.i.i, %if.then17.i.i, %if.then.i227.i, %if.then116.i.i, %if.then103.i.i, %if.then91.i.i, %if.then73.critedge.i.i, %if.then49.i.i, %if.then37.i.i, %if.then24.i.i, %if.then12.i.i, %sw.bb14.i.cleanup150_crit_edge, %if.then34.i.i, %if.then21.i.i, %if.then10.i174.i, %if.then.i172.i, %if.then19.i165.i, %if.then.i160.i, %if.then39.i138.i, %if.then26.i.i, %if.then10.i.i, %check_prev_ino.exit.i126.i, %cleanup192.thread.i.i, %check_prev_ino.exit.i99.i, %if.then52.i.i, %if.then30.i.i, %if.then15.i.i, %if.then.i66.i, %if.then303.i.i, %if.then276.i.i, %if.end242.i.i.cleanup150_crit_edge, %if.end215.i.i.cleanup150_crit_edge, %if.end187.i.i.cleanup150_crit_edge, %if.end159.i.i.cleanup150_crit_edge, %if.end133.i.i.cleanup150_crit_edge, %if.then115.i.i, %if.then102.i.i, %if.then82.i.i, %if.then65.i.i, %if.then53.i.i, %if.then39.i.i, %if.then27.i.i, %check_prev_ino.exit.i.i, %if.then.i.i, %if.then121, %if.then106, %if.then94, %if.then68, %if.then44, %if.then34, %if.then11.cleanup150_crit_edge, %land.lhs.true.cleanup150_crit_edge, %if.then
  %retval.3 = phi i32 [ -117, %if.then ], [ -117, %if.then34 ], [ -117, %if.then44 ], [ 0, %if.then11.cleanup150_crit_edge ], [ 0, %land.lhs.true.cleanup150_crit_edge ], [ -117, %if.then121 ], [ -117, %if.then106 ], [ -117, %if.then94 ], [ -117, %if.then68 ], [ -117, %if.then40.i.i ], [ -117, %if.then17.i290.i ], [ -117, %if.then.i282.i ], [ -117, %if.then45.i.i ], [ -117, %if.then21.i270.i ], [ -117, %if.then5.i.i ], [ -117, %if.then223.i.i ], [ -117, %if.then244.i.i ], [ -117, %if.then266.i.i ], [ -117, %sw.default.i.i ], [ -117, %if.then204.i.i ], [ -117, %if.then189.i.i ], [ -117, %cleanup.thread.i250.i ], [ -117, %if.then152.i.i ], [ -117, %if.then140.i.i ], [ -117, %if.then121.i.i ], [ -117, %if.then302.i.i ], [ -117, %if.then292.i.i ], [ -117, %if.then107.i.i ], [ -117, %if.then81.i243.i ], [ -117, %if.then66.i242.i ], [ -117, %if.then46.i.i ], [ -117, %if.then35.i.i ], [ -117, %if.then17.i.i ], [ -117, %if.then.i227.i ], [ -117, %if.then73.critedge.i.i ], [ -117, %if.then116.i.i ], [ -117, %if.then103.i.i ], [ -117, %if.then91.i.i ], [ -117, %if.then49.i.i ], [ -117, %if.then37.i.i ], [ -117, %if.then24.i.i ], [ -117, %if.then12.i.i ], [ -117, %if.then34.i.i ], [ -117, %if.then21.i.i ], [ -117, %if.then10.i174.i ], [ -117, %if.then.i172.i ], [ -117, %if.then19.i165.i ], [ -117, %if.then.i160.i ], [ -117, %if.then39.i138.i ], [ -117, %if.then26.i.i ], [ -117, %check_prev_ino.exit.i126.i ], [ -117, %if.then10.i.i ], [ %retval.3.ph.i.i, %cleanup192.thread.i.i ], [ -117, %check_prev_ino.exit.i99.i ], [ -117, %if.then52.i.i ], [ -117, %if.then30.i.i ], [ -117, %if.then15.i.i ], [ -117, %if.then.i66.i ], [ -117, %if.then303.i.i ], [ -117, %check_prev_ino.exit.i.i ], [ -117, %if.then276.i.i ], [ -117, %if.then115.i.i ], [ -117, %if.then102.i.i ], [ -117, %if.then82.i.i ], [ -117, %if.then65.i.i ], [ -117, %if.then53.i.i ], [ -117, %if.then39.i.i ], [ -117, %if.then27.i.i ], [ -117, %if.then.i.i ], [ 0, %for.inc.cleanup150_crit_edge ], [ %ret.0.i, %check_leaf_item.exit.cleanup150_crit_edge ], [ -117, %if.end242.i.i.cleanup150_crit_edge ], [ -117, %if.end215.i.i.cleanup150_crit_edge ], [ -117, %if.end187.i.i.cleanup150_crit_edge ], [ -117, %if.end159.i.i.cleanup150_crit_edge ], [ -117, %if.end133.i.i.cleanup150_crit_edge ], [ %call3.i.i, %sw.bb14.i.cleanup150_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %prev_key) #10
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_leaf_relaxed(ptr noundef %leaf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @check_leaf(ptr noundef %leaf, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_node(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i121 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  %next_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %node, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #10
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %node, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %6 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nritems.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #10
  %9 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %10 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %11 = call ptr @memset(ptr %key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %next_key) #10
  %12 = getelementptr inbounds %struct.btrfs_key, ptr %next_key, i32 0, i32 1
  %13 = getelementptr inbounds %struct.btrfs_key, ptr %next_key, i32 0, i32 2
  %14 = call ptr @memset(ptr %next_key, i32 255, i32 17)
  %15 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages.i, align 4
  %call.i109 = tail call ptr @page_address(ptr noundef %16) #10
  %17 = ptrtoint ptr %node to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %node, align 8
  %conv.i110 = trunc i64 %18 to i32
  %and.i111 = and i32 %conv.i110, 4095
  %add.ptr.i112 = getelementptr i8, ptr %call.i109, i32 %and.i111
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i112, i32 0, i32 8
  %19 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %level.i, align 1
  %21 = add i8 %20, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %21)
  %22 = icmp ult i8 %21, -7
  br i1 %22, label %if.then, label %if.end, !prof !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %20 to i32
  tail call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %node, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef 7) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %if.end.if.then20_crit_edge, label %lor.rhs9, !prof !265

if.end.if.then20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.rhs9:                                         ; preds = %if.end
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %23 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %24, -101
  %div.i = udiv i32 %sub.i.i, 33
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %div.i)
  %cmp11 = icmp ugt i32 %8, %div.i
  br i1 %cmp11, label %lor.rhs9.if.then20_crit_edge, label %for.cond.preheader, !prof !265

lor.rhs9.if.then20_crit_edge:                     ; preds = %lor.rhs9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.cond.preheader:                               ; preds = %lor.rhs9
  %sub = add i32 %8, -1
  %25 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %27 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i121, i32 0, i32 1
  %28 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i121, i32 0, i32 2
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  br label %for.cond

if.then20:                                        ; preds = %lor.rhs9.if.then20_crit_edge, %if.end.if.then20_crit_edge
  %cond = phi ptr [ @.str.16, %if.end.if.then20_crit_edge ], [ @.str.17, %lor.rhs9.if.then20_crit_edge ]
  %29 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages.i, align 4
  %call.i114 = tail call ptr @page_address(ptr noundef %30) #10
  %31 = ptrtoint ptr %node to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %node, align 8
  %conv.i115 = trunc i64 %32 to i32
  %and.i116 = and i32 %conv.i115, 4095
  %add.ptr.i117 = getelementptr i8, ptr %call.i114, i32 %and.i116
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i117, i32 0, i32 6
  %33 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %owner.i, align 1
  %35 = tail call i64 @llvm.bswap.i64(i64 %34) #10
  %nodesize.i.i118 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %36 = ptrtoint ptr %nodesize.i.i118 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nodesize.i.i118, align 8
  %sub.i.i119 = add i32 %37, -101
  %div.i120 = udiv i32 %sub.i.i119, 33
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.15, i64 noundef %35, i64 noundef %32, ptr noundef nonnull %cond, i32 noundef %8, i32 noundef %div.i120) #15
  br label %cleanup

for.cond:                                         ; preds = %if.end54.for.cond_crit_edge, %for.cond.preheader
  %slot.0 = phi i32 [ %add, %if.end54.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.0, i32 %sub)
  %exitcond.not = icmp eq i32 %slot.0, %sub
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %mul.i = mul i32 %slot.0, 33
  %add.i = add i32 %mul.i, 101
  %38 = inttoptr i32 %add.i to ptr
  %call.i.i = call i64 @btrfs_get_64(ptr noundef %node, ptr noundef %38, i32 noundef 17) #10
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %39 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %node, ptr noundef nonnull %disk_key.i, i32 noundef %slot.0) #10
  %40 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %26, align 1
  %42 = call i64 @llvm.bswap.i64(i64 %41) #10
  %43 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %10, align 1
  %44 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %25, align 8
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %9, align 8
  %47 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %disk_key.i, align 8
  %49 = call i64 @llvm.bswap.i64(i64 %48) #10
  %50 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  %add = add i32 %slot.0, 1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i121) #10
  %51 = call ptr @memset(ptr %disk_key.i121, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %node, ptr noundef nonnull %disk_key.i121, i32 noundef %add) #10
  %52 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %28, align 1
  %54 = call i64 @llvm.bswap.i64(i64 %53) #10
  %55 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %13, align 1
  %56 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %27, align 8
  %58 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %12, align 8
  %59 = ptrtoint ptr %disk_key.i121 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %disk_key.i121, align 8
  %61 = call i64 @llvm.bswap.i64(i64 %60) #10
  %62 = ptrtoint ptr %next_key to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %next_key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i121) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %tobool29.not = icmp eq i64 %call.i.i, 0
  br i1 %tobool29.not, label %if.then38, label %if.end39, !prof !265

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %node, i32 noundef %slot.0, ptr noundef nonnull @.str.18) #14
  br label %cleanup

if.end39:                                         ; preds = %for.body
  %63 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sectorsize, align 4
  %conv40 = zext i32 %64 to i64
  %sub41 = add nsw i64 %conv40, -1
  %and = and i64 %sub41, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp42.not = icmp eq i64 %and, 0
  br i1 %cmp42.not, label %if.end54, label %if.then52, !prof !266

if.then52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %node, i32 noundef %slot.0, ptr noundef nonnull @.str.19, i64 noundef %call.i.i, i32 noundef %64) #14
  br label %cleanup

if.end54:                                         ; preds = %if.end39
  %call55 = call i32 @btrfs_comp_cpu_keys(ptr noundef nonnull %key, ptr noundef nonnull %next_key) #16
  %cmp56 = icmp sgt i32 %call55, -1
  br i1 %cmp56, label %if.then64, label %if.end54.for.cond_crit_edge, !prof !265

if.end54.for.cond_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then64:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %key, align 8
  %67 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %9, align 8
  %conv65 = zext i8 %68 to i32
  %69 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %10, align 1
  %conv68 = zext i8 %57 to i32
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %node, i32 noundef %slot.0, ptr noundef nonnull @.str.20, i64 noundef %66, i32 noundef %conv65, i64 noundef %70, i64 noundef %61, i32 noundef %conv68, i64 noundef %54) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.then52, %if.then38, %for.cond.cleanup_crit_edge, %if.then20, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ -117, %if.then20 ], [ -117, %if.then38 ], [ -117, %if.then52 ], [ -117, %if.then64 ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %next_key) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #10
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @generic_err(ptr nocapture noundef readonly %eb, i32 noundef %slot, ptr noundef %fmt, ...) unnamed_addr #3 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !272
  call void @llvm.va_start(ptr nonnull %args)
  %4 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fmt, ptr %vaf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %args, ptr %2, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %6 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %7) #10
  %8 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %eb, align 8
  %conv.i = trunc i64 %9 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %10 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  %cond = select i1 %cmp, ptr @.str.47, ptr @.str.48
  %12 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages.i, align 4
  %call.i10 = call ptr @page_address(ptr noundef %13) #10
  %14 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %eb, align 8
  %conv.i11 = trunc i64 %15 to i32
  %and.i12 = and i32 %conv.i11, 4095
  %add.ptr.i13 = getelementptr i8, ptr %call.i10, i32 %and.i12
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i13, i32 0, i32 6
  %16 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %owner.i, align 1
  %18 = call i64 @llvm.bswap.i64(i64 %17) #10
  %19 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i, align 4
  %call.i15 = call ptr @page_address(ptr noundef %20) #10
  %21 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %eb, align 8
  %conv.i16 = trunc i64 %22 to i32
  %and.i17 = and i32 %conv.i16, 4095
  %add.ptr.i18 = getelementptr i8, ptr %call.i15, i32 %and.i17
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i18, i32 0, i32 2
  %23 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %bytenr.i, align 1
  %25 = call i64 @llvm.bswap.i64(i64 %24) #10
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef nonnull %cond, i64 noundef %18, i64 noundef %25, i32 noundef %slot, ptr noundef nonnull %vaf) #15
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @btrfs_comp_cpu_keys(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @btrfs_get_16(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @file_extent_err(ptr noundef %eb, i32 noundef %slot, ptr noundef %fmt, ...) unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !272
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %4 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %slot, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %5 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %eb, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %4, align 1
  %8 = call i64 @llvm.bswap.i64(i64 %7) #10
  %9 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %disk_key.i, align 8
  %11 = call i64 @llvm.bswap.i64(i64 %10) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  call void @llvm.va_start(ptr nonnull %args)
  %12 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fmt, ptr %vaf, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %args, ptr %2, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %14 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %15) #10
  %16 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %eb, align 8
  %conv.i = trunc i64 %17 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %18 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp = icmp eq i8 %19, 0
  %cond = select i1 %cmp, ptr @.str.47, ptr @.str.48
  %20 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages.i, align 4
  %call.i12 = call ptr @page_address(ptr noundef %21) #10
  %22 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %eb, align 8
  %conv.i13 = trunc i64 %23 to i32
  %and.i14 = and i32 %conv.i13, 4095
  %add.ptr.i15 = getelementptr i8, ptr %call.i12, i32 %and.i14
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i15, i32 0, i32 6
  %24 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %owner.i, align 1
  %26 = call i64 @llvm.bswap.i64(i64 %25) #10
  %27 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i, align 4
  %call.i17 = call ptr @page_address(ptr noundef %28) #10
  %29 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %eb, align 8
  %conv.i18 = trunc i64 %30 to i32
  %and.i19 = and i32 %conv.i18, 4095
  %add.ptr.i20 = getelementptr i8, ptr %call.i17, i32 %and.i19
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i20, i32 0, i32 2
  %31 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %bytenr.i, align 1
  %33 = call i64 @llvm.bswap.i64(i64 %32) #10
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond, i64 noundef %26, i64 noundef %33, i32 noundef %slot, i64 noundef %11, i64 noundef %8, ptr noundef nonnull %vaf) #15
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail() unnamed_addr #9 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 180) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #10, !srcloc !278
  unreachable
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dir_item_err(ptr noundef %eb, i32 noundef %slot, ptr noundef %fmt, ...) unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !272
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %mul.i.i.i.i = mul i32 %slot, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %4 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %eb, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %5 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %disk_key.i, align 8
  %7 = call i64 @llvm.bswap.i64(i64 %6) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  call void @llvm.va_start(ptr nonnull %args)
  %8 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fmt, ptr %vaf, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %args, ptr %2, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %10 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %11) #10
  %12 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %eb, align 8
  %conv.i = trunc i64 %13 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %14 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  %cond = select i1 %cmp, ptr @.str.47, ptr @.str.48
  %16 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages.i, align 4
  %call.i12 = call ptr @page_address(ptr noundef %17) #10
  %18 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %eb, align 8
  %conv.i13 = trunc i64 %19 to i32
  %and.i14 = and i32 %conv.i13, 4095
  %add.ptr.i15 = getelementptr i8, ptr %call.i12, i32 %and.i14
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i15, i32 0, i32 6
  %20 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %owner.i, align 1
  %22 = call i64 @llvm.bswap.i64(i64 %21) #10
  %23 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages.i, align 4
  %call.i17 = call ptr @page_address(ptr noundef %24) #10
  %25 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %eb, align 8
  %conv.i18 = trunc i64 %26 to i32
  %and.i19 = and i32 %conv.i18, 4095
  %add.ptr.i20 = getelementptr i8, ptr %call.i17, i32 %and.i19
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i20, i32 0, i32 2
  %27 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %bytenr.i, align 1
  %29 = call i64 @llvm.bswap.i64(i64 %28) #10
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond, i64 noundef %22, i64 noundef %29, i32 noundef %slot, i64 noundef %7, ptr noundef nonnull %vaf) #15
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_get_8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_root_key(ptr noundef %leaf, ptr nocapture noundef readonly %key, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %0 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %mul.i.i.i.i = mul i32 %slot, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %1 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %leaf, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %3)
  %cmp = icmp eq i8 %3, -124
  %4 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %key, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp2 = icmp eq i64 %5, 0
  br i1 %cmp2, label %if.then, label %if.end7, !prof !265

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot, ptr noundef nonnull @.str.70) #14
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot, ptr noundef nonnull @.str.71) #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %5)
  %cmp.i = icmp ne i64 %5, 5
  %6 = add i64 %5, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %6)
  %7 = icmp ult i64 %6, -281474976710400
  %tobool9.not = and i1 %cmp.i, %7
  %lnot11 = xor i1 %cmp, true
  %spec.select = select i1 %tobool9.not, i1 %lnot11, i1 false
  br i1 %spec.select, label %if.then19, label %if.end21, !prof !265

if.then19:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot, ptr noundef nonnull @.str.72, i64 noundef %5, i64 noundef 256, i64 noundef -256) #14
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %5)
  %cmp23 = icmp eq i64 %5, -8
  br i1 %cmp23, label %land.rhs25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs25:                                       ; preds = %if.end21
  %offset = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp26 = icmp eq i64 %9, 0
  br i1 %cmp26, label %if.then35, label %land.rhs25.cleanup_crit_edge, !prof !265

land.rhs25.cleanup_crit_edge:                     ; preds = %land.rhs25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %land.rhs25
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot, ptr noundef nonnull @.str.73) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %land.rhs25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then19, %if.else, %if.then6
  %retval.0 = phi i32 [ -117, %if.then19 ], [ -117, %if.then35 ], [ -117, %if.else ], [ -117, %if.then6 ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %land.rhs25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_inode_key(ptr noundef %leaf, ptr nocapture noundef readonly %key, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %0 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %mul.i.i.i.i = mul i32 %slot, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %1 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %leaf, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %3)
  %cmp4 = icmp eq i8 %3, 24
  %4 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %key, align 1
  br i1 %cmp4, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp6.not = icmp eq i64 %5, 0
  br i1 %cmp6.not, label %lor.lhs.false, label %if.then.lor.end.thread_crit_edge, !prof !266

if.then.lor.end.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.thread

lor.lhs.false:                                    ; preds = %if.then
  %type8 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %6 = ptrtoint ptr %type8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp10.not = icmp eq i8 %7, 0
  br i1 %cmp10.not, label %lor.end, label %lor.lhs.false.lor.end.thread_crit_edge, !prof !266

lor.lhs.false.lor.end.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.thread

lor.end:                                          ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp12.not = icmp eq i64 %9, 0
  br i1 %cmp12.not, label %lor.end.cleanup_crit_edge, label %lor.end.lor.end.thread_crit_edge

lor.end.lor.end.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.thread

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.end.thread:                                   ; preds = %lor.end.lor.end.thread_crit_edge, %lor.lhs.false.lor.end.thread_crit_edge, %if.then.lor.end.thread_crit_edge
  br label %cleanup

if.end16:                                         ; preds = %entry
  %10 = add i64 %5, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 511, i64 %10)
  %11 = icmp ult i64 %10, 511
  br i1 %11, label %land.lhs.true, label %if.end16.if.end42_crit_edge

if.end16.if.end42_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.140)
  switch i64 %5, label %if.then36 [
    i64 -12, label %land.lhs.true.if.end42_crit_edge
    i64 6, label %land.lhs.true.if.end42_crit_edge83
  ]

land.lhs.true.if.end42_crit_edge83:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then36:                                        ; preds = %land.lhs.true
  br i1 %cmp, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @generic_err(ptr noundef %leaf, i32 noundef %slot, ptr noundef nonnull @.str.74, i64 noundef %5, i64 noundef 6, i64 noundef 256, i64 noundef -256, i64 noundef -12) #14
  br label %cleanup

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot, ptr noundef nonnull @.str.75, i64 noundef %5, i64 noundef 6, i64 noundef 256, i64 noundef -256, i64 noundef -12) #14
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge83, %if.end16.if.end42_crit_edge
  %offset43 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %12 = ptrtoint ptr %offset43 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %offset43, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp44.not = icmp eq i64 %13, 0
  br i1 %cmp44.not, label %if.end42.cleanup_crit_edge, label %if.then52, !prof !266

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then52:                                        ; preds = %if.end42
  br i1 %cmp, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot, ptr noundef nonnull @.str.76, i64 noundef %13) #14
  br label %cleanup

if.else56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @dir_item_err(ptr noundef %leaf, i32 noundef %slot, ptr noundef nonnull @.str.77, i64 noundef %13) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else56, %if.then54, %if.end42.cleanup_crit_edge, %if.else, %if.then38, %lor.end.thread, %lor.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.else ], [ -117, %if.then38 ], [ -117, %if.else56 ], [ -117, %if.then54 ], [ 0, %if.end42.cleanup_crit_edge ], [ -117, %lor.end.thread ], [ 0, %lor.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @block_group_err(ptr noundef %eb, i32 noundef %slot, ptr noundef %fmt, ...) unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !272
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %4 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %slot, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %5 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %eb, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %4, align 1
  %8 = call i64 @llvm.bswap.i64(i64 %7) #10
  %9 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %disk_key.i, align 8
  %11 = call i64 @llvm.bswap.i64(i64 %10) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  call void @llvm.va_start(ptr nonnull %args)
  %12 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fmt, ptr %vaf, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %args, ptr %2, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %14 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %15) #10
  %16 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %eb, align 8
  %conv.i = trunc i64 %17 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %18 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp = icmp eq i8 %19, 0
  %cond = select i1 %cmp, ptr @.str.47, ptr @.str.48
  %20 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages.i, align 4
  %call.i12 = call ptr @page_address(ptr noundef %21) #10
  %22 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %eb, align 8
  %conv.i13 = trunc i64 %23 to i32
  %and.i14 = and i32 %conv.i13, 4095
  %add.ptr.i15 = getelementptr i8, ptr %call.i12, i32 %and.i14
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i15, i32 0, i32 6
  %24 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %owner.i, align 1
  %26 = call i64 @llvm.bswap.i64(i64 %25) #10
  %27 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i, align 4
  %call.i17 = call ptr @page_address(ptr noundef %28) #10
  %29 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %eb, align 8
  %conv.i18 = trunc i64 %30 to i32
  %and.i19 = and i32 %conv.i18, 4095
  %add.ptr.i20 = getelementptr i8, ptr %call.i17, i32 %and.i19
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i20, i32 0, i32 2
  %31 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %bytenr.i, align 1
  %33 = call i64 @llvm.bswap.i64(i64 %32) #10
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.87, ptr noundef nonnull %cond, i64 noundef %26, i64 noundef %33, i32 noundef %slot, i64 noundef %11, i64 noundef %8, ptr noundef nonnull %vaf) #15
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dev_item_err(ptr noundef %eb, i32 noundef %slot, ptr noundef %fmt, ...) unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !272
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %mul.i.i.i.i = mul i32 %slot, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %2 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %eb, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %3 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %disk_key.i, align 8
  %5 = call i64 @llvm.bswap.i64(i64 %4) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  call void @llvm.va_start(ptr nonnull %args)
  %6 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fmt, ptr %vaf, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %args, ptr %0, align 4
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %8 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_info, align 8
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %10 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %11) #10
  %12 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %eb, align 8
  %conv.i = trunc i64 %13 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %14 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  %cond = select i1 %cmp, ptr @.str.47, ptr @.str.48
  %16 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages.i, align 4
  %call.i11 = call ptr @page_address(ptr noundef %17) #10
  %18 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %eb, align 8
  %conv.i12 = trunc i64 %19 to i32
  %and.i13 = and i32 %conv.i12, 4095
  %add.ptr.i14 = getelementptr i8, ptr %call.i11, i32 %and.i13
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i14, i32 0, i32 6
  %20 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %owner.i, align 1
  %22 = call i64 @llvm.bswap.i64(i64 %21) #10
  %23 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages.i, align 4
  %call.i16 = call ptr @page_address(ptr noundef %24) #10
  %25 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %eb, align 8
  %conv.i17 = trunc i64 %26 to i32
  %and.i18 = and i32 %conv.i17, 4095
  %add.ptr.i19 = getelementptr i8, ptr %call.i16, i32 %and.i18
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i19, i32 0, i32 2
  %27 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %bytenr.i, align 1
  %29 = call i64 @llvm.bswap.i64(i64 %28) #10
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %9, ptr noundef nonnull @.str.94, ptr noundef nonnull %cond, i64 noundef %22, i64 noundef %29, i32 noundef %slot, i64 noundef %5, ptr noundef nonnull %vaf) #15
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @extent_err(ptr noundef %eb, i32 noundef %slot, ptr noundef %fmt, ...) unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !272
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %1 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %slot, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %3 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %eb, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %2, align 1
  %6 = call i64 @llvm.bswap.i64(i64 %5) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 8
  %9 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %disk_key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  %11 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %8, label %entry.if.end_crit_edge [
    i8 -87, label %entry.if.then_crit_edge
    i8 -80, label %entry.if.then_crit_edge22
    i8 -74, label %entry.if.then_crit_edge23
  ]

entry.if.then_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge22:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge22, %entry.if.then_crit_edge23
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %12 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs_info, align 8
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %13, i32 0, i32 166
  %14 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nodesize, align 8
  %conv11 = zext i32 %15 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i64 [ %conv11, %if.then ], [ %6, %entry.if.end_crit_edge ]
  %16 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %17 = call i64 @llvm.bswap.i64(i64 %10) #10
  call void @llvm.va_start(ptr nonnull %args)
  %18 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fmt, ptr %vaf, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %args, ptr %16, align 4
  %fs_info13 = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %20 = ptrtoint ptr %fs_info13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_info13, align 8
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %22 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %23) #10
  %24 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %eb, align 8
  %conv.i = trunc i64 %25 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %26 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp15 = icmp eq i8 %27, 0
  %cond = select i1 %cmp15, ptr @.str.47, ptr @.str.48
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %21, ptr noundef nonnull @.str.127, ptr noundef nonnull %cond, i64 noundef %25, i32 noundef %slot, i64 noundef %17, i64 noundef %len.0, ptr noundef nonnull %vaf) #15
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_node_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { cold }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !80, !81, !83, !85, !87, !88, !89, !91, !92, !94, !96, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254}
!llvm.module.flags = !{!256, !257, !258, !259, !260, !261, !262, !263}
!llvm.ident = !{!264}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/tree-checker.c", i32 786, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/tree-checker.c", i32 791, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/tree-checker.c", i32 797, i32 6}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/tree-checker.c", i32 803, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/btrfs/tree-checker.c", i32 809, i32 6}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/tree-checker.c", i32 816, i32 6}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/tree-checker.c", i32 821, i32 1}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/tree-checker.c", i32 827, i32 6}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/tree-checker.c", i32 834, i32 6}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/tree-checker.c", i32 844, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/tree-checker.c", i32 850, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/tree-checker.c", i32 859, i32 6}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/btrfs/tree-checker.c", i32 872, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/btrfs/tree-checker.c", i32 894, i32 4}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/btrfs/tree-checker.c", i32 1783, i32 4}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/btrfs/tree-checker.c", i32 1788, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/btrfs/tree-checker.c", i32 1803, i32 5}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/btrfs/tree-checker.c", i32 1809, i32 4}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/btrfs/tree-checker.c", i32 1817, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/btrfs/tree-checker.c", i32 742, i32 3}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/btrfs/tree-checker.c", i32 746, i32 3}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/btrfs/tree-checker.c", i32 1632, i32 4}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/btrfs/tree-checker.c", i32 1656, i32 4}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/btrfs/tree-checker.c", i32 1663, i32 5}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/btrfs/tree-checker.c", i32 1693, i32 2}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/btrfs/tree-checker.c", i32 1714, i32 5}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/btrfs/tree-checker.c", i32 1726, i32 4}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/btrfs/tree-checker.c", i32 1735, i32 3}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/btrfs/tree-checker.c", i32 210, i32 1}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/btrfs/tree-checker.c", i32 232, i32 5}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/btrfs/tree-checker.c", i32 240, i32 3}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/btrfs/tree-checker.c", i32 253, i32 2}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/btrfs/tree-checker.c", i32 260, i32 4}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/btrfs/tree-checker.c", i32 268, i32 3}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/btrfs/tree-checker.c", i32 282, i32 2}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/btrfs/tree-checker.c", i32 293, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/btrfs/tree-checker.c", i32 297, i32 6}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/btrfs/tree-checker.c", i32 308, i32 2}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/btrfs/tree-checker.c", i32 329, i32 1}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/btrfs/tree-checker.c", i32 90, i32 2}
!87 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/btrfs/tree-checker.c", i32 176, i32 2}
!91 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/btrfs/tree-checker.c", i32 194, i32 3}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!96 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @assertfail._entry, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @assertfail._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/btrfs/tree-checker.c", i32 150, i32 2}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/btrfs/tree-checker.c", i32 347, i32 3}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/btrfs/tree-checker.c", i32 353, i32 2}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/btrfs/tree-checker.c", i32 359, i32 2}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/btrfs/tree-checker.c", i32 372, i32 1}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/btrfs/tree-checker.c", i32 506, i32 3}
!112 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/btrfs/tree-checker.c", i32 524, i32 4}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/btrfs/tree-checker.c", i32 534, i32 4}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/btrfs/tree-checker.c", i32 542, i32 3}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/btrfs/tree-checker.c", i32 549, i32 4}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/btrfs/tree-checker.c", i32 562, i32 4}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/btrfs/tree-checker.c", i32 568, i32 4}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/btrfs/tree-checker.c", i32 576, i32 4}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/btrfs/tree-checker.c", i32 586, i32 3}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/btrfs/tree-checker.c", i32 604, i32 3}
!130 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/btrfs/tree-checker.c", i32 448, i32 28}
!132 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/btrfs/tree-checker.c", i32 451, i32 10}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/btrfs/tree-checker.c", i32 458, i32 3}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/btrfs/tree-checker.c", i32 474, i32 27}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/btrfs/tree-checker.c", i32 407, i32 2}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/btrfs/tree-checker.c", i32 414, i32 1}
!142 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/btrfs/tree-checker.c", i32 424, i32 4}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/btrfs/tree-checker.c", i32 429, i32 5}
!146 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/btrfs/tree-checker.c", i32 1526, i32 3}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/btrfs/tree-checker.c", i32 1539, i32 4}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/btrfs/tree-checker.c", i32 1548, i32 4}
!152 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/btrfs/tree-checker.c", i32 653, i32 5}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/btrfs/tree-checker.c", i32 659, i32 4}
!156 = !{ptr @.str.83, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/btrfs/tree-checker.c", i32 669, i32 3}
!158 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/btrfs/tree-checker.c", i32 677, i32 4}
!160 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/btrfs/tree-checker.c", i32 685, i32 1}
!162 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/btrfs/tree-checker.c", i32 698, i32 1}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/btrfs/tree-checker.c", i32 631, i32 2}
!166 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/btrfs/tree-checker.c", i32 917, i32 4}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/btrfs/tree-checker.c", i32 932, i32 4}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/btrfs/tree-checker.c", i32 972, i32 9}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/btrfs/tree-checker.c", i32 978, i32 28}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/btrfs/tree-checker.c", i32 986, i32 9}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/btrfs/tree-checker.c", i32 999, i32 9}
!178 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/btrfs/tree-checker.c", i32 956, i32 2}
!180 = !{ptr @.str.95, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/btrfs/tree-checker.c", i32 1038, i32 3}
!182 = !{ptr @.str.96, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/btrfs/tree-checker.c", i32 1046, i32 3}
!184 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/btrfs/tree-checker.c", i32 1059, i32 3}
!186 = !{ptr @.str.98, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/btrfs/tree-checker.c", i32 1072, i32 4}
!188 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/btrfs/tree-checker.c", i32 1079, i32 3}
!190 = !{ptr @.str.100, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/btrfs/tree-checker.c", i32 1086, i32 3}
!192 = !{ptr @.str.101, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/btrfs/tree-checker.c", i32 1092, i32 3}
!194 = !{ptr @.str.102, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/btrfs/tree-checker.c", i32 1117, i32 8}
!196 = !{ptr @.str.103, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/btrfs/tree-checker.c", i32 1135, i32 4}
!198 = !{ptr @.str.104, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/btrfs/tree-checker.c", i32 1143, i32 3}
!200 = !{ptr @.str.105, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/btrfs/tree-checker.c", i32 1151, i32 3}
!202 = !{ptr @.str.106, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/btrfs/tree-checker.c", i32 1160, i32 3}
!204 = !{ptr @.str.107, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/btrfs/tree-checker.c", i32 1166, i32 8}
!206 = !{ptr @.str.108, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/btrfs/tree-checker.c", i32 1180, i32 8}
!208 = !{ptr @.str.109, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/btrfs/tree-checker.c", i32 1235, i32 1}
!210 = !{ptr @.str.110, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/btrfs/tree-checker.c", i32 1241, i32 3}
!212 = !{ptr @.str.111, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/btrfs/tree-checker.c", i32 1250, i32 7}
!214 = !{ptr @.str.112, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/btrfs/tree-checker.c", i32 1291, i32 7}
!216 = !{ptr @.str.113, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/btrfs/tree-checker.c", i32 1299, i32 3}
!218 = !{ptr @.str.114, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/btrfs/tree-checker.c", i32 1309, i32 8}
!220 = !{ptr @.str.115, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/btrfs/tree-checker.c", i32 1316, i32 4}
!222 = !{ptr @.str.116, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/btrfs/tree-checker.c", i32 1322, i32 4}
!224 = !{ptr @.str.117, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/btrfs/tree-checker.c", i32 1328, i32 4}
!226 = !{ptr @.str.118, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/btrfs/tree-checker.c", i32 1341, i32 4}
!228 = !{ptr @.str.119, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/btrfs/tree-checker.c", i32 1360, i32 1}
!230 = !{ptr @.str.120, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/btrfs/tree-checker.c", i32 1369, i32 1}
!232 = !{ptr @.str.121, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/btrfs/tree-checker.c", i32 1384, i32 3}
!234 = !{ptr @.str.122, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/btrfs/tree-checker.c", i32 1400, i32 3}
!236 = !{ptr @.str.123, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/btrfs/tree-checker.c", i32 1412, i32 3}
!238 = !{ptr @.str.124, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/btrfs/tree-checker.c", i32 1419, i32 27}
!240 = !{ptr @.str.125, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/btrfs/tree-checker.c", i32 1428, i32 7}
!242 = !{ptr @.str.126, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/btrfs/tree-checker.c", i32 1435, i32 4}
!244 = !{ptr @.str.127, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/btrfs/tree-checker.c", i32 1211, i32 2}
!246 = !{ptr @.str.128, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/btrfs/tree-checker.c", i32 1452, i32 3}
!248 = !{ptr @.str.129, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/btrfs/tree-checker.c", i32 1459, i32 1}
!250 = !{ptr @.str.130, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/btrfs/tree-checker.c", i32 1482, i32 2}
!252 = !{ptr @.str.131, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../fs/btrfs/tree-checker.c", i32 1504, i32 2}
!254 = !{ptr @.str.132, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/btrfs/tree-checker.c", i32 63, i32 2}
!256 = !{i32 1, !"wchar_size", i32 2}
!257 = !{i32 1, !"min_enum_size", i32 4}
!258 = !{i32 8, !"branch-target-enforcement", i32 0}
!259 = !{i32 8, !"sign-return-address", i32 0}
!260 = !{i32 8, !"sign-return-address-all", i32 0}
!261 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!262 = !{i32 7, !"uwtable", i32 1}
!263 = !{i32 7, !"frame-pointer", i32 2}
!264 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!265 = !{!"branch_weights", i32 1, i32 2000}
!266 = !{!"branch_weights", i32 2000, i32 1}
!267 = !{!"branch_weights", i32 1073205, i32 2146410443}
!268 = !{i32 0, i32 33}
!269 = !{!"branch_weights", i32 4193255, i32 -102759400}
!270 = !{i64 0, i64 9}
!271 = !{!"branch_weights", i32 1, i32 4001}
!272 = !{!"auto-init"}
!273 = !{!"branch_weights", i32 -569676998, i32 3734610, i32 3732744, i32 3730878, i32 3729015, i32 3727151, i32 -567814353, i32 1862645}
!274 = !{!"branch_weights", i32 2146410443, i32 1073205}
!275 = !{i32 0, i32 5}
!276 = !{i64 0, i64 3}
!277 = !{!"branch_weights", i32 -102759400, i32 4193255}
!278 = !{i64 2158229942, i64 2158230424, i64 2158229979, i64 2158230035, i64 2158230069, i64 2158230093, i64 2158230134, i64 2158230155, i64 2158230183, i64 2158230217}
