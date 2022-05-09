; ModuleID = '/llk/IR_all_yes/fs/btrfs/ref-verify.c_pt.bc'
source_filename = "../fs/btrfs/ref-verify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_ref = type { i32, i32, i8, i64, i64, i64, i64, %union.anon.83 }
%union.anon.83 = type { %struct.btrfs_data_ref }
%struct.btrfs_data_ref = type { i64, i64, i64 }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%union.anon.80 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ref_entry = type { i64, i64, i64, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ref_action = type { i32, i64, %struct.ref_entry, %struct.list_head, [16 x i32], i32 }
%struct.block_entry = type { i64, i64, i64, i32, i32, %struct.rb_root, %struct.rb_root, %struct.rb_node, %struct.list_head }
%struct.root_entry = type { i64, i64, %struct.rb_node }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.btrfs_extent_item = type { i64, i64, i64 }
%struct.btrfs_tree_block_info = type { %struct.btrfs_disk_key, i8 }
%struct.btrfs_extent_inline_ref = type <{ i8, i64 }>

@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013re-allocated a block that still has references to it!\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013trying to do action %d to bytenr %llu num_bytes %llu but there is no existing entry!\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013trying to do action %d for a bytenr that has 0 total references\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013dropping a ref for a existing root that doesn't have a ref on the block\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013attempting to add another ref for an existing ref on a tree block\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013dropping a ref for a root that doesn't have a ref on the block\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013failed to find root %llu for %llu\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/btrfs/ref-verify.c\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013block entry overlaps a block group [%llu,%llu]!\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013dumping block entry [%llu %llu], num_refs %llu, metadata %d, from disk %d\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013  ref root %llu, parent %llu, owner %llu, offset %llu, num_refs %llu\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013  root entry %llu, num_refs %llu\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013  Ref action %d, root %llu, ref_root %llu, parent %llu, owner %llu, offset %llu, num_refs %llu\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013  ref-verify: no stacktrace\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013invalid key type in iref\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ref_root\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"re\00", [29 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013existing ref when reading from disk?\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013missing root in new block entry?\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013existing shared ref when reading from disk?\00", [50 x i8] zeroinitializer }, align 32
@switch.table.btrfs_build_ref_tree = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 9, i32 0, i32 29, i32 0, i32 0, i32 0, i32 9, i32 0, i32 13], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 168, i64 169, i64 176, i64 178, i64 182, i64 184]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 8, i64 176, i64 178, i64 182, i64 184]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 744, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 785, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 793, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 816, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 832, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 843, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 862, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 903, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 950, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 628, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 635, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 643, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 609, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 215, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 486, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 339, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 341, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 3491, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 413, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 421, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [25 x i8] c"../fs/btrfs/ref-verify.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 375, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [34 x i8] c"switch.table.btrfs_build_ref_tree\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @switch.table.btrfs_build_ref_tree], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btrfs_build_ref_tree to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_ref_tree_mod(ptr noundef %fs_info, ptr nocapture noundef readonly %generic_ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %action1 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 1
  %0 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %action1, align 4
  %bytenr2 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 4
  %2 = ptrtoint ptr %bytenr2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytenr2, align 8
  %len = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 5
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len, align 8
  %parent3 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 6
  %6 = ptrtoint ptr %parent3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %parent3, align 8
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %8 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mount_opt, align 8
  %and = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup164_crit_edge, label %if.end

entry.cleanup164_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup164

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %generic_ref to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %generic_ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool5.not = icmp eq i64 %7, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  br i1 %tobool5.not, label %if.then6, label %if.then4.if.end7_crit_edge

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %owning_root = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %owning_root to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %owning_root, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4.if.end7_crit_edge
  %ref_root.0 = phi i64 [ 0, %if.then4.if.end7_crit_edge ], [ %13, %if.then6 ]
  %14 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %conv = sext i32 %16 to i64
  br label %if.end13

if.else:                                          ; preds = %if.end
  br i1 %tobool5.not, label %if.then9, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %17 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 7
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %ino = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ino, align 8
  %offset11 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 7, i32 0, i32 2
  %22 = ptrtoint ptr %offset11 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %offset11, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else.if.end13_crit_edge, %if.end7
  %ref_root.1 = phi i64 [ %ref_root.0, %if.end7 ], [ 0, %if.else.if.end13_crit_edge ], [ %19, %if.then9 ]
  %owner.0 = phi i64 [ %conv, %if.end7 ], [ 0, %if.else.if.end13_crit_edge ], [ %21, %if.then9 ]
  %offset.0 = phi i64 [ 0, %if.end7 ], [ 0, %if.else.if.end13_crit_edge ], [ %23, %if.then9 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %owner.0)
  %cmp14 = icmp ult i64 %owner.0, 256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3392, i32 noundef 56) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3136, i32 noundef 152) #10
  %tobool17.not = icmp eq ptr %call7.i, null
  %tobool18.not = icmp eq ptr %call7.i.i, null
  %or.cond = select i1 %tobool17.not, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  br label %if.then160

if.end20:                                         ; preds = %if.end13
  %parent21 = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %parent21 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %7, ptr %parent21, align 8
  %owner22 = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %owner22 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %owner.0, ptr %owner22, align 8
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %ref_root.1, ptr %call7.i.i, align 8
  %offset23 = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %offset23 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %offset.0, ptr %offset23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp24 = icmp eq i32 %1, 2
  %cond = select i1 %cmp24, i32 -1, i32 1
  %conv26 = sext i32 %cond to i64
  %num_refs = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %num_refs to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv26, ptr %num_refs, align 8
  %ref27 = getelementptr inbounds %struct.ref_action, ptr %call7.i, i32 0, i32 2
  %31 = call ptr @memcpy(ptr %ref27, ptr %call7.i.i, i32 56)
  %owner29 = getelementptr inbounds %struct.ref_action, ptr %call7.i, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %owner29 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %owner.0, ptr %owner29, align 8
  %offset31 = getelementptr inbounds %struct.ref_action, ptr %call7.i, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %offset31 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %offset.0, ptr %offset31, align 8
  %34 = ptrtoint ptr %ref27 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %ref_root.1, ptr %ref27, align 8
  %trace.i = getelementptr inbounds %struct.ref_action, ptr %call7.i, i32 0, i32 4
  %call.i = tail call i32 @stack_trace_save(ptr noundef %trace.i, i32 noundef 16, i32 noundef 2) #7
  %trace_len.i = getelementptr inbounds %struct.ref_action, ptr %call7.i, i32 0, i32 5
  %35 = ptrtoint ptr %trace_len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i, ptr %trace_len.i, align 8
  %list = getelementptr inbounds %struct.ref_action, ptr %call7.i, i32 0, i32 3
  %36 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.ref_action, ptr %call7.i, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %list, ptr %prev.i, align 4
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %1, ptr %call7.i, align 8
  %real_root = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 3
  %39 = ptrtoint ptr %real_root to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %real_root, align 8
  %root = getelementptr inbounds %struct.ref_action, ptr %call7.i, i32 0, i32 1
  %41 = ptrtoint ptr %root to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %root, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp35 = icmp eq i32 %1, 3
  br i1 %cmp35, label %if.then37, label %if.else58

if.then37:                                        ; preds = %if.end20
  %call38 = tail call fastcc ptr @add_block_entry(ptr noundef %fs_info, i64 noundef %3, i64 noundef %5, i64 noundef %ref_root.1)
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  %42 = ptrtoint ptr %call38 to i32
  br label %out

if.end42:                                         ; preds = %if.then37
  %num_refs43 = getelementptr inbounds %struct.block_entry, ptr %call38, i32 0, i32 2
  %43 = ptrtoint ptr %num_refs43 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %num_refs43, align 8
  %inc = add i64 %44, 1
  store i64 %inc, ptr %num_refs43, align 8
  br i1 %cmp14, label %if.then45, label %if.end42.if.end47_crit_edge

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %metadata46 = getelementptr inbounds %struct.block_entry, ptr %call38, i32 0, i32 3
  %45 = ptrtoint ptr %metadata46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %metadata46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %cmp49.not = icmp eq i64 %44, 0
  br i1 %cmp49.not, label %while.cond.preheader, label %if.then51

while.cond.preheader:                             ; preds = %if.end47
  %actions = getelementptr inbounds %struct.block_entry, ptr %call38, i32 0, i32 8
  %46 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %actions, align 4
  %cmp.i326.not410 = icmp eq ptr %47, %actions
  br i1 %cmp.i326.not410, label %while.cond.preheader.if.end88_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end88_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str) #11
  tail call fastcc void @dump_block_entry(ptr noundef %fs_info, ptr noundef %call38)
  tail call fastcc void @dump_ref_action(ptr noundef %fs_info, ptr noundef nonnull %call7.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %out_unlock

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %48 = phi ptr [ %58, %list_del.exit.while.body_crit_edge ], [ %47, %while.cond.preheader.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %48, i32 -72
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %48) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %48, align 4
  %prev.i327 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i327 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i327, align 4
  tail call void @kfree(ptr noundef %add.ptr) #7
  %57 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %actions, align 4
  %cmp.i326.not = icmp eq ptr %58, %actions
  br i1 %cmp.i326.not, label %list_del.exit.if.end88_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del.exit.if.end88_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.else58:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool60.not = icmp eq i64 %7, 0
  br i1 %tobool60.not, label %if.then61, label %if.else58.if.end70_crit_edge

if.else58.if.end70_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then61:                                        ; preds = %if.else58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i325 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3136, i32 noundef 32) #10
  %tobool63.not = icmp eq ptr %call7.i325, null
  br i1 %tobool63.not, label %cleanup, label %if.end65

if.end65:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %real_root to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %real_root, align 8
  %62 = ptrtoint ptr %call7.i325 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %call7.i325, align 8
  %num_refs69 = getelementptr inbounds %struct.root_entry, ptr %call7.i325, i32 0, i32 1
  %63 = ptrtoint ptr %num_refs69 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 0, ptr %num_refs69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.end65, %if.else58.if.end70_crit_edge
  %re.0 = phi ptr [ null, %if.else58.if.end70_crit_edge ], [ %call7.i325, %if.end65 ]
  %ref_root.2 = phi i64 [ %ref_root.1, %if.else58.if.end70_crit_edge ], [ %61, %if.end65 ]
  %ref_verify_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 184
  tail call void @_raw_spin_lock(ptr noundef %ref_verify_lock) #7
  %block_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 185
  %64 = ptrtoint ptr %block_tree to i32
  call void @__asan_load4_noabort(i32 %64)
  %n.017.i = load ptr, ptr %block_tree, align 4
  %tobool.not18.i = icmp eq ptr %n.017.i, null
  br i1 %tobool.not18.i, label %if.end70.if.then73_crit_edge, label %if.end70.while.body.i_crit_edge

if.end70.while.body.i_crit_edge:                  ; preds = %if.end70
  br label %while.body.i

if.end70.if.then73_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then73

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %if.end70.while.body.i_crit_edge
  %n.019.i = phi ptr [ %n.0.i, %if.end7.i.while.body.i_crit_edge ], [ %n.017.i, %if.end70.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.019.i, i32 -40
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %3)
  %cmp.i328 = icmp ult i64 %66, %3
  br i1 %cmp.i328, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i, i32 0, i32 1
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %3)
  %cmp4.i = icmp ugt i64 %66, %3
  br i1 %cmp4.i, label %if.then5.i, label %lookup_block_entry.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i, i32 0, i32 2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_right.i, %if.then.i ], [ %rb_left.i, %if.then5.i ]
  %67 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end7.i.if.then73_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end7.i.if.then73_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then73

lookup_block_entry.exit:                          ; preds = %if.else.i
  %add.ptr.i.le = getelementptr i8, ptr %n.019.i, i32 -40
  %tobool72.not = icmp eq ptr %add.ptr.i.le, null
  br i1 %tobool72.not, label %lookup_block_entry.exit.if.then73_crit_edge, label %if.else74

lookup_block_entry.exit.if.then73_crit_edge:      ; preds = %lookup_block_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then73

if.then73:                                        ; preds = %lookup_block_entry.exit.if.then73_crit_edge, %if.end7.i.if.then73_crit_edge, %if.end70.if.then73_crit_edge
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.1, i32 noundef %1, i64 noundef %3, i64 noundef %5) #11
  tail call fastcc void @dump_ref_action(ptr noundef %fs_info, ptr noundef %call7.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  br label %out_unlock

if.else74:                                        ; preds = %lookup_block_entry.exit
  %num_refs75 = getelementptr i8, ptr %n.019.i, i32 -24
  %68 = ptrtoint ptr %num_refs75 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %num_refs75, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %cmp76 = icmp eq i64 %69, 0
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.2, i32 noundef %1) #11
  tail call fastcc void @dump_block_entry(ptr noundef %fs_info, ptr noundef nonnull %add.ptr.i.le)
  tail call fastcc void @dump_ref_action(ptr noundef %fs_info, ptr noundef %call7.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  br label %out_unlock

if.end80:                                         ; preds = %if.else74
  br i1 %tobool60.not, label %if.then82, label %if.end80.if.end88_crit_edge

if.end80.if.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then82:                                        ; preds = %if.end80
  %roots = getelementptr i8, ptr %n.019.i, i32 -8
  %70 = ptrtoint ptr %roots to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %roots, align 4
  %tobool.not27.i = icmp eq ptr %71, null
  br i1 %tobool.not27.i, label %if.then82.insert_root_entry.exit.thread_crit_edge, label %while.body.lr.ph.i

if.then82.insert_root_entry.exit.thread_crit_edge: ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %insert_root_entry.exit.thread

while.body.lr.ph.i:                               ; preds = %if.then82
  %72 = ptrtoint ptr %re.0 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %re.0, align 8
  br label %while.body.i331

while.body.i331:                                  ; preds = %if.end8.i.while.body.i331_crit_edge, %while.body.lr.ph.i
  %74 = phi ptr [ %71, %while.body.lr.ph.i ], [ %78, %if.end8.i.while.body.i331_crit_edge ]
  %add.ptr.i329 = getelementptr i8, ptr %74, i32 -16
  %75 = ptrtoint ptr %add.ptr.i329 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %add.ptr.i329, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %73)
  %cmp.i330 = icmp ugt i64 %76, %73
  br i1 %cmp.i330, label %if.then.i333, label %if.else.i334

if.then.i333:                                     ; preds = %while.body.i331
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i332 = getelementptr inbounds %struct.rb_node, ptr %74, i32 0, i32 2
  br label %if.end8.i

if.else.i334:                                     ; preds = %while.body.i331
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %73)
  %cmp5.i = icmp ult i64 %76, %73
  br i1 %cmp5.i, label %if.then6.i, label %insert_root_entry.exit

if.then6.i:                                       ; preds = %if.else.i334
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i335 = getelementptr inbounds %struct.rb_node, ptr %74, i32 0, i32 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i333
  %p.1.i = phi ptr [ %rb_left.i332, %if.then.i333 ], [ %rb_right.i335, %if.then6.i ]
  %77 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i336 = icmp eq ptr %78, null
  br i1 %tobool.not.i336, label %while.cond.while.end_crit_edge.i, label %if.end8.i.while.body.i331_crit_edge

if.end8.i.while.body.i331_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i331

while.cond.while.end_crit_edge.i:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i = ptrtoint ptr %74 to i32
  br label %insert_root_entry.exit.thread

insert_root_entry.exit.thread:                    ; preds = %while.cond.while.end_crit_edge.i, %if.then82.insert_root_entry.exit.thread_crit_edge
  %parent_node.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then82.insert_root_entry.exit.thread_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %roots, %if.then82.insert_root_entry.exit.thread_crit_edge ]
  %node.i = getelementptr inbounds %struct.root_entry, ptr %re.0, i32 0, i32 2
  %79 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %parent_node.0.lcssa.i, ptr %node.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.root_entry, ptr %re.0, i32 0, i32 2, i32 1
  %80 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.root_entry, ptr %re.0, i32 0, i32 2, i32 2
  %81 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %rb_left.i.i, align 8
  %82 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %node.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.i, ptr noundef %roots) #7
  br label %if.end88

insert_root_entry.exit:                           ; preds = %if.else.i334
  %add.ptr.i329.le = getelementptr i8, ptr %74, i32 -16
  %tobool84.not = icmp eq ptr %add.ptr.i329.le, null
  br i1 %tobool84.not, label %insert_root_entry.exit.if.end88_crit_edge, label %if.then85

insert_root_entry.exit.if.end88_crit_edge:        ; preds = %insert_root_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then85:                                        ; preds = %insert_root_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %re.0) #7
  br label %if.end88

cleanup:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %if.then160

if.end88:                                         ; preds = %if.then85, %insert_root_entry.exit.if.end88_crit_edge, %insert_root_entry.exit.thread, %if.end80.if.end88_crit_edge, %list_del.exit.if.end88_crit_edge, %while.cond.preheader.if.end88_crit_edge
  %be.1 = phi ptr [ %add.ptr.i.le, %insert_root_entry.exit.if.end88_crit_edge ], [ %add.ptr.i.le, %if.then85 ], [ %add.ptr.i.le, %if.end80.if.end88_crit_edge ], [ %add.ptr.i.le, %insert_root_entry.exit.thread ], [ %call38, %while.cond.preheader.if.end88_crit_edge ], [ %call38, %list_del.exit.if.end88_crit_edge ]
  %re.3 = phi ptr [ %re.0, %insert_root_entry.exit.if.end88_crit_edge ], [ %add.ptr.i329.le, %if.then85 ], [ %re.0, %if.end80.if.end88_crit_edge ], [ %re.0, %insert_root_entry.exit.thread ], [ null, %while.cond.preheader.if.end88_crit_edge ], [ null, %list_del.exit.if.end88_crit_edge ]
  %ref_root.4 = phi i64 [ %ref_root.2, %insert_root_entry.exit.if.end88_crit_edge ], [ %ref_root.2, %if.then85 ], [ %ref_root.2, %if.end80.if.end88_crit_edge ], [ %ref_root.2, %insert_root_entry.exit.thread ], [ %ref_root.1, %while.cond.preheader.if.end88_crit_edge ], [ %ref_root.1, %list_del.exit.if.end88_crit_edge ]
  %refs = getelementptr inbounds %struct.block_entry, ptr %be.1, i32 0, i32 6
  %83 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %refs, align 4
  %tobool.not32.i = icmp eq ptr %84, null
  br i1 %tobool.not32.i, label %if.end88.insert_ref_entry.exit.thread_crit_edge, label %while.body.lr.ph.i339

if.end88.insert_ref_entry.exit.thread_crit_edge:  ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %insert_ref_entry.exit.thread

while.body.lr.ph.i339:                            ; preds = %if.end88
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %call7.i.i, align 8
  br label %while.body.i341

while.body.i341:                                  ; preds = %if.end6.i.while.body.i341_crit_edge, %while.body.lr.ph.i339
  %87 = phi ptr [ %84, %while.body.lr.ph.i339 ], [ %103, %if.end6.i.while.body.i341_crit_edge ]
  %add.ptr.i340 = getelementptr i8, ptr %87, i32 -40
  %88 = ptrtoint ptr %add.ptr.i340 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %add.ptr.i340, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %86)
  %cmp.i.i = icmp ult i64 %89, %86
  br i1 %cmp.i.i, label %while.body.i341.if.then4.i_crit_edge, label %if.end.i.i342

while.body.i341.if.then4.i_crit_edge:             ; preds = %while.body.i341
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end.i.i342:                                    ; preds = %while.body.i341
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %86)
  %cmp4.i.i = icmp ugt i64 %89, %86
  br i1 %cmp4.i.i, label %if.end.i.i342.if.then.i344_crit_edge, label %if.end6.i.i

if.end.i.i342.if.then.i344_crit_edge:             ; preds = %if.end.i.i342
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i344

if.end6.i.i:                                      ; preds = %if.end.i.i342
  %parent.i.i = getelementptr i8, ptr %87, i32 -32
  %90 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %parent.i.i, align 8
  %92 = ptrtoint ptr %parent21 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %parent21, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %91, i64 %93)
  %cmp8.i.i = icmp ult i64 %91, %93
  br i1 %cmp8.i.i, label %if.end6.i.i.if.then4.i_crit_edge, label %if.end10.i.i

if.end6.i.i.if.then4.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end10.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %91, i64 %93)
  %cmp13.i.i = icmp ugt i64 %91, %93
  br i1 %cmp13.i.i, label %if.end10.i.i.if.then.i344_crit_edge, label %if.end15.i.i

if.end10.i.i.if.then.i344_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i344

if.end15.i.i:                                     ; preds = %if.end10.i.i
  %owner.i.i = getelementptr i8, ptr %87, i32 -24
  %94 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %owner.i.i, align 8
  %96 = ptrtoint ptr %owner22 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %owner22, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %97)
  %cmp17.i.i = icmp ult i64 %95, %97
  br i1 %cmp17.i.i, label %if.end15.i.i.if.then4.i_crit_edge, label %if.end19.i.i

if.end15.i.i.if.then4.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end19.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %97)
  %cmp22.i.i = icmp ugt i64 %95, %97
  br i1 %cmp22.i.i, label %if.end19.i.i.if.then.i344_crit_edge, label %if.end24.i.i

if.end19.i.i.if.then.i344_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i344

if.end24.i.i:                                     ; preds = %if.end19.i.i
  %offset.i.i = getelementptr i8, ptr %87, i32 -16
  %98 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %offset.i.i, align 8
  %100 = ptrtoint ptr %offset23 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %offset23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %101)
  %cmp26.i.i = icmp ult i64 %99, %101
  br i1 %cmp26.i.i, label %if.end24.i.i.if.then4.i_crit_edge, label %comp_refs.exit.i

if.end24.i.i.if.then4.i_crit_edge:                ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

comp_refs.exit.i:                                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %101)
  %cmp31.i.i = icmp ugt i64 %99, %101
  br i1 %cmp31.i.i, label %comp_refs.exit.i.if.then.i344_crit_edge, label %insert_ref_entry.exit

comp_refs.exit.i.if.then.i344_crit_edge:          ; preds = %comp_refs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i344

if.then.i344:                                     ; preds = %comp_refs.exit.i.if.then.i344_crit_edge, %if.end19.i.i.if.then.i344_crit_edge, %if.end10.i.i.if.then.i344_crit_edge, %if.end.i.i342.if.then.i344_crit_edge
  %rb_left.i343 = getelementptr inbounds %struct.rb_node, ptr %87, i32 0, i32 2
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end24.i.i.if.then4.i_crit_edge, %if.end15.i.i.if.then4.i_crit_edge, %if.end6.i.i.if.then4.i_crit_edge, %while.body.i341.if.then4.i_crit_edge
  %rb_right.i345 = getelementptr inbounds %struct.rb_node, ptr %87, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i344
  %p.1.i346 = phi ptr [ %rb_left.i343, %if.then.i344 ], [ %rb_right.i345, %if.then4.i ]
  %102 = ptrtoint ptr %p.1.i346 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %p.1.i346, align 4
  %tobool.not.i347 = icmp eq ptr %103, null
  br i1 %tobool.not.i347, label %while.cond.while.end_crit_edge.i349, label %if.end6.i.while.body.i341_crit_edge

if.end6.i.while.body.i341_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i341

while.cond.while.end_crit_edge.i349:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i348 = ptrtoint ptr %87 to i32
  br label %insert_ref_entry.exit.thread

insert_ref_entry.exit.thread:                     ; preds = %while.cond.while.end_crit_edge.i349, %if.end88.insert_ref_entry.exit.thread_crit_edge
  %parent_node.0.lcssa.i350 = phi i32 [ %phi.cast.le.i348, %while.cond.while.end_crit_edge.i349 ], [ 0, %if.end88.insert_ref_entry.exit.thread_crit_edge ]
  %p.0.lcssa.i351 = phi ptr [ %p.1.i346, %while.cond.while.end_crit_edge.i349 ], [ %refs, %if.end88.insert_ref_entry.exit.thread_crit_edge ]
  %node.i352 = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 5
  %104 = ptrtoint ptr %node.i352 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %parent_node.0.lcssa.i350, ptr %node.i352, align 8
  %rb_right.i.i353 = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 5, i32 1
  %105 = ptrtoint ptr %rb_right.i.i353 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %rb_right.i.i353, align 4
  %rb_left.i.i354 = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 5, i32 2
  %106 = ptrtoint ptr %rb_left.i.i354 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %rb_left.i.i354, align 8
  %107 = ptrtoint ptr %p.0.lcssa.i351 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %node.i352, ptr %p.0.lcssa.i351, align 4
  tail call void @rb_insert_color(ptr noundef %node.i352, ptr noundef %refs) #7
  br label %if.else116

insert_ref_entry.exit:                            ; preds = %comp_refs.exit.i
  %add.ptr.i340.le = getelementptr i8, ptr %87, i32 -40
  %tobool90.not = icmp eq ptr %add.ptr.i340.le, null
  br i1 %tobool90.not, label %insert_ref_entry.exit.if.else116_crit_edge, label %if.then91

insert_ref_entry.exit.if.else116_crit_edge:       ; preds = %insert_ref_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else116

if.then91:                                        ; preds = %insert_ref_entry.exit
  br i1 %cmp24, label %if.then94, label %if.else107

if.then94:                                        ; preds = %if.then91
  %num_refs95 = getelementptr i8, ptr %87, i32 -8
  %108 = ptrtoint ptr %num_refs95 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %num_refs95, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %109)
  %cmp96 = icmp eq i64 %109, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.3) #11
  tail call fastcc void @dump_block_entry(ptr noundef %fs_info, ptr noundef %be.1)
  tail call fastcc void @dump_ref_action(ptr noundef %fs_info, ptr noundef %call7.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  br label %out_unlock

if.end99:                                         ; preds = %if.then94
  %dec = add i64 %109, -1
  %110 = ptrtoint ptr %num_refs95 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %dec, ptr %num_refs95, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %cmp102 = icmp eq i64 %dec, 0
  br i1 %cmp102, label %if.then104, label %if.end99.if.end115_crit_edge

if.end99.if.end115_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rb_erase(ptr noundef nonnull %87, ptr noundef %refs) #7
  tail call void @kfree(ptr noundef nonnull %add.ptr.i340.le) #7
  br label %if.end115

if.else107:                                       ; preds = %if.then91
  %metadata108 = getelementptr inbounds %struct.block_entry, ptr %be.1, i32 0, i32 3
  %111 = ptrtoint ptr %metadata108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %metadata108, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool109.not = icmp eq i32 %112, 0
  br i1 %tobool109.not, label %if.then110, label %if.else113

if.then110:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  %num_refs111 = getelementptr i8, ptr %87, i32 -8
  %113 = ptrtoint ptr %num_refs111 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %num_refs111, align 8
  %inc112 = add i64 %114, 1
  store i64 %inc112, ptr %num_refs111, align 8
  br label %if.end115

if.else113:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.4) #11
  tail call fastcc void @dump_block_entry(ptr noundef %fs_info, ptr noundef %be.1)
  tail call fastcc void @dump_ref_action(ptr noundef %fs_info, ptr noundef %call7.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  br label %out_unlock

if.end115:                                        ; preds = %if.then110, %if.then104, %if.end99.if.end115_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %if.end121

if.else116:                                       ; preds = %insert_ref_entry.exit.if.else116_crit_edge, %insert_ref_entry.exit.thread
  br i1 %cmp24, label %if.then119, label %if.else116.if.end121_crit_edge

if.else116.if.end121_crit_edge:                   ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then119:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.5) #11
  tail call fastcc void @dump_block_entry(ptr noundef %fs_info, ptr noundef %be.1)
  tail call fastcc void @dump_ref_action(ptr noundef %fs_info, ptr noundef %call7.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  br label %out_unlock

if.end121:                                        ; preds = %if.else116.if.end121_crit_edge, %if.end115
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool122.not = icmp eq i64 %7, 0
  %tobool123.not = icmp eq ptr %re.3, null
  %or.cond324 = select i1 %tobool122.not, i1 %tobool123.not, i1 false
  br i1 %or.cond324, label %if.then124, label %if.end121.if.end132_crit_edge

if.end121.if.end132_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then124:                                       ; preds = %if.end121
  %roots125 = getelementptr inbounds %struct.block_entry, ptr %be.1, i32 0, i32 5
  %115 = ptrtoint ptr %roots125 to i32
  call void @__asan_load4_noabort(i32 %115)
  %n.016.i = load ptr, ptr %roots125, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %if.then124.if.then128_crit_edge, label %if.then124.while.body.i361_crit_edge

if.then124.while.body.i361_crit_edge:             ; preds = %if.then124
  br label %while.body.i361

if.then124.if.then128_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then128

while.body.i361:                                  ; preds = %if.end6.i370.while.body.i361_crit_edge, %if.then124.while.body.i361_crit_edge
  %n.018.i = phi ptr [ %n.0.i368, %if.end6.i370.while.body.i361_crit_edge ], [ %n.016.i, %if.then124.while.body.i361_crit_edge ]
  %add.ptr.i359 = getelementptr i8, ptr %n.018.i, i32 -16
  %116 = ptrtoint ptr %add.ptr.i359 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %add.ptr.i359, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %117, i64 %ref_root.4)
  %cmp.i360 = icmp ult i64 %117, %ref_root.4
  br i1 %cmp.i360, label %if.then.i363, label %if.else.i364

if.then.i363:                                     ; preds = %while.body.i361
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i362 = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  br label %if.end6.i370

if.else.i364:                                     ; preds = %while.body.i361
  call void @__sanitizer_cov_trace_cmp8(i64 %117, i64 %ref_root.4)
  %cmp3.i = icmp ugt i64 %117, %ref_root.4
  br i1 %cmp3.i, label %if.then4.i366, label %lookup_root_entry.exit

if.then4.i366:                                    ; preds = %if.else.i364
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i365 = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  br label %if.end6.i370

if.end6.i370:                                     ; preds = %if.then4.i366, %if.then.i363
  %n.1.in.i367 = phi ptr [ %rb_right.i362, %if.then.i363 ], [ %rb_left.i365, %if.then4.i366 ]
  %118 = ptrtoint ptr %n.1.in.i367 to i32
  call void @__asan_load4_noabort(i32 %118)
  %n.0.i368 = load ptr, ptr %n.1.in.i367, align 4
  %tobool.not.i369 = icmp eq ptr %n.0.i368, null
  br i1 %tobool.not.i369, label %if.end6.i370.if.then128_crit_edge, label %if.end6.i370.while.body.i361_crit_edge

if.end6.i370.while.body.i361_crit_edge:           ; preds = %if.end6.i370
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i361

if.end6.i370.if.then128_crit_edge:                ; preds = %if.end6.i370
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then128

lookup_root_entry.exit:                           ; preds = %if.else.i364
  %add.ptr.i359.le = getelementptr i8, ptr %n.018.i, i32 -16
  %tobool127.not = icmp eq ptr %add.ptr.i359.le, null
  br i1 %tobool127.not, label %lookup_root_entry.exit.if.then128_crit_edge, label %lookup_root_entry.exit.if.end132_crit_edge

lookup_root_entry.exit.if.end132_crit_edge:       ; preds = %lookup_root_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

lookup_root_entry.exit.if.then128_crit_edge:      ; preds = %lookup_root_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then128

if.then128:                                       ; preds = %lookup_root_entry.exit.if.then128_crit_edge, %if.end6.i370.if.then128_crit_edge, %if.then124.if.then128_crit_edge
  %119 = ptrtoint ptr %real_root to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %real_root, align 8
  %121 = ptrtoint ptr %be.1 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %be.1, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.6, i64 noundef %120, i64 noundef %122) #11
  tail call fastcc void @dump_block_entry(ptr noundef %fs_info, ptr noundef %be.1)
  tail call fastcc void @dump_ref_action(ptr noundef %fs_info, ptr noundef %call7.i)
  tail call void @kfree(ptr noundef %call7.i) #7
  br label %out_unlock

if.end132:                                        ; preds = %lookup_root_entry.exit.if.end132_crit_edge, %if.end121.if.end132_crit_edge
  %re.4 = phi ptr [ %re.3, %if.end121.if.end132_crit_edge ], [ %add.ptr.i359.le, %lookup_root_entry.exit.if.end132_crit_edge ]
  br i1 %cmp24, label %if.then135, label %if.else143

if.then135:                                       ; preds = %if.end132
  %tobool136.not = icmp eq ptr %re.4, null
  br i1 %tobool136.not, label %if.then135.if.end140_crit_edge, label %if.then137

if.then135.if.end140_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.then137:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  %num_refs138 = getelementptr inbounds %struct.root_entry, ptr %re.4, i32 0, i32 1
  %123 = ptrtoint ptr %num_refs138 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %num_refs138, align 8
  %dec139 = add i64 %124, -1
  store i64 %dec139, ptr %num_refs138, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.then137, %if.then135.if.end140_crit_edge
  %num_refs141 = getelementptr inbounds %struct.block_entry, ptr %be.1, i32 0, i32 2
  br label %if.end155.sink.split

if.else143:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp144 = icmp eq i32 %1, 1
  br i1 %cmp144, label %if.then146, label %if.else143.if.end155_crit_edge

if.else143.if.end155_crit_edge:                   ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then146:                                       ; preds = %if.else143
  %num_refs147 = getelementptr inbounds %struct.block_entry, ptr %be.1, i32 0, i32 2
  %125 = ptrtoint ptr %num_refs147 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %num_refs147, align 8
  %inc148 = add i64 %126, 1
  store i64 %inc148, ptr %num_refs147, align 8
  %tobool149.not = icmp eq ptr %re.4, null
  br i1 %tobool149.not, label %if.then146.if.end155_crit_edge, label %if.then150

if.then146.if.end155_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then150:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #9
  %num_refs151 = getelementptr inbounds %struct.root_entry, ptr %re.4, i32 0, i32 1
  br label %if.end155.sink.split

if.end155.sink.split:                             ; preds = %if.then150, %if.end140
  %num_refs151.sink430 = phi ptr [ %num_refs151, %if.then150 ], [ %num_refs141, %if.end140 ]
  %.sink429 = phi i64 [ 1, %if.then150 ], [ -1, %if.end140 ]
  %127 = ptrtoint ptr %num_refs151.sink430 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %num_refs151.sink430, align 8
  %inc152 = add i64 %128, %.sink429
  store i64 %inc152, ptr %num_refs151.sink430, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.end155.sink.split, %if.then146.if.end155_crit_edge, %if.else143.if.end155_crit_edge
  %actions157 = getelementptr inbounds %struct.block_entry, ptr %be.1, i32 0, i32 8
  %prev.i374 = getelementptr inbounds %struct.block_entry, ptr %be.1, i32 0, i32 8, i32 1
  %129 = ptrtoint ptr %prev.i374 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev.i374, align 4
  %call.i.i375 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %130, ptr noundef %actions157) #7
  br i1 %call.i.i375, label %if.end.i.i376, label %if.end155.out_unlock_crit_edge

if.end155.out_unlock_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end.i.i376:                                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %prev.i374 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %list, ptr %prev.i374, align 4
  %132 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %actions157, ptr %list, align 8
  %133 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %130, ptr %prev.i, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %list, ptr %130, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end.i.i376, %if.end155.out_unlock_crit_edge, %if.then128, %if.then119, %if.else113, %if.then98, %if.then78, %if.then73, %if.then51
  %ret.2 = phi i32 [ -22, %if.then51 ], [ -22, %if.then98 ], [ -22, %if.then128 ], [ -22, %if.else113 ], [ -22, %if.then119 ], [ 0, %if.end155.out_unlock_crit_edge ], [ 0, %if.end.i.i376 ], [ -22, %if.then78 ], [ -22, %if.then73 ]
  %ref_verify_lock158 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 184
  tail call void @_raw_spin_unlock(ptr noundef %ref_verify_lock158) #7
  br label %out

out:                                              ; preds = %out_unlock, %if.then40
  %ret.3 = phi i32 [ %42, %if.then40 ], [ %ret.2, %out_unlock ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool159.not = icmp eq i32 %ret.3, 0
  br i1 %tobool159.not, label %out.cleanup164_crit_edge, label %out.if.then160_crit_edge

out.if.then160_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then160

out.cleanup164_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup164

if.then160:                                       ; preds = %out.if.then160_crit_edge, %cleanup, %if.then19
  %ret.3399 = phi i32 [ %ret.3, %out.if.then160_crit_edge ], [ -12, %cleanup ], [ -12, %if.then19 ]
  %135 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mount_opt, align 8
  %and162 = and i32 %136, -134217729
  store i32 %and162, ptr %mount_opt, align 8
  br label %cleanup164

cleanup164:                                       ; preds = %if.then160, %out.cleanup164_crit_edge, %entry.cleanup164_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup164_crit_edge ], [ %ret.3399, %if.then160 ], [ 0, %out.cleanup164_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_block_entry(ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %len, i64 noundef %root_objectid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 32) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3392, i32 noundef 64) #10
  %tobool.not = icmp eq ptr %call7.i.i56, null
  %tobool2.not = icmp eq ptr %call7.i.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i.i56) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i56 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %bytenr, ptr %call7.i.i56, align 8
  %len5 = getelementptr inbounds %struct.block_entry, ptr %call7.i.i56, i32 0, i32 1
  %3 = ptrtoint ptr %len5 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %len, ptr %len5, align 8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %root_objectid, ptr %call7.i.i, align 8
  %num_refs = getelementptr inbounds %struct.root_entry, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %num_refs to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %num_refs, align 8
  %ref_verify_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 184
  tail call void @_raw_spin_lock(ptr noundef %ref_verify_lock) #7
  %block_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 185
  %6 = ptrtoint ptr %block_tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block_tree, align 4
  %tobool.not27.i = icmp eq ptr %7, null
  br i1 %tobool.not27.i, label %if.end.insert_block_entry.exit.thread_crit_edge, label %while.body.lr.ph.i

if.end.insert_block_entry.exit.thread_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %insert_block_entry.exit.thread

while.body.lr.ph.i:                               ; preds = %if.end
  %8 = ptrtoint ptr %call7.i.i56 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %call7.i.i56, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end8.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %10 = phi ptr [ %7, %while.body.lr.ph.i ], [ %14, %if.end8.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %10, i32 -40
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %9)
  %cmp.i = icmp ugt i64 %12, %9
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  br label %if.end8.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %9)
  %cmp5.i = icmp ult i64 %12, %9
  br i1 %cmp5.i, label %if.then6.i, label %insert_block_entry.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then6.i ]
  %13 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end8.i.while.body.i_crit_edge

if.end8.i.while.body.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i = ptrtoint ptr %10 to i32
  br label %insert_block_entry.exit.thread

insert_block_entry.exit.thread:                   ; preds = %while.cond.while.end_crit_edge.i, %if.end.insert_block_entry.exit.thread_crit_edge
  %parent_node.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end.insert_block_entry.exit.thread_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %block_tree, %if.end.insert_block_entry.exit.thread_crit_edge ]
  %node.i = getelementptr inbounds %struct.block_entry, ptr %call7.i.i56, i32 0, i32 7
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parent_node.0.lcssa.i, ptr %node.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.block_entry, ptr %call7.i.i56, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.block_entry, ptr %call7.i.i56, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_left.i.i, align 8
  %18 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %node.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.i, ptr noundef %block_tree) #7
  br label %if.end17

insert_block_entry.exit:                          ; preds = %if.else.i
  %add.ptr.i.le = getelementptr i8, ptr %10, i32 -40
  %tobool8.not = icmp eq ptr %add.ptr.i.le, null
  br i1 %tobool8.not, label %insert_block_entry.exit.if.end17_crit_edge, label %if.then9

insert_block_entry.exit.if.end17_crit_edge:       ; preds = %insert_block_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then9:                                         ; preds = %insert_block_entry.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %root_objectid)
  %tobool10.not = icmp eq i64 %root_objectid, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  %roots = getelementptr i8, ptr %10, i32 -8
  %19 = ptrtoint ptr %roots to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %roots, align 4
  %tobool.not27.i57 = icmp eq ptr %20, null
  br i1 %tobool.not27.i57, label %if.then11.insert_root_entry.exit.thread_crit_edge, label %while.body.lr.ph.i58

if.then11.insert_root_entry.exit.thread_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %insert_root_entry.exit.thread

while.body.lr.ph.i58:                             ; preds = %if.then11
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %call7.i.i, align 8
  br label %while.body.i61

while.body.i61:                                   ; preds = %if.end8.i70.while.body.i61_crit_edge, %while.body.lr.ph.i58
  %23 = phi ptr [ %20, %while.body.lr.ph.i58 ], [ %27, %if.end8.i70.while.body.i61_crit_edge ]
  %add.ptr.i59 = getelementptr i8, ptr %23, i32 -16
  %24 = ptrtoint ptr %add.ptr.i59 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.i59, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %22)
  %cmp.i60 = icmp ugt i64 %25, %22
  br i1 %cmp.i60, label %if.then.i63, label %if.else.i65

if.then.i63:                                      ; preds = %while.body.i61
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i62 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2
  br label %if.end8.i70

if.else.i65:                                      ; preds = %while.body.i61
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %22)
  %cmp5.i64 = icmp ult i64 %25, %22
  br i1 %cmp5.i64, label %if.then6.i67, label %insert_root_entry.exit

if.then6.i67:                                     ; preds = %if.else.i65
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i66 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1
  br label %if.end8.i70

if.end8.i70:                                      ; preds = %if.then6.i67, %if.then.i63
  %p.1.i68 = phi ptr [ %rb_left.i62, %if.then.i63 ], [ %rb_right.i66, %if.then6.i67 ]
  %26 = ptrtoint ptr %p.1.i68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p.1.i68, align 4
  %tobool.not.i69 = icmp eq ptr %27, null
  br i1 %tobool.not.i69, label %while.cond.while.end_crit_edge.i72, label %if.end8.i70.while.body.i61_crit_edge

if.end8.i70.while.body.i61_crit_edge:             ; preds = %if.end8.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i61

while.cond.while.end_crit_edge.i72:               ; preds = %if.end8.i70
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i71 = ptrtoint ptr %23 to i32
  br label %insert_root_entry.exit.thread

insert_root_entry.exit.thread:                    ; preds = %while.cond.while.end_crit_edge.i72, %if.then11.insert_root_entry.exit.thread_crit_edge
  %parent_node.0.lcssa.i73 = phi i32 [ %phi.cast.le.i71, %while.cond.while.end_crit_edge.i72 ], [ 0, %if.then11.insert_root_entry.exit.thread_crit_edge ]
  %p.0.lcssa.i74 = phi ptr [ %p.1.i68, %while.cond.while.end_crit_edge.i72 ], [ %roots, %if.then11.insert_root_entry.exit.thread_crit_edge ]
  %node.i75 = getelementptr inbounds %struct.root_entry, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %node.i75 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %parent_node.0.lcssa.i73, ptr %node.i75, align 8
  %rb_right.i.i76 = getelementptr inbounds %struct.root_entry, ptr %call7.i.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %rb_right.i.i76 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rb_right.i.i76, align 4
  %rb_left.i.i77 = getelementptr inbounds %struct.root_entry, ptr %call7.i.i, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %rb_left.i.i77 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rb_left.i.i77, align 8
  %31 = ptrtoint ptr %p.0.lcssa.i74 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %node.i75, ptr %p.0.lcssa.i74, align 4
  tail call void @rb_insert_color(ptr noundef %node.i75, ptr noundef %roots) #7
  br label %if.end16

insert_root_entry.exit:                           ; preds = %if.else.i65
  %add.ptr.i59.le = getelementptr i8, ptr %23, i32 -16
  %tobool13.not = icmp eq ptr %add.ptr.i59.le, null
  br i1 %tobool13.not, label %insert_root_entry.exit.if.end16_crit_edge, label %if.then14

insert_root_entry.exit.if.end16_crit_edge:        ; preds = %insert_root_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %insert_root_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %if.end16

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14, %insert_root_entry.exit.if.end16_crit_edge, %insert_root_entry.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i56) #7
  br label %cleanup

if.end17:                                         ; preds = %insert_block_entry.exit.if.end17_crit_edge, %insert_block_entry.exit.thread
  %num_refs18 = getelementptr inbounds %struct.block_entry, ptr %call7.i.i56, i32 0, i32 2
  %actions = getelementptr inbounds %struct.block_entry, ptr %call7.i.i56, i32 0, i32 8
  %32 = call ptr @memset(ptr %num_refs18, i32 0, i32 24)
  %33 = ptrtoint ptr %actions to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %actions, ptr %actions, align 4
  %prev.i = getelementptr inbounds %struct.block_entry, ptr %call7.i.i56, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %actions, ptr %prev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %root_objectid)
  %tobool22.not = icmp eq i64 %root_objectid, 0
  br i1 %tobool22.not, label %if.else26, label %while.end.i103

while.end.i103:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %roots19 = getelementptr inbounds %struct.block_entry, ptr %call7.i.i56, i32 0, i32 5
  %node.i100 = getelementptr inbounds %struct.root_entry, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %node.i100 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %node.i100, align 8
  %rb_right.i.i101 = getelementptr inbounds %struct.root_entry, ptr %call7.i.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %rb_right.i.i101 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rb_right.i.i101, align 4
  %rb_left.i.i102 = getelementptr inbounds %struct.root_entry, ptr %call7.i.i, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %rb_left.i.i102 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %rb_left.i.i102, align 8
  %38 = ptrtoint ptr %roots19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %node.i100, ptr %roots19, align 8
  tail call void @rb_insert_color(ptr noundef %node.i100, ptr noundef %roots19) #7
  br label %cleanup

if.else26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %while.end.i103, %if.end16, %if.then
  %retval.0 = phi ptr [ %add.ptr.i.le, %if.end16 ], [ inttoptr (i32 -12 to ptr), %if.then ], [ %call7.i.i56, %if.else26 ], [ %call7.i.i56, %while.end.i103 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_block_entry(ptr noundef %fs_info, ptr noundef %be) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %be to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %be, align 8
  %len = getelementptr inbounds %struct.block_entry, ptr %be, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len, align 8
  %num_refs = getelementptr inbounds %struct.block_entry, ptr %be, i32 0, i32 2
  %4 = ptrtoint ptr %num_refs to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %num_refs, align 8
  %metadata = getelementptr inbounds %struct.block_entry, ptr %be, i32 0, i32 3
  %6 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %metadata, align 8
  %from_disk = getelementptr inbounds %struct.block_entry, ptr %be, i32 0, i32 4
  %8 = ptrtoint ptr %from_disk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %from_disk, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.9, i64 noundef %1, i64 noundef %3, i64 noundef %5, i32 noundef %7, i32 noundef %9) #11
  %refs = getelementptr inbounds %struct.block_entry, ptr %be, i32 0, i32 6
  %call = tail call ptr @rb_first(ptr noundef %refs) #7
  %tobool.not51 = icmp eq ptr %call, null
  br i1 %tobool.not51, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %n.052 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %n.052, i32 -40
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr, align 8
  %parent = getelementptr i8, ptr %n.052, i32 -32
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %parent, align 8
  %owner = getelementptr i8, ptr %n.052, i32 -24
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %owner, align 8
  %offset = getelementptr i8, ptr %n.052, i32 -16
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offset, align 8
  %num_refs1 = getelementptr i8, ptr %n.052, i32 -8
  %18 = ptrtoint ptr %num_refs1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %num_refs1, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.10, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %19) #11
  %call2 = tail call ptr @rb_next(ptr noundef nonnull %n.052) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %roots = getelementptr inbounds %struct.block_entry, ptr %be, i32 0, i32 5
  %call3 = tail call ptr @rb_first(ptr noundef %roots) #7
  %tobool5.not53 = icmp eq ptr %call3, null
  br i1 %tobool5.not53, label %for.end.for.end14_crit_edge, label %for.end.for.body6_crit_edge

for.end.for.body6_crit_edge:                      ; preds = %for.end
  br label %for.body6

for.end.for.end14_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end14

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.end.for.body6_crit_edge
  %n.154 = phi ptr [ %call13, %for.body6.for.body6_crit_edge ], [ %call3, %for.end.for.body6_crit_edge ]
  %add.ptr9 = getelementptr i8, ptr %n.154, i32 -16
  %20 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr9, align 8
  %num_refs11 = getelementptr i8, ptr %n.154, i32 -8
  %22 = ptrtoint ptr %num_refs11 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %num_refs11, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.11, i64 noundef %21, i64 noundef %23) #11
  %call13 = tail call ptr @rb_next(ptr noundef nonnull %n.154) #7
  %tobool5.not = icmp eq ptr %call13, null
  br i1 %tobool5.not, label %for.body6.for.end14_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

for.body6.for.end14_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end14

for.end14:                                        ; preds = %for.body6.for.end14_crit_edge, %for.end.for.end14_crit_edge
  %actions = getelementptr inbounds %struct.block_entry, ptr %be, i32 0, i32 8
  %24 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn55 = load ptr, ptr %actions, align 4
  %cmp.not56 = icmp eq ptr %.pn55, %actions
  br i1 %cmp.not56, label %for.end14.for.end27_crit_edge, label %for.end14.for.body20_crit_edge

for.end14.for.body20_crit_edge:                   ; preds = %for.end14
  br label %for.body20

for.end14.for.end27_crit_edge:                    ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.body20:                                       ; preds = %dump_ref_action.exit.for.body20_crit_edge, %for.end14.for.body20_crit_edge
  %.pn57 = phi ptr [ %.pn, %dump_ref_action.exit.for.body20_crit_edge ], [ %.pn55, %for.end14.for.body20_crit_edge ]
  %ra.0 = getelementptr i8, ptr %.pn57, i32 -72
  %25 = ptrtoint ptr %ra.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ra.0, align 8
  %root.i = getelementptr i8, ptr %.pn57, i32 -64
  %27 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %root.i, align 8
  %ref.i = getelementptr i8, ptr %.pn57, i32 -56
  %29 = ptrtoint ptr %ref.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ref.i, align 8
  %parent.i = getelementptr i8, ptr %.pn57, i32 -48
  %31 = ptrtoint ptr %parent.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %parent.i, align 8
  %owner.i = getelementptr i8, ptr %.pn57, i32 -40
  %33 = ptrtoint ptr %owner.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %owner.i, align 8
  %offset.i = getelementptr i8, ptr %.pn57, i32 -32
  %35 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %offset.i, align 8
  %num_refs.i = getelementptr i8, ptr %.pn57, i32 -24
  %37 = ptrtoint ptr %num_refs.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %num_refs.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.12, i32 noundef %26, i64 noundef %28, i64 noundef %30, i64 noundef %32, i64 noundef %34, i64 noundef %36, i64 noundef %38) #11
  %trace_len.i.i = getelementptr i8, ptr %.pn57, i32 72
  %39 = ptrtoint ptr %trace_len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %trace_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.13) #11
  br label %dump_ref_action.exit

if.end.i.i:                                       ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  %trace.i.i = getelementptr i8, ptr %.pn57, i32 8
  tail call void @stack_trace_print(ptr noundef %trace.i.i, i32 noundef %40, i32 noundef 2) #7
  br label %dump_ref_action.exit

dump_ref_action.exit:                             ; preds = %if.end.i.i, %if.then.i.i
  %41 = ptrtoint ptr %.pn57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn = load ptr, ptr %.pn57, align 4
  %cmp.not = icmp eq ptr %.pn, %actions
  br i1 %cmp.not, label %dump_ref_action.exit.for.end27_crit_edge, label %dump_ref_action.exit.for.body20_crit_edge

dump_ref_action.exit.for.body20_crit_edge:        ; preds = %dump_ref_action.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

dump_ref_action.exit.for.end27_crit_edge:         ; preds = %dump_ref_action.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.end27:                                        ; preds = %dump_ref_action.exit.for.end27_crit_edge, %for.end14.for.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_ref_action(ptr noundef %fs_info, ptr noundef %ra) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ra, align 8
  %root = getelementptr inbounds %struct.ref_action, ptr %ra, i32 0, i32 1
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %root, align 8
  %ref = getelementptr inbounds %struct.ref_action, ptr %ra, i32 0, i32 2
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ref, align 8
  %parent = getelementptr inbounds %struct.ref_action, ptr %ra, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %parent, align 8
  %owner = getelementptr inbounds %struct.ref_action, ptr %ra, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %owner, align 8
  %offset = getelementptr inbounds %struct.ref_action, ptr %ra, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset, align 8
  %num_refs = getelementptr inbounds %struct.ref_action, ptr %ra, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %num_refs to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %num_refs, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.12, i32 noundef %1, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13) #11
  %trace_len.i = getelementptr inbounds %struct.ref_action, ptr %ra, i32 0, i32 5
  %14 = ptrtoint ptr %trace_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trace_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.13) #11
  br label %__print_stack_trace.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %trace.i = getelementptr inbounds %struct.ref_action, ptr %ra, i32 0, i32 4
  tail call void @stack_trace_print(ptr noundef %trace.i, i32 noundef %15, i32 noundef 2) #7
  br label %__print_stack_trace.exit

__print_stack_trace.exit:                         ; preds = %if.end.i, %if.then.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_ref_cache(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %0 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mount_opt, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_verify_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 184
  tail call void @_raw_spin_lock(ptr noundef %ref_verify_lock) #7
  %block_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 185
  %call14 = tail call ptr @rb_first(ptr noundef %block_tree) #7
  %tobool1.not15 = icmp eq ptr %call14, null
  br i1 %tobool1.not15, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %call16 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call14, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call16, i32 -40
  tail call void @rb_erase(ptr noundef nonnull %call16, ptr noundef %block_tree) #7
  tail call fastcc void @free_block_entry(ptr noundef %add.ptr)
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 903, i32 noundef 1) #7
  %call5 = tail call i32 @__cond_resched_lock(ptr noundef %ref_verify_lock) #7
  %call = tail call ptr @rb_first(ptr noundef %block_tree) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ref_verify_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_block_entry(ptr noundef %be) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %roots = getelementptr inbounds %struct.block_entry, ptr %be, i32 0, i32 5
  %call31 = tail call ptr @rb_first(ptr noundef %roots) #7
  %tobool.not32 = icmp eq ptr %call31, null
  br i1 %tobool.not32, label %entry.while.cond2.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond2.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond2.preheader

while.cond2.preheader:                            ; preds = %while.body.while.cond2.preheader_crit_edge, %entry.while.cond2.preheader_crit_edge
  %refs = getelementptr inbounds %struct.block_entry, ptr %be, i32 0, i32 6
  %call334 = tail call ptr @rb_first(ptr noundef %refs) #7
  %tobool4.not35 = icmp eq ptr %call334, null
  br i1 %tobool4.not35, label %while.cond2.preheader.while.cond12.preheader_crit_edge, label %while.cond2.preheader.while.body5_crit_edge

while.cond2.preheader.while.body5_crit_edge:      ; preds = %while.cond2.preheader
  br label %while.body5

while.cond2.preheader.while.cond12.preheader_crit_edge: ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond12.preheader

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call33 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call31, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call33, i32 -16
  tail call void @rb_erase(ptr noundef nonnull %call33, ptr noundef %roots) #7
  tail call void @kfree(ptr noundef %add.ptr) #7
  %call = tail call ptr @rb_first(ptr noundef %roots) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.cond2.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.cond2.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond2.preheader

while.cond12.preheader:                           ; preds = %while.body5.while.cond12.preheader_crit_edge, %while.cond2.preheader.while.cond12.preheader_crit_edge
  %actions = getelementptr inbounds %struct.block_entry, ptr %be, i32 0, i32 8
  %0 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %actions, align 4
  %cmp.i.not37 = icmp eq ptr %1, %actions
  br i1 %cmp.i.not37, label %while.cond12.preheader.while.end20_crit_edge, label %while.cond12.preheader.while.body15_crit_edge

while.cond12.preheader.while.body15_crit_edge:    ; preds = %while.cond12.preheader
  br label %while.body15

while.cond12.preheader.while.end20_crit_edge:     ; preds = %while.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end20

while.body5:                                      ; preds = %while.body5.while.body5_crit_edge, %while.cond2.preheader.while.body5_crit_edge
  %call336 = phi ptr [ %call3, %while.body5.while.body5_crit_edge ], [ %call334, %while.cond2.preheader.while.body5_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %call336, i32 -40
  tail call void @rb_erase(ptr noundef nonnull %call336, ptr noundef %refs) #7
  tail call void @kfree(ptr noundef %add.ptr8) #7
  %call3 = tail call ptr @rb_first(ptr noundef %refs) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %while.body5.while.cond12.preheader_crit_edge, label %while.body5.while.body5_crit_edge

while.body5.while.body5_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body5

while.body5.while.cond12.preheader_crit_edge:     ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond12.preheader

while.body15:                                     ; preds = %list_del.exit.while.body15_crit_edge, %while.cond12.preheader.while.body15_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body15_crit_edge ], [ %1, %while.cond12.preheader.while.body15_crit_edge ]
  %add.ptr19 = getelementptr i8, ptr %2, i32 -72
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body15.list_del.exit_crit_edge

while.body15.list_del.exit_crit_edge:             ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body15.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr19) #7
  %11 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %actions, align 4
  %cmp.i.not = icmp eq ptr %12, %actions
  br i1 %cmp.i.not, label %list_del.exit.while.end20_crit_edge, label %list_del.exit.while.body15_crit_edge

list_del.exit.while.body15_crit_edge:             ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body15

list_del.exit.while.end20_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end20

while.end20:                                      ; preds = %list_del.exit.while.end20_crit_edge, %while.cond12.preheader.while.end20_crit_edge
  tail call void @kfree(ptr noundef %be) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_ref_tree_range(ptr noundef %fs_info, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %0 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mount_opt, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_verify_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 184
  tail call void @_raw_spin_lock(ptr noundef %ref_verify_lock) #7
  %block_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 185
  %2 = ptrtoint ptr %block_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_tree, align 8
  %tobool2.not126 = icmp eq ptr %3, null
  br i1 %tobool2.not126, label %if.end.cleanup.sink.split_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %if.end.while.body_crit_edge
  %be.0128 = phi ptr [ %be.1, %if.end23.while.body_crit_edge ], [ null, %if.end.while.body_crit_edge ]
  %n.0127 = phi ptr [ %n.1120, %if.end23.while.body_crit_edge ], [ %3, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %n.0127, i32 -40
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %start)
  %cmp = icmp ult i64 %5, %start
  br i1 %cmp, label %if.end9, label %if.else

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %start)
  %cmp5 = icmp ugt i64 %5, %start
  br i1 %cmp5, label %if.end9.thread, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end9:                                          ; preds = %while.body
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %n.0127, i32 0, i32 1
  %6 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.1 = load ptr, ptr %rb_right, align 4
  %cmp10 = icmp eq ptr %be.0128, null
  br i1 %cmp10, label %if.end9.if.then22_crit_edge, label %land.lhs.true

if.end9.if.then22_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.end9.thread:                                   ; preds = %if.else
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %n.0127, i32 0, i32 2
  %7 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %7)
  %n.1118 = load ptr, ptr %rb_left, align 4
  %cmp10119 = icmp eq ptr %be.0128, null
  br i1 %cmp10119, label %if.end9.thread.if.then22_crit_edge, label %if.end9.thread.if.end23_crit_edge

if.end9.thread.if.end23_crit_edge:                ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end9.thread.if.then22_crit_edge:               ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

land.lhs.true:                                    ; preds = %if.end9
  %8 = ptrtoint ptr %be.0128 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %be.0128, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %start)
  %cmp14 = icmp ugt i64 %9, %start
  br i1 %cmp14, label %land.lhs.true.if.then22_crit_edge, label %land.lhs.true18

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

land.lhs.true18:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %be.0128 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %be.0128, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %11)
  %cmp21 = icmp ugt i64 %5, %11
  br i1 %cmp21, label %land.lhs.true18.if.then22_crit_edge, label %land.lhs.true18.if.end23_crit_edge

land.lhs.true18.if.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true18.if.then22_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22:                                        ; preds = %land.lhs.true18.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge, %if.end9.thread.if.then22_crit_edge, %if.end9.if.then22_crit_edge
  %n.1122 = phi ptr [ %n.1118, %if.end9.thread.if.then22_crit_edge ], [ %n.1, %land.lhs.true18.if.then22_crit_edge ], [ %n.1, %land.lhs.true.if.then22_crit_edge ], [ %n.1, %if.end9.if.then22_crit_edge ]
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true18.if.end23_crit_edge, %if.end9.thread.if.end23_crit_edge
  %n.1120 = phi ptr [ %n.1122, %if.then22 ], [ %n.1, %land.lhs.true18.if.end23_crit_edge ], [ %n.1118, %if.end9.thread.if.end23_crit_edge ]
  %be.1 = phi ptr [ %add.ptr, %if.then22 ], [ %be.0128, %land.lhs.true18.if.end23_crit_edge ], [ %be.0128, %if.end9.thread.if.end23_crit_edge ]
  %tobool2.not = icmp eq ptr %n.1120, null
  br i1 %tobool2.not, label %if.end23.while.end_crit_edge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %if.else.while.end_crit_edge
  %be.2 = phi ptr [ %be.1, %if.end23.while.end_crit_edge ], [ %add.ptr, %if.else.while.end_crit_edge ]
  %tobool24.not = icmp eq ptr %be.2, null
  br i1 %tobool24.not, label %while.end.cleanup.sink.split_crit_edge, label %if.end27

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end27:                                         ; preds = %while.end
  %node = getelementptr inbounds %struct.block_entry, ptr %be.2, i32 0, i32 7
  %add47 = add i64 %len, %start
  %tobool29.not130 = icmp eq ptr %node, null
  br i1 %tobool29.not130, label %if.end27.cleanup.sink.split_crit_edge, label %if.end27.while.body30_crit_edge

if.end27.while.body30_crit_edge:                  ; preds = %if.end27
  br label %while.body30

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.body30:                                     ; preds = %while.cond28.backedge.while.body30_crit_edge, %if.end27.while.body30_crit_edge
  %n.2131 = phi ptr [ %call, %while.cond28.backedge.while.body30_crit_edge ], [ %node, %if.end27.while.body30_crit_edge ]
  %add.ptr33 = getelementptr i8, ptr %n.2131, i32 -40
  %call = tail call ptr @rb_next(ptr noundef nonnull %n.2131) #7
  %12 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %start)
  %cmp35 = icmp ult i64 %13, %start
  br i1 %cmp35, label %land.lhs.true36, label %if.end45

land.lhs.true36:                                  ; preds = %while.body30
  %len38 = getelementptr i8, ptr %n.2131, i32 -32
  %14 = ptrtoint ptr %len38 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %len38, align 8
  %add = add i64 %15, %13
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %start)
  %cmp39 = icmp ugt i64 %add, %start
  br i1 %cmp39, label %if.then40, label %land.lhs.true36.while.cond28.backedge_crit_edge

land.lhs.true36.while.cond28.backedge_crit_edge:  ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond28.backedge

if.then40:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.8, i64 noundef %start, i64 noundef %len) #11
  tail call fastcc void @dump_block_entry(ptr noundef %fs_info, ptr noundef %add.ptr33)
  br label %while.cond28.backedge

while.cond28.backedge:                            ; preds = %if.end57, %if.then40, %land.lhs.true36.while.cond28.backedge_crit_edge
  %tobool29.not = icmp eq ptr %call, null
  br i1 %tobool29.not, label %while.cond28.backedge.cleanup.sink.split_crit_edge, label %while.cond28.backedge.while.body30_crit_edge

while.cond28.backedge.while.body30_crit_edge:     ; preds = %while.cond28.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body30

while.cond28.backedge.cleanup.sink.split_crit_edge: ; preds = %while.cond28.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end45:                                         ; preds = %while.body30
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add47)
  %cmp48.not = icmp ult i64 %13, %add47
  br i1 %cmp48.not, label %if.end50, label %if.end45.cleanup.sink.split_crit_edge

if.end45.cleanup.sink.split_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end50:                                         ; preds = %if.end45
  %len52 = getelementptr i8, ptr %n.2131, i32 -32
  %16 = ptrtoint ptr %len52 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %len52, align 8
  %add53 = add i64 %17, %13
  call void @__sanitizer_cov_trace_cmp8(i64 %add53, i64 %add47)
  %cmp55 = icmp ugt i64 %add53, %add47
  br i1 %cmp55, label %if.then56, label %if.end50.if.end57_crit_edge

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.8, i64 noundef %start, i64 noundef %len) #11
  tail call fastcc void @dump_block_entry(ptr noundef %fs_info, ptr noundef %add.ptr33)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end50.if.end57_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %n.2131, ptr noundef %block_tree) #7
  tail call fastcc void @free_block_entry(ptr noundef %add.ptr33)
  br label %while.cond28.backedge

cleanup.sink.split:                               ; preds = %if.end45.cleanup.sink.split_crit_edge, %while.cond28.backedge.cleanup.sink.split_crit_edge, %if.end27.cleanup.sink.split_crit_edge, %while.end.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ref_verify_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_build_ref_tree(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i.i.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %0 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mount_opt, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @btrfs_alloc_path() #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @btrfs_extent_root(ptr noundef %fs_info, i64 noundef 0) #7
  %call5 = tail call ptr @btrfs_read_lock_root_node(ptr noundef %call4) #7
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %call5, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #7
  %4 = ptrtoint ptr %call5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %call5, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %6 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %level.i, align 1
  %conv = zext i8 %7 to i32
  %arrayidx = getelementptr [8 x ptr], ptr %call, i32 0, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.btrfs_path, ptr %call, i32 0, i32 1, i32 %conv
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr %struct.btrfs_path, ptr %call, i32 0, i32 2, i32 %conv
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %arrayidx8, align 1
  %fs_info1.i.i = getelementptr inbounds %struct.btrfs_root, ptr %call4, i32 0, i32 8
  %11 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.backedge, %if.end3
  %tree_block_level.1 = phi i32 [ 0, %if.end3 ], [ %tree_block_level.1.be, %while.body.i.backedge ]
  %bytenr.1 = phi i64 [ 0, %if.end3 ], [ %bytenr.1.be, %while.body.i.backedge ]
  %num_bytes.1 = phi i64 [ 0, %if.end3 ], [ %num_bytes.1.be, %while.body.i.backedge ]
  %level.addr.042.i = phi i32 [ %conv, %if.end3 ], [ %level.addr.042.i.be, %while.body.i.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.addr.042.i)
  %tobool.not.i = icmp eq i32 %level.addr.042.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  %arrayidx.i = getelementptr [8 x ptr], ptr %call, i32 0, i32 %level.addr.042.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.btrfs_path, ptr %call, i32 0, i32 1, i32 %level.addr.042.i
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.i, align 4
  %call.i48 = call ptr @btrfs_read_node_slot(ptr noundef %14, i32 noundef %16) #7
  %cmp.i.i = icmp ugt ptr %call.i48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %walk_down_tree.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @btrfs_tree_read_lock(ptr noundef %call.i48) #7
  %sub.i = add nsw i32 %level.addr.042.i, -1
  %arrayidx6.i = getelementptr [8 x ptr], ptr %call, i32 0, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i48, ptr %arrayidx6.i, align 4
  %arrayidx9.i = getelementptr %struct.btrfs_path, ptr %call, i32 0, i32 1, i32 %sub.i
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.btrfs_path, ptr %call, i32 0, i32 2, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %arrayidx11.i, align 1
  br label %if.end16.i

if.else.i:                                        ; preds = %while.body.i
  %20 = ptrtoint ptr %fs_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_info1.i.i, align 8
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  %pages.i.i.i = getelementptr inbounds %struct.extent_buffer, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages.i.i.i, align 4
  %call.i.i.i = call ptr @page_address(ptr noundef %25) #7
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %23, align 8
  %conv.i.i.i = trunc i64 %27 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 4095
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i.i.i
  %nritems.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %nritems.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %nritems.i.i.i, align 1
  %30 = call i32 @llvm.bswap.i32(i32 %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp73.i.i = icmp sgt i32 %30, 0
  br i1 %cmp73.i.i, label %if.else.i.for.body.i.i_crit_edge, label %if.else.i.if.end12_crit_edge

if.else.i.if.end12_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.else.i.for.body.i.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else.i.for.body.i.i_crit_edge
  %tree_block_level.2 = phi i32 [ %tree_block_level.5, %for.inc.i.i.for.body.i.i_crit_edge ], [ %tree_block_level.1, %if.else.i.for.body.i.i_crit_edge ]
  %bytenr.2 = phi i64 [ %bytenr.3, %for.inc.i.i.for.body.i.i_crit_edge ], [ %bytenr.1, %if.else.i.for.body.i.i_crit_edge ]
  %num_bytes.2 = phi i64 [ %num_bytes.4, %for.inc.i.i.for.body.i.i_crit_edge ], [ %num_bytes.1, %if.else.i.for.body.i.i_crit_edge ]
  %i.074.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i.i) #7
  %mul.i.i.i.i.i.i = mul i32 %i.074.i.i, 25
  %add.i.i.i.i.i.i = add i32 %mul.i.i.i.i.i.i, 101
  %31 = call ptr @memset(ptr %disk_key.i.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %23, ptr noundef nonnull %disk_key.i.i.i, i32 noundef %add.i.i.i.i.i.i, i32 noundef 17) #7
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %12, align 1
  %34 = call i64 @llvm.bswap.i64(i64 %33) #7
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %11, align 8
  %37 = ptrtoint ptr %disk_key.i.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %disk_key.i.i.i, align 8
  %39 = call i64 @llvm.bswap.i64(i64 %38) #7
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i.i) #7
  %40 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i8 %36, label %for.body.i.i.for.inc.i.i_crit_edge [
    i8 -88, label %sw.bb.i.i
    i8 -87, label %for.body.i.i.sw.bb2.i.i_crit_edge
    i8 -80, label %sw.bb4.i.i
    i8 -74, label %sw.bb8.i.i
    i8 -78, label %sw.bb12.i.i
    i8 -72, label %sw.bb15.i.i
  ]

for.body.i.i.sw.bb2.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

sw.bb.i.i:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

sw.bb2.i.i:                                       ; preds = %sw.bb.i.i, %for.body.i.i.sw.bb2.i.i_crit_edge
  %num_bytes.3 = phi i64 [ %num_bytes.2, %for.body.i.i.sw.bb2.i.i_crit_edge ], [ %34, %sw.bb.i.i ]
  %41 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call, align 4
  %43 = inttoptr i32 %add.i.i.i.i.i.i to ptr
  %call.i.i.i.i.i = call i32 @btrfs_get_32(ptr noundef %42, ptr noundef %43, i32 noundef 21) #7
  %call.i.i84.i.i.i = call i32 @btrfs_get_32(ptr noundef %42, ptr noundef %43, i32 noundef 17) #7
  %add.i.i.i = add i32 %call.i.i84.i.i.i, 101
  %44 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i.i.i = call i64 @btrfs_get_64(ptr noundef %42, ptr noundef %44, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %36)
  %cmp.i.i.i = icmp ne i8 %36, -88
  %and.i45.i.i = and i64 %call.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i45.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i45.i.i, 0
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i46.i.i = getelementptr %struct.btrfs_extent_item, ptr %44, i32 1
  %call.i85.i.i.i = call zeroext i8 @btrfs_get_8(ptr noundef %42, ptr noundef %add.ptr.i46.i.i, i32 noundef 17) #7
  %conv6.i.i.i = zext i8 %call.i85.i.i.i to i32
  %add.ptr7.i.i.i = getelementptr %struct.btrfs_tree_block_info, ptr %add.ptr.i46.i.i, i32 1
  br label %if.end16.i.i.i

if.else.i.i.i:                                    ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -87, i8 %36)
  %cmp10.i.i.i = icmp eq i8 %36, -87
  %conv14.i.i.i = trunc i64 %34 to i32
  %spec.select = select i1 %cmp10.i.i.i, i32 %conv14.i.i.i, i32 %tree_block_level.2
  %add.ptr15.i.i.i = getelementptr %struct.btrfs_extent_item, ptr %44, i32 1
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then.i.i.i
  %tree_block_level.4 = phi i32 [ %spec.select, %if.else.i.i.i ], [ %conv6.i.i.i, %if.then.i.i.i ]
  %iref.0.i.i.i = phi ptr [ %add.ptr15.i.i.i, %if.else.i.i.i ], [ %add.ptr7.i.i.i, %if.then.i.i.i ]
  %45 = ptrtoint ptr %iref.0.i.i.i to i32
  %add17.i.i.i = add i32 %add.i.i.i, %call.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i.i.i, i32 %45)
  %cmp1891.i.i.i = icmp ugt i32 %add17.i.i.i, %45
  br i1 %cmp1891.i.i.i, label %if.end16.i.i.i.while.body.i.i.i_crit_edge, label %if.end16.i.i.i.if.then22_crit_edge

if.end16.i.i.i.if.then22_crit_edge:               ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.end16.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end16.i.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %btrfs_extent_inline_ref_size.exit.i.i.i.while.body.i.i.i_crit_edge, %if.end16.i.i.i.while.body.i.i.i_crit_edge
  %ptr.092.i.i.i = phi i32 [ %add44.i.i.i, %btrfs_extent_inline_ref_size.exit.i.i.i.while.body.i.i.i_crit_edge ], [ %45, %if.end16.i.i.i.while.body.i.i.i_crit_edge ]
  %46 = inttoptr i32 %ptr.092.i.i.i to ptr
  %call.i86.i.i.i = call zeroext i8 @btrfs_get_8(ptr noundef %42, ptr noundef %46, i32 noundef 0) #7
  %call.i87.i.i.i = call i64 @btrfs_get_64(ptr noundef %42, ptr noundef %46, i32 noundef 1) #7
  %47 = zext i8 %call.i86.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %call.i86.i.i.i, label %sw.epilog.thread.i.i.i [
    i8 -80, label %sw.bb.i.i.i
    i8 -74, label %sw.bb24.i.i.i
    i8 -78, label %sw.bb27.i.i.i
    i8 -72, label %sw.bb32.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i.i.i = call fastcc i32 @add_tree_block(ptr noundef %21, i64 noundef %call.i87.i.i.i, i64 noundef 0, i64 noundef %39, i32 noundef %tree_block_level.4) #7
  br label %sw.epilog.i.i.i

sw.bb24.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call26.i.i.i = call fastcc i32 @add_tree_block(ptr noundef %21, i64 noundef 0, i64 noundef %call.i87.i.i.i, i64 noundef %39, i32 noundef %tree_block_level.4) #7
  br label %sw.epilog.i.i.i

sw.bb27.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %offset28.i.i.i = getelementptr inbounds %struct.btrfs_extent_inline_ref, ptr %46, i32 0, i32 1
  %call31.i.i.i = call fastcc i32 @add_extent_data_ref(ptr noundef %21, ptr noundef %42, ptr noundef %offset28.i.i.i, i64 noundef %39, i64 noundef %34) #7
  br label %sw.epilog.i.i.i

sw.bb32.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr33.i.i.i = getelementptr %struct.btrfs_extent_inline_ref, ptr %46, i32 1
  %call.i88.i.i.i = call i32 @btrfs_get_32(ptr noundef %42, ptr noundef %add.ptr33.i.i.i, i32 noundef 0) #7
  %call39.i.i.i = call fastcc i32 @add_shared_data_ref(ptr noundef %21, i64 noundef %call.i87.i.i.i, i32 noundef %call.i88.i.i.i, i64 noundef %39, i64 noundef %34) #7
  br label %sw.epilog.i.i.i

sw.epilog.thread.i.i.i:                           ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %21, ptr noundef nonnull @.str.14) #11
  br label %if.then22

sw.epilog.i.i.i:                                  ; preds = %sw.bb32.i.i.i, %sw.bb27.i.i.i, %sw.bb24.i.i.i, %sw.bb.i.i.i
  %ret.1.i.i.i = phi i32 [ %call39.i.i.i, %sw.bb32.i.i.i ], [ %call31.i.i.i, %sw.bb27.i.i.i ], [ %call26.i.i.i, %sw.bb24.i.i.i ], [ %call23.i.i.i, %sw.bb.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i.i)
  %tobool40.not.i.i.i = icmp eq i32 %ret.1.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %if.end42.i.i.i, label %sw.epilog.i.i.i.if.then22_crit_edge

sw.epilog.i.i.i.if.then22_crit_edge:              ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.end42.i.i.i:                                   ; preds = %sw.epilog.i.i.i
  %switch.tableidx = add i8 %call.i86.i.i.i, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %48 = icmp ult i8 %switch.tableidx, 9
  br i1 %48, label %switch.lookup, label %if.end42.i.i.i.btrfs_extent_inline_ref_size.exit.i.i.i_crit_edge

if.end42.i.i.i.btrfs_extent_inline_ref_size.exit.i.i.i_crit_edge: ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_extent_inline_ref_size.exit.i.i.i

switch.lookup:                                    ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.btrfs_build_ref_tree, i32 0, i32 %49
  %50 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %btrfs_extent_inline_ref_size.exit.i.i.i

btrfs_extent_inline_ref_size.exit.i.i.i:          ; preds = %switch.lookup, %if.end42.i.i.i.btrfs_extent_inline_ref_size.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end42.i.i.i.btrfs_extent_inline_ref_size.exit.i.i.i_crit_edge ]
  %add44.i.i.i = add i32 %retval.0.i.i.i.i, %ptr.092.i.i.i
  %cmp18.i.i.i = icmp ult i32 %add44.i.i.i, %add17.i.i.i
  br i1 %cmp18.i.i.i, label %btrfs_extent_inline_ref_size.exit.i.i.i.while.body.i.i.i_crit_edge, label %btrfs_extent_inline_ref_size.exit.i.i.i.for.inc.i.i_crit_edge

btrfs_extent_inline_ref_size.exit.i.i.i.for.inc.i.i_crit_edge: ; preds = %btrfs_extent_inline_ref_size.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

btrfs_extent_inline_ref_size.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %btrfs_extent_inline_ref_size.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

sw.bb4.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.i = call fastcc i32 @add_tree_block(ptr noundef %21, i64 noundef %34, i64 noundef 0, i64 noundef %39, i32 noundef %tree_block_level.2) #7
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call fastcc i32 @add_tree_block(ptr noundef %21, i64 noundef 0, i64 noundef %34, i64 noundef %39, i32 noundef %tree_block_level.2) #7
  br label %sw.epilog.i.i

sw.bb12.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = inttoptr i32 %add.i.i.i.i.i.i to ptr
  %call.i.i47.i.i = call i32 @btrfs_get_32(ptr noundef %23, ptr noundef %51, i32 noundef 17) #7
  %add.i.i = add i32 %call.i.i47.i.i, 101
  %52 = inttoptr i32 %add.i.i to ptr
  %call14.i.i = call fastcc i32 @add_extent_data_ref(ptr noundef %21, ptr noundef %23, ptr noundef %52, i64 noundef %bytenr.2, i64 noundef %num_bytes.2) #7
  br label %sw.epilog.i.i

sw.bb15.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = inttoptr i32 %add.i.i.i.i.i.i to ptr
  %call.i.i50.i.i = call i32 @btrfs_get_32(ptr noundef %23, ptr noundef %53, i32 noundef 17) #7
  %add17.i.i = add i32 %call.i.i50.i.i, 101
  %54 = inttoptr i32 %add17.i.i to ptr
  %call.i51.i.i = call i32 @btrfs_get_32(ptr noundef %23, ptr noundef %54, i32 noundef 0) #7
  %call20.i.i = call fastcc i32 @add_shared_data_ref(ptr noundef %21, i64 noundef %34, i32 noundef %call.i51.i.i, i64 noundef %bytenr.2, i64 noundef %num_bytes.2) #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb15.i.i, %sw.bb12.i.i, %sw.bb8.i.i, %sw.bb4.i.i
  %ret.1.i.i = phi i32 [ %call20.i.i, %sw.bb15.i.i ], [ %call14.i.i, %sw.bb12.i.i ], [ %call11.i.i, %sw.bb8.i.i ], [ %call7.i.i, %sw.bb4.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %tobool.not.i.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.i.i.for.inc.i.i_crit_edge, label %sw.epilog.i.i.if.then22_crit_edge

sw.epilog.i.i.if.then22_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

sw.epilog.i.i.for.inc.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.epilog.i.i.for.inc.i.i_crit_edge, %btrfs_extent_inline_ref_size.exit.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %tree_block_level.5 = phi i32 [ %tree_block_level.2, %for.body.i.i.for.inc.i.i_crit_edge ], [ %tree_block_level.2, %sw.epilog.i.i.for.inc.i.i_crit_edge ], [ %tree_block_level.4, %btrfs_extent_inline_ref_size.exit.i.i.i.for.inc.i.i_crit_edge ]
  %bytenr.3 = phi i64 [ %bytenr.2, %for.body.i.i.for.inc.i.i_crit_edge ], [ %bytenr.2, %sw.epilog.i.i.for.inc.i.i_crit_edge ], [ %39, %btrfs_extent_inline_ref_size.exit.i.i.i.for.inc.i.i_crit_edge ]
  %num_bytes.4 = phi i64 [ %num_bytes.2, %for.body.i.i.for.inc.i.i_crit_edge ], [ %num_bytes.2, %sw.epilog.i.i.for.inc.i.i_crit_edge ], [ %num_bytes.3, %btrfs_extent_inline_ref_size.exit.i.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.074.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %30
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end16.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.end16.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %for.inc.i.i.if.end16.i_crit_edge, %if.end.i
  %dec.i.pre-phi = phi i32 [ %sub.i, %if.end.i ], [ -1, %for.inc.i.i.if.end16.i_crit_edge ]
  %tree_block_level.6 = phi i32 [ %tree_block_level.1, %if.end.i ], [ %tree_block_level.5, %for.inc.i.i.if.end16.i_crit_edge ]
  %bytenr.4 = phi i64 [ %bytenr.1, %if.end.i ], [ %bytenr.3, %for.inc.i.i.if.end16.i_crit_edge ]
  %num_bytes.5 = phi i64 [ %num_bytes.1, %if.end.i ], [ %num_bytes.4, %for.inc.i.i.if.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.addr.042.i)
  %cmp.i = icmp sgt i32 %level.addr.042.i, 0
  br i1 %cmp.i, label %if.end16.i.while.body.i.backedge_crit_edge, label %if.end16.i.if.end12_crit_edge

if.end16.i.if.end12_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end16.i.while.body.i.backedge_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.backedge

while.body.i.backedge:                            ; preds = %if.then2.i.while.body.i.backedge_crit_edge, %if.end16.i.while.body.i.backedge_crit_edge
  %tree_block_level.1.be = phi i32 [ %tree_block_level.6, %if.end16.i.while.body.i.backedge_crit_edge ], [ %tree_block_level.772, %if.then2.i.while.body.i.backedge_crit_edge ]
  %bytenr.1.be = phi i64 [ %bytenr.4, %if.end16.i.while.body.i.backedge_crit_edge ], [ %bytenr.573, %if.then2.i.while.body.i.backedge_crit_edge ]
  %num_bytes.1.be = phi i64 [ %num_bytes.5, %if.end16.i.while.body.i.backedge_crit_edge ], [ %num_bytes.674, %if.then2.i.while.body.i.backedge_crit_edge ]
  %level.addr.042.i.be = phi i32 [ %dec.i.pre-phi, %if.end16.i.while.body.i.backedge_crit_edge ], [ %l.048.i, %if.then2.i.while.body.i.backedge_crit_edge ]
  br label %while.body.i

walk_down_tree.exit:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %call.i48 to i32
  br label %if.then22

if.end12:                                         ; preds = %if.end16.i.if.end12_crit_edge, %if.else.i.if.end12_crit_edge
  %num_bytes.674 = phi i64 [ %num_bytes.1, %if.else.i.if.end12_crit_edge ], [ %num_bytes.5, %if.end16.i.if.end12_crit_edge ]
  %bytenr.573 = phi i64 [ %bytenr.1, %if.else.i.if.end12_crit_edge ], [ %bytenr.4, %if.end16.i.if.end12_crit_edge ]
  %tree_block_level.772 = phi i32 [ %tree_block_level.1, %if.else.i.if.end12_crit_edge ], [ %tree_block_level.6, %if.end16.i.if.end12_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12
  %l.048.i = phi i32 [ 0, %if.end12 ], [ %inc23.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i49 = getelementptr [8 x ptr], ptr %call, i32 0, i32 %l.048.i
  %56 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i49, align 4
  %tobool.not.i50 = icmp eq ptr %57, null
  br i1 %tobool.not.i50, label %for.body.i.for.inc.i_crit_edge, label %if.end.i51

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i51:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.048.i)
  %tobool1.not.i = icmp eq i32 %l.048.i, 0
  br i1 %tobool1.not.i, label %if.end.i51.if.end11.i_crit_edge, label %if.then2.i

if.end.i51.if.end11.i_crit_edge:                  ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then2.i:                                       ; preds = %if.end.i51
  %arrayidx3.i = getelementptr %struct.btrfs_path, ptr %call, i32 0, i32 1, i32 %l.048.i
  %58 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx3.i, align 4
  %inc.i = add i32 %59, 1
  store i32 %inc.i, ptr %arrayidx3.i, align 4
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %57, i32 0, i32 12
  %60 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = call ptr @page_address(ptr noundef %61) #7
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %57, align 8
  %conv.i.i = trunc i64 %63 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %64 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %nritems.i.i, align 1
  %66 = call i32 @llvm.bswap.i32(i32 %65) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %66)
  %cmp8.i = icmp ult i32 %inc.i, %66
  br i1 %cmp8.i, label %if.then2.i.while.body.i.backedge_crit_edge, label %if.then2.i.if.end11.i_crit_edge

if.then2.i.if.end11.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then2.i.while.body.i.backedge_crit_edge:       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.backedge

if.end11.i:                                       ; preds = %if.then2.i.if.end11.i_crit_edge, %if.end.i51.if.end11.i_crit_edge
  %67 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i49, align 4
  %arrayidx14.i = getelementptr %struct.btrfs_path, ptr %call, i32 0, i32 2, i32 %l.048.i
  %69 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx14.i, align 1
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %70, label %do.body.i.i [
    i8 1, label %if.then.i.i
    i8 2, label %if.then2.i.i
  ]

if.then.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @btrfs_tree_unlock(ptr noundef %68) #7
  br label %btrfs_tree_unlock_rw.exit.i

if.then2.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @btrfs_tree_read_unlock(ptr noundef %68) #7
  br label %btrfs_tree_unlock_rw.exit.i

do.body.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/locking.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #7, !srcloc !55
  unreachable

btrfs_tree_unlock_rw.exit.i:                      ; preds = %if.then2.i.i, %if.then.i.i
  %72 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i49, align 4
  call void @free_extent_buffer(ptr noundef %73) #7
  %74 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arrayidx.i49, align 4
  %arrayidx20.i = getelementptr %struct.btrfs_path, ptr %call, i32 0, i32 1, i32 %l.048.i
  %75 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %arrayidx20.i, align 4
  %76 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx14.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %btrfs_tree_unlock_rw.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc23.i = add nuw nsw i32 %l.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc23.i, 8
  br i1 %exitcond.not.i, label %for.inc.i.if.end25_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end25_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %walk_down_tree.exit, %sw.epilog.i.i.if.then22_crit_edge, %sw.epilog.i.i.i.if.then22_crit_edge, %sw.epilog.thread.i.i.i, %if.end16.i.i.i.if.then22_crit_edge
  %ret.0.ph = phi i32 [ %55, %walk_down_tree.exit ], [ -22, %sw.epilog.thread.i.i.i ], [ %ret.1.i.i.i, %sw.epilog.i.i.i.if.then22_crit_edge ], [ %ret.1.i.i, %sw.epilog.i.i.if.then22_crit_edge ], [ -1, %if.end16.i.i.i.if.then22_crit_edge ]
  %77 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mount_opt, align 8
  %and24 = and i32 %78, -134217729
  store i32 %and24, ptr %mount_opt, align 8
  call void @btrfs_free_ref_cache(ptr noundef %fs_info)
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %for.inc.i.if.end25_crit_edge
  %ret.081 = phi i32 [ %ret.0.ph, %if.then22 ], [ 0, %for.inc.i.if.end25_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.081, %if.end25 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_extent_root(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_read_lock_root_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stack_trace_print(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_read_node_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_tree_block(ptr noundef %fs_info, i64 noundef %ref_root, i64 noundef %parent, i64 noundef %bytenr, i32 noundef %level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 56) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %parent)
  %tobool1.not = icmp eq i64 %parent, 0
  %ref_root. = select i1 %tobool1.not, i64 %ref_root, i64 0
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %ref_root., ptr %call7.i, align 8
  %parent5 = getelementptr inbounds %struct.ref_entry, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent5 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %parent, ptr %parent5, align 8
  %conv = sext i32 %level to i64
  %owner = getelementptr inbounds %struct.ref_entry, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %owner, align 8
  %offset = getelementptr inbounds %struct.ref_entry, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %offset, align 8
  %num_refs = getelementptr inbounds %struct.ref_entry, ptr %call7.i, i32 0, i32 4
  %5 = ptrtoint ptr %num_refs to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1, ptr %num_refs, align 8
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %6 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nodesize, align 8
  %conv6 = zext i32 %7 to i64
  %call7 = tail call fastcc ptr @add_block_entry(ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %conv6, i64 noundef %ref_root)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  %8 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %num_refs12 = getelementptr inbounds %struct.block_entry, ptr %call7, i32 0, i32 2
  %9 = ptrtoint ptr %num_refs12 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %num_refs12, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %num_refs12, align 8
  %from_disk = getelementptr inbounds %struct.block_entry, ptr %call7, i32 0, i32 4
  %11 = ptrtoint ptr %from_disk to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %from_disk, align 4
  %metadata = getelementptr inbounds %struct.block_entry, ptr %call7, i32 0, i32 3
  %12 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %metadata, align 8
  br i1 %tobool1.not, label %if.then14, label %if.end11.if.end31_crit_edge

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ref_root)
  %tobool15.not = icmp eq i64 %ref_root, 0
  br i1 %tobool15.not, label %cond.false, label %cond.end, !prof !56

cond.false:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.15, i32 noundef 339) #12
  unreachable

cond.end:                                         ; preds = %if.then14
  %roots = getelementptr inbounds %struct.block_entry, ptr %call7, i32 0, i32 5
  %13 = ptrtoint ptr %roots to i32
  call void @__asan_load4_noabort(i32 %13)
  %n.016.i = load ptr, ptr %roots, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %cond.end.cond.false27_crit_edge, label %cond.end.while.body.i_crit_edge

cond.end.while.body.i_crit_edge:                  ; preds = %cond.end
  br label %while.body.i

cond.end.cond.false27_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false27

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %cond.end.while.body.i_crit_edge
  %n.018.i = phi ptr [ %n.0.i, %if.end6.i.while.body.i_crit_edge ], [ %n.016.i, %cond.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.018.i, i32 -16
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %ref_root)
  %cmp.i65 = icmp ult i64 %15, %ref_root
  br i1 %cmp.i65, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %ref_root)
  %cmp3.i = icmp ugt i64 %15, %ref_root
  br i1 %cmp3.i, label %if.then4.i, label %lookup_root_entry.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_right.i, %if.then.i ], [ %rb_left.i, %if.then4.i ]
  %16 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end6.i.cond.false27_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end6.i.cond.false27_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false27

lookup_root_entry.exit:                           ; preds = %if.else.i
  %add.ptr.i.le = getelementptr i8, ptr %n.018.i, i32 -16
  %tobool19.not = icmp eq ptr %add.ptr.i.le, null
  br i1 %tobool19.not, label %lookup_root_entry.exit.cond.false27_crit_edge, label %cond.end28, !prof !56

lookup_root_entry.exit.cond.false27_crit_edge:    ; preds = %lookup_root_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false27

cond.false27:                                     ; preds = %lookup_root_entry.exit.cond.false27_crit_edge, %if.end6.i.cond.false27_crit_edge, %cond.end.cond.false27_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.16, i32 noundef 341) #12
  unreachable

cond.end28:                                       ; preds = %lookup_root_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  %num_refs29 = getelementptr i8, ptr %n.018.i, i32 -8
  %17 = ptrtoint ptr %num_refs29 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %num_refs29, align 8
  %inc30 = add i64 %18, 1
  store i64 %inc30, ptr %num_refs29, align 8
  br label %if.end31

if.end31:                                         ; preds = %cond.end28, %if.end11.if.end31_crit_edge
  %refs = getelementptr inbounds %struct.block_entry, ptr %call7, i32 0, i32 6
  %19 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %refs, align 4
  %tobool.not32.i = icmp eq ptr %20, null
  br i1 %tobool.not32.i, label %if.end31.insert_ref_entry.exit.thread_crit_edge, label %while.body.lr.ph.i

if.end31.insert_ref_entry.exit.thread_crit_edge:  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %insert_ref_entry.exit.thread

while.body.lr.ph.i:                               ; preds = %if.end31
  %21 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %call7.i, align 8
  br label %while.body.i67

while.body.i67:                                   ; preds = %if.end6.i73.while.body.i67_crit_edge, %while.body.lr.ph.i
  %23 = phi ptr [ %20, %while.body.lr.ph.i ], [ %39, %if.end6.i73.while.body.i67_crit_edge ]
  %add.ptr.i66 = getelementptr i8, ptr %23, i32 -40
  %24 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.i66, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %22)
  %cmp.i.i = icmp ult i64 %25, %22
  br i1 %cmp.i.i, label %while.body.i67.if.then4.i71_crit_edge, label %if.end.i.i

while.body.i67.if.then4.i71_crit_edge:            ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i71

if.end.i.i:                                       ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %22)
  %cmp4.i.i = icmp ugt i64 %25, %22
  br i1 %cmp4.i.i, label %if.end.i.i.if.then.i69_crit_edge, label %if.end6.i.i

if.end.i.i.if.then.i69_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i69

if.end6.i.i:                                      ; preds = %if.end.i.i
  %parent.i.i = getelementptr i8, ptr %23, i32 -32
  %26 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %parent.i.i, align 8
  %28 = ptrtoint ptr %parent5 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %parent5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp8.i.i = icmp ult i64 %27, %29
  br i1 %cmp8.i.i, label %if.end6.i.i.if.then4.i71_crit_edge, label %if.end10.i.i

if.end6.i.i.if.then4.i71_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i71

if.end10.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp13.i.i = icmp ugt i64 %27, %29
  br i1 %cmp13.i.i, label %if.end10.i.i.if.then.i69_crit_edge, label %if.end15.i.i

if.end10.i.i.if.then.i69_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i69

if.end15.i.i:                                     ; preds = %if.end10.i.i
  %owner.i.i = getelementptr i8, ptr %23, i32 -24
  %30 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %owner.i.i, align 8
  %32 = ptrtoint ptr %owner to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %owner, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp17.i.i = icmp ult i64 %31, %33
  br i1 %cmp17.i.i, label %if.end15.i.i.if.then4.i71_crit_edge, label %if.end19.i.i

if.end15.i.i.if.then4.i71_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i71

if.end19.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp22.i.i = icmp ugt i64 %31, %33
  br i1 %cmp22.i.i, label %if.end19.i.i.if.then.i69_crit_edge, label %if.end24.i.i

if.end19.i.i.if.then.i69_crit_edge:               ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i69

if.end24.i.i:                                     ; preds = %if.end19.i.i
  %offset.i.i = getelementptr i8, ptr %23, i32 -16
  %34 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %offset.i.i, align 8
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp26.i.i = icmp ult i64 %35, %37
  br i1 %cmp26.i.i, label %if.end24.i.i.if.then4.i71_crit_edge, label %comp_refs.exit.i

if.end24.i.i.if.then4.i71_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i71

comp_refs.exit.i:                                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp31.i.i = icmp ugt i64 %35, %37
  br i1 %cmp31.i.i, label %comp_refs.exit.i.if.then.i69_crit_edge, label %insert_ref_entry.exit

comp_refs.exit.i.if.then.i69_crit_edge:           ; preds = %comp_refs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i69

if.then.i69:                                      ; preds = %comp_refs.exit.i.if.then.i69_crit_edge, %if.end19.i.i.if.then.i69_crit_edge, %if.end10.i.i.if.then.i69_crit_edge, %if.end.i.i.if.then.i69_crit_edge
  %rb_left.i68 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2
  br label %if.end6.i73

if.then4.i71:                                     ; preds = %if.end24.i.i.if.then4.i71_crit_edge, %if.end15.i.i.if.then4.i71_crit_edge, %if.end6.i.i.if.then4.i71_crit_edge, %while.body.i67.if.then4.i71_crit_edge
  %rb_right.i70 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1
  br label %if.end6.i73

if.end6.i73:                                      ; preds = %if.then4.i71, %if.then.i69
  %p.1.i = phi ptr [ %rb_left.i68, %if.then.i69 ], [ %rb_right.i70, %if.then4.i71 ]
  %38 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i72 = icmp eq ptr %39, null
  br i1 %tobool.not.i72, label %while.cond.while.end_crit_edge.i, label %if.end6.i73.while.body.i67_crit_edge

if.end6.i73.while.body.i67_crit_edge:             ; preds = %if.end6.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i67

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i73
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i = ptrtoint ptr %23 to i32
  br label %insert_ref_entry.exit.thread

insert_ref_entry.exit.thread:                     ; preds = %while.cond.while.end_crit_edge.i, %if.end31.insert_ref_entry.exit.thread_crit_edge
  %parent_node.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end31.insert_ref_entry.exit.thread_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %refs, %if.end31.insert_ref_entry.exit.thread_crit_edge ]
  %node.i = getelementptr inbounds %struct.ref_entry, ptr %call7.i, i32 0, i32 5
  %40 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %parent_node.0.lcssa.i, ptr %node.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.ref_entry, ptr %call7.i, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.ref_entry, ptr %call7.i, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %rb_left.i.i, align 8
  %43 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %node.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.i, ptr noundef %refs) #7
  br label %if.end37

insert_ref_entry.exit:                            ; preds = %comp_refs.exit.i
  %add.ptr.i66.le = getelementptr i8, ptr %23, i32 -40
  %tobool33.not = icmp eq ptr %add.ptr.i66.le, null
  br i1 %tobool33.not, label %insert_ref_entry.exit.if.end37_crit_edge, label %if.then34

insert_ref_entry.exit.if.end37_crit_edge:         ; preds = %insert_ref_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then34:                                        ; preds = %insert_ref_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  %num_refs35 = getelementptr i8, ptr %23, i32 -8
  %44 = ptrtoint ptr %num_refs35 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %num_refs35, align 8
  %inc36 = add i64 %45, 1
  store i64 %inc36, ptr %num_refs35, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %insert_ref_entry.exit.if.end37_crit_edge, %insert_ref_entry.exit.thread
  %ref_verify_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 184
  tail call void @_raw_spin_unlock(ptr noundef %ref_verify_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then9 ], [ 0, %if.end37 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_extent_data_ref(ptr noundef %fs_info, ptr noundef %leaf, ptr noundef %dref, i64 noundef %bytenr, i64 noundef %num_bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %dref, i32 noundef 0) #7
  %call.i62 = tail call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %dref, i32 noundef 8) #7
  %call.i63 = tail call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %dref, i32 noundef 16) #7
  %call.i64 = tail call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %dref, i32 noundef 24) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 56) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call fastcc ptr @add_block_entry(ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %num_bytes, i64 noundef %call.i)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %1 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %conv = zext i32 %call.i64 to i64
  %num_refs10 = getelementptr inbounds %struct.block_entry, ptr %call5, i32 0, i32 2
  %2 = ptrtoint ptr %num_refs10 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %num_refs10, align 8
  %add = add i64 %3, %conv
  store i64 %add, ptr %num_refs10, align 8
  %parent = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %parent, align 8
  %owner11 = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %owner11 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i62, ptr %owner11, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i, ptr %call7.i.i, align 8
  %offset12 = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %offset12 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call.i63, ptr %offset12, align 8
  %num_refs14 = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %num_refs14 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %num_refs14, align 8
  %refs = getelementptr inbounds %struct.block_entry, ptr %call5, i32 0, i32 6
  %9 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %refs, align 4
  %tobool.not32.i = icmp eq ptr %10, null
  br i1 %tobool.not32.i, label %if.end9.insert_ref_entry.exit.thread_crit_edge, label %if.end9.while.body.i_crit_edge

if.end9.while.body.i_crit_edge:                   ; preds = %if.end9
  br label %while.body.i

if.end9.insert_ref_entry.exit.thread_crit_edge:   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %insert_ref_entry.exit.thread

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.end9.while.body.i_crit_edge
  %11 = phi ptr [ %21, %if.end6.i.while.body.i_crit_edge ], [ %10, %if.end9.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %11, i32 -40
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %call.i)
  %cmp.i.i = icmp ult i64 %13, %call.i
  br i1 %cmp.i.i, label %while.body.i.if.then4.i_crit_edge, label %if.end.i.i

while.body.i.if.then4.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %call.i)
  %cmp4.i.i = icmp ugt i64 %13, %call.i
  br i1 %cmp4.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.end10.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %parent.i.i = getelementptr i8, ptr %11, i32 -32
  %14 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %parent.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp13.i.i.not = icmp eq i64 %15, 0
  br i1 %cmp13.i.i.not, label %if.end15.i.i, label %if.end10.i.i.if.then.i_crit_edge

if.end10.i.i.if.then.i_crit_edge:                 ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end15.i.i:                                     ; preds = %if.end10.i.i
  %owner.i.i = getelementptr i8, ptr %11, i32 -24
  %16 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %owner.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %call.i62)
  %cmp17.i.i = icmp ult i64 %17, %call.i62
  br i1 %cmp17.i.i, label %if.end15.i.i.if.then4.i_crit_edge, label %if.end19.i.i

if.end15.i.i.if.then4.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end19.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %call.i62)
  %cmp22.i.i = icmp ugt i64 %17, %call.i62
  br i1 %cmp22.i.i, label %if.end19.i.i.if.then.i_crit_edge, label %if.end24.i.i

if.end19.i.i.if.then.i_crit_edge:                 ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end24.i.i:                                     ; preds = %if.end19.i.i
  %offset.i.i = getelementptr i8, ptr %11, i32 -16
  %18 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offset.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %call.i63)
  %cmp26.i.i = icmp ult i64 %19, %call.i63
  br i1 %cmp26.i.i, label %if.end24.i.i.if.then4.i_crit_edge, label %comp_refs.exit.i

if.end24.i.i.if.then4.i_crit_edge:                ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

comp_refs.exit.i:                                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %call.i63)
  %cmp31.i.i = icmp ugt i64 %19, %call.i63
  br i1 %cmp31.i.i, label %comp_refs.exit.i.if.then.i_crit_edge, label %insert_ref_entry.exit

comp_refs.exit.i.if.then.i_crit_edge:             ; preds = %comp_refs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %comp_refs.exit.i.if.then.i_crit_edge, %if.end19.i.i.if.then.i_crit_edge, %if.end10.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end24.i.i.if.then4.i_crit_edge, %if.end15.i.i.if.then4.i_crit_edge, %while.body.i.if.then4.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %20 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i = ptrtoint ptr %11 to i32
  br label %insert_ref_entry.exit.thread

insert_ref_entry.exit.thread:                     ; preds = %while.cond.while.end_crit_edge.i, %if.end9.insert_ref_entry.exit.thread_crit_edge
  %parent_node.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end9.insert_ref_entry.exit.thread_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %refs, %if.end9.insert_ref_entry.exit.thread_crit_edge ]
  %node.i = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %parent_node.0.lcssa.i, ptr %node.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rb_left.i.i, align 8
  %25 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %node.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.i, ptr noundef %refs) #7
  br label %if.end18

insert_ref_entry.exit:                            ; preds = %comp_refs.exit.i
  %add.ptr.i.le = getelementptr i8, ptr %11, i32 -40
  %tobool16.not = icmp eq ptr %add.ptr.i.le, null
  br i1 %tobool16.not, label %insert_ref_entry.exit.if.end18_crit_edge, label %if.then17

insert_ref_entry.exit.if.end18_crit_edge:         ; preds = %insert_ref_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %insert_ref_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ref_verify_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 184
  tail call void @_raw_spin_unlock(ptr noundef %ref_verify_lock) #7
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.20) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end18:                                         ; preds = %insert_ref_entry.exit.if.end18_crit_edge, %insert_ref_entry.exit.thread
  %roots = getelementptr inbounds %struct.block_entry, ptr %call5, i32 0, i32 5
  %26 = ptrtoint ptr %roots to i32
  call void @__asan_load4_noabort(i32 %26)
  %n.016.i = load ptr, ptr %roots, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %if.end18.if.then21_crit_edge, label %if.end18.while.body.i67_crit_edge

if.end18.while.body.i67_crit_edge:                ; preds = %if.end18
  br label %while.body.i67

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

while.body.i67:                                   ; preds = %if.end6.i73.while.body.i67_crit_edge, %if.end18.while.body.i67_crit_edge
  %n.018.i = phi ptr [ %n.0.i, %if.end6.i73.while.body.i67_crit_edge ], [ %n.016.i, %if.end18.while.body.i67_crit_edge ]
  %add.ptr.i65 = getelementptr i8, ptr %n.018.i, i32 -16
  %27 = ptrtoint ptr %add.ptr.i65 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr.i65, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %call.i)
  %cmp.i66 = icmp ult i64 %28, %call.i
  br i1 %cmp.i66, label %if.then.i69, label %if.else.i

if.then.i69:                                      ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i68 = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  br label %if.end6.i73

if.else.i:                                        ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %call.i)
  %cmp3.i = icmp ugt i64 %28, %call.i
  br i1 %cmp3.i, label %if.then4.i71, label %lookup_root_entry.exit

if.then4.i71:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i70 = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  br label %if.end6.i73

if.end6.i73:                                      ; preds = %if.then4.i71, %if.then.i69
  %n.1.in.i = phi ptr [ %rb_right.i68, %if.then.i69 ], [ %rb_left.i70, %if.then4.i71 ]
  %29 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i72 = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i72, label %if.end6.i73.if.then21_crit_edge, label %if.end6.i73.while.body.i67_crit_edge

if.end6.i73.while.body.i67_crit_edge:             ; preds = %if.end6.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i67

if.end6.i73.if.then21_crit_edge:                  ; preds = %if.end6.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

lookup_root_entry.exit:                           ; preds = %if.else.i
  %add.ptr.i65.le = getelementptr i8, ptr %n.018.i, i32 -16
  %tobool20.not = icmp eq ptr %add.ptr.i65.le, null
  br i1 %tobool20.not, label %lookup_root_entry.exit.if.then21_crit_edge, label %if.end23

lookup_root_entry.exit.if.then21_crit_edge:       ; preds = %lookup_root_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %lookup_root_entry.exit.if.then21_crit_edge, %if.end6.i73.if.then21_crit_edge, %if.end18.if.then21_crit_edge
  %ref_verify_lock22 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 184
  tail call void @_raw_spin_unlock(ptr noundef %ref_verify_lock22) #7
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.end23:                                         ; preds = %lookup_root_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  %num_refs25 = getelementptr i8, ptr %n.018.i, i32 -8
  %30 = ptrtoint ptr %num_refs25 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %num_refs25, align 8
  %add26 = add i64 %31, %conv
  store i64 %add26, ptr %num_refs25, align 8
  %ref_verify_lock27 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 184
  tail call void @_raw_spin_unlock(ptr noundef %ref_verify_lock27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21, %if.then17, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then7 ], [ -22, %if.then17 ], [ 0, %if.end23 ], [ -22, %if.then21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_shared_data_ref(ptr noundef %fs_info, i64 noundef %parent, i32 noundef %num_refs, i64 noundef %bytenr, i64 noundef %num_bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 56) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @add_block_entry(ptr noundef %fs_info, i64 noundef %bytenr, i64 noundef %num_bytes, i64 noundef 0)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conv = zext i32 %num_refs to i64
  %num_refs6 = getelementptr inbounds %struct.block_entry, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %num_refs6 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %num_refs6, align 8
  %add = add i64 %3, %conv
  store i64 %add, ptr %num_refs6, align 8
  %parent7 = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %parent, ptr %parent7, align 8
  %num_refs9 = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %num_refs9 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %num_refs9, align 8
  %refs = getelementptr inbounds %struct.block_entry, ptr %call1, i32 0, i32 6
  %6 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refs, align 4
  %tobool.not32.i = icmp eq ptr %7, null
  br i1 %tobool.not32.i, label %if.end5.insert_ref_entry.exit.thread_crit_edge, label %while.body.lr.ph.i

if.end5.insert_ref_entry.exit.thread_crit_edge:   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %insert_ref_entry.exit.thread

while.body.lr.ph.i:                               ; preds = %if.end5
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %call7.i.i, align 8
  %owner16.i.i = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 2
  %offset25.i.i = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %10 = phi ptr [ %7, %while.body.lr.ph.i ], [ %24, %if.end6.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %10, i32 -40
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %9)
  %cmp.i.i = icmp ult i64 %12, %9
  br i1 %cmp.i.i, label %while.body.i.if.then4.i_crit_edge, label %if.end.i.i

while.body.i.if.then4.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %9)
  %cmp4.i.i = icmp ugt i64 %12, %9
  br i1 %cmp4.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.end6.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %parent.i.i = getelementptr i8, ptr %10, i32 -32
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %parent.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %parent)
  %cmp8.i.i = icmp ult i64 %14, %parent
  br i1 %cmp8.i.i, label %if.end6.i.i.if.then4.i_crit_edge, label %if.end10.i.i

if.end6.i.i.if.then4.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end10.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %parent)
  %cmp13.i.i = icmp ugt i64 %14, %parent
  br i1 %cmp13.i.i, label %if.end10.i.i.if.then.i_crit_edge, label %if.end15.i.i

if.end10.i.i.if.then.i_crit_edge:                 ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end15.i.i:                                     ; preds = %if.end10.i.i
  %owner.i.i = getelementptr i8, ptr %10, i32 -24
  %15 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %owner.i.i, align 8
  %17 = ptrtoint ptr %owner16.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %owner16.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp17.i.i = icmp ult i64 %16, %18
  br i1 %cmp17.i.i, label %if.end15.i.i.if.then4.i_crit_edge, label %if.end19.i.i

if.end15.i.i.if.then4.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end19.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp22.i.i = icmp ugt i64 %16, %18
  br i1 %cmp22.i.i, label %if.end19.i.i.if.then.i_crit_edge, label %if.end24.i.i

if.end19.i.i.if.then.i_crit_edge:                 ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end24.i.i:                                     ; preds = %if.end19.i.i
  %offset.i.i = getelementptr i8, ptr %10, i32 -16
  %19 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset.i.i, align 8
  %21 = ptrtoint ptr %offset25.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %offset25.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp26.i.i = icmp ult i64 %20, %22
  br i1 %cmp26.i.i, label %if.end24.i.i.if.then4.i_crit_edge, label %comp_refs.exit.i

if.end24.i.i.if.then4.i_crit_edge:                ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

comp_refs.exit.i:                                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp31.i.i = icmp ugt i64 %20, %22
  br i1 %cmp31.i.i, label %comp_refs.exit.i.if.then.i_crit_edge, label %insert_ref_entry.exit

comp_refs.exit.i.if.then.i_crit_edge:             ; preds = %comp_refs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %comp_refs.exit.i.if.then.i_crit_edge, %if.end19.i.i.if.then.i_crit_edge, %if.end10.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end24.i.i.if.then4.i_crit_edge, %if.end15.i.i.if.then4.i_crit_edge, %if.end6.i.i.if.then4.i_crit_edge, %while.body.i.if.then4.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %23 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i = ptrtoint ptr %10 to i32
  br label %insert_ref_entry.exit.thread

insert_ref_entry.exit.thread:                     ; preds = %while.cond.while.end_crit_edge.i, %if.end5.insert_ref_entry.exit.thread_crit_edge
  %parent_node.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end5.insert_ref_entry.exit.thread_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %refs, %if.end5.insert_ref_entry.exit.thread_crit_edge ]
  %node.i = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %parent_node.0.lcssa.i, ptr %node.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.ref_entry, ptr %call7.i.i, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_left.i.i, align 8
  %28 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %node.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.i, ptr noundef %refs) #7
  br label %if.end13

insert_ref_entry.exit:                            ; preds = %comp_refs.exit.i
  %add.ptr.i.le = getelementptr i8, ptr %10, i32 -40
  %tobool11.not = icmp eq ptr %add.ptr.i.le, null
  br i1 %tobool11.not, label %insert_ref_entry.exit.if.end13_crit_edge, label %if.then12

insert_ref_entry.exit.if.end13_crit_edge:         ; preds = %insert_ref_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %insert_ref_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ref_verify_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 184
  tail call void @_raw_spin_unlock(ptr noundef %ref_verify_lock) #7
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.22) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end13:                                         ; preds = %insert_ref_entry.exit.if.end13_crit_edge, %insert_ref_entry.exit.thread
  %ref_verify_lock14 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 184
  tail call void @_raw_spin_unlock(ptr noundef %ref_verify_lock14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ -22, %if.then12 ], [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_get_8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #6 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %expr, ptr noundef nonnull @.str.7, i32 noundef %line) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #7, !srcloc !57
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_read_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { cold noreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/ref-verify.c", i32 744, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/ref-verify.c", i32 785, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/ref-verify.c", i32 793, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/ref-verify.c", i32 816, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/btrfs/ref-verify.c", i32 832, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/ref-verify.c", i32 843, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/ref-verify.c", i32 862, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/ref-verify.c", i32 903, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/ref-verify.c", i32 950, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/ref-verify.c", i32 628, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/ref-verify.c", i32 635, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/ref-verify.c", i32 643, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/btrfs/ref-verify.c", i32 609, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/btrfs/ref-verify.c", i32 215, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/btrfs/ref-verify.c", i32 486, i32 4}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/btrfs/ref-verify.c", i32 339, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/ref-verify.c", i32 341, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @assertfail._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @assertfail._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/btrfs/ref-verify.c", i32 413, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/btrfs/ref-verify.c", i32 421, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/btrfs/ref-verify.c", i32 375, i32 3}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2156842138, i64 2156842621, i64 2156842175, i64 2156842231, i64 2156842265, i64 2156842289, i64 2156842330, i64 2156842351, i64 2156842379, i64 2156842413}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2158199716, i64 2158200198, i64 2158199753, i64 2158199809, i64 2158199843, i64 2158199867, i64 2158199908, i64 2158199929, i64 2158199957, i64 2158199991}
