; ModuleID = '/llk/IR_all_yes/fs/reiserfs/bitmap.c_pt.bc'
source_filename = "../fs/reiserfs/bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.70, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.70 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.reiserfs_super_block_v1 = type { i32, i32, i32, %struct.journal_params, i16, i16, i16, i16, [10 x i8], i16, i32, i16, i16, i16, i16 }
%struct.journal_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.reiserfs_bitmap_info = type { i32 }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
%struct.reiserfs_inode_info = type { [4 x i32], i32, i32, i32, i32, i32, %struct.list_head, i8, i32, ptr, %struct.atomic_t, %struct.mutex, %struct.rw_semaphore, [3 x ptr], %struct.inode }
%struct.reiserfs_journal = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, i64, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, [8192 x ptr], [8192 x ptr], [5 x %struct.reiserfs_list_bitmap], %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.atomic_t }
%struct.reiserfs_list_bitmap = type { ptr, ptr }
%struct.__reiserfs_blocknr_hint = type { ptr, i64, %struct.in_core_key, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.treepath = type { i32, i32, [7 x %struct.path_element], i32 }
%struct.path_element = type { ptr, i32 }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.72, i16, i16, i16 }
%struct.reiserfs_key = type { i32, i32, %union.anon.71 }
%union.anon.71 = type { %struct.offset_v2 }
%struct.offset_v2 = type { i64 }
%union.anon.72 = type { i16 }
%struct.offset_v1 = type { i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-4010\00", [24 x i8] zeroinitializer }, align 32
@__func__.is_reusable = private unnamed_addr constant [12 x i8] c"is_reusable\00", align 1
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"block number is out of range %lu (%u)\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-4019\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bitmap block %lu(%u) can't be freed or reused\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-4020\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-4030\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"bitmap for requested block is out of range: block=%lu, bitmap_nr=%u\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-4050\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"this is root block (%u), it must be busy\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@__func__.reiserfs_free_block = private unnamed_addr constant [20 x i8] c"reiserfs_free_block\00", align 1
@.str.10 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"(!(!s)) at fs/reiserfs/bitmap.c:%i:%s: vs-4061: trying to free block on nonexistent device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bitmap-4072\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Trying to free block outside file system boundaries (%lu > %lu)\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zam-4001\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_discard_all_prealloc = private unnamed_addr constant [30 x i8] c"reiserfs_discard_all_prealloc\00", align 1
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"inode is in prealloc list but has no preallocated blocks.\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"concentrating_formatted_nodes\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"block allocator option \22%s\22 is set\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"displacing_large_files\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"displacing_new_packing_localities\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"old_hashed_relocation\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"new_hashed_relocation\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dirid_groups\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"oid_groups\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"packing_groups\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hashed_formatted_nodes\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"skip_busy\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hundredth_slices\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"old_way\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"displace_based_on_dirid\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"preallocmin\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"preallocsize\00", [19 x i8] zeroinitializer }, align 32
@__func__.reiserfs_parse_alloc_options = private unnamed_addr constant [29 x i8] c"reiserfs_parse_alloc_options\00", align 1
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown option - %s\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"allocator options = [%08x]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",alloc=\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"concentrating_formatted_nodes=%d\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"displacing_large_files=%lu\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"preallocmin=%d\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"preallocsize=%d\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-2025\00", [18 x i8] zeroinitializer }, align 32
@__func__.reiserfs_cache_bitmap_metadata = private unnamed_addr constant [31 x i8] c"reiserfs_cache_bitmap_metadata\00", align 1
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bitmap block %lu is corrupted: first bit must be 1\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sh-2029: %s: bitmap block (#%u) reading failed\00", [49 x i8] zeroinitializer }, align 32
@__func__.reiserfs_read_bitmap_block = private unnamed_addr constant [27 x i8] c"reiserfs_read_bitmap_block\00", align 1
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-4075\00", [24 x i8] zeroinitializer }, align 32
@__func__._reiserfs_free_block = private unnamed_addr constant [21 x i8] c"_reiserfs_free_block\00", align 1
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"block %lu is out of range\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-4080\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"block %lu: bit already cleared\00", [33 x i8] zeroinitializer }, align 32
@__func__.__discard_prealloc = private unnamed_addr constant [19 x i8] c"__discard_prealloc\00", align 1
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"inode has negative prealloc blocks count.\00", [54 x i8] zeroinitializer }, align 32
@__func__.reiserfs_free_prealloc_block = private unnamed_addr constant [29 x i8] c"reiserfs_free_prealloc_block\00", align 1
@.str.47 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"(!(!th->t_super)) at fs/reiserfs/bitmap.c:%i:%s: vs-4060: trying to free block on nonexistent device\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.get_left_neighbor = private unnamed_addr constant [18 x i8] c"get_left_neighbor\00", align 1
@.str.48 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"(!(!bh)) at fs/reiserfs/bitmap.c:%i:%s: green-4002: Illegal path specified to get_left_neighbor\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.scan_bitmap_block = private unnamed_addr constant [18 x i8] c"scan_bitmap_block\00", align 1
@.str.49 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"(!(bmap_n >= reiserfs_bmap_count(s))) at fs/reiserfs/bitmap.c:%i:%s: Bitmap %u is out of range (0..%u)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jdm-4055\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NULL bitmap info pointer for bitmap %d\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 68, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 85, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 92, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 100, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 107, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 474, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 479, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 557, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 581, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 585, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 587, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 599, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 606, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 611, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 616, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 621, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 625, i32 26 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 629, i32 26 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 633, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 638, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 643, i32 26 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 648, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 653, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 658, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 665, i32 26 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 674, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 679, i32 19 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 699, i32 16 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 704, i32 20 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 712, i32 20 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 763, i32 19 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 768, i32 19 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1401, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1434, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 435, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 448, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 512, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 495, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 872, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 154, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [24 x i8] c"../fs/reiserfs/bitmap.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 159, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @is_reusable(ptr noundef %s, i32 noundef %block, i32 noundef %bit_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_rs.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %3, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %sub.i = add i32 %6, -1
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize.i, align 16
  %mul.i = shl i32 %8, 3
  %div.i = udiv i32 %sub.i, %mul.i
  %add.i = add i32 %div.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block)
  %cmp = icmp ne i32 %block, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %block)
  %cmp2.not = icmp ugt i32 %6, %block
  %or.cond80 = select i1 %cmp, i1 %cmp2.not, i1 false
  br i1 %or.cond80, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.is_reusable, ptr noundef nonnull @.str.1, i32 noundef %block, i32 noundef %6) #8
  br label %cleanup43

if.end:                                           ; preds = %entry
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 2
  %9 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %10 to i32
  %add.i72 = add nuw nsw i32 %conv.i, 3
  %shr.i73 = lshr i32 %block, %add.i72
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %s_properties, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then11, !prof !113

if.then11:                                        ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %b_blocknr, align 8
  %18 = trunc i64 %17 to i32
  %conv = add i32 %18, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %block)
  %cmp13.not = icmp ugt i32 %conv, %block
  %add15 = add i32 %conv, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %block)
  %cmp16.not = icmp ult i32 %add15, %block
  %or.cond = select i1 %cmp13.not, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %if.then11.if.end24_crit_edge, label %if.then18

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then18:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %s, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.is_reusable, ptr noundef nonnull @.str.3, i32 noundef %block, i32 noundef %add.i) #8
  br label %cleanup43

if.else:                                          ; preds = %if.end
  %sub.i75 = add i32 %mul.i, -1
  %and.i = and i32 %sub.i75, %block
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp20 = icmp eq i32 %and.i, 0
  br i1 %cmp20, label %if.then22, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %s, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.is_reusable, ptr noundef nonnull @.str.3, i32 noundef %block, i32 noundef %add.i) #8
  br label %cleanup43

if.end24:                                         ; preds = %if.else.if.end24_crit_edge, %if.then11.if.end24_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i73, i32 %add.i)
  %cmp25.not = icmp ult i32 %shr.i73, %add.i
  br i1 %cmp25.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %s, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.is_reusable, ptr noundef nonnull @.str.6, i32 noundef %block, i32 noundef %shr.i73) #8
  br label %cleanup43

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bit_value)
  %cmp29 = icmp eq i32 %bit_value, 0
  br i1 %cmp29, label %land.lhs.true31, label %if.end28.cleanup43_crit_edge

if.end28.cleanup43_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

land.lhs.true31:                                  ; preds = %if.end28
  %s_root_block = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %s_root_block to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %s_root_block, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %block)
  %cmp35 = icmp eq i32 %21, %block
  br i1 %cmp35, label %if.then37, label %land.lhs.true31.cleanup43_crit_edge

land.lhs.true31.cleanup43_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

if.then37:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %s, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.is_reusable, ptr noundef nonnull @.str.8, i32 noundef %block) #8
  br label %cleanup43

cleanup43:                                        ; preds = %if.then37, %land.lhs.true31.cleanup43_crit_edge, %if.end28.cleanup43_crit_edge, %if.then27, %if.then22, %if.then18, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then27 ], [ 0, %if.then37 ], [ 0, %if.then22 ], [ 0, %if.then18 ], [ 1, %land.lhs.true31.cleanup43_crit_edge ], [ 1, %if.end28.cleanup43_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @reiserfs_bmap_count(ptr nocapture noundef readonly %sb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_rs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %3, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %sub = add i32 %6, -1
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %8, 3
  %div = udiv i32 %sub, %mul
  %add = add i32 %div, 1
  ret i32 %add
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_error(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_choose_packing(ptr nocapture noundef readonly %dir) local_unnamed_addr #0 align 64 {
entry:
  %id.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %s_alloc_options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %s_alloc_options, align 4
  %6 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else14, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -264
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %8)
  %cmp = icmp eq i32 %8, 16777216
  br i1 %cmp, label %if.then.if.then6_crit_edge, label %lor.lhs.false

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.then
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.addr.i.i) #8
  %10 = ptrtoint ptr %id.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %id.addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i.i = icmp ult i32 %9, 3
  br i1 %cmp.i.i, label %lor.lhs.false.bmap_hash_id.exit.i_crit_edge, label %if.else.i.i

lor.lhs.false.bmap_hash_id.exit.i_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmap_hash_id.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 @keyed_hash(ptr noundef nonnull %id.addr.i.i, i32 noundef 4) #8
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs.i.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %s_rs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_rs.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %14, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  %sub.i.i.i = add i32 %17, -1
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize.i.i.i, align 16
  %mul.i.i.i = shl i32 %19, 3
  %div.i.i.i = udiv i32 %sub.i.i.i, %mul.i.i.i
  %add.i.i.i = add i32 %div.i.i.i, 1
  %rem.i.i = urem i32 %call.i.i, %add.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i32 1, i32 %rem.i.i
  br label %bmap_hash_id.exit.i

bmap_hash_id.exit.i:                              ; preds = %if.else.i.i, %lor.lhs.false.bmap_hash_id.exit.i_crit_edge
  %bm.0.i.i = phi i32 [ %spec.store.select.i.i, %if.else.i.i ], [ 1, %lor.lhs.false.bmap_hash_id.exit.i_crit_edge ]
  %20 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs.i12.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %s_rs.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_rs.i12.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %23, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25) #8
  %sub.i13.i.i = add i32 %26, -1
  %s_blocksize.i14.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %s_blocksize.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_blocksize.i14.i.i, align 16
  %mul.i15.i.i = shl i32 %28, 3
  %div.i16.i.i = udiv i32 %sub.i13.i.i, %mul.i15.i.i
  %add.i17.i.i = add i32 %div.i16.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bm.0.i.i, i32 %add.i17.i.i)
  %cmp5.not.i.i = icmp ult i32 %bm.0.i.i, %add.i17.i.i
  %spec.select.i.i = select i1 %cmp5.not.i.i, i32 %bm.0.i.i, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.addr.i.i) #8
  %s_ap_bitmap.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %21, i32 0, i32 2
  %29 = ptrtoint ptr %s_ap_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_ap_bitmap.i, align 4
  %arrayidx.i = getelementptr %struct.reiserfs_bitmap_info, ptr %30, i32 %spec.select.i.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i = icmp eq i32 %32, -1
  br i1 %cmp.i, label %if.then.i, label %bmap_hash_id.exit.i.block_group_used.exit_crit_edge

bmap_hash_id.exit.i.block_group_used.exit_crit_edge: ; preds = %bmap_hash_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %block_group_used.exit

if.then.i:                                        ; preds = %bmap_hash_id.exit.i
  %call2.i = call ptr @reiserfs_read_bitmap_block(ptr noundef %1, i32 noundef %spec.select.i.i) #8
  %tobool.not.i13.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i13.i, label %if.then.i.block_group_used.exit_crit_edge, label %if.then.i.i

if.then.i.block_group_used.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %block_group_used.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %call2.i) #8
  br label %block_group_used.exit

block_group_used.exit:                            ; preds = %if.then.i.i, %if.then.i.block_group_used.exit_crit_edge, %bmap_hash_id.exit.i.block_group_used.exit_crit_edge
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %35 = ptrtoint ptr %s_blocksize.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_blocksize.i14.i.i, align 16
  %mul.i = mul i32 %36, 480
  %div.i = udiv i32 %mul.i, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %div.i)
  %cmp4.i.not = icmp ugt i32 %34, %div.i
  br i1 %cmp4.i.not, label %block_group_used.exit.if.end19_crit_edge, label %block_group_used.exit.if.then6_crit_edge

block_group_used.exit.if.then6_crit_edge:         ; preds = %block_group_used.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

block_group_used.exit.if.end19_crit_edge:         ; preds = %block_group_used.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then6:                                         ; preds = %block_group_used.exit.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %k_objectid = getelementptr i8, ptr %dir, i32 -260
  br label %if.end19

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %k_objectid18 = getelementptr i8, ptr %dir, i32 -260
  br label %if.end19

if.end19:                                         ; preds = %if.else14, %if.then6, %block_group_used.exit.if.end19_crit_edge
  %packing.1.in = phi ptr [ %k_objectid18, %if.else14 ], [ %k_objectid, %if.then6 ], [ %add.ptr.i, %block_group_used.exit.if.end19_crit_edge ]
  %37 = ptrtoint ptr %packing.1.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %packing.1 = load i32, ptr %packing.1.in, align 4
  ret i32 %packing.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_free_block(ptr noundef %th, ptr noundef %inode, i32 noundef %block, i32 noundef %for_unformatted) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %2 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !114

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 473, 0\0A.popsection", ""() #8, !srcloc !115
  unreachable

do.body10:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %if.then12, label %do.end15

if.then12:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.reiserfs_free_block, ptr noundef nonnull @.str.10, i32 noundef 474, ptr noundef nonnull @__func__.reiserfs_free_block) #11
  unreachable

do.end15:                                         ; preds = %do.body10
  %call = tail call i32 @is_reusable(ptr noundef nonnull %1, i32 noundef %block, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %do.end15.cleanup_crit_edge, label %if.end18

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %do.end15
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_rs, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %block)
  %cmp = icmp ult i32 %10, %block
  br i1 %cmp, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %th, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.reiserfs_free_block, ptr noundef nonnull @.str.12, i32 noundef %block, i32 noundef %10) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 @journal_mark_freed(ptr noundef %th, ptr noundef nonnull %1, i32 noundef %block) #8
  tail call fastcc void @_reiserfs_free_block(ptr noundef %th, ptr noundef %inode, i32 noundef %block, i32 noundef %for_unformatted)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then20, %do.end15.cleanup_crit_edge
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_mark_freed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_reiserfs_free_block(ptr noundef %th, ptr noundef %inode, i32 noundef %block, i32 noundef %for_unformatted) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %2 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !114

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #8, !srcloc !116
  unreachable

do.end9:                                          ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %free_block = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 27, i32 30
  %6 = ptrtoint ptr %free_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_block, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %free_block, align 4
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_rs, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %s_ap_bitmap = getelementptr inbounds %struct.reiserfs_sb_info, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %s_ap_bitmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_ap_bitmap, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %16 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %shr.i = lshr i32 %block, %add.i
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize.i, align 16
  %shl.i = shl i32 %18, 3
  %sub.i = add i32 %shl.i, -1
  %and.i = and i32 %sub.i, %block
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %10, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %sub.i67 = add i32 %21, -1
  %div.i = udiv i32 %sub.i67, %shl.i
  %add.i69 = add i32 %div.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %add.i69)
  %cmp.not = icmp ult i32 %shr.i, %add.i69
  br i1 %cmp.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__._reiserfs_free_block, ptr noundef nonnull @.str.43, i32 noundef %block) #8
  br label %cleanup

if.end15:                                         ; preds = %do.end9
  %call16 = tail call ptr @reiserfs_read_bitmap_block(ptr noundef %1, i32 noundef %shr.i)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @reiserfs_prepare_for_journal(ptr noundef %1, ptr noundef nonnull %call16, i32 noundef 1) #8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call16, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %xor.i = and i32 %and.i, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div6.i.i = lshr i32 %and.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %23, i32 %div6.i.i
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %25, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %26 = and i32 %25, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %if.then23, label %if.end19.brelse.exit_crit_edge

if.end19.brelse.exit_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__._reiserfs_free_block, ptr noundef nonnull @.str.45, i32 noundef %block) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then23, %if.end19.brelse.exit_crit_edge
  %arrayidx = getelementptr %struct.reiserfs_bitmap_info, ptr %14, i32 %shr.i
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %inc25 = add i32 %28, 1
  store i32 %inc25, ptr %arrayidx, align 4
  %call26 = tail call i32 @journal_mark_dirty(ptr noundef %th, ptr noundef nonnull %call16) #8
  tail call void @__brelse(ptr noundef nonnull %call16) #8
  %call27 = tail call i32 @reiserfs_prepare_for_journal(ptr noundef %1, ptr noundef %12, i32 noundef 1) #8
  %s_free_blocks = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %10, i32 0, i32 1
  %29 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %s_free_blocks, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %add = add i32 %31, 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %add)
  %33 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %s_free_blocks, align 1
  %call30 = tail call i32 @journal_mark_dirty(ptr noundef %th, ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %for_unformatted)
  %tobool31.not = icmp eq i32 %for_unformatted, 0
  br i1 %tobool31.not, label %brelse.exit.cleanup_crit_edge, label %if.then32

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %1) #8
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %34 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %35 to i64
  %shl.i70 = shl nuw i64 1, %sh_prom.i
  tail call void @__dquot_free_space(ptr noundef %inode, i64 noundef %shl.i70, i32 noundef 0) #8
  tail call void @reiserfs_write_lock_nested(ptr noundef %1, i32 noundef %call33) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %brelse.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_discard_prealloc(ptr noundef %th, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %0 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !114

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 541, 0\0A.popsection", ""() #8, !srcloc !117
  unreachable

do.end9:                                          ; preds = %entry
  %i_prealloc_count = getelementptr i8, ptr %inode, i32 -232
  %2 = ptrtoint ptr %i_prealloc_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_prealloc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %do.end9.if.end12_crit_edge, label %if.then11

do.end9.if.end12_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__discard_prealloc(ptr noundef %th, ptr noundef %add.ptr.i)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end9.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__discard_prealloc(ptr noundef %th, ptr noundef %ei) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_prealloc_block = getelementptr inbounds %struct.reiserfs_inode_info, ptr %ei, i32 0, i32 4
  %0 = ptrtoint ptr %i_prealloc_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_prealloc_block, align 4
  %vfs_inode = getelementptr inbounds %struct.reiserfs_inode_info, ptr %ei, i32 0, i32 14
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %2 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !114

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #8, !srcloc !118
  unreachable

do.end9:                                          ; preds = %entry
  %i_prealloc_count = getelementptr inbounds %struct.reiserfs_inode_info, ptr %ei, i32 0, i32 5
  %4 = ptrtoint ptr %i_prealloc_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_prealloc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then10, label %do.end9.if.end11_crit_edge

do.end9.if.end11_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %th, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %7, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.__discard_prealloc, ptr noundef nonnull @.str.46) #8
  %8 = ptrtoint ptr %i_prealloc_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %i_prealloc_count, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end9.if.end11_crit_edge
  %9 = phi i32 [ %.pr, %if.then10 ], [ %5, %do.end9.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1333 = icmp sgt i32 %9, 0
  br i1 %cmp1333, label %if.end11.while.body_crit_edge, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  br label %while.body

while.body:                                       ; preds = %reiserfs_free_prealloc_block.exit.while.body_crit_edge, %if.end11.while.body_crit_edge
  %10 = phi i32 [ %19, %reiserfs_free_prealloc_block.exit.while.body_crit_edge ], [ %9, %if.end11.while.body_crit_edge ]
  %11 = ptrtoint ptr %i_prealloc_block to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_prealloc_block, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %i_prealloc_block, align 4
  %dec = add nsw i32 %10, -1
  %13 = ptrtoint ptr %i_prealloc_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec, ptr %i_prealloc_count, align 8
  %14 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body8.i, !prof !114

do.body4.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #8, !srcloc !119
  unreachable

do.body8.i:                                       ; preds = %while.body
  %16 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %th, align 4
  %tobool9.not.i = icmp eq ptr %17, null
  br i1 %tobool9.not.i, label %if.then10.i, label %do.end12.i

if.then10.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.reiserfs_free_prealloc_block, ptr noundef nonnull @.str.47, i32 noundef 496, ptr noundef nonnull @__func__.reiserfs_free_prealloc_block) #11
  unreachable

do.end12.i:                                       ; preds = %do.body8.i
  %call.i = tail call i32 @is_reusable(ptr noundef nonnull %17, i32 noundef %12, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %do.end12.i.reiserfs_free_prealloc_block.exit_crit_edge, label %if.end16.i

do.end12.i.reiserfs_free_prealloc_block.exit_crit_edge: ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reiserfs_free_prealloc_block.exit

if.end16.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_reiserfs_free_block(ptr noundef %th, ptr noundef %vfs_inode, i32 noundef %12, i32 noundef 1) #8
  br label %reiserfs_free_prealloc_block.exit

reiserfs_free_prealloc_block.exit:                ; preds = %if.end16.i, %do.end12.i.reiserfs_free_prealloc_block.exit_crit_edge
  %18 = ptrtoint ptr %i_prealloc_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_prealloc_count, align 8
  %cmp13 = icmp sgt i32 %19, 0
  br i1 %cmp13, label %reiserfs_free_prealloc_block.exit.while.body_crit_edge, label %if.then17

reiserfs_free_prealloc_block.exit.while.body_crit_edge: ; preds = %reiserfs_free_prealloc_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.then17:                                        ; preds = %reiserfs_free_prealloc_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  %i_size.i = getelementptr inbounds %struct.reiserfs_inode_info, ptr %ei, i32 0, i32 14, i32 14
  %20 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size.i, align 8
  tail call void @reiserfs_update_sd_size(ptr noundef %th, ptr noundef %vfs_inode, i64 noundef %21) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end11.if.end18_crit_edge
  %22 = ptrtoint ptr %i_prealloc_block to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %1, ptr %i_prealloc_block, align 4
  %i_prealloc_list = getelementptr inbounds %struct.reiserfs_inode_info, ptr %ei, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_prealloc_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.list_del_init.exit_crit_edge

if.end18.list_del_init.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.reiserfs_inode_info, ptr %ei, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %i_prealloc_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_prealloc_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end18.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %i_prealloc_list to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %i_prealloc_list, ptr %i_prealloc_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.reiserfs_inode_info, ptr %ei, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %i_prealloc_list, ptr %prev.i3.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_discard_all_prealloc(ptr noundef %th) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_journal, align 4
  %j_prealloc_list = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 50
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %6 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body4, label %while.cond.preheader, !prof !114

while.cond.preheader:                             ; preds = %entry
  %8 = ptrtoint ptr %j_prealloc_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %j_prealloc_list, align 4
  %cmp.i.not23 = icmp eq ptr %9, %j_prealloc_list
  br i1 %cmp.i.not23, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 550, 0\0A.popsection", ""() #8, !srcloc !120
  unreachable

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %10 = phi ptr [ %16, %if.end17.while.body_crit_edge ], [ %9, %while.cond.preheader.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %10, i32 -36
  %i_prealloc_count = getelementptr i8, ptr %10, i32 -4
  %11 = ptrtoint ptr %i_prealloc_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_prealloc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.then15, label %while.body.if.end17_crit_edge

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %th, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %14, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.reiserfs_discard_all_prealloc, ptr noundef nonnull @.str.14) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %while.body.if.end17_crit_edge
  tail call fastcc void @__discard_prealloc(ptr noundef %th, ptr noundef %add.ptr)
  %15 = ptrtoint ptr %j_prealloc_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %j_prealloc_list, align 4
  %cmp.i.not = icmp eq ptr %16, %j_prealloc_list
  br i1 %cmp.i.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_init_alloc_options(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 5, ptr noundef %s_alloc_options) #8
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options2 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 10, ptr noundef %s_alloc_options2) #8
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options5 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 12, ptr noundef %s_alloc_options5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_parse_alloc_options(ptr noundef %s, ptr noundef %options) local_unnamed_addr #0 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %value = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %value, align 4, !annotation !121
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %s_alloc_options to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %s_alloc_options, align 4
  %call1266 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.15) #8
  %cmp.not267 = icmp eq ptr %call1266, null
  br i1 %cmp.not267, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call1268 = phi ptr [ %call1, %while.cond.backedge.while.body_crit_edge ], [ %call1266, %entry.while.body_crit_edge ]
  %call2 = call ptr @strchr(ptr noundef nonnull %call1268, i32 noundef 61)
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %value, align 4
  %cmp3.not = icmp eq ptr %call2, null
  br i1 %cmp3.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr = getelementptr i8, ptr %call2, i32 1
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %incdec.ptr, ptr %value, align 4
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %call4 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(30) @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end23

if.then5:                                         ; preds = %if.end
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16) #8
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options7 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %9, i32 0, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %s_alloc_options7) #8
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.then5.if.else_crit_edge, label %land.lhs.true

if.then5.if.else_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %land.lhs.true.if.else_crit_edge, label %cond.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

cond.end:                                         ; preds = %land.lhs.true
  %call11 = call i32 @simple_strtoul(ptr noundef nonnull %11, ptr noundef nonnull %value, i32 noundef 0) #8
  %14 = add i32 %call11, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %14)
  %15 = icmp ult i32 %14, -100
  br i1 %15, label %if.then16, label %cond.end.if.else_crit_edge

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then16:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %border = getelementptr inbounds %struct.reiserfs_sb_info, ptr %17, i32 0, i32 12, i32 2
  %18 = ptrtoint ptr %border to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 10, ptr %border, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %cond.end.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then5.if.else_crit_edge
  %cond271 = phi i32 [ %call11, %cond.end.if.else_crit_edge ], [ 10, %land.lhs.true.if.else_crit_edge ], [ 10, %if.then5.if.else_crit_edge ]
  %div263.rhs.trunc = trunc i32 %cond271 to i8
  %div263264 = udiv i8 100, %div263.rhs.trunc
  %div263.zext = zext i8 %div263264 to i32
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %border21 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %20, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %border21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div263.zext, ptr %border21, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cond.end180, %cond.end165, %do.body148, %do.body138, %do.body128, %do.body118, %do.body108, %do.body98, %do.body88, %do.body78, %do.body68, %do.body58, %do.body48, %cond.end40, %if.else, %if.then16
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.15) #8
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end23:                                         ; preds = %if.end
  %call24 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(23) @.str.18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body27, label %if.end44

do.body27:                                        ; preds = %if.end23
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #8
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options29 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %23, i32 0, i32 12
  call void @_set_bit(i32 noundef 1, ptr noundef %s_alloc_options29) #8
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %value, align 4
  %tobool33.not = icmp eq ptr %25, null
  br i1 %tobool33.not, label %do.body27.cond.end40_crit_edge, label %land.lhs.true34

do.body27.cond.end40_crit_edge:                   ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end40

land.lhs.true34:                                  ; preds = %do.body27
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool36.not = icmp eq i8 %27, 0
  br i1 %tobool36.not, label %land.lhs.true34.cond.end40_crit_edge, label %cond.true37

land.lhs.true34.cond.end40_crit_edge:             ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end40

cond.true37:                                      ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = call i32 @simple_strtoul(ptr noundef nonnull %25, ptr noundef nonnull %value, i32 noundef 0) #8
  br label %cond.end40

cond.end40:                                       ; preds = %cond.true37, %land.lhs.true34.cond.end40_crit_edge, %do.body27.cond.end40_crit_edge
  %cond41 = phi i32 [ %call38, %cond.true37 ], [ 16, %land.lhs.true34.cond.end40_crit_edge ], [ 16, %do.body27.cond.end40_crit_edge ]
  %28 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i, align 16
  %large_file_size = getelementptr inbounds %struct.reiserfs_sb_info, ptr %29, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %large_file_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond41, ptr %large_file_size, align 4
  br label %while.cond.backedge

if.end44:                                         ; preds = %if.end23
  %call45 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(34) @.str.19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body48, label %if.end54

do.body48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19) #8
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options50 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %32, i32 0, i32 12
  call void @_set_bit(i32 noundef 2, ptr noundef %s_alloc_options50) #8
  br label %while.cond.backedge

if.end54:                                         ; preds = %if.end44
  %call55 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(22) @.str.20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.body58, label %if.end64

do.body58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20) #8
  %33 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options60 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %34, i32 0, i32 12
  call void @_set_bit(i32 noundef 3, ptr noundef %s_alloc_options60) #8
  br label %while.cond.backedge

if.end64:                                         ; preds = %if.end54
  %call65 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(22) @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body68, label %if.end74

do.body68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.21) #8
  %35 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options70 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %36, i32 0, i32 12
  call void @_set_bit(i32 noundef 4, ptr noundef %s_alloc_options70) #8
  br label %while.cond.backedge

if.end74:                                         ; preds = %if.end64
  %call75 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(13) @.str.22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.body78, label %if.end84

do.body78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.22) #8
  %37 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options80 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %38, i32 0, i32 12
  call void @_set_bit(i32 noundef 10, ptr noundef %s_alloc_options80) #8
  br label %while.cond.backedge

if.end84:                                         ; preds = %if.end74
  %call85 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(11) @.str.23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %do.body88, label %if.end94

do.body88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.23) #8
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options90 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %40, i32 0, i32 12
  call void @_set_bit(i32 noundef 11, ptr noundef %s_alloc_options90) #8
  br label %while.cond.backedge

if.end94:                                         ; preds = %if.end84
  %call95 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(15) @.str.24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %do.body98, label %if.end104

do.body98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.24) #8
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options100 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %42, i32 0, i32 12
  call void @_set_bit(i32 noundef 12, ptr noundef %s_alloc_options100) #8
  br label %while.cond.backedge

if.end104:                                        ; preds = %if.end94
  %call105 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(23) @.str.25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %do.body108, label %if.end114

do.body108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.25) #8
  %43 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options110 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %44, i32 0, i32 12
  call void @_set_bit(i32 noundef 7, ptr noundef %s_alloc_options110) #8
  br label %while.cond.backedge

if.end114:                                        ; preds = %if.end104
  %call115 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(10) @.str.26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %do.body118, label %if.end124

do.body118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.26) #8
  %45 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options120 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %46, i32 0, i32 12
  call void @_set_bit(i32 noundef 5, ptr noundef %s_alloc_options120) #8
  br label %while.cond.backedge

if.end124:                                        ; preds = %if.end114
  %call125 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(17) @.str.27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %do.body128, label %if.end134

do.body128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.27) #8
  %47 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options130 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %48, i32 0, i32 12
  call void @_set_bit(i32 noundef 9, ptr noundef %s_alloc_options130) #8
  br label %while.cond.backedge

if.end134:                                        ; preds = %if.end124
  %call135 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(8) @.str.28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %do.body138, label %if.end144

do.body138:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.28) #8
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options140 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %50, i32 0, i32 12
  call void @_set_bit(i32 noundef 8, ptr noundef %s_alloc_options140) #8
  br label %while.cond.backedge

if.end144:                                        ; preds = %if.end134
  %call145 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(24) @.str.29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %do.body148, label %if.end154

do.body148:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.29) #8
  %51 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options150 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %52, i32 0, i32 12
  call void @_set_bit(i32 noundef 6, ptr noundef %s_alloc_options150) #8
  br label %while.cond.backedge

if.end154:                                        ; preds = %if.end144
  %call155 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(12) @.str.30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then157, label %if.end169

if.then157:                                       ; preds = %if.end154
  %53 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %value, align 4
  %tobool158.not = icmp eq ptr %54, null
  br i1 %tobool158.not, label %if.then157.cond.end165_crit_edge, label %land.lhs.true159

if.then157.cond.end165_crit_edge:                 ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end165

land.lhs.true159:                                 ; preds = %if.then157
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool161.not = icmp eq i8 %56, 0
  br i1 %tobool161.not, label %land.lhs.true159.cond.end165_crit_edge, label %cond.true162

land.lhs.true159.cond.end165_crit_edge:           ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end165

cond.true162:                                     ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #10
  %call163 = call i32 @simple_strtoul(ptr noundef nonnull %54, ptr noundef nonnull %value, i32 noundef 0) #8
  br label %cond.end165

cond.end165:                                      ; preds = %cond.true162, %land.lhs.true159.cond.end165_crit_edge, %if.then157.cond.end165_crit_edge
  %cond166 = phi i32 [ %call163, %cond.true162 ], [ 4, %land.lhs.true159.cond.end165_crit_edge ], [ 4, %if.then157.cond.end165_crit_edge ]
  %57 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i, align 16
  %preallocmin = getelementptr inbounds %struct.reiserfs_sb_info, ptr %58, i32 0, i32 12, i32 3
  %59 = ptrtoint ptr %preallocmin to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %cond166, ptr %preallocmin, align 4
  br label %while.cond.backedge

if.end169:                                        ; preds = %if.end154
  %call170 = call i32 @strcmp(ptr noundef nonnull %call1268, ptr noundef nonnull dereferenceable(13) @.str.31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.then172, label %if.end184

if.then172:                                       ; preds = %if.end169
  %60 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %value, align 4
  %tobool173.not = icmp eq ptr %61, null
  br i1 %tobool173.not, label %if.then172.cond.end180_crit_edge, label %land.lhs.true174

if.then172.cond.end180_crit_edge:                 ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end180

land.lhs.true174:                                 ; preds = %if.then172
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool176.not = icmp eq i8 %63, 0
  br i1 %tobool176.not, label %land.lhs.true174.cond.end180_crit_edge, label %cond.true177

land.lhs.true174.cond.end180_crit_edge:           ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end180

cond.true177:                                     ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #10
  %call178 = call i32 @simple_strtoul(ptr noundef nonnull %61, ptr noundef nonnull %value, i32 noundef 0) #8
  br label %cond.end180

cond.end180:                                      ; preds = %cond.true177, %land.lhs.true174.cond.end180_crit_edge, %if.then172.cond.end180_crit_edge
  %cond181 = phi i32 [ %call178, %cond.true177 ], [ 9, %land.lhs.true174.cond.end180_crit_edge ], [ 9, %if.then172.cond.end180_crit_edge ]
  %64 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i, align 16
  %preallocsize = getelementptr inbounds %struct.reiserfs_sb_info, ptr %65, i32 0, i32 12, i32 4
  %66 = ptrtoint ptr %preallocsize to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %cond181, ptr %preallocsize, align 4
  br label %while.cond.backedge

if.end184:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.reiserfs_parse_alloc_options, ptr noundef nonnull @.str.32, ptr noundef nonnull %call1268) #8
  br label %cleanup

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %67 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options186 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %s_alloc_options186 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_alloc_options186, align 4
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef %70) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end184
  %retval.0 = phi i32 [ 1, %if.end184 ], [ 0, %while.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @show_alloc_options(ptr noundef %seq, ptr noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %s_alloc_options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_alloc_options, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5152, i32 %3)
  %cmp = icmp eq i32 %3, 5152
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.34) #8
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options2 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %s_alloc_options2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %s_alloc_options2, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end14.thread, label %print_sep.exit

print_sep.exit:                                   ; preds = %if.end
  %border = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %border to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %border, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp8.not = icmp eq i32 %9, 10
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %print_sep.exit
  call void @__sanitizer_cov_trace_pc() #10
  %div = sdiv i32 100, %9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.35, i32 noundef %div) #8
  br label %if.end14

if.else:                                          ; preds = %print_sep.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.16) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options16 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %s_alloc_options16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %s_alloc_options16, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %if.end14.if.end30_crit_edge, label %if.then.i205

if.end14.if.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end14.thread:                                  ; preds = %if.end
  %s_alloc_options16292 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %s_alloc_options16292 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %s_alloc_options16292, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not295 = icmp eq i32 %17, 0
  br i1 %tobool19.not295, label %if.end30.thread, label %if.end14.thread.print_sep.exit207_crit_edge

if.end14.thread.print_sep.exit207_crit_edge:      ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit207

if.then.i205:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit207

print_sep.exit207:                                ; preds = %if.then.i205, %if.end14.thread.print_sep.exit207_crit_edge
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %large_file_size = getelementptr inbounds %struct.reiserfs_sb_info, ptr %19, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %large_file_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %large_file_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %21)
  %cmp23.not = icmp eq i32 %21, 16
  br i1 %cmp23.not, label %if.else28, label %if.then24

if.then24:                                        ; preds = %print_sep.exit207
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.36, i32 noundef %21) #8
  br label %if.end30

if.else28:                                        ; preds = %print_sep.exit207
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.18) #8
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then24, %if.end14.if.end30_crit_edge
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options32 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %s_alloc_options32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %s_alloc_options32, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool35.not = icmp eq i32 %26, 0
  br i1 %tobool35.not, label %if.end30.if.end37_crit_edge, label %if.then.i212

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end30.thread:                                  ; preds = %if.end14.thread
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options32300 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %s_alloc_options32300 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %s_alloc_options32300, align 4
  %31 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool35.not303 = icmp eq i32 %31, 0
  br i1 %tobool35.not303, label %if.end37.thread, label %if.end30.thread.print_sep.exit214_crit_edge

if.end30.thread.print_sep.exit214_crit_edge:      ; preds = %if.end30.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit214

if.then.i212:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit214

print_sep.exit214:                                ; preds = %if.then.i212, %if.end30.thread.print_sep.exit214_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.19) #8
  br label %if.end37

if.end37:                                         ; preds = %print_sep.exit214, %if.end30.if.end37_crit_edge
  %32 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options39 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %s_alloc_options39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %s_alloc_options39, align 4
  %36 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool42.not = icmp eq i32 %36, 0
  br i1 %tobool42.not, label %if.end37.if.end44_crit_edge, label %if.then.i217

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end37.thread:                                  ; preds = %if.end30.thread
  %37 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options39308 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %s_alloc_options39308 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %s_alloc_options39308, align 4
  %41 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool42.not311 = icmp eq i32 %41, 0
  br i1 %tobool42.not311, label %if.end44.thread, label %if.end37.thread.print_sep.exit219_crit_edge

if.end37.thread.print_sep.exit219_crit_edge:      ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit219

if.then.i217:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit219

print_sep.exit219:                                ; preds = %if.then.i217, %if.end37.thread.print_sep.exit219_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.20) #8
  br label %if.end44

if.end44:                                         ; preds = %print_sep.exit219, %if.end37.if.end44_crit_edge
  %42 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options46 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %s_alloc_options46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %s_alloc_options46, align 4
  %46 = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool49.not = icmp eq i32 %46, 0
  br i1 %tobool49.not, label %if.end44.if.end51_crit_edge, label %if.then.i222

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end44.thread:                                  ; preds = %if.end37.thread
  %47 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options46316 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %s_alloc_options46316 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %s_alloc_options46316, align 4
  %51 = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool49.not319 = icmp eq i32 %51, 0
  br i1 %tobool49.not319, label %if.end51.thread, label %if.end44.thread.print_sep.exit224_crit_edge

if.end44.thread.print_sep.exit224_crit_edge:      ; preds = %if.end44.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit224

if.then.i222:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit224

print_sep.exit224:                                ; preds = %if.then.i222, %if.end44.thread.print_sep.exit224_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.21) #8
  br label %if.end51

if.end51:                                         ; preds = %print_sep.exit224, %if.end44.if.end51_crit_edge
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options53 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %s_alloc_options53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %s_alloc_options53, align 4
  %56 = and i32 %55, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool56.not = icmp eq i32 %56, 0
  br i1 %tobool56.not, label %if.end51.if.end58_crit_edge, label %if.then.i227

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end51.thread:                                  ; preds = %if.end44.thread
  %57 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options53324 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %58, i32 0, i32 12
  %59 = ptrtoint ptr %s_alloc_options53324 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %s_alloc_options53324, align 4
  %61 = and i32 %60, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool56.not327 = icmp eq i32 %61, 0
  br i1 %tobool56.not327, label %if.end58.thread, label %if.end51.thread.print_sep.exit229_crit_edge

if.end51.thread.print_sep.exit229_crit_edge:      ; preds = %if.end51.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit229

if.then.i227:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit229

print_sep.exit229:                                ; preds = %if.then.i227, %if.end51.thread.print_sep.exit229_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.22) #8
  br label %if.end58

if.end58:                                         ; preds = %print_sep.exit229, %if.end51.if.end58_crit_edge
  %62 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options60 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %s_alloc_options60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %s_alloc_options60, align 4
  %66 = and i32 %65, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool63.not = icmp eq i32 %66, 0
  br i1 %tobool63.not, label %if.end58.if.end65_crit_edge, label %if.then.i232

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.end58.thread:                                  ; preds = %if.end51.thread
  %67 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options60332 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %s_alloc_options60332 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %s_alloc_options60332, align 4
  %71 = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool63.not335 = icmp eq i32 %71, 0
  br i1 %tobool63.not335, label %if.end65.thread, label %if.end58.thread.print_sep.exit234_crit_edge

if.end58.thread.print_sep.exit234_crit_edge:      ; preds = %if.end58.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit234

if.then.i232:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit234

print_sep.exit234:                                ; preds = %if.then.i232, %if.end58.thread.print_sep.exit234_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.23) #8
  br label %if.end65

if.end65:                                         ; preds = %print_sep.exit234, %if.end58.if.end65_crit_edge
  %72 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options67 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %73, i32 0, i32 12
  %74 = ptrtoint ptr %s_alloc_options67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %s_alloc_options67, align 4
  %76 = and i32 %75, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool70.not = icmp eq i32 %76, 0
  br i1 %tobool70.not, label %if.end65.if.end72_crit_edge, label %if.then.i237

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end65.thread:                                  ; preds = %if.end58.thread
  %77 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options67340 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %78, i32 0, i32 12
  %79 = ptrtoint ptr %s_alloc_options67340 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %s_alloc_options67340, align 4
  %81 = and i32 %80, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool70.not343 = icmp eq i32 %81, 0
  br i1 %tobool70.not343, label %if.end72.thread, label %if.end65.thread.print_sep.exit239_crit_edge

if.end65.thread.print_sep.exit239_crit_edge:      ; preds = %if.end65.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit239

if.then.i237:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit239

print_sep.exit239:                                ; preds = %if.then.i237, %if.end65.thread.print_sep.exit239_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.24) #8
  br label %if.end72

if.end72:                                         ; preds = %print_sep.exit239, %if.end65.if.end72_crit_edge
  %82 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options74 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %s_alloc_options74 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %s_alloc_options74, align 4
  %86 = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool77.not = icmp eq i32 %86, 0
  br i1 %tobool77.not, label %if.end72.if.end79_crit_edge, label %if.then.i242

if.end72.if.end79_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.end72.thread:                                  ; preds = %if.end65.thread
  %87 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options74348 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %s_alloc_options74348 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %s_alloc_options74348, align 4
  %91 = and i32 %90, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool77.not351 = icmp eq i32 %91, 0
  br i1 %tobool77.not351, label %if.end79.thread, label %if.end72.thread.print_sep.exit244_crit_edge

if.end72.thread.print_sep.exit244_crit_edge:      ; preds = %if.end72.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit244

if.then.i242:                                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit244

print_sep.exit244:                                ; preds = %if.then.i242, %if.end72.thread.print_sep.exit244_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.25) #8
  br label %if.end79

if.end79:                                         ; preds = %print_sep.exit244, %if.end72.if.end79_crit_edge
  %92 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options81 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %93, i32 0, i32 12
  %94 = ptrtoint ptr %s_alloc_options81 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %s_alloc_options81, align 4
  %96 = and i32 %95, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool84.not = icmp eq i32 %96, 0
  br i1 %tobool84.not, label %if.end79.if.end86_crit_edge, label %if.then.i247

if.end79.if.end86_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end79.thread:                                  ; preds = %if.end72.thread
  %97 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options81356 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %98, i32 0, i32 12
  %99 = ptrtoint ptr %s_alloc_options81356 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %s_alloc_options81356, align 4
  %101 = and i32 %100, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool84.not359 = icmp eq i32 %101, 0
  br i1 %tobool84.not359, label %if.end86.thread, label %if.end79.thread.print_sep.exit249_crit_edge

if.end79.thread.print_sep.exit249_crit_edge:      ; preds = %if.end79.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit249

if.then.i247:                                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit249

print_sep.exit249:                                ; preds = %if.then.i247, %if.end79.thread.print_sep.exit249_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.26) #8
  br label %if.end86

if.end86:                                         ; preds = %print_sep.exit249, %if.end79.if.end86_crit_edge
  %102 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options88 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %103, i32 0, i32 12
  %104 = ptrtoint ptr %s_alloc_options88 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %s_alloc_options88, align 4
  %106 = and i32 %105, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool91.not = icmp eq i32 %106, 0
  br i1 %tobool91.not, label %if.end86.if.end93_crit_edge, label %if.then.i252

if.end86.if.end93_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.end86.thread:                                  ; preds = %if.end79.thread
  %107 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options88364 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %108, i32 0, i32 12
  %109 = ptrtoint ptr %s_alloc_options88364 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %s_alloc_options88364, align 4
  %111 = and i32 %110, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool91.not367 = icmp eq i32 %111, 0
  br i1 %tobool91.not367, label %if.end93.thread, label %if.end86.thread.print_sep.exit254_crit_edge

if.end86.thread.print_sep.exit254_crit_edge:      ; preds = %if.end86.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit254

if.then.i252:                                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit254

print_sep.exit254:                                ; preds = %if.then.i252, %if.end86.thread.print_sep.exit254_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.27) #8
  br label %if.end93

if.end93:                                         ; preds = %print_sep.exit254, %if.end86.if.end93_crit_edge
  %112 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options95 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %113, i32 0, i32 12
  %114 = ptrtoint ptr %s_alloc_options95 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %s_alloc_options95, align 4
  %116 = and i32 %115, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool98.not = icmp eq i32 %116, 0
  br i1 %tobool98.not, label %if.end93.if.end100_crit_edge, label %if.then.i257

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.end93.thread:                                  ; preds = %if.end86.thread
  %117 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options95372 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %118, i32 0, i32 12
  %119 = ptrtoint ptr %s_alloc_options95372 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %s_alloc_options95372, align 4
  %121 = and i32 %120, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool98.not375 = icmp eq i32 %121, 0
  br i1 %tobool98.not375, label %if.end100.thread, label %if.end93.thread.print_sep.exit259_crit_edge

if.end93.thread.print_sep.exit259_crit_edge:      ; preds = %if.end93.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit259

if.then.i257:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit259

print_sep.exit259:                                ; preds = %if.then.i257, %if.end93.thread.print_sep.exit259_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.28) #8
  br label %if.end100

if.end100:                                        ; preds = %print_sep.exit259, %if.end93.if.end100_crit_edge
  %122 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options102 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %123, i32 0, i32 12
  %124 = ptrtoint ptr %s_alloc_options102 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %s_alloc_options102, align 4
  %126 = and i32 %125, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool105.not = icmp eq i32 %126, 0
  br i1 %tobool105.not, label %if.end100.if.end107_crit_edge, label %if.then.i262

if.end100.if.end107_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.end100.thread:                                 ; preds = %if.end93.thread
  %127 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_options102380 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %128, i32 0, i32 12
  %129 = ptrtoint ptr %s_alloc_options102380 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %s_alloc_options102380, align 4
  %131 = and i32 %130, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool105.not383 = icmp eq i32 %131, 0
  br i1 %tobool105.not383, label %if.end107.thread, label %if.end100.thread.print_sep.exit264_crit_edge

if.end100.thread.print_sep.exit264_crit_edge:     ; preds = %if.end100.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit264

if.then.i262:                                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit264

print_sep.exit264:                                ; preds = %if.then.i262, %if.end100.thread.print_sep.exit264_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.29) #8
  br label %if.end107

if.end107:                                        ; preds = %print_sep.exit264, %if.end100.if.end107_crit_edge
  %132 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %s_fs_info.i, align 16
  %preallocmin = getelementptr inbounds %struct.reiserfs_sb_info, ptr %133, i32 0, i32 12, i32 3
  %134 = ptrtoint ptr %preallocmin to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %preallocmin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp110.not = icmp eq i32 %135, 0
  br i1 %cmp110.not, label %if.end107.if.end115_crit_edge, label %if.then.i267

if.end107.if.end115_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.end107.thread:                                 ; preds = %if.end100.thread
  %136 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_fs_info.i, align 16
  %preallocmin388 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %137, i32 0, i32 12, i32 3
  %138 = ptrtoint ptr %preallocmin388 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %preallocmin388, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp110.not389 = icmp eq i32 %139, 0
  br i1 %cmp110.not389, label %if.end115.thread, label %if.end107.thread.print_sep.exit269_crit_edge

if.end107.thread.print_sep.exit269_crit_edge:     ; preds = %if.end107.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit269

if.then.i267:                                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit269

print_sep.exit269:                                ; preds = %if.then.i267, %if.end107.thread.print_sep.exit269_crit_edge
  %140 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %s_fs_info.i, align 16
  %preallocmin114 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %141, i32 0, i32 12, i32 3
  %142 = ptrtoint ptr %preallocmin114 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %preallocmin114, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.37, i32 noundef %143) #8
  br label %if.end115

if.end115:                                        ; preds = %print_sep.exit269, %if.end107.if.end115_crit_edge
  %144 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %s_fs_info.i, align 16
  %preallocsize = getelementptr inbounds %struct.reiserfs_sb_info, ptr %145, i32 0, i32 12, i32 4
  %146 = ptrtoint ptr %preallocsize to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %preallocsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %147)
  %cmp118.not = icmp eq i32 %147, 17
  br i1 %cmp118.not, label %if.end115.cleanup_crit_edge, label %if.then.i273

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end115.thread:                                 ; preds = %if.end107.thread
  %148 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %s_fs_info.i, align 16
  %preallocsize394 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %149, i32 0, i32 12, i32 4
  %150 = ptrtoint ptr %preallocsize394 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %preallocsize394, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %151)
  %cmp118.not395 = icmp eq i32 %151, 17
  br i1 %cmp118.not395, label %if.end115.thread.cleanup_crit_edge, label %if.end115.thread.print_sep.exit275_crit_edge

if.end115.thread.print_sep.exit275_crit_edge:     ; preds = %if.end115.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_sep.exit275

if.end115.thread.cleanup_crit_edge:               ; preds = %if.end115.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i273:                                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #8
  br label %print_sep.exit275

print_sep.exit275:                                ; preds = %if.then.i273, %if.end115.thread.print_sep.exit275_crit_edge
  %152 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %s_fs_info.i, align 16
  %preallocsize122 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %153, i32 0, i32 12, i32 4
  %154 = ptrtoint ptr %preallocsize122 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %preallocsize122, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.38, i32 noundef %155) #8
  br label %cleanup

cleanup:                                          ; preds = %print_sep.exit275, %if.end115.thread.cleanup_crit_edge, %if.end115.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_allocate_blocknrs(ptr noundef %hint, ptr nocapture noundef %new_blocknrs, i32 noundef %amount_needed, i32 noundef %reserved_by_us) local_unnamed_addr #0 align 64 {
entry:
  %off.i.i.i = alloca i32, align 4
  %id.addr.i.i.i = alloca i32, align 4
  %hash_in.i100.i = alloca i32, align 4
  %hash_in.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %th = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 4
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_rs, align 4
  %s_free_blocks = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %s_free_blocks, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %reserved_blocks = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 29
  %11 = ptrtoint ptr %reserved_blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reserved_blocks, align 4
  %sub = sub i32 %10, %12
  %sub2 = sub i32 %amount_needed, %reserved_by_us
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub2)
  %cmp = icmp ult i32 %sub, %sub2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %formatted_node = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 9
  %13 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %formatted_node, align 8
  %14 = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %14)
  %.not = icmp eq i8 %14, 64
  br i1 %.not, label %if.then7, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then7:                                         ; preds = %if.end
  %15 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hint, align 8
  %i_prealloc_count.i = getelementptr i8, ptr %16, i32 -232
  %17 = ptrtoint ptr %i_prealloc_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_prealloc_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp sgt i32 %18, 0
  br i1 %cmp.i, label %while.cond.preheader.i, label %if.then7.use_preallocated_list_if_available.exit_crit_edge

if.then7.use_preallocated_list_if_available.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_preallocated_list_if_available.exit

while.cond.preheader.i:                           ; preds = %if.then7
  %i_prealloc_block.i = getelementptr i8, ptr %16, i32 -236
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %new_blocknrs.addr.0.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ], [ %new_blocknrs, %while.cond.preheader.i ]
  %amount_needed.addr.0.i = phi i32 [ %dec5.i, %while.body.i.while.cond.i_crit_edge ], [ %amount_needed, %while.cond.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %amount_needed.addr.0.i)
  %tobool.not.i = icmp eq i32 %amount_needed.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.cleanup_crit_edge, label %while.body.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %19 = ptrtoint ptr %i_prealloc_block.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_prealloc_block.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %i_prealloc_block.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %new_blocknrs.addr.0.i, i32 1
  %21 = ptrtoint ptr %new_blocknrs.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %new_blocknrs.addr.0.i, align 4
  %22 = ptrtoint ptr %i_prealloc_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_prealloc_count.i, align 8
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %i_prealloc_count.i, align 8
  %dec5.i = add i32 %amount_needed.addr.0.i, -1
  %cmp8.i = icmp slt i32 %dec.i, 1
  br i1 %cmp8.i, label %if.then9.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.then9.i:                                       ; preds = %while.body.i
  %i_prealloc_list.i = getelementptr i8, ptr %16, i32 -228
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_prealloc_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then9.i.list_del.exit.i_crit_edge

if.then9.i.list_del.exit.i_crit_edge:             ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr i8, ptr %16, i32 -224
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %i_prealloc_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_prealloc_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then9.i.list_del.exit.i_crit_edge
  %30 = ptrtoint ptr %i_prealloc_list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %i_prealloc_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %16, i32 -224
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %use_preallocated_list_if_available.exit

use_preallocated_list_if_available.exit:          ; preds = %list_del.exit.i, %if.then7.use_preallocated_list_if_available.exit_crit_edge
  %amount_needed.addr.1.i = phi i32 [ %dec5.i, %list_del.exit.i ], [ %amount_needed, %if.then7.use_preallocated_list_if_available.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %amount_needed.addr.1.i)
  %cmp9 = icmp eq i32 %amount_needed.addr.1.i, 0
  br i1 %cmp9, label %use_preallocated_list_if_available.exit.cleanup_crit_edge, label %if.end11

use_preallocated_list_if_available.exit.cleanup_crit_edge: ; preds = %use_preallocated_list_if_available.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %use_preallocated_list_if_available.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub12 = sub i32 %amount_needed, %amount_needed.addr.1.i
  %add.ptr = getelementptr i32, ptr %new_blocknrs, i32 %sub12
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end.if.end13_crit_edge
  %new_blocknrs.addr.0 = phi ptr [ %new_blocknrs, %if.end.if.end13_crit_edge ], [ %add.ptr, %if.end11 ]
  %amount_needed.addr.0 = phi i32 [ %amount_needed, %if.end.if.end13_crit_edge ], [ %amount_needed.addr.1.i, %if.end11 ]
  %32 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %th, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %beg.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 5
  %36 = ptrtoint ptr %beg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %beg.i, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %37 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_rs.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %40, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %sub.i = add i32 %43, -1
  %end.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 6
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.i, ptr %end.i, align 4
  %45 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_alloc_options.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %s_alloc_options.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %s_alloc_options.i, align 4
  %and1.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i59 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i59, label %if.end13.if.end.i_crit_edge, label %if.then.i

if.end13.if.end.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end13
  %s_rs.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %s_rs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_rs.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %50, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  %border2.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %46, i32 0, i32 12, i32 2
  %54 = ptrtoint ptr %border2.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %border2.i.i, align 4
  %div.i.i = udiv i32 %53, %55
  %56 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i.i = load i8, ptr %formatted_node, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %div.i.i, -1
  %57 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.i.i, ptr %end.i, align 4
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %beg.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div.i.i, ptr %beg.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %if.then.i.i, %if.end13.if.end.i_crit_edge
  %59 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_alloc_options4.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %s_alloc_options4.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %s_alloc_options4.i, align 4
  %63 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool7.not.i = icmp eq i32 %63, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %displace_new_blocks.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %33, i32 0, i32 6
  %64 = ptrtoint ptr %displace_new_blocks.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i = load i8, ptr %displace_new_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool9.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i.i = and i8 %bf.load.i, 127
  %65 = ptrtoint ptr %displace_new_blocks.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %bf.clear.i.i, ptr %displace_new_blocks.i, align 4
  %66 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %beg.i, align 8
  %k_objectid.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 2, i32 1
  %call.i.i = tail call i32 @keyed_hash(ptr noundef %k_objectid.i.i, i32 noundef 4) #8
  %68 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %end.i, align 4
  %70 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %beg.i, align 8
  %sub.i29.i = sub i32 %69, %71
  %rem.i.i = urem i32 %call.i.i, %sub.i29.i
  %add.i.i = add i32 %rem.i.i, %67
  %search_start.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %72 = ptrtoint ptr %search_start.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add.i.i, ptr %search_start.i.i, align 8
  br label %determine_search_start.exit

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %73 = ptrtoint ptr %s_alloc_options4.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %s_alloc_options4.i, align 4
  %75 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool16.not.i = icmp eq i32 %75, 0
  br i1 %tobool16.not.i, label %if.end11.i.if.end26.i_crit_edge, label %land.lhs.true17.i

if.end11.i.if.end26.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

land.lhs.true17.i:                                ; preds = %if.end11.i
  %76 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load18.i = load i8, ptr %formatted_node, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load18.i)
  %tobool21.not.i = icmp sgt i8 %bf.load18.i, -1
  br i1 %tobool21.not.i, label %land.lhs.true22.i, label %land.lhs.true17.i.land.lhs.true32.i_crit_edge

land.lhs.true17.i.land.lhs.true32.i_crit_edge:    ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true32.i

land.lhs.true22.i:                                ; preds = %land.lhs.true17.i
  %block.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 1
  %77 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %block.i.i, align 8
  %79 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %33, align 4
  %s_fs_info.i.i32.i = getelementptr inbounds %struct.super_block, ptr %80, i32 0, i32 33
  %81 = ptrtoint ptr %s_fs_info.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i.i32.i, align 16
  %large_file_size.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %82, i32 0, i32 12, i32 1
  %83 = ptrtoint ptr %large_file_size.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %large_file_size.i.i, align 4
  %conv.i.i = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %78, i64 %conv.i.i)
  %cmp.i.not.i = icmp eq i64 %78, %conv.i.i
  br i1 %cmp.i.not.i, label %if.then25.i, label %land.lhs.true22.i.if.end26.i_crit_edge

land.lhs.true22.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then25.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #10
  %s_alloc_options.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %82, i32 0, i32 12
  %85 = ptrtoint ptr %s_alloc_options.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %s_alloc_options.i.i, align 4
  %87 = and i32 %86, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i35.i = icmp eq i32 %87, 0
  %88 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %beg.i, align 8
  %90 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hint, align 8
  %..i.i = select i1 %tobool.not.i35.i, i32 -260, i32 -264
  %k_objectid.i36.i = getelementptr i8, ptr %91, i32 %..i.i
  %call10.i.i = tail call i32 @keyed_hash(ptr noundef %k_objectid.i36.i, i32 noundef 4) #8
  %92 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %end.i, align 4
  %94 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %beg.i, align 8
  %sub13.i.i = sub i32 %93, %95
  %rem14.i.i = urem i32 %call10.i.i, %sub13.i.i
  %add15.i.i = add i32 %rem14.i.i, %89
  %96 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add15.i.i, ptr %96, align 8
  br label %determine_search_start.exit

if.end26.i:                                       ; preds = %land.lhs.true22.i.if.end26.i_crit_edge, %if.end11.i.if.end26.i_crit_edge
  %98 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load28.i.pr = load i8, ptr %formatted_node, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load28.i.pr)
  %tobool31.not.i = icmp sgt i8 %bf.load28.i.pr, -1
  br i1 %tobool31.not.i, label %if.end26.i.if.end39.i_crit_edge, label %if.end26.i.land.lhs.true32.i_crit_edge

if.end26.i.land.lhs.true32.i_crit_edge:           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true32.i

if.end26.i.if.end39.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

land.lhs.true32.i:                                ; preds = %if.end26.i.land.lhs.true32.i_crit_edge, %land.lhs.true17.i.land.lhs.true32.i_crit_edge
  %99 = ptrtoint ptr %s_alloc_options4.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %s_alloc_options4.i, align 4
  %101 = and i32 %100, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool37.not.i = icmp eq i32 %101, 0
  br i1 %tobool37.not.i, label %land.lhs.true32.i.if.end39.i_crit_edge, label %if.then38.i

land.lhs.true32.i.if.end39.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.then38.i:                                      ; preds = %land.lhs.true32.i
  %102 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hint, align 8
  %tobool.not.i38.i = icmp eq ptr %103, null
  br i1 %tobool.not.i38.i, label %if.then.i39.i, label %if.else.i43.i

if.then.i39.i:                                    ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #10
  %key.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 2
  br label %hash_formatted_node.exit.i

if.else.i43.i:                                    ; preds = %if.then38.i
  %104 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %33, align 4
  %s_fs_info.i.i41.i = getelementptr inbounds %struct.super_block, ptr %105, i32 0, i32 33
  %106 = ptrtoint ptr %s_fs_info.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_fs_info.i.i41.i, align 16
  %s_alloc_options.i42.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %107, i32 0, i32 12
  %108 = ptrtoint ptr %s_alloc_options.i42.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %s_alloc_options.i42.i, align 4
  %110 = and i32 %109, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool2.not.i.i = icmp eq i32 %110, 0
  br i1 %tobool2.not.i.i, label %if.else7.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.else.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %103, i32 -264
  br label %hash_formatted_node.exit.i

if.else7.i.i:                                     ; preds = %if.else.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  %k_objectid.i44.i = getelementptr i8, ptr %103, i32 -260
  br label %hash_formatted_node.exit.i

hash_formatted_node.exit.i:                       ; preds = %if.else7.i.i, %if.then3.i.i, %if.then.i39.i
  %hash_in.0.i.i = phi ptr [ %add.ptr.i.i.i, %if.then3.i.i ], [ %k_objectid.i44.i, %if.else7.i.i ], [ %key.i.i, %if.then.i39.i ]
  %111 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %beg.i, align 8
  %call13.i.i = tail call i32 @keyed_hash(ptr noundef %hash_in.0.i.i, i32 noundef 4) #8
  %113 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %end.i, align 4
  %115 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %beg.i, align 8
  %sub.i47.i = sub i32 %114, %116
  %rem.i48.i = urem i32 %call13.i.i, %sub.i47.i
  %add.i49.i = add i32 %rem.i48.i, %112
  %search_start.i50.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %117 = ptrtoint ptr %search_start.i50.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add.i49.i, ptr %search_start.i50.i, align 8
  br label %determine_search_start.exit

if.end39.i:                                       ; preds = %land.lhs.true32.i.if.end39.i_crit_edge, %if.end26.i.if.end39.i_crit_edge
  %tobool31.not.i107 = phi i1 [ false, %land.lhs.true32.i.if.end39.i_crit_edge ], [ true, %if.end26.i.if.end39.i_crit_edge ]
  %path1.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 3
  %118 = ptrtoint ptr %path1.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %path1.i.i, align 8
  %tobool.not.i51.i = icmp eq ptr %119, null
  br i1 %tobool.not.i51.i, label %if.end39.i.get_left_neighbor.exit.i_crit_edge, label %if.end.i.i

if.end39.i.get_left_neighbor.exit.i_crit_edge:    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_left_neighbor.exit.i

if.end.i.i:                                       ; preds = %if.end39.i
  %path_elements.i.i = getelementptr inbounds %struct.treepath, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %add.ptr.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %121
  %122 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %123, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %do.end.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.get_left_neighbor, ptr noundef nonnull @.str.48, i32 noundef 872, ptr noundef nonnull @__func__.get_left_neighbor) #11
  unreachable

do.end.i.i:                                       ; preds = %if.end.i.i
  %pe_position.i.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %121, i32 1
  %124 = ptrtoint ptr %pe_position.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pe_position.i.i.i, align 4
  %b_data.i.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 5
  %126 = ptrtoint ptr %b_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %b_data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %127, i32 24
  %arrayidx.i.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i.i, i32 %125
  %pos_in_item6.i.i = getelementptr inbounds %struct.treepath, ptr %119, i32 0, i32 3
  %128 = ptrtoint ptr %pos_in_item6.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pos_in_item6.i.i, align 4
  %ih_item_location.i.i.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i, i32 0, i32 3
  %130 = ptrtoint ptr %ih_item_location.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %131 = load i16, ptr %ih_item_location.i.i.i.i.i, align 1
  %132 = tail call i16 @llvm.bswap.i16(i16 %131) #8
  %conv.i.i.i.i.i = zext i16 %132 to i32
  %add.ptr.i.i.i52.i.i = getelementptr i8, ptr %127, i32 %conv.i.i.i.i.i
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 3
  %133 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %b_blocknr.i.i, align 8
  %conv.i52.i = trunc i64 %134 to i32
  %search_start.i53.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %135 = ptrtoint ptr %search_start.i53.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv.i52.i, ptr %search_start.i53.i, align 8
  br i1 %tobool31.not.i107, label %land.lhs.true.i.i, label %get_left_neighbor.exit.thread.i

land.lhs.true.i.i:                                ; preds = %do.end.i.i
  %ih_version.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i, i32 0, i32 4
  %136 = ptrtoint ptr %ih_version.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 2)
  %137 = load i16, ptr %ih_version.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %cmp.i.i.i.i.i = icmp eq i16 %137, 0
  %u.i.i.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i.i, label %is_indirect_le_ih.exit.i.i, label %if.else.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  %138 = ptrtoint ptr %u.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 8)
  %139 = load i64, ptr %u.i.i.i.i.i, align 1
  %140 = and i64 %139, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %140)
  %phi.cmp1.i.i.i.i = icmp eq i64 %140, 16
  br i1 %phi.cmp1.i.i.i.i, label %if.else.i.i.i.i.i.if.then11.i.i_crit_edge, label %if.else.i.i.i.i.i.get_left_neighbor.exit.i_crit_edge

if.else.i.i.i.i.i.get_left_neighbor.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_left_neighbor.exit.i

if.else.i.i.i.i.i.if.then11.i.i_crit_edge:        ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

is_indirect_le_ih.exit.i.i:                       ; preds = %land.lhs.true.i.i
  %k_uniqueness.i.i.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %k_uniqueness.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %k_uniqueness.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %142)
  %cond.i.i.i.i = icmp eq i32 %142, -16777217
  br i1 %cond.i.i.i.i, label %is_indirect_le_ih.exit.i.i.if.then11.i.i_crit_edge, label %is_indirect_le_ih.exit.i.i.get_left_neighbor.exit.i_crit_edge

is_indirect_le_ih.exit.i.i.get_left_neighbor.exit.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_left_neighbor.exit.i

is_indirect_le_ih.exit.i.i.if.then11.i.i_crit_edge: ; preds = %is_indirect_le_ih.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %is_indirect_le_ih.exit.i.i.if.then11.i.i_crit_edge, %if.else.i.i.i.i.i.if.then11.i.i_crit_edge
  %ih_item_len.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i.i, i32 0, i32 2
  %143 = ptrtoint ptr %ih_item_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 2)
  %144 = load i16, ptr %ih_item_len.i.i, align 1
  %145 = tail call i16 @llvm.bswap.i16(i16 %144) #8
  %146 = lshr i16 %145, 2
  %div.i56.i = zext i16 %146 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %div.i56.i)
  %cmp.i57.i = icmp eq i32 %129, %div.i56.i
  %dec.i.i = sext i1 %cmp.i57.i to i32
  %spec.select.i.i = add i32 %129, %dec.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select.i.i)
  %cmp1657.i.i = icmp sgt i32 %spec.select.i.i, -1
  br i1 %cmp1657.i.i, label %if.then11.i.i.while.body.i.i_crit_edge, label %if.then11.i.i.get_left_neighbor.exit.i_crit_edge

if.then11.i.i.get_left_neighbor.exit.i_crit_edge: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_left_neighbor.exit.i

if.then11.i.i.while.body.i.i_crit_edge:           ; preds = %if.then11.i.i
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %dec24.i.i = add nsw i32 %pos_in_item.158.i.i, -1
  %cmp16.i.i = icmp sgt i32 %pos_in_item.158.i.i, 0
  br i1 %cmp16.i.i, label %while.cond.i.i.while.body.i.i_crit_edge, label %while.cond.i.i.get_left_neighbor.exit.i_crit_edge

while.cond.i.i.get_left_neighbor.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_left_neighbor.exit.i

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %if.then11.i.i.while.body.i.i_crit_edge
  %pos_in_item.158.i.i = phi i32 [ %dec24.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ %spec.select.i.i, %if.then11.i.i.while.body.i.i_crit_edge ]
  %add.ptr18.i.i = getelementptr i32, ptr %add.ptr.i.i.i52.i.i, i32 %pos_in_item.158.i.i
  %147 = ptrtoint ptr %add.ptr18.i.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %add.ptr18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool20.not.i.i = icmp eq i32 %148, 0
  br i1 %tobool20.not.i.i, label %while.cond.i.i, label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #8
  %150 = ptrtoint ptr %search_start.i53.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %search_start.i53.i, align 8
  br label %get_left_neighbor.exit.i

get_left_neighbor.exit.i:                         ; preds = %cleanup.thread.i.i, %while.cond.i.i.get_left_neighbor.exit.i_crit_edge, %if.then11.i.i.get_left_neighbor.exit.i_crit_edge, %is_indirect_le_ih.exit.i.i.get_left_neighbor.exit.i_crit_edge, %if.else.i.i.i.i.i.get_left_neighbor.exit.i_crit_edge, %if.end39.i.get_left_neighbor.exit.i_crit_edge
  %tobool96.not158.i = phi i1 [ true, %if.end39.i.get_left_neighbor.exit.i_crit_edge ], [ true, %if.else.i.i.i.i.i.get_left_neighbor.exit.i_crit_edge ], [ true, %is_indirect_le_ih.exit.i.i.get_left_neighbor.exit.i_crit_edge ], [ true, %if.then11.i.i.get_left_neighbor.exit.i_crit_edge ], [ false, %cleanup.thread.i.i ], [ true, %while.cond.i.i.get_left_neighbor.exit.i_crit_edge ]
  %151 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_alloc_options42.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %152, i32 0, i32 12
  %153 = ptrtoint ptr %s_alloc_options42.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %s_alloc_options42.i, align 4
  %155 = and i32 %154, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool45.not.i = icmp eq i32 %155, 0
  br i1 %tobool45.not.i, label %if.end76.i, label %if.then46.i

get_left_neighbor.exit.thread.i:                  ; preds = %do.end.i.i
  %156 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_alloc_options42151.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %157, i32 0, i32 12
  %158 = ptrtoint ptr %s_alloc_options42151.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %s_alloc_options42151.i, align 4
  %160 = and i32 %159, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool45.not154.i = icmp eq i32 %160, 0
  br i1 %tobool45.not154.i, label %if.end76.thread.i, label %get_left_neighbor.exit.thread.i.determine_search_start.exit_crit_edge

get_left_neighbor.exit.thread.i.determine_search_start.exit_crit_edge: ; preds = %get_left_neighbor.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_search_start.exit

if.then46.i:                                      ; preds = %get_left_neighbor.exit.i
  br i1 %tobool31.not.i107, label %if.then52.i, label %if.then46.i.determine_search_start.exit_crit_edge

if.then46.i.determine_search_start.exit_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_search_start.exit

if.then52.i:                                      ; preds = %if.then46.i
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %152, i32 0, i32 11
  %161 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %162, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool54.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool54.not.i, label %lor.lhs.false.i.i, label %if.else.i

lor.lhs.false.i.i:                                ; preds = %if.then52.i
  %163 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hint, align 8
  %cmp.i63.i = icmp eq ptr %164, null
  br i1 %cmp.i63.i, label %lor.lhs.false.i.i.determine_search_start.exit_crit_edge, label %if.end.i71.i

lor.lhs.false.i.i.determine_search_start.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_search_start.exit

if.end.i71.i:                                     ; preds = %lor.lhs.false.i.i
  %165 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %beg.i, align 8
  %add.ptr.i.i65.i = getelementptr i8, ptr %164, i32 -264
  %167 = ptrtoint ptr %add.ptr.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr.i.i65.i, align 8
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #8
  %170 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %end.i, align 4
  %sub.i67.i = sub i32 %171, %166
  %rem.i68.i = urem i32 %169, %sub.i67.i
  %add.i69.i = add i32 %rem.i68.i, %166
  %search_start.i70.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %172 = ptrtoint ptr %search_start.i70.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %search_start.i70.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i69.i, i32 %173)
  %cmp3.i.i = icmp ugt i32 %add.i69.i, %173
  br i1 %cmp3.i.i, label %if.then4.i72.i, label %if.end.i71.i.if.end64.i_crit_edge

if.end.i71.i.if.end64.i_crit_edge:                ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.then4.i72.i:                                   ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  %174 = ptrtoint ptr %search_start.i70.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add.i69.i, ptr %search_start.i70.i, align 8
  br label %if.end64.i

if.else.i:                                        ; preds = %if.then52.i
  %and59.i = and i32 %162, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %lor.lhs.false.i78.i, label %if.else.i.if.end64.i_crit_edge

if.else.i.if.end64.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

lor.lhs.false.i78.i:                              ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash_in.i.i) #8
  %175 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hint, align 8
  %cmp.i77.i = icmp eq ptr %176, null
  br i1 %cmp.i77.i, label %lor.lhs.false.i78.i.old_hashed_relocation.exit.i_crit_edge, label %if.end.i85.i

lor.lhs.false.i78.i.old_hashed_relocation.exit.i_crit_edge: ; preds = %lor.lhs.false.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %old_hashed_relocation.exit.i

if.end.i85.i:                                     ; preds = %lor.lhs.false.i78.i
  %add.ptr.i.i79.i = getelementptr i8, ptr %176, i32 -264
  %177 = ptrtoint ptr %add.ptr.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %add.ptr.i.i79.i, align 8
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #8
  %180 = ptrtoint ptr %hash_in.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %hash_in.i.i, align 4
  %181 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %beg.i, align 8
  %call2.i.i = call i32 @keyed_hash(ptr noundef nonnull %hash_in.i.i, i32 noundef 4) #8
  %183 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %end.i, align 4
  %185 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %beg.i, align 8
  %187 = xor i32 %186, -1
  %sub4.i.i = add i32 %184, %187
  %rem.i82.i = urem i32 %call2.i.i, %sub4.i.i
  %add.i83.i = add i32 %rem.i82.i, %182
  %search_start.i84.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %188 = ptrtoint ptr %search_start.i84.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %search_start.i84.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i83.i, i32 %189)
  %cmp5.i.i = icmp ugt i32 %add.i83.i, %189
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i85.i.old_hashed_relocation.exit.i_crit_edge

if.end.i85.i.old_hashed_relocation.exit.i_crit_edge: ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %old_hashed_relocation.exit.i

if.then6.i.i:                                     ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  %190 = ptrtoint ptr %search_start.i84.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %add.i83.i, ptr %search_start.i84.i, align 8
  br label %old_hashed_relocation.exit.i

old_hashed_relocation.exit.i:                     ; preds = %if.then6.i.i, %if.end.i85.i.old_hashed_relocation.exit.i_crit_edge, %lor.lhs.false.i78.i.old_hashed_relocation.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash_in.i.i) #8
  br label %if.end64.i

if.end64.i:                                       ; preds = %old_hashed_relocation.exit.i, %if.else.i.if.end64.i_crit_edge, %if.then4.i72.i, %if.end.i71.i.if.end64.i_crit_edge
  %191 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %191)
  %.pr.i = load ptr, ptr %hint, align 8
  %tobool65.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool65.not.i, label %if.end64.i.determine_search_start.exit_crit_edge, label %land.lhs.true66.i

if.end64.i.determine_search_start.exit_crit_edge: ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_search_start.exit

land.lhs.true66.i:                                ; preds = %if.end64.i
  %search_start.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %192 = ptrtoint ptr %search_start.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %search_start.i, align 8
  %i_prealloc_block.i60 = getelementptr i8, ptr %.pr.i, i32 -236
  %194 = ptrtoint ptr %i_prealloc_block.i60 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %i_prealloc_block.i60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %195)
  %cmp.i61 = icmp ult i32 %193, %195
  br i1 %cmp.i61, label %if.then69.i, label %land.lhs.true66.i.determine_search_start.exit_crit_edge

land.lhs.true66.i.determine_search_start.exit_crit_edge: ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_search_start.exit

if.then69.i:                                      ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %search_start.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %search_start.i, align 8
  br label %determine_search_start.exit

if.end76.i:                                       ; preds = %get_left_neighbor.exit.i
  %197 = ptrtoint ptr %s_alloc_options42.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %s_alloc_options42.i, align 4
  %199 = and i32 %198, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool81.not.i = icmp eq i32 %199, 0
  br i1 %tobool81.not.i, label %if.end95.i, label %land.lhs.true82.i

if.end76.thread.i:                                ; preds = %get_left_neighbor.exit.thread.i
  %200 = ptrtoint ptr %s_alloc_options42151.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %s_alloc_options42151.i, align 4
  %202 = and i32 %201, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool81.not178.i = icmp eq i32 %202, 0
  br i1 %tobool81.not178.i, label %if.end76.thread.i.land.lhs.true118.i_crit_edge, label %land.lhs.true82.thread.i

if.end76.thread.i.land.lhs.true118.i_crit_edge:   ; preds = %if.end76.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true118.i

land.lhs.true82.i:                                ; preds = %if.end76.i
  %203 = ptrtoint ptr %s_alloc_options42.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %s_alloc_options42.i, align 4
  %205 = and i32 %204, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool87.not.i = icmp ne i32 %205, 0
  %206 = and i1 %tobool31.not.i107, %tobool87.not.i
  br i1 %206, label %if.end95.thread.i, label %land.lhs.true82.i.if.then94.i_crit_edge

land.lhs.true82.i.if.then94.i_crit_edge:          ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94.i

land.lhs.true82.thread.i:                         ; preds = %if.end76.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %207 = ptrtoint ptr %s_alloc_options42151.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %s_alloc_options42151.i, align 4
  br label %if.then94.i

if.then94.i:                                      ; preds = %land.lhs.true82.thread.i, %land.lhs.true82.i.if.then94.i_crit_edge
  %key1.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 2
  %call.i90.i = tail call i32 @keyed_hash(ptr noundef %key1.i.i, i32 noundef 4) #8
  %rem.i91.i = urem i32 %call.i90.i, 100
  %209 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %end.i, align 4
  %div.i93.i = udiv i32 %210, 100
  %mul.i.i = mul nuw i32 %div.i93.i, %rem.i91.i
  %search_start.i94.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %211 = ptrtoint ptr %search_start.i94.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %search_start.i94.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %212)
  %cmp.i95.i = icmp ule i32 %mul.i.i, %212
  %add.i96.i = add nuw i32 %mul.i.i, %div.i93.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i96.i, i32 %212)
  %cmp5.not.i.i = icmp ugt i32 %add.i96.i, %212
  %or.cond.i.i = and i1 %cmp.i95.i, %cmp5.not.i.i
  br i1 %or.cond.i.i, label %if.then94.i.determine_search_start.exit_crit_edge, label %if.then.i97.i

if.then94.i.determine_search_start.exit_crit_edge: ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_search_start.exit

if.then.i97.i:                                    ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #10
  %213 = ptrtoint ptr %search_start.i94.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %mul.i.i, ptr %search_start.i94.i, align 8
  br label %determine_search_start.exit

if.end95.i:                                       ; preds = %if.end76.i
  br i1 %tobool96.not158.i, label %land.lhs.true97.i, label %lor.lhs.false.critedge.i

if.end95.thread.i:                                ; preds = %land.lhs.true82.i
  br i1 %tobool96.not158.i, label %if.end95.thread.i.land.lhs.true103.i_crit_edge, label %if.end95.thread.i.if.end140.i_crit_edge

if.end95.thread.i.if.end140.i_crit_edge:          ; preds = %if.end95.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140.i

if.end95.thread.i.land.lhs.true103.i_crit_edge:   ; preds = %if.end95.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true103.i

land.lhs.true97.i:                                ; preds = %if.end95.i
  br i1 %tobool31.not.i107, label %land.lhs.true97.i.land.lhs.true103.i_crit_edge, label %land.lhs.true97.i.land.lhs.true118.i_crit_edge

land.lhs.true97.i.land.lhs.true118.i_crit_edge:   ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true118.i

land.lhs.true97.i.land.lhs.true103.i_crit_edge:   ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true103.i

land.lhs.true103.i:                               ; preds = %land.lhs.true97.i.land.lhs.true103.i_crit_edge, %if.end95.thread.i.land.lhs.true103.i_crit_edge
  %214 = ptrtoint ptr %s_alloc_options42.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %s_alloc_options42.i, align 4
  %216 = and i32 %215, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool108.not.i = icmp eq i32 %216, 0
  br i1 %tobool108.not.i, label %land.lhs.true103.i.land.lhs.true118.i_crit_edge, label %lor.lhs.false.i105.i

land.lhs.true103.i.land.lhs.true118.i_crit_edge:  ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true118.i

lor.lhs.false.i105.i:                             ; preds = %land.lhs.true103.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash_in.i100.i) #8
  %217 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hint, align 8
  %cmp.i104.i = icmp eq ptr %218, null
  br i1 %cmp.i104.i, label %lor.lhs.false.i105.i.old_hashed_relocation.exit117.i_crit_edge, label %if.end.i115.i

lor.lhs.false.i105.i.old_hashed_relocation.exit117.i_crit_edge: ; preds = %lor.lhs.false.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %old_hashed_relocation.exit117.i

if.end.i115.i:                                    ; preds = %lor.lhs.false.i105.i
  %add.ptr.i.i106.i = getelementptr i8, ptr %218, i32 -264
  %219 = ptrtoint ptr %add.ptr.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %add.ptr.i.i106.i, align 8
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #8
  %222 = ptrtoint ptr %hash_in.i100.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %hash_in.i100.i, align 4
  %223 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %beg.i, align 8
  %call2.i108.i = call i32 @keyed_hash(ptr noundef nonnull %hash_in.i100.i, i32 noundef 4) #8
  %225 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %end.i, align 4
  %227 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %beg.i, align 8
  %229 = xor i32 %228, -1
  %sub4.i110.i = add i32 %226, %229
  %rem.i111.i = urem i32 %call2.i108.i, %sub4.i110.i
  %add.i112.i = add i32 %rem.i111.i, %224
  %search_start.i113.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %230 = ptrtoint ptr %search_start.i113.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %search_start.i113.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i112.i, i32 %231)
  %cmp5.i114.i = icmp ugt i32 %add.i112.i, %231
  br i1 %cmp5.i114.i, label %if.then6.i116.i, label %if.end.i115.i.old_hashed_relocation.exit117.i_crit_edge

if.end.i115.i.old_hashed_relocation.exit117.i_crit_edge: ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %old_hashed_relocation.exit117.i

if.then6.i116.i:                                  ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #10
  %232 = ptrtoint ptr %search_start.i113.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %add.i112.i, ptr %search_start.i113.i, align 8
  br label %old_hashed_relocation.exit117.i

old_hashed_relocation.exit117.i:                  ; preds = %if.then6.i116.i, %if.end.i115.i.old_hashed_relocation.exit117.i_crit_edge, %lor.lhs.false.i105.i.old_hashed_relocation.exit117.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash_in.i100.i) #8
  br label %land.lhs.true118.i

lor.lhs.false.critedge.i:                         ; preds = %if.end95.i
  br i1 %tobool31.not.i107, label %lor.lhs.false.critedge.i.if.end140.i_crit_edge, label %land.lhs.true118.thread.i

lor.lhs.false.critedge.i.if.end140.i_crit_edge:   ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140.i

land.lhs.true118.i:                               ; preds = %old_hashed_relocation.exit117.i, %land.lhs.true103.i.land.lhs.true118.i_crit_edge, %land.lhs.true97.i.land.lhs.true118.i_crit_edge, %if.end76.thread.i.land.lhs.true118.i_crit_edge
  %233 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_alloc_options120.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %234, i32 0, i32 12
  %235 = ptrtoint ptr %s_alloc_options120.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %s_alloc_options120.i, align 4
  %237 = and i32 %236, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool123.not.i = icmp eq i32 %237, 0
  br i1 %tobool123.not.i, label %land.lhs.true118.i.land.lhs.true127.i_crit_edge, label %land.lhs.true118.i.if.then124.i_crit_edge

land.lhs.true118.i.if.then124.i_crit_edge:        ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then124.i

land.lhs.true118.i.land.lhs.true127.i_crit_edge:  ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true127.i

land.lhs.true118.thread.i:                        ; preds = %lor.lhs.false.critedge.i
  %238 = ptrtoint ptr %s_alloc_options42.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %s_alloc_options42.i, align 4
  %240 = and i32 %239, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool123.not205.i = icmp eq i32 %240, 0
  br i1 %tobool123.not205.i, label %land.lhs.true118.thread.i.if.end140.i_crit_edge, label %land.lhs.true118.thread.i.if.then124.i_crit_edge

land.lhs.true118.thread.i.if.then124.i_crit_edge: ; preds = %land.lhs.true118.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then124.i

land.lhs.true118.thread.i.if.end140.i_crit_edge:  ; preds = %land.lhs.true118.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140.i

if.then124.i:                                     ; preds = %land.lhs.true118.thread.i.if.then124.i_crit_edge, %land.lhs.true118.i.if.then124.i_crit_edge
  %tobool96.not159206.i = phi i1 [ false, %land.lhs.true118.thread.i.if.then124.i_crit_edge ], [ true, %land.lhs.true118.i.if.then124.i_crit_edge ]
  %241 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %241)
  %bf.load.i120.i = load i8, ptr %formatted_node, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i120.i)
  %tobool.not.i121.i = icmp sgt i8 %bf.load.i120.i, -1
  br i1 %tobool.not.i121.i, label %if.else.i124.i, label %if.then.i123.i

if.then.i123.i:                                   ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #10
  %key.i122.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 2
  br label %new_hashed_relocation.exit.i

if.else.i124.i:                                   ; preds = %if.then124.i
  %242 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %hint, align 8
  %tobool1.not.i.i = icmp eq ptr %243, null
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.else5.i.i

if.then2.i.i:                                     ; preds = %if.else.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  %key3.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 2
  br label %new_hashed_relocation.exit.i

if.else5.i.i:                                     ; preds = %if.else.i124.i
  %244 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %th, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 4
  %s_fs_info.i.i126.i = getelementptr inbounds %struct.super_block, ptr %247, i32 0, i32 33
  %248 = ptrtoint ptr %s_fs_info.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %s_fs_info.i.i126.i, align 16
  %s_alloc_options.i127.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %249, i32 0, i32 12
  %250 = ptrtoint ptr %s_alloc_options.i127.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %s_alloc_options.i127.i, align 4
  %252 = and i32 %251, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool7.not.i.i = icmp eq i32 %252, 0
  br i1 %tobool7.not.i.i, label %if.else12.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i128.i = getelementptr i8, ptr %243, i32 -264
  br label %new_hashed_relocation.exit.i

if.else12.i.i:                                    ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %k_objectid.i129.i = getelementptr i8, ptr %243, i32 -260
  br label %new_hashed_relocation.exit.i

new_hashed_relocation.exit.i:                     ; preds = %if.else12.i.i, %if.then8.i.i, %if.then2.i.i, %if.then.i123.i
  %hash_in.0.i130.i = phi ptr [ %key.i122.i, %if.then.i123.i ], [ %add.ptr.i.i128.i, %if.then8.i.i ], [ %k_objectid.i129.i, %if.else12.i.i ], [ %key3.i.i, %if.then2.i.i ]
  %253 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %beg.i, align 8
  %call19.i.i = call i32 @keyed_hash(ptr noundef %hash_in.0.i130.i, i32 noundef 4) #8
  %255 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %end.i, align 4
  %257 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %beg.i, align 8
  %sub.i133.i = sub i32 %256, %258
  %rem.i134.i = urem i32 %call19.i.i, %sub.i133.i
  %add.i135.i = add i32 %rem.i134.i, %254
  %search_start.i136.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %259 = ptrtoint ptr %search_start.i136.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %add.i135.i, ptr %search_start.i136.i, align 8
  br i1 %tobool96.not159206.i, label %new_hashed_relocation.exit.i.land.lhs.true127.i_crit_edge, label %new_hashed_relocation.exit.i.if.end140.i_crit_edge

new_hashed_relocation.exit.i.if.end140.i_crit_edge: ; preds = %new_hashed_relocation.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140.i

new_hashed_relocation.exit.i.land.lhs.true127.i_crit_edge: ; preds = %new_hashed_relocation.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true127.i

land.lhs.true127.i:                               ; preds = %new_hashed_relocation.exit.i.land.lhs.true127.i_crit_edge, %land.lhs.true118.i.land.lhs.true127.i_crit_edge
  %260 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %260)
  %bf.load129.i = load i8, ptr %formatted_node, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load129.i)
  %tobool132.not.i = icmp sgt i8 %bf.load129.i, -1
  br i1 %tobool132.not.i, label %land.lhs.true133.i, label %land.lhs.true127.i.land.lhs.true146.i_crit_edge

land.lhs.true127.i.land.lhs.true146.i_crit_edge:  ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true146.i

land.lhs.true133.i:                               ; preds = %land.lhs.true127.i
  %261 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_alloc_options135.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %262, i32 0, i32 12
  %263 = ptrtoint ptr %s_alloc_options135.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load volatile i32, ptr %s_alloc_options135.i, align 4
  %265 = and i32 %264, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool138.not.i = icmp eq i32 %265, 0
  br i1 %tobool138.not.i, label %land.lhs.true133.i.if.end140.i_crit_edge, label %if.then139.i

land.lhs.true133.i.if.end140.i_crit_edge:         ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140.i

if.then139.i:                                     ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @dirid_groups(ptr noundef %hint) #8
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then139.i, %land.lhs.true133.i.if.end140.i_crit_edge, %new_hashed_relocation.exit.i.if.end140.i_crit_edge, %land.lhs.true118.thread.i.if.end140.i_crit_edge, %lor.lhs.false.critedge.i.if.end140.i_crit_edge, %if.end95.thread.i.if.end140.i_crit_edge
  %tobool96.not160167.ph.i = phi i1 [ false, %new_hashed_relocation.exit.i.if.end140.i_crit_edge ], [ true, %land.lhs.true133.i.if.end140.i_crit_edge ], [ true, %if.then139.i ], [ false, %lor.lhs.false.critedge.i.if.end140.i_crit_edge ], [ false, %if.end95.thread.i.if.end140.i_crit_edge ], [ false, %land.lhs.true118.thread.i.if.end140.i_crit_edge ]
  %266 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %266)
  %bf.load142.pr.i = load i8, ptr %formatted_node, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load142.pr.i)
  %tobool145.not.i = icmp sgt i8 %bf.load142.pr.i, -1
  br i1 %tobool145.not.i, label %if.end140.i.if.end153.i_crit_edge, label %if.end140.i.land.lhs.true146.i_crit_edge

if.end140.i.land.lhs.true146.i_crit_edge:         ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true146.i

if.end140.i.if.end153.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153.i

land.lhs.true146.i:                               ; preds = %if.end140.i.land.lhs.true146.i_crit_edge, %land.lhs.true127.i.land.lhs.true146.i_crit_edge
  %tobool96.not160167172.i = phi i1 [ %tobool96.not160167.ph.i, %if.end140.i.land.lhs.true146.i_crit_edge ], [ true, %land.lhs.true127.i.land.lhs.true146.i_crit_edge ]
  %267 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_alloc_options148.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %268, i32 0, i32 12
  %269 = ptrtoint ptr %s_alloc_options148.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load volatile i32, ptr %s_alloc_options148.i, align 4
  %271 = and i32 %270, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool151.not.i = icmp eq i32 %271, 0
  br i1 %tobool151.not.i, label %land.lhs.true146.i.if.end153.i_crit_edge, label %if.then152.i

land.lhs.true146.i.if.end153.i_crit_edge:         ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153.i

if.then152.i:                                     ; preds = %land.lhs.true146.i
  call fastcc void @dirid_groups(ptr noundef %hint) #8
  br i1 %tobool96.not160167172.i, label %if.then152.i.land.lhs.true155.i_crit_edge, label %if.then152.i.determine_search_start.exit_crit_edge

if.then152.i.determine_search_start.exit_crit_edge: ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_search_start.exit

if.then152.i.land.lhs.true155.i_crit_edge:        ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.i

if.end153.i:                                      ; preds = %land.lhs.true146.i.if.end153.i_crit_edge, %if.end140.i.if.end153.i_crit_edge
  %tobool96.not160167173.i = phi i1 [ %tobool96.not160167172.i, %land.lhs.true146.i.if.end153.i_crit_edge ], [ %tobool96.not160167.ph.i, %if.end140.i.if.end153.i_crit_edge ]
  br i1 %tobool96.not160167173.i, label %if.end153.i.land.lhs.true155.i_crit_edge, label %if.end153.i.determine_search_start.exit_crit_edge

if.end153.i.determine_search_start.exit_crit_edge: ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_search_start.exit

if.end153.i.land.lhs.true155.i_crit_edge:         ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true155.i

land.lhs.true155.i:                               ; preds = %if.end153.i.land.lhs.true155.i_crit_edge, %if.then152.i.land.lhs.true155.i_crit_edge
  %272 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %272)
  %bf.load157.i = load i8, ptr %formatted_node, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load157.i)
  %tobool160.not.i = icmp sgt i8 %bf.load157.i, -1
  br i1 %tobool160.not.i, label %land.lhs.true161.i, label %land.lhs.true155.i.determine_search_start.exit_crit_edge

land.lhs.true155.i.determine_search_start.exit_crit_edge: ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_search_start.exit

land.lhs.true161.i:                               ; preds = %land.lhs.true155.i
  %273 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_alloc_options163.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %274, i32 0, i32 12
  %275 = ptrtoint ptr %s_alloc_options163.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile i32, ptr %s_alloc_options163.i, align 4
  %277 = and i32 %276, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool166.not.i = icmp eq i32 %277, 0
  br i1 %tobool166.not.i, label %land.lhs.true161.i.determine_search_start.exit_crit_edge, label %if.then167.i

land.lhs.true161.i.determine_search_start.exit_crit_edge: ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_search_start.exit

if.then167.i:                                     ; preds = %land.lhs.true161.i
  %278 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %hint, align 8
  %tobool.not.i140.i = icmp eq ptr %279, null
  br i1 %tobool.not.i140.i, label %if.then167.i.determine_search_start.exit_crit_edge, label %if.then.i143.i

if.then167.i.determine_search_start.exit_crit_edge: ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_search_start.exit

if.then.i143.i:                                   ; preds = %if.then167.i
  %add.ptr.i.i141.i = getelementptr i8, ptr %279, i32 -264
  %280 = ptrtoint ptr %add.ptr.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %add.ptr.i.i141.i, align 8
  %282 = call i32 @llvm.bswap.i32(i32 %281) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %282)
  %cmp.i142.i = icmp ult i32 %282, 3
  br i1 %cmp.i142.i, label %if.then2.i144.i, label %if.else.i146.i

if.then2.i144.i:                                  ; preds = %if.then.i143.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %279, i32 0, i32 8
  %283 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %i_sb.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %284, i32 0, i32 3
  %285 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %s_blocksize.i.i, align 16
  %shl.i.i = shl i32 %286, 3
  br label %if.end.i149.i

if.else.i146.i:                                   ; preds = %if.then.i143.i
  %k_objectid.i145.i = getelementptr i8, ptr %279, i32 -260
  %287 = ptrtoint ptr %k_objectid.i145.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %k_objectid.i145.i, align 4
  %289 = call i32 @llvm.bswap.i32(i32 %288) #8
  %i_sb9.i.i = getelementptr inbounds %struct.inode, ptr %279, i32 0, i32 8
  %290 = ptrtoint ptr %i_sb9.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %i_sb9.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.addr.i.i.i) #8
  %292 = ptrtoint ptr %id.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %289, ptr %id.addr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %289)
  %cmp.i.i.i = icmp ult i32 %289, 3
  br i1 %cmp.i.i.i, label %if.else.i146.i.bmap_hash_id.exit.i.i_crit_edge, label %if.else.i.i.i

if.else.i146.i.bmap_hash_id.exit.i.i_crit_edge:   ; preds = %if.else.i146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmap_hash_id.exit.i.i

if.else.i.i.i:                                    ; preds = %if.else.i146.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i62 = call i32 @keyed_hash(ptr noundef nonnull %id.addr.i.i.i, i32 noundef 4) #8
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %291, i32 0, i32 33
  %293 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %s_rs.i.i.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %294, i32 0, i32 1
  %295 = ptrtoint ptr %s_rs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %s_rs.i.i.i.i, align 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_loadN_noabort(i32 %297, i32 4)
  %298 = load i32, ptr %296, align 1
  %299 = call i32 @llvm.bswap.i32(i32 %298) #8
  %sub.i.i.i.i = add i32 %299, -1
  %s_blocksize.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %291, i32 0, i32 3
  %300 = ptrtoint ptr %s_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %s_blocksize.i.i.i.i, align 16
  %mul.i.i.i.i = shl i32 %301, 3
  %div.i.i.i.i = udiv i32 %sub.i.i.i.i, %mul.i.i.i.i
  %add.i.i.i.i = add i32 %div.i.i.i.i, 1
  %rem.i.i.i = urem i32 %call.i.i.i62, %add.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  %spec.store.select.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 %rem.i.i.i
  br label %bmap_hash_id.exit.i.i

bmap_hash_id.exit.i.i:                            ; preds = %if.else.i.i.i, %if.else.i146.i.bmap_hash_id.exit.i.i_crit_edge
  %bm.0.i.i.i = phi i32 [ %spec.store.select.i.i.i, %if.else.i.i.i ], [ 1, %if.else.i146.i.bmap_hash_id.exit.i.i_crit_edge ]
  %s_fs_info.i.i11.i.i.i = getelementptr inbounds %struct.super_block, ptr %291, i32 0, i32 33
  %302 = ptrtoint ptr %s_fs_info.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %s_fs_info.i.i11.i.i.i, align 16
  %s_rs.i12.i.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %303, i32 0, i32 1
  %304 = ptrtoint ptr %s_rs.i12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %s_rs.i12.i.i.i, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_loadN_noabort(i32 %306, i32 4)
  %307 = load i32, ptr %305, align 1
  %308 = call i32 @llvm.bswap.i32(i32 %307) #8
  %sub.i13.i.i.i = add i32 %308, -1
  %s_blocksize.i14.i.i.i = getelementptr inbounds %struct.super_block, ptr %291, i32 0, i32 3
  %309 = ptrtoint ptr %s_blocksize.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %s_blocksize.i14.i.i.i, align 16
  %mul.i15.i.i.i = shl i32 %310, 3
  %div.i16.i.i.i = udiv i32 %sub.i13.i.i.i, %mul.i15.i.i.i
  %add.i17.i.i.i = add i32 %div.i16.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bm.0.i.i.i, i32 %add.i17.i.i.i)
  %cmp5.not.i.i.i = icmp ult i32 %bm.0.i.i.i, %add.i17.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.addr.i.i.i) #8
  %311 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %hint, align 8
  %i_sb12.i.i = getelementptr inbounds %struct.inode, ptr %312, i32 0, i32 8
  %313 = ptrtoint ptr %i_sb12.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %i_sb12.i.i, align 4
  %s_blocksize13.i.i = getelementptr inbounds %struct.super_block, ptr %314, i32 0, i32 3
  %315 = ptrtoint ptr %s_blocksize13.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %s_blocksize13.i.i, align 16
  %bm.0.i.op.i.i = shl i32 %bm.0.i.i.i, 3
  %shl14.i.i = select i1 %cmp5.not.i.i.i, i32 %bm.0.i.op.i.i, i32 0
  %mul.i147.i = mul i32 %316, %shl14.i.i
  br label %if.end.i149.i

if.end.i149.i:                                    ; preds = %bmap_hash_id.exit.i.i, %if.then2.i144.i
  %hash.0.i.i = phi i32 [ %shl.i.i, %if.then2.i144.i ], [ %mul.i147.i, %bmap_hash_id.exit.i.i ]
  %search_start.i148.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %317 = ptrtoint ptr %search_start.i148.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %hash.0.i.i, ptr %search_start.i148.i, align 8
  br label %determine_search_start.exit

determine_search_start.exit:                      ; preds = %if.end.i149.i, %if.then167.i.determine_search_start.exit_crit_edge, %land.lhs.true161.i.determine_search_start.exit_crit_edge, %land.lhs.true155.i.determine_search_start.exit_crit_edge, %if.end153.i.determine_search_start.exit_crit_edge, %if.then152.i.determine_search_start.exit_crit_edge, %if.then.i97.i, %if.then94.i.determine_search_start.exit_crit_edge, %if.then69.i, %land.lhs.true66.i.determine_search_start.exit_crit_edge, %if.end64.i.determine_search_start.exit_crit_edge, %lor.lhs.false.i.i.determine_search_start.exit_crit_edge, %if.then46.i.determine_search_start.exit_crit_edge, %get_left_neighbor.exit.thread.i.determine_search_start.exit_crit_edge, %hash_formatted_node.exit.i, %if.then25.i, %if.then10.i
  %search_start = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %318 = ptrtoint ptr %search_start to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %search_start, align 8
  %320 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs15 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %321, i32 0, i32 1
  %322 = ptrtoint ptr %s_rs15 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %s_rs15, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_loadN_noabort(i32 %324, i32 4)
  %325 = load i32, ptr %323, align 1
  %326 = call i32 @llvm.bswap.i32(i32 %325)
  call void @__sanitizer_cov_trace_cmp4(i32 %319, i32 %326)
  %cmp17.not = icmp ult i32 %319, %326
  br i1 %cmp17.not, label %determine_search_start.exit.if.end25_crit_edge, label %if.then18

determine_search_start.exit.if.end25_crit_edge:   ; preds = %determine_search_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then18:                                        ; preds = %determine_search_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub23 = add i32 %326, -1
  %327 = ptrtoint ptr %search_start to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %sub23, ptr %search_start, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %determine_search_start.exit.if.end25_crit_edge
  %328 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %th, align 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %329, align 4
  %s_fs_info.i.i67 = getelementptr inbounds %struct.super_block, ptr %331, i32 0, i32 33
  %prealloc_size.i.i = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 8
  %332 = ptrtoint ptr %prealloc_size.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 0, ptr %prealloc_size.i.i, align 4
  %333 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %333)
  %bf.load.i.i69 = load i8, ptr %formatted_node, align 8
  %334 = and i8 %bf.load.i.i69, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %334)
  %.not.i.i = icmp eq i8 %334, 64
  br i1 %.not.i.i, label %if.then.i.i70, label %determine_prealloc_size.exit.i

if.then.i.i70:                                    ; preds = %if.end25
  %335 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %hint, align 8
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %336, align 8
  %339 = and i16 %338, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %339)
  %cmp.i.i = icmp eq i16 %339, -32768
  br i1 %cmp.i.i, label %land.lhs.true6.i.i, label %if.then.i.i70.if.then.i78_crit_edge

if.then.i.i70.if.then.i78_crit_edge:              ; preds = %if.then.i.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i78

land.lhs.true6.i.i:                               ; preds = %if.then.i.i70
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %336, i32 0, i32 4
  %340 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %i_flags.i.i, align 4
  %and8.i.i = and i32 %341, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true10.i.i, label %land.lhs.true6.i.i.if.then.i78_crit_edge

land.lhs.true6.i.i.if.then.i78_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i78

land.lhs.true10.i.i:                              ; preds = %land.lhs.true6.i.i
  %i_size.i.i = getelementptr inbounds %struct.inode, ptr %336, i32 0, i32 14
  %342 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %342)
  %343 = load i64, ptr %i_size.i.i, align 8
  %344 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %329, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %345, i32 0, i32 33
  %346 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %preallocmin.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %347, i32 0, i32 12, i32 3
  %348 = ptrtoint ptr %preallocmin.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %preallocmin.i.i, align 4
  %i_sb.i.i71 = getelementptr inbounds %struct.inode, ptr %336, i32 0, i32 8
  %350 = ptrtoint ptr %i_sb.i.i71 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %i_sb.i.i71, align 4
  %s_blocksize.i.i72 = getelementptr inbounds %struct.super_block, ptr %351, i32 0, i32 3
  %352 = ptrtoint ptr %s_blocksize.i.i72 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %s_blocksize.i.i72, align 16
  %mul.i.i73 = mul i32 %353, %349
  %conv13.i.i = zext i32 %mul.i.i73 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %343, i64 %conv13.i.i)
  %cmp14.not.i.i = icmp slt i64 %343, %conv13.i.i
  br i1 %cmp14.not.i.i, label %land.lhs.true10.i.i.if.then.i78_crit_edge, label %if.then16.i.i

land.lhs.true10.i.i.if.then.i78_crit_edge:        ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i78

if.then16.i.i:                                    ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %preallocsize.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %347, i32 0, i32 12, i32 4
  %354 = ptrtoint ptr %preallocsize.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %preallocsize.i.i, align 4
  %sub.i.i74 = add i32 %355, -1
  %356 = ptrtoint ptr %prealloc_size.i.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %sub.i.i74, ptr %prealloc_size.i.i, align 4
  br label %if.then.i78

determine_prealloc_size.exit.i:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i69)
  %tobool.not.i75 = icmp sgt i8 %bf.load.i.i69, -1
  br i1 %tobool.not.i75, label %determine_prealloc_size.exit.i.if.then.i78_crit_edge, label %determine_prealloc_size.exit.i.if.end24.i_crit_edge

determine_prealloc_size.exit.i.if.end24.i_crit_edge: ; preds = %determine_prealloc_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

determine_prealloc_size.exit.i.if.then.i78_crit_edge: ; preds = %determine_prealloc_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i78

if.then.i78:                                      ; preds = %determine_prealloc_size.exit.i.if.then.i78_crit_edge, %if.then16.i.i, %land.lhs.true10.i.i.if.then.i78_crit_edge, %land.lhs.true6.i.i.if.then.i78_crit_edge, %if.then.i.i70.if.then.i78_crit_edge
  %call2.i = call i32 @reiserfs_write_unlock_nested(ptr noundef %331) #8
  %357 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %hint, align 8
  %conv.i = sext i32 %amount_needed.addr.0 to i64
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %358, i32 0, i32 20
  %359 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %i_blkbits.i.i, align 2
  %sh_prom.i.i = zext i8 %360 to i64
  %shl.i.i76 = shl i64 %conv.i, %sh_prom.i.i
  %call.i.i.i77 = call i32 @__dquot_alloc_space(ptr noundef %358, i64 noundef %shl.i.i76, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i77)
  %tobool4.not.i = icmp eq i32 %call.i.i.i77, 0
  br i1 %tobool4.not.i, label %if.end.i80, label %blocknrs_and_prealloc_arrays_from_search_start.exit

if.end.i80:                                       ; preds = %if.then.i78
  %361 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %361)
  %bf.load6.i = load i8, ptr %formatted_node, align 8
  %362 = and i8 %bf.load6.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %tobool9.not.i79 = icmp eq i8 %362, 0
  br i1 %tobool9.not.i79, label %if.end.i80.if.end23.i_crit_edge, label %land.lhs.true.i81

if.end.i80.if.end23.i_crit_edge:                  ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true.i81:                                ; preds = %if.end.i80
  %363 = ptrtoint ptr %prealloc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %prealloc_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool10.not.i = icmp eq i32 %364, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i81.if.end23.i_crit_edge, label %if.then11.i

land.lhs.true.i81.if.end23.i_crit_edge:           ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then11.i:                                      ; preds = %land.lhs.true.i81
  %365 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %hint, align 8
  %conv14.i = sext i32 %364 to i64
  %i_blkbits.i144.i = getelementptr inbounds %struct.inode, ptr %366, i32 0, i32 20
  %367 = ptrtoint ptr %i_blkbits.i144.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %i_blkbits.i144.i, align 2
  %sh_prom.i145.i = zext i8 %368 to i64
  %shl.i146.i = shl i64 %conv14.i, %sh_prom.i145.i
  %call.i.i82 = call i32 @__dquot_alloc_space(ptr noundef %366, i64 noundef %shl.i146.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82)
  %tobool16.not.i83 = icmp eq i32 %call.i.i82, 0
  br i1 %tobool16.not.i83, label %if.then11.i.if.end23.i_crit_edge, label %if.then17.i

if.then11.i.if.end23.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then17.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %369 = ptrtoint ptr %prealloc_size.i.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 0, ptr %prealloc_size.i.i, align 4
  %370 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %370)
  %bf.load20.i = load i8, ptr %formatted_node, align 8
  %bf.clear21.i = and i8 %bf.load20.i, -65
  store i8 %bf.clear21.i, ptr %formatted_node, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then17.i, %if.then11.i.if.end23.i_crit_edge, %land.lhs.true.i81.if.end23.i_crit_edge, %if.end.i80.if.end23.i_crit_edge
  call void @reiserfs_write_lock_nested(ptr noundef %331, i32 noundef %call2.i) #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end23.i, %determine_prealloc_size.exit.i.if.end24.i_crit_edge
  %block.i.i84 = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %allocate_without_wrapping_disk.exit.i.do.body.i_crit_edge, %if.end24.i
  %passno.0.i = phi i32 [ 0, %if.end24.i ], [ %inc.i85, %allocate_without_wrapping_disk.exit.i.do.body.i_crit_edge ]
  %nr_allocated.0.i = phi i32 [ 0, %if.end24.i ], [ %add58.i, %allocate_without_wrapping_disk.exit.i.do.body.i_crit_edge ]
  %inc.i85 = add i32 %passno.0.i, 1
  %371 = zext i32 %passno.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %371, ptr @__sancov_gen_cov_switch_values)
  switch i32 %passno.0.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb31.i
    i32 2, label %sw.bb33.i
  ]

sw.bb.i:                                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %372 = ptrtoint ptr %search_start to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %search_start, align 8
  %374 = ptrtoint ptr %s_fs_info.i.i67 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %s_fs_info.i.i67, align 16
  %s_rs27.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %375, i32 0, i32 1
  %376 = ptrtoint ptr %s_rs27.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %s_rs27.i, align 4
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_loadN_noabort(i32 %378, i32 4)
  %379 = load i32, ptr %377, align 1
  %380 = call i32 @llvm.bswap.i32(i32 %379) #8
  %sub30.i = add i32 %380, -1
  br label %do.cond.i

sw.bb31.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %381 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %beg.i, align 8
  %383 = ptrtoint ptr %search_start to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %search_start, align 8
  br label %do.cond.i

sw.bb33.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %385 = ptrtoint ptr %beg.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %beg.i, align 8
  br label %do.cond.i

sw.default.i:                                     ; preds = %do.body.i
  %387 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %387)
  %bf.load36.i = load i8, ptr %formatted_node, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load36.i)
  %tobool39.not.i = icmp sgt i8 %bf.load36.i, -1
  br i1 %tobool39.not.i, label %if.then40.i, label %sw.default.i.if.end46.i_crit_edge

sw.default.i.if.end46.i_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then40.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %call41.i = call i32 @reiserfs_write_unlock_nested(ptr noundef %331) #8
  %388 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %hint, align 8
  %390 = ptrtoint ptr %prealloc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %prealloc_size.i.i, align 4
  %add.i = sub i32 %amount_needed.addr.0, %nr_allocated.0.i
  %sub44.i = add i32 %add.i, %391
  %conv45.i = sext i32 %sub44.i to i64
  %i_blkbits.i148.i = getelementptr inbounds %struct.inode, ptr %389, i32 0, i32 20
  %392 = ptrtoint ptr %i_blkbits.i148.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %i_blkbits.i148.i, align 2
  %sh_prom.i149.i = zext i8 %393 to i64
  %shl.i150.i = shl i64 %conv45.i, %sh_prom.i149.i
  call void @__dquot_free_space(ptr noundef %389, i64 noundef %shl.i150.i, i32 noundef 0) #8
  call void @reiserfs_write_lock_nested(ptr noundef %331, i32 noundef %call41.i) #8
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then40.i, %sw.default.i.if.end46.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_allocated.0.i)
  %tobool47.not174.i = icmp eq i32 %nr_allocated.0.i, 0
  br i1 %tobool47.not174.i, label %if.end46.i.while.cond.preheader_crit_edge, label %if.end46.i.while.body.i87_crit_edge

if.end46.i.while.body.i87_crit_edge:              ; preds = %if.end46.i
  br label %while.body.i87

if.end46.i.while.cond.preheader_crit_edge:        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.body.i87:                                   ; preds = %while.body.i87.while.body.i87_crit_edge, %if.end46.i.while.body.i87_crit_edge
  %nr_allocated.1175.i = phi i32 [ %dec.i86, %while.body.i87.while.body.i87_crit_edge ], [ %nr_allocated.0.i, %if.end46.i.while.body.i87_crit_edge ]
  %dec.i86 = add i32 %nr_allocated.1175.i, -1
  %394 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %th, align 4
  %396 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %hint, align 8
  %arrayidx.i = getelementptr i32, ptr %new_blocknrs.addr.0, i32 %dec.i86
  %398 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx.i, align 4
  %400 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %400)
  %bf.load51.i = load i8, ptr %formatted_node, align 8
  %401 = xor i8 %bf.load51.i, -1
  %402 = lshr i8 %401, 7
  %.not.i = zext i8 %402 to i32
  call void @reiserfs_free_block(ptr noundef %395, ptr noundef %397, i32 noundef %399, i32 noundef %.not.i) #8
  %tobool47.not.i = icmp eq i32 %dec.i86, 0
  br i1 %tobool47.not.i, label %while.body.i87.while.cond.preheader_crit_edge, label %while.body.i87.while.body.i87_crit_edge

while.body.i87.while.body.i87_crit_edge:          ; preds = %while.body.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i87

while.body.i87.while.cond.preheader_crit_edge:    ; preds = %while.body.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

do.cond.i:                                        ; preds = %sw.bb33.i, %sw.bb31.i, %sw.bb.i
  %start.0.i = phi i32 [ 0, %sw.bb33.i ], [ %382, %sw.bb31.i ], [ %373, %sw.bb.i ]
  %finish.0.i = phi i32 [ %386, %sw.bb33.i ], [ %384, %sw.bb31.i ], [ %sub30.i, %sw.bb.i ]
  %add.ptr.i = getelementptr i32, ptr %new_blocknrs.addr.0, i32 %nr_allocated.0.i
  %sub55.i = sub i32 %amount_needed.addr.0, %nr_allocated.0.i
  %403 = ptrtoint ptr %prealloc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %prealloc_size.i.i, align 4
  br label %while.cond.i.i88

while.cond.i.i88:                                 ; preds = %while.end.i.i.while.cond.i.i88_crit_edge, %do.cond.i
  %start.addr.0.i.i = phi i32 [ %start.0.i, %do.cond.i ], [ %start.addr.2.lcssa.i.i, %while.end.i.i.while.cond.i.i88_crit_edge ]
  %new_blocknrs.addr.0.i.i = phi ptr [ %add.ptr.i, %do.cond.i ], [ %new_blocknrs.addr.1.lcssa.i.i, %while.end.i.i.while.cond.i.i88_crit_edge ]
  %rest.0.i.i = phi i32 [ %sub55.i, %do.cond.i ], [ %rest.1.lcssa.i.i, %while.end.i.i.while.cond.i.i88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rest.0.i.i)
  %cmp.i153.i = icmp slt i32 %rest.0.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0.i.i, i32 %finish.0.i)
  %cmp1.not.i.i = icmp ugt i32 %start.addr.0.i.i, %finish.0.i
  %or.cond10.i.i = select i1 %cmp.i153.i, i1 true, i1 %cmp1.not.i.i
  br i1 %or.cond10.i.i, label %while.cond.i.i88.allocate_without_wrapping_disk.exit.i_crit_edge, label %while.body.i.i91

while.cond.i.i88.allocate_without_wrapping_disk.exit.i_crit_edge: ; preds = %while.cond.i.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %allocate_without_wrapping_disk.exit.i

while.body.i.i91:                                 ; preds = %while.cond.i.i88
  %405 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %th, align 4
  %add.i.i89 = add i32 %rest.0.i.i, %404
  %407 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %407)
  %bf.load.i154.i = load i8, ptr %formatted_node, align 8
  %408 = xor i8 %bf.load.i154.i, -1
  %409 = lshr i8 %408, 7
  %.not.i155.i = zext i8 %409 to i32
  %410 = ptrtoint ptr %block.i.i84 to i32
  call void @__asan_load8_noabort(i32 %410)
  %411 = load i64, ptr %block.i.i84, align 8
  %412 = ptrtoint ptr %406 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %406, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off.i.i.i) #8
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %413, i32 0, i32 3
  %414 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %s_blocksize.i.i.i, align 16
  %shl.i.i.i = shl i32 %415, 3
  %t_trans_id.i.i.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %406, i32 0, i32 4
  %416 = ptrtoint ptr %t_trans_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %t_trans_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %417)
  %tobool.not.i.i.i90 = icmp eq i32 %417, 0
  br i1 %tobool.not.i.i.i90, label %do.body4.i.i.i, label %do.end9.i.i.i, !prof !114

do.body4.i.i.i:                                   ; preds = %while.body.i.i91
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #8, !srcloc !122
  unreachable

do.end9.i.i.i:                                    ; preds = %while.body.i.i91
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %413, i32 0, i32 33
  %418 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %scan_bitmap.i.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %419, i32 0, i32 27, i32 31
  %420 = ptrtoint ptr %scan_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %scan_bitmap.i.i.i, align 4
  %inc.i.i.i = add i32 %421, 1
  store i32 %inc.i.i.i, ptr %scan_bitmap.i.i.i, align 4
  %422 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_rs.i.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %422, i32 0, i32 1
  %423 = ptrtoint ptr %s_rs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %s_rs.i.i.i, align 4
  %s_free_blocks.i.i.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %424, i32 0, i32 1
  %425 = ptrtoint ptr %s_free_blocks.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %425, i32 4)
  %426 = load i32, ptr %s_free_blocks.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %426)
  %cmp.i.i.i92 = icmp eq i32 %426, 0
  br i1 %cmp.i.i.i92, label %do.end9.i.i.i.scan_bitmap.exit.thread.i.i_crit_edge, label %if.end13.i.i.i

do.end9.i.i.i.scan_bitmap.exit.thread.i.i_crit_edge: ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_bitmap.exit.thread.i.i

if.end13.i.i.i:                                   ; preds = %do.end9.i.i.i
  %s_blocksize_bits.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %413, i32 0, i32 2
  %427 = ptrtoint ptr %s_blocksize_bits.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %s_blocksize_bits.i.i.i.i, align 4
  %conv.i.i.i.i = zext i8 %428 to i32
  %add.i.i.i.i93 = add nuw nsw i32 %conv.i.i.i.i, 3
  %shr.i2.i.i.i = lshr i32 %start.addr.0.i.i, %add.i.i.i.i93
  %429 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %s_blocksize.i.i.i, align 16
  %shl.i.i.i.i = shl i32 %430, 3
  %sub.i.i.i.i94 = add i32 %shl.i.i.i.i, -1
  %and.i.i.i.i = and i32 %sub.i.i.i.i94, %start.addr.0.i.i
  %431 = ptrtoint ptr %off.i.i.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 %and.i.i.i.i, ptr %off.i.i.i, align 4
  %and.i10.i.i.i = and i32 %sub.i.i.i.i94, %finish.0.i
  %432 = ptrtoint ptr %424 to i32
  call void @__asan_loadN_noabort(i32 %432, i32 4)
  %433 = load i32, ptr %424, align 1
  %434 = call i32 @llvm.bswap.i32(i32 %433) #8
  %sub.i11.i.i.i = add i32 %434, -1
  %div.i.i.i.i95 = udiv i32 %sub.i11.i.i.i, %shl.i.i.i.i
  %add.i13.i.i.i = add i32 %div.i.i.i.i95, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i2.i.i.i, i32 %add.i13.i.i.i)
  %cmp15.i.i.i = icmp ugt i32 %shr.i2.i.i.i, %add.i13.i.i.i
  br i1 %cmp15.i.i.i, label %if.end13.i.i.i.scan_bitmap.exit.thread.i.i_crit_edge, label %if.end17.i.i.i

if.end13.i.i.i.scan_bitmap.exit.thread.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_bitmap.exit.thread.i.i

if.end17.i.i.i:                                   ; preds = %if.end13.i.i.i
  %shr.i6.i.i.i = lshr i32 %finish.0.i, %add.i.i.i.i93
  %435 = call i32 @llvm.umin.i32(i32 %shr.i6.i.i.i, i32 %add.i13.i.i.i) #8
  %s_alloc_options.i.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %422, i32 0, i32 12
  %436 = ptrtoint ptr %s_alloc_options.i.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load volatile i32, ptr %s_alloc_options.i.i.i, align 4
  %438 = and i32 %437, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %438)
  %tobool25.not.i.i.i = icmp eq i32 %438, 0
  br i1 %tobool25.not.i.i.i, label %if.end17.i.i.i.if.end53.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end17.i.i.i.if.end53.i.i.i_crit_edge:          ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end17.i.i.i
  %439 = call i32 @llvm.bswap.i32(i32 %426) #8
  %div.i.i.i = udiv i32 %434, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %439, i32 %div.i.i.i)
  %cmp33.i.i.i = icmp ugt i32 %439, %div.i.i.i
  br i1 %cmp33.i.i.i, label %for.cond.preheader.i.i.i, label %land.lhs.true.i.i.i.if.end53.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end53.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i2.i.i.i, i32 %435)
  %cmp3554.i.i.i = icmp ult i32 %shr.i2.i.i.i, %435
  br i1 %cmp3554.i.i.i, label %for.body.lr.ph.i.i.i, label %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i154.i)
  %tobool38.not.i.i.i = icmp sgt i8 %bf.load.i154.i, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %411)
  %cmp39.not.i.i.i = icmp eq i64 %411, 0
  %or.cond.i.i.i = and i1 %tobool38.not.i.i.i, %cmp39.not.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %bm.055.i.i.i = phi i32 [ %shr.i2.i.i.i, %for.body.lr.ph.i.i.i ], [ %inc52.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %440 = ptrtoint ptr %off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %off.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %441)
  %tobool36.not.i.i.i = icmp eq i32 %441, 0
  %brmerge.i.i.i = or i1 %or.cond.i.i.i, %tobool36.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false40.i.i.i, label %for.body.i.i.i.if.end48.i.i.i_crit_edge

for.body.i.i.i.if.end48.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i.i

lor.lhs.false40.i.i.i:                            ; preds = %for.body.i.i.i
  %442 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_ap_bitmap.i.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %443, i32 0, i32 2
  %444 = ptrtoint ptr %s_ap_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %s_ap_bitmap.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.reiserfs_bitmap_info, ptr %445, i32 %bm.055.i.i.i
  %446 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx.i.i.i, align 4
  %448 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %s_blocksize.i.i.i, align 16
  %shl43.i.i.i = shl i32 %449, 3
  %div44.i.i.i = udiv i32 %shl43.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %447, i32 %div44.i.i.i)
  %cmp45.i.i.i = icmp ugt i32 %447, %div44.i.i.i
  br i1 %cmp45.i.i.i, label %lor.lhs.false40.i.i.i.if.end48.i.i.i_crit_edge, label %lor.lhs.false40.i.i.i.for.inc.i.i.i_crit_edge

lor.lhs.false40.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %lor.lhs.false40.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

lor.lhs.false40.i.i.i.if.end48.i.i.i_crit_edge:   ; preds = %lor.lhs.false40.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %lor.lhs.false40.i.i.i.if.end48.i.i.i_crit_edge, %for.body.i.i.i.if.end48.i.i.i_crit_edge
  %call47.i.i.i = call fastcc i32 @scan_bitmap_block(ptr noundef %406, i32 noundef %bm.055.i.i.i, ptr noundef nonnull %off.i.i.i, i32 noundef %shl.i.i.i, i32 noundef %add.i.i89, i32 noundef %.not.i155.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool49.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool49.not.i.i.i, label %if.end48.i.i.i.for.inc.i.i.i_crit_edge, label %if.end48.i.i.i.scan_bitmap.exit.thread39.i.i_crit_edge

if.end48.i.i.i.scan_bitmap.exit.thread39.i.i_crit_edge: ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_bitmap.exit.thread39.i.i

if.end48.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end48.i.i.i.for.inc.i.i.i_crit_edge, %lor.lhs.false40.i.i.i.for.inc.i.i.i_crit_edge
  %inc52.i.i.i = add nuw i32 %bm.055.i.i.i, 1
  %450 = ptrtoint ptr %off.i.i.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 0, ptr %off.i.i.i, align 4
  %exitcond.not.i.i.i = icmp eq i32 %inc52.i.i.i, %435
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge
  %451 = ptrtoint ptr %s_blocksize_bits.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %s_blocksize_bits.i.i.i.i, align 4
  %conv.i33.i.i.i = zext i8 %452 to i32
  %add.i34.i.i.i = add nuw nsw i32 %conv.i33.i.i.i, 3
  %shr.i35.i.i.i = lshr i32 %start.addr.0.i.i, %add.i34.i.i.i
  %453 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %s_blocksize.i.i.i, align 16
  %shl.i37.i.i.i = shl i32 %454, 3
  %sub.i38.i.i.i = add i32 %shl.i37.i.i.i, -1
  %and.i39.i.i.i = and i32 %sub.i38.i.i.i, %start.addr.0.i.i
  %455 = ptrtoint ptr %off.i.i.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 %and.i39.i.i.i, ptr %off.i.i.i, align 4
  br label %if.end53.i.i.i

if.end53.i.i.i:                                   ; preds = %for.end.i.i.i, %land.lhs.true.i.i.i.if.end53.i.i.i_crit_edge, %if.end17.i.i.i.if.end53.i.i.i_crit_edge
  %bm.1.i.i.i = phi i32 [ %shr.i2.i.i.i, %if.end17.i.i.i.if.end53.i.i.i_crit_edge ], [ %shr.i35.i.i.i, %for.end.i.i.i ], [ %shr.i2.i.i.i, %land.lhs.true.i.i.i.if.end53.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bm.1.i.i.i, i32 %435)
  %cmp5557.i.i.i = icmp ult i32 %bm.1.i.i.i, %435
  br i1 %cmp5557.i.i.i, label %if.end53.i.i.i.for.body56.i.i.i_crit_edge, label %if.end53.i.i.i.scan_bitmap.exit.i.i_crit_edge

if.end53.i.i.i.scan_bitmap.exit.i.i_crit_edge:    ; preds = %if.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_bitmap.exit.i.i

if.end53.i.i.i.for.body56.i.i.i_crit_edge:        ; preds = %if.end53.i.i.i
  br label %for.body56.i.i.i

for.body56.i.i.i:                                 ; preds = %for.inc61.i.i.i.for.body56.i.i.i_crit_edge, %if.end53.i.i.i.for.body56.i.i.i_crit_edge
  %bm.258.i.i.i = phi i32 [ %inc62.i.i.i, %for.inc61.i.i.i.for.body56.i.i.i_crit_edge ], [ %bm.1.i.i.i, %if.end53.i.i.i.for.body56.i.i.i_crit_edge ]
  %call57.i.i.i = call fastcc i32 @scan_bitmap_block(ptr noundef %406, i32 noundef %bm.258.i.i.i, ptr noundef nonnull %off.i.i.i, i32 noundef %shl.i.i.i, i32 noundef %add.i.i89, i32 noundef %.not.i155.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i.i)
  %tobool58.not.i.i.i = icmp eq i32 %call57.i.i.i, 0
  br i1 %tobool58.not.i.i.i, label %for.inc61.i.i.i, label %for.body56.i.i.i.scan_bitmap.exit.thread39.i.i_crit_edge

for.body56.i.i.i.scan_bitmap.exit.thread39.i.i_crit_edge: ; preds = %for.body56.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_bitmap.exit.thread39.i.i

for.inc61.i.i.i:                                  ; preds = %for.body56.i.i.i
  %inc62.i.i.i = add i32 %bm.258.i.i.i, 1
  %456 = ptrtoint ptr %off.i.i.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 0, ptr %off.i.i.i, align 4
  %exitcond63.not.i.i.i = icmp eq i32 %inc62.i.i.i, %435
  br i1 %exitcond63.not.i.i.i, label %for.inc61.i.i.i.scan_bitmap.exit.i.i_crit_edge, label %for.inc61.i.i.i.for.body56.i.i.i_crit_edge

for.inc61.i.i.i.for.body56.i.i.i_crit_edge:       ; preds = %for.inc61.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56.i.i.i

for.inc61.i.i.i.scan_bitmap.exit.i.i_crit_edge:   ; preds = %for.inc61.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_bitmap.exit.i.i

scan_bitmap.exit.thread.i.i:                      ; preds = %if.end13.i.i.i.scan_bitmap.exit.thread.i.i_crit_edge, %do.end9.i.i.i.scan_bitmap.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off.i.i.i) #8
  br label %allocate_without_wrapping_disk.exit.i

scan_bitmap.exit.thread39.i.i:                    ; preds = %for.body56.i.i.i.scan_bitmap.exit.thread39.i.i_crit_edge, %if.end48.i.i.i.scan_bitmap.exit.thread39.i.i_crit_edge
  %bm.3.i.ph.i.i = phi i32 [ %bm.258.i.i.i, %for.body56.i.i.i.scan_bitmap.exit.thread39.i.i_crit_edge ], [ %bm.055.i.i.i, %if.end48.i.i.i.scan_bitmap.exit.thread39.i.i_crit_edge ]
  %nr_allocated.2.i.ph.i.i = phi i32 [ %call57.i.i.i, %for.body56.i.i.i.scan_bitmap.exit.thread39.i.i_crit_edge ], [ %call47.i.i.i, %if.end48.i.i.i.scan_bitmap.exit.thread39.i.i_crit_edge ]
  %457 = ptrtoint ptr %off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %off.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off.i.i.i) #8
  br label %while.cond3.preheader.i.i

scan_bitmap.exit.i.i:                             ; preds = %for.inc61.i.i.i.scan_bitmap.exit.i.i_crit_edge, %if.end53.i.i.i.scan_bitmap.exit.i.i_crit_edge
  %bm.2.lcssa.i.i.i = phi i32 [ %bm.1.i.i.i, %if.end53.i.i.i.scan_bitmap.exit.i.i_crit_edge ], [ %435, %for.inc61.i.i.i.scan_bitmap.exit.i.i_crit_edge ]
  %add.i.i.i = add i32 %and.i10.i.i.i, 1
  %call64.i.i.i = call fastcc i32 @scan_bitmap_block(ptr noundef %406, i32 noundef %bm.2.lcssa.i.i.i, ptr noundef nonnull %off.i.i.i, i32 noundef %add.i.i.i, i32 noundef %add.i.i89, i32 noundef %.not.i155.i) #8
  %459 = ptrtoint ptr %off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %off.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i.i.i)
  %cmp2.i.i = icmp eq i32 %call64.i.i.i, 0
  br i1 %cmp2.i.i, label %scan_bitmap.exit.i.i.allocate_without_wrapping_disk.exit.i_crit_edge, label %scan_bitmap.exit.i.i.while.cond3.preheader.i.i_crit_edge

scan_bitmap.exit.i.i.while.cond3.preheader.i.i_crit_edge: ; preds = %scan_bitmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond3.preheader.i.i

scan_bitmap.exit.i.i.allocate_without_wrapping_disk.exit.i_crit_edge: ; preds = %scan_bitmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %allocate_without_wrapping_disk.exit.i

while.cond3.preheader.i.i:                        ; preds = %scan_bitmap.exit.i.i.while.cond3.preheader.i.i_crit_edge, %scan_bitmap.exit.thread39.i.i
  %461 = phi i32 [ %458, %scan_bitmap.exit.thread39.i.i ], [ %460, %scan_bitmap.exit.i.i.while.cond3.preheader.i.i_crit_edge ]
  %nr_allocated.2.i44.i.i = phi i32 [ %nr_allocated.2.i.ph.i.i, %scan_bitmap.exit.thread39.i.i ], [ %call64.i.i.i, %scan_bitmap.exit.i.i.while.cond3.preheader.i.i_crit_edge ]
  %bm.3.i43.i.i = phi i32 [ %bm.3.i.ph.i.i, %scan_bitmap.exit.thread39.i.i ], [ %bm.2.lcssa.i.i.i, %scan_bitmap.exit.i.i.while.cond3.preheader.i.i_crit_edge ]
  %mul.i.i.i = mul i32 %bm.3.i43.i.i, %shl.i.i.i
  %add65.i.i.i = add i32 %mul.i.i.i, %461
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rest.0.i.i)
  %cmp420.i.i = icmp sgt i32 %rest.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_allocated.2.i44.i.i)
  %cmp621.i.i = icmp sgt i32 %nr_allocated.2.i44.i.i, 0
  %or.cond22.i.i = select i1 %cmp420.i.i, i1 %cmp621.i.i, i1 false
  br i1 %or.cond22.i.i, label %while.cond3.preheader.i.i.while.body8.i.i_crit_edge, label %while.cond3.preheader.i.i.while.end.i.i_crit_edge

while.cond3.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.cond3.preheader.i.i.while.body8.i.i_crit_edge: ; preds = %while.cond3.preheader.i.i
  br label %while.body8.i.i

while.body8.i.i:                                  ; preds = %while.body8.i.i.while.body8.i.i_crit_edge, %while.cond3.preheader.i.i.while.body8.i.i_crit_edge
  %nr_allocated.026.i.i = phi i32 [ %dec9.i.i, %while.body8.i.i.while.body8.i.i_crit_edge ], [ %nr_allocated.2.i44.i.i, %while.cond3.preheader.i.i.while.body8.i.i_crit_edge ]
  %rest.125.i.i = phi i32 [ %dec.i.i96, %while.body8.i.i.while.body8.i.i_crit_edge ], [ %rest.0.i.i, %while.cond3.preheader.i.i.while.body8.i.i_crit_edge ]
  %new_blocknrs.addr.124.i.i = phi ptr [ %incdec.ptr.i.i, %while.body8.i.i.while.body8.i.i_crit_edge ], [ %new_blocknrs.addr.0.i.i, %while.cond3.preheader.i.i.while.body8.i.i_crit_edge ]
  %start.addr.223.i.i = phi i32 [ %inc.i.i, %while.body8.i.i.while.body8.i.i_crit_edge ], [ %add65.i.i.i, %while.cond3.preheader.i.i.while.body8.i.i_crit_edge ]
  %inc.i.i = add i32 %start.addr.223.i.i, 1
  %incdec.ptr.i.i = getelementptr i32, ptr %new_blocknrs.addr.124.i.i, i32 1
  %462 = ptrtoint ptr %new_blocknrs.addr.124.i.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 %start.addr.223.i.i, ptr %new_blocknrs.addr.124.i.i, align 4
  %dec.i.i96 = add nsw i32 %rest.125.i.i, -1
  %dec9.i.i = add nsw i32 %nr_allocated.026.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rest.125.i.i)
  %cmp4.i.i = icmp ugt i32 %rest.125.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_allocated.026.i.i)
  %cmp6.i.i = icmp ugt i32 %nr_allocated.026.i.i, 1
  %or.cond.i.i97 = select i1 %cmp4.i.i, i1 %cmp6.i.i, i1 false
  br i1 %or.cond.i.i97, label %while.body8.i.i.while.body8.i.i_crit_edge, label %while.body8.i.i.while.end.i.i_crit_edge

while.body8.i.i.while.end.i.i_crit_edge:          ; preds = %while.body8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.body8.i.i.while.body8.i.i_crit_edge:        ; preds = %while.body8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body8.i.i

while.end.i.i:                                    ; preds = %while.body8.i.i.while.end.i.i_crit_edge, %while.cond3.preheader.i.i.while.end.i.i_crit_edge
  %start.addr.2.lcssa.i.i = phi i32 [ %add65.i.i.i, %while.cond3.preheader.i.i.while.end.i.i_crit_edge ], [ %inc.i.i, %while.body8.i.i.while.end.i.i_crit_edge ]
  %new_blocknrs.addr.1.lcssa.i.i = phi ptr [ %new_blocknrs.addr.0.i.i, %while.cond3.preheader.i.i.while.end.i.i_crit_edge ], [ %incdec.ptr.i.i, %while.body8.i.i.while.end.i.i_crit_edge ]
  %rest.1.lcssa.i.i = phi i32 [ %rest.0.i.i, %while.cond3.preheader.i.i.while.end.i.i_crit_edge ], [ %dec.i.i96, %while.body8.i.i.while.end.i.i_crit_edge ]
  %nr_allocated.0.lcssa.i.i = phi i32 [ %nr_allocated.2.i44.i.i, %while.cond3.preheader.i.i.while.end.i.i_crit_edge ], [ %dec9.i.i, %while.body8.i.i.while.end.i.i_crit_edge ]
  %cmp6.lcssa.i.i = phi i1 [ %cmp621.i.i, %while.cond3.preheader.i.i.while.end.i.i_crit_edge ], [ %cmp6.i.i, %while.body8.i.i.while.end.i.i_crit_edge ]
  br i1 %cmp6.lcssa.i.i, label %if.then11.i.i98, label %while.end.i.i.while.cond.i.i88_crit_edge

while.end.i.i.while.cond.i.i88_crit_edge:         ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i88

if.then11.i.i98:                                  ; preds = %while.end.i.i
  %463 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %hint, align 8
  %i_prealloc_list.i.i = getelementptr i8, ptr %464, i32 -228
  %465 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %th, align 4
  %467 = ptrtoint ptr %466 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %466, align 4
  %s_fs_info.i.i156.i = getelementptr inbounds %struct.super_block, ptr %468, i32 0, i32 33
  %469 = ptrtoint ptr %s_fs_info.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %s_fs_info.i.i156.i, align 16
  %s_journal.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %470, i32 0, i32 3
  %471 = ptrtoint ptr %s_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %s_journal.i.i, align 4
  %j_prealloc_list.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %472, i32 0, i32 50
  %473 = ptrtoint ptr %j_prealloc_list.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %j_prealloc_list.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %i_prealloc_list.i.i, ptr noundef %j_prealloc_list.i.i, ptr noundef %474) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then11.i.i98.list_add.exit.i.i_crit_edge

if.then11.i.i98.list_add.exit.i.i_crit_edge:      ; preds = %if.then11.i.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then11.i.i98
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i99 = getelementptr inbounds %struct.list_head, ptr %474, i32 0, i32 1
  %475 = ptrtoint ptr %prev1.i.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %i_prealloc_list.i.i, ptr %prev1.i.i.i.i99, align 4
  %476 = ptrtoint ptr %i_prealloc_list.i.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr %474, ptr %i_prealloc_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %464, i32 -224
  %477 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr %j_prealloc_list.i.i, ptr %prev3.i.i.i.i, align 4
  %478 = ptrtoint ptr %j_prealloc_list.i.i to i32
  call void @__asan_store4_noabort(i32 %478)
  store volatile ptr %i_prealloc_list.i.i, ptr %j_prealloc_list.i.i, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then11.i.i98.list_add.exit.i.i_crit_edge
  %479 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %hint, align 8
  %i_prealloc_block.i.i = getelementptr i8, ptr %480, i32 -236
  %481 = ptrtoint ptr %i_prealloc_block.i.i to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 %start.addr.2.lcssa.i.i, ptr %i_prealloc_block.i.i, align 4
  %482 = load ptr, ptr %hint, align 8
  %i_prealloc_count.i.i = getelementptr i8, ptr %482, i32 -232
  %483 = ptrtoint ptr %i_prealloc_count.i.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 %nr_allocated.0.lcssa.i.i, ptr %i_prealloc_count.i.i, align 8
  br label %allocate_without_wrapping_disk.exit.i

allocate_without_wrapping_disk.exit.i:            ; preds = %list_add.exit.i.i, %scan_bitmap.exit.i.i.allocate_without_wrapping_disk.exit.i_crit_edge, %scan_bitmap.exit.thread.i.i, %while.cond.i.i88.allocate_without_wrapping_disk.exit.i_crit_edge
  %rest.2.i.i = phi i32 [ %rest.1.lcssa.i.i, %list_add.exit.i.i ], [ %rest.0.i.i, %scan_bitmap.exit.thread.i.i ], [ %rest.0.i.i, %while.cond.i.i88.allocate_without_wrapping_disk.exit.i_crit_edge ], [ %rest.0.i.i, %scan_bitmap.exit.i.i.allocate_without_wrapping_disk.exit.i_crit_edge ]
  %sub.i157.i = sub i32 %sub55.i, %rest.2.i.i
  %add58.i = add i32 %sub.i157.i, %nr_allocated.0.i
  %cmp.i100 = icmp slt i32 %add58.i, %amount_needed.addr.0
  br i1 %cmp.i100, label %allocate_without_wrapping_disk.exit.i.do.body.i_crit_edge, label %do.end.i

allocate_without_wrapping_disk.exit.i.do.body.i_crit_edge: ; preds = %allocate_without_wrapping_disk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i:                                         ; preds = %allocate_without_wrapping_disk.exit.i
  %484 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %484)
  %bf.load61.i = load i8, ptr %formatted_node, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load61.i)
  %tobool64.not.i = icmp sgt i8 %bf.load61.i, -1
  br i1 %tobool64.not.i, label %land.lhs.true65.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true65.i:                                ; preds = %do.end.i
  %485 = ptrtoint ptr %prealloc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %prealloc_size.i.i, align 4
  %add67.i = add i32 %486, %amount_needed.addr.0
  %487 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %hint, align 8
  %i_prealloc_count.i101 = getelementptr i8, ptr %488, i32 -232
  %489 = ptrtoint ptr %i_prealloc_count.i101 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %i_prealloc_count.i101, align 8
  %add70.i = add i32 %490, %add58.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add67.i, i32 %add70.i)
  %cmp71.i = icmp sgt i32 %add67.i, %add70.i
  br i1 %cmp71.i, label %blocknrs_and_prealloc_arrays_from_search_start.exit.thread139, label %land.lhs.true65.i.cleanup_crit_edge

land.lhs.true65.i.cleanup_crit_edge:              ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

blocknrs_and_prealloc_arrays_from_search_start.exit.thread139: ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #10
  %call74.i = call i32 @reiserfs_write_unlock_nested(ptr noundef %331) #8
  %491 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %hint, align 8
  %493 = ptrtoint ptr %prealloc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %prealloc_size.i.i, align 4
  %i_prealloc_count81.i = getelementptr i8, ptr %492, i32 -232
  %495 = ptrtoint ptr %i_prealloc_count81.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %i_prealloc_count81.i, align 8
  %497 = add i32 %amount_needed.addr.0, %494
  %498 = add i32 %add58.i, %496
  %sub82.i = sub i32 %497, %498
  %conv83.i = sext i32 %sub82.i to i64
  %i_blkbits.i159.i = getelementptr inbounds %struct.inode, ptr %492, i32 0, i32 20
  %499 = ptrtoint ptr %i_blkbits.i159.i to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %i_blkbits.i159.i, align 2
  %sh_prom.i160.i = zext i8 %500 to i64
  %shl.i161.i = shl i64 %conv83.i, %sh_prom.i160.i
  call void @__dquot_free_space(ptr noundef %492, i64 noundef %shl.i161.i, i32 noundef 0) #8
  call void @reiserfs_write_lock_nested(ptr noundef %331, i32 noundef %call74.i) #8
  br label %cleanup

blocknrs_and_prealloc_arrays_from_search_start.exit: ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #10
  call void @reiserfs_write_lock_nested(ptr noundef %331, i32 noundef %call2.i) #8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %blocknrs_and_prealloc_arrays_from_search_start.exit, %while.body.i87.while.cond.preheader_crit_edge, %if.end46.i.while.cond.preheader_crit_edge
  %retval.1.i138 = phi i32 [ -6, %blocknrs_and_prealloc_arrays_from_search_start.exit ], [ -3, %if.end46.i.while.cond.preheader_crit_edge ], [ -3, %while.body.i87.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %amount_needed.addr.0, i32 %amount_needed)
  %cmp29122 = icmp slt i32 %amount_needed.addr.0, %amount_needed
  br i1 %cmp29122, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %amount_needed.addr.1124 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %amount_needed.addr.0, %while.cond.preheader.while.body_crit_edge ]
  %new_blocknrs.addr.1123 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %new_blocknrs.addr.0, %while.cond.preheader.while.body_crit_edge ]
  %inc = add i32 %amount_needed.addr.1124, 1
  %501 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %th, align 4
  %503 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %hint, align 8
  %incdec.ptr = getelementptr i32, ptr %new_blocknrs.addr.1123, i32 -1
  %505 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %incdec.ptr, align 4
  call void @reiserfs_free_block(ptr noundef %502, ptr noundef %504, i32 noundef %506, i32 noundef 1)
  %exitcond.not = icmp eq i32 %inc, %amount_needed
  br i1 %exitcond.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %blocknrs_and_prealloc_arrays_from_search_start.exit.thread139, %land.lhs.true65.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %use_preallocated_list_if_available.exit.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ 0, %use_preallocated_list_if_available.exit.cleanup_crit_edge ], [ 0, %land.lhs.true65.i.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ], [ %retval.1.i138, %while.cond.preheader.cleanup_crit_edge ], [ 0, %blocknrs_and_prealloc_arrays_from_search_start.exit.thread139 ], [ %retval.1.i138, %while.body.cleanup_crit_edge ], [ 0, %while.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_cache_bitmap_metadata(ptr noundef %sb, ptr nocapture noundef readonly %bh, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %2 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_size, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %1, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %7 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %b_blocknr, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %sb, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.reiserfs_cache_bitmap_metadata, ptr noundef nonnull @.str.40, i64 noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %info, align 4
  %incdec.ptr22 = getelementptr i32, ptr %add.ptr, i32 -1
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %cmp.not23 = icmp ult ptr %incdec.ptr22, %11
  br i1 %cmp.not23, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %if.end.while.body_crit_edge
  %incdec.ptr24 = phi ptr [ %incdec.ptr, %if.end12.while.body_crit_edge ], [ %incdec.ptr22, %if.end.while.body_crit_edge ]
  %12 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr24, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %13, label %cond.false.i [
    i32 0, label %if.then4
    i32 -1, label %while.body.if.end12_crit_edge
  ]

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %info, align 4
  br label %if.end12.sink.split

cond.false.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %13) #8
  %sub = sub i32 32, %call.i.i
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %info, align 4
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %cond.false.i, %if.then4
  %.sink = phi i32 [ %18, %cond.false.i ], [ 32, %if.then4 ]
  %sub.sink = phi i32 [ %sub, %cond.false.i ], [ %16, %if.then4 ]
  %add10 = add i32 %sub.sink, %.sink
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add10, ptr %info, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %while.body.if.end12_crit_edge
  %incdec.ptr = getelementptr i32, ptr %incdec.ptr24, i32 -1
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  %cmp.not = icmp ult ptr %incdec.ptr, %21
  br i1 %cmp.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %if.end.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @reiserfs_read_bitmap_block(ptr noundef %sb, i32 noundef %bitmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_blocksize, align 16
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_ap_bitmap = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_ap_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_ap_bitmap, align 4
  %add.ptr = getelementptr %struct.reiserfs_bitmap_info, ptr %5, i32 %bitmap
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %s_properties, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %b_blocknr, align 8
  %13 = trunc i64 %12 to i32
  %14 = add i32 %bitmap, 1
  %conv7 = add i32 %14, %13
  br label %if.end12

if.else:                                          ; preds = %entry
  %shl = shl i32 %bitmap, 3
  %mul = mul i32 %shl, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmap)
  %cmp = icmp eq i32 %bitmap, 0
  br i1 %cmp, label %if.then9, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %15 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %s_blocksize_bits, align 4
  %conv10 = zext i8 %16 to i32
  %shr = lshr i32 65536, %conv10
  %add11 = add nuw nsw i32 %shr, 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.else.if.end12_crit_edge, %if.then
  %block.0 = phi i32 [ %conv7, %if.then ], [ %add11, %if.then9 ], [ %mul, %if.else.if.end12_crit_edge ]
  %conv13 = zext i32 %block.0 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %17 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call ptr @__bread_gfp(ptr noundef %18, i64 noundef %conv13, i32 noundef %1, i32 noundef 8) #8
  %cmp15 = icmp eq ptr %call.i, null
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.reiserfs_read_bitmap_block, ptr noundef nonnull @__func__.reiserfs_read_bitmap_block, i32 noundef %block.0) #8
  br label %if.end67

if.else18:                                        ; preds = %if.end12
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not = icmp eq i32 %21, 0
  br i1 %tobool20.not, label %if.else18.do.body_crit_edge, label %if.then21

if.else18.do.body_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %wait = getelementptr inbounds %struct.reiserfs_sb_info, ptr %23, i32 0, i32 27, i32 31, i32 1
  %24 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wait, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %wait, align 4
  %call23 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %sb) #8
  tail call void @__wait_on_buffer(ptr noundef nonnull %call.i) #8
  tail call void @reiserfs_write_lock_nested(ptr noundef %sb, i32 noundef %call23) #8
  br label %do.body

do.body:                                          ; preds = %if.then21, %if.else18.do.body_crit_edge
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %call.i, align 4
  %and1.i.i89 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i89)
  %tobool26.not = icmp eq i32 %and1.i.i89, 0
  br i1 %tobool26.not, label %do.body36, label %do.body43, !prof !114

do.body36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1444, 0\0A.popsection", ""() #8, !srcloc !123
  unreachable

do.body43:                                        ; preds = %do.body
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count, i32 noundef 4) #8
  %28 = ptrtoint ptr %b_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %b_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp45 = icmp eq i32 %29, 0
  br i1 %cmp45, label %do.body54, label %do.end62, !prof !114

do.body54:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1445, 0\0A.popsection", ""() #8, !srcloc !124
  unreachable

do.end62:                                         ; preds = %do.body43
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp63 = icmp eq i32 %31, -1
  br i1 %cmp63, label %if.then65, label %do.end62.if.end67_crit_edge

do.end62.if.end67_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then65:                                        ; preds = %do.end62
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %b_size.i, align 8
  %add.ptr.i = getelementptr i8, ptr %33, i32 %35
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %33, align 4
  %38 = and i32 %37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then65.if.end.i_crit_edge

if.then65.if.end.i_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %sb, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.reiserfs_cache_bitmap_metadata, ptr noundef nonnull @.str.40, i64 noundef %40) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then65.if.end.i_crit_edge
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %add.ptr, align 4
  %incdec.ptr22.i = getelementptr i32, ptr %add.ptr.i, i32 -1
  %42 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data.i, align 4
  %cmp.not23.i = icmp ult ptr %incdec.ptr22.i, %43
  br i1 %cmp.not23.i, label %if.end.i.if.end67_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.if.end67_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %incdec.ptr24.i = phi ptr [ %incdec.ptr.i, %if.end12.i.while.body.i_crit_edge ], [ %incdec.ptr22.i, %if.end.i.while.body.i_crit_edge ]
  %44 = ptrtoint ptr %incdec.ptr24.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %incdec.ptr24.i, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %45, label %cond.false.i.i [
    i32 0, label %if.then4.i
    i32 -1, label %while.body.i.if.end12.i_crit_edge
  ]

while.body.i.if.end12.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then4.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr, align 4
  br label %if.end12.sink.split.i

cond.false.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %45) #8
  %sub.i = sub i32 32, %call.i.i.i
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr, align 4
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %cond.false.i.i, %if.then4.i
  %.sink.i = phi i32 [ %50, %cond.false.i.i ], [ 32, %if.then4.i ]
  %sub.sink.i = phi i32 [ %sub.i, %cond.false.i.i ], [ %48, %if.then4.i ]
  %add10.i = add i32 %sub.sink.i, %.sink.i
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add10.i, ptr %add.ptr, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end12.sink.split.i, %while.body.i.if.end12.i_crit_edge
  %incdec.ptr.i = getelementptr i32, ptr %incdec.ptr24.i, i32 -1
  %52 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_data.i, align 4
  %cmp.not.i = icmp ult ptr %incdec.ptr.i, %53
  br i1 %cmp.not.i, label %if.end12.i.if.end67_crit_edge, label %if.end12.i.while.body.i_crit_edge

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end12.i.if.end67_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.end67:                                         ; preds = %if.end12.i.if.end67_crit_edge, %if.end.i.if.end67_crit_edge, %do.end62.if.end67_crit_edge, %if.then17
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_write_unlock_nested(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_init_bitmap_cache(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_rs.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %3, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %sub.i = add i32 %6, -1
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize.i, align 16
  %mul.i = shl i32 %8, 3
  %div.i = udiv i32 %sub.i, %mul.i
  %add.i = add i32 %div.i, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #8
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %retval.0.i = select i1 %10, i32 -1, i32 %11
  %call2 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #13
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %add.i, 2
  %12 = call ptr @memset(ptr %call2, i32 255, i32 %mul)
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_ap_bitmap = getelementptr inbounds %struct.reiserfs_sb_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %s_ap_bitmap to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call2, ptr %s_ap_bitmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_free_bitmap_cache(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_ap_bitmap = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_ap_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_ap_bitmap, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vfree(ptr noundef nonnull %3) #8
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_ap_bitmap4 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %s_ap_bitmap4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %s_ap_bitmap4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyed_hash(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_prepare_for_journal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_mark_dirty(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_update_sd_size(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dirid_groups(ptr nocapture noundef %hint) unnamed_addr #0 align 64 {
entry:
  %id.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %th = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 4
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hint, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %5, i32 -264
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  br label %if.end5

if.else:                                          ; preds = %entry
  %formatted_node = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 9
  %9 = ptrtoint ptr %formatted_node to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %formatted_node, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.else.if.end14_crit_edge, label %if.then3

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %key = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 2
  %10 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then
  %dirid.0 = phi i32 [ %8, %if.then ], [ %11, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirid.0)
  %tobool6.not = icmp eq i32 %dirid.0, 0
  br i1 %tobool6.not, label %if.end5.if.end14_crit_edge, label %if.then7

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.addr.i)
  %12 = ptrtoint ptr %id.addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dirid.0, ptr %id.addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dirid.0)
  %cmp.i = icmp ult i32 %dirid.0, 3
  br i1 %cmp.i, label %if.then7.bmap_hash_id.exit_crit_edge, label %if.else.i

if.then7.bmap_hash_id.exit_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %bmap_hash_id.exit

if.else.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @keyed_hash(ptr noundef nonnull %id.addr.i, i32 noundef 4) #8
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_rs.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %s_rs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_rs.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %16, align 1
  %19 = call i32 @llvm.bswap.i32(i32 %18) #8
  %sub.i.i = add i32 %19, -1
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize.i.i, align 16
  %mul.i.i = shl i32 %21, 3
  %div.i.i = udiv i32 %sub.i.i, %mul.i.i
  %add.i.i = add i32 %div.i.i, 1
  %rem.i = urem i32 %call.i, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 1, i32 %rem.i
  br label %bmap_hash_id.exit

bmap_hash_id.exit:                                ; preds = %if.else.i, %if.then7.bmap_hash_id.exit_crit_edge
  %bm.0.i = phi i32 [ %spec.store.select.i, %if.else.i ], [ 1, %if.then7.bmap_hash_id.exit_crit_edge ]
  %s_fs_info.i.i11.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i11.i, align 16
  %s_rs.i12.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %s_rs.i12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_rs.i12.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %25, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %27) #8
  %sub.i13.i = add i32 %28, -1
  %s_blocksize.i14.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %s_blocksize.i14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocksize.i14.i, align 16
  %mul.i15.i = shl i32 %30, 3
  %div.i16.i = udiv i32 %sub.i13.i, %mul.i15.i
  %add.i17.i = add i32 %div.i16.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bm.0.i, i32 %add.i17.i)
  %cmp5.not.i = icmp ult i32 %bm.0.i, %add.i17.i
  %spec.select.i = select i1 %cmp5.not.i, i32 %bm.0.i, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.addr.i)
  %mul = mul i32 %spec.select.i, %mul.i15.i
  %31 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hint, align 8
  %tobool10.not = icmp eq ptr %32, null
  %div25 = lshr i32 %30, 1
  %add = select i1 %tobool10.not, i32 0, i32 %div25
  %hash.0 = add i32 %mul, %add
  %search_start = getelementptr inbounds %struct.__reiserfs_blocknr_hint, ptr %hint, i32 0, i32 7
  %33 = ptrtoint ptr %search_start to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %hash.0, ptr %search_start, align 8
  br label %if.end14

if.end14:                                         ; preds = %bmap_hash_id.exit, %if.end5.if.end14_crit_edge, %if.else.if.end14_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scan_bitmap_block(ptr noundef %th, i32 noundef %bmap_n, ptr nocapture noundef %beg, i32 noundef %boundary, i32 noundef %max, i32 noundef %unfm) unnamed_addr #0 align 64 {
entry:
  %tmp.i10 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_ap_bitmap = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %s_ap_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_ap_bitmap, align 4
  %arrayidx = getelementptr %struct.reiserfs_bitmap_info, ptr %5, i32 %bmap_n
  %6 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %beg, align 4
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %8 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !114

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #8, !srcloc !125
  unreachable

do.body10:                                        ; preds = %entry
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_rs.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %11, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %sub.i = add i32 %14, -1
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocksize.i, align 16
  %mul.i = shl i32 %16, 3
  %div.i = udiv i32 %sub.i, %mul.i
  %add.i = add i32 %div.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %bmap_n)
  %cmp.not = icmp ugt i32 %add.i, %bmap_n
  br i1 %cmp.not, label %do.end16, label %if.then12

if.then12:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call fastcc i32 @reiserfs_bmap_count(ptr noundef %1)
  %sub = add i32 %call13, -1
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.scan_bitmap_block, ptr noundef nonnull @.str.49, i32 noundef 155, ptr noundef nonnull @__func__.scan_bitmap_block, i32 noundef %bmap_n, i32 noundef %sub) #11
  unreachable

do.end16:                                         ; preds = %do.body10
  %bmap = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 31, i32 2
  %17 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bmap, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %bmap, align 4
  %tobool18.not = icmp eq ptr %arrayidx, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.scan_bitmap_block, ptr noundef nonnull @.str.51, i32 noundef %bmap_n) #8
  br label %cleanup101

if.end20:                                         ; preds = %do.end16
  %call21 = tail call ptr @reiserfs_read_bitmap_block(ptr noundef %1, i32 noundef %bmap_n)
  %cmp22 = icmp eq ptr %call21, null
  br i1 %cmp22, label %if.end20.cleanup101_crit_edge, label %while.cond.preheader

if.end20.cleanup101_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup101

while.cond.preheader:                             ; preds = %if.end20
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp258081 = icmp eq i32 %20, 0
  br i1 %cmp258081, label %while.cond.preheader.brelse.exit_crit_edge, label %if.end27.lr.ph.lr.ph

while.cond.preheader.brelse.exit_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.end27.lr.ph.lr.ph:                             ; preds = %while.cond.preheader
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call21, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unfm)
  %tobool32.not = icmp eq i32 %unfm, 0
  br label %if.end27

brelse.exit:                                      ; preds = %while.cond.backedge.brelse.exit_crit_edge, %cleanup.brelse.exit_crit_edge, %while.cond.preheader.brelse.exit_crit_edge
  call void @__brelse(ptr noundef nonnull %call21) #8
  br label %cleanup101

if.end27:                                         ; preds = %if.end27.backedge, %if.end27.lr.ph.lr.ph
  %21 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data, align 4
  %23 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %beg, align 4
  %call.i = call i32 @_find_next_zero_bit_le(ptr noundef %22, i32 noundef %boundary, i32 noundef %24) #8
  %25 = ptrtoint ptr %beg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i, ptr %beg, align 4
  %add = add i32 %call.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %boundary)
  %cmp29 = icmp sgt i32 %add, %boundary
  br i1 %cmp29, label %brelse.exit4, label %if.end31

brelse.exit4:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %call21) #8
  br label %cleanup101

if.end31:                                         ; preds = %if.end27
  br i1 %tobool32.not, label %if.end31.if.end36_crit_edge, label %land.lhs.true

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %26 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %tmp.i, align 4, !annotation !121
  %call.i5 = call i32 @reiserfs_in_journal(ptr noundef %1, i32 noundef %bmap_n, i32 noundef %call.i, i32 noundef 1, ptr noundef nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %is_block_in_journal.exit.thread, label %if.then.i7

is_block_in_journal.exit.thread:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %if.end36

if.then.i7:                                       ; preds = %land.lhs.true
  %27 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %beg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %beg, align 4
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %in_journal_hint.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %31, i32 0, i32 27, i32 31, i32 4
  br label %is_block_in_journal.exit

if.else.i:                                        ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %beg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %beg, align 4
  %33 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i, align 16
  %in_journal_nohint.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %34, i32 0, i32 27, i32 31, i32 5
  br label %is_block_in_journal.exit

is_block_in_journal.exit:                         ; preds = %if.else.i, %if.then2.i
  %in_journal_nohint.sink20.i = phi ptr [ %in_journal_nohint.i, %if.else.i ], [ %in_journal_hint.i, %if.then2.i ]
  %35 = ptrtoint ptr %in_journal_nohint.sink20.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in_journal_nohint.sink20.i, align 4
  %inc7.i = add i32 %36, 1
  store i32 %inc7.i, ptr %in_journal_nohint.sink20.i, align 4
  %37 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i, align 16
  %retry.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %38, i32 0, i32 27, i32 31, i32 3
  %39 = ptrtoint ptr %retry.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %retry.i, align 4
  %inc11.i = add i32 %40, 1
  store i32 %inc11.i, ptr %retry.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %while.cond.backedge

if.end36:                                         ; preds = %is_block_in_journal.exit.thread, %if.end31.if.end36_crit_edge
  %41 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %beg, align 4
  %end.065 = add i32 %42, 1
  %add3866 = add i32 %42, %max
  call void @__sanitizer_cov_trace_cmp4(i32 %end.065, i32 %add3866)
  %cmp39.not67 = icmp slt i32 %end.065, %add3866
  call void @__sanitizer_cov_trace_cmp4(i32 %end.065, i32 %boundary)
  %cmp40.not68 = icmp slt i32 %end.065, %boundary
  %or.cond69 = and i1 %cmp40.not68, %cmp39.not67
  br i1 %or.cond69, label %if.end36.lor.lhs.false41_crit_edge, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end36.lor.lhs.false41_crit_edge:               ; preds = %if.end36
  br label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %for.inc.lor.lhs.false41_crit_edge, %if.end36.lor.lhs.false41_crit_edge
  %end.071 = phi i32 [ %end.0, %for.inc.lor.lhs.false41_crit_edge ], [ %end.065, %if.end36.lor.lhs.false41_crit_edge ]
  %end.0.in70 = phi i32 [ %end.071, %for.inc.lor.lhs.false41_crit_edge ], [ %42, %if.end36.lor.lhs.false41_crit_edge ]
  %43 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_data, align 4
  %div3.i.i = lshr i32 %end.071, 5
  %arrayidx.i.i = getelementptr i32, ptr %44, i32 %div3.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i.i, align 4
  %xor.i = and i32 %end.071, 31
  %and.i.i = xor i32 %xor.i, 24
  %47 = shl nuw i32 1, %and.i.i
  %48 = and i32 %46, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool44.not = icmp eq i32 %48, 0
  br i1 %tobool44.not, label %if.end46, label %lor.lhs.false41.for.end_crit_edge

lor.lhs.false41.for.end_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end46:                                         ; preds = %lor.lhs.false41
  br i1 %tobool32.not, label %if.end46.for.inc_crit_edge, label %land.lhs.true48

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true48:                                  ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i10) #8
  %49 = ptrtoint ptr %tmp.i10 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %tmp.i10, align 4, !annotation !121
  %call.i11 = call i32 @reiserfs_in_journal(ptr noundef %1, i32 noundef %bmap_n, i32 noundef %end.071, i32 noundef 1, ptr noundef nonnull %tmp.i10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %is_block_in_journal.exit29.thread, label %if.then.i14

is_block_in_journal.exit29.thread:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i10) #8
  br label %for.inc

if.then.i14:                                      ; preds = %land.lhs.true48
  %50 = ptrtoint ptr %tmp.i10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tmp.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool1.not.i13 = icmp eq i32 %51, 0
  br i1 %tobool1.not.i13, label %if.else.i21, label %if.then2.i17

if.then2.i17:                                     ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  %in_journal_hint.i16 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %53, i32 0, i32 27, i32 31, i32 4
  br label %is_block_in_journal.exit29

if.else.i21:                                      ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  %add.i18 = add i32 %end.0.in70, 2
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  %in_journal_nohint.i20 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %55, i32 0, i32 27, i32 31, i32 5
  br label %is_block_in_journal.exit29

is_block_in_journal.exit29:                       ; preds = %if.else.i21, %if.then2.i17
  %next.3 = phi i32 [ %add.i18, %if.else.i21 ], [ %51, %if.then2.i17 ]
  %in_journal_nohint.sink20.i22 = phi ptr [ %in_journal_nohint.i20, %if.else.i21 ], [ %in_journal_hint.i16, %if.then2.i17 ]
  %56 = ptrtoint ptr %in_journal_nohint.sink20.i22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %in_journal_nohint.sink20.i22, align 4
  %inc7.i23 = add i32 %57, 1
  store i32 %inc7.i23, ptr %in_journal_nohint.sink20.i22, align 4
  %58 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i, align 16
  %retry.i25 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %59, i32 0, i32 27, i32 31, i32 3
  %60 = ptrtoint ptr %retry.i25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %retry.i25, align 4
  %inc11.i26 = add i32 %61, 1
  store i32 %inc11.i26, ptr %retry.i25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i10) #8
  br label %for.end

for.inc:                                          ; preds = %is_block_in_journal.exit29.thread, %if.end46.for.inc_crit_edge
  %end.0 = add i32 %end.071, 1
  %62 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %beg, align 4
  %add38 = add i32 %63, %max
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0, i32 %add38)
  %cmp39.not = icmp slt i32 %end.0, %add38
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0, i32 %boundary)
  %cmp40.not = icmp slt i32 %end.0, %boundary
  %or.cond = and i1 %cmp40.not, %cmp39.not
  br i1 %or.cond, label %for.inc.lor.lhs.false41_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.lor.lhs.false41_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false41

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %is_block_in_journal.exit29, %lor.lhs.false41.for.end_crit_edge, %if.end36.for.end_crit_edge
  %end.054 = phi i32 [ %end.071, %is_block_in_journal.exit29 ], [ %end.065, %if.end36.for.end_crit_edge ], [ %end.071, %lor.lhs.false41.for.end_crit_edge ], [ %end.0, %for.inc.for.end_crit_edge ]
  %next.6 = phi i32 [ %next.3, %is_block_in_journal.exit29 ], [ %end.065, %if.end36.for.end_crit_edge ], [ %end.071, %lor.lhs.false41.for.end_crit_edge ], [ %end.0, %for.inc.for.end_crit_edge ]
  %64 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %beg, align 4
  %sub54 = sub i32 %end.054, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub54)
  %cmp55 = icmp sgt i32 %sub54, 0
  br i1 %cmp55, label %if.then56, label %if.else

if.then56:                                        ; preds = %for.end
  %call57 = call i32 @reiserfs_prepare_for_journal(ptr noundef %1, ptr noundef nonnull %call21, i32 noundef 1) #8
  %66 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %beg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %end.054)
  %cmp5973 = icmp slt i32 %67, %end.054
  br i1 %cmp5973, label %if.then56.for.body_crit_edge, label %if.then56.cleanup.thread_crit_edge

if.then56.cleanup.thread_crit_edge:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then56.for.body_crit_edge:                     ; preds = %if.then56
  br label %for.body

for.body:                                         ; preds = %for.inc77.for.body_crit_edge, %if.then56.for.body_crit_edge
  %i.074 = phi i32 [ %inc78, %for.inc77.for.body_crit_edge ], [ %67, %if.then56.for.body_crit_edge ]
  %68 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_data, align 4
  %xor.i30 = and i32 %i.074, 31
  %rem.i.i = xor i32 %xor.i30, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div5.i.i = lshr i32 %i.074, 5
  %add.ptr.i.i = getelementptr i32, ptr %69, i32 %div5.i.i
  %70 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %71, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %72 = and i32 %71, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool62.not = icmp eq i32 %72, 0
  br i1 %tobool62.not, label %for.inc77, label %if.then63

if.then63:                                        ; preds = %for.body
  %73 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_fs_info.i, align 16
  %stolen = getelementptr inbounds %struct.reiserfs_sb_info, ptr %74, i32 0, i32 27, i32 31, i32 6
  %75 = ptrtoint ptr %stolen to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %stolen, align 4
  %inc67 = add i32 %76, 1
  store i32 %inc67, ptr %stolen, align 4
  %77 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %beg, align 4
  %add68 = add i32 %78, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.074, i32 %add68)
  %cmp69.not = icmp slt i32 %i.074, %add68
  br i1 %cmp69.not, label %while.cond72.preheader, label %if.then63.cleanup.thread_crit_edge

if.then63.cleanup.thread_crit_edge:               ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

while.cond72.preheader:                           ; preds = %if.then63
  %dec77 = add i32 %i.074, -1
  %79 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %beg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec77, i32 %80)
  %cmp73.not78 = icmp slt i32 %dec77, %80
  br i1 %cmp73.not78, label %while.cond72.preheader.cleanup_crit_edge, label %while.cond72.preheader.while.body74_crit_edge

while.cond72.preheader.while.body74_crit_edge:    ; preds = %while.cond72.preheader
  br label %while.body74

while.cond72.preheader.cleanup_crit_edge:         ; preds = %while.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body74:                                     ; preds = %while.body74.while.body74_crit_edge, %while.cond72.preheader.while.body74_crit_edge
  %dec79 = phi i32 [ %dec, %while.body74.while.body74_crit_edge ], [ %dec77, %while.cond72.preheader.while.body74_crit_edge ]
  %81 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %b_data, align 4
  %xor.i32 = and i32 %dec79, 31
  %rem.i.i33 = xor i32 %xor.i32, 24
  %shl.i.i34 = shl nuw i32 1, %rem.i.i33
  %div2.i.i = lshr i32 %dec79, 5
  %add.ptr.i.i35 = getelementptr i32, ptr %82, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i34, -1
  %83 = ptrtoint ptr %add.ptr.i.i35 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i35, align 4
  %and.i.i36 = and i32 %84, %neg.i.i
  store i32 %and.i.i36, ptr %add.ptr.i.i35, align 4
  %dec = add i32 %dec79, -1
  %85 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %beg, align 4
  %cmp73.not = icmp slt i32 %dec, %86
  br i1 %cmp73.not, label %while.body74.cleanup_crit_edge, label %while.body74.while.body74_crit_edge

while.body74.while.body74_crit_edge:              ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body74

while.body74.cleanup_crit_edge:                   ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc77:                                        ; preds = %for.body
  %inc78 = add i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc78, %end.054
  br i1 %exitcond.not, label %for.inc77.cleanup.thread_crit_edge, label %for.inc77.for.body_crit_edge

for.inc77.for.body_crit_edge:                     ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc77.cleanup.thread_crit_edge:               ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.inc77.cleanup.thread_crit_edge, %if.then63.cleanup.thread_crit_edge, %if.then56.cleanup.thread_crit_edge
  %end.1 = phi i32 [ %end.054, %for.inc77.cleanup.thread_crit_edge ], [ %end.054, %if.then56.cleanup.thread_crit_edge ], [ %i.074, %if.then63.cleanup.thread_crit_edge ]
  %87 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %beg, align 4
  %sub80.neg = sub i32 %88, %end.1
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx, align 4
  %sub82 = add i32 %sub80.neg, %90
  store i32 %sub82, ptr %arrayidx, align 4
  %call83 = call i32 @journal_mark_dirty(ptr noundef %th, ptr noundef nonnull %call21) #8
  call void @__brelse(ptr noundef nonnull %call21) #8
  %91 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info.i, align 16
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %call85 = call i32 @reiserfs_prepare_for_journal(ptr noundef %1, ptr noundef %94, i32 noundef 1) #8
  %95 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %s_rs, align 4
  %s_free_blocks = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %s_free_blocks, align 1
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  %102 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %beg, align 4
  %sub88.neg = sub i32 %103, %end.1
  %sub89 = add i32 %sub88.neg, %101
  %104 = call i32 @llvm.bswap.i32(i32 %sub89)
  %105 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %s_free_blocks, align 1
  %106 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_fs_info.i, align 16
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %call98 = call i32 @journal_mark_dirty(ptr noundef %th, ptr noundef %109) #8
  %110 = ptrtoint ptr %beg to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %beg, align 4
  %sub99 = sub i32 %end.1, %111
  br label %cleanup101

cleanup:                                          ; preds = %while.body74.cleanup_crit_edge, %while.cond72.preheader.cleanup_crit_edge
  call void @reiserfs_restore_prepared_buffer(ptr noundef %1, ptr noundef nonnull %call21) #8
  %112 = ptrtoint ptr %beg to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %7, ptr %beg, align 4
  %113 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp25 = icmp eq i32 %114, 0
  br i1 %cmp25, label %cleanup.brelse.exit_crit_edge, label %cleanup.if.end27.backedge_crit_edge

cleanup.if.end27.backedge_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.backedge

cleanup.brelse.exit_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.end27.backedge:                                ; preds = %while.cond.backedge.if.end27.backedge_crit_edge, %cleanup.if.end27.backedge_crit_edge
  br label %if.end27

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %beg to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %next.6, ptr %beg, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %is_block_in_journal.exit
  %116 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp2580 = icmp eq i32 %117, 0
  br i1 %cmp2580, label %while.cond.backedge.brelse.exit_crit_edge, label %while.cond.backedge.if.end27.backedge_crit_edge

while.cond.backedge.if.end27.backedge_crit_edge:  ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.backedge

while.cond.backedge.brelse.exit_crit_edge:        ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

cleanup101:                                       ; preds = %cleanup.thread, %brelse.exit4, %brelse.exit, %if.end20.cleanup101_crit_edge, %if.then19
  %retval.3 = phi i32 [ 0, %brelse.exit ], [ 0, %brelse.exit4 ], [ 0, %if.then19 ], [ 0, %if.end20.cleanup101_crit_edge ], [ %sub99, %cleanup.thread ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_restore_prepared_buffer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_in_journal(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { noreturn nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/bitmap.c", i32 68, i32 3}
!2 = !{ptr @__func__.is_reusable, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/bitmap.c", i32 85, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/reiserfs/bitmap.c", i32 92, i32 4}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/reiserfs/bitmap.c", i32 100, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/reiserfs/bitmap.c", i32 107, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/reiserfs/bitmap.c", i32 474, i32 2}
!17 = !{ptr @__func__.reiserfs_free_block, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/reiserfs/bitmap.c", i32 479, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/reiserfs/bitmap.c", i32 557, i32 4}
!24 = !{ptr @__func__.reiserfs_discard_all_prealloc, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/reiserfs/bitmap.c", i32 581, i32 39}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/reiserfs/bitmap.c", i32 585, i32 26}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/reiserfs/bitmap.c", i32 587, i32 4}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/reiserfs/bitmap.c", i32 599, i32 26}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/reiserfs/bitmap.c", i32 606, i32 26}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/reiserfs/bitmap.c", i32 611, i32 26}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/reiserfs/bitmap.c", i32 616, i32 26}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/reiserfs/bitmap.c", i32 621, i32 26}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/reiserfs/bitmap.c", i32 625, i32 26}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/reiserfs/bitmap.c", i32 629, i32 26}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/reiserfs/bitmap.c", i32 633, i32 26}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/reiserfs/bitmap.c", i32 638, i32 26}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/reiserfs/bitmap.c", i32 643, i32 26}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/reiserfs/bitmap.c", i32 648, i32 26}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/reiserfs/bitmap.c", i32 653, i32 26}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/reiserfs/bitmap.c", i32 658, i32 26}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/reiserfs/bitmap.c", i32 665, i32 26}
!60 = !{ptr @__func__.reiserfs_parse_alloc_options, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/reiserfs/bitmap.c", i32 674, i32 3}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/reiserfs/bitmap.c", i32 679, i32 19}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/reiserfs/bitmap.c", i32 699, i32 16}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/reiserfs/bitmap.c", i32 704, i32 20}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/reiserfs/bitmap.c", i32 712, i32 20}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/reiserfs/bitmap.c", i32 763, i32 19}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/reiserfs/bitmap.c", i32 768, i32 19}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/reiserfs/bitmap.c", i32 1401, i32 3}
!77 = !{ptr @__func__.reiserfs_cache_bitmap_metadata, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/reiserfs/bitmap.c", i32 1434, i32 3}
!81 = !{ptr @__func__.reiserfs_read_bitmap_block, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/reiserfs/bitmap.c", i32 435, i32 3}
!84 = !{ptr @__func__._reiserfs_free_block, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/reiserfs/bitmap.c", i32 448, i32 3}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @__func__.__discard_prealloc, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/reiserfs/bitmap.c", i32 512, i32 3}
!91 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @__func__.reiserfs_free_prealloc_block, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/reiserfs/bitmap.c", i32 495, i32 2}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @__func__.get_left_neighbor, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/reiserfs/bitmap.c", i32 872, i32 2}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @__func__.scan_bitmap_block, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/reiserfs/bitmap.c", i32 154, i32 2}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/reiserfs/bitmap.c", i32 159, i32 3}
!103 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{i64 2154178084, i64 2154178569, i64 2154178121, i64 2154178177, i64 2154178211, i64 2154178235, i64 2154178276, i64 2154178297, i64 2154178325, i64 2154178359}
!116 = !{i64 2154175470, i64 2154175955, i64 2154175507, i64 2154175563, i64 2154175597, i64 2154175621, i64 2154175662, i64 2154175683, i64 2154175711, i64 2154175745}
!117 = !{i64 2154189070, i64 2154189555, i64 2154189107, i64 2154189163, i64 2154189197, i64 2154189221, i64 2154189262, i64 2154189283, i64 2154189311, i64 2154189345}
!118 = !{i64 2154187367, i64 2154187852, i64 2154187404, i64 2154187460, i64 2154187494, i64 2154187518, i64 2154187559, i64 2154187580, i64 2154187608, i64 2154187642}
!119 = !{i64 2154181030, i64 2154181515, i64 2154181067, i64 2154181123, i64 2154181157, i64 2154181181, i64 2154181222, i64 2154181243, i64 2154181271, i64 2154181305}
!120 = !{i64 2154190699, i64 2154191184, i64 2154190736, i64 2154190792, i64 2154190826, i64 2154190850, i64 2154190891, i64 2154190912, i64 2154190940, i64 2154190974}
!121 = !{!"auto-init"}
!122 = !{i64 2154172579, i64 2154173064, i64 2154172616, i64 2154172672, i64 2154172706, i64 2154172730, i64 2154172771, i64 2154172792, i64 2154172820, i64 2154172854}
!123 = !{i64 2154212591, i64 2154213077, i64 2154212628, i64 2154212684, i64 2154212718, i64 2154212742, i64 2154212783, i64 2154212804, i64 2154212832, i64 2154212866}
!124 = !{i64 2154214213, i64 2154214699, i64 2154214250, i64 2154214306, i64 2154214340, i64 2154214364, i64 2154214405, i64 2154214426, i64 2154214454, i64 2154214488}
!125 = !{i64 2154167830, i64 2154168315, i64 2154167867, i64 2154167923, i64 2154167957, i64 2154167981, i64 2154168022, i64 2154168043, i64 2154168071, i64 2154168105}
