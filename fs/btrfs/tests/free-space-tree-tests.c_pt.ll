; ModuleID = '/llk/IR_all_yes/fs/btrfs/tests/free-space-tree-tests.c_pt.bc'
source_filename = "../fs/btrfs/tests/free-space-tree-tests.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.free_space_extent = type { i64, i64 }
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
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
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
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }

@__const.btrfs_test_free_space_tree.tests = private unnamed_addr constant [9 x ptr] [ptr @test_empty_block_group, ptr @test_remove_all, ptr @test_remove_beginning, ptr @test_remove_end, ptr @test_remove_middle, ptr @test_merge_left, ptr @test_merge_right, ptr @test_merge_both, ptr @test_merge_none], align 4
@btrfs_test_free_space_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016BTRFS: selftest: running free space tree tests\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"btrfs_test_free_space_tree\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fs/btrfs/tests/free-space-tree-tests.c\00", [57 x i8] zeroinitializer }, align 32
@btrfs_test_free_space_tree._entry_ptr = internal global ptr @btrfs_test_free_space_tree._entry, section ".printk_index", align 4
@check_free_space_extents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013BTRFS: selftest: %s:%d could not find free space info\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check_free_space_extents\00", [39 x i8] zeroinitializer }, align 32
@check_free_space_extents._entry_ptr = internal global ptr @check_free_space_extents._entry, section ".printk_index", align 4
@check_free_space_extents._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013BTRFS: selftest: %s:%d could not convert to extents\0A\00", [41 x i8] zeroinitializer }, align 32
@check_free_space_extents._entry_ptr.7 = internal global ptr @check_free_space_extents._entry.5, section ".printk_index", align 4
@check_free_space_extents._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013BTRFS: selftest: %s:%d could not convert to bitmaps\0A\00", [41 x i8] zeroinitializer }, align 32
@check_free_space_extents._entry_ptr.10 = internal global ptr @check_free_space_extents._entry.8, section ".printk_index", align 4
@__check_free_space_extents._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.11, ptr @.str.2, i32 36, ptr null, ptr null }, align 1
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__check_free_space_extents\00", [37 x i8] zeroinitializer }, align 32
@__check_free_space_extents._entry_ptr = internal global ptr @__check_free_space_extents._entry, section ".printk_index", align 4
@__check_free_space_extents._entry.12 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 44, ptr null, ptr null }, align 1
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013BTRFS: selftest: %s:%d extent count is wrong\0A\00", [48 x i8] zeroinitializer }, align 32
@__check_free_space_extents._entry_ptr.14 = internal global ptr @__check_free_space_extents._entry.12, section ".printk_index", align 4
@__check_free_space_extents._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 101, ptr null, ptr null }, align 1
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013BTRFS: selftest: %s:%d free space tree is invalid\0A\00", [43 x i8] zeroinitializer }, align 32
@__check_free_space_extents._entry_ptr.17 = internal global ptr @__check_free_space_extents._entry.15, section ".printk_index", align 4
@test_remove_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BTRFS: selftest: %s:%d could not remove free space\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_remove_all\00", [16 x i8] zeroinitializer }, align 32
@test_remove_all._entry_ptr = internal global ptr @test_remove_all._entry, section ".printk_index", align 4
@test_remove_beginning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.20, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_remove_beginning\00", [42 x i8] zeroinitializer }, align 32
@test_remove_beginning._entry_ptr = internal global ptr @test_remove_beginning._entry, section ".printk_index", align 4
@test_remove_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.21, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_remove_end\00", [16 x i8] zeroinitializer }, align 32
@test_remove_end._entry_ptr = internal global ptr @test_remove_end._entry, section ".printk_index", align 4
@test_remove_middle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.22, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_remove_middle\00", [45 x i8] zeroinitializer }, align 32
@test_remove_middle._entry_ptr = internal global ptr @test_remove_middle._entry, section ".printk_index", align 4
@test_merge_left._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.23, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_merge_left\00", [16 x i8] zeroinitializer }, align 32
@test_merge_left._entry_ptr = internal global ptr @test_merge_left._entry, section ".printk_index", align 4
@test_merge_left._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013BTRFS: selftest: %s:%d could not add free space\0A\00", [45 x i8] zeroinitializer }, align 32
@test_merge_left._entry_ptr.26 = internal global ptr @test_merge_left._entry.24, section ".printk_index", align 4
@test_merge_left._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_merge_left._entry_ptr.28 = internal global ptr @test_merge_left._entry.27, section ".printk_index", align 4
@test_merge_right._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.29, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_merge_right\00", [47 x i8] zeroinitializer }, align 32
@test_merge_right._entry_ptr = internal global ptr @test_merge_right._entry, section ".printk_index", align 4
@test_merge_right._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.29, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_merge_right._entry_ptr.31 = internal global ptr @test_merge_right._entry.30, section ".printk_index", align 4
@test_merge_right._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.29, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_merge_right._entry_ptr.33 = internal global ptr @test_merge_right._entry.32, section ".printk_index", align 4
@test_merge_both._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.34, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_merge_both\00", [16 x i8] zeroinitializer }, align 32
@test_merge_both._entry_ptr = internal global ptr @test_merge_both._entry, section ".printk_index", align 4
@test_merge_both._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.34, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_merge_both._entry_ptr.36 = internal global ptr @test_merge_both._entry.35, section ".printk_index", align 4
@test_merge_both._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.34, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_merge_both._entry_ptr.38 = internal global ptr @test_merge_both._entry.37, section ".printk_index", align 4
@test_merge_both._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.34, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_merge_both._entry_ptr.40 = internal global ptr @test_merge_both._entry.39, section ".printk_index", align 4
@test_merge_none._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.41, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_merge_none\00", [16 x i8] zeroinitializer }, align 32
@test_merge_none._entry_ptr = internal global ptr @test_merge_none._entry, section ".printk_index", align 4
@test_merge_none._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.41, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_merge_none._entry_ptr.43 = internal global ptr @test_merge_none._entry.42, section ".printk_index", align 4
@test_merge_none._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.41, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_merge_none._entry_ptr.45 = internal global ptr @test_merge_none._entry.44, section ".printk_index", align 4
@test_merge_none._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.41, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_merge_none._entry_ptr.47 = internal global ptr @test_merge_none._entry.46, section ".printk_index", align 4
@run_test_both_formats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013BTRFS: selftest: %s:%d %ps failed with extents, sectorsize=%u, nodesize=%u, alignment=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"run_test_both_formats\00", [42 x i8] zeroinitializer }, align 32
@run_test_both_formats._entry_ptr = internal global ptr @run_test_both_formats._entry, section ".printk_index", align 4
@run_test_both_formats._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013BTRFS: selftest: %s:%d %ps failed with bitmaps, sectorsize=%u, nodesize=%u, alignment=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@run_test_both_formats._entry_ptr.52 = internal global ptr @run_test_both_formats._entry.50, section ".printk_index", align 4
@run_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013BTRFS: selftest: %s:%d %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"run_test\00", [23 x i8] zeroinitializer }, align 32
@run_test._entry_ptr = internal global ptr @run_test._entry, section ".printk_index", align 4
@test_error = external dso_local local_unnamed_addr global [0 x ptr], align 4
@run_test._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@run_test._entry_ptr.56 = internal global ptr @run_test._entry.55, section ".printk_index", align 4
@run_test._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@run_test._entry_ptr.58 = internal global ptr @run_test._entry.57, section ".printk_index", align 4
@run_test._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@run_test._entry_ptr.60 = internal global ptr @run_test._entry.59, section ".printk_index", align 4
@run_test._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@run_test._entry_ptr.62 = internal global ptr @run_test._entry.61, section ".printk_index", align 4
@run_test._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.54, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013BTRFS: selftest: %s:%d could not add block group free space\0A\00", [33 x i8] zeroinitializer }, align 32
@run_test._entry_ptr.65 = internal global ptr @run_test._entry.63, section ".printk_index", align 4
@run_test._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.54, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013BTRFS: selftest: %s:%d could not convert block group to bitmaps\0A\00", [61 x i8] zeroinitializer }, align 32
@run_test._entry_ptr.68 = internal global ptr @run_test._entry.66, section ".printk_index", align 4
@run_test._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.54, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013BTRFS: selftest: %s:%d could not remove block group free space\0A\00", [62 x i8] zeroinitializer }, align 32
@run_test._entry_ptr.71 = internal global ptr @run_test._entry.69, section ".printk_index", align 4
@run_test._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.54, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013BTRFS: selftest: %s:%d free space tree has leftover items\0A\00", [35 x i8] zeroinitializer }, align 32
@run_test._entry_ptr.74 = internal global ptr @run_test._entry.72, section ".printk_index", align 4
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 572, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 119, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 135, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 141, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 36, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 44, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 101, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 176, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 198, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 222, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 246, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 268, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 275, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 283, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 305, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 313, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 321, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 343, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 350, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 357, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 364, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 388, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 395, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 402, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 409, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 532, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 540, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 435, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 442, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 457, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 467, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 480, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 487, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 494, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 505, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private constant [42 x i8] c"../fs/btrfs/tests/free-space-tree-tests.c\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 510, i32 3 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__check_free_space_extents._entry, ptr @__check_free_space_extents._entry.12, ptr @__check_free_space_extents._entry.15, ptr @__check_free_space_extents._entry_ptr, ptr @__check_free_space_extents._entry_ptr.14, ptr @__check_free_space_extents._entry_ptr.17, ptr @btrfs_test_free_space_tree._entry, ptr @btrfs_test_free_space_tree._entry_ptr, ptr @check_free_space_extents._entry, ptr @check_free_space_extents._entry.5, ptr @check_free_space_extents._entry.8, ptr @check_free_space_extents._entry_ptr, ptr @check_free_space_extents._entry_ptr.10, ptr @check_free_space_extents._entry_ptr.7, ptr @run_test._entry, ptr @run_test._entry.55, ptr @run_test._entry.57, ptr @run_test._entry.59, ptr @run_test._entry.61, ptr @run_test._entry.63, ptr @run_test._entry.66, ptr @run_test._entry.69, ptr @run_test._entry.72, ptr @run_test._entry_ptr, ptr @run_test._entry_ptr.56, ptr @run_test._entry_ptr.58, ptr @run_test._entry_ptr.60, ptr @run_test._entry_ptr.62, ptr @run_test._entry_ptr.65, ptr @run_test._entry_ptr.68, ptr @run_test._entry_ptr.71, ptr @run_test._entry_ptr.74, ptr @run_test_both_formats._entry, ptr @run_test_both_formats._entry.50, ptr @run_test_both_formats._entry_ptr, ptr @run_test_both_formats._entry_ptr.52, ptr @test_merge_both._entry, ptr @test_merge_both._entry.35, ptr @test_merge_both._entry.37, ptr @test_merge_both._entry.39, ptr @test_merge_both._entry_ptr, ptr @test_merge_both._entry_ptr.36, ptr @test_merge_both._entry_ptr.38, ptr @test_merge_both._entry_ptr.40, ptr @test_merge_left._entry, ptr @test_merge_left._entry.24, ptr @test_merge_left._entry.27, ptr @test_merge_left._entry_ptr, ptr @test_merge_left._entry_ptr.26, ptr @test_merge_left._entry_ptr.28, ptr @test_merge_none._entry, ptr @test_merge_none._entry.42, ptr @test_merge_none._entry.44, ptr @test_merge_none._entry.46, ptr @test_merge_none._entry_ptr, ptr @test_merge_none._entry_ptr.43, ptr @test_merge_none._entry_ptr.45, ptr @test_merge_none._entry_ptr.47, ptr @test_merge_right._entry, ptr @test_merge_right._entry.30, ptr @test_merge_right._entry.32, ptr @test_merge_right._entry_ptr, ptr @test_merge_right._entry_ptr.31, ptr @test_merge_right._entry_ptr.33, ptr @test_remove_all._entry, ptr @test_remove_all._entry_ptr, ptr @test_remove_beginning._entry, ptr @test_remove_beginning._entry_ptr, ptr @test_remove_end._entry, ptr @test_remove_end._entry_ptr, ptr @test_remove_middle._entry, ptr @test_remove_middle._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.29, ptr @.str.34, ptr @.str.41, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_free_space_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_free_space_extents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_free_space_extents._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_free_space_extents._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_remove_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_remove_beginning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_remove_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_remove_middle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_left._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_left._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_left._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_right._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_right._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_right._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_both._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_both._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_both._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_both._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_none._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_none._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_none._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_merge_none._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_both_formats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_both_formats._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_test_free_space_tree(i32 noundef %sectorsize, i32 noundef %nodesize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %for.body

for.body:                                         ; preds = %run_test_both_formats.exit26.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %run_test_both_formats.exit26.for.body_crit_edge ]
  %test_ret.027 = phi i32 [ 0, %entry ], [ %test_ret.2, %run_test_both_formats.exit26.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x ptr], ptr @__const.btrfs_test_free_space_tree.tests, i32 0, i32 %i.028
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call fastcc i32 @run_test(ptr noundef %1, i32 noundef 0, i32 noundef %sectorsize, i32 noundef %nodesize, i32 noundef %sectorsize) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %do.end.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.2, i32 noundef 534, ptr noundef %1, i32 noundef %sectorsize, i32 noundef %nodesize, i32 noundef %sectorsize) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.if.end.i_crit_edge
  %call2.i = tail call fastcc i32 @run_test(ptr noundef %1, i32 noundef 1, i32 noundef %sectorsize, i32 noundef %nodesize, i32 noundef %sectorsize) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.run_test_both_formats.exit_crit_edge, label %do.end7.i

if.end.i.run_test_both_formats.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %run_test_both_formats.exit

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 542, ptr noundef %1, i32 noundef %sectorsize, i32 noundef %nodesize, i32 noundef %sectorsize) #8
  br label %run_test_both_formats.exit

run_test_both_formats.exit:                       ; preds = %do.end7.i, %if.end.i.run_test_both_formats.exit_crit_edge
  %test_ret.1.i = phi i32 [ %call2.i, %do.end7.i ], [ %call.i, %if.end.i.run_test_both_formats.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %test_ret.1.i)
  %tobool.not = icmp eq i32 %test_ret.1.i, 0
  %spec.select = select i1 %tobool.not, i32 %test_ret.027, i32 %test_ret.1.i
  %call.i16 = tail call fastcc i32 @run_test(ptr noundef %1, i32 noundef 0, i32 noundef %sectorsize, i32 noundef %nodesize, i32 noundef 8388608) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %run_test_both_formats.exit.if.end.i22_crit_edge, label %do.end.i19

run_test_both_formats.exit.if.end.i22_crit_edge:  ; preds = %run_test_both_formats.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i22

do.end.i19:                                       ; preds = %run_test_both_formats.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.2, i32 noundef 534, ptr noundef %1, i32 noundef %sectorsize, i32 noundef %nodesize, i32 noundef 8388608) #8
  br label %if.end.i22

if.end.i22:                                       ; preds = %do.end.i19, %run_test_both_formats.exit.if.end.i22_crit_edge
  %call2.i20 = tail call fastcc i32 @run_test(ptr noundef %1, i32 noundef 1, i32 noundef %sectorsize, i32 noundef %nodesize, i32 noundef 8388608) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i20)
  %tobool3.not.i21 = icmp eq i32 %call2.i20, 0
  br i1 %tobool3.not.i21, label %if.end.i22.run_test_both_formats.exit26_crit_edge, label %do.end7.i24

if.end.i22.run_test_both_formats.exit26_crit_edge: ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %run_test_both_formats.exit26

do.end7.i24:                                      ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 542, ptr noundef %1, i32 noundef %sectorsize, i32 noundef %nodesize, i32 noundef 8388608) #8
  br label %run_test_both_formats.exit26

run_test_both_formats.exit26:                     ; preds = %do.end7.i24, %if.end.i22.run_test_both_formats.exit26_crit_edge
  %test_ret.1.i25 = phi i32 [ %call2.i20, %do.end7.i24 ], [ %call.i16, %if.end.i22.run_test_both_formats.exit26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %test_ret.1.i25)
  %tobool4.not = icmp eq i32 %test_ret.1.i25, 0
  %test_ret.2 = select i1 %tobool4.not, i32 %spec.select, i32 %test_ret.1.i25
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %run_test_both_formats.exit26.for.body_crit_edge

run_test_both_formats.exit26.for.body_crit_edge:  ; preds = %run_test_both_formats.exit26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %run_test_both_formats.exit26
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 %test_ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_empty_block_group(ptr noundef %trans, ptr nocapture noundef readonly %fs_info, ptr noundef %cache, ptr noundef %path, i32 noundef %alignment) #0 align 64 {
entry:
  %extents = alloca [1 x %struct.free_space_extent], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %extents) #5
  %0 = getelementptr inbounds %struct.free_space_extent, ptr %extents, i32 0, i32 1
  %start1 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %1 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start1, align 8
  %3 = ptrtoint ptr %extents to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %extents, align 8
  %length2 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %4 = ptrtoint ptr %length2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length2, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %0, align 8
  %call = call fastcc i32 @check_free_space_extents(ptr noundef %trans, ptr noundef %fs_info, ptr noundef %cache, ptr noundef %path, ptr noundef nonnull %extents, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %extents) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_remove_all(ptr noundef %trans, ptr nocapture noundef readonly %fs_info, ptr noundef %cache, ptr noundef %path, i32 noundef %alignment) #0 align 64 {
entry:
  %extents = alloca [0 x %struct.free_space_extent], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %extents) #5
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %length, align 8
  %call = tail call i32 @__remove_from_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %1, i64 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 176) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = call fastcc i32 @check_free_space_extents(ptr noundef %trans, ptr noundef %fs_info, ptr noundef %cache, ptr noundef %path, ptr noundef nonnull %extents, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %extents) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_remove_beginning(ptr noundef %trans, ptr nocapture noundef readonly %fs_info, ptr noundef %cache, ptr noundef %path, i32 noundef %alignment) #0 align 64 {
entry:
  %extents = alloca [1 x %struct.free_space_extent], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %extents) #5
  %0 = getelementptr inbounds %struct.free_space_extent, ptr %extents, i32 0, i32 1
  %start1 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %1 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start1, align 8
  %conv = zext i32 %alignment to i64
  %add = add i64 %2, %conv
  %3 = ptrtoint ptr %extents to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add, ptr %extents, align 8
  %length2 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %4 = ptrtoint ptr %length2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length2, align 8
  %sub = sub i64 %5, %conv
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sub, ptr %0, align 8
  %call = tail call i32 @__remove_from_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %2, i64 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 198) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = call fastcc i32 @check_free_space_extents(ptr noundef %trans, ptr noundef %fs_info, ptr noundef %cache, ptr noundef %path, ptr noundef nonnull %extents, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call7, %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %extents) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_remove_end(ptr noundef %trans, ptr nocapture noundef readonly %fs_info, ptr noundef %cache, ptr noundef %path, i32 noundef %alignment) #0 align 64 {
entry:
  %extents = alloca [1 x %struct.free_space_extent], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %extents) #5
  %0 = getelementptr inbounds %struct.free_space_extent, ptr %extents, i32 0, i32 1
  %start1 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %1 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start1, align 8
  %3 = ptrtoint ptr %extents to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %extents, align 8
  %length2 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %4 = ptrtoint ptr %length2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length2, align 8
  %conv = zext i32 %alignment to i64
  %sub = sub i64 %5, %conv
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sub, ptr %0, align 8
  %add = sub i64 %2, %conv
  %sub6 = add i64 %add, %5
  %call = tail call i32 @__remove_from_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %sub6, i64 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 222) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = call fastcc i32 @check_free_space_extents(ptr noundef %trans, ptr noundef %fs_info, ptr noundef %cache, ptr noundef %path, ptr noundef nonnull %extents, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call9, %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %extents) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_remove_middle(ptr noundef %trans, ptr nocapture noundef readonly %fs_info, ptr noundef %cache, ptr noundef %path, i32 noundef %alignment) #0 align 64 {
entry:
  %extents = alloca [2 x %struct.free_space_extent], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %extents) #5
  %0 = getelementptr inbounds %struct.free_space_extent, ptr %extents, i32 0, i32 1
  %1 = getelementptr inbounds [2 x %struct.free_space_extent], ptr %extents, i32 0, i32 1
  %2 = getelementptr inbounds [2 x %struct.free_space_extent], ptr %extents, i32 0, i32 1, i32 1
  %start1 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %3 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start1, align 8
  %5 = ptrtoint ptr %extents to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %extents, align 8
  %conv = zext i32 %alignment to i64
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %0, align 8
  %mul = shl i32 %alignment, 1
  %conv4 = zext i32 %mul to i64
  %add = add i64 %4, %conv4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add, ptr %1, align 8
  %length6 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %8 = ptrtoint ptr %length6 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %length6, align 8
  %sub = sub i64 %9, %conv4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %sub, ptr %2, align 8
  %add11 = add i64 %4, %conv
  %call = tail call i32 @__remove_from_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %add11, i64 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 246) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = call fastcc i32 @check_free_space_extents(ptr noundef %trans, ptr noundef %fs_info, ptr noundef %cache, ptr noundef %path, ptr noundef nonnull %extents, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call14, %if.end ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %extents) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_merge_left(ptr noundef %trans, ptr nocapture noundef readonly %fs_info, ptr noundef %cache, ptr noundef %path, i32 noundef %alignment) #0 align 64 {
entry:
  %extents = alloca [1 x %struct.free_space_extent], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %extents) #5
  %0 = getelementptr inbounds %struct.free_space_extent, ptr %extents, i32 0, i32 1
  %start1 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %1 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start1, align 8
  %3 = ptrtoint ptr %extents to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %extents, align 8
  %mul = shl i32 %alignment, 1
  %conv = zext i32 %mul to i64
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %0, align 8
  %length3 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %5 = ptrtoint ptr %length3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %length3, align 8
  %call = tail call i32 @__remove_from_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %2, i64 noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 268) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start1, align 8
  %conv6 = zext i32 %alignment to i64
  %call7 = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %8, i64 noundef %conv6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 275) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %9 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start1, align 8
  %add = add i64 %10, %conv6
  %call19 = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %add, i64 noundef %conv6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 283) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = call fastcc i32 @check_free_space_extents(ptr noundef %trans, ptr noundef %fs_info, ptr noundef %cache, ptr noundef %path, ptr noundef nonnull %extents, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end24, %do.end12, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call7, %do.end12 ], [ %call19, %do.end24 ], [ %call28, %if.end27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %extents) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_merge_right(ptr noundef %trans, ptr nocapture noundef readonly %fs_info, ptr noundef %cache, ptr noundef %path, i32 noundef %alignment) #0 align 64 {
entry:
  %extents = alloca [1 x %struct.free_space_extent], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %extents) #5
  %0 = getelementptr inbounds %struct.free_space_extent, ptr %extents, i32 0, i32 1
  %start1 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %1 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start1, align 8
  %conv = zext i32 %alignment to i64
  %add = add i64 %2, %conv
  %3 = ptrtoint ptr %extents to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add, ptr %extents, align 8
  %mul = shl i32 %alignment, 1
  %conv2 = zext i32 %mul to i64
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv2, ptr %0, align 8
  %length4 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %5 = ptrtoint ptr %length4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %length4, align 8
  %call = tail call i32 @__remove_from_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %2, i64 noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 305) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start1, align 8
  %add9 = add i64 %8, %conv2
  %call11 = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %add9, i64 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 313) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %9 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start1, align 8
  %add22 = add i64 %10, %conv
  %call24 = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %add22, i64 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 321) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = call fastcc i32 @check_free_space_extents(ptr noundef %trans, ptr noundef %fs_info, ptr noundef %cache, ptr noundef %path, ptr noundef nonnull %extents, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end29, %do.end16, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call11, %do.end16 ], [ %call24, %do.end29 ], [ %call33, %if.end32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %extents) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_merge_both(ptr noundef %trans, ptr nocapture noundef readonly %fs_info, ptr noundef %cache, ptr noundef %path, i32 noundef %alignment) #0 align 64 {
entry:
  %extents = alloca [1 x %struct.free_space_extent], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %extents) #5
  %0 = getelementptr inbounds %struct.free_space_extent, ptr %extents, i32 0, i32 1
  %start1 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %1 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start1, align 8
  %3 = ptrtoint ptr %extents to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %extents, align 8
  %mul = mul i32 %alignment, 3
  %conv = zext i32 %mul to i64
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %0, align 8
  %length3 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %5 = ptrtoint ptr %length3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %length3, align 8
  %call = tail call i32 @__remove_from_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %2, i64 noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 343) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start1, align 8
  %conv6 = zext i32 %alignment to i64
  %call7 = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %8, i64 noundef %conv6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 350) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %9 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start1, align 8
  %mul17 = shl i32 %alignment, 1
  %conv18 = zext i32 %mul17 to i64
  %add = add i64 %10, %conv18
  %call20 = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %add, i64 noundef %conv6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 357) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start1, align 8
  %add31 = add i64 %12, %conv6
  %call33 = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %add31, i64 noundef %conv6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 364) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = call fastcc i32 @check_free_space_extents(ptr noundef %trans, ptr noundef %fs_info, ptr noundef %cache, ptr noundef %path, ptr noundef nonnull %extents, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end38, %do.end25, %do.end12, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call7, %do.end12 ], [ %call20, %do.end25 ], [ %call33, %do.end38 ], [ %call42, %if.end41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %extents) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_merge_none(ptr noundef %trans, ptr nocapture noundef readonly %fs_info, ptr noundef %cache, ptr noundef %path, i32 noundef %alignment) #0 align 64 {
entry:
  %extents = alloca [3 x %struct.free_space_extent], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %extents) #5
  %0 = getelementptr inbounds %struct.free_space_extent, ptr %extents, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.free_space_extent], ptr %extents, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.free_space_extent], ptr %extents, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.free_space_extent], ptr %extents, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.free_space_extent], ptr %extents, i32 0, i32 2, i32 1
  %start1 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %5 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start1, align 8
  %7 = ptrtoint ptr %extents to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %extents, align 8
  %conv = zext i32 %alignment to i64
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %0, align 8
  %mul = shl i32 %alignment, 1
  %conv4 = zext i32 %mul to i64
  %add = add i64 %6, %conv4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add, ptr %1, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %2, align 8
  %mul10 = shl i32 %alignment, 2
  %conv11 = zext i32 %mul10 to i64
  %add12 = add i64 %6, %conv11
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add12, ptr %3, align 8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %4, align 8
  %length16 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %13 = ptrtoint ptr %length16 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %length16, align 8
  %call = tail call i32 @__remove_from_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %6, i64 noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 388) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %start1, align 8
  %call20 = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %16, i64 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 395) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %17 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start1, align 8
  %add32 = add i64 %18, %conv11
  %call34 = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %add32, i64 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 402) #8
  br label %cleanup

if.end42:                                         ; preds = %if.end28
  %19 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start1, align 8
  %add46 = add i64 %20, %conv4
  %call48 = tail call i32 @__add_to_free_space_tree(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i64 noundef %add46, i64 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end56, label %do.end53

do.end53:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 409) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = call fastcc i32 @check_free_space_extents(ptr noundef %trans, ptr noundef %fs_info, ptr noundef %cache, ptr noundef %path, ptr noundef nonnull %extents, i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end53, %do.end39, %do.end25, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call20, %do.end25 ], [ %call34, %do.end39 ], [ %call48, %do.end53 ], [ %call57, %if.end56 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %extents) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_free_space_extents(ptr noundef %trans, ptr nocapture noundef readonly %fs_info, ptr noundef %cache, ptr noundef %path, ptr nocapture noundef readonly %extents, i32 noundef %num_extents) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @search_free_space_info(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 119) #8
  tail call void @btrfs_release_path(ptr noundef %path) #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %path, align 4
  %call.i = tail call i32 @btrfs_get_32(ptr noundef %2, ptr noundef %call, i32 noundef 4) #5
  tail call void @btrfs_release_path(ptr noundef %path) #5
  %call5 = tail call fastcc i32 @__check_free_space_extents(ptr noundef %trans, ptr noundef %fs_info, ptr noundef %cache, ptr noundef %path, ptr noundef %extents, i32 noundef %num_extents)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = tail call i32 @convert_free_space_to_extents(ptr noundef %trans, ptr noundef %cache, ptr noundef %path) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end28_crit_edge, label %do.end15

if.then9.if.end28_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 135) #8
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %call19 = tail call i32 @convert_free_space_to_bitmaps(ptr noundef %trans, ptr noundef %cache, ptr noundef %path) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else.if.end28_crit_edge, label %do.end24

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end24:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 141) #8
  br label %cleanup

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.then9.if.end28_crit_edge
  %call29 = tail call fastcc i32 @__check_free_space_extents(ptr noundef %trans, ptr noundef %fs_info, ptr noundef %cache, ptr noundef %path, ptr noundef %extents, i32 noundef %num_extents)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end24, %do.end15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %call10, %do.end15 ], [ %call29, %if.end28 ], [ %call19, %do.end24 ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_free_space_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__check_free_space_extents(ptr noundef %trans, ptr nocapture noundef readonly %fs_info, ptr noundef %cache, ptr noundef %path, ptr nocapture noundef readonly %extents, i32 noundef %num_extents) unnamed_addr #0 align 64 {
entry:
  %disk_key.i209 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @search_free_space_info(ptr noundef %trans, ptr noundef %cache, ptr noundef %path, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 36) #8
  %0 = ptrtoint ptr %call to i32
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %path, align 4
  %call.i = tail call i32 @btrfs_get_32(ptr noundef %2, ptr noundef %call, i32 noundef 4) #5
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %path, align 4
  %call.i201 = tail call i32 @btrfs_get_32(ptr noundef %4, ptr noundef %call, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i201, i32 %num_extents)
  %cmp.not = icmp eq i32 %call.i201, %num_extents
  br i1 %cmp.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 44) #8
  br label %out

if.end14:                                         ; preds = %if.end
  %5 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else99, label %if.then15

if.then15:                                        ; preds = %if.end14
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %6 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17.not = icmp eq i32 %7, 0
  br i1 %cmp17.not, label %if.end20, label %if.then15.do.end144_crit_edge

if.then15.do.end144_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

if.end20:                                         ; preds = %if.then15
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %length, align 8
  %add = add i64 %11, %9
  %12 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slots, align 4
  %inc236 = add i32 %13, 1
  store i32 %inc236, ptr %slots, align 4
  %14 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path, align 4
  %pages.i237 = getelementptr inbounds %struct.extent_buffer, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %pages.i237 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages.i237, align 4
  %call.i202238 = call ptr @page_address(ptr noundef %17) #5
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %15, align 8
  %conv.i239 = trunc i64 %19 to i32
  %and.i240 = and i32 %conv.i239, 4095
  %add.ptr.i241 = getelementptr i8, ptr %call.i202238, i32 %and.i240
  %nritems.i242 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i241, i32 0, i32 7
  %20 = ptrtoint ptr %nritems.i242 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %nritems.i242, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %inc236, i32 %22)
  %cmp26243 = icmp ult i32 %inc236, %22
  br i1 %cmp26243, label %while.body.lr.ph, label %if.end20.if.end94_crit_edge

if.end20.if.end94_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

while.body.lr.ph:                                 ; preds = %if.end20
  %23 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end71.while.cond.loopexit_crit_edge, %while.cond37.preheader.while.cond.loopexit_crit_edge
  %extent_start.1.lcssa = phi i64 [ %extent_start.0244, %while.cond37.preheader.while.cond.loopexit_crit_edge ], [ %extent_start.2, %if.end71.while.cond.loopexit_crit_edge ]
  %i.1.lcssa = phi i32 [ %i.0245, %while.cond37.preheader.while.cond.loopexit_crit_edge ], [ %i.2, %if.end71.while.cond.loopexit_crit_edge ]
  %prev_bit.1.lcssa = phi i32 [ %prev_bit.0246, %while.cond37.preheader.while.cond.loopexit_crit_edge ], [ %call44, %if.end71.while.cond.loopexit_crit_edge ]
  %25 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slots, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %slots, align 4
  %27 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %path, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages.i, align 4
  %call.i202 = call ptr @page_address(ptr noundef %30) #5
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %28, align 8
  %conv.i = trunc i64 %32 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i202, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %33 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %nritems.i, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34) #5
  %cmp26 = icmp ult i32 %inc, %35
  br i1 %cmp26, label %while.cond.loopexit.while.body_crit_edge, label %while.end74

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %prev_bit.0246 = phi i32 [ 0, %while.body.lr.ph ], [ %prev_bit.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %i.0245 = phi i32 [ 0, %while.body.lr.ph ], [ %i.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %extent_start.0244 = phi i64 [ 0, %while.body.lr.ph ], [ %extent_start.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %36 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %path, align 4
  %38 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #5
  %mul.i.i.i.i = mul i32 %39, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %40 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %37, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #5
  %41 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %24, align 1
  %43 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %23, align 8
  %45 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %disk_key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %44)
  %cmp33.not = icmp eq i8 %44, -56
  br i1 %cmp33.not, label %while.cond37.preheader, label %while.body.do.end144_crit_edge

while.body.do.end144_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

while.cond37.preheader:                           ; preds = %while.body
  %47 = call i64 @llvm.bswap.i64(i64 %46) #5
  %48 = call i64 @llvm.bswap.i64(i64 %42) #5
  %add40 = add i64 %47, %48
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %add40)
  %cmp41229 = icmp ult i64 %47, %add40
  br i1 %cmp41229, label %while.cond37.preheader.while.body43_crit_edge, label %while.cond37.preheader.while.cond.loopexit_crit_edge

while.cond37.preheader.while.cond.loopexit_crit_edge: ; preds = %while.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

while.cond37.preheader.while.body43_crit_edge:    ; preds = %while.cond37.preheader
  br label %while.body43

while.body43:                                     ; preds = %if.end71.while.body43_crit_edge, %while.cond37.preheader.while.body43_crit_edge
  %prev_bit.1233 = phi i32 [ %call44, %if.end71.while.body43_crit_edge ], [ %prev_bit.0246, %while.cond37.preheader.while.body43_crit_edge ]
  %i.1232 = phi i32 [ %i.2, %if.end71.while.body43_crit_edge ], [ %i.0245, %while.cond37.preheader.while.body43_crit_edge ]
  %offset.0231 = phi i64 [ %add73, %if.end71.while.body43_crit_edge ], [ %47, %while.cond37.preheader.while.body43_crit_edge ]
  %extent_start.1230 = phi i64 [ %extent_start.2, %if.end71.while.body43_crit_edge ], [ %extent_start.0244, %while.cond37.preheader.while.body43_crit_edge ]
  %call44 = call i32 @free_space_test_bit(ptr noundef %cache, ptr noundef %path, i64 noundef %offset.0231) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_bit.1233)
  %cmp45 = icmp eq i32 %prev_bit.1233, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call44)
  %cmp47 = icmp eq i32 %call44, 1
  %or.cond = select i1 %cmp45, i1 %cmp47, i1 false
  br i1 %or.cond, label %while.body43.if.end71_crit_edge, label %if.else

while.body43.if.end71_crit_edge:                  ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.else:                                          ; preds = %while.body43
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prev_bit.1233)
  %cmp50 = icmp eq i32 %prev_bit.1233, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp53 = icmp eq i32 %call44, 0
  %or.cond200 = select i1 %cmp50, i1 %cmp53, i1 false
  br i1 %or.cond200, label %if.then55, label %if.else.if.end71_crit_edge

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1232, i32 %num_extents)
  %cmp56.not = icmp ult i32 %i.1232, %num_extents
  br i1 %cmp56.not, label %lor.lhs.false, label %if.then55.do.end144_crit_edge

if.then55.do.end144_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

lor.lhs.false:                                    ; preds = %if.then55
  %arrayidx58 = getelementptr %struct.free_space_extent, ptr %extents, i32 %i.1232
  %49 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx58, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %extent_start.1230, i64 %50)
  %cmp60.not = icmp eq i64 %extent_start.1230, %50
  br i1 %cmp60.not, label %lor.lhs.false62, label %lor.lhs.false.do.end144_crit_edge

lor.lhs.false.do.end144_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

lor.lhs.false62:                                  ; preds = %lor.lhs.false
  %sub = sub i64 %offset.0231, %extent_start.1230
  %length64 = getelementptr %struct.free_space_extent, ptr %extents, i32 %i.1232, i32 1
  %51 = ptrtoint ptr %length64 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %length64, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %52)
  %cmp65.not = icmp eq i64 %sub, %52
  br i1 %cmp65.not, label %if.end68, label %lor.lhs.false62.do.end144_crit_edge

lor.lhs.false62.do.end144_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

if.end68:                                         ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #7
  %inc69 = add nuw i32 %i.1232, 1
  br label %if.end71

if.end71:                                         ; preds = %if.end68, %if.else.if.end71_crit_edge, %while.body43.if.end71_crit_edge
  %extent_start.2 = phi i64 [ %extent_start.1230, %if.end68 ], [ %extent_start.1230, %if.else.if.end71_crit_edge ], [ %offset.0231, %while.body43.if.end71_crit_edge ]
  %i.2 = phi i32 [ %inc69, %if.end68 ], [ %i.1232, %if.else.if.end71_crit_edge ], [ %i.1232, %while.body43.if.end71_crit_edge ]
  %53 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sectorsize, align 4
  %conv72 = zext i32 %54 to i64
  %add73 = add i64 %offset.0231, %conv72
  %cmp41 = icmp ult i64 %add73, %add40
  br i1 %cmp41, label %if.end71.while.body43_crit_edge, label %if.end71.while.cond.loopexit_crit_edge

if.end71.while.cond.loopexit_crit_edge:           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

if.end71.while.body43_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body43

while.end74:                                      ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prev_bit.1.lcssa)
  %cmp75 = icmp eq i32 %prev_bit.1.lcssa, 1
  br i1 %cmp75, label %if.then77, label %while.end74.if.end94_crit_edge

while.end74.if.end94_crit_edge:                   ; preds = %while.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then77:                                        ; preds = %while.end74
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %num_extents)
  %cmp78.not = icmp ult i32 %i.1.lcssa, %num_extents
  br i1 %cmp78.not, label %lor.lhs.false80, label %if.then77.do.end144_crit_edge

if.then77.do.end144_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

lor.lhs.false80:                                  ; preds = %if.then77
  %arrayidx81 = getelementptr %struct.free_space_extent, ptr %extents, i32 %i.1.lcssa
  %55 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx81, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %extent_start.1.lcssa, i64 %56)
  %cmp83.not = icmp eq i64 %extent_start.1.lcssa, %56
  br i1 %cmp83.not, label %lor.lhs.false85, label %lor.lhs.false80.do.end144_crit_edge

lor.lhs.false80.do.end144_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

lor.lhs.false85:                                  ; preds = %lor.lhs.false80
  %sub86 = sub i64 %add, %extent_start.1.lcssa
  %length88 = getelementptr %struct.free_space_extent, ptr %extents, i32 %i.1.lcssa, i32 1
  %57 = ptrtoint ptr %length88 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %length88, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub86, i64 %58)
  %cmp89.not = icmp eq i64 %sub86, %58
  br i1 %cmp89.not, label %if.end92, label %lor.lhs.false85.do.end144_crit_edge

lor.lhs.false85.do.end144_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

if.end92:                                         ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #7
  %inc93 = add nuw i32 %i.1.lcssa, 1
  br label %if.end94

if.end94:                                         ; preds = %if.end92, %while.end74.if.end94_crit_edge, %if.end20.if.end94_crit_edge
  %i.3 = phi i32 [ %inc93, %if.end92 ], [ %i.1.lcssa, %while.end74.if.end94_crit_edge ], [ 0, %if.end20.if.end94_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3, i32 %num_extents)
  %cmp95.not = icmp eq i32 %i.3, %num_extents
  br i1 %cmp95.not, label %if.end94.out_crit_edge, label %if.end94.do.end144_crit_edge

if.end94.do.end144_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

if.end94.out_crit_edge:                           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.else99:                                        ; preds = %if.end14
  %59 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %path, align 4
  %pages.i203 = getelementptr inbounds %struct.extent_buffer, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %pages.i203 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pages.i203, align 4
  %call.i204 = tail call ptr @page_address(ptr noundef %62) #5
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %60, align 8
  %conv.i205 = trunc i64 %64 to i32
  %and.i206 = and i32 %conv.i205, 4095
  %add.ptr.i207 = getelementptr i8, ptr %call.i204, i32 %and.i206
  %nritems.i208 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i207, i32 0, i32 7
  %65 = ptrtoint ptr %nritems.i208 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %nritems.i208, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #5
  %add103 = add i32 %num_extents, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %add103)
  %cmp104.not = icmp eq i32 %67, %add103
  br i1 %cmp104.not, label %lor.lhs.false106, label %if.else99.do.end144_crit_edge

if.else99.do.end144_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

lor.lhs.false106:                                 ; preds = %if.else99
  %slots107 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %68 = ptrtoint ptr %slots107 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %slots107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp109.not = icmp eq i32 %69, 0
  br i1 %cmp109.not, label %for.cond.preheader, label %lor.lhs.false106.do.end144_crit_edge

lor.lhs.false106.do.end144_crit_edge:             ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

for.cond.preheader:                               ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_extents)
  %cmp113250.not = icmp eq i32 %num_extents, 0
  br i1 %cmp113250.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %70 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i209, i32 0, i32 1
  %71 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i209, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false132
  %inc140 = add nuw i32 %i.4251, 1
  %exitcond.not = icmp eq i32 %inc140, %num_extents
  br i1 %exitcond.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.4251 = phi i32 [ 0, %for.body.lr.ph ], [ %inc140, %for.cond.for.body_crit_edge ]
  %72 = ptrtoint ptr %slots107 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %slots107, align 4
  %inc117 = add i32 %73, 1
  store i32 %inc117, ptr %slots107, align 4
  %74 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i209) #5
  %mul.i.i.i.i210 = mul i32 %inc117, 25
  %add.i.i.i.i211 = add i32 %mul.i.i.i.i210, 101
  %76 = call ptr @memset(ptr %disk_key.i209, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %75, ptr noundef nonnull %disk_key.i209, i32 noundef %add.i.i.i.i211, i32 noundef 17) #5
  %77 = ptrtoint ptr %71 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %78 = load i64, ptr %71, align 1
  %79 = call i64 @llvm.bswap.i64(i64 %78) #5
  %80 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %70, align 8
  %82 = ptrtoint ptr %disk_key.i209 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %disk_key.i209, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i209) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -57, i8 %81)
  %cmp124.not = icmp eq i8 %81, -57
  br i1 %cmp124.not, label %lor.lhs.false126, label %for.body.do.end144_crit_edge

for.body.do.end144_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

lor.lhs.false126:                                 ; preds = %for.body
  %84 = call i64 @llvm.bswap.i64(i64 %83) #5
  %arrayidx128 = getelementptr %struct.free_space_extent, ptr %extents, i32 %i.4251
  %85 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx128, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %86)
  %cmp130.not = icmp eq i64 %84, %86
  br i1 %cmp130.not, label %lor.lhs.false132, label %lor.lhs.false126.do.end144_crit_edge

lor.lhs.false126.do.end144_crit_edge:             ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

lor.lhs.false132:                                 ; preds = %lor.lhs.false126
  %length135 = getelementptr %struct.free_space_extent, ptr %extents, i32 %i.4251, i32 1
  %87 = ptrtoint ptr %length135 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %length135, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %79, i64 %88)
  %cmp136.not = icmp eq i64 %79, %88
  br i1 %cmp136.not, label %for.cond, label %lor.lhs.false132.do.end144_crit_edge

lor.lhs.false132.do.end144_crit_edge:             ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

out:                                              ; preds = %do.end144, %for.cond.out_crit_edge, %for.cond.preheader.out_crit_edge, %if.end94.out_crit_edge, %do.end11, %do.end
  %ret.0 = phi i32 [ %0, %do.end ], [ -22, %do.end11 ], [ -22, %do.end144 ], [ 0, %if.end94.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ], [ 0, %for.cond.out_crit_edge ]
  call void @btrfs_release_path(ptr noundef %path) #5
  ret i32 %ret.0

do.end144:                                        ; preds = %lor.lhs.false132.do.end144_crit_edge, %lor.lhs.false126.do.end144_crit_edge, %for.body.do.end144_crit_edge, %lor.lhs.false106.do.end144_crit_edge, %if.else99.do.end144_crit_edge, %if.end94.do.end144_crit_edge, %lor.lhs.false85.do.end144_crit_edge, %lor.lhs.false80.do.end144_crit_edge, %if.then77.do.end144_crit_edge, %lor.lhs.false62.do.end144_crit_edge, %lor.lhs.false.do.end144_crit_edge, %if.then55.do.end144_crit_edge, %while.body.do.end144_crit_edge, %if.then15.do.end144_crit_edge
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 101) #8
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @convert_free_space_to_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @convert_free_space_to_bitmaps(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_space_test_bit(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__remove_from_free_space_tree(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__add_to_free_space_tree(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_test(ptr nocapture noundef readonly %test_func, i32 noundef %bitmaps, i32 noundef %sectorsize, i32 noundef %nodesize, i32 noundef %alignment) unnamed_addr #0 align 64 {
entry:
  %trans = alloca %struct.btrfs_trans_handle, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %trans) #5
  %0 = call ptr @memset(ptr %trans, i32 255, i32 72)
  %call = tail call ptr @btrfs_alloc_dummy_fs_info(i32 noundef %nodesize, i32 noundef %sectorsize) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @test_error to i32))
  %1 = load ptr, ptr @test_error, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, i32 noundef 435, ptr noundef %1) #8
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @btrfs_alloc_dummy_root(ptr noundef nonnull %call) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, i32 noundef 442, ptr noundef %2) #8
  %3 = ptrtoint ptr %call2 to i32
  br label %out

if.end11:                                         ; preds = %if.end
  %fs_info12 = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 8
  %4 = ptrtoint ptr %fs_info12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info12, align 8
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %super_copy, align 8
  %compat_ro_flags.i = getelementptr inbounds %struct.btrfs_super_block, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %compat_ro_flags.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 72057594037927936, ptr %compat_ro_flags.i, align 1
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 7
  %9 = ptrtoint ptr %root_key to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 10, ptr %root_key, align 1
  %type = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -124, ptr %type, align 1
  %offset = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %offset, align 1
  %call15 = tail call i32 @btrfs_global_root_insert(ptr noundef %call2) #5
  %12 = ptrtoint ptr %fs_info12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs_info12, align 8
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %tree_root to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %tree_root, align 4
  %15 = load ptr, ptr %fs_info12, align 8
  %conv = zext i32 %nodesize to i64
  %call18 = tail call ptr @alloc_test_extent_buffer(ptr noundef %15, i64 noundef %conv) #5
  %node = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 1
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call18, ptr %node, align 4
  %cmp.i142 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %do.end24, label %if.end29

do.end24:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 2), align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, i32 noundef 457, ptr noundef %17) #8
  %18 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %out

if.end29:                                         ; preds = %if.end11
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %call18, i32 0, i32 12
  %21 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %22) #5
  %23 = ptrtoint ptr %call18 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %call18, align 8
  %conv.i = trunc i64 %24 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %25 = ptrtoint ptr %level.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %level.i, align 1
  %26 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %node, align 4
  %pages.i143 = getelementptr inbounds %struct.extent_buffer, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %pages.i143 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pages.i143, align 4
  %call.i144 = tail call ptr @page_address(ptr noundef %29) #5
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %27, align 8
  %conv.i145 = trunc i64 %31 to i32
  %and.i146 = and i32 %conv.i145, 4095
  %add.ptr.i147 = getelementptr i8, ptr %call.i144, i32 %and.i146
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i147, i32 0, i32 7
  %32 = ptrtoint ptr %nritems.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 0, ptr %nritems.i, align 1
  %mul = shl i32 %nodesize, 1
  %conv32 = zext i32 %mul to i64
  %alloc_bytenr = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 61
  %33 = ptrtoint ptr %alloc_bytenr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %alloc_bytenr, align 8
  %add = add i64 %34, %conv32
  store i64 %add, ptr %alloc_bytenr, align 8
  %mul33 = shl i32 %alignment, 3
  %call34 = tail call ptr @btrfs_alloc_dummy_block_group(ptr noundef nonnull %call, i32 noundef %mul33) #5
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 5) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 5), align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, i32 noundef 467, ptr noundef %35) #8
  br label %out

if.end42:                                         ; preds = %if.end29
  %bitmap_low_thresh = getelementptr inbounds %struct.btrfs_block_group, ptr %call34, i32 0, i32 13
  %36 = ptrtoint ptr %bitmap_low_thresh to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %bitmap_low_thresh, align 4
  %bitmap_high_thresh = getelementptr inbounds %struct.btrfs_block_group, ptr %call34, i32 0, i32 12
  %37 = ptrtoint ptr %bitmap_high_thresh to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %bitmap_high_thresh, align 8
  %needs_free_space = getelementptr inbounds %struct.btrfs_block_group, ptr %call34, i32 0, i32 42
  %38 = ptrtoint ptr %needs_free_space to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %needs_free_space, align 4
  %39 = ptrtoint ptr %fs_info12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fs_info12, align 8
  %41 = ptrtoint ptr %call34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %call34, align 8
  %42 = load ptr, ptr %fs_info12, align 8
  call void @btrfs_init_dummy_trans(ptr noundef nonnull %trans, ptr noundef %42) #5
  %call46 = call ptr @btrfs_alloc_path() #5
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %do.end51, label %if.end54

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, i32 noundef 480, ptr noundef %43) #8
  br label %out

if.end54:                                         ; preds = %if.end42
  %call55 = call i32 @add_block_group_free_space(ptr noundef nonnull %trans, ptr noundef nonnull %call34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end63, label %do.end60

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.2, i32 noundef 487) #8
  br label %out

if.end63:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitmaps)
  %tobool64.not = icmp eq i32 %bitmaps, 0
  br i1 %tobool64.not, label %if.end63.if.end75_crit_edge, label %if.then65

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then65:                                        ; preds = %if.end63
  %call66 = call i32 @convert_free_space_to_bitmaps(ptr noundef nonnull %trans, ptr noundef nonnull %call34, ptr noundef nonnull %call46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.if.end75_crit_edge, label %do.end71

if.then65.if.end75_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

do.end71:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.2, i32 noundef 494) #8
  br label %out

if.end75:                                         ; preds = %if.then65.if.end75_crit_edge, %if.end63.if.end75_crit_edge
  %44 = ptrtoint ptr %fs_info12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fs_info12, align 8
  %call77 = call i32 %test_func(ptr noundef nonnull %trans, ptr noundef %45, ptr noundef nonnull %call34, ptr noundef nonnull %call46, i32 noundef %alignment) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.out_crit_edge

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end80:                                         ; preds = %if.end75
  %call81 = call i32 @remove_block_group_free_space(ptr noundef nonnull %trans, ptr noundef nonnull %call34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end89, label %do.end86

do.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2, i32 noundef 505) #8
  br label %out

if.end89:                                         ; preds = %if.end80
  %46 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %node, align 4
  %pages.i148 = getelementptr inbounds %struct.extent_buffer, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %pages.i148 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pages.i148, align 4
  %call.i149 = call ptr @page_address(ptr noundef %49) #5
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %47, align 8
  %conv.i150 = trunc i64 %51 to i32
  %and.i151 = and i32 %conv.i150, 4095
  %add.ptr.i152 = getelementptr i8, ptr %call.i149, i32 %and.i151
  %nritems.i153 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i152, i32 0, i32 7
  %52 = ptrtoint ptr %nritems.i153 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %nritems.i153, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.not = icmp eq i32 %53, 0
  br i1 %cmp.not, label %if.end89.out_crit_edge, label %do.end96

if.end89.out_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.2, i32 noundef 510) #8
  br label %out

out:                                              ; preds = %do.end96, %if.end89.out_crit_edge, %do.end86, %if.end75.out_crit_edge, %do.end71, %do.end60, %do.end51, %do.end39, %do.end24, %do.end7, %do.end
  %ret.0 = phi i32 [ %3, %do.end7 ], [ %20, %do.end24 ], [ %call55, %do.end60 ], [ %call66, %do.end71 ], [ %call77, %if.end75.out_crit_edge ], [ %call81, %do.end86 ], [ -22, %do.end96 ], [ -12, %do.end51 ], [ -12, %do.end39 ], [ -12, %do.end ], [ 0, %if.end89.out_crit_edge ]
  %path.0 = phi ptr [ null, %do.end7 ], [ null, %do.end24 ], [ %call46, %do.end60 ], [ %call46, %do.end71 ], [ %call46, %if.end75.out_crit_edge ], [ %call46, %do.end86 ], [ %call46, %do.end96 ], [ null, %do.end51 ], [ null, %do.end39 ], [ null, %do.end ], [ %call46, %if.end89.out_crit_edge ]
  %cache.0 = phi ptr [ null, %do.end7 ], [ null, %do.end24 ], [ %call34, %do.end60 ], [ %call34, %do.end71 ], [ %call34, %if.end75.out_crit_edge ], [ %call34, %do.end86 ], [ %call34, %do.end96 ], [ %call34, %do.end51 ], [ null, %do.end39 ], [ null, %do.end ], [ %call34, %if.end89.out_crit_edge ]
  %root.0 = phi ptr [ %call2, %do.end7 ], [ %call2, %do.end24 ], [ %call2, %do.end60 ], [ %call2, %do.end71 ], [ %call2, %if.end75.out_crit_edge ], [ %call2, %do.end86 ], [ %call2, %do.end96 ], [ %call2, %do.end51 ], [ %call2, %do.end39 ], [ null, %do.end ], [ %call2, %if.end89.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef %path.0) #5
  call void @btrfs_free_dummy_block_group(ptr noundef %cache.0) #5
  call void @btrfs_free_dummy_root(ptr noundef %root.0) #5
  call void @btrfs_free_dummy_fs_info(ptr noundef %call) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trans) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_fs_info(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_global_root_insert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_test_extent_buffer(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_block_group(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_init_dummy_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_block_group_free_space(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_block_group_free_space(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_block_group(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_fs_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 572, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @btrfs_test_free_space_tree._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @btrfs_test_free_space_tree._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 119, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @check_free_space_extents._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @check_free_space_extents._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 135, i32 4}
!13 = !{ptr @check_free_space_extents._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @check_free_space_extents._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 141, i32 4}
!17 = !{ptr @check_free_space_extents._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @check_free_space_extents._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 36, i32 3}
!21 = !{ptr @__check_free_space_extents._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @__check_free_space_extents._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 44, i32 3}
!25 = !{ptr @__check_free_space_extents._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @__check_free_space_extents._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 101, i32 2}
!29 = !{ptr @__check_free_space_extents._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @__check_free_space_extents._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 176, i32 3}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @test_remove_all._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @test_remove_all._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 198, i32 3}
!38 = !{ptr @test_remove_beginning._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @test_remove_beginning._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 222, i32 3}
!42 = !{ptr @test_remove_end._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @test_remove_end._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 246, i32 3}
!46 = !{ptr @test_remove_middle._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @test_remove_middle._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 268, i32 3}
!50 = !{ptr @test_merge_left._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @test_merge_left._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 275, i32 3}
!54 = !{ptr @test_merge_left._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @test_merge_left._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @test_merge_left._entry.27, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 283, i32 3}
!58 = !{ptr @test_merge_left._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 305, i32 3}
!61 = !{ptr @test_merge_right._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @test_merge_right._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @test_merge_right._entry.30, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 313, i32 3}
!65 = !{ptr @test_merge_right._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @test_merge_right._entry.32, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 321, i32 3}
!68 = !{ptr @test_merge_right._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 343, i32 3}
!71 = !{ptr @test_merge_both._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @test_merge_both._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @test_merge_both._entry.35, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 350, i32 3}
!75 = !{ptr @test_merge_both._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @test_merge_both._entry.37, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 357, i32 3}
!78 = !{ptr @test_merge_both._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @test_merge_both._entry.39, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 364, i32 3}
!81 = !{ptr @test_merge_both._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 388, i32 3}
!84 = !{ptr @test_merge_none._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @test_merge_none._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @test_merge_none._entry.42, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 395, i32 3}
!88 = !{ptr @test_merge_none._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @test_merge_none._entry.44, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 402, i32 3}
!91 = !{ptr @test_merge_none._entry_ptr.45, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @test_merge_none._entry.46, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 409, i32 3}
!94 = !{ptr @test_merge_none._entry_ptr.47, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 532, i32 3}
!97 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @run_test_both_formats._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @run_test_both_formats._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 540, i32 3}
!102 = !{ptr @run_test_both_formats._entry.50, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @run_test_both_formats._entry_ptr.52, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 435, i32 3}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @run_test._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @run_test._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @run_test._entry.55, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 442, i32 3}
!111 = !{ptr @run_test._entry_ptr.56, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @run_test._entry.57, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 457, i32 3}
!114 = !{ptr @run_test._entry_ptr.58, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @run_test._entry.59, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 467, i32 3}
!117 = !{ptr @run_test._entry_ptr.60, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @run_test._entry.61, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 480, i32 3}
!120 = !{ptr @run_test._entry_ptr.62, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 487, i32 3}
!123 = !{ptr @run_test._entry.63, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @run_test._entry_ptr.65, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 494, i32 4}
!127 = !{ptr @run_test._entry.66, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @run_test._entry_ptr.68, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 505, i32 3}
!131 = !{ptr @run_test._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @run_test._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/btrfs/tests/free-space-tree-tests.c", i32 510, i32 3}
!135 = !{ptr @run_test._entry.72, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @run_test._entry_ptr.74, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
