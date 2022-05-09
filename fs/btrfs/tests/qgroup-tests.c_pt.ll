; ModuleID = '/llk/IR_all_yes/fs/btrfs/tests/qgroup-tests.c_pt.bc'
source_filename = "../fs/btrfs/tests/qgroup-tests.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.80, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { i64 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_extent_item = type { i64, i64, i64 }
%struct.btrfs_tree_block_info = type { %struct.btrfs_disk_key, i8 }

@btrfs_test_qgroups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013BTRFS: selftest: %s:%d %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btrfs_test_qgroups\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/btrfs/tests/qgroup-tests.c\00", [34 x i8] zeroinitializer }, align 32
@btrfs_test_qgroups._entry_ptr = internal global ptr @btrfs_test_qgroups._entry, section ".printk_index", align 4
@test_error = external dso_local local_unnamed_addr global [0 x ptr], align 4
@btrfs_test_qgroups._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfs_test_qgroups._entry_ptr.4 = internal global ptr @btrfs_test_qgroups._entry.3, section ".printk_index", align 4
@btrfs_test_qgroups._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013BTRFS: selftest: %s:%d couldn't allocate dummy buffer\0A\00", [39 x i8] zeroinitializer }, align 32
@btrfs_test_qgroups._entry_ptr.7 = internal global ptr @btrfs_test_qgroups._entry.5, section ".printk_index", align 4
@btrfs_test_qgroups._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfs_test_qgroups._entry_ptr.9 = internal global ptr @btrfs_test_qgroups._entry.8, section ".printk_index", align 4
@btrfs_test_qgroups._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013BTRFS: selftest: %s:%d couldn't insert fs root %d\0A\00", [43 x i8] zeroinitializer }, align 32
@btrfs_test_qgroups._entry_ptr.12 = internal global ptr @btrfs_test_qgroups._entry.10, section ".printk_index", align 4
@btrfs_test_qgroups._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfs_test_qgroups._entry_ptr.14 = internal global ptr @btrfs_test_qgroups._entry.13, section ".printk_index", align 4
@btrfs_test_qgroups._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfs_test_qgroups._entry_ptr.16 = internal global ptr @btrfs_test_qgroups._entry.15, section ".printk_index", align 4
@btrfs_test_qgroups._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016BTRFS: selftest: running qgroup tests\0A\00", [55 x i8] zeroinitializer }, align 32
@btrfs_test_qgroups._entry_ptr.19 = internal global ptr @btrfs_test_qgroups._entry.17, section ".printk_index", align 4
@test_no_shared_qgroup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016BTRFS: selftest: running qgroup add/remove tests\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_no_shared_qgroup\00", [42 x i8] zeroinitializer }, align 32
@test_no_shared_qgroup._entry_ptr = internal global ptr @test_no_shared_qgroup._entry, section ".printk_index", align 4
@test_no_shared_qgroup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BTRFS: selftest: %s:%d couldn't create a qgroup %d\0A\00", [42 x i8] zeroinitializer }, align 32
@test_no_shared_qgroup._entry_ptr.24 = internal global ptr @test_no_shared_qgroup._entry.22, section ".printk_index", align 4
@test_no_shared_qgroup._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BTRFS: selftest: %s:%d couldn't find old roots: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@test_no_shared_qgroup._entry_ptr.27 = internal global ptr @test_no_shared_qgroup._entry.25, section ".printk_index", align 4
@test_no_shared_qgroup._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_no_shared_qgroup._entry_ptr.29 = internal global ptr @test_no_shared_qgroup._entry.28, section ".printk_index", align 4
@test_no_shared_qgroup._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013BTRFS: selftest: %s:%d couldn't account space for a qgroup %d\0A\00", [63 x i8] zeroinitializer }, align 32
@test_no_shared_qgroup._entry_ptr.32 = internal global ptr @test_no_shared_qgroup._entry.30, section ".printk_index", align 4
@test_no_shared_qgroup._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.21, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013BTRFS: selftest: %s:%d qgroup counts didn't match expected values\0A\00", [59 x i8] zeroinitializer }, align 32
@test_no_shared_qgroup._entry_ptr.35 = internal global ptr @test_no_shared_qgroup._entry.33, section ".printk_index", align 4
@test_no_shared_qgroup._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_no_shared_qgroup._entry_ptr.37 = internal global ptr @test_no_shared_qgroup._entry.36, section ".printk_index", align 4
@test_no_shared_qgroup._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_no_shared_qgroup._entry_ptr.39 = internal global ptr @test_no_shared_qgroup._entry.38, section ".printk_index", align 4
@test_no_shared_qgroup._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_no_shared_qgroup._entry_ptr.41 = internal global ptr @test_no_shared_qgroup._entry.40, section ".printk_index", align 4
@test_no_shared_qgroup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.21, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_no_shared_qgroup._entry_ptr.43 = internal global ptr @test_no_shared_qgroup._entry.42, section ".printk_index", align 4
@insert_normal_tree_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.44, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"insert_normal_tree_ref\00", [41 x i8] zeroinitializer }, align 32
@insert_normal_tree_ref._entry_ptr = internal global ptr @insert_normal_tree_ref._entry, section ".printk_index", align 4
@insert_normal_tree_ref._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013BTRFS: selftest: %s:%d couldn't insert ref %d\0A\00", [47 x i8] zeroinitializer }, align 32
@insert_normal_tree_ref._entry_ptr.47 = internal global ptr @insert_normal_tree_ref._entry.45, section ".printk_index", align 4
@remove_extent_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"remove_extent_item\00", [45 x i8] zeroinitializer }, align 32
@remove_extent_item._entry_ptr = internal global ptr @remove_extent_item._entry, section ".printk_index", align 4
@remove_extent_item._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013BTRFS: selftest: %s:%d didn't find our key %d\0A\00", [47 x i8] zeroinitializer }, align 32
@remove_extent_item._entry_ptr.51 = internal global ptr @remove_extent_item._entry.49, section ".printk_index", align 4
@test_multiple_refs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016BTRFS: selftest: running qgroup multiple refs test\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_multiple_refs\00", [45 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr = internal global ptr @test_multiple_refs._entry, section ".printk_index", align 4
@test_multiple_refs._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.53, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.55 = internal global ptr @test_multiple_refs._entry.54, section ".printk_index", align 4
@test_multiple_refs._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.53, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.57 = internal global ptr @test_multiple_refs._entry.56, section ".printk_index", align 4
@test_multiple_refs._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.53, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.59 = internal global ptr @test_multiple_refs._entry.58, section ".printk_index", align 4
@test_multiple_refs._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.53, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.61 = internal global ptr @test_multiple_refs._entry.60, section ".printk_index", align 4
@test_multiple_refs._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.53, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.63 = internal global ptr @test_multiple_refs._entry.62, section ".printk_index", align 4
@test_multiple_refs._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.53, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.65 = internal global ptr @test_multiple_refs._entry.64, section ".printk_index", align 4
@test_multiple_refs._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.53, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.67 = internal global ptr @test_multiple_refs._entry.66, section ".printk_index", align 4
@test_multiple_refs._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.53, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.69 = internal global ptr @test_multiple_refs._entry.68, section ".printk_index", align 4
@test_multiple_refs._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.53, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.71 = internal global ptr @test_multiple_refs._entry.70, section ".printk_index", align 4
@test_multiple_refs._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.53, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.73 = internal global ptr @test_multiple_refs._entry.72, section ".printk_index", align 4
@test_multiple_refs._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.53, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.75 = internal global ptr @test_multiple_refs._entry.74, section ".printk_index", align 4
@test_multiple_refs._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.53, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.77 = internal global ptr @test_multiple_refs._entry.76, section ".printk_index", align 4
@test_multiple_refs._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.53, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.79 = internal global ptr @test_multiple_refs._entry.78, section ".printk_index", align 4
@test_multiple_refs._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.53, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.81 = internal global ptr @test_multiple_refs._entry.80, section ".printk_index", align 4
@test_multiple_refs._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.53, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_multiple_refs._entry_ptr.83 = internal global ptr @test_multiple_refs._entry.82, section ".printk_index", align 4
@add_tree_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.84, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"add_tree_ref\00", [19 x i8] zeroinitializer }, align 32
@add_tree_ref._entry_ptr = internal global ptr @add_tree_ref._entry, section ".printk_index", align 4
@add_tree_ref._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013BTRFS: selftest: %s:%d couldn't find extent ref\0A\00", [45 x i8] zeroinitializer }, align 32
@add_tree_ref._entry_ptr.87 = internal global ptr @add_tree_ref._entry.85, section ".printk_index", align 4
@add_tree_ref._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013BTRFS: selftest: %s:%d failed to insert backref\0A\00", [45 x i8] zeroinitializer }, align 32
@add_tree_ref._entry_ptr.90 = internal global ptr @add_tree_ref._entry.88, section ".printk_index", align 4
@remove_extent_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.91, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"remove_extent_ref\00", [46 x i8] zeroinitializer }, align 32
@remove_extent_ref._entry_ptr = internal global ptr @remove_extent_ref._entry, section ".printk_index", align 4
@remove_extent_ref._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.91, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@remove_extent_ref._entry_ptr.93 = internal global ptr @remove_extent_ref._entry.92, section ".printk_index", align 4
@remove_extent_ref._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.91, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013BTRFS: selftest: %s:%d couldn't find backref %d\0A\00", [45 x i8] zeroinitializer }, align 32
@remove_extent_ref._entry_ptr.96 = internal global ptr @remove_extent_ref._entry.94, section ".printk_index", align 4
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 446, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 452, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 477, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 487, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 496, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 503, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 511, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 516, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 214, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 217, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 229, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 242, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 249, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 255, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 264, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 276, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 283, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 288, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 35, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 41, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 133, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 139, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 311, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 319, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 326, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 339, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 346, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 352, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 359, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 372, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 379, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 385, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 391, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 398, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 411, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 418, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 424, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 430, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 84, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 90, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 112, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 166, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 172, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.296 = private constant [33 x i8] c"../fs/btrfs/tests/qgroup-tests.c\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 194, i32 3 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @add_tree_ref._entry, ptr @add_tree_ref._entry.85, ptr @add_tree_ref._entry.88, ptr @add_tree_ref._entry_ptr, ptr @add_tree_ref._entry_ptr.87, ptr @add_tree_ref._entry_ptr.90, ptr @btrfs_test_qgroups._entry, ptr @btrfs_test_qgroups._entry.10, ptr @btrfs_test_qgroups._entry.13, ptr @btrfs_test_qgroups._entry.15, ptr @btrfs_test_qgroups._entry.17, ptr @btrfs_test_qgroups._entry.3, ptr @btrfs_test_qgroups._entry.5, ptr @btrfs_test_qgroups._entry.8, ptr @btrfs_test_qgroups._entry_ptr, ptr @btrfs_test_qgroups._entry_ptr.12, ptr @btrfs_test_qgroups._entry_ptr.14, ptr @btrfs_test_qgroups._entry_ptr.16, ptr @btrfs_test_qgroups._entry_ptr.19, ptr @btrfs_test_qgroups._entry_ptr.4, ptr @btrfs_test_qgroups._entry_ptr.7, ptr @btrfs_test_qgroups._entry_ptr.9, ptr @insert_normal_tree_ref._entry, ptr @insert_normal_tree_ref._entry.45, ptr @insert_normal_tree_ref._entry_ptr, ptr @insert_normal_tree_ref._entry_ptr.47, ptr @remove_extent_item._entry, ptr @remove_extent_item._entry.49, ptr @remove_extent_item._entry_ptr, ptr @remove_extent_item._entry_ptr.51, ptr @remove_extent_ref._entry, ptr @remove_extent_ref._entry.92, ptr @remove_extent_ref._entry.94, ptr @remove_extent_ref._entry_ptr, ptr @remove_extent_ref._entry_ptr.93, ptr @remove_extent_ref._entry_ptr.96, ptr @test_multiple_refs._entry, ptr @test_multiple_refs._entry.54, ptr @test_multiple_refs._entry.56, ptr @test_multiple_refs._entry.58, ptr @test_multiple_refs._entry.60, ptr @test_multiple_refs._entry.62, ptr @test_multiple_refs._entry.64, ptr @test_multiple_refs._entry.66, ptr @test_multiple_refs._entry.68, ptr @test_multiple_refs._entry.70, ptr @test_multiple_refs._entry.72, ptr @test_multiple_refs._entry.74, ptr @test_multiple_refs._entry.76, ptr @test_multiple_refs._entry.78, ptr @test_multiple_refs._entry.80, ptr @test_multiple_refs._entry.82, ptr @test_multiple_refs._entry_ptr, ptr @test_multiple_refs._entry_ptr.55, ptr @test_multiple_refs._entry_ptr.57, ptr @test_multiple_refs._entry_ptr.59, ptr @test_multiple_refs._entry_ptr.61, ptr @test_multiple_refs._entry_ptr.63, ptr @test_multiple_refs._entry_ptr.65, ptr @test_multiple_refs._entry_ptr.67, ptr @test_multiple_refs._entry_ptr.69, ptr @test_multiple_refs._entry_ptr.71, ptr @test_multiple_refs._entry_ptr.73, ptr @test_multiple_refs._entry_ptr.75, ptr @test_multiple_refs._entry_ptr.77, ptr @test_multiple_refs._entry_ptr.79, ptr @test_multiple_refs._entry_ptr.81, ptr @test_multiple_refs._entry_ptr.83, ptr @test_no_shared_qgroup._entry, ptr @test_no_shared_qgroup._entry.22, ptr @test_no_shared_qgroup._entry.25, ptr @test_no_shared_qgroup._entry.28, ptr @test_no_shared_qgroup._entry.30, ptr @test_no_shared_qgroup._entry.33, ptr @test_no_shared_qgroup._entry.36, ptr @test_no_shared_qgroup._entry.38, ptr @test_no_shared_qgroup._entry.40, ptr @test_no_shared_qgroup._entry.42, ptr @test_no_shared_qgroup._entry_ptr, ptr @test_no_shared_qgroup._entry_ptr.24, ptr @test_no_shared_qgroup._entry_ptr.27, ptr @test_no_shared_qgroup._entry_ptr.29, ptr @test_no_shared_qgroup._entry_ptr.32, ptr @test_no_shared_qgroup._entry_ptr.35, ptr @test_no_shared_qgroup._entry_ptr.37, ptr @test_no_shared_qgroup._entry_ptr.39, ptr @test_no_shared_qgroup._entry_ptr.41, ptr @test_no_shared_qgroup._entry_ptr.43, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, ptr @.str.11, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.31, ptr @.str.34, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.95], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_qgroups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_qgroups._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_qgroups._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_qgroups._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_qgroups._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_qgroups._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_qgroups._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_qgroups._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_no_shared_qgroup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_no_shared_qgroup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_no_shared_qgroup._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_no_shared_qgroup._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_no_shared_qgroup._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_no_shared_qgroup._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_no_shared_qgroup._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_no_shared_qgroup._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_no_shared_qgroup._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_no_shared_qgroup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @insert_normal_tree_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @insert_normal_tree_ref._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_extent_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_extent_item._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multiple_refs._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_tree_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_tree_ref._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_tree_ref._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_extent_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_extent_ref._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_extent_ref._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_test_qgroups(i32 noundef %sectorsize, i32 noundef %nodesize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @btrfs_alloc_dummy_fs_info(i32 noundef %nodesize, i32 noundef %sectorsize) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @test_error to i32))
  %0 = load ptr, ptr @test_error, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 446, ptr noundef %0) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @btrfs_alloc_dummy_root(ptr noundef nonnull %call) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 452, ptr noundef %1) #7
  %2 = ptrtoint ptr %call2 to i32
  br label %out

if.end11:                                         ; preds = %if.end
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 7
  %3 = ptrtoint ptr %root_key to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 2, ptr %root_key, align 1
  %type = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -124, ptr %type, align 1
  %offset = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %offset, align 1
  %call14 = tail call i32 @btrfs_global_root_insert(ptr noundef %call2) #4
  %fs_info15 = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 8
  %6 = ptrtoint ptr %fs_info15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info15, align 8
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %tree_root to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %tree_root, align 4
  %9 = load ptr, ptr %fs_info15, align 8
  %quota_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %quota_root to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %quota_root, align 4
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %call, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #4
  %11 = ptrtoint ptr %fs_info15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_info15, align 8
  %conv = zext i32 %nodesize to i64
  %call18 = tail call ptr @alloc_test_extent_buffer(ptr noundef %12, i64 noundef %conv) #4
  %node = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 1
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %node, align 4
  %cmp.i139 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %do.end24, label %if.end29

do.end24:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 477) #7
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %out

if.end29:                                         ; preds = %if.end11
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %call18, i32 0, i32 12
  %17 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %18) #4
  %19 = ptrtoint ptr %call18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %call18, align 8
  %conv.i = trunc i64 %20 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %21 = ptrtoint ptr %level.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %level.i, align 1
  %22 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node, align 4
  %pages.i140 = getelementptr inbounds %struct.extent_buffer, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %pages.i140 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages.i140, align 4
  %call.i141 = tail call ptr @page_address(ptr noundef %25) #4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %23, align 8
  %conv.i142 = trunc i64 %27 to i32
  %and.i143 = and i32 %conv.i142, 4095
  %add.ptr.i144 = getelementptr i8, ptr %call.i141, i32 %and.i143
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i144, i32 0, i32 7
  %28 = ptrtoint ptr %nritems.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %nritems.i, align 1
  %mul = shl i32 %nodesize, 1
  %conv32 = zext i32 %mul to i64
  %alloc_bytenr = getelementptr inbounds %struct.btrfs_root, ptr %call2, i32 0, i32 61
  %29 = ptrtoint ptr %alloc_bytenr to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %alloc_bytenr, align 8
  %add = add i64 %30, %conv32
  store i64 %add, ptr %alloc_bytenr, align 8
  %call33 = tail call ptr @btrfs_alloc_dummy_root(ptr noundef nonnull %call) #4
  %cmp.i145 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %do.end38, label %if.end42

do.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 487, ptr noundef %31) #7
  %32 = ptrtoint ptr %call33 to i32
  br label %out

if.end42:                                         ; preds = %if.end29
  %root_key43 = getelementptr inbounds %struct.btrfs_root, ptr %call33, i32 0, i32 7
  %33 = ptrtoint ptr %root_key43 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 5, ptr %root_key43, align 1
  %34 = ptrtoint ptr %fs_info15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fs_info15, align 8
  %fs_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %fs_root to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call33, ptr %fs_root, align 8
  %37 = load ptr, ptr %fs_info15, align 8
  %call47 = tail call i32 @btrfs_insert_fs_root(ptr noundef %37, ptr noundef %call33) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 496, i32 noundef %call47) #7
  br label %out

if.end55:                                         ; preds = %if.end42
  tail call void @btrfs_put_root(ptr noundef %call33) #4
  %call56 = tail call ptr @btrfs_alloc_dummy_root(ptr noundef nonnull %call) #4
  %cmp.i146 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %do.end61, label %if.end65

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 503, ptr noundef %38) #7
  %39 = ptrtoint ptr %call56 to i32
  br label %out

if.end65:                                         ; preds = %if.end55
  %root_key66 = getelementptr inbounds %struct.btrfs_root, ptr %call56, i32 0, i32 7
  %40 = ptrtoint ptr %root_key66 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 256, ptr %root_key66, align 1
  %41 = ptrtoint ptr %fs_info15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fs_info15, align 8
  %call69 = tail call i32 @btrfs_insert_fs_root(ptr noundef %42, ptr noundef %call56) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end77, label %do.end74

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 511, i32 noundef %call69) #7
  br label %out

if.end77:                                         ; preds = %if.end65
  tail call void @btrfs_put_root(ptr noundef %call56) #4
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #7
  %call83 = tail call fastcc i32 @test_no_shared_qgroup(ptr noundef %call2, i32 noundef %nodesize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end77.out_crit_edge

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %call87 = tail call fastcc i32 @test_multiple_refs(ptr noundef %call2, i32 noundef %nodesize)
  br label %out

out:                                              ; preds = %if.end86, %if.end77.out_crit_edge, %do.end74, %do.end61, %do.end52, %do.end38, %do.end24, %do.end7
  %ret.0 = phi i32 [ %2, %do.end7 ], [ %16, %do.end24 ], [ %32, %do.end38 ], [ %call47, %do.end52 ], [ %39, %do.end61 ], [ %call69, %do.end74 ], [ %call83, %if.end77.out_crit_edge ], [ %call87, %if.end86 ]
  tail call void @btrfs_free_dummy_root(ptr noundef %call2) #4
  tail call void @btrfs_free_dummy_fs_info(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_fs_info(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_global_root_insert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_test_extent_buffer(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_fs_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_no_shared_qgroup(ptr noundef %root, i32 noundef %nodesize) unnamed_addr #0 align 64 {
entry:
  %trans.i = alloca %struct.btrfs_trans_handle, align 8
  %key.i = alloca %struct.btrfs_key, align 8
  %trans = alloca %struct.btrfs_trans_handle, align 8
  %old_roots = alloca ptr, align 4
  %new_roots = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %trans) #4
  %0 = call ptr @memset(ptr %trans, i32 255, i32 72)
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %1 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_roots) #4
  %3 = ptrtoint ptr %old_roots to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %old_roots, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_roots) #4
  %4 = ptrtoint ptr %new_roots to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %new_roots, align 4
  call void @btrfs_init_dummy_trans(ptr noundef nonnull %trans, ptr noundef %2) #4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #7
  %call2 = call i32 @btrfs_create_qgroup(ptr noundef nonnull %trans, i64 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2, i32 noundef 217, i32 noundef %call2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %nodesize to i64
  %call8 = call i32 @btrfs_find_all_roots(ptr noundef nonnull %trans, ptr noundef %2, i64 noundef %conv, i64 noundef 0, ptr noundef nonnull %old_roots, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %old_roots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %old_roots, align 4
  call void @ulist_free(ptr noundef %6) #4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 229, i32 noundef %call8) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call19 = call fastcc i32 @insert_normal_tree_ref(ptr noundef %root, i64 noundef %conv, i64 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %call24 = call i32 @btrfs_find_all_roots(ptr noundef nonnull %trans, ptr noundef %2, i64 noundef %conv, i64 noundef 0, ptr noundef nonnull %new_roots, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %7 = ptrtoint ptr %old_roots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_roots, align 4
  br i1 %tobool25.not, label %if.end32, label %if.then26

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  call void @ulist_free(ptr noundef %8) #4
  %9 = ptrtoint ptr %new_roots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %new_roots, align 4
  call void @ulist_free(ptr noundef %10) #4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 242, i32 noundef %call24) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %11 = ptrtoint ptr %new_roots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new_roots, align 4
  %call35 = call i32 @btrfs_qgroup_account_extent(ptr noundef nonnull %trans, i64 noundef %conv, i64 noundef %conv, ptr noundef %8, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef %call35) #7
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %call46 = call i32 @btrfs_verify_qgroup_counts(ptr noundef %2, i64 noundef 5, i64 noundef %conv, i64 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end54, label %do.end51

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 255) #7
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  %13 = ptrtoint ptr %old_roots to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %old_roots, align 4
  %14 = ptrtoint ptr %new_roots to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %new_roots, align 4
  %call56 = call i32 @btrfs_find_all_roots(ptr noundef nonnull %trans, ptr noundef %2, i64 noundef %conv, i64 noundef 0, ptr noundef nonnull %old_roots, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end64, label %if.then58

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %old_roots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %old_roots, align 4
  call void @ulist_free(ptr noundef %16) #4
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 264, i32 noundef %call56) #7
  br label %cleanup

if.end64:                                         ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %trans.i) #4
  %17 = call ptr @memset(ptr %trans.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #4
  %18 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  call void @btrfs_init_dummy_trans(ptr noundef nonnull %trans.i, ptr noundef null) #4
  %20 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv, ptr %key.i, align 8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -88, ptr %18, align 8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %conv, ptr %19, align 1
  %call.i = call ptr @btrfs_alloc_path() #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 133, ptr noundef %23) #7
  br label %remove_extent_item.exit.thread

if.end.i:                                         ; preds = %if.end64
  %call2.i = call i32 @btrfs_search_slot(ptr noundef nonnull %trans.i, ptr noundef %root, ptr noundef nonnull %key.i, ptr noundef nonnull %call.i, i32 noundef -1, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end70, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.2, i32 noundef 139, i32 noundef %call2.i) #7
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #4
  br label %remove_extent_item.exit.thread

remove_extent_item.exit.thread:                   ; preds = %do.end7.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trans.i) #4
  br label %cleanup

if.end70:                                         ; preds = %if.end.i
  %slots.i.i = getelementptr inbounds %struct.btrfs_path, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots.i.i, align 4
  %call.i.i = call i32 @btrfs_del_items(ptr noundef nonnull %trans.i, ptr noundef %root, ptr noundef nonnull %call.i, i32 noundef %25, i32 noundef 1) #4
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #4
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trans.i) #4
  %call72 = call i32 @btrfs_find_all_roots(ptr noundef nonnull %trans, ptr noundef %2, i64 noundef %conv, i64 noundef 0, ptr noundef nonnull %new_roots, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  %26 = ptrtoint ptr %old_roots to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %old_roots, align 4
  br i1 %tobool73.not, label %if.end80, label %if.then74

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  call void @ulist_free(ptr noundef %27) #4
  %28 = ptrtoint ptr %new_roots to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %new_roots, align 4
  call void @ulist_free(ptr noundef %29) #4
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef %call72) #7
  br label %cleanup

if.end80:                                         ; preds = %if.end70
  %30 = ptrtoint ptr %new_roots to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %new_roots, align 4
  %call83 = call i32 @btrfs_qgroup_account_extent(ptr noundef nonnull %trans, i64 noundef %conv, i64 noundef %conv, ptr noundef %27, ptr noundef %31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end91, label %do.end88

do.end88:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 283, i32 noundef %call83) #7
  br label %cleanup

if.end91:                                         ; preds = %if.end80
  %call92 = call i32 @btrfs_verify_qgroup_counts(ptr noundef %2, i64 noundef 5, i64 noundef 0, i64 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end91.cleanup_crit_edge, label %do.end97

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 288) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.end91.cleanup_crit_edge, %do.end88, %if.then74, %remove_extent_item.exit.thread, %if.then58, %do.end51, %do.end40, %if.then26, %if.end16.cleanup_crit_edge, %if.then10, %do.end5
  %retval.0 = phi i32 [ %call2, %do.end5 ], [ %call8, %if.then10 ], [ %call24, %if.then26 ], [ %call35, %do.end40 ], [ -22, %do.end51 ], [ %call56, %if.then58 ], [ %call72, %if.then74 ], [ -22, %do.end88 ], [ -22, %do.end97 ], [ %call19, %if.end16.cleanup_crit_edge ], [ 0, %if.end91.cleanup_crit_edge ], [ -22, %remove_extent_item.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_roots) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_roots) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trans) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_multiple_refs(ptr noundef %root, i32 noundef %nodesize) unnamed_addr #0 align 64 {
entry:
  %trans.i1 = alloca %struct.btrfs_trans_handle, align 8
  %key.i2 = alloca %struct.btrfs_key, align 8
  %data_size.addr.i.i = alloca i32, align 4
  %batch.i.i = alloca %struct.btrfs_item_batch, align 4
  %trans.i = alloca %struct.btrfs_trans_handle, align 8
  %key.i = alloca %struct.btrfs_key, align 8
  %trans = alloca %struct.btrfs_trans_handle, align 8
  %old_roots = alloca ptr, align 4
  %new_roots = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %trans) #4
  %0 = call ptr @memset(ptr %trans, i32 255, i32 72)
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %1 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_roots) #4
  %3 = ptrtoint ptr %old_roots to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %old_roots, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_roots) #4
  %4 = ptrtoint ptr %new_roots to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %new_roots, align 4
  call void @btrfs_init_dummy_trans(ptr noundef nonnull %trans, ptr noundef %2) #4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #7
  %call2 = call i32 @btrfs_create_qgroup(ptr noundef nonnull %trans, i64 noundef 256) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2, i32 noundef 319, i32 noundef %call2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %nodesize to i64
  %call8 = call i32 @btrfs_find_all_roots(ptr noundef nonnull %trans, ptr noundef %2, i64 noundef %conv, i64 noundef 0, ptr noundef nonnull %old_roots, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %old_roots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %old_roots, align 4
  call void @ulist_free(ptr noundef %6) #4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 326, i32 noundef %call8) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call19 = call fastcc i32 @insert_normal_tree_ref(ptr noundef %root, i64 noundef %conv, i64 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %call24 = call i32 @btrfs_find_all_roots(ptr noundef nonnull %trans, ptr noundef %2, i64 noundef %conv, i64 noundef 0, ptr noundef nonnull %new_roots, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %7 = ptrtoint ptr %old_roots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_roots, align 4
  br i1 %tobool25.not, label %if.end32, label %if.then26

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  call void @ulist_free(ptr noundef %8) #4
  %9 = ptrtoint ptr %new_roots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %new_roots, align 4
  call void @ulist_free(ptr noundef %10) #4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 339, i32 noundef %call24) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %11 = ptrtoint ptr %new_roots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new_roots, align 4
  %call35 = call i32 @btrfs_qgroup_account_extent(ptr noundef nonnull %trans, i64 noundef %conv, i64 noundef %conv, ptr noundef %8, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef %call35) #7
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %call46 = call i32 @btrfs_verify_qgroup_counts(ptr noundef %2, i64 noundef 5, i64 noundef %conv, i64 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end54, label %do.end51

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 352) #7
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  %call56 = call i32 @btrfs_find_all_roots(ptr noundef nonnull %trans, ptr noundef %2, i64 noundef %conv, i64 noundef 0, ptr noundef nonnull %old_roots, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end64, label %if.then58

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %old_roots to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %old_roots, align 4
  call void @ulist_free(ptr noundef %14) #4
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 359, i32 noundef %call56) #7
  br label %cleanup

if.end64:                                         ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %trans.i) #4
  %15 = call ptr @memset(ptr %trans.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #4
  %16 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  call void @btrfs_init_dummy_trans(ptr noundef nonnull %trans.i, ptr noundef null) #4
  %18 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %key.i, align 8
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -88, ptr %16, align 8
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %conv, ptr %17, align 1
  %call.i = call ptr @btrfs_alloc_path() #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 84, ptr noundef %21) #7
  br label %add_tree_ref.exit.thread

if.end.i:                                         ; preds = %if.end64
  %call2.i = call i32 @btrfs_search_slot(ptr noundef nonnull %trans.i, ptr noundef %root, ptr noundef nonnull %key.i, ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end10.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.2, i32 noundef 90) #7
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #4
  br label %add_tree_ref.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots.i, align 4
  %mul.i.i.i.i = mul i32 %25, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %26 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %23, ptr noundef %26, i32 noundef 17) #4
  %add.i = add i32 %call.i.i.i, 101
  %27 = inttoptr i32 %add.i to ptr
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %call.i.i = call i64 @btrfs_get_64(ptr noundef %29, ptr noundef %27, i32 noundef 0) #4
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %add18.i = add i64 %call.i.i, 1
  call void @btrfs_set_64(ptr noundef %31, ptr noundef %27, i32 noundef 0, i64 noundef %add18.i) #4
  call void @btrfs_release_path(ptr noundef nonnull %call.i) #4
  %32 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %key.i, align 8
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -80, ptr %16, align 8
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 256, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i.i) #4
  %35 = ptrtoint ptr %data_size.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %data_size.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i.i) #4
  %36 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 1
  %37 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 2
  %38 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %batch.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %key.i, ptr %batch.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %data_size.addr.i.i, ptr %36, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %37, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %38, align 4
  %call.i1.i = call i32 @btrfs_insert_empty_items(ptr noundef nonnull %trans.i, ptr noundef %root, ptr noundef nonnull %call.i, ptr noundef nonnull %batch.i.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool28.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool28.not.i, label %if.end70, label %add_tree_ref.exit

add_tree_ref.exit.thread:                         ; preds = %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %do.end.i ], [ %call2.i, %do.end7.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trans.i) #4
  br label %cleanup

add_tree_ref.exit:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.2, i32 noundef 112) #7
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #4
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trans.i) #4
  br label %cleanup

if.end70:                                         ; preds = %if.end10.i
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #4
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trans.i) #4
  %call72 = call i32 @btrfs_find_all_roots(ptr noundef nonnull %trans, ptr noundef %2, i64 noundef %conv, i64 noundef 0, ptr noundef nonnull %new_roots, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  %43 = ptrtoint ptr %old_roots to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %old_roots, align 4
  br i1 %tobool73.not, label %if.end80, label %if.then74

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  call void @ulist_free(ptr noundef %44) #4
  %45 = ptrtoint ptr %new_roots to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %new_roots, align 4
  call void @ulist_free(ptr noundef %46) #4
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 372, i32 noundef %call72) #7
  br label %cleanup

if.end80:                                         ; preds = %if.end70
  %47 = ptrtoint ptr %new_roots to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %new_roots, align 4
  %call83 = call i32 @btrfs_qgroup_account_extent(ptr noundef nonnull %trans, i64 noundef %conv, i64 noundef %conv, ptr noundef %44, ptr noundef %48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end91, label %do.end88

do.end88:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 379, i32 noundef %call83) #7
  br label %cleanup

if.end91:                                         ; preds = %if.end80
  %call93 = call i32 @btrfs_verify_qgroup_counts(ptr noundef %2, i64 noundef 5, i64 noundef %conv, i64 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end101, label %do.end98

do.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 385) #7
  br label %cleanup

if.end101:                                        ; preds = %if.end91
  %call103 = call i32 @btrfs_verify_qgroup_counts(ptr noundef %2, i64 noundef 256, i64 noundef %conv, i64 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end111, label %do.end108

do.end108:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 391) #7
  br label %cleanup

if.end111:                                        ; preds = %if.end101
  %call113 = call i32 @btrfs_find_all_roots(ptr noundef nonnull %trans, ptr noundef %2, i64 noundef %conv, i64 noundef 0, ptr noundef nonnull %old_roots, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end121, label %if.then115

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %old_roots to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %old_roots, align 4
  call void @ulist_free(ptr noundef %50) #4
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 398, i32 noundef %call113) #7
  br label %cleanup

if.end121:                                        ; preds = %if.end111
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %trans.i1) #4
  %51 = call ptr @memset(ptr %trans.i1, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i2) #4
  %52 = getelementptr inbounds %struct.btrfs_key, ptr %key.i2, i32 0, i32 1
  %53 = getelementptr inbounds %struct.btrfs_key, ptr %key.i2, i32 0, i32 2
  call void @btrfs_init_dummy_trans(ptr noundef nonnull %trans.i1, ptr noundef null) #4
  %54 = ptrtoint ptr %key.i2 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv, ptr %key.i2, align 8
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -88, ptr %52, align 8
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %conv, ptr %53, align 1
  %call.i3 = call ptr @btrfs_alloc_path() #4
  %tobool.not.i4 = icmp eq ptr %call.i3, null
  br i1 %tobool.not.i4, label %do.end.i6, label %if.end.i9

do.end.i6:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call1.i5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 166, ptr noundef %57) #7
  br label %remove_extent_ref.exit.thread

if.end.i9:                                        ; preds = %if.end121
  %call2.i7 = call i32 @btrfs_search_slot(ptr noundef nonnull %trans.i1, ptr noundef %root, ptr noundef nonnull %key.i2, ptr noundef nonnull %call.i3, i32 noundef 0, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7)
  %tobool3.not.i8 = icmp eq i32 %call2.i7, 0
  br i1 %tobool3.not.i8, label %if.end10.i18, label %do.end7.i11

do.end7.i11:                                      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.2, i32 noundef 172) #7
  call void @btrfs_free_path(ptr noundef nonnull %call.i3) #4
  br label %remove_extent_ref.exit.thread

if.end10.i18:                                     ; preds = %if.end.i9
  %58 = ptrtoint ptr %call.i3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i3, align 4
  %slots.i12 = getelementptr inbounds %struct.btrfs_path, ptr %call.i3, i32 0, i32 1
  %60 = ptrtoint ptr %slots.i12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %slots.i12, align 4
  %mul.i.i.i.i13 = mul i32 %61, 25
  %add.i.i.i.i14 = add i32 %mul.i.i.i.i13, 101
  %62 = inttoptr i32 %add.i.i.i.i14 to ptr
  %call.i.i.i15 = call i32 @btrfs_get_32(ptr noundef %59, ptr noundef %62, i32 noundef 17) #4
  %add.i16 = add i32 %call.i.i.i15, 101
  %63 = inttoptr i32 %add.i16 to ptr
  %64 = ptrtoint ptr %call.i3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i3, align 4
  %call.i.i17 = call i64 @btrfs_get_64(ptr noundef %65, ptr noundef %63, i32 noundef 0) #4
  %66 = ptrtoint ptr %call.i3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i3, align 4
  %sub.i = add i64 %call.i.i17, -1
  call void @btrfs_set_64(ptr noundef %67, ptr noundef %63, i32 noundef 0, i64 noundef %sub.i) #4
  call void @btrfs_release_path(ptr noundef nonnull %call.i3) #4
  %68 = ptrtoint ptr %key.i2 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv, ptr %key.i2, align 8
  %69 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -80, ptr %52, align 8
  %70 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 256, ptr %53, align 1
  %call26.i = call i32 @btrfs_search_slot(ptr noundef nonnull %trans.i1, ptr noundef %root, ptr noundef nonnull %key.i2, ptr noundef nonnull %call.i3, i32 noundef -1, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end127, label %do.end31.i

do.end31.i:                                       ; preds = %if.end10.i18
  call void @__sanitizer_cov_trace_pc() #6
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.2, i32 noundef 194, i32 noundef %call26.i) #7
  call void @btrfs_free_path(ptr noundef nonnull %call.i3) #4
  br label %remove_extent_ref.exit.thread

remove_extent_ref.exit.thread:                    ; preds = %do.end31.i, %do.end7.i11, %do.end.i6
  %retval.0.i20.ph = phi i32 [ -12, %do.end.i6 ], [ %call26.i, %do.end31.i ], [ %call2.i7, %do.end7.i11 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i2) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trans.i1) #4
  br label %cleanup

if.end127:                                        ; preds = %if.end10.i18
  %71 = ptrtoint ptr %slots.i12 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %slots.i12, align 4
  %call.i1.i19 = call i32 @btrfs_del_items(ptr noundef nonnull %trans.i1, ptr noundef %root, ptr noundef nonnull %call.i3, i32 noundef %72, i32 noundef 1) #4
  call void @btrfs_free_path(ptr noundef nonnull %call.i3) #4
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i2) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trans.i1) #4
  %call129 = call i32 @btrfs_find_all_roots(ptr noundef nonnull %trans, ptr noundef %2, i64 noundef %conv, i64 noundef 0, ptr noundef nonnull %new_roots, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  %73 = ptrtoint ptr %old_roots to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %old_roots, align 4
  br i1 %tobool130.not, label %if.end137, label %if.then131

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #6
  call void @ulist_free(ptr noundef %74) #4
  %75 = ptrtoint ptr %new_roots to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %new_roots, align 4
  call void @ulist_free(ptr noundef %76) #4
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 411, i32 noundef %call129) #7
  br label %cleanup

if.end137:                                        ; preds = %if.end127
  %77 = ptrtoint ptr %new_roots to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %new_roots, align 4
  %call140 = call i32 @btrfs_qgroup_account_extent(ptr noundef nonnull %trans, i64 noundef %conv, i64 noundef %conv, ptr noundef %74, ptr noundef %78) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end148, label %do.end145

do.end145:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #6
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 418, i32 noundef %call140) #7
  br label %cleanup

if.end148:                                        ; preds = %if.end137
  %call149 = call i32 @btrfs_verify_qgroup_counts(ptr noundef %2, i64 noundef 256, i64 noundef 0, i64 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end157, label %do.end154

do.end154:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #6
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 424) #7
  br label %cleanup

if.end157:                                        ; preds = %if.end148
  %call160 = call i32 @btrfs_verify_qgroup_counts(ptr noundef %2, i64 noundef 5, i64 noundef %conv, i64 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end157.cleanup_crit_edge, label %do.end165

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end165:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 430) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end165, %if.end157.cleanup_crit_edge, %do.end154, %do.end145, %if.then131, %remove_extent_ref.exit.thread, %if.then115, %do.end108, %do.end98, %do.end88, %if.then74, %add_tree_ref.exit, %add_tree_ref.exit.thread, %if.then58, %do.end51, %do.end40, %if.then26, %if.end16.cleanup_crit_edge, %if.then10, %do.end5
  %retval.0 = phi i32 [ %call2, %do.end5 ], [ %call8, %if.then10 ], [ %call24, %if.then26 ], [ %call35, %do.end40 ], [ -22, %do.end51 ], [ %call56, %if.then58 ], [ %call72, %if.then74 ], [ %call83, %do.end88 ], [ -22, %do.end98 ], [ -22, %do.end108 ], [ %call113, %if.then115 ], [ %call129, %if.then131 ], [ %call140, %do.end145 ], [ -22, %do.end154 ], [ -22, %do.end165 ], [ %call19, %if.end16.cleanup_crit_edge ], [ %call.i1.i, %add_tree_ref.exit ], [ 0, %if.end157.cleanup_crit_edge ], [ %retval.0.i.ph, %add_tree_ref.exit.thread ], [ %retval.0.i20.ph, %remove_extent_ref.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_roots) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_roots) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trans) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_fs_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_init_dummy_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_create_qgroup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_find_all_roots(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulist_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @insert_normal_tree_ref(ptr noundef %root, i64 noundef %bytenr, i64 noundef %num_bytes) unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %trans = alloca %struct.btrfs_trans_handle, align 8
  %ins = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %trans) #4
  %0 = call ptr @memset(ptr %trans, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %ins) #4
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %ins, i32 0, i32 1
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %ins, i32 0, i32 2
  call void @btrfs_init_dummy_trans(ptr noundef nonnull %trans, ptr noundef null) #4
  %3 = ptrtoint ptr %ins to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %bytenr, ptr %ins, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -88, ptr %1, align 8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %num_bytes, ptr %2, align 1
  %call = call ptr @btrfs_alloc_path() #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 35, ptr noundef %6) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %7 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 51, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #4
  %8 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %11 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ins, ptr %batch.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data_size.addr.i, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 51, ptr %9, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %10, align 4
  %call.i = call i32 @btrfs_insert_empty_items(ptr noundef nonnull %trans, ptr noundef %root, ptr noundef nonnull %call, ptr noundef nonnull %batch.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.2, i32 noundef 41, i32 noundef %call.i) #7
  call void @btrfs_free_path(ptr noundef nonnull %call) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %18, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %19 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %16, ptr noundef %19, i32 noundef 17) #4
  %add = add i32 %call.i.i, 101
  %20 = inttoptr i32 %add to ptr
  call void @btrfs_set_64(ptr noundef %16, ptr noundef %20, i32 noundef 0, i64 noundef 1) #4
  call void @btrfs_set_64(ptr noundef %16, ptr noundef %20, i32 noundef 8, i64 noundef 1) #4
  call void @btrfs_set_64(ptr noundef %16, ptr noundef %20, i32 noundef 16, i64 noundef 2) #4
  %add.ptr = getelementptr %struct.btrfs_extent_item, ptr %20, i32 1
  call void @btrfs_set_8(ptr noundef %16, ptr noundef %add.ptr, i32 noundef 17, i8 noundef zeroext 0) #4
  %add.ptr13 = getelementptr %struct.btrfs_tree_block_info, ptr %add.ptr, i32 1
  call void @btrfs_set_8(ptr noundef %16, ptr noundef %add.ptr13, i32 noundef 0, i8 noundef zeroext -80) #4
  call void @btrfs_set_64(ptr noundef %16, ptr noundef %add.ptr13, i32 noundef 1, i64 noundef 5) #4
  call void @btrfs_free_path(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end7 ], [ 0, %if.end10 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %ins) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trans) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_qgroup_account_extent(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_verify_qgroup_counts(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 446, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @btrfs_test_qgroups._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @btrfs_test_qgroups._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @btrfs_test_qgroups._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 452, i32 3}
!8 = !{ptr @btrfs_test_qgroups._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 477, i32 3}
!11 = !{ptr @btrfs_test_qgroups._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @btrfs_test_qgroups._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @btrfs_test_qgroups._entry.8, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 487, i32 3}
!15 = !{ptr @btrfs_test_qgroups._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 496, i32 3}
!18 = !{ptr @btrfs_test_qgroups._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @btrfs_test_qgroups._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @btrfs_test_qgroups._entry.13, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 503, i32 3}
!22 = !{ptr @btrfs_test_qgroups._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @btrfs_test_qgroups._entry.15, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 511, i32 3}
!25 = !{ptr @btrfs_test_qgroups._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 516, i32 2}
!28 = !{ptr @btrfs_test_qgroups._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @btrfs_test_qgroups._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 214, i32 2}
!32 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @test_no_shared_qgroup._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @test_no_shared_qgroup._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 217, i32 3}
!37 = !{ptr @test_no_shared_qgroup._entry.22, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @test_no_shared_qgroup._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 229, i32 3}
!41 = !{ptr @test_no_shared_qgroup._entry.25, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @test_no_shared_qgroup._entry_ptr.27, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @test_no_shared_qgroup._entry.28, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 242, i32 3}
!45 = !{ptr @test_no_shared_qgroup._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 249, i32 3}
!48 = !{ptr @test_no_shared_qgroup._entry.30, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @test_no_shared_qgroup._entry_ptr.32, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 255, i32 3}
!52 = !{ptr @test_no_shared_qgroup._entry.33, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @test_no_shared_qgroup._entry_ptr.35, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @test_no_shared_qgroup._entry.36, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 264, i32 3}
!56 = !{ptr @test_no_shared_qgroup._entry_ptr.37, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @test_no_shared_qgroup._entry.38, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 276, i32 3}
!59 = !{ptr @test_no_shared_qgroup._entry_ptr.39, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @test_no_shared_qgroup._entry.40, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 283, i32 3}
!62 = !{ptr @test_no_shared_qgroup._entry_ptr.41, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @test_no_shared_qgroup._entry.42, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 288, i32 3}
!65 = !{ptr @test_no_shared_qgroup._entry_ptr.43, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.44, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 35, i32 3}
!68 = !{ptr @insert_normal_tree_ref._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @insert_normal_tree_ref._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.46, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 41, i32 3}
!72 = !{ptr @insert_normal_tree_ref._entry.45, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @insert_normal_tree_ref._entry_ptr.47, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.48, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 133, i32 3}
!76 = !{ptr @remove_extent_item._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @remove_extent_item._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.50, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 139, i32 3}
!80 = !{ptr @remove_extent_item._entry.49, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @remove_extent_item._entry_ptr.51, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.52, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 311, i32 2}
!84 = !{ptr @.str.53, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @test_multiple_refs._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @test_multiple_refs._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @test_multiple_refs._entry.54, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 319, i32 3}
!89 = !{ptr @test_multiple_refs._entry_ptr.55, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @test_multiple_refs._entry.56, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 326, i32 3}
!92 = !{ptr @test_multiple_refs._entry_ptr.57, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @test_multiple_refs._entry.58, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 339, i32 3}
!95 = !{ptr @test_multiple_refs._entry_ptr.59, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @test_multiple_refs._entry.60, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 346, i32 3}
!98 = !{ptr @test_multiple_refs._entry_ptr.61, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @test_multiple_refs._entry.62, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 352, i32 3}
!101 = !{ptr @test_multiple_refs._entry_ptr.63, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @test_multiple_refs._entry.64, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 359, i32 3}
!104 = !{ptr @test_multiple_refs._entry_ptr.65, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @test_multiple_refs._entry.66, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 372, i32 3}
!107 = !{ptr @test_multiple_refs._entry_ptr.67, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @test_multiple_refs._entry.68, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 379, i32 3}
!110 = !{ptr @test_multiple_refs._entry_ptr.69, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @test_multiple_refs._entry.70, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 385, i32 3}
!113 = !{ptr @test_multiple_refs._entry_ptr.71, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @test_multiple_refs._entry.72, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 391, i32 3}
!116 = !{ptr @test_multiple_refs._entry_ptr.73, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @test_multiple_refs._entry.74, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 398, i32 3}
!119 = !{ptr @test_multiple_refs._entry_ptr.75, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @test_multiple_refs._entry.76, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 411, i32 3}
!122 = !{ptr @test_multiple_refs._entry_ptr.77, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @test_multiple_refs._entry.78, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 418, i32 3}
!125 = !{ptr @test_multiple_refs._entry_ptr.79, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @test_multiple_refs._entry.80, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 424, i32 3}
!128 = !{ptr @test_multiple_refs._entry_ptr.81, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @test_multiple_refs._entry.82, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 430, i32 3}
!131 = !{ptr @test_multiple_refs._entry_ptr.83, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.84, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 84, i32 3}
!134 = !{ptr @add_tree_ref._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @add_tree_ref._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.86, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 90, i32 3}
!138 = !{ptr @add_tree_ref._entry.85, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @add_tree_ref._entry_ptr.87, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.89, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 112, i32 3}
!142 = !{ptr @add_tree_ref._entry.88, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @add_tree_ref._entry_ptr.90, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.91, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 166, i32 3}
!146 = !{ptr @remove_extent_ref._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @remove_extent_ref._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @remove_extent_ref._entry.92, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 172, i32 3}
!150 = !{ptr @remove_extent_ref._entry_ptr.93, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.95, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/btrfs/tests/qgroup-tests.c", i32 194, i32 3}
!153 = !{ptr @remove_extent_ref._entry.94, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @remove_extent_ref._entry_ptr.96, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
