; ModuleID = '/llk/IR_all_yes/fs/btrfs/verity.c_pt.bc'
source_filename = "../fs/btrfs/verity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsverity_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.71 }
%union.anon.71 = type { i32 }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_inode = type { ptr, %struct.btrfs_key, %struct.spinlock, %struct.extent_map_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.mutex, %struct.btrfs_ordered_inode_tree, %struct.list_head, %struct.rb_node, i32, %struct.atomic_t, i64, i64, i64, i32, i32, i64, %union.anon.84, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.btrfs_block_rsv, i32, i32, ptr, %struct.timespec64, %struct.list_head, %struct.rw_semaphore, %struct.inode }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.btrfs_ordered_inode_tree = type { %struct.spinlock, %struct.rb_root, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.84 = type { i64 }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.77 = type { ptr }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.btrfs_verity_descriptor_item = type <{ i64, [2 x i64], i8 }>
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.18, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.83, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
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
%union.anon.83 = type { i64 }
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>

@btrfs_verityops = dso_local constant { %struct.fsverity_operations, [44 x i8] } { %struct.fsverity_operations { ptr @btrfs_begin_enable_verity, ptr @btrfs_end_enable_verity, ptr @btrfs_get_verity_descriptor, ptr @btrfs_read_merkle_tree_page, ptr @btrfs_write_merkle_tree_block }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"inode_is_locked(file_inode(filp))\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/btrfs/verity.c\00", [46 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013failed to rollback verity items: %d\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VERITY\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016setting compat-ro feature flag for %s (0x%llx)\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"inode_is_locked(&inode->vfs_inode)\00", [61 x i8] zeroinitializer }, align 32
@__func__.rollback_verity = private unnamed_addr constant [16 x i8] c"rollback_verity\00", align 1
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to drop verity items in rollback %llu\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to start transaction in verity rollback %llu\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@rollback_verity.__UNIQUE_ID_ddebug940 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @__func__.rollback_verity, ptr @.str.1, ptr @.str.13, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@rollback_verity.__UNIQUE_ID_ddebug941 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @__func__.rollback_verity, ptr @.str.1, ptr @.str.13, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"btrfs_verityops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 807, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 583, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 3491, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 644, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 558, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 3710, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 458, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 463, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 477, i32 3 }
@___asan_gen_.72 = private constant [21 x i8] c"../fs/btrfs/verity.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 486, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 260, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 788, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 717, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @btrfs_verityops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_verityops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_drop_verity_items(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @drop_verity_items(ptr noundef %inode, i8 noundef zeroext 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @drop_verity_items(ptr noundef %inode, i8 noundef zeroext 37)
  %0 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drop_verity_items(ptr nocapture noundef readonly %inode, i8 noundef zeroext %key_type) unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %4 = call ptr @memset(ptr %key, i32 255, i32 17)
  %call = tail call ptr @btrfs_alloc_path() #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call290 = call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 1) #8
  %cmp.i91 = icmp ugt ptr %call290, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %while.cond.preheader.if.then4_crit_edge, label %if.end6.lr.ph

while.cond.preheader.if.then4_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end6.lr.ph:                                    ; preds = %while.cond.preheader
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  br label %if.end6

if.then4:                                         ; preds = %if.end38.if.then4_crit_edge, %while.cond.preheader.if.then4_crit_edge
  %call2.lcssa = phi ptr [ %call290, %while.cond.preheader.if.then4_crit_edge ], [ %call2, %if.end38.if.then4_crit_edge ]
  %7 = ptrtoint ptr %call2.lcssa to i32
  br label %out

if.end6:                                          ; preds = %if.end38.if.end6_crit_edge, %if.end6.lr.ph
  %call294 = phi ptr [ %call290, %if.end6.lr.ph ], [ %call2, %if.end38.if.end6_crit_edge ]
  %count.092 = phi i32 [ 0, %if.end6.lr.ph ], [ %inc, %if.end38.if.end6_crit_edge ]
  %8 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not.i = icmp eq i64 %9, 0
  br i1 %tobool.not.i, label %if.end6.if.then.i_crit_edge, label %lor.lhs.false.i

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %11)
  %cmp.i71 = icmp eq i8 %11, -124
  br i1 %cmp.i71, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end6.if.then.i_crit_edge
  %12 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %13 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %9, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %14 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %ino.0.i, ptr %key, align 8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %key_type, ptr %2, align 8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 -1, ptr %3, align 1
  %call8 = call i32 @btrfs_search_slot(ptr noundef %call294, ptr noundef %1, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp sgt i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %btrfs_ino.exit
  %17 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp10 = icmp eq i32 %18, 0
  br i1 %cmp10, label %if.then9.while.end_crit_edge, label %if.end12

if.then9.while.end_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end12:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %18, -1
  %19 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dec, ptr %slots, align 4
  br label %if.end19

if.else:                                          ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp15 = icmp slt i32 %call8, 0
  br i1 %cmp15, label %if.then16, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 @btrfs_end_transaction(ptr noundef %call294) #8
  br label %out

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.end12
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %22 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %mul.i.i.i.i = mul i32 %23, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %24 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %21, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #8
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %6, align 1
  %27 = call i64 @llvm.bswap.i64(i64 %26) #8
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %3, align 1
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %5, align 8
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %2, align 8
  %32 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %disk_key.i, align 8
  %34 = call i64 @llvm.bswap.i64(i64 %33) #8
  %35 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  %36 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool.not.i73 = icmp eq i64 %37, 0
  br i1 %tobool.not.i73, label %if.end19.if.then.i79_crit_edge, label %lor.lhs.false.i76

if.end19.if.then.i79_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i79

lor.lhs.false.i76:                                ; preds = %if.end19
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %39)
  %cmp.i75 = icmp eq i8 %39, -124
  br i1 %cmp.i75, label %lor.lhs.false.i76.if.then.i79_crit_edge, label %lor.lhs.false.i76.btrfs_ino.exit81_crit_edge

lor.lhs.false.i76.btrfs_ino.exit81_crit_edge:     ; preds = %lor.lhs.false.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_ino.exit81

lor.lhs.false.i76.if.then.i79_crit_edge:          ; preds = %lor.lhs.false.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i79

if.then.i79:                                      ; preds = %lor.lhs.false.i76.if.then.i79_crit_edge, %if.end19.if.then.i79_crit_edge
  %40 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_ino.i, align 8
  %conv3.i78 = zext i32 %41 to i64
  br label %btrfs_ino.exit81

btrfs_ino.exit81:                                 ; preds = %if.then.i79, %lor.lhs.false.i76.btrfs_ino.exit81_crit_edge
  %ino.0.i80 = phi i64 [ %conv3.i78, %if.then.i79 ], [ %37, %lor.lhs.false.i76.btrfs_ino.exit81_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %ino.0.i80)
  %cmp25.not = icmp eq i64 %34, %ino.0.i80
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %key_type)
  %cmp28.not = icmp eq i8 %30, %key_type
  %or.cond = select i1 %cmp25.not, i1 %cmp28.not, i1 false
  br i1 %or.cond, label %if.end31, label %btrfs_ino.exit81.while.end_crit_edge

btrfs_ino.exit81.while.end_crit_edge:             ; preds = %btrfs_ino.exit81
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end31:                                         ; preds = %btrfs_ino.exit81
  %42 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slots, align 4
  %call34 = call i32 @btrfs_del_items(ptr noundef %call294, ptr noundef %1, ptr noundef nonnull %call, i32 noundef %43, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = call i32 @btrfs_end_transaction(ptr noundef %call294) #8
  br label %out

if.end38:                                         ; preds = %if.end31
  %inc = add i32 %count.092, 1
  call void @btrfs_release_path(ptr noundef nonnull %call) #8
  %call39 = call i32 @btrfs_end_transaction(ptr noundef %call294) #8
  %call2 = call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 1) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end38.if.then4_crit_edge, label %if.end38.if.end6_crit_edge

if.end38.if.end6_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end38.if.then4_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

while.end:                                        ; preds = %btrfs_ino.exit81.while.end_crit_edge, %if.then9.while.end_crit_edge
  %call40 = call i32 @btrfs_end_transaction(ptr noundef %call294) #8
  br label %out

out:                                              ; preds = %while.end, %if.then36, %if.then16, %if.then4
  %ret.0 = phi i32 [ %7, %if.then4 ], [ %count.092, %while.end ], [ %call34, %if.then36 ], [ %call8, %if.then16 ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_begin_enable_verity(ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -864
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.i.not, label %cond.false, label %cond.end, !prof !52

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 583) #11
  unreachable

cond.end:                                         ; preds = %entry
  %runtime_flags = getelementptr i8, ptr %1, i32 -356
  %6 = ptrtoint ptr %runtime_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %runtime_flags, align 4
  %8 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call.i = tail call fastcc i32 @drop_verity_items(ptr noundef %add.ptr.i, i8 noundef zeroext 36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %btrfs_drop_verity_items.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

btrfs_drop_verity_items.exit:                     ; preds = %if.end
  %call1.i = tail call fastcc i32 @drop_verity_items(ptr noundef %add.ptr.i, i8 noundef zeroext 37) #8
  %9 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %tobool10.not = icmp sgt i32 %call1.i, -1
  br i1 %tobool10.not, label %if.end12, label %btrfs_drop_verity_items.exit.cleanup_crit_edge

btrfs_drop_verity_items.exit.cleanup_crit_edge:   ; preds = %btrfs_drop_verity_items.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %btrfs_drop_verity_items.exit
  %call13 = tail call ptr @btrfs_start_transaction(ptr noundef %3, i32 noundef 1) #8
  %cmp.i38 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32 @btrfs_orphan_add(ptr noundef %call13, ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 11, ptr noundef %runtime_flags) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %call23 = tail call i32 @btrfs_end_transaction(ptr noundef %call13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then15, %btrfs_drop_verity_items.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then15 ], [ 0, %if.end22 ], [ -16, %cond.end.cleanup_crit_edge ], [ %9, %btrfs_drop_verity_items.exit.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_end_enable_verity(ptr nocapture noundef readonly %filp, ptr noundef %desc, i32 noundef %desc_size, i64 noundef %merkle_tree_size) #0 align 64 {
entry:
  %item.i = alloca %struct.btrfs_verity_descriptor_item, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -864
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #8
  %2 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.i.not, label %cond.false, label %cond.end, !prof !52

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 631) #11
  unreachable

cond.end:                                         ; preds = %entry
  %cmp = icmp eq ptr %desc, null
  br i1 %cmp, label %cond.end.rollback_crit_edge, label %if.end

cond.end.rollback_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rollback

if.end:                                           ; preds = %cond.end
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %item.i) #8
  %6 = getelementptr inbounds i8, ptr %item.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 17)
  %conv.i = zext i32 %desc_size to i64
  %8 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #8
  %9 = ptrtoint ptr %item.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %item.i, align 8
  %call.i = call fastcc i32 @write_key_bytes(ptr noundef %add.ptr.i, i8 noundef zeroext 36, i64 noundef 0, ptr noundef nonnull %item.i, i64 noundef 25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.finish_verity.exit.thread_crit_edge

if.end.finish_verity.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %finish_verity.exit.thread

if.end.i:                                         ; preds = %if.end
  %call3.i = call fastcc i32 @write_key_bytes(ptr noundef %add.ptr.i, i8 noundef zeroext 36, i64 noundef 1, ptr noundef nonnull %desc, i64 noundef %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.finish_verity.exit.thread_crit_edge

if.end.i.finish_verity.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %finish_verity.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call ptr @btrfs_start_transaction(ptr noundef %5, i32 noundef 2) #8
  %cmp.i.i24 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i24, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call7.i to i32
  br label %finish_verity.exit

if.end11.i:                                       ; preds = %if.end6.i
  %ro_flags.i = getelementptr i8, ptr %1, i32 -236
  %11 = ptrtoint ptr %ro_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ro_flags.i, align 4
  %or.i = or i32 %12, 1
  store i32 %or.i, ptr %ro_flags.i, align 4
  call void @btrfs_sync_inode_flags_to_i_flags(ptr noundef %1) #8
  %call12.i = call i32 @btrfs_update_inode(ptr noundef %call7.i, ptr noundef %5, ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.end_trans.i_crit_edge

if.end11.i.end_trans.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %end_trans.i

if.end15.i:                                       ; preds = %if.end11.i
  %13 = getelementptr i8, ptr %1, i32 44
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.end15.i.if.end19.i_crit_edge, label %if.end.i.i

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.end.i.i:                                       ; preds = %if.end15.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %location.i.i.i = getelementptr i8, ptr %1, i32 -860
  %18 = ptrtoint ptr %location.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %location.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool.not.i.i.i = icmp eq i64 %19, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.if.then.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i
  %type.i.i.i = getelementptr i8, ptr %1, i32 -852
  %20 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %21)
  %cmp.i.i.i = icmp eq i8 %21, -124
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge

lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_ino.exit.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i_crit_edge
  %i_ino.i.i.i = getelementptr i8, ptr %1, i32 40
  %22 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino.i.i.i, align 8
  %conv3.i.i.i = zext i32 %23 to i64
  br label %btrfs_ino.exit.i.i

btrfs_ino.exit.i.i:                               ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge
  %ino.0.i.i.i = phi i64 [ %conv3.i.i.i, %if.then.i.i.i ], [ %19, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge ]
  %call2.i.i = call i32 @btrfs_del_orphan_item(ptr noundef %call7.i, ptr noundef %17, i64 noundef %ino.0.i.i.i) #8
  %24 = zext i32 %call2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i.i, label %btrfs_ino.exit.i.i.end_trans.i_crit_edge [
    i32 -2, label %btrfs_ino.exit.i.i.if.end19.i_crit_edge
    i32 0, label %btrfs_ino.exit.i.i.if.end19.i_crit_edge27
  ]

btrfs_ino.exit.i.i.if.end19.i_crit_edge27:        ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

btrfs_ino.exit.i.i.if.end19.i_crit_edge:          ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

btrfs_ino.exit.i.i.end_trans.i_crit_edge:         ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %end_trans.i

if.end19.i:                                       ; preds = %btrfs_ino.exit.i.i.if.end19.i_crit_edge, %btrfs_ino.exit.i.i.if.end19.i_crit_edge27, %if.end15.i.if.end19.i_crit_edge
  %runtime_flags.i = getelementptr i8, ptr %1, i32 -356
  call void @_clear_bit(i32 noundef 11, ptr noundef %runtime_flags.i) #8
  %fs_info.i = getelementptr inbounds %struct.btrfs_root, ptr %5, i32 0, i32 8
  %25 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fs_info.i, align 8
  call fastcc void @__btrfs_set_fs_compat_ro(ptr noundef %26) #8
  br label %end_trans.i

end_trans.i:                                      ; preds = %if.end19.i, %btrfs_ino.exit.i.i.end_trans.i_crit_edge, %if.end11.i.end_trans.i_crit_edge
  %ret.0.i = phi i32 [ %call12.i, %if.end11.i.end_trans.i_crit_edge ], [ 0, %if.end19.i ], [ %call2.i.i, %btrfs_ino.exit.i.i.end_trans.i_crit_edge ]
  %call20.i = call i32 @btrfs_end_transaction(ptr noundef %call7.i) #8
  br label %finish_verity.exit

finish_verity.exit.thread:                        ; preds = %if.end.i.finish_verity.exit.thread_crit_edge, %if.end.finish_verity.exit.thread_crit_edge
  %ret.1.i.ph = phi i32 [ %call3.i, %if.end.i.finish_verity.exit.thread_crit_edge ], [ %call.i, %if.end.finish_verity.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %item.i) #8
  br label %rollback

finish_verity.exit:                               ; preds = %end_trans.i, %if.then9.i
  %ret.1.i = phi i32 [ %10, %if.then9.i ], [ %ret.0.i, %end_trans.i ]
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %item.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool7.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool7.not, label %finish_verity.exit.cleanup_crit_edge, label %finish_verity.exit.rollback_crit_edge

finish_verity.exit.rollback_crit_edge:            ; preds = %finish_verity.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rollback

finish_verity.exit.cleanup_crit_edge:             ; preds = %finish_verity.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

rollback:                                         ; preds = %finish_verity.exit.rollback_crit_edge, %finish_verity.exit.thread, %cond.end.rollback_crit_edge
  %ret.0 = phi i32 [ 0, %cond.end.rollback_crit_edge ], [ %ret.1.i, %finish_verity.exit.rollback_crit_edge ], [ %ret.1.i.ph, %finish_verity.exit.thread ]
  %call10 = call fastcc i32 @rollback_verity(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %rollback.cleanup_crit_edge, label %if.then12

rollback.cleanup_crit_edge:                       ; preds = %rollback
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %rollback
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fs_info, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %30, ptr noundef nonnull @.str.5, i32 noundef %call10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %rollback.cleanup_crit_edge, %finish_verity.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %finish_verity.exit.cleanup_crit_edge ], [ %ret.0, %if.then12 ], [ %ret.0, %rollback.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_get_verity_descriptor(ptr nocapture noundef readonly %inode, ptr noundef %buf, i32 noundef %buf_size) #0 align 64 {
entry:
  %item = alloca %struct.btrfs_verity_descriptor_item, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %item) #8
  %0 = getelementptr inbounds %struct.btrfs_verity_descriptor_item, ptr %item, i32 0, i32 1, i32 1
  %1 = call ptr @memset(ptr %item, i32 0, i32 25)
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %call1 = call fastcc i32 @read_key_bytes(ptr noundef %add.ptr.i, i8 noundef zeroext 36, i64 noundef 0, ptr noundef nonnull %item, i64 noundef 25, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.btrfs_verity_descriptor_item, ptr %item, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp2.not = icmp eq i64 %4, 0
  br i1 %cmp2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp5.not = icmp eq i64 %6, 0
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %item to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %item, align 8
  %9 = call i64 @llvm.bswap.i64(i64 %8) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %9)
  %cmp9 = icmp ugt i64 %9, 2147483647
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_size)
  %cmp12 = icmp eq i32 %buf_size, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %9 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %conv15 = zext i32 %buf_size to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv15)
  %cmp16 = icmp ugt i64 %9, %conv15
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call22 = call fastcc i32 @read_key_bytes(ptr noundef %add.ptr.i, i8 noundef zeroext 36, i64 noundef 1, ptr noundef %buf, i64 noundef %conv15, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end19.cleanup_crit_edge, label %if.end26

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %conv2747 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv2747)
  %cmp28.not = icmp eq i64 %9, %conv2747
  %conv32 = trunc i64 %9 to i32
  %spec.select = select i1 %cmp28.not, i32 %conv32, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then13, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then13 ], [ %call1, %entry.cleanup_crit_edge ], [ -117, %lor.lhs.false.cleanup_crit_edge ], [ -117, %if.end.cleanup_crit_edge ], [ -117, %if.end7.cleanup_crit_edge ], [ -34, %if.end14.cleanup_crit_edge ], [ %call22, %if.end19.cleanup_crit_edge ], [ %spec.select, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %item) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @btrfs_read_merkle_tree_page(ptr nocapture noundef readonly %inode, i32 noundef %index, i32 noundef %num_ra_pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %index to i64
  %shl = shl nuw nsw i64 %conv, 12
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %1, -1
  %or.i = or i64 %sub.i, 65535
  %add.i = add i64 %or.i, 1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %s_maxbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %5)
  %cmp.i = icmp ugt i64 %add.i, %5
  %.add.i = select i1 %cmp.i, i64 -27, i64 %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.add.i)
  %cmp = icmp slt i64 %.add.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv2 = trunc i64 %.add.i to i32
  %6 = inttoptr i32 %conv2 to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub nuw nsw i64 -4096, %shl
  %sub4 = add i64 %sub, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %.add.i, i64 %sub4)
  %cmp5 = icmp ugt i64 %.add.i, %sub4
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %7 = lshr i64 %.add.i, 12
  %8 = trunc i64 %7 to i32
  %conv11 = add i32 %8, %index
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  br label %again

again:                                            ; preds = %put_page.exit150.again_crit_edge, %if.end9
  %9 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %10, i32 noundef %conv11, i32 noundef 1, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end23, label %if.then13

if.then13:                                        ; preds = %again
  %11 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !53

if.then.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i94 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i94)
  %tobool.not.i.i.i95 = icmp eq i32 %and.i.i.i.i94, 0
  br i1 %tobool.not.i.i.i95, label %folio_flags.exit.i.i, label %if.then.i.i.i96, !prof !53

if.then.i.i.i96:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !54
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %15, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i, label %if.end17, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  br label %cleanup

if.end17:                                         ; preds = %folio_flags.exit.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 788) #8
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %11, align 4
  %and.i.i97 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i97)
  %tobool.not.i.i98 = icmp eq i32 %and.i.i97, 0
  br i1 %tobool.not.i.i98, label %if.end.i.i101, label %if.then.i.i100, !prof !53

if.then.i.i100:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i99 = add i32 %23, -1
  br label %_compound_head.exit.i105

if.end.i.i101:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i105

_compound_head.exit.i105:                         ; preds = %if.end.i.i101, %if.then.i.i100
  %retval.0.i.i102 = phi i32 [ %sub.i.i99, %if.then.i.i100 ], [ %24, %if.end.i.i101 ]
  %25 = inttoptr i32 %retval.0.i.i102 to ptr
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i103 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i103)
  %tobool.not.i.i.i104 = icmp eq i32 %and.i.i.i.i103, 0
  br i1 %tobool.not.i.i.i104, label %folio_flags.exit.i.i107, label %if.then.i.i.i106, !prof !53

if.then.i.i.i106:                                 ; preds = %_compound_head.exit.i105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !54
  unreachable

folio_flags.exit.i.i107:                          ; preds = %_compound_head.exit.i105
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %25, i32 noundef 4) #8
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and.i.i4.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i107.if.then.i_crit_edge

folio_flags.exit.i.i107.if.then.i_crit_edge:      ; preds = %folio_flags.exit.i.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i107
  tail call void @llvm.prefetch.p0(ptr %25, i32 1, i32 3, i32 1) #8
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #8, !srcloc !56
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i107.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %25) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %11, align 4
  %and.i.i108 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i108)
  %tobool.not.i.i109 = icmp eq i32 %and.i.i108, 0
  br i1 %tobool.not.i.i109, label %if.end.i.i112, label %if.then.i.i111, !prof !53

if.then.i.i111:                                   ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i110 = add i32 %33, -1
  br label %_compound_head.exit.i116

if.end.i.i112:                                    ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i116

_compound_head.exit.i116:                         ; preds = %if.end.i.i112, %if.then.i.i111
  %retval.0.i.i113 = phi i32 [ %sub.i.i110, %if.then.i.i111 ], [ %34, %if.end.i.i112 ]
  %35 = inttoptr i32 %retval.0.i.i113 to ptr
  %36 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i.i.i114 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i114)
  %tobool.not.i.i.i115 = icmp eq i32 %and.i.i.i.i114, 0
  br i1 %tobool.not.i.i.i115, label %folio_flags.exit.i.i119, label %if.then.i.i.i117, !prof !53

if.then.i.i.i117:                                 ; preds = %_compound_head.exit.i116
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !54
  unreachable

folio_flags.exit.i.i119:                          ; preds = %_compound_head.exit.i116
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %35, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i118 = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i118, label %if.then20, label %PageUptodate.exit122

PageUptodate.exit122:                             ; preds = %folio_flags.exit.i.i119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @unlock_page(ptr noundef nonnull %call.i) #8
  br label %cleanup

if.then20:                                        ; preds = %folio_flags.exit.i.i119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unlock_page(ptr noundef nonnull %call.i) #8
  tail call fastcc void @put_page(ptr noundef nonnull %call.i)
  br label %cleanup

if.end23:                                         ; preds = %again
  %42 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gfp_mask.i.i, align 4
  %and.i = and i32 %45, -129
  %call38.i.i.i.i = tail call ptr @__folio_alloc(i32 noundef %and.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool27.not = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool27.not, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %call32 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #8
  %call33 = tail call fastcc i32 @read_key_bytes(ptr noundef %add.ptr.i, i8 noundef zeroext 37, i64 noundef %shl, ptr noundef %call32, i64 noundef 4096, ptr noundef nonnull %call38.i.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end30
  %46 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i123 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123)
  %tobool.not.i.i124 = icmp eq i32 %and.i.i123, 0
  br i1 %tobool.not.i.i124, label %if.end.i.i127, label %if.then.i.i126, !prof !53

if.then.i.i126:                                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i125 = add i32 %48, -1
  br label %_compound_head.exit.i129

if.end.i.i127:                                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit.i129

_compound_head.exit.i129:                         ; preds = %if.end.i.i127, %if.then.i.i126
  %retval.0.i.i128 = phi i32 [ %sub.i.i125, %if.then.i.i126 ], [ %49, %if.end.i.i127 ]
  %50 = inttoptr i32 %retval.0.i.i128 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %51 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i.i.i = icmp eq i32 %52, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !52

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.18) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i129
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@btrfs_read_merkle_tree_page, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !62

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %50, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %50) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %54 = inttoptr i32 %call33 to ptr
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call33)
  %cmp39 = icmp ult i32 %call33, 4096
  br i1 %cmp39, label %if.then41, label %if.end38.if.end43_crit_edge

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %sub42 = sub nuw nsw i32 4096, %call33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %55 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %55, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i.i, i32 noundef %or.i.i) #8
  %add.ptr.i130 = getelementptr i8, ptr %call.i.i, i32 %call33
  %56 = call ptr @memset(ptr %add.ptr.i130, i32 0, i32 %sub42)
  tail call void @flush_dcache_page(ptr noundef nonnull %call38.i.i.i.i) #8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38.if.end43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  %57 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and.i.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !53

if.then.i.i.i:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call38.i.i.i.i, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !54
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end43
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call38.i.i.i.i) #8
  %60 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_mapping, align 8
  %call45 = tail call i32 @add_to_page_cache_lru(ptr noundef nonnull %call38.i.i.i.i, ptr noundef %61, i32 noundef %conv11, i32 noundef 3136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.else

if.then47:                                        ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unlock_page(ptr noundef nonnull %call38.i.i.i.i) #8
  br label %cleanup

if.else:                                          ; preds = %SetPageUptodate.exit
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %57, align 4
  %and.i.i131 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i131)
  %tobool.not.i.i132 = icmp eq i32 %and.i.i131, 0
  br i1 %tobool.not.i.i132, label %if.end.i.i135, label %if.then.i.i134, !prof !53

if.then.i.i134:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i133 = add i32 %63, -1
  br label %_compound_head.exit.i140

if.end.i.i135:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %call38.i.i.i.i to i32
  br label %_compound_head.exit.i140

_compound_head.exit.i140:                         ; preds = %if.end.i.i135, %if.then.i.i134
  %retval.0.i.i136 = phi i32 [ %sub.i.i133, %if.then.i.i134 ], [ %64, %if.end.i.i135 ]
  %65 = inttoptr i32 %retval.0.i.i136 to ptr
  %_refcount.i.i.i.i.i137 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 3
  %call.i.i.i.i.i.i.i138 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i137, i32 noundef 4) #8
  %66 = ptrtoint ptr %_refcount.i.i.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %_refcount.i.i.i.i.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.i.i.i139 = icmp eq i32 %67, 0
  br i1 %cmp.i.i.i.i139, label %if.then.i.i.i.i141, label %do.end5.i.i.i.i145, !prof !52

if.then.i.i.i.i141:                               ; preds = %_compound_head.exit.i140
  call void @__sanitizer_cov_trace_pc() #10
  %68 = inttoptr i32 %retval.0.i.i136 to ptr
  tail call void @dump_page(ptr noundef %68, ptr noundef nonnull @.str.18) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end5.i.i.i.i145:                               ; preds = %_compound_head.exit.i140
  %call.i.i.i10.i.i.i.i142 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i137, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i137, i32 1, i32 3, i32 1) #8
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i137, ptr %_refcount.i.i.i.i.i137, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i137) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i.i143 = extractvalue { i32, i32 } %69, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i143)
  %cmp.i.i.i.i.i.i.i144 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i143, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@btrfs_read_merkle_tree_page, %if.then.i.i.i.i.i147)) #8
          to label %folio_put_testzero.exit.i.i148 [label %if.then.i.i.i.i.i147], !srcloc !62

if.then.i.i.i.i.i147:                             ; preds = %do.end5.i.i.i.i145
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i146 = zext i1 %cmp.i.i.i.i.i.i.i144 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %65, i32 noundef -1, i32 noundef %conv.i.i.i.i.i146) #8
  br label %folio_put_testzero.exit.i.i148

folio_put_testzero.exit.i.i148:                   ; preds = %if.then.i.i.i.i.i147, %do.end5.i.i.i.i145
  br i1 %cmp.i.i.i.i.i.i.i144, label %if.then.i4.i149, label %folio_put_testzero.exit.i.i148.put_page.exit150_crit_edge

folio_put_testzero.exit.i.i148.put_page.exit150_crit_edge: ; preds = %folio_put_testzero.exit.i.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit150

if.then.i4.i149:                                  ; preds = %folio_put_testzero.exit.i.i148
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %65) #8
  br label %put_page.exit150

put_page.exit150:                                 ; preds = %if.then.i4.i149, %folio_put_testzero.exit.i.i148.put_page.exit150_crit_edge
  %cmp48 = icmp eq i32 %call45, -17
  br i1 %cmp48, label %put_page.exit150.again_crit_edge, label %if.end51

put_page.exit150.again_crit_edge:                 ; preds = %put_page.exit150
  call void @__sanitizer_cov_trace_pc() #10
  br label %again

if.end51:                                         ; preds = %put_page.exit150
  call void @__sanitizer_cov_trace_pc() #10
  %70 = inttoptr i32 %call45 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then47, %put_page.exit, %if.end23.cleanup_crit_edge, %if.then20, %PageUptodate.exit122, %PageUptodate.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %6, %if.then ], [ %call.i, %PageUptodate.exit122 ], [ inttoptr (i32 -5 to ptr), %if.then20 ], [ %54, %put_page.exit ], [ %call.i, %PageUptodate.exit ], [ %70, %if.end51 ], [ %call38.i.i.i.i, %if.then47 ], [ inttoptr (i32 -27 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_write_merkle_tree_block(ptr nocapture noundef readonly %inode, ptr noundef %buf, i64 noundef %index, i32 noundef %log_blocksize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sh_prom = zext i32 %log_blocksize to i64
  %shl = shl i64 %index, %sh_prom
  %shl2 = shl nuw i64 1, %sh_prom
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %1, -1
  %or.i = or i64 %sub.i, 65535
  %add.i = add i64 %or.i, 1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %s_maxbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %5)
  %cmp.i = icmp ugt i64 %add.i, %5
  %.add.i = select i1 %cmp.i, i64 -27, i64 %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.add.i)
  %cmp = icmp slt i64 %.add.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %.add.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = add i64 %shl, %shl2
  %sub3 = sub i64 %5, %6
  call void @__sanitizer_cov_trace_cmp8(i64 %.add.i, i64 %sub3)
  %cmp4 = icmp ugt i64 %.add.i, %sub3
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %call9 = tail call fastcc i32 @write_key_bytes(ptr noundef %add.ptr.i, i8 noundef zeroext 37, i64 noundef %shl, ptr noundef %buf, i64 noundef %shl2)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %call9, %if.end7 ], [ -27, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_start_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #4 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #8, !srcloc !64
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_orphan_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rollback_verity(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %vfs_inode = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37
  %i_rwsem.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #8
  %2 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.i.not, label %cond.false, label %cond.end, !prof !52

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.8, i32 noundef 458) #11
  unreachable

cond.end:                                         ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %i_size = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  tail call void @truncate_inode_pages(ptr noundef %5, i64 noundef %7) #8
  %runtime_flags = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %runtime_flags) #8
  %call.i = tail call fastcc i32 @drop_verity_items(ptr noundef %inode, i8 noundef zeroext 36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cond.end.do.body_crit_edge, label %btrfs_drop_verity_items.exit

cond.end.do.body_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

btrfs_drop_verity_items.exit:                     ; preds = %cond.end
  %call1.i = tail call fastcc i32 @drop_verity_items(ptr noundef %inode, i8 noundef zeroext 37) #8
  %8 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %tobool7.not = icmp sgt i32 %call1.i, -1
  br i1 %tobool7.not, label %if.end, label %btrfs_drop_verity_items.exit.do.body_crit_edge

btrfs_drop_verity_items.exit.do.body_crit_edge:   ; preds = %btrfs_drop_verity_items.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %btrfs_drop_verity_items.exit.do.body_crit_edge, %cond.end.do.body_crit_edge
  %retval.0.i191199 = phi i32 [ %8, %btrfs_drop_verity_items.exit.do.body_crit_edge ], [ %call.i, %cond.end.do.body_crit_edge ]
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info, align 8
  %i_ino = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %12 to i64
  tail call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %10, ptr noundef nonnull @__func__.rollback_verity, i32 noundef 465, i32 noundef %retval.0.i191199, ptr noundef nonnull @.str.9, i64 noundef %conv) #12
  br label %if.end145

if.end:                                           ; preds = %btrfs_drop_verity_items.exit
  %call9 = tail call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 2) #8
  %cmp.i192 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then11, label %if.end20

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call9 to i32
  %fs_info14 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %fs_info14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fs_info14, align 8
  %i_ino16 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %16 = ptrtoint ptr %i_ino16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino16, align 8
  %conv17 = zext i32 %17 to i64
  tail call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %15, ptr noundef nonnull @__func__.rollback_verity, i32 noundef 479, i32 noundef %13, ptr noundef nonnull @.str.10, i64 noundef %conv17) #12
  br label %if.end145

if.end20:                                         ; preds = %if.end
  %ro_flags = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 28
  %18 = ptrtoint ptr %ro_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ro_flags, align 4
  %and = and i32 %19, -2
  store i32 %and, ptr %ro_flags, align 4
  tail call void @btrfs_sync_inode_flags_to_i_flags(ptr noundef %vfs_inode) #8
  %call22 = tail call i32 @btrfs_update_inode(ptr noundef %call9, ptr noundef %1, ptr noundef %inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end77, label %do.body25

do.body25:                                        ; preds = %if.end20
  %fs_info26 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call9, i32 0, i32 16
  %20 = ptrtoint ptr %fs_info26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_info26, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %21, i32 0, i32 149
  %call27 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %do.body25.if.end74_crit_edge

do.body25.if.end74_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then29:                                        ; preds = %do.body25
  %22 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call22, label %do.end45 [
    i32 -5, label %if.then29.do.body58_crit_edge
    i32 -30, label %if.then29.do.body58_crit_edge209
  ]

if.then29.do.body58_crit_edge209:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58

if.then29.do.body58_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58

do.end45:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 486, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %call22) #8
  br label %if.end74

do.body58:                                        ; preds = %if.then29.do.body58_crit_edge, %if.then29.do.body58_crit_edge209
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rollback_verity.__UNIQUE_ID_ddebug940, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rollback_verity, %if.then68)) #8
          to label %if.end74 [label %if.then68], !srcloc !62

if.then68:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %fs_info26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fs_info26, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %24, ptr noundef nonnull @.str.14, i32 noundef %call22) #12
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %do.body58, %do.end45, %do.body25.if.end74_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %call9, ptr noundef nonnull @__func__.rollback_verity, i32 noundef 486, i32 noundef %call22) #12
  br label %out

if.end77:                                         ; preds = %if.end20
  %25 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.end77.out_crit_edge, label %if.end.i193

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i193:                                      ; preds = %if.end77
  %28 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inode, align 8
  %location.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %30 = ptrtoint ptr %location.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %location.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool.not.i.i = icmp eq i64 %31, 0
  br i1 %tobool.not.i.i, label %if.end.i193.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i193.if.then.i.i_crit_edge:                ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i193
  %type.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %33)
  %cmp.i.i194 = icmp eq i8 %33, -124
  br i1 %cmp.i.i194, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge

lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_ino.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end.i193.if.then.i.i_crit_edge
  %i_ino.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %34 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino.i.i, align 8
  %conv3.i.i = zext i32 %35 to i64
  br label %btrfs_ino.exit.i

btrfs_ino.exit.i:                                 ; preds = %if.then.i.i, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge
  %ino.0.i.i = phi i64 [ %conv3.i.i, %if.then.i.i ], [ %31, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge ]
  %call2.i = tail call i32 @btrfs_del_orphan_item(ptr noundef %call9, ptr noundef %29, i64 noundef %ino.0.i.i) #8
  %36 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call2.i, label %do.body81 [
    i32 -2, label %btrfs_ino.exit.i.out_crit_edge
    i32 0, label %btrfs_ino.exit.i.out_crit_edge210
  ]

btrfs_ino.exit.i.out_crit_edge210:                ; preds = %btrfs_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

btrfs_ino.exit.i.out_crit_edge:                   ; preds = %btrfs_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body81:                                        ; preds = %btrfs_ino.exit.i
  %fs_info82 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call9, i32 0, i32 16
  %37 = ptrtoint ptr %fs_info82 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fs_info82, align 4
  %fs_state83 = getelementptr inbounds %struct.btrfs_fs_info, ptr %38, i32 0, i32 149
  %call84 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then86, label %do.body81.if.end138_crit_edge

do.body81.if.end138_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then86:                                        ; preds = %do.body81
  %39 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call2.i, label %do.end105 [
    i32 -5, label %if.then86.do.body120_crit_edge
    i32 -30, label %if.then86.do.body120_crit_edge211
  ]

if.then86.do.body120_crit_edge211:                ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

if.then86.do.body120_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

do.end105:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 491, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %call2.i) #8
  br label %if.end138

do.body120:                                       ; preds = %if.then86.do.body120_crit_edge, %if.then86.do.body120_crit_edge211
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rollback_verity.__UNIQUE_ID_ddebug941, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rollback_verity, %if.then132)) #8
          to label %if.end138 [label %if.then132], !srcloc !62

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %fs_info82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fs_info82, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %41, ptr noundef nonnull @.str.14, i32 noundef %call2.i) #12
  br label %if.end138

if.end138:                                        ; preds = %if.then132, %do.body120, %do.end105, %do.body81.if.end138_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %call9, ptr noundef nonnull @__func__.rollback_verity, i32 noundef 491, i32 noundef %call2.i) #12
  br label %out

out:                                              ; preds = %if.end138, %btrfs_ino.exit.i.out_crit_edge, %btrfs_ino.exit.i.out_crit_edge210, %if.end77.out_crit_edge, %if.end74
  %ret.0 = phi i32 [ %call22, %if.end74 ], [ %call2.i, %if.end138 ], [ 0, %if.end77.out_crit_edge ], [ 0, %btrfs_ino.exit.i.out_crit_edge ], [ 0, %btrfs_ino.exit.i.out_crit_edge210 ]
  %tobool142.not = icmp eq ptr %call9, null
  br i1 %tobool142.not, label %out.if.end145_crit_edge, label %if.then143

out.if.end145_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then143:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %call144 = tail call i32 @btrfs_end_transaction(ptr noundef nonnull %call9) #8
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %out.if.end145_crit_edge, %if.then11, %do.body
  %ret.0208 = phi i32 [ %ret.0, %if.then143 ], [ %ret.0, %out.if.end145_crit_edge ], [ %13, %if.then11 ], [ %retval.0.i191199, %do.body ]
  ret i32 %ret.0208
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_key_bytes(ptr nocapture noundef readonly %inode, i8 noundef zeroext %key_type, i64 noundef %offset, ptr noundef %src, i64 noundef %len) unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %4 = call ptr @memset(ptr %key, i32 255, i32 17)
  %call = tail call ptr @btrfs_alloc_path() #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %cmp.not56 = icmp eq i64 %len, 0
  br i1 %cmp.not56, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %5 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %src_offset.059 = phi i32 [ 0, %while.body.lr.ph ], [ %add19, %if.end14.while.body_crit_edge ]
  %len.addr.058 = phi i64 [ %len, %while.body.lr.ph ], [ %sub, %if.end14.while.body_crit_edge ]
  %offset.addr.057 = phi i64 [ %offset, %while.body.lr.ph ], [ %add18, %if.end14.while.body_crit_edge ]
  %call2 = call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 1) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call2 to i32
  br label %while.end

if.end6:                                          ; preds = %while.body
  %9 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i, label %if.end6.if.then.i_crit_edge, label %lor.lhs.false.i

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end6
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %12)
  %cmp.i53 = icmp eq i8 %12, -124
  br i1 %cmp.i53, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end6.if.then.i_crit_edge
  %13 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %14 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %10, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %15 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %ino.0.i, ptr %key, align 8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %key_type, ptr %2, align 8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %offset.addr.057, ptr %3, align 1
  %18 = call i64 @llvm.umin.i64(i64 %len.addr.058, i64 2048)
  %19 = trunc i64 %18 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %20 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #8
  %21 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %key, ptr %batch.i, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %data_size.addr.i, ptr %5, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %6, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %7, align 4
  %call.i = call i32 @btrfs_insert_empty_items(ptr noundef %call2, ptr noundef %1, ptr noundef nonnull %call, ptr noundef nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 @btrfs_end_transaction(ptr noundef %call2) #8
  br label %while.end

if.end14:                                         ; preds = %btrfs_ino.exit
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %27 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %28, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %29 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %26, ptr noundef %29, i32 noundef 17) #8
  %add = add i32 %call.i.i, 101
  %add.ptr = getelementptr i8, ptr %src, i32 %src_offset.059
  call void @write_extent_buffer(ptr noundef %26, ptr noundef %add.ptr, i32 noundef %add, i32 noundef %19) #8
  %add18 = add i64 %18, %offset.addr.057
  %add19 = add i32 %src_offset.059, %19
  %sub = sub i64 %len.addr.058, %18
  call void @btrfs_release_path(ptr noundef nonnull %call) #8
  %call21 = call i32 @btrfs_end_transaction(ptr noundef %call2) #8
  %cmp.not = icmp eq i64 %sub, 0
  br i1 %cmp.not, label %if.end14.while.end_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %if.then12, %if.then4, %while.cond.preheader.while.end_crit_edge
  %ret.1 = phi i32 [ %8, %if.then4 ], [ %call.i, %if.then12 ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ 0, %if.end14.while.end_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %while.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_sync_inode_flags_to_i_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_update_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__btrfs_set_fs_compat_ro(ptr noundef %fs_info) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  %0 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %super_copy, align 8
  %compat_ro_flags.i = getelementptr inbounds %struct.btrfs_super_block, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %compat_ro_flags.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %compat_ro_flags.i, align 1
  %4 = and i64 %3, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %super_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %super_lock) #8
  %5 = ptrtoint ptr %compat_ro_flags.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %compat_ro_flags.i, align 1
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #8
  %and2 = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i64 %7, 4
  %8 = tail call i64 @llvm.bswap.i64(i64 %or) #8
  %9 = ptrtoint ptr %compat_ro_flags.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %compat_ro_flags.i, align 1
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i64 noundef 4) #12
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %super_lock) #8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_orphan_item(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_handle_fs_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_key_bytes(ptr nocapture noundef readonly %inode, i8 noundef zeroext %key_type, i64 noundef %offset, ptr noundef %dest, i64 noundef %len, ptr noundef %dest_page) unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %call = tail call ptr @btrfs_alloc_path() #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %dest_page, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %reada = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %reada to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %reada, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %5 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not.i = icmp eq i64 %6, 0
  br i1 %tobool.not.i, label %if.end4.if.then.i_crit_edge, label %lor.lhs.false.i

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end4
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %8)
  %cmp.i = icmp eq i8 %8, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %9 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %10 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %6, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %11 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %ino.0.i, ptr %key, align 8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %key_type, ptr %2, align 8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %offset, ptr %3, align 1
  %call7 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %1, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %btrfs_ino.exit.cleanup.sink.split_crit_edge, label %if.else

btrfs_ino.exit.cleanup.sink.split_crit_edge:      ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp9.not = icmp eq i32 %call7, 0
  br i1 %cmp9.not, label %if.else.if.end17_crit_edge, label %if.then10

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then10:                                        ; preds = %if.else
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp11 = icmp eq i32 %15, 0
  br i1 %cmp11, label %if.then10.cleanup.sink.split_crit_edge, label %if.end13

if.then10.cleanup.sink.split_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %15, -1
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec, ptr %slots, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %if.else.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %cmp18.not197 = icmp eq i64 %len, 0
  br i1 %cmp18.not197, label %if.end17.cleanup.sink.split_crit_edge, label %while.body.lr.ph

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

while.body.lr.ph:                                 ; preds = %if.end17
  %slots20 = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %17 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %type.i179 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %i_ino.i182 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %tobool55.not = icmp eq ptr %dest, null
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %while.body.lr.ph
  %kaddr.0204 = phi ptr [ %dest, %while.body.lr.ph ], [ %kaddr.2, %while.body.backedge ]
  %dest_offset.0203 = phi i32 [ 0, %while.body.lr.ph ], [ %add86, %while.body.backedge ]
  %copied.0201 = phi i32 [ 0, %while.body.lr.ph ], [ %add89, %while.body.backedge ]
  %offset.addr.0199 = phi i64 [ %offset, %while.body.lr.ph ], [ %add85, %while.body.backedge ]
  %len.addr.0198 = phi i64 [ %len, %while.body.lr.ph ], [ %sub88, %while.body.backedge ]
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %21 = ptrtoint ptr %slots20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slots20, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %mul.i.i.i.i = mul i32 %22, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %23 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %20, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #8
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %18, align 1
  %26 = call i64 @llvm.bswap.i64(i64 %25) #8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %3, align 1
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %17, align 8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %2, align 8
  %31 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %disk_key.i, align 8
  %33 = call i64 @llvm.bswap.i64(i64 %32) #8
  %34 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  %35 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool.not.i178 = icmp eq i64 %36, 0
  br i1 %tobool.not.i178, label %while.body.if.then.i184_crit_edge, label %lor.lhs.false.i181

while.body.if.then.i184_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i184

lor.lhs.false.i181:                               ; preds = %while.body
  %37 = ptrtoint ptr %type.i179 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %type.i179, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %38)
  %cmp.i180 = icmp eq i8 %38, -124
  br i1 %cmp.i180, label %lor.lhs.false.i181.if.then.i184_crit_edge, label %lor.lhs.false.i181.btrfs_ino.exit186_crit_edge

lor.lhs.false.i181.btrfs_ino.exit186_crit_edge:   ; preds = %lor.lhs.false.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_ino.exit186

lor.lhs.false.i181.if.then.i184_crit_edge:        ; preds = %lor.lhs.false.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i184

if.then.i184:                                     ; preds = %lor.lhs.false.i181.if.then.i184_crit_edge, %while.body.if.then.i184_crit_edge
  %39 = ptrtoint ptr %i_ino.i182 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino.i182, align 8
  %conv3.i183 = zext i32 %40 to i64
  br label %btrfs_ino.exit186

btrfs_ino.exit186:                                ; preds = %if.then.i184, %lor.lhs.false.i181.btrfs_ino.exit186_crit_edge
  %ino.0.i185 = phi i64 [ %conv3.i183, %if.then.i184 ], [ %36, %lor.lhs.false.i181.btrfs_ino.exit186_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %ino.0.i185)
  %cmp24.not = icmp eq i64 %33, %ino.0.i185
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %key_type)
  %cmp27.not = icmp eq i8 %29, %key_type
  %or.cond196 = select i1 %cmp24.not, i1 %cmp27.not, i1 false
  br i1 %or.cond196, label %if.end30, label %btrfs_ino.exit186.cleanup.sink.split_crit_edge

btrfs_ino.exit186.cleanup.sink.split_crit_edge:   ; preds = %btrfs_ino.exit186
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end30:                                         ; preds = %btrfs_ino.exit186
  %41 = ptrtoint ptr %slots20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slots20, align 4
  %mul.i.i.i = mul i32 %42, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %43 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %20, ptr noundef %43, i32 noundef 21) #8
  %conv34 = zext i32 %call.i.i to i64
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %3, align 1
  %add = add i64 %45, %conv34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0201)
  %cmp36 = icmp sgt i32 %copied.0201, 0
  br i1 %cmp36, label %if.then38, label %if.else44

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.0199, i64 %45)
  %cmp40.not = icmp eq i64 %offset.addr.0199, %45
  br i1 %cmp40.not, label %if.then38.if.end54_crit_edge, label %if.then38.cleanup.sink.split_crit_edge

if.then38.cleanup.sink.split_crit_edge:           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then38.if.end54_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.else44:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.0199, i64 %45)
  %cmp46 = icmp uge i64 %offset.addr.0199, %45
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %offset.addr.0199)
  %cmp50.not = icmp ugt i64 %add, %offset.addr.0199
  %or.cond = select i1 %cmp46, i1 %cmp50.not, i1 false
  br i1 %or.cond, label %if.else44.if.end54_crit_edge, label %if.else44.cleanup.sink.split_crit_edge

if.else44.cleanup.sink.split_crit_edge:           ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else44.if.end54_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end54:                                         ; preds = %if.else44.if.end54_crit_edge, %if.then38.if.end54_crit_edge
  %add58 = add i64 %offset.addr.0199, %len.addr.0198
  %46 = call i64 @llvm.umin.i64(i64 %add58, i64 %add)
  %copy_end.0 = select i1 %tobool55.not, i64 %add, i64 %46
  %sub = sub i64 %copy_end.0, %offset.addr.0199
  %conv62 = trunc i64 %sub to i32
  %sub64 = sub i64 %offset.addr.0199, %45
  %conv65 = trunc i64 %sub64 to i32
  br i1 %tobool55.not, label %if.end54.if.end83_crit_edge, label %if.then67

if.end54.if.end83_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then67:                                        ; preds = %if.end54
  br i1 %tobool2.not, label %if.then67.if.end71_crit_edge, label %if.then69

if.then67.if.end71_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %47 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %47, 512
  %call.i = call ptr @__kmap_local_page_prot(ptr noundef nonnull %dest_page, i32 noundef %or.i) #8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then67.if.end71_crit_edge
  %kaddr.1 = phi ptr [ %call.i, %if.then69 ], [ %kaddr.0204, %if.then67.if.end71_crit_edge ]
  %48 = ptrtoint ptr %slots20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %slots20, align 4
  %mul.i.i.i187 = mul i32 %49, 25
  %add.i.i.i188 = add i32 %mul.i.i.i187, 101
  %50 = inttoptr i32 %add.i.i.i188 to ptr
  %call.i.i189 = call i32 @btrfs_get_32(ptr noundef %20, ptr noundef %50, i32 noundef 17) #8
  %add.ptr = getelementptr i8, ptr %kaddr.1, i32 %dest_offset.0203
  %add75 = add i32 %conv65, 101
  %add76 = add i32 %add75, %call.i.i189
  call void @read_extent_buffer(ptr noundef %20, ptr noundef %add.ptr, i32 noundef %add76, i32 noundef %conv62) #8
  br i1 %tobool2.not, label %if.end71.if.end83_crit_edge, label %do.end

if.end71.if.end83_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

do.end:                                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  call void @kunmap_local_indexed(ptr noundef %kaddr.1) #8
  br label %if.end83

if.end83:                                         ; preds = %do.end, %if.end71.if.end83_crit_edge, %if.end54.if.end83_crit_edge
  %kaddr.2 = phi ptr [ %kaddr.1, %do.end ], [ %kaddr.1, %if.end71.if.end83_crit_edge ], [ %kaddr.0204, %if.end54.if.end83_crit_edge ]
  %conv84 = and i64 %sub, 4294967295
  %add85 = add i64 %conv84, %offset.addr.0199
  %add86 = add i32 %dest_offset.0203, %conv62
  %sub88 = sub i64 %len.addr.0198, %conv84
  %add89 = add i32 %copied.0201, %conv62
  %51 = ptrtoint ptr %slots20 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %slots20, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %slots20, align 4
  %53 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pages.i, align 4
  %call.i190 = call ptr @page_address(ptr noundef %56) #8
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %54, align 8
  %conv.i = trunc i64 %58 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i190, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %59 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %nritems.i, align 1
  %61 = call i32 @llvm.bswap.i32(i32 %60) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %61)
  %cmp97.not = icmp ult i32 %inc, %61
  br i1 %cmp97.not, label %if.end110, label %if.then99

if.then99:                                        ; preds = %if.end83
  %call.i191 = call i32 @btrfs_next_old_leaf(ptr noundef %1, ptr noundef nonnull %call, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %cmp101 = icmp slt i32 %call.i191, 0
  br i1 %cmp101, label %if.then99.cleanup.sink.split_crit_edge, label %if.else104

if.then99.cleanup.sink.split_crit_edge:           ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else104:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %cmp105.not = icmp ne i32 %call.i191, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub88)
  %cmp18.not = icmp eq i64 %sub88, 0
  %or.cond209 = select i1 %cmp105.not, i1 true, i1 %cmp18.not
  br i1 %or.cond209, label %if.else104.cleanup.sink.split_crit_edge, label %if.else104.while.body.backedge_crit_edge

if.else104.while.body.backedge_crit_edge:         ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.backedge

if.else104.cleanup.sink.split_crit_edge:          ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end110:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub88)
  %cmp18.not.old = icmp eq i64 %sub88, 0
  br i1 %cmp18.not.old, label %if.end110.cleanup.sink.split_crit_edge, label %if.end110.while.body.backedge_crit_edge

if.end110.while.body.backedge_crit_edge:          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.backedge

if.end110.cleanup.sink.split_crit_edge:           ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

while.body.backedge:                              ; preds = %if.end110.while.body.backedge_crit_edge, %if.else104.while.body.backedge_crit_edge
  br label %while.body

cleanup.sink.split:                               ; preds = %if.end110.cleanup.sink.split_crit_edge, %if.else104.cleanup.sink.split_crit_edge, %if.then99.cleanup.sink.split_crit_edge, %if.else44.cleanup.sink.split_crit_edge, %if.then38.cleanup.sink.split_crit_edge, %btrfs_ino.exit186.cleanup.sink.split_crit_edge, %if.end17.cleanup.sink.split_crit_edge, %if.then10.cleanup.sink.split_crit_edge, %btrfs_ino.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call7, %btrfs_ino.exit.cleanup.sink.split_crit_edge ], [ 0, %if.then10.cleanup.sink.split_crit_edge ], [ 0, %if.end17.cleanup.sink.split_crit_edge ], [ %call.i191, %if.then99.cleanup.sink.split_crit_edge ], [ %add89, %if.else104.cleanup.sink.split_crit_edge ], [ %add89, %if.end110.cleanup.sink.split_crit_edge ], [ %copied.0201, %if.else44.cleanup.sink.split_crit_edge ], [ %copied.0201, %if.then38.cleanup.sink.split_crit_edge ], [ %copied.0201, %btrfs_ino.exit186.cleanup.sink.split_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !53

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !52

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.18) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !62

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #8
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %4) #8
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_to_page_cache_lru(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__folio_alloc(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold noreturn }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @btrfs_verityops, !1, !"btrfs_verityops", i1 false, i1 false}
!1 = !{!"../fs/btrfs/verity.c", i32 807, i32 34}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/verity.c", i32 583, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @assertfail._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @assertfail._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/btrfs/verity.c", i32 644, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/btrfs/verity.c", i32 558, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/btrfs/ctree.h", i32 3710, i32 4}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/btrfs/verity.c", i32 458, i32 2}
!19 = !{ptr @__func__.rollback_verity, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/btrfs/verity.c", i32 463, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/verity.c", i32 477, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/btrfs/verity.c", i32 486, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rollback_verity.__UNIQUE_ID_ddebug940, !25, !"__UNIQUE_ID_ddebug940", i1 false, i1 false}
!29 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rollback_verity.__UNIQUE_ID_ddebug941, !31, !"__UNIQUE_ID_ddebug941", i1 false, i1 false}
!31 = !{!"../fs/btrfs/verity.c", i32 491, i32 3}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/mm.h", i32 717, i32 2}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/gfp.h", i32 579, i32 2}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2150582077, i64 2150582568, i64 2150582114, i64 2150582170, i64 2150582204, i64 2150582228, i64 2150582269, i64 2150582290, i64 2150582318, i64 2150582352}
!55 = !{i64 2151331969}
!56 = !{i64 2148682190, i64 2148682222, i64 2148682251, i64 2148682285, i64 2148682316, i64 2148682339}
!57 = !{i64 2148771295}
!58 = !{i64 2153181895, i64 2153182378, i64 2153181932, i64 2153181988, i64 2153182022, i64 2153182046, i64 2153182087, i64 2153182108, i64 2153182136, i64 2153182170}
!59 = !{i64 2148761808}
!60 = !{i64 2148676517, i64 2148676549, i64 2148676578, i64 2148676612, i64 2148676643, i64 2148676666}
!61 = !{i64 2148762037}
!62 = !{i64 2148497930, i64 2148497935, i64 2148497948, i64 2148497992, i64 2148498026, i64 2148498047}
!63 = !{i64 2151333040}
!64 = !{i64 2158388260, i64 2158388742, i64 2158388297, i64 2158388353, i64 2158388387, i64 2158388411, i64 2158388452, i64 2158388473, i64 2158388501, i64 2158388535}
