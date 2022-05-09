; ModuleID = '/llk/IR_all_yes/fs/btrfs/tests/free-space-tests.c_pt.bc'
source_filename = "../fs/btrfs/tests/free-space-tests.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_free_space_op = type { ptr }
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
%struct.btrfs_block_group = type { ptr, ptr, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.rw_semaphore, i32, i32, i8, i32, i32, ptr, i64, ptr, ptr, %struct.rb_node, %struct.list_head, %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, i32, i64, i64, i32, %struct.list_head, %struct.list_head, %struct.btrfs_io_ctl, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i8, i32, %struct.btrfs_full_stripe_locks_tree, i64, i64, i64, i64, ptr, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btrfs_io_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.btrfs_free_space_ctl = type { %struct.spinlock, %struct.rb_root, %struct.rb_root_cached, i64, i32, i32, i32, i32, i64, [2 x i32], [2 x i64], ptr, ptr, %struct.mutex, %struct.list_head }
%struct.rb_root_cached = type { %struct.rb_root, ptr }

@btrfs_test_free_space_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016BTRFS: selftest: running btrfs free space cache tests\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"btrfs_test_free_space_cache\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fs/btrfs/tests/free-space-tests.c\00", [62 x i8] zeroinitializer }, align 32
@btrfs_test_free_space_cache._entry_ptr = internal global ptr @btrfs_test_free_space_cache._entry, section ".printk_index", align 4
@btrfs_test_free_space_cache._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013BTRFS: selftest: %s:%d %s\0A\00", [35 x i8] zeroinitializer }, align 32
@btrfs_test_free_space_cache._entry_ptr.5 = internal global ptr @btrfs_test_free_space_cache._entry.3, section ".printk_index", align 4
@test_error = external dso_local local_unnamed_addr global [0 x ptr], align 4
@btrfs_test_free_space_cache._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfs_test_free_space_cache._entry_ptr.7 = internal global ptr @btrfs_test_free_space_cache._entry.6, section ".printk_index", align 4
@btrfs_test_free_space_cache._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@btrfs_test_free_space_cache._entry_ptr.9 = internal global ptr @btrfs_test_free_space_cache._entry.8, section ".printk_index", align 4
@test_extents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016BTRFS: selftest: running extent only tests\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_extents\00", [19 x i8] zeroinitializer }, align 32
@test_extents._entry_ptr = internal global ptr @test_extents._entry, section ".printk_index", align 4
@test_extents._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013BTRFS: selftest: %s:%d error adding initial extents %d\0A\00", [38 x i8] zeroinitializer }, align 32
@test_extents._entry_ptr.14 = internal global ptr @test_extents._entry.12, section ".printk_index", align 4
@test_extents._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013BTRFS: selftest: %s:%d error removing extent %d\0A\00", [45 x i8] zeroinitializer }, align 32
@test_extents._entry_ptr.17 = internal global ptr @test_extents._entry.15, section ".printk_index", align 4
@test_extents._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013BTRFS: selftest: %s:%d full remove left some lingering space\0A\00", [32 x i8] zeroinitializer }, align 32
@test_extents._entry_ptr.20 = internal global ptr @test_extents._entry.18, section ".printk_index", align 4
@test_extents._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BTRFS: selftest: %s:%d error adding half extent %d\0A\00", [42 x i8] zeroinitializer }, align 32
@test_extents._entry_ptr.23 = internal global ptr @test_extents._entry.21, section ".printk_index", align 4
@test_extents._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013BTRFS: selftest: %s:%d error removing tail end %d\0A\00", [43 x i8] zeroinitializer }, align 32
@test_extents._entry_ptr.26 = internal global ptr @test_extents._entry.24, section ".printk_index", align 4
@test_extents._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.11, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BTRFS: selftest: %s:%d error removing front end %d\0A\00", [42 x i8] zeroinitializer }, align 32
@test_extents._entry_ptr.29 = internal global ptr @test_extents._entry.27, section ".printk_index", align 4
@test_extents._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.11, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013BTRFS: selftest: %s:%d error removing middle piece %d\0A\00", [39 x i8] zeroinitializer }, align 32
@test_extents._entry_ptr.32 = internal global ptr @test_extents._entry.30, section ".printk_index", align 4
@test_extents._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.11, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013BTRFS: selftest: %s:%d still have space at the front\0A\00", [40 x i8] zeroinitializer }, align 32
@test_extents._entry_ptr.35 = internal global ptr @test_extents._entry.33, section ".printk_index", align 4
@test_extents._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.11, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013BTRFS: selftest: %s:%d still have space in the middle\0A\00", [39 x i8] zeroinitializer }, align 32
@test_extents._entry_ptr.38 = internal global ptr @test_extents._entry.36, section ".printk_index", align 4
@test_extents._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.11, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BTRFS: selftest: %s:%d still have space at the end\0A\00", [42 x i8] zeroinitializer }, align 32
@test_extents._entry_ptr.41 = internal global ptr @test_extents._entry.39, section ".printk_index", align 4
@test_bitmaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016BTRFS: selftest: running bitmap only tests\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_bitmaps\00", [19 x i8] zeroinitializer }, align 32
@test_bitmaps._entry_ptr = internal global ptr @test_bitmaps._entry, section ".printk_index", align 4
@test_bitmaps._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013BTRFS: selftest: %s:%d couldn't create a bitmap entry %d\0A\00", [36 x i8] zeroinitializer }, align 32
@test_bitmaps._entry_ptr.46 = internal global ptr @test_bitmaps._entry.44, section ".printk_index", align 4
@test_bitmaps._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013BTRFS: selftest: %s:%d error removing bitmap full range %d\0A\00", [34 x i8] zeroinitializer }, align 32
@test_bitmaps._entry_ptr.49 = internal global ptr @test_bitmaps._entry.47, section ".printk_index", align 4
@test_bitmaps._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013BTRFS: selftest: %s:%d left some space in bitmap\0A\00", [44 x i8] zeroinitializer }, align 32
@test_bitmaps._entry_ptr.52 = internal global ptr @test_bitmaps._entry.50, section ".printk_index", align 4
@test_bitmaps._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013BTRFS: selftest: %s:%d couldn't add to our bitmap entry %d\0A\00", [34 x i8] zeroinitializer }, align 32
@test_bitmaps._entry_ptr.55 = internal global ptr @test_bitmaps._entry.53, section ".printk_index", align 4
@test_bitmaps._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.43, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013BTRFS: selftest: %s:%d couldn't remove middle chunk %d\0A\00", [38 x i8] zeroinitializer }, align 32
@test_bitmaps._entry_ptr.58 = internal global ptr @test_bitmaps._entry.56, section ".printk_index", align 4
@test_bitmaps._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.43, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013BTRFS: selftest: %s:%d couldn't add space that straddles two bitmaps %d\0A\00", [53 x i8] zeroinitializer }, align 32
@test_bitmaps._entry_ptr.61 = internal global ptr @test_bitmaps._entry.59, section ".printk_index", align 4
@test_bitmaps._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.43, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013BTRFS: selftest: %s:%d couldn't remove overlapping space %d\0A\00", [33 x i8] zeroinitializer }, align 32
@test_bitmaps._entry_ptr.64 = internal global ptr @test_bitmaps._entry.62, section ".printk_index", align 4
@test_bitmaps._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.43, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013BTRFS: selftest: %s:%d left some space when removing overlapping\0A\00", [60 x i8] zeroinitializer }, align 32
@test_bitmaps._entry_ptr.67 = internal global ptr @test_bitmaps._entry.65, section ".printk_index", align 4
@test_bitmaps_and_extents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016BTRFS: selftest: running bitmap and extent tests\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_bitmaps_and_extents\00", [39 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr = internal global ptr @test_bitmaps_and_extents._entry, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013BTRFS: selftest: %s:%d couldn't create bitmap entry %d\0A\00", [38 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.72 = internal global ptr @test_bitmaps_and_extents._entry.70, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013BTRFS: selftest: %s:%d couldn't add extent entry %d\0A\00", [41 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.75 = internal global ptr @test_bitmaps_and_extents._entry.73, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013BTRFS: selftest: %s:%d couldn't remove extent entry %d\0A\00", [38 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.78 = internal global ptr @test_bitmaps_and_extents._entry.76, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.69, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013BTRFS: selftest: %s:%d left remnants after our remove\0A\00", [39 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.81 = internal global ptr @test_bitmaps_and_extents._entry.79, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.69, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013BTRFS: selftest: %s:%d couldn't re-add extent entry %d\0A\00", [38 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.84 = internal global ptr @test_bitmaps_and_extents._entry.82, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.69, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013BTRFS: selftest: %s:%d couldn't remove from bitmap %d\0A\00", [39 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.87 = internal global ptr @test_bitmaps_and_extents._entry.85, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.69, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BTRFS: selftest: %s:%d left remnants in the bitmap\0A\00", [42 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.90 = internal global ptr @test_bitmaps_and_extents._entry.88, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.69, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BTRFS: selftest: %s:%d couldn't add to a bitmap %d\0A\00", [42 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.93 = internal global ptr @test_bitmaps_and_extents._entry.91, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.69, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.95 = internal global ptr @test_bitmaps_and_extents._entry.94, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.69, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013BTRFS: selftest: %s:%d left over pieces after removing overlapping\0A\00", [58 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.98 = internal global ptr @test_bitmaps_and_extents._entry.96, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.69, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013BTRFS: selftest: %s:%d couldn't add space to the bitmap %d\0A\00", [34 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.101 = internal global ptr @test_bitmaps_and_extents._entry.99, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.69, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013BTRFS: selftest: %s:%d couldn't add extent to the cache %d\0A\00", [34 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.104 = internal global ptr @test_bitmaps_and_extents._entry.102, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.69, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013BTRFS: selftest: %s:%d problem removing overlapping space %d\0A\00", [32 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.107 = internal global ptr @test_bitmaps_and_extents._entry.105, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.69, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013BTRFS: selftest: %s:%d left something behind when removing space\0A\00", [60 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.110 = internal global ptr @test_bitmaps_and_extents._entry.108, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.69, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013BTRFS: selftest: %s:%d couldn't add bitmap %d\0A\00", [47 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.113 = internal global ptr @test_bitmaps_and_extents._entry.111, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.115 = internal global ptr @test_bitmaps_and_extents._entry.114, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.69, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BTRFS: selftest: %s:%d failed to free our space %d\0A\00", [42 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.118 = internal global ptr @test_bitmaps_and_extents._entry.116, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.69, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013BTRFS: selftest: %s:%d left stuff over\0A\00", [54 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.121 = internal global ptr @test_bitmaps_and_extents._entry.119, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.69, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013BTRFS: selftest: %s:%d couldn't add bitmap entry %d\0A\00", [41 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.124 = internal global ptr @test_bitmaps_and_extents._entry.122, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.126 = internal global ptr @test_bitmaps_and_extents._entry.125, section ".printk_index", align 4
@test_bitmaps_and_extents._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.69, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013BTRFS: selftest: %s:%d error removing bitmap and extent overlapping %d\0A\00", [54 x i8] zeroinitializer }, align 32
@test_bitmaps_and_extents._entry_ptr.129 = internal global ptr @test_bitmaps_and_extents._entry.127, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016BTRFS: selftest: running space stealing from bitmap to extent tests\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"test_steal_space_from_bitmap_to_extent\00", [57 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr = internal global ptr @test_steal_space_from_bitmap_to_extent._entry, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.131, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.133 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.132, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.131, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.135 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.134, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.131, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013BTRFS: selftest: %s:%d failed to free part of bitmap space %d\0A\00", [63 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.138 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.136, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.131, ptr @.str.2, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013BTRFS: selftest: %s:%d free space range missing\0A\00", [45 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.141 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.139, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.131, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.143 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.142, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.131, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013BTRFS: selftest: %s:%d bitmap region not removed from space cache\0A\00", [59 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.146 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.144, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.131, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013BTRFS: selftest: %s:%d invalid bitmap region marked as free\0A\00", [33 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.149 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.147, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.131, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.151 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.150, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.131, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BTRFS: selftest: %s:%d error adding free space: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.154 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.152, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.131, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013BTRFS: selftest: %s:%d bitmap region not marked as free\0A\00", [37 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.157 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.155, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.131, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.159 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.158, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.131, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.161 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.160, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.131, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013BTRFS: selftest: %s:%d extent region not marked as free\0A\00", [37 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.164 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.162, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.131, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013BTRFS: selftest: %s:%d expected region not marked as free\0A\00", [35 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.167 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.165, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.131, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013BTRFS: selftest: %s:%d cache free space is not 1Mb + %u\0A\00", [37 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.170 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.168, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.131, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013BTRFS: selftest: %s:%d failed to allocate 1Mb from space cache, returned offset is: %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.173 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.171, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.131, ptr @.str.2, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013BTRFS: selftest: %s:%d cache free space is not %u\0A\00", [43 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.176 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.174, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.131, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013BTRFS: selftest: %s:%d failed to allocate %u, returned offset : %llu\0A\00", [56 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.179 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.177, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.131, ptr @.str.2, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.181 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.180, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.131, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.183 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.182, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.131, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.185 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.184, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.131, ptr @.str.2, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.187 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.186, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.131, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.189 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.188, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.131, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.191 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.190, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.131, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.193 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.192, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.131, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.195 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.194, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.131, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.197 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.196, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.131, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.199 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.198, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.131, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.201 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.200, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.131, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.203 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.202, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.131, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.205 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.204, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.131, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.207 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.206, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.131, ptr @.str.2, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.209 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.208, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.131, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.211 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.210, section ".printk_index", align 4
@test_steal_space_from_bitmap_to_extent._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.131, ptr @.str.2, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013BTRFS: selftest: %s:%d failed to allocate %u, offset: %llu\0A\00", [34 x i8] zeroinitializer }, align 32
@test_steal_space_from_bitmap_to_extent._entry_ptr.214 = internal global ptr @test_steal_space_from_bitmap_to_extent._entry.212, section ".printk_index", align 4
@check_num_extents_and_bitmaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013BTRFS: selftest: %s:%d incorrect # of extent entries in the cache: %d, expected %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"check_num_extents_and_bitmaps\00", [34 x i8] zeroinitializer }, align 32
@check_num_extents_and_bitmaps._entry_ptr = internal global ptr @check_num_extents_and_bitmaps._entry, section ".printk_index", align 4
@check_num_extents_and_bitmaps._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_num_extents_and_bitmaps._entry_ptr.218 = internal global ptr @check_num_extents_and_bitmaps._entry.217, section ".printk_index", align 4
@check_cache_empty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013BTRFS: selftest: %s:%d cache free space is not 0\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_cache_empty\00", [46 x i8] zeroinitializer }, align 32
@check_cache_empty._entry_ptr = internal global ptr @check_cache_empty._entry, section ".printk_index", align 4
@check_cache_empty._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.220, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013BTRFS: selftest: %s:%d space allocation did not fail, returned offset: %llu\0A\00", [49 x i8] zeroinitializer }, align 32
@check_cache_empty._entry_ptr.223 = internal global ptr @check_cache_empty._entry.221, section ".printk_index", align 4
@test_bytes_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016BTRFS: selftest: running bytes index tests\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_bytes_index\00", [47 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr = internal global ptr @test_bytes_index._entry, section ".printk_index", align 4
@test_bytes_index._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.225, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013BTRFS: selftest: %s:%d couldn't add extent entry %d\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.228 = internal global ptr @test_bytes_index._entry.226, section ".printk_index", align 4
@test_bytes_index._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.225, ptr @.str.2, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013BTRFS: selftest: %s:%d invalid bytes index order, found %llu expected %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.231 = internal global ptr @test_bytes_index._entry.229, section ".printk_index", align 4
@test_bytes_index._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.225, ptr @.str.2, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013BTRFS: selftest: %s:%d couldn't add bitmap entry\0A\00", [44 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.234 = internal global ptr @test_bytes_index._entry.232, section ".printk_index", align 4
@test_bytes_index._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.225, ptr @.str.2, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.236 = internal global ptr @test_bytes_index._entry.235, section ".printk_index", align 4
@test_bytes_index._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.225, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.238 = internal global ptr @test_bytes_index._entry.237, section ".printk_index", align 4
@test_bytes_index._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.225, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013BTRFS: selftest: %s:%d couldn't add bitmap_entry\0A\00", [44 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.241 = internal global ptr @test_bytes_index._entry.239, section ".printk_index", align 4
@test_bytes_index._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.225, ptr @.str.2, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013BTRFS: selftest: %s:%d error populating sparse bitmap %d\0A\00", [36 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.244 = internal global ptr @test_bytes_index._entry.242, section ".printk_index", align 4
@test_bytes_index._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.225, ptr @.str.2, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013BTRFS: selftest: %s:%d error adding contiguous extent %d\0A\00", [36 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.247 = internal global ptr @test_bytes_index._entry.245, section ".printk_index", align 4
@test_bytes_index._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.225, ptr @.str.2, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013BTRFS: selftest: %s:%d error, wrong entry in the first slot in bytes_index\0A\00", [50 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.250 = internal global ptr @test_bytes_index._entry.248, section ".printk_index", align 4
@test_bytes_index._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.225, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013BTRFS: selftest: %s:%d found space to alloc even though we don't have enough space\0A\00", [42 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.253 = internal global ptr @test_bytes_index._entry.251, section ".printk_index", align 4
@test_bytes_index._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.225, ptr @.str.2, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013BTRFS: selftest: %s:%d got the wrong max_extent size %llu expected %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.256 = internal global ptr @test_bytes_index._entry.254, section ".printk_index", align 4
@test_bytes_index._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.225, ptr @.str.2, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013BTRFS: selftest: %s:%d error, the bytes index wasn't recalculated properly\0A\00", [50 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.259 = internal global ptr @test_bytes_index._entry.257, section ".printk_index", align 4
@test_bytes_index._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.225, ptr @.str.2, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013BTRFS: selftest: %s:%d error adding extent to the sparse entry %d\0A\00", [59 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.262 = internal global ptr @test_bytes_index._entry.260, section ".printk_index", align 4
@test_bytes_index._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.225, ptr @.str.2, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.264 = internal global ptr @test_bytes_index._entry.263, section ".printk_index", align 4
@test_bytes_index._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.225, ptr @.str.2, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013BTRFS: selftest: %s:%d error, found %llu instead of %llu for our alloc\0A\00", [54 x i8] zeroinitializer }, align 32
@test_bytes_index._entry_ptr.267 = internal global ptr @test_bytes_index._entry.265, section ".printk_index", align 4
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 1012, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 1015, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 1027, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 1034, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 24, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 29, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 35, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 40, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 47, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 53, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 59, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 65, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 70, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 75, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 80, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 95, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 99, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 105, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 110, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 116, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 122, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 136, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 143, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 148, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 164, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 173, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 179, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 185, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 190, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 197, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 203, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 208, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 218, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 224, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 229, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 238, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 244, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 250, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 255, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 272, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 279, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 285, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 290, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 304, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 310, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 316, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 406, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 434, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 442, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 461, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 467, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 471, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 481, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 490, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 499, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 510, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 515, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 535, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 554, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 559, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 587, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 592, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 600, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 615, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 623, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 645, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 652, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 669, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 675, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 679, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 688, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 697, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 708, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 713, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 733, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 744, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 749, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 777, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 782, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 789, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 804, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 812, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 338, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 344, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 363, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 371, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 845, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 853, i32 4 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 864, i32 4 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 877, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 887, i32 4 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 900, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 907, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 919, i32 4 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 931, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 942, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 950, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 955, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 967, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 975, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 982, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.811 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.812 = private constant [37 x i8] c"../fs/btrfs/tests/free-space-tests.c\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.812, i32 994, i32 3 }
@llvm.compiler.used = appending global [284 x ptr] [ptr @btrfs_test_free_space_cache._entry, ptr @btrfs_test_free_space_cache._entry.3, ptr @btrfs_test_free_space_cache._entry.6, ptr @btrfs_test_free_space_cache._entry.8, ptr @btrfs_test_free_space_cache._entry_ptr, ptr @btrfs_test_free_space_cache._entry_ptr.5, ptr @btrfs_test_free_space_cache._entry_ptr.7, ptr @btrfs_test_free_space_cache._entry_ptr.9, ptr @check_cache_empty._entry, ptr @check_cache_empty._entry.221, ptr @check_cache_empty._entry_ptr, ptr @check_cache_empty._entry_ptr.223, ptr @check_num_extents_and_bitmaps._entry, ptr @check_num_extents_and_bitmaps._entry.217, ptr @check_num_extents_and_bitmaps._entry_ptr, ptr @check_num_extents_and_bitmaps._entry_ptr.218, ptr @test_bitmaps._entry, ptr @test_bitmaps._entry.44, ptr @test_bitmaps._entry.47, ptr @test_bitmaps._entry.50, ptr @test_bitmaps._entry.53, ptr @test_bitmaps._entry.56, ptr @test_bitmaps._entry.59, ptr @test_bitmaps._entry.62, ptr @test_bitmaps._entry.65, ptr @test_bitmaps._entry_ptr, ptr @test_bitmaps._entry_ptr.46, ptr @test_bitmaps._entry_ptr.49, ptr @test_bitmaps._entry_ptr.52, ptr @test_bitmaps._entry_ptr.55, ptr @test_bitmaps._entry_ptr.58, ptr @test_bitmaps._entry_ptr.61, ptr @test_bitmaps._entry_ptr.64, ptr @test_bitmaps._entry_ptr.67, ptr @test_bitmaps_and_extents._entry, ptr @test_bitmaps_and_extents._entry.102, ptr @test_bitmaps_and_extents._entry.105, ptr @test_bitmaps_and_extents._entry.108, ptr @test_bitmaps_and_extents._entry.111, ptr @test_bitmaps_and_extents._entry.114, ptr @test_bitmaps_and_extents._entry.116, ptr @test_bitmaps_and_extents._entry.119, ptr @test_bitmaps_and_extents._entry.122, ptr @test_bitmaps_and_extents._entry.125, ptr @test_bitmaps_and_extents._entry.127, ptr @test_bitmaps_and_extents._entry.70, ptr @test_bitmaps_and_extents._entry.73, ptr @test_bitmaps_and_extents._entry.76, ptr @test_bitmaps_and_extents._entry.79, ptr @test_bitmaps_and_extents._entry.82, ptr @test_bitmaps_and_extents._entry.85, ptr @test_bitmaps_and_extents._entry.88, ptr @test_bitmaps_and_extents._entry.91, ptr @test_bitmaps_and_extents._entry.94, ptr @test_bitmaps_and_extents._entry.96, ptr @test_bitmaps_and_extents._entry.99, ptr @test_bitmaps_and_extents._entry_ptr, ptr @test_bitmaps_and_extents._entry_ptr.101, ptr @test_bitmaps_and_extents._entry_ptr.104, ptr @test_bitmaps_and_extents._entry_ptr.107, ptr @test_bitmaps_and_extents._entry_ptr.110, ptr @test_bitmaps_and_extents._entry_ptr.113, ptr @test_bitmaps_and_extents._entry_ptr.115, ptr @test_bitmaps_and_extents._entry_ptr.118, ptr @test_bitmaps_and_extents._entry_ptr.121, ptr @test_bitmaps_and_extents._entry_ptr.124, ptr @test_bitmaps_and_extents._entry_ptr.126, ptr @test_bitmaps_and_extents._entry_ptr.129, ptr @test_bitmaps_and_extents._entry_ptr.72, ptr @test_bitmaps_and_extents._entry_ptr.75, ptr @test_bitmaps_and_extents._entry_ptr.78, ptr @test_bitmaps_and_extents._entry_ptr.81, ptr @test_bitmaps_and_extents._entry_ptr.84, ptr @test_bitmaps_and_extents._entry_ptr.87, ptr @test_bitmaps_and_extents._entry_ptr.90, ptr @test_bitmaps_and_extents._entry_ptr.93, ptr @test_bitmaps_and_extents._entry_ptr.95, ptr @test_bitmaps_and_extents._entry_ptr.98, ptr @test_bytes_index._entry, ptr @test_bytes_index._entry.226, ptr @test_bytes_index._entry.229, ptr @test_bytes_index._entry.232, ptr @test_bytes_index._entry.235, ptr @test_bytes_index._entry.237, ptr @test_bytes_index._entry.239, ptr @test_bytes_index._entry.242, ptr @test_bytes_index._entry.245, ptr @test_bytes_index._entry.248, ptr @test_bytes_index._entry.251, ptr @test_bytes_index._entry.254, ptr @test_bytes_index._entry.257, ptr @test_bytes_index._entry.260, ptr @test_bytes_index._entry.263, ptr @test_bytes_index._entry.265, ptr @test_bytes_index._entry_ptr, ptr @test_bytes_index._entry_ptr.228, ptr @test_bytes_index._entry_ptr.231, ptr @test_bytes_index._entry_ptr.234, ptr @test_bytes_index._entry_ptr.236, ptr @test_bytes_index._entry_ptr.238, ptr @test_bytes_index._entry_ptr.241, ptr @test_bytes_index._entry_ptr.244, ptr @test_bytes_index._entry_ptr.247, ptr @test_bytes_index._entry_ptr.250, ptr @test_bytes_index._entry_ptr.253, ptr @test_bytes_index._entry_ptr.256, ptr @test_bytes_index._entry_ptr.259, ptr @test_bytes_index._entry_ptr.262, ptr @test_bytes_index._entry_ptr.264, ptr @test_bytes_index._entry_ptr.267, ptr @test_extents._entry, ptr @test_extents._entry.12, ptr @test_extents._entry.15, ptr @test_extents._entry.18, ptr @test_extents._entry.21, ptr @test_extents._entry.24, ptr @test_extents._entry.27, ptr @test_extents._entry.30, ptr @test_extents._entry.33, ptr @test_extents._entry.36, ptr @test_extents._entry.39, ptr @test_extents._entry_ptr, ptr @test_extents._entry_ptr.14, ptr @test_extents._entry_ptr.17, ptr @test_extents._entry_ptr.20, ptr @test_extents._entry_ptr.23, ptr @test_extents._entry_ptr.26, ptr @test_extents._entry_ptr.29, ptr @test_extents._entry_ptr.32, ptr @test_extents._entry_ptr.35, ptr @test_extents._entry_ptr.38, ptr @test_extents._entry_ptr.41, ptr @test_steal_space_from_bitmap_to_extent._entry, ptr @test_steal_space_from_bitmap_to_extent._entry.132, ptr @test_steal_space_from_bitmap_to_extent._entry.134, ptr @test_steal_space_from_bitmap_to_extent._entry.136, ptr @test_steal_space_from_bitmap_to_extent._entry.139, ptr @test_steal_space_from_bitmap_to_extent._entry.142, ptr @test_steal_space_from_bitmap_to_extent._entry.144, ptr @test_steal_space_from_bitmap_to_extent._entry.147, ptr @test_steal_space_from_bitmap_to_extent._entry.150, ptr @test_steal_space_from_bitmap_to_extent._entry.152, ptr @test_steal_space_from_bitmap_to_extent._entry.155, ptr @test_steal_space_from_bitmap_to_extent._entry.158, ptr @test_steal_space_from_bitmap_to_extent._entry.160, ptr @test_steal_space_from_bitmap_to_extent._entry.162, ptr @test_steal_space_from_bitmap_to_extent._entry.165, ptr @test_steal_space_from_bitmap_to_extent._entry.168, ptr @test_steal_space_from_bitmap_to_extent._entry.171, ptr @test_steal_space_from_bitmap_to_extent._entry.174, ptr @test_steal_space_from_bitmap_to_extent._entry.177, ptr @test_steal_space_from_bitmap_to_extent._entry.180, ptr @test_steal_space_from_bitmap_to_extent._entry.182, ptr @test_steal_space_from_bitmap_to_extent._entry.184, ptr @test_steal_space_from_bitmap_to_extent._entry.186, ptr @test_steal_space_from_bitmap_to_extent._entry.188, ptr @test_steal_space_from_bitmap_to_extent._entry.190, ptr @test_steal_space_from_bitmap_to_extent._entry.192, ptr @test_steal_space_from_bitmap_to_extent._entry.194, ptr @test_steal_space_from_bitmap_to_extent._entry.196, ptr @test_steal_space_from_bitmap_to_extent._entry.198, ptr @test_steal_space_from_bitmap_to_extent._entry.200, ptr @test_steal_space_from_bitmap_to_extent._entry.202, ptr @test_steal_space_from_bitmap_to_extent._entry.204, ptr @test_steal_space_from_bitmap_to_extent._entry.206, ptr @test_steal_space_from_bitmap_to_extent._entry.208, ptr @test_steal_space_from_bitmap_to_extent._entry.210, ptr @test_steal_space_from_bitmap_to_extent._entry.212, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.133, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.135, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.138, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.141, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.143, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.146, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.149, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.151, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.154, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.157, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.159, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.161, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.164, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.167, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.170, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.173, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.176, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.179, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.181, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.183, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.185, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.187, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.189, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.191, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.193, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.195, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.197, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.199, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.201, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.203, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.205, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.207, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.209, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.211, ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.214, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.137, ptr @.str.140, ptr @.str.145, ptr @.str.148, ptr @.str.153, ptr @.str.156, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.213, ptr @.str.215, ptr @.str.216, ptr @.str.219, ptr @.str.220, ptr @.str.222, ptr @.str.224, ptr @.str.225, ptr @.str.227, ptr @.str.230, ptr @.str.233, ptr @.str.240, ptr @.str.243, ptr @.str.246, ptr @.str.249, ptr @.str.252, ptr @.str.255, ptr @.str.258, ptr @.str.261, ptr @.str.266], section "llvm.metadata"
@0 = internal global [182 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_free_space_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_free_space_cache._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_free_space_cache._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_free_space_cache._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extents._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extents._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extents._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extents._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extents._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extents._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extents._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extents._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extents._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extents._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmaps_and_extents._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_steal_space_from_bitmap_to_extent._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_num_extents_and_bitmaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_num_extents_and_bitmaps._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cache_empty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cache_empty._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bytes_index._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_test_free_space_cache(i32 noundef %sectorsize, i32 noundef %nodesize) local_unnamed_addr #0 align 64 {
entry:
  %max_extent_size.i = alloca i64, align 8
  %test_free_space_ops.i = alloca %struct.btrfs_free_space_op, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %call1 = tail call ptr @btrfs_alloc_dummy_fs_info(i32 noundef %nodesize, i32 noundef %sectorsize) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @test_error to i32))
  %0 = load ptr, ptr @test_error, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 1015, ptr noundef %0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %sectorsize, 15
  %add = or i32 %mul, 4096
  %call7 = tail call ptr @btrfs_alloc_dummy_block_group(ptr noundef nonnull %call1, i32 noundef %add) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 5) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 5), align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 1027, ptr noundef %1) #9
  tail call void @btrfs_free_dummy_fs_info(ptr noundef nonnull %call1) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr @btrfs_alloc_dummy_root(ptr noundef nonnull %call1) #6
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 1034, ptr noundef %2) #9
  %3 = ptrtoint ptr %call16 to i32
  br label %out

if.end25:                                         ; preds = %if.end15
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %call16, i32 0, i32 7
  %4 = ptrtoint ptr %root_key to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 2, ptr %root_key, align 1
  %type = getelementptr inbounds %struct.btrfs_root, ptr %call16, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -124, ptr %type, align 1
  %offset = getelementptr inbounds %struct.btrfs_root, ptr %call16, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %offset, align 1
  %call28 = tail call i32 @btrfs_global_root_insert(ptr noundef %call16) #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  %call1.i = tail call i32 @btrfs_add_free_space(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 4194304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end4.i

do.end4.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 29, i32 noundef %call1.i) #9
  br label %out

if.end.i:                                         ; preds = %if.end25
  %call7.i = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 4194304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end15.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 35, i32 noundef %call7.i) #9
  br label %out

if.end15.i:                                       ; preds = %if.end.i
  %call16.i = tail call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 4194304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end24.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 40) #9
  br label %out

if.end24.i:                                       ; preds = %if.end15.i
  %call25.i = tail call i32 @btrfs_add_free_space(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 4194304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end33.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 47, i32 noundef %call25.i) #9
  br label %out

if.end33.i:                                       ; preds = %if.end24.i
  %call34.i = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 3145728, i64 noundef 1048576) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end42.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 53, i32 noundef %call34.i) #9
  br label %out

if.end42.i:                                       ; preds = %if.end33.i
  %call43.i = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 1048576) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end51.i, label %do.end48.i

do.end48.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 59, i32 noundef %call43.i) #9
  br label %out

if.end51.i:                                       ; preds = %if.end42.i
  %call52.i = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 2097152, i64 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end60.i, label %do.end57.i

do.end57.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 65, i32 noundef %call52.i) #9
  br label %out

if.end60.i:                                       ; preds = %if.end51.i
  %call61.i = tail call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 1048576) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end69.i, label %do.end66.i

do.end66.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 70) #9
  br label %out

if.end69.i:                                       ; preds = %if.end60.i
  %call70.i = tail call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 2097152, i64 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end78.i, label %do.end75.i

do.end75.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  %call77.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef 75) #9
  br label %out

if.end78.i:                                       ; preds = %if.end69.i
  %call79.i = tail call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 3145728, i64 noundef 1048576) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end32, label %do.end84.i

do.end84.i:                                       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.2, i32 noundef 80) #9
  br label %out

if.end32:                                         ; preds = %if.end78.i
  %free_space_ctl.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call7, i32 0, i32 23
  %7 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free_space_ctl.i, align 4
  tail call void @__btrfs_remove_free_space_cache(ptr noundef %8) #6
  %call.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #9
  %call1.i75 = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 4194304, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool.not.i76, label %if.end.i81, label %do.end4.i78

do.end4.i78:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef %call1.i75) #9
  br label %out

if.end.i81:                                       ; preds = %if.end32
  %call7.i79 = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 4194304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i79)
  %tobool8.not.i80 = icmp eq i32 %call7.i79, 0
  br i1 %tobool8.not.i80, label %if.end15.i86, label %do.end12.i83

do.end12.i83:                                     ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.2, i32 noundef 105, i32 noundef %call7.i79) #9
  br label %out

if.end15.i86:                                     ; preds = %if.end.i81
  %call16.i84 = tail call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 4194304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i84)
  %tobool17.not.i85 = icmp eq i32 %call16.i84, 0
  br i1 %tobool17.not.i85, label %if.end24.i91, label %do.end21.i88

do.end21.i88:                                     ; preds = %if.end15.i86
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 110) #9
  br label %out

if.end24.i91:                                     ; preds = %if.end15.i86
  %call25.i89 = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 4194304, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i89)
  %tobool26.not.i90 = icmp eq i32 %call25.i89, 0
  br i1 %tobool26.not.i90, label %if.end33.i96, label %do.end30.i93

do.end30.i93:                                     ; preds = %if.end24.i91
  call void @__sanitizer_cov_trace_pc() #8
  %call32.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2, i32 noundef 116, i32 noundef %call25.i89) #9
  br label %out

if.end33.i96:                                     ; preds = %if.end24.i91
  %call34.i94 = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 1048576, i64 noundef 2097152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i94)
  %tobool35.not.i95 = icmp eq i32 %call34.i94, 0
  br i1 %tobool35.not.i95, label %if.end42.i101, label %do.end39.i98

do.end39.i98:                                     ; preds = %if.end33.i96
  call void @__sanitizer_cov_trace_pc() #8
  %call41.i97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.2, i32 noundef 122, i32 noundef %call34.i94) #9
  br label %out

if.end42.i101:                                    ; preds = %if.end33.i96
  %conv.i = zext i32 %mul to i64
  %sub.i = add nsw i64 %conv.i, -2097152
  %call43.i99 = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef %sub.i, i64 noundef 4194304, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i99)
  %tobool44.not.i100 = icmp eq i32 %call43.i99, 0
  br i1 %tobool44.not.i100, label %if.end51.i104, label %do.end48.i103

do.end48.i103:                                    ; preds = %if.end42.i101
  call void @__sanitizer_cov_trace_pc() #8
  %call50.i102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 137, i32 noundef %call43.i99) #9
  br label %out

if.end51.i104:                                    ; preds = %if.end42.i101
  %sub52.i = add nsw i64 %conv.i, -1048576
  %call53.i = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef %sub52.i, i64 noundef 2097152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end61.i, label %do.end58.i

do.end58.i:                                       ; preds = %if.end51.i104
  call void @__sanitizer_cov_trace_pc() #8
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 143, i32 noundef %call53.i) #9
  br label %out

if.end61.i:                                       ; preds = %if.end51.i104
  %call63.i = tail call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef %sub52.i, i64 noundef 2097152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end36, label %do.end68.i

do.end68.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  %call70.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.2, i32 noundef 148) #9
  br label %out

if.end36:                                         ; preds = %if.end61.i
  %9 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %free_space_ctl.i, align 4
  tail call void @__btrfs_remove_free_space_cache(ptr noundef %10) #6
  %call.i110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #9
  %call1.i111 = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 4194304, i64 noundef 1048576, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %tobool.not.i112 = icmp eq i32 %call1.i111, 0
  br i1 %tobool.not.i112, label %if.end.i117, label %do.end4.i114

do.end4.i114:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.2, i32 noundef 173, i32 noundef %call1.i111) #9
  br label %out

if.end.i117:                                      ; preds = %if.end36
  %call7.i115 = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 1048576, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i115)
  %tobool8.not.i116 = icmp eq i32 %call7.i115, 0
  br i1 %tobool8.not.i116, label %if.end15.i122, label %do.end12.i119

do.end12.i119:                                    ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2, i32 noundef 179, i32 noundef %call7.i115) #9
  br label %out

if.end15.i122:                                    ; preds = %if.end.i117
  %call16.i120 = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 1048576) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i120)
  %tobool17.not.i121 = icmp eq i32 %call16.i120, 0
  br i1 %tobool17.not.i121, label %if.end24.i127, label %do.end21.i124

do.end21.i124:                                    ; preds = %if.end15.i122
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.2, i32 noundef 185, i32 noundef %call16.i120) #9
  br label %out

if.end24.i127:                                    ; preds = %if.end15.i122
  %call25.i125 = tail call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 1048576) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i125)
  %tobool26.not.i126 = icmp eq i32 %call25.i125, 0
  br i1 %tobool26.not.i126, label %if.end33.i132, label %do.end30.i129

do.end30.i129:                                    ; preds = %if.end24.i127
  call void @__sanitizer_cov_trace_pc() #8
  %call32.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.2, i32 noundef 190) #9
  br label %out

if.end33.i132:                                    ; preds = %if.end24.i127
  %call34.i130 = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 1048576, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i130)
  %tobool35.not.i131 = icmp eq i32 %call34.i130, 0
  br i1 %tobool35.not.i131, label %if.end42.i137, label %do.end39.i134

do.end39.i134:                                    ; preds = %if.end33.i132
  call void @__sanitizer_cov_trace_pc() #8
  %call41.i133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.2, i32 noundef 197, i32 noundef %call34.i130) #9
  br label %out

if.end42.i137:                                    ; preds = %if.end33.i132
  %call43.i135 = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 4194304, i64 noundef 1048576) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i135)
  %tobool44.not.i136 = icmp eq i32 %call43.i135, 0
  br i1 %tobool44.not.i136, label %if.end51.i142, label %do.end48.i139

do.end48.i139:                                    ; preds = %if.end42.i137
  call void @__sanitizer_cov_trace_pc() #8
  %call50.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.2, i32 noundef 203, i32 noundef %call43.i135) #9
  br label %out

if.end51.i142:                                    ; preds = %if.end42.i137
  %call52.i140 = tail call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 4194304, i64 noundef 1048576) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i140)
  %tobool53.not.i141 = icmp eq i32 %call52.i140, 0
  br i1 %tobool53.not.i141, label %if.end60.i147, label %do.end57.i144

do.end57.i144:                                    ; preds = %if.end51.i142
  call void @__sanitizer_cov_trace_pc() #8
  %call59.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.2, i32 noundef 208) #9
  br label %out

if.end60.i147:                                    ; preds = %if.end51.i142
  %call61.i145 = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 1048576, i64 noundef 4194304, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i145)
  %tobool62.not.i146 = icmp eq i32 %call61.i145, 0
  br i1 %tobool62.not.i146, label %if.end69.i152, label %do.end66.i149

do.end66.i149:                                    ; preds = %if.end60.i147
  call void @__sanitizer_cov_trace_pc() #8
  %call68.i148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.2, i32 noundef 218, i32 noundef %call61.i145) #9
  br label %out

if.end69.i152:                                    ; preds = %if.end60.i147
  %call70.i150 = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 524288, i64 noundef 3145728) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i150)
  %tobool71.not.i151 = icmp eq i32 %call70.i150, 0
  br i1 %tobool71.not.i151, label %if.end78.i157, label %do.end75.i154

do.end75.i154:                                    ; preds = %if.end69.i152
  call void @__sanitizer_cov_trace_pc() #8
  %call77.i153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 224, i32 noundef %call70.i150) #9
  br label %out

if.end78.i157:                                    ; preds = %if.end69.i152
  %call79.i155 = tail call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 524288, i64 noundef 3145728) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i155)
  %tobool80.not.i156 = icmp eq i32 %call79.i155, 0
  br i1 %tobool80.not.i156, label %if.end87.i161, label %do.end84.i159

do.end84.i159:                                    ; preds = %if.end78.i157
  call void @__sanitizer_cov_trace_pc() #8
  %call86.i158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.2, i32 noundef 229) #9
  br label %out

if.end87.i161:                                    ; preds = %if.end78.i157
  %11 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %free_space_ctl.i, align 4
  tail call void @__btrfs_remove_free_space_cache(ptr noundef %12) #6
  %call88.i = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 4194304, i64 noundef 4194304, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %if.end96.i, label %do.end93.i

do.end93.i:                                       ; preds = %if.end87.i161
  call void @__sanitizer_cov_trace_pc() #8
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.2, i32 noundef 238, i32 noundef %call88.i) #9
  br label %out

if.end96.i:                                       ; preds = %if.end87.i161
  %call97.i = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 2097152, i64 noundef 2097152, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %tobool98.not.i = icmp eq i32 %call97.i, 0
  br i1 %tobool98.not.i, label %if.end105.i, label %do.end102.i

do.end102.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  %call104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.2, i32 noundef 244, i32 noundef %call97.i) #9
  br label %out

if.end105.i:                                      ; preds = %if.end96.i
  %call106.i = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 3145728, i64 noundef 4194304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %if.end114.i, label %do.end111.i

do.end111.i:                                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #8
  %call113.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.2, i32 noundef 250, i32 noundef %call106.i) #9
  br label %out

if.end114.i:                                      ; preds = %if.end105.i
  %call115.i = tail call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 3145728, i64 noundef 4194304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %if.end123.i, label %do.end120.i

do.end120.i:                                      ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #8
  %call122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.2, i32 noundef 255) #9
  br label %out

if.end123.i:                                      ; preds = %if.end114.i
  %13 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %free_space_ctl.i, align 4
  tail call void @__btrfs_remove_free_space_cache(ptr noundef %14) #6
  %add.i = add nuw nsw i64 %conv.i, 4194304
  %call125.i = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef %add.i, i64 noundef 4194304, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.i)
  %tobool126.not.i = icmp eq i32 %call125.i, 0
  br i1 %tobool126.not.i, label %if.end133.i, label %do.end130.i

do.end130.i:                                      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #8
  %call132.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.2, i32 noundef 272, i32 noundef %call125.i) #9
  br label %out

if.end133.i:                                      ; preds = %if.end123.i
  %call134.i = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef %sub52.i, i64 noundef 5242880, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %tobool135.not.i = icmp eq i32 %call134.i, 0
  br i1 %tobool135.not.i, label %if.end142.i, label %do.end139.i

do.end139.i:                                      ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #8
  %call141.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2, i32 noundef 279, i32 noundef %call134.i) #9
  br label %out

if.end142.i:                                      ; preds = %if.end133.i
  %add143.i = add nuw nsw i64 %conv.i, 1048576
  %call144.i = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef %add143.i, i64 noundef 5242880) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.i)
  %tobool145.not.i = icmp eq i32 %call144.i, 0
  br i1 %tobool145.not.i, label %if.end152.i, label %do.end149.i

do.end149.i:                                      ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #8
  %call151.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.2, i32 noundef 285, i32 noundef %call144.i) #9
  br label %out

if.end152.i:                                      ; preds = %if.end142.i
  %call154.i = tail call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef %add143.i, i64 noundef 5242880) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154.i)
  %tobool155.not.i = icmp eq i32 %call154.i, 0
  br i1 %tobool155.not.i, label %if.end162.i, label %do.end159.i

do.end159.i:                                      ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #8
  %call161.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.2, i32 noundef 290) #9
  br label %out

if.end162.i:                                      ; preds = %if.end152.i
  %15 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %free_space_ctl.i, align 4
  tail call void @__btrfs_remove_free_space_cache(ptr noundef %16) #6
  %call164.i = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 1048576, i64 noundef 2097152, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i)
  %tobool165.not.i = icmp eq i32 %call164.i, 0
  br i1 %tobool165.not.i, label %if.end172.i, label %do.end169.i

do.end169.i:                                      ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #8
  %call171.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.2, i32 noundef 304, i32 noundef %call164.i) #9
  br label %out

if.end172.i:                                      ; preds = %if.end162.i
  %call173.i = tail call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 3145728, i64 noundef 1048576, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173.i)
  %tobool174.not.i = icmp eq i32 %call173.i, 0
  br i1 %tobool174.not.i, label %if.end181.i, label %do.end178.i

do.end178.i:                                      ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #8
  %call180.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2, i32 noundef 310, i32 noundef %call173.i) #9
  br label %out

if.end181.i:                                      ; preds = %if.end172.i
  %call182.i = tail call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 1048576, i64 noundef 3145728) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182.i)
  %tobool183.not.i = icmp eq i32 %call182.i, 0
  br i1 %tobool183.not.i, label %if.end40, label %do.end187.i

do.end187.i:                                      ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #8
  %call189.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.2, i32 noundef 316, i32 noundef %call182.i) #9
  br label %out

if.end40:                                         ; preds = %if.end181.i
  %17 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %free_space_ctl.i, align 4
  tail call void @__btrfs_remove_free_space_cache(ptr noundef %18) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_extent_size.i) #6
  %19 = ptrtoint ptr %max_extent_size.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %max_extent_size.i, align 8, !annotation !395
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %test_free_space_ops.i) #6
  %20 = ptrtoint ptr %test_free_space_ops.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 ptrtoint (ptr @test_use_bitmap to i32), ptr %test_free_space_ops.i, align 4
  %call.i164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #9
  %21 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %free_space_ctl.i, align 4
  %op.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %op.i, align 8
  store ptr %test_free_space_ops.i, ptr %op.i, align 8
  %call3.i = call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 133955584, i64 noundef 131072, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i166 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i166, label %if.end.i167, label %do.end6.i

do.end6.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2, i32 noundef 434, i32 noundef %call3.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end.i167:                                      ; preds = %if.end40
  %call9.i = call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 134742016, i64 noundef 133693440, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end17.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.2, i32 noundef 442, i32 noundef %call9.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end17.i:                                       ; preds = %if.end.i167
  %25 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %free_space_ctl.i, align 4
  %free_extents.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %free_extents.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %free_extents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.not.i.i = icmp eq i32 %28, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 340, i32 noundef %28, i32 noundef 2) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end.i.i:                                       ; preds = %if.end17.i
  %total_bitmaps.i.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %total_bitmaps.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %total_bitmaps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp4.not.i.i = icmp eq i32 %30, 1
  br i1 %cmp4.not.i.i, label %if.end21.i, label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef %30, i32 noundef 1) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end21.i:                                       ; preds = %if.end.i.i
  %call22.i = call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 135004160, i64 noundef 133431296) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end30.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.2, i32 noundef 461, i32 noundef %call22.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end30.i:                                       ; preds = %if.end21.i
  %call31.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 133955584, i64 noundef 131072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %do.end36.i, label %if.end39.i

do.end36.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.2, i32 noundef 467) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end39.i:                                       ; preds = %if.end30.i
  %call40.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 134742016, i64 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %do.end45.i, label %if.end48.i

do.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.2, i32 noundef 471) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end48.i:                                       ; preds = %if.end39.i
  %call49.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 135004160, i64 noundef 133431296) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end57.i, label %do.end54.i

do.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 481) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end57.i:                                       ; preds = %if.end48.i
  %call58.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 134479872, i64 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end66.i, label %do.end63.i

do.end63.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.2, i32 noundef 490) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end66.i:                                       ; preds = %if.end57.i
  %call67.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 134217728, i64 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end75.i, label %do.end72.i

do.end72.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  %call74.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.2, i32 noundef 499) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end75.i:                                       ; preds = %if.end66.i
  %call76.i = call i32 @btrfs_add_free_space(ptr noundef nonnull %call7, i64 noundef 134217728, i64 noundef 524288) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.end84.i, label %do.end81.i

do.end81.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  %call83.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.2, i32 noundef 510, i32 noundef %call76.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end84.i:                                       ; preds = %if.end75.i
  %call85.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 134217728, i64 noundef 524288) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %do.end90.i, label %if.end93.i

do.end90.i:                                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  %call92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.2, i32 noundef 515) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end93.i:                                       ; preds = %if.end84.i
  %31 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %free_space_ctl.i, align 4
  %free_extents.i519.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %free_extents.i519.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %free_extents.i519.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.not.i520.i = icmp eq i32 %34, 2
  br i1 %cmp.not.i520.i, label %if.end.i525.i, label %do.end.i522.i

do.end.i522.i:                                    ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i521.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 340, i32 noundef %34, i32 noundef 2) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end.i525.i:                                    ; preds = %if.end93.i
  %total_bitmaps.i523.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %32, i32 0, i32 6
  %35 = ptrtoint ptr %total_bitmaps.i523.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %total_bitmaps.i523.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp4.not.i524.i = icmp eq i32 %36, 1
  br i1 %cmp4.not.i524.i, label %if.end97.i, label %do.end7.i527.i

do.end7.i527.i:                                   ; preds = %if.end.i525.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i526.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef %36, i32 noundef 1) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end97.i:                                       ; preds = %if.end.i525.i
  %conv.i169 = zext i32 %sectorsize to i64
  %call98.i = call i32 @btrfs_add_free_space(ptr noundef nonnull %call7, i64 noundef 150994944, i64 noundef %conv.i169) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.end106.i, label %do.end103.i

do.end103.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #8
  %call105.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.2, i32 noundef 535, i32 noundef %call98.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end106.i:                                      ; preds = %if.end97.i
  %37 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %free_space_ctl.i, align 4
  %free_extents.i531.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %free_extents.i531.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %free_extents.i531.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp.not.i532.i = icmp eq i32 %40, 2
  br i1 %cmp.not.i532.i, label %if.end.i537.i, label %do.end.i534.i

do.end.i534.i:                                    ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i533.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 340, i32 noundef %40, i32 noundef 2) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end.i537.i:                                    ; preds = %if.end106.i
  %total_bitmaps.i535.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %38, i32 0, i32 6
  %41 = ptrtoint ptr %total_bitmaps.i535.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %total_bitmaps.i535.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp4.not.i536.i = icmp eq i32 %42, 1
  br i1 %cmp4.not.i536.i, label %if.end110.i, label %do.end7.i539.i

do.end7.i539.i:                                   ; preds = %if.end.i537.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i538.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef %42, i32 noundef 1) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end110.i:                                      ; preds = %if.end.i537.i
  %call111.i = call i32 @btrfs_add_free_space(ptr noundef nonnull %call7, i64 noundef 134086656, i64 noundef 131072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end119.i, label %do.end116.i

do.end116.i:                                      ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #8
  %call118.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.2, i32 noundef 554, i32 noundef %call111.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end119.i:                                      ; preds = %if.end110.i
  %call120.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 134086656, i64 noundef 131072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %do.end125.i, label %if.end128.i

do.end125.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  %call127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.2, i32 noundef 559) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end128.i:                                      ; preds = %if.end119.i
  %43 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %free_space_ctl.i, align 4
  %free_extents.i543.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %free_extents.i543.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %free_extents.i543.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.not.i544.i = icmp eq i32 %46, 2
  br i1 %cmp.not.i544.i, label %if.end.i549.i, label %do.end.i546.i

do.end.i546.i:                                    ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i545.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 340, i32 noundef %46, i32 noundef 2) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end.i549.i:                                    ; preds = %if.end128.i
  %total_bitmaps.i547.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %44, i32 0, i32 6
  %47 = ptrtoint ptr %total_bitmaps.i547.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %total_bitmaps.i547.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp4.not.i548.i = icmp eq i32 %48, 1
  br i1 %cmp4.not.i548.i, label %if.end132.i, label %do.end7.i551.i

do.end7.i551.i:                                   ; preds = %if.end.i549.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i550.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef %48, i32 noundef 1) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end132.i:                                      ; preds = %if.end.i549.i
  %call133.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 133955584, i64 noundef 1048576) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %tobool134.not.i = icmp eq i32 %call133.i, 0
  br i1 %tobool134.not.i, label %do.end138.i, label %if.end141.i

do.end138.i:                                      ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #8
  %call140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.2, i32 noundef 587) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end141.i:                                      ; preds = %if.end132.i
  %49 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %free_space_ctl.i, align 4
  %free_space.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %free_space.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %free_space.i, align 8
  %add.i170 = add i32 %sectorsize, 1048576
  %conv143.i = zext i32 %add.i170 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %conv143.i)
  %cmp.not.i = icmp eq i64 %52, %conv143.i
  br i1 %cmp.not.i, label %if.end151.i, label %do.end148.i

do.end148.i:                                      ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  %call150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.2, i32 noundef 592, i32 noundef %sectorsize) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end151.i:                                      ; preds = %if.end141.i
  %call152.i = call i64 @btrfs_find_space_for_alloc(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 1048576, i64 noundef 0, ptr noundef nonnull %max_extent_size.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 133955584, i64 %call152.i)
  %cmp153.not.i = icmp eq i64 %call152.i, 133955584
  br i1 %cmp153.not.i, label %if.end161.i, label %do.end158.i

do.end158.i:                                      ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #8
  %call160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.2, i32 noundef 602, i64 noundef %call152.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end161.i:                                      ; preds = %if.end151.i
  %call162.i = call fastcc i32 @check_num_extents_and_bitmaps(ptr noundef nonnull %call7, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162.i)
  %tobool163.not.i = icmp eq i32 %call162.i, 0
  br i1 %tobool163.not.i, label %if.end165.i, label %if.end161.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge

if.end161.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge: ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end165.i:                                      ; preds = %if.end161.i
  %53 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %free_space_ctl.i, align 4
  %free_space167.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %free_space167.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %free_space167.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %conv.i169)
  %cmp169.not.i = icmp eq i64 %56, %conv.i169
  br i1 %cmp169.not.i, label %if.end177.i, label %do.end174.i

do.end174.i:                                      ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #8
  %call176.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.2, i32 noundef 615, i32 noundef %sectorsize) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end177.i:                                      ; preds = %if.end165.i
  %call179.i = call i64 @btrfs_find_space_for_alloc(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef %conv.i169, i64 noundef 0, ptr noundef nonnull %max_extent_size.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 150994944, i64 %call179.i)
  %cmp180.not.i = icmp eq i64 %call179.i, 150994944
  br i1 %cmp180.not.i, label %if.end188.i, label %do.end185.i

do.end185.i:                                      ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #8
  %call187.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.2, i32 noundef 624, i32 noundef %sectorsize, i64 noundef %call179.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end188.i:                                      ; preds = %if.end177.i
  %call189.i171 = call fastcc i32 @check_cache_empty(ptr noundef nonnull %call7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i171)
  %tobool190.not.i = icmp eq i32 %call189.i171, 0
  br i1 %tobool190.not.i, label %if.end192.i, label %if.end188.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge

if.end188.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge: ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end192.i:                                      ; preds = %if.end188.i
  %57 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %free_space_ctl.i, align 4
  call void @__btrfs_remove_free_space_cache(ptr noundef %58) #6
  %call194.i = call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 134348800, i64 noundef 131072, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.i)
  %tobool195.not.i = icmp eq i32 %call194.i, 0
  br i1 %tobool195.not.i, label %if.end202.i, label %do.end199.i

do.end199.i:                                      ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  %call201.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2, i32 noundef 645, i32 noundef %call194.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end202.i:                                      ; preds = %if.end192.i
  %call203.i = call i32 @test_add_free_space_entry(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 133693440, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203.i)
  %tobool204.not.i = icmp eq i32 %call203.i, 0
  br i1 %tobool204.not.i, label %if.end211.i, label %do.end208.i

do.end208.i:                                      ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #8
  %call210.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.2, i32 noundef 652, i32 noundef %call203.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end211.i:                                      ; preds = %if.end202.i
  %call212.i = call fastcc i32 @check_num_extents_and_bitmaps(ptr noundef nonnull %call7, i32 noundef 2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212.i)
  %tobool213.not.i = icmp eq i32 %call212.i, 0
  br i1 %tobool213.not.i, label %if.end215.i, label %if.end211.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge

if.end211.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge: ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end215.i:                                      ; preds = %if.end211.i
  %call216.i = call i32 @btrfs_remove_free_space(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 133431296) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216.i)
  %tobool217.not.i = icmp eq i32 %call216.i, 0
  br i1 %tobool217.not.i, label %if.end224.i, label %do.end221.i

do.end221.i:                                      ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #8
  %call223.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.2, i32 noundef 669, i32 noundef %call216.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end224.i:                                      ; preds = %if.end215.i
  %call225.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 134348800, i64 noundef 131072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225.i)
  %tobool226.not.i = icmp eq i32 %call225.i, 0
  br i1 %tobool226.not.i, label %do.end230.i, label %if.end233.i

do.end230.i:                                      ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #8
  %call232.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.2, i32 noundef 675) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end233.i:                                      ; preds = %if.end224.i
  %call234.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 133431296, i64 noundef 262144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234.i)
  %tobool235.not.i = icmp eq i32 %call234.i, 0
  br i1 %tobool235.not.i, label %do.end239.i, label %if.end242.i

do.end239.i:                                      ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #8
  %call241.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.2, i32 noundef 679) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end242.i:                                      ; preds = %if.end233.i
  %call243.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 133431296) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243.i)
  %tobool244.not.i = icmp eq i32 %call243.i, 0
  br i1 %tobool244.not.i, label %if.end251.i, label %do.end248.i

do.end248.i:                                      ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #8
  %call250.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 688) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end251.i:                                      ; preds = %if.end242.i
  %call252.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 133693440, i64 noundef 524288) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252.i)
  %tobool253.not.i = icmp eq i32 %call252.i, 0
  br i1 %tobool253.not.i, label %if.end260.i, label %do.end257.i

do.end257.i:                                      ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #8
  %call259.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.2, i32 noundef 697) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end260.i:                                      ; preds = %if.end251.i
  %call261.i = call i32 @btrfs_add_free_space(ptr noundef nonnull %call7, i64 noundef 133693440, i64 noundef 524288) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261.i)
  %tobool262.not.i = icmp eq i32 %call261.i, 0
  br i1 %tobool262.not.i, label %if.end269.i, label %do.end266.i

do.end266.i:                                      ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #8
  %call268.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.2, i32 noundef 708, i32 noundef %call261.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end269.i:                                      ; preds = %if.end260.i
  %call270.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 133693440, i64 noundef 524288) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270.i)
  %tobool271.not.i = icmp eq i32 %call270.i, 0
  br i1 %tobool271.not.i, label %do.end275.i, label %if.end278.i

do.end275.i:                                      ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #8
  %call277.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.2, i32 noundef 713) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end278.i:                                      ; preds = %if.end269.i
  %call279.i = call fastcc i32 @check_num_extents_and_bitmaps(ptr noundef nonnull %call7, i32 noundef 2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279.i)
  %tobool280.not.i = icmp eq i32 %call279.i, 0
  br i1 %tobool280.not.i, label %if.end282.i, label %if.end278.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge

if.end278.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge: ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end282.i:                                      ; preds = %if.end278.i
  %mul.i172 = shl i32 %sectorsize, 1
  %conv283.i = zext i32 %mul.i172 to i64
  %call284.i = call i32 @btrfs_add_free_space(ptr noundef nonnull %call7, i64 noundef 33554432, i64 noundef %conv283.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284.i)
  %tobool285.not.i = icmp eq i32 %call284.i, 0
  br i1 %tobool285.not.i, label %if.end292.i, label %do.end289.i

do.end289.i:                                      ; preds = %if.end282.i
  call void @__sanitizer_cov_trace_pc() #8
  %call291.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.2, i32 noundef 733, i32 noundef %call284.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end292.i:                                      ; preds = %if.end282.i
  %call293.i = call i32 @btrfs_add_free_space(ptr noundef nonnull %call7, i64 noundef 134217728, i64 noundef 131072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293.i)
  %tobool294.not.i = icmp eq i32 %call293.i, 0
  br i1 %tobool294.not.i, label %if.end301.i, label %do.end298.i

do.end298.i:                                      ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_pc() #8
  %call300.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.2, i32 noundef 744, i32 noundef %call293.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end301.i:                                      ; preds = %if.end292.i
  %call302.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 134217728, i64 noundef 131072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call302.i)
  %tobool303.not.i = icmp eq i32 %call302.i, 0
  br i1 %tobool303.not.i, label %do.end307.i, label %if.end310.i

do.end307.i:                                      ; preds = %if.end301.i
  call void @__sanitizer_cov_trace_pc() #8
  %call309.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.2, i32 noundef 749) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end310.i:                                      ; preds = %if.end301.i
  %call311.i = call fastcc i32 @check_num_extents_and_bitmaps(ptr noundef nonnull %call7, i32 noundef 2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311.i)
  %tobool312.not.i = icmp eq i32 %call311.i, 0
  br i1 %tobool312.not.i, label %if.end314.i, label %if.end310.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge

if.end310.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge: ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end314.i:                                      ; preds = %if.end310.i
  %call315.i = call i32 @test_check_exists(ptr noundef nonnull %call7, i64 noundef 133431296, i64 noundef 1048576) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315.i)
  %tobool316.not.i = icmp eq i32 %call315.i, 0
  br i1 %tobool316.not.i, label %do.end320.i, label %if.end323.i

do.end320.i:                                      ; preds = %if.end314.i
  call void @__sanitizer_cov_trace_pc() #8
  %call322.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.2, i32 noundef 777) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end323.i:                                      ; preds = %if.end314.i
  %59 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %free_space_ctl.i, align 4
  %free_space325.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %free_space325.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %free_space325.i, align 8
  %add327.i = add i32 %mul.i172, 1048576
  %conv328.i = zext i32 %add327.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %conv328.i)
  %cmp329.not.i = icmp eq i64 %62, %conv328.i
  br i1 %cmp329.not.i, label %if.end338.i, label %do.end334.i

do.end334.i:                                      ; preds = %if.end323.i
  call void @__sanitizer_cov_trace_pc() #8
  %call337.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.2, i32 noundef 782, i32 noundef %mul.i172) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end338.i:                                      ; preds = %if.end323.i
  %call339.i = call i64 @btrfs_find_space_for_alloc(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef 1048576, i64 noundef 0, ptr noundef nonnull %max_extent_size.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 133431296, i64 %call339.i)
  %cmp340.not.i = icmp eq i64 %call339.i, 133431296
  br i1 %cmp340.not.i, label %if.end348.i, label %do.end345.i

do.end345.i:                                      ; preds = %if.end338.i
  call void @__sanitizer_cov_trace_pc() #8
  %call347.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.2, i32 noundef 791, i64 noundef %call339.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end348.i:                                      ; preds = %if.end338.i
  %call349.i = call fastcc i32 @check_num_extents_and_bitmaps(ptr noundef nonnull %call7, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call349.i)
  %tobool350.not.i = icmp eq i32 %call349.i, 0
  br i1 %tobool350.not.i, label %if.end352.i, label %if.end348.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge

if.end348.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge: ; preds = %if.end348.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end352.i:                                      ; preds = %if.end348.i
  %63 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %free_space_ctl.i, align 4
  %free_space354.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %free_space354.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %free_space354.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %conv283.i)
  %cmp357.not.i = icmp eq i64 %66, %conv283.i
  br i1 %cmp357.not.i, label %if.end366.i, label %do.end362.i

do.end362.i:                                      ; preds = %if.end352.i
  call void @__sanitizer_cov_trace_pc() #8
  %call365.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.2, i32 noundef 804, i32 noundef %mul.i172) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end366.i:                                      ; preds = %if.end352.i
  %call369.i = call i64 @btrfs_find_space_for_alloc(ptr noundef nonnull %call7, i64 noundef 0, i64 noundef %conv283.i, i64 noundef 0, ptr noundef nonnull %max_extent_size.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554432, i64 %call369.i)
  %cmp370.not.i = icmp eq i64 %call369.i, 33554432
  br i1 %cmp370.not.i, label %if.end379.i, label %do.end375.i

do.end375.i:                                      ; preds = %if.end366.i
  call void @__sanitizer_cov_trace_pc() #8
  %call378.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.2, i32 noundef 813, i32 noundef %mul.i172, i64 noundef %call369.i) #9
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

if.end379.i:                                      ; preds = %if.end366.i
  %call380.i = call fastcc i32 @check_cache_empty(ptr noundef nonnull %call7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call380.i)
  %tobool381.not.i = icmp eq i32 %call380.i, 0
  br i1 %tobool381.not.i, label %if.end44, label %if.end379.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge

if.end379.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge: ; preds = %if.end379.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %test_steal_space_from_bitmap_to_extent.exit.thread

test_steal_space_from_bitmap_to_extent.exit.thread: ; preds = %if.end379.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge, %do.end375.i, %do.end362.i, %if.end348.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge, %do.end345.i, %do.end334.i, %do.end320.i, %if.end310.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge, %do.end307.i, %do.end298.i, %do.end289.i, %if.end278.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge, %do.end275.i, %do.end266.i, %do.end257.i, %do.end248.i, %do.end239.i, %do.end230.i, %do.end221.i, %if.end211.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge, %do.end208.i, %do.end199.i, %if.end188.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge, %do.end185.i, %do.end174.i, %if.end161.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge, %do.end158.i, %do.end148.i, %do.end138.i, %do.end7.i551.i, %do.end.i546.i, %do.end125.i, %do.end116.i, %do.end7.i539.i, %do.end.i534.i, %do.end103.i, %do.end7.i527.i, %do.end.i522.i, %do.end90.i, %do.end81.i, %do.end72.i, %do.end63.i, %do.end54.i, %do.end45.i, %do.end36.i, %do.end27.i, %do.end7.i.i, %do.end.i.i, %do.end14.i, %do.end6.i
  %retval.0.i173.ph = phi i32 [ -22, %do.end7.i551.i ], [ -22, %do.end.i546.i ], [ -22, %do.end7.i539.i ], [ -22, %do.end.i534.i ], [ -22, %do.end7.i527.i ], [ -22, %do.end.i522.i ], [ -22, %do.end7.i.i ], [ -22, %do.end.i.i ], [ %call380.i, %if.end379.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge ], [ %call349.i, %if.end348.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge ], [ %call311.i, %if.end310.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge ], [ %call279.i, %if.end278.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge ], [ %call212.i, %if.end211.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge ], [ %call189.i171, %if.end188.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge ], [ %call162.i, %if.end161.i.test_steal_space_from_bitmap_to_extent.exit.thread_crit_edge ], [ -2, %do.end36.i ], [ -2, %do.end45.i ], [ -2, %do.end90.i ], [ -2, %do.end125.i ], [ -2, %do.end138.i ], [ -2, %do.end230.i ], [ -2, %do.end239.i ], [ -2, %do.end275.i ], [ -2, %do.end307.i ], [ -2, %do.end320.i ], [ -22, %do.end375.i ], [ -22, %do.end362.i ], [ -22, %do.end345.i ], [ -22, %do.end334.i ], [ %call293.i, %do.end298.i ], [ %call284.i, %do.end289.i ], [ %call261.i, %do.end266.i ], [ -22, %do.end257.i ], [ -22, %do.end248.i ], [ %call216.i, %do.end221.i ], [ %call203.i, %do.end208.i ], [ %call194.i, %do.end199.i ], [ -22, %do.end185.i ], [ -22, %do.end174.i ], [ -22, %do.end158.i ], [ -22, %do.end148.i ], [ %call111.i, %do.end116.i ], [ %call98.i, %do.end103.i ], [ %call76.i, %do.end81.i ], [ -22, %do.end72.i ], [ -22, %do.end63.i ], [ -22, %do.end54.i ], [ %call22.i, %do.end27.i ], [ %call9.i, %do.end14.i ], [ %call3.i, %do.end6.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %test_free_space_ops.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_extent_size.i) #6
  br label %out

if.end44:                                         ; preds = %if.end379.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %free_space_ctl.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %free_space_ctl.i, align 4
  %op385.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %op385.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %24, ptr %op385.i, align 8
  %70 = load ptr, ptr %free_space_ctl.i, align 4
  call void @__btrfs_remove_free_space_cache(ptr noundef %70) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %test_free_space_ops.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_extent_size.i) #6
  %call45 = call fastcc i32 @test_bytes_index(ptr noundef nonnull %call7, i32 noundef %sectorsize)
  br label %out

out:                                              ; preds = %if.end44, %test_steal_space_from_bitmap_to_extent.exit.thread, %do.end187.i, %do.end178.i, %do.end169.i, %do.end159.i, %do.end149.i, %do.end139.i, %do.end130.i, %do.end120.i, %do.end111.i, %do.end102.i, %do.end93.i, %do.end84.i159, %do.end75.i154, %do.end66.i149, %do.end57.i144, %do.end48.i139, %do.end39.i134, %do.end30.i129, %do.end21.i124, %do.end12.i119, %do.end4.i114, %do.end68.i, %do.end58.i, %do.end48.i103, %do.end39.i98, %do.end30.i93, %do.end21.i88, %do.end12.i83, %do.end4.i78, %do.end84.i, %do.end75.i, %do.end66.i, %do.end57.i, %do.end48.i, %do.end39.i, %do.end30.i, %do.end21.i, %do.end12.i, %do.end4.i, %do.end21
  %ret.0 = phi i32 [ %3, %do.end21 ], [ %call45, %if.end44 ], [ %retval.0.i173.ph, %test_steal_space_from_bitmap_to_extent.exit.thread ], [ -1, %do.end84.i ], [ -1, %do.end75.i ], [ -1, %do.end66.i ], [ %call52.i, %do.end57.i ], [ %call43.i, %do.end48.i ], [ %call34.i, %do.end39.i ], [ %call25.i, %do.end30.i ], [ -1, %do.end21.i ], [ %call7.i, %do.end12.i ], [ %call1.i, %do.end4.i ], [ -1, %do.end68.i ], [ %call53.i, %do.end58.i ], [ %call43.i99, %do.end48.i103 ], [ %call34.i94, %do.end39.i98 ], [ %call25.i89, %do.end30.i93 ], [ -1, %do.end21.i88 ], [ %call7.i79, %do.end12.i83 ], [ %call1.i75, %do.end4.i78 ], [ %call182.i, %do.end187.i ], [ %call173.i, %do.end178.i ], [ %call164.i, %do.end169.i ], [ -1, %do.end159.i ], [ %call144.i, %do.end149.i ], [ %call134.i, %do.end139.i ], [ %call125.i, %do.end130.i ], [ -1, %do.end120.i ], [ %call106.i, %do.end111.i ], [ %call97.i, %do.end102.i ], [ %call88.i, %do.end93.i ], [ -1, %do.end84.i159 ], [ %call70.i150, %do.end75.i154 ], [ %call61.i145, %do.end66.i149 ], [ -1, %do.end57.i144 ], [ %call43.i135, %do.end48.i139 ], [ %call34.i130, %do.end39.i134 ], [ -1, %do.end30.i129 ], [ %call16.i120, %do.end21.i124 ], [ %call7.i115, %do.end12.i119 ], [ %call1.i111, %do.end4.i114 ]
  call void @btrfs_free_dummy_block_group(ptr noundef nonnull %call7) #6
  call void @btrfs_free_dummy_root(ptr noundef %call16) #6
  call void @btrfs_free_dummy_fs_info(ptr noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end12, %do.end4
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %do.end12 ], [ -12, %do.end4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_fs_info(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_block_group(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_fs_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_global_root_insert(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_bytes_index(ptr noundef %cache, i32 noundef %sectorsize) unnamed_addr #0 align 64 {
entry:
  %test_free_space_ops = alloca %struct.btrfs_free_space_op, align 4
  %max_extent_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %test_free_space_ops) #6
  %0 = ptrtoint ptr %test_free_space_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 ptrtoint (ptr @bytes_index_use_bitmap to i32), ptr %test_free_space_ops, align 4
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 23
  %1 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %free_space_ctl, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_extent_size) #6
  %3 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %max_extent_size, align 8, !annotation !395
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224) #9
  %conv8 = zext i32 %sectorsize to i64
  %call2 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef 0, i64 noundef 1048576, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end5:                                          ; preds = %if.end.8.do.end5_crit_edge, %if.end.7.do.end5_crit_edge, %if.end.6.do.end5_crit_edge, %if.end.5.do.end5_crit_edge, %if.end.4.do.end5_crit_edge, %if.end.3.do.end5_crit_edge, %if.end.2.do.end5_crit_edge, %if.end.1.do.end5_crit_edge, %if.end.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call2.lcssa = phi i32 [ %call2, %entry.do.end5_crit_edge ], [ %call2.1, %if.end.do.end5_crit_edge ], [ %call2.2, %if.end.1.do.end5_crit_edge ], [ %call2.3, %if.end.2.do.end5_crit_edge ], [ %call2.4, %if.end.3.do.end5_crit_edge ], [ %call2.5, %if.end.4.do.end5_crit_edge ], [ %call2.6, %if.end.5.do.end5_crit_edge ], [ %call2.7, %if.end.6.do.end5_crit_edge ], [ %call2.8, %if.end.7.do.end5_crit_edge ], [ %call2.9, %if.end.8.do.end5_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.2, i32 noundef 853, i32 noundef %call2.lcssa) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add10 = add nuw nsw i64 %conv8, 1048576
  %call2.1 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef %add10, i64 noundef 2097152, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.do.end5_crit_edge

if.end.do.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

if.end.1:                                         ; preds = %if.end
  %add9.1 = add nuw nsw i64 %add10, %conv8
  %add10.1 = add nuw nsw i64 %add9.1, 2097152
  %call2.2 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef %add10.1, i64 noundef 3145728, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.do.end5_crit_edge

if.end.1.do.end5_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

if.end.2:                                         ; preds = %if.end.1
  %add9.2 = add nuw nsw i64 %add10.1, %conv8
  %add10.2 = add nuw nsw i64 %add9.2, 3145728
  %call2.3 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef %add10.2, i64 noundef 4194304, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %tobool.not.3 = icmp eq i32 %call2.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.do.end5_crit_edge

if.end.2.do.end5_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

if.end.3:                                         ; preds = %if.end.2
  %add9.3 = add nuw nsw i64 %add10.2, %conv8
  %add10.3 = add nuw nsw i64 %add9.3, 4194304
  %call2.4 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef %add10.3, i64 noundef 5242880, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.4)
  %tobool.not.4 = icmp eq i32 %call2.4, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.do.end5_crit_edge

if.end.3.do.end5_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

if.end.4:                                         ; preds = %if.end.3
  %add9.4 = add nuw nsw i64 %add10.3, %conv8
  %add10.4 = add nuw nsw i64 %add9.4, 5242880
  %call2.5 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef %add10.4, i64 noundef 6291456, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.5)
  %tobool.not.5 = icmp eq i32 %call2.5, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.do.end5_crit_edge

if.end.4.do.end5_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

if.end.5:                                         ; preds = %if.end.4
  %add9.5 = add nuw nsw i64 %add10.4, %conv8
  %add10.5 = add nuw nsw i64 %add9.5, 6291456
  %call2.6 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef %add10.5, i64 noundef 7340032, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.6)
  %tobool.not.6 = icmp eq i32 %call2.6, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.do.end5_crit_edge

if.end.5.do.end5_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

if.end.6:                                         ; preds = %if.end.5
  %add9.6 = add nuw nsw i64 %add10.5, %conv8
  %add10.6 = add nuw nsw i64 %add9.6, 7340032
  %call2.7 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef %add10.6, i64 noundef 8388608, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.7)
  %tobool.not.7 = icmp eq i32 %call2.7, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.do.end5_crit_edge

if.end.6.do.end5_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

if.end.7:                                         ; preds = %if.end.6
  %add9.7 = add nuw nsw i64 %add10.6, %conv8
  %add10.7 = add nuw nsw i64 %add9.7, 8388608
  %call2.8 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef %add10.7, i64 noundef 9437184, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.8)
  %tobool.not.8 = icmp eq i32 %call2.8, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.end.7.do.end5_crit_edge

if.end.7.do.end5_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

if.end.8:                                         ; preds = %if.end.7
  %add9.8 = add nuw nsw i64 %add10.7, %conv8
  %add10.8 = add nuw nsw i64 %add9.8, 9437184
  %call2.9 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef %add10.8, i64 noundef 10485760, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.9)
  %tobool.not.9 = icmp eq i32 %call2.9, 0
  br i1 %tobool.not.9, label %if.end.9, label %if.end.8.do.end5_crit_edge

if.end.8.do.end5_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

if.end.9:                                         ; preds = %if.end.8
  %rb_leftmost = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %2, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost, align 4
  %tobool12.not359 = icmp eq ptr %5, null
  br i1 %tobool12.not359, label %if.end.9.for.end31_crit_edge, label %if.end.9.for.body13_crit_edge

if.end.9.for.body13_crit_edge:                    ; preds = %if.end.9
  br label %for.body13

if.end.9.for.end31_crit_edge:                     ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end31

for.body13:                                       ; preds = %for.inc29.for.body13_crit_edge, %if.end.9.for.body13_crit_edge
  %node.0361 = phi ptr [ %call30, %for.inc29.for.body13_crit_edge ], [ %5, %if.end.9.for.body13_crit_edge ]
  %i.1360 = phi i32 [ %dec, %for.inc29.for.body13_crit_edge ], [ 9, %if.end.9.for.body13_crit_edge ]
  %add15 = shl i32 %i.1360, 20
  %mul16 = add i32 %add15, 1048576
  %conv17 = sext i32 %mul16 to i64
  %bytes18 = getelementptr i8, ptr %node.0361, i32 20
  %6 = ptrtoint ptr %bytes18 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv17)
  %cmp19.not = icmp eq i64 %7, %conv17
  br i1 %cmp19.not, label %for.inc29, label %do.end24

do.end24:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.2, i32 noundef 865, i64 noundef %7, i64 noundef %conv17) #9
  br label %cleanup

for.inc29:                                        ; preds = %for.body13
  %call30 = tail call ptr @rb_next(ptr noundef nonnull %node.0361) #6
  %dec = add i32 %i.1360, -1
  %tobool12.not = icmp eq ptr %call30, null
  br i1 %tobool12.not, label %for.inc29.for.end31_crit_edge, label %for.inc29.for.body13_crit_edge

for.inc29.for.body13_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13

for.inc29.for.end31_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end31

for.end31:                                        ; preds = %for.inc29.for.end31_crit_edge, %if.end.9.for.end31_crit_edge
  %8 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_space_ctl, align 4
  tail call void @__btrfs_remove_free_space_cache(ptr noundef %9) #6
  %call43 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef 0, i64 noundef 1048576, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %for.cond33.1, label %for.end31.do.end48_crit_edge

for.end31.do.end48_crit_edge:                     ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

for.cond33.1:                                     ; preds = %for.end31
  %mul37 = shl i32 %sectorsize, 15
  %conv39.1 = zext i32 %mul37 to i64
  %call43.1 = tail call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef %conv39.1, i64 noundef 2097152, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.1)
  %tobool44.not.1 = icmp eq i32 %call43.1, 0
  br i1 %tobool44.not.1, label %for.end54, label %for.cond33.1.do.end48_crit_edge

for.cond33.1.do.end48_crit_edge:                  ; preds = %for.cond33.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

do.end48:                                         ; preds = %for.cond33.1.do.end48_crit_edge, %for.end31.do.end48_crit_edge
  %call43.lcssa = phi i32 [ %call43, %for.end31.do.end48_crit_edge ], [ %call43.1, %for.cond33.1.do.end48_crit_edge ]
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.2, i32 noundef 877) #9
  br label %cleanup

for.end54:                                        ; preds = %for.cond33.1
  %10 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_leftmost, align 4
  %tobool58.not362 = icmp eq ptr %11, null
  br i1 %tobool58.not362, label %for.end54.for.end80_crit_edge, label %for.end54.for.body59_crit_edge

for.end54.for.body59_crit_edge:                   ; preds = %for.end54
  br label %for.body59

for.end54.for.end80_crit_edge:                    ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80

for.body59:                                       ; preds = %for.inc77.for.body59_crit_edge, %for.end54.for.body59_crit_edge
  %node.1364 = phi ptr [ %call78, %for.inc77.for.body59_crit_edge ], [ %11, %for.end54.for.body59_crit_edge ]
  %i.3363 = phi i32 [ %dec79, %for.inc77.for.body59_crit_edge ], [ 1, %for.end54.for.body59_crit_edge ]
  %add63 = shl i32 %i.3363, 20
  %mul64 = add i32 %add63, 1048576
  %conv65 = sext i32 %mul64 to i64
  %bytes66 = getelementptr i8, ptr %node.1364, i32 20
  %12 = ptrtoint ptr %bytes66 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bytes66, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv65)
  %cmp67.not = icmp eq i64 %13, %conv65
  br i1 %cmp67.not, label %for.inc77, label %do.end72

do.end72:                                         ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.2, i32 noundef 888, i64 noundef %13, i64 noundef %conv65) #9
  br label %cleanup

for.inc77:                                        ; preds = %for.body59
  %call78 = tail call ptr @rb_next(ptr noundef nonnull %node.1364) #6
  %dec79 = add i32 %i.3363, -1
  %tobool58.not = icmp eq ptr %call78, null
  br i1 %tobool58.not, label %for.inc77.for.end80_crit_edge, label %for.inc77.for.body59_crit_edge

for.inc77.for.body59_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body59

for.inc77.for.end80_crit_edge:                    ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80

for.end80:                                        ; preds = %for.inc77.for.end80_crit_edge, %for.end54.for.end80_crit_edge
  %14 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free_space_ctl, align 4
  tail call void @__btrfs_remove_free_space_cache(ptr noundef %15) #6
  %16 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free_space_ctl, align 4
  %op = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op, align 8
  store ptr %test_free_space_ops, ptr %op, align 8
  %call86 = call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef 0, i64 noundef %conv8, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end94, label %do.end91

do.end91:                                         ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #8
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.2, i32 noundef 900) #9
  br label %cleanup

if.end94:                                         ; preds = %for.end80
  %call98 = call i32 @test_add_free_space_entry(ptr noundef %cache, i64 noundef %conv39.1, i64 noundef %conv8, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %for.body110.preheader, label %do.end103

for.body110.preheader:                            ; preds = %if.end94
  %mul111 = shl i32 %sectorsize, 1
  %conv112 = zext i32 %mul111 to i64
  %call114 = call i32 @btrfs_add_free_space(ptr noundef %cache, i64 noundef %conv112, i64 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %for.cond107, label %for.body110.preheader.do.end119_crit_edge

for.body110.preheader.do.end119_crit_edge:        ; preds = %for.body110.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

do.end103:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.2, i32 noundef 907) #9
  br label %cleanup

for.cond107:                                      ; preds = %for.body110.preheader
  %mul111.1 = shl i32 %sectorsize, 2
  %conv112.1 = zext i32 %mul111.1 to i64
  %call114.1 = call i32 @btrfs_add_free_space(ptr noundef %cache, i64 noundef %conv112.1, i64 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.1)
  %tobool115.not.1 = icmp eq i32 %call114.1, 0
  br i1 %tobool115.not.1, label %for.cond107.1, label %for.cond107.do.end119_crit_edge

for.cond107.do.end119_crit_edge:                  ; preds = %for.cond107
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.cond107.1:                                    ; preds = %for.cond107
  %mul111.2 = mul i32 %sectorsize, 6
  %conv112.2 = zext i32 %mul111.2 to i64
  %call114.2 = call i32 @btrfs_add_free_space(ptr noundef %cache, i64 noundef %conv112.2, i64 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.2)
  %tobool115.not.2 = icmp eq i32 %call114.2, 0
  br i1 %tobool115.not.2, label %for.cond107.2, label %for.cond107.1.do.end119_crit_edge

for.cond107.1.do.end119_crit_edge:                ; preds = %for.cond107.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.cond107.2:                                    ; preds = %for.cond107.1
  %mul111.3 = shl i32 %sectorsize, 3
  %conv112.3 = zext i32 %mul111.3 to i64
  %call114.3 = call i32 @btrfs_add_free_space(ptr noundef %cache, i64 noundef %conv112.3, i64 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.3)
  %tobool115.not.3 = icmp eq i32 %call114.3, 0
  br i1 %tobool115.not.3, label %for.cond107.3, label %for.cond107.2.do.end119_crit_edge

for.cond107.2.do.end119_crit_edge:                ; preds = %for.cond107.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.cond107.3:                                    ; preds = %for.cond107.2
  %mul111.4 = mul i32 %sectorsize, 10
  %conv112.4 = zext i32 %mul111.4 to i64
  %call114.4 = call i32 @btrfs_add_free_space(ptr noundef %cache, i64 noundef %conv112.4, i64 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.4)
  %tobool115.not.4 = icmp eq i32 %call114.4, 0
  br i1 %tobool115.not.4, label %for.cond107.4, label %for.cond107.3.do.end119_crit_edge

for.cond107.3.do.end119_crit_edge:                ; preds = %for.cond107.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.cond107.4:                                    ; preds = %for.cond107.3
  %mul111.5 = mul i32 %sectorsize, 12
  %conv112.5 = zext i32 %mul111.5 to i64
  %call114.5 = call i32 @btrfs_add_free_space(ptr noundef %cache, i64 noundef %conv112.5, i64 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.5)
  %tobool115.not.5 = icmp eq i32 %call114.5, 0
  br i1 %tobool115.not.5, label %for.cond107.5, label %for.cond107.4.do.end119_crit_edge

for.cond107.4.do.end119_crit_edge:                ; preds = %for.cond107.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.cond107.5:                                    ; preds = %for.cond107.4
  %mul111.6 = mul i32 %sectorsize, 14
  %conv112.6 = zext i32 %mul111.6 to i64
  %call114.6 = call i32 @btrfs_add_free_space(ptr noundef %cache, i64 noundef %conv112.6, i64 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.6)
  %tobool115.not.6 = icmp eq i32 %call114.6, 0
  br i1 %tobool115.not.6, label %for.cond107.6, label %for.cond107.5.do.end119_crit_edge

for.cond107.5.do.end119_crit_edge:                ; preds = %for.cond107.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.cond107.6:                                    ; preds = %for.cond107.5
  %mul111.7 = shl i32 %sectorsize, 4
  %conv112.7 = zext i32 %mul111.7 to i64
  %call114.7 = call i32 @btrfs_add_free_space(ptr noundef %cache, i64 noundef %conv112.7, i64 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.7)
  %tobool115.not.7 = icmp eq i32 %call114.7, 0
  br i1 %tobool115.not.7, label %for.cond107.7, label %for.cond107.6.do.end119_crit_edge

for.cond107.6.do.end119_crit_edge:                ; preds = %for.cond107.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.cond107.7:                                    ; preds = %for.cond107.6
  %mul111.8 = mul i32 %sectorsize, 18
  %conv112.8 = zext i32 %mul111.8 to i64
  %call114.8 = call i32 @btrfs_add_free_space(ptr noundef %cache, i64 noundef %conv112.8, i64 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.8)
  %tobool115.not.8 = icmp eq i32 %call114.8, 0
  br i1 %tobool115.not.8, label %for.cond107.8, label %for.cond107.7.do.end119_crit_edge

for.cond107.7.do.end119_crit_edge:                ; preds = %for.cond107.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.cond107.8:                                    ; preds = %for.cond107.7
  %add127 = mul i32 %sectorsize, 32769
  %conv128 = zext i32 %add127 to i64
  %call130 = call i32 @btrfs_add_free_space(ptr noundef %cache, i64 noundef %conv128, i64 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end138, label %do.end135

do.end119:                                        ; preds = %for.cond107.7.do.end119_crit_edge, %for.cond107.6.do.end119_crit_edge, %for.cond107.5.do.end119_crit_edge, %for.cond107.4.do.end119_crit_edge, %for.cond107.3.do.end119_crit_edge, %for.cond107.2.do.end119_crit_edge, %for.cond107.1.do.end119_crit_edge, %for.cond107.do.end119_crit_edge, %for.body110.preheader.do.end119_crit_edge
  %call114.lcssa = phi i32 [ %call114, %for.body110.preheader.do.end119_crit_edge ], [ %call114.1, %for.cond107.do.end119_crit_edge ], [ %call114.2, %for.cond107.1.do.end119_crit_edge ], [ %call114.3, %for.cond107.2.do.end119_crit_edge ], [ %call114.4, %for.cond107.3.do.end119_crit_edge ], [ %call114.5, %for.cond107.4.do.end119_crit_edge ], [ %call114.6, %for.cond107.5.do.end119_crit_edge ], [ %call114.7, %for.cond107.6.do.end119_crit_edge ], [ %call114.8, %for.cond107.7.do.end119_crit_edge ]
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.2, i32 noundef 919, i32 noundef %call114.lcssa) #9
  br label %cleanup

do.end135:                                        ; preds = %for.cond107.8
  call void @__sanitizer_cov_trace_pc() #8
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.2, i32 noundef 931, i32 noundef %call130) #9
  br label %cleanup

if.end138:                                        ; preds = %for.cond107.8
  %20 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rb_leftmost, align 4
  %bytes144 = getelementptr i8, ptr %21, i32 20
  %22 = ptrtoint ptr %bytes144 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes144, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv112.4)
  %cmp147.not = icmp eq i64 %23, %conv112.4
  br i1 %cmp147.not, label %if.end155, label %do.end152

do.end152:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.2, i32 noundef 942) #9
  br label %cleanup

if.end155:                                        ; preds = %if.end138
  %24 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %max_extent_size, align 8
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %25 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %start, align 8
  %mul156 = mul i32 %sectorsize, 3
  %conv157 = zext i32 %mul156 to i64
  %call158 = call i64 @btrfs_find_space_for_alloc(ptr noundef %cache, i64 noundef %26, i64 noundef %conv157, i64 noundef 0, ptr noundef nonnull %max_extent_size) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call158)
  %cmp159.not = icmp eq i64 %call158, 0
  br i1 %cmp159.not, label %if.end167, label %do.end164

do.end164:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.2, i32 noundef 950) #9
  br label %cleanup

if.end167:                                        ; preds = %if.end155
  %27 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %max_extent_size, align 8
  %mul168 = shl i32 %sectorsize, 1
  %conv169 = zext i32 %mul168 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %conv169)
  %cmp170.not = icmp eq i64 %28, %conv169
  br i1 %cmp170.not, label %if.end180, label %do.end175

do.end175:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.2, i32 noundef 956, i64 noundef %28, i64 noundef %conv169) #9
  br label %cleanup

if.end180:                                        ; preds = %if.end167
  %29 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rb_leftmost, align 4
  %bytes186 = getelementptr i8, ptr %30, i32 20
  %31 = ptrtoint ptr %bytes186 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes186, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %28)
  %cmp189.not = icmp eq i64 %32, %28
  br i1 %cmp189.not, label %if.end197, label %do.end194

do.end194:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  %call196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.2, i32 noundef 967) #9
  br label %cleanup

if.end197:                                        ; preds = %if.end180
  %sub = mul i32 %sectorsize, 32767
  %conv199 = zext i32 %sub to i64
  %call201 = call i32 @btrfs_add_free_space(ptr noundef %cache, i64 noundef %conv199, i64 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.end209, label %do.end206

do.end206:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.2, i32 noundef 975, i32 noundef %call201) #9
  br label %cleanup

if.end209:                                        ; preds = %if.end197
  %33 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rb_leftmost, align 4
  %bytes215 = getelementptr i8, ptr %34, i32 20
  %35 = ptrtoint ptr %bytes215 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bytes215, align 8
  %mul216 = mul i32 %sectorsize, 11
  %conv217 = zext i32 %mul216 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %conv217)
  %cmp218.not = icmp eq i64 %36, %conv217
  br i1 %cmp218.not, label %if.end226, label %do.end223

do.end223:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  %call225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.2, i32 noundef 982) #9
  br label %cleanup

if.end226:                                        ; preds = %if.end209
  %37 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %max_extent_size, align 8
  %38 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %start, align 8
  %call230 = call i64 @btrfs_find_space_for_alloc(ptr noundef %cache, i64 noundef %39, i64 noundef %28, i64 noundef 0, ptr noundef nonnull %max_extent_size) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call230, i64 %conv39.1)
  %cmp233.not = icmp eq i64 %call230, %conv39.1
  br i1 %cmp233.not, label %if.end243, label %do.end238

do.end238:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  %call242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.2, i32 noundef 996, i64 noundef %call230, i64 noundef %conv39.1) #9
  br label %cleanup

if.end243:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %free_space_ctl, align 4
  %op245 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %op245 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %19, ptr %op245, align 8
  %43 = load ptr, ptr %free_space_ctl, align 4
  call void @__btrfs_remove_free_space_cache(ptr noundef %43) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end243, %do.end238, %do.end223, %do.end206, %do.end194, %do.end175, %do.end164, %do.end152, %do.end135, %do.end119, %do.end103, %do.end91, %do.end72, %do.end48, %do.end24, %do.end5
  %retval.0 = phi i32 [ %call2.lcssa, %do.end5 ], [ -22, %do.end24 ], [ %call43.lcssa, %do.end48 ], [ -22, %do.end72 ], [ %call86, %do.end91 ], [ %call98, %do.end103 ], [ %call114.lcssa, %do.end119 ], [ %call130, %do.end135 ], [ -22, %do.end152 ], [ -22, %do.end164 ], [ -22, %do.end175 ], [ -22, %do.end194 ], [ %call201, %do.end206 ], [ -22, %do.end223 ], [ -22, %do.end238 ], [ 0, %if.end243 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_extent_size) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %test_free_space_ops) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_block_group(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_add_free_space(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_remove_free_space(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @test_check_exists(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__btrfs_remove_free_space_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @test_add_free_space_entry(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @test_use_bitmap(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readnone %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %free_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %ctl, i32 0, i32 5
  %0 = ptrtoint ptr %free_extents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_num_extents_and_bitmaps(ptr nocapture noundef readonly %cache, i32 noundef %num_extents, i32 noundef %num_bitmaps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 23
  %0 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_space_ctl, align 4
  %free_extents = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %free_extents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_extents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %num_extents)
  %cmp.not = icmp eq i32 %3, %num_extents
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 340, i32 noundef %3, i32 noundef %num_extents) #9
  br label %return

if.end:                                           ; preds = %entry
  %total_bitmaps = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %total_bitmaps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_bitmaps, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %num_bitmaps)
  %cmp4.not = icmp eq i32 %5, %num_bitmaps
  br i1 %cmp4.not, label %if.end.return_crit_edge, label %do.end7

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef %5, i32 noundef %num_bitmaps) #9
  br label %return

return:                                           ; preds = %do.end7, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_find_space_for_alloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_cache_empty(ptr noundef %cache) unnamed_addr #0 align 64 {
entry:
  %max_extent_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_extent_size) #6
  %0 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %max_extent_size, align 8, !annotation !395
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 23
  %1 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %free_space_ctl, align 4
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %free_space, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.not = icmp eq i64 %4, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.2, i32 noundef 363) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i64 @btrfs_find_space_for_alloc(ptr noundef %cache, i64 noundef 0, i64 noundef 4096, i64 noundef 0, ptr noundef nonnull %max_extent_size) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1)
  %cmp2.not = icmp eq i64 %call1, 0
  br i1 %cmp2.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.2, i32 noundef 372, i64 noundef %call1) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %free_space_ctl, align 4
  %free_extents.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %free_extents.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %free_extents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 340, i32 noundef %8, i32 noundef 0) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %total_bitmaps.i = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %total_bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_bitmaps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.not.i = icmp eq i32 %10, 0
  br i1 %cmp4.not.i, label %if.end.i.cleanup_crit_edge, label %do.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef %10, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end7.i, %if.end.i.cleanup_crit_edge, %do.end.i, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ -22, %do.end.i ], [ -22, %do.end7.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_extent_size) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bytes_index_use_bitmap(ptr nocapture noundef readnone %ctl, ptr nocapture noundef readnone %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !307, !309, !310, !311, !312, !314, !315, !317, !318, !319, !320, !322, !323, !324, !326, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !373, !374, !375, !377, !378, !379, !381, !382, !384, !385}
!llvm.module.flags = !{!386, !387, !388, !389, !390, !391, !392, !393}
!llvm.ident = !{!394}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 1012, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @btrfs_test_free_space_cache._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @btrfs_test_free_space_cache._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 1015, i32 3}
!8 = !{ptr @btrfs_test_free_space_cache._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @btrfs_test_free_space_cache._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @btrfs_test_free_space_cache._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 1027, i32 3}
!12 = !{ptr @btrfs_test_free_space_cache._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @btrfs_test_free_space_cache._entry.8, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 1034, i32 3}
!15 = !{ptr @btrfs_test_free_space_cache._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 24, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @test_extents._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @test_extents._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 29, i32 3}
!23 = !{ptr @test_extents._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @test_extents._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 35, i32 3}
!27 = !{ptr @test_extents._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @test_extents._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 40, i32 3}
!31 = !{ptr @test_extents._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @test_extents._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 47, i32 3}
!35 = !{ptr @test_extents._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @test_extents._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 53, i32 3}
!39 = !{ptr @test_extents._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @test_extents._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 59, i32 3}
!43 = !{ptr @test_extents._entry.27, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @test_extents._entry_ptr.29, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.31, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 65, i32 3}
!47 = !{ptr @test_extents._entry.30, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @test_extents._entry_ptr.32, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.34, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 70, i32 3}
!51 = !{ptr @test_extents._entry.33, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @test_extents._entry_ptr.35, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.37, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 75, i32 3}
!55 = !{ptr @test_extents._entry.36, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @test_extents._entry_ptr.38, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 80, i32 3}
!59 = !{ptr @test_extents._entry.39, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @test_extents._entry_ptr.41, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.42, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 95, i32 2}
!63 = !{ptr @.str.43, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @test_bitmaps._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @test_bitmaps._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.45, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 99, i32 3}
!68 = !{ptr @test_bitmaps._entry.44, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @test_bitmaps._entry_ptr.46, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.48, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 105, i32 3}
!72 = !{ptr @test_bitmaps._entry.47, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @test_bitmaps._entry_ptr.49, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.51, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 110, i32 3}
!76 = !{ptr @test_bitmaps._entry.50, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @test_bitmaps._entry_ptr.52, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.54, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 116, i32 3}
!80 = !{ptr @test_bitmaps._entry.53, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @test_bitmaps._entry_ptr.55, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.57, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 122, i32 3}
!84 = !{ptr @test_bitmaps._entry.56, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @test_bitmaps._entry_ptr.58, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.60, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 136, i32 3}
!88 = !{ptr @test_bitmaps._entry.59, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @test_bitmaps._entry_ptr.61, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.63, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 143, i32 3}
!92 = !{ptr @test_bitmaps._entry.62, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @test_bitmaps._entry_ptr.64, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.66, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 148, i32 3}
!96 = !{ptr @test_bitmaps._entry.65, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @test_bitmaps._entry_ptr.67, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.68, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 164, i32 2}
!100 = !{ptr @.str.69, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @test_bitmaps_and_extents._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @test_bitmaps_and_extents._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.71, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 173, i32 3}
!105 = !{ptr @test_bitmaps_and_extents._entry.70, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @test_bitmaps_and_extents._entry_ptr.72, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.74, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 179, i32 3}
!109 = !{ptr @test_bitmaps_and_extents._entry.73, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @test_bitmaps_and_extents._entry_ptr.75, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.77, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 185, i32 3}
!113 = !{ptr @test_bitmaps_and_extents._entry.76, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @test_bitmaps_and_extents._entry_ptr.78, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.80, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 190, i32 3}
!117 = !{ptr @test_bitmaps_and_extents._entry.79, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @test_bitmaps_and_extents._entry_ptr.81, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.83, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 197, i32 3}
!121 = !{ptr @test_bitmaps_and_extents._entry.82, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @test_bitmaps_and_extents._entry_ptr.84, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.86, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 203, i32 3}
!125 = !{ptr @test_bitmaps_and_extents._entry.85, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @test_bitmaps_and_extents._entry_ptr.87, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.89, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 208, i32 3}
!129 = !{ptr @test_bitmaps_and_extents._entry.88, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @test_bitmaps_and_extents._entry_ptr.90, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.92, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 218, i32 3}
!133 = !{ptr @test_bitmaps_and_extents._entry.91, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @test_bitmaps_and_extents._entry_ptr.93, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @test_bitmaps_and_extents._entry.94, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 224, i32 3}
!137 = !{ptr @test_bitmaps_and_extents._entry_ptr.95, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.97, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 229, i32 3}
!140 = !{ptr @test_bitmaps_and_extents._entry.96, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @test_bitmaps_and_extents._entry_ptr.98, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.100, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 238, i32 3}
!144 = !{ptr @test_bitmaps_and_extents._entry.99, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @test_bitmaps_and_extents._entry_ptr.101, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.103, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 244, i32 3}
!148 = !{ptr @test_bitmaps_and_extents._entry.102, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @test_bitmaps_and_extents._entry_ptr.104, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.106, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 250, i32 3}
!152 = !{ptr @test_bitmaps_and_extents._entry.105, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @test_bitmaps_and_extents._entry_ptr.107, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.109, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 255, i32 3}
!156 = !{ptr @test_bitmaps_and_extents._entry.108, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @test_bitmaps_and_extents._entry_ptr.110, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.112, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 272, i32 3}
!160 = !{ptr @test_bitmaps_and_extents._entry.111, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @test_bitmaps_and_extents._entry_ptr.113, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @test_bitmaps_and_extents._entry.114, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 279, i32 3}
!164 = !{ptr @test_bitmaps_and_extents._entry_ptr.115, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.117, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 285, i32 3}
!167 = !{ptr @test_bitmaps_and_extents._entry.116, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @test_bitmaps_and_extents._entry_ptr.118, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.120, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 290, i32 3}
!171 = !{ptr @test_bitmaps_and_extents._entry.119, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @test_bitmaps_and_extents._entry_ptr.121, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.123, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 304, i32 3}
!175 = !{ptr @test_bitmaps_and_extents._entry.122, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @test_bitmaps_and_extents._entry_ptr.124, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @test_bitmaps_and_extents._entry.125, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 310, i32 3}
!179 = !{ptr @test_bitmaps_and_extents._entry_ptr.126, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.128, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 316, i32 3}
!182 = !{ptr @test_bitmaps_and_extents._entry.127, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @test_bitmaps_and_extents._entry_ptr.129, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.130, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 406, i32 2}
!186 = !{ptr @.str.131, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @test_steal_space_from_bitmap_to_extent._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.132, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 434, i32 3}
!191 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.133, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.134, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 442, i32 3}
!194 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.135, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.137, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 461, i32 3}
!197 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.136, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.138, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.140, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 467, i32 3}
!201 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.139, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.141, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.142, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 471, i32 3}
!205 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.143, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.145, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 481, i32 3}
!208 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.144, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.146, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.148, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 490, i32 3}
!212 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.147, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.149, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.150, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 499, i32 3}
!216 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.151, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.153, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 510, i32 3}
!219 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.152, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.154, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.156, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 515, i32 3}
!223 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.155, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.157, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.158, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 535, i32 3}
!227 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.159, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.160, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 554, i32 3}
!230 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.161, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.163, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 559, i32 3}
!233 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.162, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.164, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.166, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 587, i32 3}
!237 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.165, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.167, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.169, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 592, i32 3}
!241 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.168, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.170, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.172, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 600, i32 3}
!245 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.171, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.173, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.175, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 615, i32 3}
!249 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.174, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.176, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.178, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 623, i32 3}
!253 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.177, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.179, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.180, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 645, i32 3}
!257 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.181, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.182, !259, !"_entry", i1 false, i1 false}
!259 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 652, i32 3}
!260 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.183, !259, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.184, !262, !"_entry", i1 false, i1 false}
!262 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 669, i32 3}
!263 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.185, !262, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.186, !265, !"_entry", i1 false, i1 false}
!265 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 675, i32 3}
!266 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.187, !265, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.188, !268, !"_entry", i1 false, i1 false}
!268 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 679, i32 3}
!269 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.189, !268, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.190, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 688, i32 3}
!272 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.191, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.192, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 697, i32 3}
!275 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.193, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.194, !277, !"_entry", i1 false, i1 false}
!277 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 708, i32 3}
!278 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.195, !277, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.196, !280, !"_entry", i1 false, i1 false}
!280 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 713, i32 3}
!281 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.197, !280, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.198, !283, !"_entry", i1 false, i1 false}
!283 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 733, i32 3}
!284 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.199, !283, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.200, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 744, i32 3}
!287 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.201, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.202, !289, !"_entry", i1 false, i1 false}
!289 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 749, i32 3}
!290 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.203, !289, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.204, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 777, i32 3}
!293 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.205, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.206, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 782, i32 3}
!296 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.207, !295, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.208, !298, !"_entry", i1 false, i1 false}
!298 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 789, i32 3}
!299 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.209, !298, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.210, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 804, i32 3}
!302 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.211, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.213, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 812, i32 3}
!305 = !{ptr @test_steal_space_from_bitmap_to_extent._entry.212, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @test_steal_space_from_bitmap_to_extent._entry_ptr.214, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.215, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 338, i32 3}
!309 = !{ptr @.str.216, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @check_num_extents_and_bitmaps._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @check_num_extents_and_bitmaps._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @check_num_extents_and_bitmaps._entry.217, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 344, i32 3}
!314 = !{ptr @check_num_extents_and_bitmaps._entry_ptr.218, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.219, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 363, i32 3}
!317 = !{ptr @.str.220, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @check_cache_empty._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @check_cache_empty._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.222, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 371, i32 3}
!322 = !{ptr @check_cache_empty._entry.221, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @check_cache_empty._entry_ptr.223, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.224, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 845, i32 2}
!326 = !{ptr @.str.225, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @test_bytes_index._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @test_bytes_index._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.227, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 853, i32 4}
!331 = !{ptr @test_bytes_index._entry.226, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @test_bytes_index._entry_ptr.228, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.230, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 864, i32 4}
!335 = !{ptr @test_bytes_index._entry.229, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @test_bytes_index._entry_ptr.231, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.233, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 877, i32 4}
!339 = !{ptr @test_bytes_index._entry.232, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @test_bytes_index._entry_ptr.234, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @test_bytes_index._entry.235, !342, !"_entry", i1 false, i1 false}
!342 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 887, i32 4}
!343 = !{ptr @test_bytes_index._entry_ptr.236, !342, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @test_bytes_index._entry.237, !345, !"_entry", i1 false, i1 false}
!345 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 900, i32 3}
!346 = !{ptr @test_bytes_index._entry_ptr.238, !345, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.240, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 907, i32 3}
!349 = !{ptr @test_bytes_index._entry.239, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @test_bytes_index._entry_ptr.241, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.243, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 919, i32 4}
!353 = !{ptr @test_bytes_index._entry.242, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @test_bytes_index._entry_ptr.244, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.246, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 931, i32 3}
!357 = !{ptr @test_bytes_index._entry.245, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @test_bytes_index._entry_ptr.247, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.249, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 942, i32 3}
!361 = !{ptr @test_bytes_index._entry.248, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @test_bytes_index._entry_ptr.250, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.252, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 950, i32 3}
!365 = !{ptr @test_bytes_index._entry.251, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @test_bytes_index._entry_ptr.253, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.255, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 955, i32 3}
!369 = !{ptr @test_bytes_index._entry.254, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @test_bytes_index._entry_ptr.256, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.258, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 967, i32 3}
!373 = !{ptr @test_bytes_index._entry.257, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @test_bytes_index._entry_ptr.259, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.261, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 975, i32 3}
!377 = !{ptr @test_bytes_index._entry.260, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @test_bytes_index._entry_ptr.262, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @test_bytes_index._entry.263, !380, !"_entry", i1 false, i1 false}
!380 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 982, i32 3}
!381 = !{ptr @test_bytes_index._entry_ptr.264, !380, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.266, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../fs/btrfs/tests/free-space-tests.c", i32 994, i32 3}
!384 = !{ptr @test_bytes_index._entry.265, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @test_bytes_index._entry_ptr.267, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{i32 1, !"wchar_size", i32 2}
!387 = !{i32 1, !"min_enum_size", i32 4}
!388 = !{i32 8, !"branch-target-enforcement", i32 0}
!389 = !{i32 8, !"sign-return-address", i32 0}
!390 = !{i32 8, !"sign-return-address-all", i32 0}
!391 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!392 = !{i32 7, !"uwtable", i32 1}
!393 = !{i32 7, !"frame-pointer", i32 2}
!394 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!395 = !{!"auto-init"}
