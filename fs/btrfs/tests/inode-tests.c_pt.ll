; ModuleID = '/llk/IR_all_yes/fs/btrfs/tests/inode-tests.c_pt.bc'
source_filename = "../fs/btrfs/tests/inode-tests.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_timespec = type <{ i64, i32 }>
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
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.extent_map = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, %struct.refcount_struct, i32, %struct.list_head }

@btrfs_test_inodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016BTRFS: selftest: running inode tests\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"btrfs_test_inodes\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fs/btrfs/tests/inode-tests.c\00", [35 x i8] zeroinitializer }, align 32
@btrfs_test_inodes._entry_ptr = internal global ptr @btrfs_test_inodes._entry, section ".printk_index", align 4
@compressed_only = internal global { i32, [28 x i8] } zeroinitializer, align 32
@prealloc_only = internal global { i32, [28 x i8] } zeroinitializer, align 32
@test_btrfs_get_extent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016BTRFS: selftest: running btrfs_get_extent tests\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_btrfs_get_extent\00", [42 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr = internal global ptr @test_btrfs_get_extent._entry, section ".printk_index", align 4
@test_btrfs_get_extent._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013BTRFS: selftest: %s:%d %s\0A\00", [35 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.7 = internal global ptr @test_btrfs_get_extent._entry.5, section ".printk_index", align 4
@test_error = external dso_local local_unnamed_addr global [0 x ptr], align 4
@test_btrfs_get_extent._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.9 = internal global ptr @test_btrfs_get_extent._entry.8, section ".printk_index", align 4
@test_btrfs_get_extent._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.11 = internal global ptr @test_btrfs_get_extent._entry.10, section ".printk_index", align 4
@test_btrfs_get_extent._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.13 = internal global ptr @test_btrfs_get_extent._entry.12, section ".printk_index", align 4
@test_btrfs_get_extent._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013BTRFS: selftest: %s:%d got an error when we shouldn't have\0A\00", [34 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.16 = internal global ptr @test_btrfs_get_extent._entry.14, section ".printk_index", align 4
@test_btrfs_get_extent._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013BTRFS: selftest: %s:%d expected a hole, got %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.19 = internal global ptr @test_btrfs_get_extent._entry.17, section ".printk_index", align 4
@test_btrfs_get_extent._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.21 = internal global ptr @test_btrfs_get_extent._entry.20, section ".printk_index", align 4
@test_btrfs_get_extent._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.23 = internal global ptr @test_btrfs_get_extent._entry.22, section ".printk_index", align 4
@test_btrfs_get_extent._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013BTRFS: selftest: %s:%d unexpected extent wanted start 0 len 5, got start %llu len %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.26 = internal global ptr @test_btrfs_get_extent._entry.24, section ".printk_index", align 4
@test_btrfs_get_extent._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013BTRFS: selftest: %s:%d unexpected flags set, want 0 have %lu\0A\00", [32 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.29 = internal global ptr @test_btrfs_get_extent._entry.27, section ".printk_index", align 4
@test_btrfs_get_extent._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.31 = internal global ptr @test_btrfs_get_extent._entry.30, section ".printk_index", align 4
@test_btrfs_get_extent._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013BTRFS: selftest: %s:%d expected an inline, got %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.34 = internal global ptr @test_btrfs_get_extent._entry.32, section ".printk_index", align 4
@test_btrfs_get_extent._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013BTRFS: selftest: %s:%d unexpected extent wanted start %llu len 1, got start %llu len %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.37 = internal global ptr @test_btrfs_get_extent._entry.35, section ".printk_index", align 4
@test_btrfs_get_extent._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.39 = internal global ptr @test_btrfs_get_extent._entry.38, section ".printk_index", align 4
@test_btrfs_get_extent._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.41 = internal global ptr @test_btrfs_get_extent._entry.40, section ".printk_index", align 4
@test_btrfs_get_extent._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.43 = internal global ptr @test_btrfs_get_extent._entry.42, section ".printk_index", align 4
@test_btrfs_get_extent._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.4, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013BTRFS: selftest: %s:%d unexpected extent wanted start %llu len 4, got start %llu len %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.46 = internal global ptr @test_btrfs_get_extent._entry.44, section ".printk_index", align 4
@test_btrfs_get_extent._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.48 = internal global ptr @test_btrfs_get_extent._entry.47, section ".printk_index", align 4
@test_btrfs_get_extent._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.50 = internal global ptr @test_btrfs_get_extent._entry.49, section ".printk_index", align 4
@test_btrfs_get_extent._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013BTRFS: selftest: %s:%d expected a real extent, got %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.53 = internal global ptr @test_btrfs_get_extent._entry.51, section ".printk_index", align 4
@test_btrfs_get_extent._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.4, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013BTRFS: selftest: %s:%d unexpected extent wanted start %llu len 4095, got start %llu len %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.56 = internal global ptr @test_btrfs_get_extent._entry.54, section ".printk_index", align 4
@test_btrfs_get_extent._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.58 = internal global ptr @test_btrfs_get_extent._entry.57, section ".printk_index", align 4
@test_btrfs_get_extent._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013BTRFS: selftest: %s:%d wrong orig offset, want %llu, have %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.61 = internal global ptr @test_btrfs_get_extent._entry.59, section ".printk_index", align 4
@test_btrfs_get_extent._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.63 = internal global ptr @test_btrfs_get_extent._entry.62, section ".printk_index", align 4
@test_btrfs_get_extent._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.65 = internal global ptr @test_btrfs_get_extent._entry.64, section ".printk_index", align 4
@test_btrfs_get_extent._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.4, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013BTRFS: selftest: %s:%d unexpected extent start %llu len %u, got start %llu len %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.68 = internal global ptr @test_btrfs_get_extent._entry.66, section ".printk_index", align 4
@test_btrfs_get_extent._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.70 = internal global ptr @test_btrfs_get_extent._entry.69, section ".printk_index", align 4
@test_btrfs_get_extent._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.72 = internal global ptr @test_btrfs_get_extent._entry.71, section ".printk_index", align 4
@test_btrfs_get_extent._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.74 = internal global ptr @test_btrfs_get_extent._entry.73, section ".printk_index", align 4
@test_btrfs_get_extent._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.76 = internal global ptr @test_btrfs_get_extent._entry.75, section ".printk_index", align 4
@test_btrfs_get_extent._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013BTRFS: selftest: %s:%d unexpected extent wanted start %llu len %u, got start %llu len %llu\0A\00", [34 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.79 = internal global ptr @test_btrfs_get_extent._entry.77, section ".printk_index", align 4
@test_btrfs_get_extent._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.81 = internal global ptr @test_btrfs_get_extent._entry.80, section ".printk_index", align 4
@test_btrfs_get_extent._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.83 = internal global ptr @test_btrfs_get_extent._entry.82, section ".printk_index", align 4
@test_btrfs_get_extent._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.85 = internal global ptr @test_btrfs_get_extent._entry.84, section ".printk_index", align 4
@test_btrfs_get_extent._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.87 = internal global ptr @test_btrfs_get_extent._entry.86, section ".printk_index", align 4
@test_btrfs_get_extent._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.89 = internal global ptr @test_btrfs_get_extent._entry.88, section ".printk_index", align 4
@test_btrfs_get_extent._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.91 = internal global ptr @test_btrfs_get_extent._entry.90, section ".printk_index", align 4
@test_btrfs_get_extent._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.4, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013BTRFS: selftest: %s:%d wrong block start, want %llu, have %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.94 = internal global ptr @test_btrfs_get_extent._entry.92, section ".printk_index", align 4
@test_btrfs_get_extent._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.96 = internal global ptr @test_btrfs_get_extent._entry.95, section ".printk_index", align 4
@test_btrfs_get_extent._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.98 = internal global ptr @test_btrfs_get_extent._entry.97, section ".printk_index", align 4
@test_btrfs_get_extent._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.100 = internal global ptr @test_btrfs_get_extent._entry.99, section ".printk_index", align 4
@test_btrfs_get_extent._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.4, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013BTRFS: selftest: %s:%d unexpected flags set, want %lu have %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.103 = internal global ptr @test_btrfs_get_extent._entry.101, section ".printk_index", align 4
@test_btrfs_get_extent._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.105 = internal global ptr @test_btrfs_get_extent._entry.104, section ".printk_index", align 4
@test_btrfs_get_extent._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.107 = internal global ptr @test_btrfs_get_extent._entry.106, section ".printk_index", align 4
@test_btrfs_get_extent._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.109 = internal global ptr @test_btrfs_get_extent._entry.108, section ".printk_index", align 4
@test_btrfs_get_extent._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.111 = internal global ptr @test_btrfs_get_extent._entry.110, section ".printk_index", align 4
@test_btrfs_get_extent._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.4, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.113 = internal global ptr @test_btrfs_get_extent._entry.112, section ".printk_index", align 4
@test_btrfs_get_extent._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.115 = internal global ptr @test_btrfs_get_extent._entry.114, section ".printk_index", align 4
@test_btrfs_get_extent._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.117 = internal global ptr @test_btrfs_get_extent._entry.116, section ".printk_index", align 4
@test_btrfs_get_extent._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.119 = internal global ptr @test_btrfs_get_extent._entry.118, section ".printk_index", align 4
@test_btrfs_get_extent._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.121 = internal global ptr @test_btrfs_get_extent._entry.120, section ".printk_index", align 4
@test_btrfs_get_extent._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.123 = internal global ptr @test_btrfs_get_extent._entry.122, section ".printk_index", align 4
@test_btrfs_get_extent._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.4, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013BTRFS: selftest: %s:%d unexpected orig offset, wanted %llu, have %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.126 = internal global ptr @test_btrfs_get_extent._entry.124, section ".printk_index", align 4
@test_btrfs_get_extent._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.4, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013BTRFS: selftest: %s:%d unexpected block start, wanted %llu, have %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.129 = internal global ptr @test_btrfs_get_extent._entry.127, section ".printk_index", align 4
@test_btrfs_get_extent._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.131 = internal global ptr @test_btrfs_get_extent._entry.130, section ".printk_index", align 4
@test_btrfs_get_extent._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.133 = internal global ptr @test_btrfs_get_extent._entry.132, section ".printk_index", align 4
@test_btrfs_get_extent._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.135 = internal global ptr @test_btrfs_get_extent._entry.134, section ".printk_index", align 4
@test_btrfs_get_extent._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.4, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.137 = internal global ptr @test_btrfs_get_extent._entry.136, section ".printk_index", align 4
@test_btrfs_get_extent._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.139 = internal global ptr @test_btrfs_get_extent._entry.138, section ".printk_index", align 4
@test_btrfs_get_extent._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.4, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.141 = internal global ptr @test_btrfs_get_extent._entry.140, section ".printk_index", align 4
@test_btrfs_get_extent._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.143 = internal global ptr @test_btrfs_get_extent._entry.142, section ".printk_index", align 4
@test_btrfs_get_extent._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.145 = internal global ptr @test_btrfs_get_extent._entry.144, section ".printk_index", align 4
@test_btrfs_get_extent._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.147 = internal global ptr @test_btrfs_get_extent._entry.146, section ".printk_index", align 4
@test_btrfs_get_extent._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.4, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.149 = internal global ptr @test_btrfs_get_extent._entry.148, section ".printk_index", align 4
@test_btrfs_get_extent._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.151 = internal global ptr @test_btrfs_get_extent._entry.150, section ".printk_index", align 4
@test_btrfs_get_extent._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.4, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013BTRFS: selftest: %s:%d unexpected compress type, wanted %d, got %d\0A\00", [58 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.154 = internal global ptr @test_btrfs_get_extent._entry.152, section ".printk_index", align 4
@test_btrfs_get_extent._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.156 = internal global ptr @test_btrfs_get_extent._entry.155, section ".printk_index", align 4
@test_btrfs_get_extent._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.158 = internal global ptr @test_btrfs_get_extent._entry.157, section ".printk_index", align 4
@test_btrfs_get_extent._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.160 = internal global ptr @test_btrfs_get_extent._entry.159, section ".printk_index", align 4
@test_btrfs_get_extent._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.4, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.162 = internal global ptr @test_btrfs_get_extent._entry.161, section ".printk_index", align 4
@test_btrfs_get_extent._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.164 = internal global ptr @test_btrfs_get_extent._entry.163, section ".printk_index", align 4
@test_btrfs_get_extent._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.4, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.166 = internal global ptr @test_btrfs_get_extent._entry.165, section ".printk_index", align 4
@test_btrfs_get_extent._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.168 = internal global ptr @test_btrfs_get_extent._entry.167, section ".printk_index", align 4
@test_btrfs_get_extent._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.170 = internal global ptr @test_btrfs_get_extent._entry.169, section ".printk_index", align 4
@test_btrfs_get_extent._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.172 = internal global ptr @test_btrfs_get_extent._entry.171, section ".printk_index", align 4
@test_btrfs_get_extent._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.174 = internal global ptr @test_btrfs_get_extent._entry.173, section ".printk_index", align 4
@test_btrfs_get_extent._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.176 = internal global ptr @test_btrfs_get_extent._entry.175, section ".printk_index", align 4
@test_btrfs_get_extent._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.178 = internal global ptr @test_btrfs_get_extent._entry.177, section ".printk_index", align 4
@test_btrfs_get_extent._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.4, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013BTRFS: selftest: %s:%d block start does not match, want %llu got %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.181 = internal global ptr @test_btrfs_get_extent._entry.179, section ".printk_index", align 4
@test_btrfs_get_extent._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.183 = internal global ptr @test_btrfs_get_extent._entry.182, section ".printk_index", align 4
@test_btrfs_get_extent._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.4, ptr @.str.2, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.185 = internal global ptr @test_btrfs_get_extent._entry.184, section ".printk_index", align 4
@test_btrfs_get_extent._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.187 = internal global ptr @test_btrfs_get_extent._entry.186, section ".printk_index", align 4
@test_btrfs_get_extent._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.4, ptr @.str.2, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.189 = internal global ptr @test_btrfs_get_extent._entry.188, section ".printk_index", align 4
@test_btrfs_get_extent._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.191 = internal global ptr @test_btrfs_get_extent._entry.190, section ".printk_index", align 4
@test_btrfs_get_extent._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.193 = internal global ptr @test_btrfs_get_extent._entry.192, section ".printk_index", align 4
@test_btrfs_get_extent._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.195 = internal global ptr @test_btrfs_get_extent._entry.194, section ".printk_index", align 4
@test_btrfs_get_extent._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.197 = internal global ptr @test_btrfs_get_extent._entry.196, section ".printk_index", align 4
@test_btrfs_get_extent._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.199 = internal global ptr @test_btrfs_get_extent._entry.198, section ".printk_index", align 4
@test_btrfs_get_extent._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.201 = internal global ptr @test_btrfs_get_extent._entry.200, section ".printk_index", align 4
@test_btrfs_get_extent._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.4, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013BTRFS: selftest: %s:%d expected a hole extent, got %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.204 = internal global ptr @test_btrfs_get_extent._entry.202, section ".printk_index", align 4
@test_btrfs_get_extent._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.206 = internal global ptr @test_btrfs_get_extent._entry.205, section ".printk_index", align 4
@test_btrfs_get_extent._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.4, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.208 = internal global ptr @test_btrfs_get_extent._entry.207, section ".printk_index", align 4
@test_btrfs_get_extent._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.210 = internal global ptr @test_btrfs_get_extent._entry.209, section ".printk_index", align 4
@test_btrfs_get_extent._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.212 = internal global ptr @test_btrfs_get_extent._entry.211, section ".printk_index", align 4
@test_btrfs_get_extent._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.4, ptr @.str.2, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.214 = internal global ptr @test_btrfs_get_extent._entry.213, section ".printk_index", align 4
@test_btrfs_get_extent._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.4, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.216 = internal global ptr @test_btrfs_get_extent._entry.215, section ".printk_index", align 4
@test_btrfs_get_extent._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.218 = internal global ptr @test_btrfs_get_extent._entry.217, section ".printk_index", align 4
@test_btrfs_get_extent._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.4, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_get_extent._entry_ptr.220 = internal global ptr @test_btrfs_get_extent._entry.219, section ".printk_index", align 4
@test_hole_first._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016BTRFS: selftest: running hole first btrfs_get_extent test\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_hole_first\00", [16 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr = internal global ptr @test_hole_first._entry, section ".printk_index", align 4
@test_hole_first._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.222, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.224 = internal global ptr @test_hole_first._entry.223, section ".printk_index", align 4
@test_hole_first._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.222, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.226 = internal global ptr @test_hole_first._entry.225, section ".printk_index", align 4
@test_hole_first._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.222, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.228 = internal global ptr @test_hole_first._entry.227, section ".printk_index", align 4
@test_hole_first._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.222, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.230 = internal global ptr @test_hole_first._entry.229, section ".printk_index", align 4
@test_hole_first._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.222, ptr @.str.2, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.232 = internal global ptr @test_hole_first._entry.231, section ".printk_index", align 4
@test_hole_first._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.222, ptr @.str.2, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.234 = internal global ptr @test_hole_first._entry.233, section ".printk_index", align 4
@test_hole_first._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.222, ptr @.str.2, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013BTRFS: selftest: %s:%d unexpected extent wanted start 0 len %u, got start %llu len %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.237 = internal global ptr @test_hole_first._entry.235, section ".printk_index", align 4
@test_hole_first._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.222, ptr @.str.2, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013BTRFS: selftest: %s:%d wrong flags, wanted %lu, have %lu\0A\00", [36 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.240 = internal global ptr @test_hole_first._entry.238, section ".printk_index", align 4
@test_hole_first._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.222, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.242 = internal global ptr @test_hole_first._entry.241, section ".printk_index", align 4
@test_hole_first._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.222, ptr @.str.2, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.244 = internal global ptr @test_hole_first._entry.243, section ".printk_index", align 4
@test_hole_first._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.222, ptr @.str.2, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013BTRFS: selftest: %s:%d unexpected extent wanted start %u len %u, got start %llu len %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.247 = internal global ptr @test_hole_first._entry.245, section ".printk_index", align 4
@test_hole_first._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.222, ptr @.str.2, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013BTRFS: selftest: %s:%d unexpected flags set, wanted 0 got %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@test_hole_first._entry_ptr.250 = internal global ptr @test_hole_first._entry.248, section ".printk_index", align 4
@test_extent_accounting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.252, ptr @.str.2, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016BTRFS: selftest: running outstanding_extents tests\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_extent_accounting\00", [41 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr = internal global ptr @test_extent_accounting._entry, section ".printk_index", align 4
@test_extent_accounting._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.252, ptr @.str.2, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.254 = internal global ptr @test_extent_accounting._entry.253, section ".printk_index", align 4
@test_extent_accounting._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.252, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.256 = internal global ptr @test_extent_accounting._entry.255, section ".printk_index", align 4
@test_extent_accounting._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.252, ptr @.str.2, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.258 = internal global ptr @test_extent_accounting._entry.257, section ".printk_index", align 4
@test_extent_accounting._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.252, ptr @.str.2, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013BTRFS: selftest: %s:%d btrfs_set_extent_delalloc returned %d\0A\00", [32 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.261 = internal global ptr @test_extent_accounting._entry.259, section ".printk_index", align 4
@test_extent_accounting._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.252, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013BTRFS: selftest: %s:%d miscount, wanted 1, got %u\0A\00", [43 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.264 = internal global ptr @test_extent_accounting._entry.262, section ".printk_index", align 4
@test_extent_accounting._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.252, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.266 = internal global ptr @test_extent_accounting._entry.265, section ".printk_index", align 4
@test_extent_accounting._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.252, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013BTRFS: selftest: %s:%d miscount, wanted 2, got %u\0A\00", [43 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.269 = internal global ptr @test_extent_accounting._entry.267, section ".printk_index", align 4
@test_extent_accounting._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.252, ptr @.str.2, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013BTRFS: selftest: %s:%d clear_extent_bit returned %d\0A\00", [41 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.272 = internal global ptr @test_extent_accounting._entry.270, section ".printk_index", align 4
@test_extent_accounting._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.252, ptr @.str.2, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.274 = internal global ptr @test_extent_accounting._entry.273, section ".printk_index", align 4
@test_extent_accounting._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.252, ptr @.str.2, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.276 = internal global ptr @test_extent_accounting._entry.275, section ".printk_index", align 4
@test_extent_accounting._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.252, ptr @.str.2, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.278 = internal global ptr @test_extent_accounting._entry.277, section ".printk_index", align 4
@test_extent_accounting._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.252, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.280 = internal global ptr @test_extent_accounting._entry.279, section ".printk_index", align 4
@test_extent_accounting._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.252, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013BTRFS: selftest: %s:%d miscount, wanted 4, got %u\0A\00", [43 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.283 = internal global ptr @test_extent_accounting._entry.281, section ".printk_index", align 4
@test_extent_accounting._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.252, ptr @.str.2, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.285 = internal global ptr @test_extent_accounting._entry.284, section ".printk_index", align 4
@test_extent_accounting._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.252, ptr @.str.2, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013BTRFS: selftest: %s:%d miscount, wanted 3, got %u\0A\00", [43 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.288 = internal global ptr @test_extent_accounting._entry.286, section ".printk_index", align 4
@test_extent_accounting._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.252, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.290 = internal global ptr @test_extent_accounting._entry.289, section ".printk_index", align 4
@test_extent_accounting._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.252, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.292 = internal global ptr @test_extent_accounting._entry.291, section ".printk_index", align 4
@test_extent_accounting._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.252, ptr @.str.2, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.294 = internal global ptr @test_extent_accounting._entry.293, section ".printk_index", align 4
@test_extent_accounting._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.252, ptr @.str.2, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.296 = internal global ptr @test_extent_accounting._entry.295, section ".printk_index", align 4
@test_extent_accounting._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.252, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.298 = internal global ptr @test_extent_accounting._entry.297, section ".printk_index", align 4
@test_extent_accounting._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.252, ptr @.str.2, i32 1087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013BTRFS: selftest: %s:%d miscount, wanted 0, got %u\0A\00", [43 x i8] zeroinitializer }, align 32
@test_extent_accounting._entry_ptr.301 = internal global ptr @test_extent_accounting._entry.299, section ".printk_index", align 4
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1106, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [16 x i8] c"compressed_only\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 213, i32 22 }
@___asan_gen_.317 = private unnamed_addr constant [14 x i8] c"prealloc_only\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 212, i32 22 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 227, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 231, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 237, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 243, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 249, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 262, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 266, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 281, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 285, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 289, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 295, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 303, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 307, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 312, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 318, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 331, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 335, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 339, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 345, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 354, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 358, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 362, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 368, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 372, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 382, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 386, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 390, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 396, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 400, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 411, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 415, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 419, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 425, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 433, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 437, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 441, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 447, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 451, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 457, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 467, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 471, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 475, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 481, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 486, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 496, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 500, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 504, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 510, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 515, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 526, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 530, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 534, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 540, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 544, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 549, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 559, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 563, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 567, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 573, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 578, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 583, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 594, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 598, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 602, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 608, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 613, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 618, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 628, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 632, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 636, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 642, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 647, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 652, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 663, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 667, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 671, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 677, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 681, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 690, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 694, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 699, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 705, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 710, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 715, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 725, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 729, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 733, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 739, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 743, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 752, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 756, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 765, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 771, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 776, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 785, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 789, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 793, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 799, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 803, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 825, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 829, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 835, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 841, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 847, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 865, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 869, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 873, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 879, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 887, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 891, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 895, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 901, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 922, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 926, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 932, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 938, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 948, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 953, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 963, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 968, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 980, i32 3 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 985, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 996, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1001, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1014, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1019, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1031, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1036, i32 3 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1048, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1053, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1066, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1071, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1081, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.830 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.831 = private constant [32 x i8] c"../fs/btrfs/tests/inode-tests.c\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.831, i32 1086, i32 3 }
@llvm.compiler.used = appending global [312 x ptr] [ptr @btrfs_test_inodes._entry, ptr @btrfs_test_inodes._entry_ptr, ptr @test_btrfs_get_extent._entry, ptr @test_btrfs_get_extent._entry.10, ptr @test_btrfs_get_extent._entry.101, ptr @test_btrfs_get_extent._entry.104, ptr @test_btrfs_get_extent._entry.106, ptr @test_btrfs_get_extent._entry.108, ptr @test_btrfs_get_extent._entry.110, ptr @test_btrfs_get_extent._entry.112, ptr @test_btrfs_get_extent._entry.114, ptr @test_btrfs_get_extent._entry.116, ptr @test_btrfs_get_extent._entry.118, ptr @test_btrfs_get_extent._entry.12, ptr @test_btrfs_get_extent._entry.120, ptr @test_btrfs_get_extent._entry.122, ptr @test_btrfs_get_extent._entry.124, ptr @test_btrfs_get_extent._entry.127, ptr @test_btrfs_get_extent._entry.130, ptr @test_btrfs_get_extent._entry.132, ptr @test_btrfs_get_extent._entry.134, ptr @test_btrfs_get_extent._entry.136, ptr @test_btrfs_get_extent._entry.138, ptr @test_btrfs_get_extent._entry.14, ptr @test_btrfs_get_extent._entry.140, ptr @test_btrfs_get_extent._entry.142, ptr @test_btrfs_get_extent._entry.144, ptr @test_btrfs_get_extent._entry.146, ptr @test_btrfs_get_extent._entry.148, ptr @test_btrfs_get_extent._entry.150, ptr @test_btrfs_get_extent._entry.152, ptr @test_btrfs_get_extent._entry.155, ptr @test_btrfs_get_extent._entry.157, ptr @test_btrfs_get_extent._entry.159, ptr @test_btrfs_get_extent._entry.161, ptr @test_btrfs_get_extent._entry.163, ptr @test_btrfs_get_extent._entry.165, ptr @test_btrfs_get_extent._entry.167, ptr @test_btrfs_get_extent._entry.169, ptr @test_btrfs_get_extent._entry.17, ptr @test_btrfs_get_extent._entry.171, ptr @test_btrfs_get_extent._entry.173, ptr @test_btrfs_get_extent._entry.175, ptr @test_btrfs_get_extent._entry.177, ptr @test_btrfs_get_extent._entry.179, ptr @test_btrfs_get_extent._entry.182, ptr @test_btrfs_get_extent._entry.184, ptr @test_btrfs_get_extent._entry.186, ptr @test_btrfs_get_extent._entry.188, ptr @test_btrfs_get_extent._entry.190, ptr @test_btrfs_get_extent._entry.192, ptr @test_btrfs_get_extent._entry.194, ptr @test_btrfs_get_extent._entry.196, ptr @test_btrfs_get_extent._entry.198, ptr @test_btrfs_get_extent._entry.20, ptr @test_btrfs_get_extent._entry.200, ptr @test_btrfs_get_extent._entry.202, ptr @test_btrfs_get_extent._entry.205, ptr @test_btrfs_get_extent._entry.207, ptr @test_btrfs_get_extent._entry.209, ptr @test_btrfs_get_extent._entry.211, ptr @test_btrfs_get_extent._entry.213, ptr @test_btrfs_get_extent._entry.215, ptr @test_btrfs_get_extent._entry.217, ptr @test_btrfs_get_extent._entry.219, ptr @test_btrfs_get_extent._entry.22, ptr @test_btrfs_get_extent._entry.24, ptr @test_btrfs_get_extent._entry.27, ptr @test_btrfs_get_extent._entry.30, ptr @test_btrfs_get_extent._entry.32, ptr @test_btrfs_get_extent._entry.35, ptr @test_btrfs_get_extent._entry.38, ptr @test_btrfs_get_extent._entry.40, ptr @test_btrfs_get_extent._entry.42, ptr @test_btrfs_get_extent._entry.44, ptr @test_btrfs_get_extent._entry.47, ptr @test_btrfs_get_extent._entry.49, ptr @test_btrfs_get_extent._entry.5, ptr @test_btrfs_get_extent._entry.51, ptr @test_btrfs_get_extent._entry.54, ptr @test_btrfs_get_extent._entry.57, ptr @test_btrfs_get_extent._entry.59, ptr @test_btrfs_get_extent._entry.62, ptr @test_btrfs_get_extent._entry.64, ptr @test_btrfs_get_extent._entry.66, ptr @test_btrfs_get_extent._entry.69, ptr @test_btrfs_get_extent._entry.71, ptr @test_btrfs_get_extent._entry.73, ptr @test_btrfs_get_extent._entry.75, ptr @test_btrfs_get_extent._entry.77, ptr @test_btrfs_get_extent._entry.8, ptr @test_btrfs_get_extent._entry.80, ptr @test_btrfs_get_extent._entry.82, ptr @test_btrfs_get_extent._entry.84, ptr @test_btrfs_get_extent._entry.86, ptr @test_btrfs_get_extent._entry.88, ptr @test_btrfs_get_extent._entry.90, ptr @test_btrfs_get_extent._entry.92, ptr @test_btrfs_get_extent._entry.95, ptr @test_btrfs_get_extent._entry.97, ptr @test_btrfs_get_extent._entry.99, ptr @test_btrfs_get_extent._entry_ptr, ptr @test_btrfs_get_extent._entry_ptr.100, ptr @test_btrfs_get_extent._entry_ptr.103, ptr @test_btrfs_get_extent._entry_ptr.105, ptr @test_btrfs_get_extent._entry_ptr.107, ptr @test_btrfs_get_extent._entry_ptr.109, ptr @test_btrfs_get_extent._entry_ptr.11, ptr @test_btrfs_get_extent._entry_ptr.111, ptr @test_btrfs_get_extent._entry_ptr.113, ptr @test_btrfs_get_extent._entry_ptr.115, ptr @test_btrfs_get_extent._entry_ptr.117, ptr @test_btrfs_get_extent._entry_ptr.119, ptr @test_btrfs_get_extent._entry_ptr.121, ptr @test_btrfs_get_extent._entry_ptr.123, ptr @test_btrfs_get_extent._entry_ptr.126, ptr @test_btrfs_get_extent._entry_ptr.129, ptr @test_btrfs_get_extent._entry_ptr.13, ptr @test_btrfs_get_extent._entry_ptr.131, ptr @test_btrfs_get_extent._entry_ptr.133, ptr @test_btrfs_get_extent._entry_ptr.135, ptr @test_btrfs_get_extent._entry_ptr.137, ptr @test_btrfs_get_extent._entry_ptr.139, ptr @test_btrfs_get_extent._entry_ptr.141, ptr @test_btrfs_get_extent._entry_ptr.143, ptr @test_btrfs_get_extent._entry_ptr.145, ptr @test_btrfs_get_extent._entry_ptr.147, ptr @test_btrfs_get_extent._entry_ptr.149, ptr @test_btrfs_get_extent._entry_ptr.151, ptr @test_btrfs_get_extent._entry_ptr.154, ptr @test_btrfs_get_extent._entry_ptr.156, ptr @test_btrfs_get_extent._entry_ptr.158, ptr @test_btrfs_get_extent._entry_ptr.16, ptr @test_btrfs_get_extent._entry_ptr.160, ptr @test_btrfs_get_extent._entry_ptr.162, ptr @test_btrfs_get_extent._entry_ptr.164, ptr @test_btrfs_get_extent._entry_ptr.166, ptr @test_btrfs_get_extent._entry_ptr.168, ptr @test_btrfs_get_extent._entry_ptr.170, ptr @test_btrfs_get_extent._entry_ptr.172, ptr @test_btrfs_get_extent._entry_ptr.174, ptr @test_btrfs_get_extent._entry_ptr.176, ptr @test_btrfs_get_extent._entry_ptr.178, ptr @test_btrfs_get_extent._entry_ptr.181, ptr @test_btrfs_get_extent._entry_ptr.183, ptr @test_btrfs_get_extent._entry_ptr.185, ptr @test_btrfs_get_extent._entry_ptr.187, ptr @test_btrfs_get_extent._entry_ptr.189, ptr @test_btrfs_get_extent._entry_ptr.19, ptr @test_btrfs_get_extent._entry_ptr.191, ptr @test_btrfs_get_extent._entry_ptr.193, ptr @test_btrfs_get_extent._entry_ptr.195, ptr @test_btrfs_get_extent._entry_ptr.197, ptr @test_btrfs_get_extent._entry_ptr.199, ptr @test_btrfs_get_extent._entry_ptr.201, ptr @test_btrfs_get_extent._entry_ptr.204, ptr @test_btrfs_get_extent._entry_ptr.206, ptr @test_btrfs_get_extent._entry_ptr.208, ptr @test_btrfs_get_extent._entry_ptr.21, ptr @test_btrfs_get_extent._entry_ptr.210, ptr @test_btrfs_get_extent._entry_ptr.212, ptr @test_btrfs_get_extent._entry_ptr.214, ptr @test_btrfs_get_extent._entry_ptr.216, ptr @test_btrfs_get_extent._entry_ptr.218, ptr @test_btrfs_get_extent._entry_ptr.220, ptr @test_btrfs_get_extent._entry_ptr.23, ptr @test_btrfs_get_extent._entry_ptr.26, ptr @test_btrfs_get_extent._entry_ptr.29, ptr @test_btrfs_get_extent._entry_ptr.31, ptr @test_btrfs_get_extent._entry_ptr.34, ptr @test_btrfs_get_extent._entry_ptr.37, ptr @test_btrfs_get_extent._entry_ptr.39, ptr @test_btrfs_get_extent._entry_ptr.41, ptr @test_btrfs_get_extent._entry_ptr.43, ptr @test_btrfs_get_extent._entry_ptr.46, ptr @test_btrfs_get_extent._entry_ptr.48, ptr @test_btrfs_get_extent._entry_ptr.50, ptr @test_btrfs_get_extent._entry_ptr.53, ptr @test_btrfs_get_extent._entry_ptr.56, ptr @test_btrfs_get_extent._entry_ptr.58, ptr @test_btrfs_get_extent._entry_ptr.61, ptr @test_btrfs_get_extent._entry_ptr.63, ptr @test_btrfs_get_extent._entry_ptr.65, ptr @test_btrfs_get_extent._entry_ptr.68, ptr @test_btrfs_get_extent._entry_ptr.7, ptr @test_btrfs_get_extent._entry_ptr.70, ptr @test_btrfs_get_extent._entry_ptr.72, ptr @test_btrfs_get_extent._entry_ptr.74, ptr @test_btrfs_get_extent._entry_ptr.76, ptr @test_btrfs_get_extent._entry_ptr.79, ptr @test_btrfs_get_extent._entry_ptr.81, ptr @test_btrfs_get_extent._entry_ptr.83, ptr @test_btrfs_get_extent._entry_ptr.85, ptr @test_btrfs_get_extent._entry_ptr.87, ptr @test_btrfs_get_extent._entry_ptr.89, ptr @test_btrfs_get_extent._entry_ptr.9, ptr @test_btrfs_get_extent._entry_ptr.91, ptr @test_btrfs_get_extent._entry_ptr.94, ptr @test_btrfs_get_extent._entry_ptr.96, ptr @test_btrfs_get_extent._entry_ptr.98, ptr @test_extent_accounting._entry, ptr @test_extent_accounting._entry.253, ptr @test_extent_accounting._entry.255, ptr @test_extent_accounting._entry.257, ptr @test_extent_accounting._entry.259, ptr @test_extent_accounting._entry.262, ptr @test_extent_accounting._entry.265, ptr @test_extent_accounting._entry.267, ptr @test_extent_accounting._entry.270, ptr @test_extent_accounting._entry.273, ptr @test_extent_accounting._entry.275, ptr @test_extent_accounting._entry.277, ptr @test_extent_accounting._entry.279, ptr @test_extent_accounting._entry.281, ptr @test_extent_accounting._entry.284, ptr @test_extent_accounting._entry.286, ptr @test_extent_accounting._entry.289, ptr @test_extent_accounting._entry.291, ptr @test_extent_accounting._entry.293, ptr @test_extent_accounting._entry.295, ptr @test_extent_accounting._entry.297, ptr @test_extent_accounting._entry.299, ptr @test_extent_accounting._entry_ptr, ptr @test_extent_accounting._entry_ptr.254, ptr @test_extent_accounting._entry_ptr.256, ptr @test_extent_accounting._entry_ptr.258, ptr @test_extent_accounting._entry_ptr.261, ptr @test_extent_accounting._entry_ptr.264, ptr @test_extent_accounting._entry_ptr.266, ptr @test_extent_accounting._entry_ptr.269, ptr @test_extent_accounting._entry_ptr.272, ptr @test_extent_accounting._entry_ptr.274, ptr @test_extent_accounting._entry_ptr.276, ptr @test_extent_accounting._entry_ptr.278, ptr @test_extent_accounting._entry_ptr.280, ptr @test_extent_accounting._entry_ptr.283, ptr @test_extent_accounting._entry_ptr.285, ptr @test_extent_accounting._entry_ptr.288, ptr @test_extent_accounting._entry_ptr.290, ptr @test_extent_accounting._entry_ptr.292, ptr @test_extent_accounting._entry_ptr.294, ptr @test_extent_accounting._entry_ptr.296, ptr @test_extent_accounting._entry_ptr.298, ptr @test_extent_accounting._entry_ptr.301, ptr @test_hole_first._entry, ptr @test_hole_first._entry.223, ptr @test_hole_first._entry.225, ptr @test_hole_first._entry.227, ptr @test_hole_first._entry.229, ptr @test_hole_first._entry.231, ptr @test_hole_first._entry.233, ptr @test_hole_first._entry.235, ptr @test_hole_first._entry.238, ptr @test_hole_first._entry.241, ptr @test_hole_first._entry.243, ptr @test_hole_first._entry.245, ptr @test_hole_first._entry.248, ptr @test_hole_first._entry_ptr, ptr @test_hole_first._entry_ptr.224, ptr @test_hole_first._entry_ptr.226, ptr @test_hole_first._entry_ptr.228, ptr @test_hole_first._entry_ptr.230, ptr @test_hole_first._entry_ptr.232, ptr @test_hole_first._entry_ptr.234, ptr @test_hole_first._entry_ptr.237, ptr @test_hole_first._entry_ptr.240, ptr @test_hole_first._entry_ptr.242, ptr @test_hole_first._entry_ptr.244, ptr @test_hole_first._entry_ptr.247, ptr @test_hole_first._entry_ptr.250, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @compressed_only, ptr @prealloc_only, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.15, ptr @.str.18, ptr @.str.25, ptr @.str.28, ptr @.str.33, ptr @.str.36, ptr @.str.45, ptr @.str.52, ptr @.str.55, ptr @.str.60, ptr @.str.67, ptr @.str.78, ptr @.str.93, ptr @.str.102, ptr @.str.125, ptr @.str.128, ptr @.str.153, ptr @.str.180, ptr @.str.203, ptr @.str.221, ptr @.str.222, ptr @.str.236, ptr @.str.239, ptr @.str.246, ptr @.str.249, ptr @.str.251, ptr @.str.252, ptr @.str.260, ptr @.str.263, ptr @.str.268, ptr @.str.271, ptr @.str.282, ptr @.str.287, ptr @.str.300], section "llvm.metadata"
@0 = internal global [177 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_inodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compressed_only to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prealloc_only to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_get_extent._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_hole_first._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_extent_accounting._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_test_inodes(i32 noundef %sectorsize, i32 noundef %nodesize) local_unnamed_addr #0 align 64 {
entry:
  %path.i.i = alloca %struct.btrfs_path, align 4
  %key.i.i = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull @compressed_only) #5
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull @prealloc_only) #5
  %call1 = tail call fastcc i32 @test_btrfs_get_extent(i32 noundef %sectorsize, i32 noundef %nodesize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221) #8
  %call1.i = tail call ptr @btrfs_new_test_inode() #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %test_hole_first.exit.thread, label %if.end.i

test_hole_first.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 4) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 4), align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 829, ptr noundef %0) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call7.i = tail call ptr @btrfs_alloc_dummy_fs_info(i32 noundef %nodesize, i32 noundef %sectorsize) #5
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end.i.if.then143.sink.split.i_crit_edge, label %if.end15.i

if.end.i.if.then143.sink.split.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then143.sink.split.i

if.end15.i:                                       ; preds = %if.end.i
  %call16.i = tail call ptr @btrfs_alloc_dummy_root(ptr noundef nonnull %call7.i) #5
  %cmp.i.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end15.i.if.then143.sink.split.i_crit_edge, label %if.end24.i

if.end15.i.if.then143.sink.split.i_crit_edge:     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then143.sink.split.i

if.end24.i:                                       ; preds = %if.end15.i
  %conv.i = zext i32 %nodesize to i64
  %call25.i = tail call ptr @alloc_dummy_extent_buffer(ptr noundef nonnull %call7.i, i64 noundef %conv.i) #5
  %node.i = getelementptr inbounds %struct.btrfs_root, ptr %call16.i, i32 0, i32 1
  %1 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call25.i, ptr %node.i, align 4
  %tobool27.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool27.not.i, label %if.end24.i.if.then143.sink.split.i_crit_edge, label %if.end34.i

if.end24.i.if.then143.sink.split.i_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then143.sink.split.i

if.end34.i:                                       ; preds = %if.end24.i
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %call25.i, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %3) #5
  %4 = ptrtoint ptr %call25.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %call25.i, align 8
  %conv.i.i = trunc i64 %5 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %nritems.i.i, align 1
  %7 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node.i, align 4
  %pages.i205.i = getelementptr inbounds %struct.extent_buffer, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %pages.i205.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages.i205.i, align 4
  %call.i206.i = tail call ptr @page_address(ptr noundef %10) #5
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %8, align 8
  %conv.i207.i = trunc i64 %12 to i32
  %and.i208.i = and i32 %conv.i207.i, 4095
  %add.ptr.i209.i = getelementptr i8, ptr %call.i206.i, i32 %and.i208.i
  %level.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i209.i, i32 0, i32 8
  %13 = ptrtoint ptr %level.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %level.i.i, align 1
  %add.ptr.i210.i = getelementptr i8, ptr %call1.i, i32 -864
  %14 = ptrtoint ptr %add.ptr.i210.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16.i, ptr %add.ptr.i210.i, align 8
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %path.i.i) #5
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node.i, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i.i) #5
  %17 = getelementptr inbounds %struct.btrfs_key, ptr %key.i.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.btrfs_key, ptr %key.i.i, i32 0, i32 2
  %19 = getelementptr inbounds i8, ptr %path.i.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 72)
  %21 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %16, ptr %path.i.i, align 4
  %22 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1, ptr %key.i.i, align 8
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %17, align 8
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 0, ptr %18, align 1
  call void @btrfs_setup_item_for_insert(ptr noundef %call16.i, ptr noundef nonnull %path.i.i, ptr noundef nonnull %key.i.i, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i) #5
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %path.i.i) #5
  %conv39.i = zext i32 %sectorsize to i64
  call fastcc void @insert_extent(ptr noundef %call16.i, i64 noundef %conv39.i, i64 noundef %conv39.i, i64 noundef %conv39.i, i64 noundef 0, i64 noundef %conv39.i, i64 noundef %conv39.i, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1) #5
  %mul.i = shl i32 %sectorsize, 1
  %conv45.i = zext i32 %mul.i to i64
  %call46.i = call ptr @btrfs_get_extent(ptr noundef %add.ptr.i210.i, ptr noundef null, i32 noundef 0, i64 noundef 0, i64 noundef %conv45.i) #5
  %cmp.i212.i = icmp ugt ptr %call46.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212.i, label %do.end51.i, label %if.end54.i

do.end51.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 865) #8
  br label %out.i

if.end54.i:                                       ; preds = %if.end34.i
  %block_start.i = getelementptr inbounds %struct.extent_map, ptr %call46.i, i32 0, i32 8
  %25 = ptrtoint ptr %block_start.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %block_start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %26)
  %cmp.not.i = icmp eq i64 %26, -3
  br i1 %cmp.not.i, label %if.end63.i, label %do.end59.i

do.end59.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  %call62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 869, i64 noundef %26) #8
  br label %out.i

if.end63.i:                                       ; preds = %if.end54.i
  %start.i = getelementptr inbounds %struct.extent_map, ptr %call46.i, i32 0, i32 1
  %27 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %cmp64.not.i = icmp eq i64 %28, 0
  br i1 %cmp64.not.i, label %lor.lhs.false.i, label %if.end63.i.do.end72.i_crit_edge

if.end63.i.do.end72.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72.i

lor.lhs.false.i:                                  ; preds = %if.end63.i
  %len.i = getelementptr inbounds %struct.extent_map, ptr %call46.i, i32 0, i32 2
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %conv39.i)
  %cmp67.not.i = icmp eq i64 %30, %conv39.i
  br i1 %cmp67.not.i, label %if.end77.i, label %lor.lhs.false.i.do.end72.i_crit_edge

lor.lhs.false.i.do.end72.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end72.i

do.end72.i:                                       ; preds = %lor.lhs.false.i.do.end72.i_crit_edge, %if.end63.i.do.end72.i_crit_edge
  %len75.i = getelementptr inbounds %struct.extent_map, ptr %call46.i, i32 0, i32 2
  %31 = ptrtoint ptr %len75.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %len75.i, align 8
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.2, i32 noundef 875, i32 noundef %sectorsize, i64 noundef %28, i64 noundef %32) #8
  br label %out.i

if.end77.i:                                       ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.extent_map, ptr %call46.i, i32 0, i32 11
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp78.not.i = icmp eq i32 %34, 0
  br i1 %cmp78.not.i, label %if.end87.i, label %do.end83.i

do.end83.i:                                       ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  %call86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.2, i32 noundef 880, i32 noundef 0, i32 noundef %34) #8
  br label %out.i

if.end87.i:                                       ; preds = %if.end77.i
  call void @free_extent_map(ptr noundef %call46.i) #5
  %call92.i = call ptr @btrfs_get_extent(ptr noundef %add.ptr.i210.i, ptr noundef null, i32 noundef 0, i64 noundef %conv39.i, i64 noundef %conv45.i) #5
  %cmp.i214.i = icmp ugt ptr %call92.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214.i, label %do.end97.i, label %if.end100.i

do.end97.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  %call99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 887) #8
  br label %out.i

if.end100.i:                                      ; preds = %if.end87.i
  %block_start101.i = getelementptr inbounds %struct.extent_map, ptr %call92.i, i32 0, i32 8
  %35 = ptrtoint ptr %block_start101.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %block_start101.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %conv39.i)
  %cmp103.not.i = icmp eq i64 %36, %conv39.i
  br i1 %cmp103.not.i, label %if.end112.i, label %do.end108.i

do.end108.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #7
  %call111.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 891, i64 noundef %36) #8
  br label %out.i

if.end112.i:                                      ; preds = %if.end100.i
  %start113.i = getelementptr inbounds %struct.extent_map, ptr %call92.i, i32 0, i32 1
  %37 = ptrtoint ptr %start113.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start113.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %conv39.i)
  %cmp115.not.i = icmp eq i64 %38, %conv39.i
  br i1 %cmp115.not.i, label %lor.lhs.false117.i, label %if.end112.i.do.end125.i_crit_edge

if.end112.i.do.end125.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end125.i

lor.lhs.false117.i:                               ; preds = %if.end112.i
  %len118.i = getelementptr inbounds %struct.extent_map, ptr %call92.i, i32 0, i32 2
  %39 = ptrtoint ptr %len118.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %len118.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %conv39.i)
  %cmp120.not.i = icmp eq i64 %40, %conv39.i
  br i1 %cmp120.not.i, label %if.end130.i, label %lor.lhs.false117.i.do.end125.i_crit_edge

lor.lhs.false117.i.do.end125.i_crit_edge:         ; preds = %lor.lhs.false117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end125.i

do.end125.i:                                      ; preds = %lor.lhs.false117.i.do.end125.i_crit_edge, %if.end112.i.do.end125.i_crit_edge
  %len128.i = getelementptr inbounds %struct.extent_map, ptr %call92.i, i32 0, i32 2
  %41 = ptrtoint ptr %len128.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %len128.i, align 8
  %call129.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.2, i32 noundef 897, i32 noundef %sectorsize, i32 noundef %sectorsize, i64 noundef %38, i64 noundef %42) #8
  br label %out.i

if.end130.i:                                      ; preds = %lor.lhs.false117.i
  %flags131.i = getelementptr inbounds %struct.extent_map, ptr %call92.i, i32 0, i32 11
  %43 = ptrtoint ptr %flags131.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags131.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp132.not.i = icmp eq i32 %44, 0
  br i1 %cmp132.not.i, label %if.end130.i.out.i_crit_edge, label %do.end137.i

if.end130.i.out.i_crit_edge:                      ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

do.end137.i:                                      ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #7
  %call140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.2, i32 noundef 902, i32 noundef %44) #8
  br label %out.i

out.i:                                            ; preds = %do.end137.i, %if.end130.i.out.i_crit_edge, %do.end125.i, %do.end108.i, %do.end97.i, %do.end83.i, %do.end72.i, %do.end59.i, %do.end51.i
  %ret.0.i = phi i32 [ -22, %do.end51.i ], [ -22, %do.end59.i ], [ -22, %do.end72.i ], [ -22, %do.end83.i ], [ -22, %do.end97.i ], [ -22, %do.end108.i ], [ -22, %do.end125.i ], [ -22, %do.end137.i ], [ 0, %if.end130.i.out.i_crit_edge ]
  %em.0.i = phi ptr [ %call46.i, %do.end51.i ], [ %call46.i, %do.end59.i ], [ %call46.i, %do.end72.i ], [ %call46.i, %do.end83.i ], [ %call92.i, %do.end97.i ], [ %call92.i, %do.end108.i ], [ %call92.i, %do.end125.i ], [ %call92.i, %do.end137.i ], [ %call92.i, %if.end130.i.out.i_crit_edge ]
  %cmp.i215.i = icmp ugt ptr %em.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215.i, label %out.i.test_hole_first.exit_crit_edge, label %out.i.if.then143.i_crit_edge

out.i.if.then143.i_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then143.i

out.i.test_hole_first.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %test_hole_first.exit

if.then143.sink.split.i:                          ; preds = %if.end24.i.if.then143.sink.split.i_crit_edge, %if.end15.i.if.then143.sink.split.i_crit_edge, %if.end.i.if.then143.sink.split.i_crit_edge
  %test_error.sink.i = phi ptr [ @test_error, %if.end.i.if.then143.sink.split.i_crit_edge ], [ getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), %if.end15.i.if.then143.sink.split.i_crit_edge ], [ getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), %if.end24.i.if.then143.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 835, %if.end.i.if.then143.sink.split.i_crit_edge ], [ 841, %if.end15.i.if.then143.sink.split.i_crit_edge ], [ 847, %if.end24.i.if.then143.sink.split.i_crit_edge ]
  %root.0223.ph.i = phi ptr [ null, %if.end.i.if.then143.sink.split.i_crit_edge ], [ %call16.i, %if.end15.i.if.then143.sink.split.i_crit_edge ], [ %call16.i, %if.end24.i.if.then143.sink.split.i_crit_edge ]
  %45 = ptrtoint ptr %test_error.sink.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %test_error.sink.i, align 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef %.sink.i, ptr noundef %46) #8
  br label %if.then143.i

if.then143.i:                                     ; preds = %if.then143.sink.split.i, %out.i.if.then143.i_crit_edge
  %root.0223.i = phi ptr [ %call16.i, %out.i.if.then143.i_crit_edge ], [ %root.0223.ph.i, %if.then143.sink.split.i ]
  %em.0222.i = phi ptr [ %em.0.i, %out.i.if.then143.i_crit_edge ], [ null, %if.then143.sink.split.i ]
  %ret.0220.i = phi i32 [ %ret.0.i, %out.i.if.then143.i_crit_edge ], [ -12, %if.then143.sink.split.i ]
  call void @free_extent_map(ptr noundef %em.0222.i) #5
  br label %test_hole_first.exit

test_hole_first.exit:                             ; preds = %if.then143.i, %out.i.test_hole_first.exit_crit_edge
  %root.0224.i = phi ptr [ %root.0223.i, %if.then143.i ], [ %call16.i, %out.i.test_hole_first.exit_crit_edge ]
  %ret.0221.i = phi i32 [ %ret.0220.i, %if.then143.i ], [ %ret.0.i, %out.i.test_hole_first.exit_crit_edge ]
  call void @iput(ptr noundef nonnull %call1.i) #5
  call void @btrfs_free_dummy_root(ptr noundef %root.0224.i) #5
  call void @btrfs_free_dummy_fs_info(ptr noundef %call7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0221.i)
  %tobool3.not = icmp eq i32 %ret.0221.i, 0
  br i1 %tobool3.not, label %if.end5, label %test_hole_first.exit.cleanup_crit_edge

test_hole_first.exit.cleanup_crit_edge:           ; preds = %test_hole_first.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %test_hole_first.exit
  %call.i14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251) #8
  %call1.i15 = call ptr @btrfs_new_test_inode() #5
  %tobool.not.i16 = icmp eq ptr %call1.i15, null
  br i1 %tobool.not.i16, label %do.end4.i18, label %if.end.i21

do.end4.i18:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 4) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 4), align 4
  %call6.i17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 926, ptr noundef %47) #8
  br label %cleanup

if.end.i21:                                       ; preds = %if.end5
  %call7.i19 = call ptr @btrfs_alloc_dummy_fs_info(i32 noundef %nodesize, i32 noundef %sectorsize) #5
  %tobool8.not.i20 = icmp eq ptr %call7.i19, null
  br i1 %tobool8.not.i20, label %do.end12.i, label %if.end15.i25

do.end12.i:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @test_error to i32))
  %48 = load ptr, ptr @test_error, align 4
  %call14.i22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 932, ptr noundef %48) #8
  br label %if.then263.i

if.end15.i25:                                     ; preds = %if.end.i21
  %call16.i23 = call ptr @btrfs_alloc_dummy_root(ptr noundef nonnull %call7.i19) #5
  %cmp.i.i24 = icmp ugt ptr %call16.i23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i24, label %do.end21.i, label %if.end24.i27

do.end21.i:                                       ; preds = %if.end15.i25
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 938, ptr noundef %49) #8
  br label %if.then263.i

if.end24.i27:                                     ; preds = %if.end15.i25
  %add.ptr.i.i26 = getelementptr i8, ptr %call1.i15, i32 -864
  %50 = ptrtoint ptr %add.ptr.i.i26 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call16.i23, ptr %add.ptr.i.i26, align 8
  %call28.i = call i32 @btrfs_set_extent_delalloc(ptr noundef %add.ptr.i.i26, i64 noundef 0, i64 noundef 134217727, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end36.i, label %do.end33.i

do.end33.i:                                       ; preds = %if.end24.i27
  call void @__sanitizer_cov_trace_pc() #7
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.2, i32 noundef 948, i32 noundef %call28.i) #8
  br label %if.then263.i

if.end36.i:                                       ; preds = %if.end24.i27
  %outstanding_extents.i = getelementptr i8, ptr %call1.i15, i32 -232
  %51 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %outstanding_extents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.not.i28 = icmp eq i32 %52, 1
  br i1 %cmp.not.i28, label %if.end46.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.2, i32 noundef 954, i32 noundef %52) #8
  br label %if.then263.i

if.end46.i:                                       ; preds = %if.end36.i
  %add.i = add i32 %sectorsize, 134217728
  %sub.i = add i32 %sectorsize, 134217727
  %conv.i29 = zext i32 %sub.i to i64
  %call48.i = call i32 @btrfs_set_extent_delalloc(ptr noundef %add.ptr.i.i26, i64 noundef 134217728, i64 noundef %conv.i29, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end56.i, label %do.end53.i

do.end53.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.2, i32 noundef 963, i32 noundef %call48.i) #8
  br label %if.then263.i

if.end56.i:                                       ; preds = %if.end46.i
  %53 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %outstanding_extents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp59.not.i = icmp eq i32 %54, 2
  br i1 %cmp59.not.i, label %if.end69.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268, ptr noundef nonnull @.str.2, i32 noundef 969, i32 noundef %54) #8
  br label %if.then263.i

if.end69.i:                                       ; preds = %if.end56.i
  %io_tree.i = getelementptr i8, ptr %call1.i15, i32 -736
  %sub72.i = add i32 %sectorsize, 67108863
  %conv73.i = zext i32 %sub72.i to i64
  %call74.i = call i32 @clear_extent_bit(ptr noundef %io_tree.i, i64 noundef 67108864, i64 noundef %conv73.i, i32 noundef 16402, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end82.i, label %do.end79.i

do.end79.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #7
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.2, i32 noundef 980, i32 noundef %call74.i) #8
  br label %if.then263.i

if.end82.i:                                       ; preds = %if.end69.i
  %55 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %outstanding_extents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp85.not.i = icmp eq i32 %56, 2
  br i1 %cmp85.not.i, label %if.end95.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #7
  %call94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268, ptr noundef nonnull @.str.2, i32 noundef 986, i32 noundef %56) #8
  br label %if.then263.i

if.end95.i:                                       ; preds = %if.end82.i
  %call100.i = call i32 @btrfs_set_extent_delalloc(ptr noundef %add.ptr.i.i26, i64 noundef 67108864, i64 noundef %conv73.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %if.end108.i, label %do.end105.i

do.end105.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #7
  %call107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.2, i32 noundef 996, i32 noundef %call100.i) #8
  br label %if.then263.i

if.end108.i:                                      ; preds = %if.end95.i
  %57 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %outstanding_extents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp111.not.i = icmp eq i32 %58, 2
  br i1 %cmp111.not.i, label %if.end121.i, label %if.then113.i

if.then113.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #7
  %call120.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268, ptr noundef nonnull @.str.2, i32 noundef 1002, i32 noundef %58) #8
  br label %if.then263.i

if.end121.i:                                      ; preds = %if.end108.i
  %mul.i30 = shl i32 %sectorsize, 1
  %add123.i = add i32 %mul.i30, 134217728
  %conv124.i = zext i32 %add123.i to i64
  %mul125.i = mul i32 %sectorsize, 3
  %sub127.i = add i32 %mul125.i, 268435455
  %conv128.i = zext i32 %sub127.i to i64
  %call129.i31 = call i32 @btrfs_set_extent_delalloc(ptr noundef %add.ptr.i.i26, i64 noundef %conv124.i, i64 noundef %conv128.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i31)
  %tobool130.not.i = icmp eq i32 %call129.i31, 0
  br i1 %tobool130.not.i, label %if.end137.i, label %do.end134.i

do.end134.i:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #7
  %call136.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.2, i32 noundef 1014, i32 noundef %call129.i31) #8
  br label %if.then263.i

if.end137.i:                                      ; preds = %if.end121.i
  %59 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %outstanding_extents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp140.not.i = icmp eq i32 %60, 4
  br i1 %cmp140.not.i, label %if.end150.i, label %if.then142.i

if.then142.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #7
  %call149.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, ptr noundef nonnull @.str.2, i32 noundef 1020, i32 noundef %60) #8
  br label %if.then263.i

if.end150.i:                                      ; preds = %if.end137.i
  %conv153.i = zext i32 %add.i to i64
  %sub156.i = add i32 %mul.i30, 134217727
  %conv157.i = zext i32 %sub156.i to i64
  %call158.i = call i32 @btrfs_set_extent_delalloc(ptr noundef %add.ptr.i.i26, i64 noundef %conv153.i, i64 noundef %conv157.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158.i)
  %tobool159.not.i = icmp eq i32 %call158.i, 0
  br i1 %tobool159.not.i, label %if.end166.i, label %do.end163.i

do.end163.i:                                      ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #7
  %call165.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.2, i32 noundef 1031, i32 noundef %call158.i) #8
  br label %if.then263.i

if.end166.i:                                      ; preds = %if.end150.i
  %61 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %outstanding_extents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp169.not.i = icmp eq i32 %62, 3
  br i1 %cmp169.not.i, label %if.end179.i, label %if.then171.i

if.then171.i:                                     ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #7
  %call178.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.2, i32 noundef 1037, i32 noundef %62) #8
  br label %if.then263.i

if.end179.i:                                      ; preds = %if.end166.i
  %call188.i = call i32 @clear_extent_bit(ptr noundef %io_tree.i, i64 noundef %conv153.i, i64 noundef %conv157.i, i32 noundef 16402, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188.i)
  %tobool189.not.i = icmp eq i32 %call188.i, 0
  br i1 %tobool189.not.i, label %if.end196.i, label %do.end193.i

do.end193.i:                                      ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #7
  %call195.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.2, i32 noundef 1048, i32 noundef %call188.i) #8
  br label %if.then263.i

if.end196.i:                                      ; preds = %if.end179.i
  %63 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %outstanding_extents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp199.not.i = icmp eq i32 %64, 4
  br i1 %cmp199.not.i, label %if.end209.i, label %if.then201.i

if.then201.i:                                     ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #7
  %call208.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, ptr noundef nonnull @.str.2, i32 noundef 1054, i32 noundef %64) #8
  br label %if.then263.i

if.end209.i:                                      ; preds = %if.end196.i
  %call217.i = call i32 @btrfs_set_extent_delalloc(ptr noundef %add.ptr.i.i26, i64 noundef %conv153.i, i64 noundef %conv157.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217.i)
  %tobool218.not.i = icmp eq i32 %call217.i, 0
  br i1 %tobool218.not.i, label %if.end225.i, label %do.end222.i

do.end222.i:                                      ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #7
  %call224.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.2, i32 noundef 1066, i32 noundef %call217.i) #8
  br label %if.then263.i

if.end225.i:                                      ; preds = %if.end209.i
  %65 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %outstanding_extents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp228.not.i = icmp eq i32 %66, 3
  br i1 %cmp228.not.i, label %if.end238.i, label %if.then230.i

if.then230.i:                                     ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #7
  %call237.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.2, i32 noundef 1072, i32 noundef %66) #8
  br label %if.then263.i

if.end238.i:                                      ; preds = %if.end225.i
  %call241.i = call i32 @clear_extent_bit(ptr noundef %io_tree.i, i64 noundef 0, i64 noundef -1, i32 noundef 16402, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241.i)
  %tobool242.not.i = icmp eq i32 %call241.i, 0
  br i1 %tobool242.not.i, label %if.end249.i, label %do.end246.i

do.end246.i:                                      ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #7
  %call248.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.2, i32 noundef 1081, i32 noundef %call241.i) #8
  br label %if.then263.i

if.end249.i:                                      ; preds = %if.end238.i
  %67 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %outstanding_extents.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool252.not.i = icmp eq i32 %68, 0
  br i1 %tobool252.not.i, label %if.end249.i.if.end267.i_crit_edge, label %if.then253.i

if.end249.i.if.end267.i_crit_edge:                ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end267.i

if.then253.i:                                     ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #7
  %call260.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.2, i32 noundef 1087, i32 noundef %68) #8
  br label %if.then263.i

if.then263.i:                                     ; preds = %if.then253.i, %do.end246.i, %if.then230.i, %do.end222.i, %if.then201.i, %do.end193.i, %if.then171.i, %do.end163.i, %if.then142.i, %do.end134.i, %if.then113.i, %do.end105.i, %if.then87.i, %do.end79.i, %if.then61.i, %do.end53.i, %if.then38.i, %do.end33.i, %do.end21.i, %do.end12.i
  %ret.0.ph.i = phi i32 [ -12, %do.end12.i ], [ -22, %if.then253.i ], [ %call241.i, %do.end246.i ], [ -22, %if.then230.i ], [ %call217.i, %do.end222.i ], [ -22, %if.then201.i ], [ %call188.i, %do.end193.i ], [ -22, %if.then171.i ], [ %call158.i, %do.end163.i ], [ -22, %if.then142.i ], [ %call129.i31, %do.end134.i ], [ -22, %if.then113.i ], [ %call100.i, %do.end105.i ], [ -22, %if.then87.i ], [ %call74.i, %do.end79.i ], [ -22, %if.then61.i ], [ %call48.i, %do.end53.i ], [ -22, %if.then38.i ], [ %call28.i, %do.end33.i ], [ -12, %do.end21.i ]
  %root.0.ph.i = phi ptr [ null, %do.end12.i ], [ %call16.i23, %if.then253.i ], [ %call16.i23, %do.end246.i ], [ %call16.i23, %if.then230.i ], [ %call16.i23, %do.end222.i ], [ %call16.i23, %if.then201.i ], [ %call16.i23, %do.end193.i ], [ %call16.i23, %if.then171.i ], [ %call16.i23, %do.end163.i ], [ %call16.i23, %if.then142.i ], [ %call16.i23, %do.end134.i ], [ %call16.i23, %if.then113.i ], [ %call16.i23, %do.end105.i ], [ %call16.i23, %if.then87.i ], [ %call16.i23, %do.end79.i ], [ %call16.i23, %if.then61.i ], [ %call16.i23, %do.end53.i ], [ %call16.i23, %if.then38.i ], [ %call16.i23, %do.end33.i ], [ %call16.i23, %do.end21.i ]
  %io_tree265.i = getelementptr i8, ptr %call1.i15, i32 -736
  %call266.i = call i32 @clear_extent_bit(ptr noundef %io_tree265.i, i64 noundef 0, i64 noundef -1, i32 noundef 16402, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  br label %if.end267.i

if.end267.i:                                      ; preds = %if.then263.i, %if.end249.i.if.end267.i_crit_edge
  %root.0370.i = phi ptr [ %root.0.ph.i, %if.then263.i ], [ %call16.i23, %if.end249.i.if.end267.i_crit_edge ]
  %ret.0368.i = phi i32 [ %ret.0.ph.i, %if.then263.i ], [ 0, %if.end249.i.if.end267.i_crit_edge ]
  call void @iput(ptr noundef nonnull %call1.i15) #5
  call void @btrfs_free_dummy_root(ptr noundef %root.0370.i) #5
  call void @btrfs_free_dummy_fs_info(ptr noundef %call7.i19) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end267.i, %do.end4.i18, %test_hole_first.exit.cleanup_crit_edge, %test_hole_first.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.0221.i, %test_hole_first.exit.cleanup_crit_edge ], [ -12, %test_hole_first.exit.thread ], [ %ret.0368.i, %if.end267.i ], [ -12, %do.end4.i18 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_btrfs_get_extent(i32 noundef %sectorsize, i32 noundef %nodesize) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  %call1 = tail call ptr @btrfs_new_test_inode() #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 4) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 4), align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 231, ptr noundef %0) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @btrfs_alloc_dummy_fs_info(i32 noundef %nodesize, i32 noundef %sectorsize) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @test_error to i32))
  %1 = load ptr, ptr @test_error, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 237, ptr noundef %1) #8
  br label %if.then1278

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr @btrfs_alloc_dummy_root(ptr noundef nonnull %call7) #5
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 243, ptr noundef %2) #8
  br label %if.then1278

if.end24:                                         ; preds = %if.end15
  %conv = zext i32 %nodesize to i64
  %call25 = tail call ptr @alloc_dummy_extent_buffer(ptr noundef nonnull %call7, i64 noundef %conv) #5
  %node = getelementptr inbounds %struct.btrfs_root, ptr %call16, i32 0, i32 1
  %3 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call25, ptr %node, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 249, ptr noundef %4) #8
  br label %if.then1278

if.end34:                                         ; preds = %if.end24
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %call25, i32 0, i32 12
  %5 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %6) #5
  %7 = ptrtoint ptr %call25 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %call25, align 8
  %conv.i = trunc i64 %8 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %9 = ptrtoint ptr %nritems.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %nritems.i, align 1
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node, align 4
  %pages.i1829 = getelementptr inbounds %struct.extent_buffer, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %pages.i1829 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages.i1829, align 4
  %call.i1830 = tail call ptr @page_address(ptr noundef %13) #5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %11, align 8
  %conv.i1831 = trunc i64 %15 to i32
  %and.i1832 = and i32 %conv.i1831, 4095
  %add.ptr.i1833 = getelementptr i8, ptr %call.i1830, i32 %and.i1832
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i1833, i32 0, i32 8
  %16 = ptrtoint ptr %level.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %level.i, align 1
  %add.ptr.i1834 = getelementptr i8, ptr %call1, i32 -864
  %17 = ptrtoint ptr %add.ptr.i1834 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call16, ptr %add.ptr.i1834, align 8
  %conv40 = zext i32 %sectorsize to i64
  %call41 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef 0, i64 noundef %conv40) #5
  %cmp.i1836 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1836, label %if.then43, label %if.end49

if.then43:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 262) #8
  br label %if.then1278

if.end49:                                         ; preds = %if.end34
  %block_start = getelementptr inbounds %struct.extent_map, ptr %call41, i32 0, i32 8
  %18 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %block_start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %19)
  %cmp.not = icmp eq i64 %19, -3
  br i1 %cmp.not, label %if.end58, label %do.end54

do.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 266, i64 noundef %19) #8
  br label %out

if.end58:                                         ; preds = %if.end49
  tail call void @free_extent_map(ptr noundef %call41) #5
  tail call void @btrfs_drop_extent_cache(ptr noundef %add.ptr.i1834, i64 noundef 0, i64 noundef -1, i32 noundef 0) #5
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef 0, i64 noundef 5, i64 noundef 5, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 0) #5
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef 5, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 1) #5
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %conv40, i64 noundef 4, i64 noundef 4, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 2) #5
  %add3.i = add nuw nsw i64 %conv40, 4
  %sub.i = add i32 %sectorsize, -1
  %conv4.i = zext i32 %sub.i to i64
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add3.i, i64 noundef %conv4.i, i64 noundef %conv4.i, i64 noundef 0, i64 noundef 1048576, i64 noundef %conv40, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 3) #5
  %add10.i = add nuw nsw i64 %conv40, 1048576
  %add13.i = add nuw nsw i64 %add3.i, %conv4.i
  %mul.i = shl i32 %sectorsize, 2
  %conv15.i = zext i32 %mul.i to i64
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add13.i, i64 noundef %conv40, i64 noundef %conv15.i, i64 noundef 0, i64 noundef %add10.i, i64 noundef %conv15.i, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 4) #5
  %add20.i = add nuw nsw i64 %add13.i, %conv40
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add20.i, i64 noundef %conv40, i64 noundef %conv40, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 5) #5
  %add25.i = add nuw nsw i64 %add20.i, %conv40
  %mul26.i = shl i32 %sectorsize, 1
  %conv27.i = zext i32 %mul26.i to i64
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add25.i, i64 noundef %conv27.i, i64 noundef %conv15.i, i64 noundef %conv27.i, i64 noundef %add10.i, i64 noundef %conv15.i, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 6) #5
  %add37.i = add nuw nsw i64 %add25.i, %conv27.i
  %add40.i = add nuw nsw i64 %add10.i, %conv15.i
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add37.i, i64 noundef %conv40, i64 noundef %conv40, i64 noundef 0, i64 noundef %add40.i, i64 noundef %conv40, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 7) #5
  %add46.i = add nuw nsw i64 %add37.i, %conv40
  %add49.i = add nuw nsw i64 %add40.i, %conv27.i
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add46.i, i64 noundef %conv40, i64 noundef %conv15.i, i64 noundef 0, i64 noundef %add49.i, i64 noundef %conv15.i, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 8) #5
  %add57.i = add nuw nsw i64 %add46.i, %conv40
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add57.i, i64 noundef %conv40, i64 noundef %conv15.i, i64 noundef %conv40, i64 noundef %add49.i, i64 noundef %conv15.i, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 9) #5
  %add66.i = add nuw nsw i64 %add57.i, %conv40
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add66.i, i64 noundef %conv27.i, i64 noundef %conv15.i, i64 noundef %conv27.i, i64 noundef %add49.i, i64 noundef %conv15.i, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 10) #5
  %add78.i = add nuw nsw i64 %add66.i, %conv27.i
  %add81.i = add nuw nsw i64 %add49.i, %conv15.i
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add78.i, i64 noundef %conv27.i, i64 noundef %conv27.i, i64 noundef 0, i64 noundef %add81.i, i64 noundef %conv40, i32 noundef 1, i8 noundef zeroext 1, i32 noundef 11) #5
  %add90.i = add nuw nsw i64 %add78.i, %conv27.i
  %add93.i = add nuw nsw i64 %add81.i, %conv27.i
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add90.i, i64 noundef %conv40, i64 noundef %conv15.i, i64 noundef 0, i64 noundef %add93.i, i64 noundef %conv40, i32 noundef 1, i8 noundef zeroext 1, i32 noundef 12) #5
  %add100.i = add nuw nsw i64 %add90.i, %conv40
  %add104.i = add nuw nsw i64 %add93.i, %conv40
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add100.i, i64 noundef %conv40, i64 noundef %conv40, i64 noundef 0, i64 noundef %add104.i, i64 noundef %conv40, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 13) #5
  %add108.i = add nuw nsw i64 %add100.i, %conv40
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add108.i, i64 noundef %conv27.i, i64 noundef %conv15.i, i64 noundef %conv27.i, i64 noundef %add93.i, i64 noundef %conv40, i32 noundef 1, i8 noundef zeroext 1, i32 noundef 14) #5
  %add119.i = add nuw nsw i64 %add108.i, %conv27.i
  %add122.i = add nuw nsw i64 %add93.i, %conv27.i
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add119.i, i64 noundef %conv40, i64 noundef %conv40, i64 noundef 0, i64 noundef %add122.i, i64 noundef %conv40, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 15) #5
  %add129.i = add nuw nsw i64 %add119.i, %conv15.i
  %add131.i = add nuw nsw i64 %add122.i, %conv40
  tail call fastcc void @insert_extent(ptr noundef %call16, i64 noundef %add129.i, i64 noundef %conv40, i64 noundef %conv40, i64 noundef 0, i64 noundef %add131.i, i64 noundef %conv40, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 16) #5
  %call61 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef 0, i64 noundef -1) #5
  %cmp.i1840 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1840, label %do.end66, label %if.end69

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 281) #8
  br label %out

if.end69:                                         ; preds = %if.end58
  %block_start70 = getelementptr inbounds %struct.extent_map, ptr %call61, i32 0, i32 8
  %20 = ptrtoint ptr %block_start70 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %block_start70, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %21)
  %cmp71.not = icmp eq i64 %21, -3
  br i1 %cmp71.not, label %if.end80, label %do.end76

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 285, i64 noundef %21) #8
  br label %out

if.end80:                                         ; preds = %if.end69
  %start = getelementptr inbounds %struct.extent_map, ptr %call61, i32 0, i32 1
  %22 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp81.not = icmp eq i64 %23, 0
  br i1 %cmp81.not, label %lor.lhs.false, label %if.end80.do.end88_crit_edge

if.end80.do.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end88

lor.lhs.false:                                    ; preds = %if.end80
  %len = getelementptr inbounds %struct.extent_map, ptr %call61, i32 0, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %25)
  %cmp83.not = icmp eq i64 %25, 5
  br i1 %cmp83.not, label %if.end93, label %lor.lhs.false.do.end88_crit_edge

lor.lhs.false.do.end88_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end88

do.end88:                                         ; preds = %lor.lhs.false.do.end88_crit_edge, %if.end80.do.end88_crit_edge
  %len91 = getelementptr inbounds %struct.extent_map, ptr %call61, i32 0, i32 2
  %26 = ptrtoint ptr %len91 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %len91, align 8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 291, i64 noundef %23, i64 noundef %27) #8
  br label %out

if.end93:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.extent_map, ptr %call61, i32 0, i32 11
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp94.not = icmp eq i32 %29, 0
  br i1 %cmp94.not, label %if.end103, label %do.end99

do.end99:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 295, i32 noundef %29) #8
  br label %out

if.end103:                                        ; preds = %if.end93
  tail call void @free_extent_map(ptr noundef %call61) #5
  %call108 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef 5, i64 noundef %conv40) #5
  %cmp.i1842 = icmp ugt ptr %call108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1842, label %do.end113, label %if.end116

do.end113:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 303) #8
  br label %out

if.end116:                                        ; preds = %if.end103
  %block_start117 = getelementptr inbounds %struct.extent_map, ptr %call108, i32 0, i32 8
  %30 = ptrtoint ptr %block_start117 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %block_start117, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %31)
  %cmp118.not = icmp eq i64 %31, -2
  br i1 %cmp118.not, label %if.end127, label %do.end123

do.end123:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 307, i64 noundef %31) #8
  br label %out

if.end127:                                        ; preds = %if.end116
  %start128 = getelementptr inbounds %struct.extent_map, ptr %call108, i32 0, i32 1
  %32 = ptrtoint ptr %start128 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %start128, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %33)
  %cmp129.not = icmp eq i64 %33, 5
  br i1 %cmp129.not, label %lor.lhs.false131, label %if.end127.do.end139_crit_edge

if.end127.do.end139_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end139

lor.lhs.false131:                                 ; preds = %if.end127
  %len132 = getelementptr inbounds %struct.extent_map, ptr %call108, i32 0, i32 2
  %34 = ptrtoint ptr %len132 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %len132, align 8
  %sub = add i32 %sectorsize, -5
  %conv133 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %conv133)
  %cmp134.not = icmp eq i64 %35, %conv133
  br i1 %cmp134.not, label %if.end144, label %lor.lhs.false131.do.end139_crit_edge

lor.lhs.false131.do.end139_crit_edge:             ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end139

do.end139:                                        ; preds = %lor.lhs.false131.do.end139_crit_edge, %if.end127.do.end139_crit_edge
  %len142 = getelementptr inbounds %struct.extent_map, ptr %call108, i32 0, i32 2
  %36 = ptrtoint ptr %len142 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %len142, align 8
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 314, i64 noundef 5, i64 noundef %33, i64 noundef %37) #8
  br label %out

if.end144:                                        ; preds = %lor.lhs.false131
  %flags145 = getelementptr inbounds %struct.extent_map, ptr %call108, i32 0, i32 11
  %38 = ptrtoint ptr %flags145 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags145, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp146.not = icmp eq i32 %39, 0
  br i1 %cmp146.not, label %if.end155, label %do.end151

do.end151:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #7
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 318, i32 noundef %39) #8
  br label %out

if.end155:                                        ; preds = %if.end144
  %add158 = add i64 %35, 5
  tail call void @free_extent_map(ptr noundef %call108) #5
  %call161 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add158, i64 noundef %conv40) #5
  %cmp.i1844 = icmp ugt ptr %call161, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1844, label %do.end166, label %if.end169

do.end166:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 331) #8
  br label %out

if.end169:                                        ; preds = %if.end155
  %block_start170 = getelementptr inbounds %struct.extent_map, ptr %call161, i32 0, i32 8
  %40 = ptrtoint ptr %block_start170 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %block_start170, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %41)
  %cmp171.not = icmp eq i64 %41, -3
  br i1 %cmp171.not, label %if.end180, label %do.end176

do.end176:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #7
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 335, i64 noundef %41) #8
  br label %out

if.end180:                                        ; preds = %if.end169
  %start181 = getelementptr inbounds %struct.extent_map, ptr %call161, i32 0, i32 1
  %42 = ptrtoint ptr %start181 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %start181, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %add158)
  %cmp182.not = icmp eq i64 %43, %add158
  br i1 %cmp182.not, label %lor.lhs.false184, label %if.end180.do.end191_crit_edge

if.end180.do.end191_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end191

lor.lhs.false184:                                 ; preds = %if.end180
  %len185 = getelementptr inbounds %struct.extent_map, ptr %call161, i32 0, i32 2
  %44 = ptrtoint ptr %len185 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %len185, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %45)
  %cmp186.not = icmp eq i64 %45, 4
  br i1 %cmp186.not, label %if.end196, label %lor.lhs.false184.do.end191_crit_edge

lor.lhs.false184.do.end191_crit_edge:             ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end191

do.end191:                                        ; preds = %lor.lhs.false184.do.end191_crit_edge, %if.end180.do.end191_crit_edge
  %len194 = getelementptr inbounds %struct.extent_map, ptr %call161, i32 0, i32 2
  %46 = ptrtoint ptr %len194 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %len194, align 8
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2, i32 noundef 341, i64 noundef %add158, i64 noundef %43, i64 noundef %47) #8
  br label %out

if.end196:                                        ; preds = %lor.lhs.false184
  %flags197 = getelementptr inbounds %struct.extent_map, ptr %call161, i32 0, i32 11
  %48 = ptrtoint ptr %flags197 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags197, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp198.not = icmp eq i32 %49, 0
  br i1 %cmp198.not, label %if.end207, label %do.end203

do.end203:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 345, i32 noundef %49) #8
  br label %out

if.end207:                                        ; preds = %if.end196
  %add210 = add i64 %35, 9
  tail call void @free_extent_map(ptr noundef %call161) #5
  %call213 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add210, i64 noundef %conv40) #5
  %cmp.i1846 = icmp ugt ptr %call213, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1846, label %do.end218, label %if.end221

do.end218:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #7
  %call220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 354) #8
  br label %out

if.end221:                                        ; preds = %if.end207
  %block_start222 = getelementptr inbounds %struct.extent_map, ptr %call213, i32 0, i32 8
  %50 = ptrtoint ptr %block_start222 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %block_start222, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %51)
  %cmp223 = icmp ugt i64 %51, -5
  br i1 %cmp223, label %do.end228, label %if.end232

do.end228:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #7
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 358, i64 noundef %51) #8
  br label %out

if.end232:                                        ; preds = %if.end221
  %start233 = getelementptr inbounds %struct.extent_map, ptr %call213, i32 0, i32 1
  %52 = ptrtoint ptr %start233 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %start233, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %add210)
  %cmp234.not = icmp eq i64 %53, %add210
  br i1 %cmp234.not, label %lor.lhs.false236, label %if.end232.do.end245_crit_edge

if.end232.do.end245_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end245

lor.lhs.false236:                                 ; preds = %if.end232
  %len237 = getelementptr inbounds %struct.extent_map, ptr %call213, i32 0, i32 2
  %54 = ptrtoint ptr %len237 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %len237, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %conv4.i)
  %cmp240.not = icmp eq i64 %55, %conv4.i
  br i1 %cmp240.not, label %if.end250, label %lor.lhs.false236.do.end245_crit_edge

lor.lhs.false236.do.end245_crit_edge:             ; preds = %lor.lhs.false236
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end245

do.end245:                                        ; preds = %lor.lhs.false236.do.end245_crit_edge, %if.end232.do.end245_crit_edge
  %len248 = getelementptr inbounds %struct.extent_map, ptr %call213, i32 0, i32 2
  %56 = ptrtoint ptr %len248 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %len248, align 8
  %call249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.2, i32 noundef 364, i64 noundef %add210, i64 noundef %53, i64 noundef %57) #8
  br label %out

if.end250:                                        ; preds = %lor.lhs.false236
  %flags251 = getelementptr inbounds %struct.extent_map, ptr %call213, i32 0, i32 11
  %58 = ptrtoint ptr %flags251 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags251, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp252.not = icmp eq i32 %59, 0
  br i1 %cmp252.not, label %if.end261, label %do.end257

do.end257:                                        ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #7
  %call260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 368, i32 noundef %59) #8
  br label %out

if.end261:                                        ; preds = %if.end250
  %orig_start262 = getelementptr inbounds %struct.extent_map, ptr %call213, i32 0, i32 5
  %60 = ptrtoint ptr %orig_start262 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %orig_start262, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %add210)
  %cmp264.not = icmp eq i64 %61, %add210
  br i1 %cmp264.not, label %if.end274, label %do.end269

do.end269:                                        ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #7
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 373, i64 noundef %add210, i64 noundef %61) #8
  br label %out

if.end274:                                        ; preds = %if.end261
  %add277 = add i64 %add210, %conv4.i
  tail call void @free_extent_map(ptr noundef %call213) #5
  %call280 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add277, i64 noundef %conv40) #5
  %cmp.i1848 = icmp ugt ptr %call280, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1848, label %do.end285, label %if.end288

do.end285:                                        ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #7
  %call287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 382) #8
  br label %out

if.end288:                                        ; preds = %if.end274
  %block_start289 = getelementptr inbounds %struct.extent_map, ptr %call280, i32 0, i32 8
  %62 = ptrtoint ptr %block_start289 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %block_start289, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %63)
  %cmp290 = icmp ugt i64 %63, -5
  br i1 %cmp290, label %do.end295, label %if.end299

do.end295:                                        ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #7
  %call298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 386, i64 noundef %63) #8
  br label %out

if.end299:                                        ; preds = %if.end288
  %start300 = getelementptr inbounds %struct.extent_map, ptr %call280, i32 0, i32 1
  %64 = ptrtoint ptr %start300 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %start300, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %65, i64 %add277)
  %cmp301.not = icmp eq i64 %65, %add277
  br i1 %cmp301.not, label %lor.lhs.false303, label %if.end299.do.end311_crit_edge

if.end299.do.end311_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end311

lor.lhs.false303:                                 ; preds = %if.end299
  %len304 = getelementptr inbounds %struct.extent_map, ptr %call280, i32 0, i32 2
  %66 = ptrtoint ptr %len304 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %len304, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %conv40)
  %cmp306.not = icmp eq i64 %67, %conv40
  br i1 %cmp306.not, label %if.end316, label %lor.lhs.false303.do.end311_crit_edge

lor.lhs.false303.do.end311_crit_edge:             ; preds = %lor.lhs.false303
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end311

do.end311:                                        ; preds = %lor.lhs.false303.do.end311_crit_edge, %if.end299.do.end311_crit_edge
  %len314 = getelementptr inbounds %struct.extent_map, ptr %call280, i32 0, i32 2
  %68 = ptrtoint ptr %len314 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %len314, align 8
  %call315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.2, i32 noundef 392, i64 noundef %add277, i32 noundef %sectorsize, i64 noundef %65, i64 noundef %69) #8
  br label %out

if.end316:                                        ; preds = %lor.lhs.false303
  %flags317 = getelementptr inbounds %struct.extent_map, ptr %call280, i32 0, i32 11
  %70 = ptrtoint ptr %flags317 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags317, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp318.not = icmp eq i32 %71, 0
  br i1 %cmp318.not, label %if.end327, label %do.end323

do.end323:                                        ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #7
  %call326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 396, i32 noundef %71) #8
  br label %out

if.end327:                                        ; preds = %if.end316
  %orig_start328 = getelementptr inbounds %struct.extent_map, ptr %call280, i32 0, i32 5
  %72 = ptrtoint ptr %orig_start328 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %orig_start328, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %add277)
  %cmp330.not = icmp eq i64 %73, %add277
  br i1 %cmp330.not, label %if.end340, label %do.end335

do.end335:                                        ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #7
  %call339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 401, i64 noundef %add277, i64 noundef %73) #8
  br label %out

if.end340:                                        ; preds = %if.end327
  %add345 = add i64 %add277, %conv40
  tail call void @free_extent_map(ptr noundef %call280) #5
  %call348 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add345, i64 noundef %conv40) #5
  %cmp.i1850 = icmp ugt ptr %call348, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1850, label %do.end353, label %if.end356

do.end353:                                        ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #7
  %call355 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 411) #8
  br label %out

if.end356:                                        ; preds = %if.end340
  %block_start357 = getelementptr inbounds %struct.extent_map, ptr %call348, i32 0, i32 8
  %74 = ptrtoint ptr %block_start357 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %block_start357, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %75)
  %cmp358.not = icmp eq i64 %75, -3
  br i1 %cmp358.not, label %if.end367, label %do.end363

do.end363:                                        ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #7
  %call366 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 415, i64 noundef %75) #8
  br label %out

if.end367:                                        ; preds = %if.end356
  %start368 = getelementptr inbounds %struct.extent_map, ptr %call348, i32 0, i32 1
  %76 = ptrtoint ptr %start368 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %start368, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %add345)
  %cmp369.not = icmp eq i64 %77, %add345
  br i1 %cmp369.not, label %lor.lhs.false371, label %if.end367.do.end379_crit_edge

if.end367.do.end379_crit_edge:                    ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end379

lor.lhs.false371:                                 ; preds = %if.end367
  %len372 = getelementptr inbounds %struct.extent_map, ptr %call348, i32 0, i32 2
  %78 = ptrtoint ptr %len372 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %len372, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %79, i64 %conv40)
  %cmp374.not = icmp eq i64 %79, %conv40
  br i1 %cmp374.not, label %if.end384, label %lor.lhs.false371.do.end379_crit_edge

lor.lhs.false371.do.end379_crit_edge:             ; preds = %lor.lhs.false371
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end379

do.end379:                                        ; preds = %lor.lhs.false371.do.end379_crit_edge, %if.end367.do.end379_crit_edge
  %len382 = getelementptr inbounds %struct.extent_map, ptr %call348, i32 0, i32 2
  %80 = ptrtoint ptr %len382 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %len382, align 8
  %call383 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 421, i64 noundef %add345, i32 noundef %sectorsize, i64 noundef %77, i64 noundef %81) #8
  br label %out

if.end384:                                        ; preds = %lor.lhs.false371
  %flags385 = getelementptr inbounds %struct.extent_map, ptr %call348, i32 0, i32 11
  %82 = ptrtoint ptr %flags385 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags385, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp386.not = icmp eq i32 %83, 0
  br i1 %cmp386.not, label %if.end395, label %do.end391

do.end391:                                        ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #7
  %call394 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 425, i32 noundef %83) #8
  br label %out

if.end395:                                        ; preds = %if.end384
  %add398 = add i64 %add345, %conv40
  tail call void @free_extent_map(ptr noundef %call348) #5
  %call401 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add398, i64 noundef %conv40) #5
  %cmp.i1852 = icmp ugt ptr %call401, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1852, label %do.end406, label %if.end409

do.end406:                                        ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #7
  %call408 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 433) #8
  br label %out

if.end409:                                        ; preds = %if.end395
  %block_start410 = getelementptr inbounds %struct.extent_map, ptr %call401, i32 0, i32 8
  %84 = ptrtoint ptr %block_start410 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %block_start410, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %85)
  %cmp411 = icmp ugt i64 %85, -5
  br i1 %cmp411, label %do.end416, label %if.end420

do.end416:                                        ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #7
  %call419 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 437, i64 noundef %85) #8
  br label %out

if.end420:                                        ; preds = %if.end409
  %start421 = getelementptr inbounds %struct.extent_map, ptr %call401, i32 0, i32 1
  %86 = ptrtoint ptr %start421 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %start421, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %87, i64 %add398)
  %cmp422.not = icmp eq i64 %87, %add398
  br i1 %cmp422.not, label %lor.lhs.false424, label %if.end420.do.end432_crit_edge

if.end420.do.end432_crit_edge:                    ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end432

lor.lhs.false424:                                 ; preds = %if.end420
  %len425 = getelementptr inbounds %struct.extent_map, ptr %call401, i32 0, i32 2
  %88 = ptrtoint ptr %len425 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %len425, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %conv27.i)
  %cmp427.not = icmp eq i64 %89, %conv27.i
  br i1 %cmp427.not, label %if.end438, label %lor.lhs.false424.do.end432_crit_edge

lor.lhs.false424.do.end432_crit_edge:             ; preds = %lor.lhs.false424
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end432

do.end432:                                        ; preds = %lor.lhs.false424.do.end432_crit_edge, %if.end420.do.end432_crit_edge
  %len436 = getelementptr inbounds %struct.extent_map, ptr %call401, i32 0, i32 2
  %90 = ptrtoint ptr %len436 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %len436, align 8
  %call437 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 443, i64 noundef %add398, i32 noundef %mul26.i, i64 noundef %87, i64 noundef %91) #8
  br label %out

if.end438:                                        ; preds = %lor.lhs.false424
  %flags439 = getelementptr inbounds %struct.extent_map, ptr %call401, i32 0, i32 11
  %92 = ptrtoint ptr %flags439 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags439, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp440.not = icmp eq i32 %93, 0
  br i1 %cmp440.not, label %if.end449, label %do.end445

do.end445:                                        ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #7
  %call448 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 447, i32 noundef %93) #8
  br label %out

if.end449:                                        ; preds = %if.end438
  %orig_start450 = getelementptr inbounds %struct.extent_map, ptr %call401, i32 0, i32 5
  %94 = ptrtoint ptr %orig_start450 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %orig_start450, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %add277)
  %cmp451.not = icmp eq i64 %95, %add277
  br i1 %cmp451.not, label %if.end460, label %do.end456

do.end456:                                        ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #7
  %call459 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 452, i64 noundef %add277, i64 noundef %95) #8
  br label %out

if.end460:                                        ; preds = %if.end449
  %sub462 = sub i64 %add398, %add277
  %add463 = add i64 %sub462, %63
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %add463)
  %cmp465.not = icmp eq i64 %85, %add463
  br i1 %cmp465.not, label %if.end474, label %do.end470

do.end470:                                        ; preds = %if.end460
  call void @__sanitizer_cov_trace_pc() #7
  %call473 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.2, i32 noundef 458, i64 noundef %add463, i64 noundef %85) #8
  br label %out

if.end474:                                        ; preds = %if.end460
  %add477 = add i64 %add398, %conv27.i
  tail call void @free_extent_map(ptr noundef %call401) #5
  %call480 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add477, i64 noundef %conv40) #5
  %cmp.i1854 = icmp ugt ptr %call480, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1854, label %do.end485, label %if.end488

do.end485:                                        ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #7
  %call487 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 467) #8
  br label %out

if.end488:                                        ; preds = %if.end474
  %block_start489 = getelementptr inbounds %struct.extent_map, ptr %call480, i32 0, i32 8
  %96 = ptrtoint ptr %block_start489 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %block_start489, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %97)
  %cmp490 = icmp ugt i64 %97, -5
  br i1 %cmp490, label %do.end495, label %if.end499

do.end495:                                        ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #7
  %call498 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 471, i64 noundef %97) #8
  br label %out

if.end499:                                        ; preds = %if.end488
  %start500 = getelementptr inbounds %struct.extent_map, ptr %call480, i32 0, i32 1
  %98 = ptrtoint ptr %start500 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %start500, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %add477)
  %cmp501.not = icmp eq i64 %99, %add477
  br i1 %cmp501.not, label %lor.lhs.false503, label %if.end499.do.end511_crit_edge

if.end499.do.end511_crit_edge:                    ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end511

lor.lhs.false503:                                 ; preds = %if.end499
  %len504 = getelementptr inbounds %struct.extent_map, ptr %call480, i32 0, i32 2
  %100 = ptrtoint ptr %len504 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %len504, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %101, i64 %conv40)
  %cmp506.not = icmp eq i64 %101, %conv40
  br i1 %cmp506.not, label %if.end516, label %lor.lhs.false503.do.end511_crit_edge

lor.lhs.false503.do.end511_crit_edge:             ; preds = %lor.lhs.false503
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end511

do.end511:                                        ; preds = %lor.lhs.false503.do.end511_crit_edge, %if.end499.do.end511_crit_edge
  %len514 = getelementptr inbounds %struct.extent_map, ptr %call480, i32 0, i32 2
  %102 = ptrtoint ptr %len514 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %len514, align 8
  %call515 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 477, i64 noundef %add477, i32 noundef %sectorsize, i64 noundef %99, i64 noundef %103) #8
  br label %out

if.end516:                                        ; preds = %lor.lhs.false503
  %flags517 = getelementptr inbounds %struct.extent_map, ptr %call480, i32 0, i32 11
  %104 = ptrtoint ptr %flags517 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags517, align 8
  %106 = load i32, ptr @prealloc_only, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %106)
  %cmp518.not = icmp eq i32 %105, %106
  br i1 %cmp518.not, label %if.end527, label %do.end523

do.end523:                                        ; preds = %if.end516
  call void @__sanitizer_cov_trace_pc() #7
  %call526 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.2, i32 noundef 482, i32 noundef %106, i32 noundef %105) #8
  br label %out

if.end527:                                        ; preds = %if.end516
  %orig_start528 = getelementptr inbounds %struct.extent_map, ptr %call480, i32 0, i32 5
  %107 = ptrtoint ptr %orig_start528 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %orig_start528, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %108, i64 %add477)
  %cmp530.not = icmp eq i64 %108, %add477
  br i1 %cmp530.not, label %if.end540, label %do.end535

do.end535:                                        ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #7
  %call539 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 487, i64 noundef %add477, i64 noundef %108) #8
  br label %out

if.end540:                                        ; preds = %if.end527
  %add543 = add i64 %add477, %conv40
  tail call void @free_extent_map(ptr noundef %call480) #5
  %call546 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add543, i64 noundef %conv40) #5
  %cmp.i1856 = icmp ugt ptr %call546, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1856, label %do.end551, label %if.end554

do.end551:                                        ; preds = %if.end540
  call void @__sanitizer_cov_trace_pc() #7
  %call553 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 496) #8
  br label %out

if.end554:                                        ; preds = %if.end540
  %block_start555 = getelementptr inbounds %struct.extent_map, ptr %call546, i32 0, i32 8
  %109 = ptrtoint ptr %block_start555 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %block_start555, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %110)
  %cmp556 = icmp ugt i64 %110, -5
  br i1 %cmp556, label %do.end561, label %if.end565

do.end561:                                        ; preds = %if.end554
  call void @__sanitizer_cov_trace_pc() #7
  %call564 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 500, i64 noundef %110) #8
  br label %out

if.end565:                                        ; preds = %if.end554
  %start566 = getelementptr inbounds %struct.extent_map, ptr %call546, i32 0, i32 1
  %111 = ptrtoint ptr %start566 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %start566, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %112, i64 %add543)
  %cmp567.not = icmp eq i64 %112, %add543
  br i1 %cmp567.not, label %lor.lhs.false569, label %if.end565.do.end577_crit_edge

if.end565.do.end577_crit_edge:                    ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end577

lor.lhs.false569:                                 ; preds = %if.end565
  %len570 = getelementptr inbounds %struct.extent_map, ptr %call546, i32 0, i32 2
  %113 = ptrtoint ptr %len570 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %len570, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %114, i64 %conv40)
  %cmp572.not = icmp eq i64 %114, %conv40
  br i1 %cmp572.not, label %if.end582, label %lor.lhs.false569.do.end577_crit_edge

lor.lhs.false569.do.end577_crit_edge:             ; preds = %lor.lhs.false569
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end577

do.end577:                                        ; preds = %lor.lhs.false569.do.end577_crit_edge, %if.end565.do.end577_crit_edge
  %len580 = getelementptr inbounds %struct.extent_map, ptr %call546, i32 0, i32 2
  %115 = ptrtoint ptr %len580 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %len580, align 8
  %call581 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 506, i64 noundef %add543, i32 noundef %sectorsize, i64 noundef %112, i64 noundef %116) #8
  br label %out

if.end582:                                        ; preds = %lor.lhs.false569
  %flags583 = getelementptr inbounds %struct.extent_map, ptr %call546, i32 0, i32 11
  %117 = ptrtoint ptr %flags583 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags583, align 8
  %119 = load i32, ptr @prealloc_only, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %119)
  %cmp584.not = icmp eq i32 %118, %119
  br i1 %cmp584.not, label %if.end593, label %do.end589

do.end589:                                        ; preds = %if.end582
  call void @__sanitizer_cov_trace_pc() #7
  %call592 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.2, i32 noundef 511, i32 noundef %119, i32 noundef %118) #8
  br label %out

if.end593:                                        ; preds = %if.end582
  %orig_start594 = getelementptr inbounds %struct.extent_map, ptr %call546, i32 0, i32 5
  %120 = ptrtoint ptr %orig_start594 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %orig_start594, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %121, i64 %add543)
  %cmp596.not = icmp eq i64 %121, %add543
  br i1 %cmp596.not, label %if.end606, label %do.end601

do.end601:                                        ; preds = %if.end593
  call void @__sanitizer_cov_trace_pc() #7
  %call605 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 516, i64 noundef %add543, i64 noundef %121) #8
  br label %out

if.end606:                                        ; preds = %if.end593
  %add611 = add i64 %add543, %conv40
  tail call void @free_extent_map(ptr noundef %call546) #5
  %call614 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add611, i64 noundef %conv40) #5
  %cmp.i1858 = icmp ugt ptr %call614, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1858, label %do.end619, label %if.end622

do.end619:                                        ; preds = %if.end606
  call void @__sanitizer_cov_trace_pc() #7
  %call621 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 526) #8
  br label %out

if.end622:                                        ; preds = %if.end606
  %block_start623 = getelementptr inbounds %struct.extent_map, ptr %call614, i32 0, i32 8
  %122 = ptrtoint ptr %block_start623 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %block_start623, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4, i64 %123)
  %cmp624 = icmp ugt i64 %123, -4
  br i1 %cmp624, label %do.end629, label %if.end633

do.end629:                                        ; preds = %if.end622
  call void @__sanitizer_cov_trace_pc() #7
  %call632 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 530, i64 noundef %123) #8
  br label %out

if.end633:                                        ; preds = %if.end622
  %start634 = getelementptr inbounds %struct.extent_map, ptr %call614, i32 0, i32 1
  %124 = ptrtoint ptr %start634 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %start634, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %125, i64 %add611)
  %cmp635.not = icmp eq i64 %125, %add611
  br i1 %cmp635.not, label %lor.lhs.false637, label %if.end633.do.end645_crit_edge

if.end633.do.end645_crit_edge:                    ; preds = %if.end633
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end645

lor.lhs.false637:                                 ; preds = %if.end633
  %len638 = getelementptr inbounds %struct.extent_map, ptr %call614, i32 0, i32 2
  %126 = ptrtoint ptr %len638 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %len638, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %127, i64 %conv40)
  %cmp640.not = icmp eq i64 %127, %conv40
  br i1 %cmp640.not, label %if.end650, label %lor.lhs.false637.do.end645_crit_edge

lor.lhs.false637.do.end645_crit_edge:             ; preds = %lor.lhs.false637
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end645

do.end645:                                        ; preds = %lor.lhs.false637.do.end645_crit_edge, %if.end633.do.end645_crit_edge
  %len648 = getelementptr inbounds %struct.extent_map, ptr %call614, i32 0, i32 2
  %128 = ptrtoint ptr %len648 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %len648, align 8
  %call649 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 536, i64 noundef %add611, i32 noundef %sectorsize, i64 noundef %125, i64 noundef %129) #8
  br label %out

if.end650:                                        ; preds = %lor.lhs.false637
  %flags651 = getelementptr inbounds %struct.extent_map, ptr %call614, i32 0, i32 11
  %130 = ptrtoint ptr %flags651 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags651, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp652.not = icmp eq i32 %131, 0
  br i1 %cmp652.not, label %if.end661, label %do.end657

do.end657:                                        ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #7
  %call660 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 540, i32 noundef %131) #8
  br label %out

if.end661:                                        ; preds = %if.end650
  %orig_start662 = getelementptr inbounds %struct.extent_map, ptr %call614, i32 0, i32 5
  %132 = ptrtoint ptr %orig_start662 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %orig_start662, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %133, i64 %add543)
  %cmp663.not = icmp eq i64 %133, %add543
  br i1 %cmp663.not, label %if.end672, label %do.end668

do.end668:                                        ; preds = %if.end661
  call void @__sanitizer_cov_trace_pc() #7
  %call671 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.2, i32 noundef 545, i64 noundef %add543, i64 noundef %133) #8
  br label %out

if.end672:                                        ; preds = %if.end661
  %add677 = add i64 %110, %conv40
  call void @__sanitizer_cov_trace_cmp8(i64 %123, i64 %add677)
  %cmp678.not = icmp eq i64 %123, %add677
  br i1 %cmp678.not, label %if.end691, label %do.end683

do.end683:                                        ; preds = %if.end672
  call void @__sanitizer_cov_trace_pc() #7
  %call690 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.2, i32 noundef 551, i64 noundef %add677, i64 noundef %123) #8
  br label %out

if.end691:                                        ; preds = %if.end672
  %add694 = add i64 %add611, %conv40
  tail call void @free_extent_map(ptr noundef %call614) #5
  %call697 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add694, i64 noundef %conv40) #5
  %cmp.i1860 = icmp ugt ptr %call697, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1860, label %do.end702, label %if.end705

do.end702:                                        ; preds = %if.end691
  call void @__sanitizer_cov_trace_pc() #7
  %call704 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 559) #8
  br label %out

if.end705:                                        ; preds = %if.end691
  %block_start706 = getelementptr inbounds %struct.extent_map, ptr %call697, i32 0, i32 8
  %134 = ptrtoint ptr %block_start706 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %block_start706, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %135)
  %cmp707 = icmp ugt i64 %135, -5
  br i1 %cmp707, label %do.end712, label %if.end716

do.end712:                                        ; preds = %if.end705
  call void @__sanitizer_cov_trace_pc() #7
  %call715 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 563, i64 noundef %135) #8
  br label %out

if.end716:                                        ; preds = %if.end705
  %start717 = getelementptr inbounds %struct.extent_map, ptr %call697, i32 0, i32 1
  %136 = ptrtoint ptr %start717 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %start717, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %137, i64 %add694)
  %cmp718.not = icmp eq i64 %137, %add694
  br i1 %cmp718.not, label %lor.lhs.false720, label %if.end716.do.end729_crit_edge

if.end716.do.end729_crit_edge:                    ; preds = %if.end716
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end729

lor.lhs.false720:                                 ; preds = %if.end716
  %len721 = getelementptr inbounds %struct.extent_map, ptr %call697, i32 0, i32 2
  %138 = ptrtoint ptr %len721 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %len721, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %139, i64 %conv27.i)
  %cmp724.not = icmp eq i64 %139, %conv27.i
  br i1 %cmp724.not, label %if.end735, label %lor.lhs.false720.do.end729_crit_edge

lor.lhs.false720.do.end729_crit_edge:             ; preds = %lor.lhs.false720
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end729

do.end729:                                        ; preds = %lor.lhs.false720.do.end729_crit_edge, %if.end716.do.end729_crit_edge
  %len733 = getelementptr inbounds %struct.extent_map, ptr %call697, i32 0, i32 2
  %140 = ptrtoint ptr %len733 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %len733, align 8
  %call734 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 569, i64 noundef %add694, i32 noundef %mul26.i, i64 noundef %137, i64 noundef %141) #8
  br label %out

if.end735:                                        ; preds = %lor.lhs.false720
  %flags736 = getelementptr inbounds %struct.extent_map, ptr %call697, i32 0, i32 11
  %142 = ptrtoint ptr %flags736 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags736, align 8
  %144 = load i32, ptr @prealloc_only, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %144)
  %cmp737.not = icmp eq i32 %143, %144
  br i1 %cmp737.not, label %if.end746, label %do.end742

do.end742:                                        ; preds = %if.end735
  call void @__sanitizer_cov_trace_pc() #7
  %call745 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.2, i32 noundef 574, i32 noundef %144, i32 noundef %143) #8
  br label %out

if.end746:                                        ; preds = %if.end735
  %orig_start747 = getelementptr inbounds %struct.extent_map, ptr %call697, i32 0, i32 5
  %145 = ptrtoint ptr %orig_start747 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %orig_start747, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %add543)
  %cmp748.not = icmp eq i64 %146, %add543
  br i1 %cmp748.not, label %if.end757, label %do.end753

do.end753:                                        ; preds = %if.end746
  call void @__sanitizer_cov_trace_pc() #7
  %call756 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 579, i64 noundef %add543, i64 noundef %146) #8
  br label %out

if.end757:                                        ; preds = %if.end746
  %sub761 = sub i64 %add694, %add543
  %add762 = add i64 %sub761, %110
  call void @__sanitizer_cov_trace_cmp8(i64 %135, i64 %add762)
  %cmp763.not = icmp eq i64 %135, %add762
  br i1 %cmp763.not, label %if.end776, label %do.end768

do.end768:                                        ; preds = %if.end757
  call void @__sanitizer_cov_trace_pc() #7
  %call775 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.2, i32 noundef 585, i64 noundef %add762, i64 noundef %135) #8
  br label %out

if.end776:                                        ; preds = %if.end757
  %add779 = add i64 %add694, %conv27.i
  tail call void @free_extent_map(ptr noundef %call697) #5
  %call782 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add779, i64 noundef %conv40) #5
  %cmp.i1862 = icmp ugt ptr %call782, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1862, label %do.end787, label %if.end790

do.end787:                                        ; preds = %if.end776
  call void @__sanitizer_cov_trace_pc() #7
  %call789 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 594) #8
  br label %out

if.end790:                                        ; preds = %if.end776
  %block_start791 = getelementptr inbounds %struct.extent_map, ptr %call782, i32 0, i32 8
  %147 = ptrtoint ptr %block_start791 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %block_start791, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %148)
  %cmp792 = icmp ugt i64 %148, -5
  br i1 %cmp792, label %do.end797, label %if.end801

do.end797:                                        ; preds = %if.end790
  call void @__sanitizer_cov_trace_pc() #7
  %call800 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 598, i64 noundef %148) #8
  br label %out

if.end801:                                        ; preds = %if.end790
  %start802 = getelementptr inbounds %struct.extent_map, ptr %call782, i32 0, i32 1
  %149 = ptrtoint ptr %start802 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %start802, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %150, i64 %add779)
  %cmp803.not = icmp eq i64 %150, %add779
  br i1 %cmp803.not, label %lor.lhs.false805, label %if.end801.do.end814_crit_edge

if.end801.do.end814_crit_edge:                    ; preds = %if.end801
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end814

lor.lhs.false805:                                 ; preds = %if.end801
  %len806 = getelementptr inbounds %struct.extent_map, ptr %call782, i32 0, i32 2
  %151 = ptrtoint ptr %len806 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %len806, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %152, i64 %conv27.i)
  %cmp809.not = icmp eq i64 %152, %conv27.i
  br i1 %cmp809.not, label %if.end820, label %lor.lhs.false805.do.end814_crit_edge

lor.lhs.false805.do.end814_crit_edge:             ; preds = %lor.lhs.false805
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end814

do.end814:                                        ; preds = %lor.lhs.false805.do.end814_crit_edge, %if.end801.do.end814_crit_edge
  %len818 = getelementptr inbounds %struct.extent_map, ptr %call782, i32 0, i32 2
  %153 = ptrtoint ptr %len818 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %len818, align 8
  %call819 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 604, i64 noundef %add779, i32 noundef %mul26.i, i64 noundef %150, i64 noundef %154) #8
  br label %out

if.end820:                                        ; preds = %lor.lhs.false805
  %flags821 = getelementptr inbounds %struct.extent_map, ptr %call782, i32 0, i32 11
  %155 = ptrtoint ptr %flags821 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags821, align 8
  %157 = load i32, ptr @compressed_only, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %157)
  %cmp822.not = icmp eq i32 %156, %157
  br i1 %cmp822.not, label %if.end831, label %do.end827

do.end827:                                        ; preds = %if.end820
  call void @__sanitizer_cov_trace_pc() #7
  %call830 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.2, i32 noundef 609, i32 noundef %157, i32 noundef %156) #8
  br label %out

if.end831:                                        ; preds = %if.end820
  %orig_start832 = getelementptr inbounds %struct.extent_map, ptr %call782, i32 0, i32 5
  %158 = ptrtoint ptr %orig_start832 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %orig_start832, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %159, i64 %add779)
  %cmp834.not = icmp eq i64 %159, %add779
  br i1 %cmp834.not, label %if.end844, label %do.end839

do.end839:                                        ; preds = %if.end831
  call void @__sanitizer_cov_trace_pc() #7
  %call843 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 614, i64 noundef %add779, i64 noundef %159) #8
  br label %out

if.end844:                                        ; preds = %if.end831
  %compress_type = getelementptr inbounds %struct.extent_map, ptr %call782, i32 0, i32 14
  %160 = ptrtoint ptr %compress_type to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %compress_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %161)
  %cmp845.not = icmp eq i32 %161, 1
  br i1 %cmp845.not, label %if.end854, label %do.end850

do.end850:                                        ; preds = %if.end844
  call void @__sanitizer_cov_trace_pc() #7
  %call853 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.2, i32 noundef 619, i32 noundef 1, i32 noundef %161) #8
  br label %out

if.end854:                                        ; preds = %if.end844
  %add857 = add i64 %add779, %conv27.i
  tail call void @free_extent_map(ptr noundef %call782) #5
  %call860 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add857, i64 noundef %conv40) #5
  %cmp.i1864 = icmp ugt ptr %call860, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1864, label %do.end865, label %if.end868

do.end865:                                        ; preds = %if.end854
  call void @__sanitizer_cov_trace_pc() #7
  %call867 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 628) #8
  br label %out

if.end868:                                        ; preds = %if.end854
  %block_start869 = getelementptr inbounds %struct.extent_map, ptr %call860, i32 0, i32 8
  %162 = ptrtoint ptr %block_start869 to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %block_start869, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %163)
  %cmp870 = icmp ugt i64 %163, -5
  br i1 %cmp870, label %do.end875, label %if.end879

do.end875:                                        ; preds = %if.end868
  call void @__sanitizer_cov_trace_pc() #7
  %call878 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 632, i64 noundef %163) #8
  br label %out

if.end879:                                        ; preds = %if.end868
  %start880 = getelementptr inbounds %struct.extent_map, ptr %call860, i32 0, i32 1
  %164 = ptrtoint ptr %start880 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %start880, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %165, i64 %add857)
  %cmp881.not = icmp eq i64 %165, %add857
  br i1 %cmp881.not, label %lor.lhs.false883, label %if.end879.do.end891_crit_edge

if.end879.do.end891_crit_edge:                    ; preds = %if.end879
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end891

lor.lhs.false883:                                 ; preds = %if.end879
  %len884 = getelementptr inbounds %struct.extent_map, ptr %call860, i32 0, i32 2
  %166 = ptrtoint ptr %len884 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %len884, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %167, i64 %conv40)
  %cmp886.not = icmp eq i64 %167, %conv40
  br i1 %cmp886.not, label %if.end896, label %lor.lhs.false883.do.end891_crit_edge

lor.lhs.false883.do.end891_crit_edge:             ; preds = %lor.lhs.false883
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end891

do.end891:                                        ; preds = %lor.lhs.false883.do.end891_crit_edge, %if.end879.do.end891_crit_edge
  %len894 = getelementptr inbounds %struct.extent_map, ptr %call860, i32 0, i32 2
  %168 = ptrtoint ptr %len894 to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %len894, align 8
  %call895 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 638, i64 noundef %add857, i32 noundef %sectorsize, i64 noundef %165, i64 noundef %169) #8
  br label %out

if.end896:                                        ; preds = %lor.lhs.false883
  %flags897 = getelementptr inbounds %struct.extent_map, ptr %call860, i32 0, i32 11
  %170 = ptrtoint ptr %flags897 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags897, align 8
  %172 = load i32, ptr @compressed_only, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %172)
  %cmp898.not = icmp eq i32 %171, %172
  br i1 %cmp898.not, label %if.end907, label %do.end903

do.end903:                                        ; preds = %if.end896
  call void @__sanitizer_cov_trace_pc() #7
  %call906 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.2, i32 noundef 643, i32 noundef %172, i32 noundef %171) #8
  br label %out

if.end907:                                        ; preds = %if.end896
  %orig_start908 = getelementptr inbounds %struct.extent_map, ptr %call860, i32 0, i32 5
  %173 = ptrtoint ptr %orig_start908 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %orig_start908, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %174, i64 %add857)
  %cmp910.not = icmp eq i64 %174, %add857
  br i1 %cmp910.not, label %if.end920, label %do.end915

do.end915:                                        ; preds = %if.end907
  call void @__sanitizer_cov_trace_pc() #7
  %call919 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 648, i64 noundef %add857, i64 noundef %174) #8
  br label %out

if.end920:                                        ; preds = %if.end907
  %compress_type921 = getelementptr inbounds %struct.extent_map, ptr %call860, i32 0, i32 14
  %175 = ptrtoint ptr %compress_type921 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %compress_type921, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %176)
  %cmp922.not = icmp eq i32 %176, 1
  br i1 %cmp922.not, label %if.end931, label %do.end927

do.end927:                                        ; preds = %if.end920
  call void @__sanitizer_cov_trace_pc() #7
  %call930 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.2, i32 noundef 653, i32 noundef 1, i32 noundef %176) #8
  br label %out

if.end931:                                        ; preds = %if.end920
  %add936 = add i64 %add857, %conv40
  tail call void @free_extent_map(ptr noundef %call860) #5
  %call939 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add936, i64 noundef %conv40) #5
  %cmp.i1866 = icmp ugt ptr %call939, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1866, label %do.end944, label %if.end947

do.end944:                                        ; preds = %if.end931
  call void @__sanitizer_cov_trace_pc() #7
  %call946 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 663) #8
  br label %out

if.end947:                                        ; preds = %if.end931
  %block_start948 = getelementptr inbounds %struct.extent_map, ptr %call939, i32 0, i32 8
  %177 = ptrtoint ptr %block_start948 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %block_start948, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %178)
  %cmp949 = icmp ugt i64 %178, -5
  br i1 %cmp949, label %do.end954, label %if.end958

do.end954:                                        ; preds = %if.end947
  call void @__sanitizer_cov_trace_pc() #7
  %call957 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 667, i64 noundef %178) #8
  br label %out

if.end958:                                        ; preds = %if.end947
  %start959 = getelementptr inbounds %struct.extent_map, ptr %call939, i32 0, i32 1
  %179 = ptrtoint ptr %start959 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %start959, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %180, i64 %add936)
  %cmp960.not = icmp eq i64 %180, %add936
  br i1 %cmp960.not, label %lor.lhs.false962, label %if.end958.do.end970_crit_edge

if.end958.do.end970_crit_edge:                    ; preds = %if.end958
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end970

lor.lhs.false962:                                 ; preds = %if.end958
  %len963 = getelementptr inbounds %struct.extent_map, ptr %call939, i32 0, i32 2
  %181 = ptrtoint ptr %len963 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %len963, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %182, i64 %conv40)
  %cmp965.not = icmp eq i64 %182, %conv40
  br i1 %cmp965.not, label %if.end975, label %lor.lhs.false962.do.end970_crit_edge

lor.lhs.false962.do.end970_crit_edge:             ; preds = %lor.lhs.false962
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end970

do.end970:                                        ; preds = %lor.lhs.false962.do.end970_crit_edge, %if.end958.do.end970_crit_edge
  %len973 = getelementptr inbounds %struct.extent_map, ptr %call939, i32 0, i32 2
  %183 = ptrtoint ptr %len973 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %len973, align 8
  %call974 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 673, i64 noundef %add936, i32 noundef %sectorsize, i64 noundef %180, i64 noundef %184) #8
  br label %out

if.end975:                                        ; preds = %lor.lhs.false962
  %flags976 = getelementptr inbounds %struct.extent_map, ptr %call939, i32 0, i32 11
  %185 = ptrtoint ptr %flags976 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %flags976, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp977.not = icmp eq i32 %186, 0
  br i1 %cmp977.not, label %if.end986, label %do.end982

do.end982:                                        ; preds = %if.end975
  call void @__sanitizer_cov_trace_pc() #7
  %call985 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 677, i32 noundef %186) #8
  br label %out

if.end986:                                        ; preds = %if.end975
  %orig_start987 = getelementptr inbounds %struct.extent_map, ptr %call939, i32 0, i32 5
  %187 = ptrtoint ptr %orig_start987 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %orig_start987, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %188, i64 %add936)
  %cmp989.not = icmp eq i64 %188, %add936
  br i1 %cmp989.not, label %if.end999, label %do.end994

do.end994:                                        ; preds = %if.end986
  call void @__sanitizer_cov_trace_pc() #7
  %call998 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 682, i64 noundef %add936, i64 noundef %188) #8
  br label %out

if.end999:                                        ; preds = %if.end986
  %add1002 = add i64 %add936, %conv40
  tail call void @free_extent_map(ptr noundef %call939) #5
  %call1005 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add1002, i64 noundef %conv40) #5
  %cmp.i1868 = icmp ugt ptr %call1005, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1868, label %do.end1010, label %if.end1013

do.end1010:                                       ; preds = %if.end999
  call void @__sanitizer_cov_trace_pc() #7
  %call1012 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 690) #8
  br label %out

if.end1013:                                       ; preds = %if.end999
  %block_start1014 = getelementptr inbounds %struct.extent_map, ptr %call1005, i32 0, i32 8
  %189 = ptrtoint ptr %block_start1014 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %block_start1014, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %190, i64 %163)
  %cmp1015.not = icmp eq i64 %190, %163
  br i1 %cmp1015.not, label %if.end1024, label %do.end1020

do.end1020:                                       ; preds = %if.end1013
  call void @__sanitizer_cov_trace_pc() #7
  %call1023 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.2, i32 noundef 695, i64 noundef %163, i64 noundef %190) #8
  br label %out

if.end1024:                                       ; preds = %if.end1013
  %start1025 = getelementptr inbounds %struct.extent_map, ptr %call1005, i32 0, i32 1
  %191 = ptrtoint ptr %start1025 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %start1025, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %192, i64 %add1002)
  %cmp1026.not = icmp eq i64 %192, %add1002
  br i1 %cmp1026.not, label %lor.lhs.false1028, label %if.end1024.do.end1037_crit_edge

if.end1024.do.end1037_crit_edge:                  ; preds = %if.end1024
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1037

lor.lhs.false1028:                                ; preds = %if.end1024
  %len1029 = getelementptr inbounds %struct.extent_map, ptr %call1005, i32 0, i32 2
  %193 = ptrtoint ptr %len1029 to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %len1029, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %194, i64 %conv27.i)
  %cmp1032.not = icmp eq i64 %194, %conv27.i
  br i1 %cmp1032.not, label %if.end1043, label %lor.lhs.false1028.do.end1037_crit_edge

lor.lhs.false1028.do.end1037_crit_edge:           ; preds = %lor.lhs.false1028
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1037

do.end1037:                                       ; preds = %lor.lhs.false1028.do.end1037_crit_edge, %if.end1024.do.end1037_crit_edge
  %len1041 = getelementptr inbounds %struct.extent_map, ptr %call1005, i32 0, i32 2
  %195 = ptrtoint ptr %len1041 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %len1041, align 8
  %call1042 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 701, i64 noundef %add1002, i32 noundef %mul26.i, i64 noundef %192, i64 noundef %196) #8
  br label %out

if.end1043:                                       ; preds = %lor.lhs.false1028
  %flags1044 = getelementptr inbounds %struct.extent_map, ptr %call1005, i32 0, i32 11
  %197 = ptrtoint ptr %flags1044 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %flags1044, align 8
  %199 = load i32, ptr @compressed_only, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %199)
  %cmp1045.not = icmp eq i32 %198, %199
  br i1 %cmp1045.not, label %if.end1054, label %do.end1050

do.end1050:                                       ; preds = %if.end1043
  call void @__sanitizer_cov_trace_pc() #7
  %call1053 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.2, i32 noundef 706, i32 noundef %199, i32 noundef %198) #8
  br label %out

if.end1054:                                       ; preds = %if.end1043
  %orig_start1055 = getelementptr inbounds %struct.extent_map, ptr %call1005, i32 0, i32 5
  %200 = ptrtoint ptr %orig_start1055 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %orig_start1055, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %201, i64 %add857)
  %cmp1056.not = icmp eq i64 %201, %add857
  br i1 %cmp1056.not, label %if.end1065, label %do.end1061

do.end1061:                                       ; preds = %if.end1054
  call void @__sanitizer_cov_trace_pc() #7
  %call1064 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 711, i64 noundef %add1002, i64 noundef %add857) #8
  br label %out

if.end1065:                                       ; preds = %if.end1054
  %compress_type1066 = getelementptr inbounds %struct.extent_map, ptr %call1005, i32 0, i32 14
  %202 = ptrtoint ptr %compress_type1066 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %compress_type1066, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %203)
  %cmp1067.not = icmp eq i32 %203, 1
  br i1 %cmp1067.not, label %if.end1076, label %do.end1072

do.end1072:                                       ; preds = %if.end1065
  call void @__sanitizer_cov_trace_pc() #7
  %call1075 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.2, i32 noundef 716, i32 noundef 1, i32 noundef %203) #8
  br label %out

if.end1076:                                       ; preds = %if.end1065
  %add1079 = add i64 %add1002, %conv27.i
  tail call void @free_extent_map(ptr noundef %call1005) #5
  %add1081 = add i64 %add1079, 6
  %call1083 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add1081, i64 noundef %conv40) #5
  %cmp.i1870 = icmp ugt ptr %call1083, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1870, label %do.end1088, label %if.end1091

do.end1088:                                       ; preds = %if.end1076
  call void @__sanitizer_cov_trace_pc() #7
  %call1090 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 725) #8
  br label %out

if.end1091:                                       ; preds = %if.end1076
  %block_start1092 = getelementptr inbounds %struct.extent_map, ptr %call1083, i32 0, i32 8
  %204 = ptrtoint ptr %block_start1092 to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %block_start1092, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %205)
  %cmp1093 = icmp ugt i64 %205, -5
  br i1 %cmp1093, label %do.end1098, label %if.end1102

do.end1098:                                       ; preds = %if.end1091
  call void @__sanitizer_cov_trace_pc() #7
  %call1101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 729, i64 noundef %205) #8
  br label %out

if.end1102:                                       ; preds = %if.end1091
  %start1103 = getelementptr inbounds %struct.extent_map, ptr %call1083, i32 0, i32 1
  %206 = ptrtoint ptr %start1103 to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %start1103, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %207, i64 %add1079)
  %cmp1104.not = icmp eq i64 %207, %add1079
  br i1 %cmp1104.not, label %lor.lhs.false1106, label %if.end1102.do.end1114_crit_edge

if.end1102.do.end1114_crit_edge:                  ; preds = %if.end1102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1114

lor.lhs.false1106:                                ; preds = %if.end1102
  %len1107 = getelementptr inbounds %struct.extent_map, ptr %call1083, i32 0, i32 2
  %208 = ptrtoint ptr %len1107 to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %len1107, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %209, i64 %conv40)
  %cmp1109.not = icmp eq i64 %209, %conv40
  br i1 %cmp1109.not, label %if.end1119, label %lor.lhs.false1106.do.end1114_crit_edge

lor.lhs.false1106.do.end1114_crit_edge:           ; preds = %lor.lhs.false1106
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1114

do.end1114:                                       ; preds = %lor.lhs.false1106.do.end1114_crit_edge, %if.end1102.do.end1114_crit_edge
  %len1117 = getelementptr inbounds %struct.extent_map, ptr %call1083, i32 0, i32 2
  %210 = ptrtoint ptr %len1117 to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %len1117, align 8
  %call1118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 735, i64 noundef %add1079, i32 noundef %sectorsize, i64 noundef %207, i64 noundef %211) #8
  br label %out

if.end1119:                                       ; preds = %lor.lhs.false1106
  %flags1120 = getelementptr inbounds %struct.extent_map, ptr %call1083, i32 0, i32 11
  %212 = ptrtoint ptr %flags1120 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %flags1120, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp1121.not = icmp eq i32 %213, 0
  br i1 %cmp1121.not, label %if.end1130, label %do.end1126

do.end1126:                                       ; preds = %if.end1119
  call void @__sanitizer_cov_trace_pc() #7
  %call1129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 739, i32 noundef %213) #8
  br label %out

if.end1130:                                       ; preds = %if.end1119
  %orig_start1131 = getelementptr inbounds %struct.extent_map, ptr %call1083, i32 0, i32 5
  %214 = ptrtoint ptr %orig_start1131 to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %orig_start1131, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %215, i64 %add1079)
  %cmp1133.not = icmp eq i64 %215, %add1079
  br i1 %cmp1133.not, label %if.end1143, label %do.end1138

do.end1138:                                       ; preds = %if.end1130
  call void @__sanitizer_cov_trace_pc() #7
  %call1142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 744, i64 noundef %add1079, i64 noundef %215) #8
  br label %out

if.end1143:                                       ; preds = %if.end1130
  %add1146 = add i64 %add1079, %conv40
  tail call void @free_extent_map(ptr noundef %call1083) #5
  %call1148 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add1146, i64 noundef 4194304) #5
  %cmp.i1872 = icmp ugt ptr %call1148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1872, label %do.end1153, label %if.end1156

do.end1153:                                       ; preds = %if.end1143
  call void @__sanitizer_cov_trace_pc() #7
  %call1155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 752) #8
  br label %out

if.end1156:                                       ; preds = %if.end1143
  %block_start1157 = getelementptr inbounds %struct.extent_map, ptr %call1148, i32 0, i32 8
  %216 = ptrtoint ptr %block_start1157 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %block_start1157, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %217)
  %cmp1158.not = icmp eq i64 %217, -3
  br i1 %cmp1158.not, label %if.end1167, label %do.end1163

do.end1163:                                       ; preds = %if.end1156
  call void @__sanitizer_cov_trace_pc() #7
  %call1166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.2, i32 noundef 756, i64 noundef %217) #8
  br label %out

if.end1167:                                       ; preds = %if.end1156
  %start1168 = getelementptr inbounds %struct.extent_map, ptr %call1148, i32 0, i32 1
  %218 = ptrtoint ptr %start1168 to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %start1168, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %219, i64 %add1146)
  %cmp1169.not = icmp eq i64 %219, %add1146
  br i1 %cmp1169.not, label %lor.lhs.false1171, label %if.end1167.do.end1180_crit_edge

if.end1167.do.end1180_crit_edge:                  ; preds = %if.end1167
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = mul i32 %sectorsize, 3
  br label %do.end1180

lor.lhs.false1171:                                ; preds = %if.end1167
  %len1172 = getelementptr inbounds %struct.extent_map, ptr %call1148, i32 0, i32 2
  %220 = ptrtoint ptr %len1172 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %len1172, align 8
  %mul1173 = mul i32 %sectorsize, 3
  %conv1174 = zext i32 %mul1173 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %221, i64 %conv1174)
  %cmp1175.not = icmp eq i64 %221, %conv1174
  br i1 %cmp1175.not, label %if.end1186, label %lor.lhs.false1171.do.end1180_crit_edge

lor.lhs.false1171.do.end1180_crit_edge:           ; preds = %lor.lhs.false1171
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1180

do.end1180:                                       ; preds = %lor.lhs.false1171.do.end1180_crit_edge, %if.end1167.do.end1180_crit_edge
  %mul1182.pre-phi = phi i32 [ %.pre, %if.end1167.do.end1180_crit_edge ], [ %mul1173, %lor.lhs.false1171.do.end1180_crit_edge ]
  %len1184 = getelementptr inbounds %struct.extent_map, ptr %call1148, i32 0, i32 2
  %222 = ptrtoint ptr %len1184 to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %len1184, align 8
  %call1185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 767, i64 noundef %add1146, i32 noundef %mul1182.pre-phi, i64 noundef %219, i64 noundef %223) #8
  br label %out

if.end1186:                                       ; preds = %lor.lhs.false1171
  %flags1187 = getelementptr inbounds %struct.extent_map, ptr %call1148, i32 0, i32 11
  %224 = ptrtoint ptr %flags1187 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %flags1187, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %cmp1188.not = icmp eq i32 %225, 0
  br i1 %cmp1188.not, label %if.end1197, label %do.end1193

do.end1193:                                       ; preds = %if.end1186
  call void @__sanitizer_cov_trace_pc() #7
  %call1196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.2, i32 noundef 772, i32 noundef 0, i32 noundef %225) #8
  br label %out

if.end1197:                                       ; preds = %if.end1186
  %orig_start1198 = getelementptr inbounds %struct.extent_map, ptr %call1148, i32 0, i32 5
  %226 = ptrtoint ptr %orig_start1198 to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %orig_start1198, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %227, i64 %add1146)
  %cmp1200.not = icmp eq i64 %227, %add1146
  br i1 %cmp1200.not, label %if.end1210, label %do.end1205

do.end1205:                                       ; preds = %if.end1197
  call void @__sanitizer_cov_trace_pc() #7
  %call1209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 777, i64 noundef %add1146, i64 noundef %227) #8
  br label %out

if.end1210:                                       ; preds = %if.end1197
  %add1213 = add i64 %221, %add1146
  tail call void @free_extent_map(ptr noundef %call1148) #5
  %call1216 = tail call ptr @btrfs_get_extent(ptr noundef %add.ptr.i1834, ptr noundef null, i32 noundef 0, i64 noundef %add1213, i64 noundef %conv40) #5
  %cmp.i1874 = icmp ugt ptr %call1216, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1874, label %do.end1221, label %if.end1224

do.end1221:                                       ; preds = %if.end1210
  call void @__sanitizer_cov_trace_pc() #7
  %call1223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 785) #8
  br label %out

if.end1224:                                       ; preds = %if.end1210
  %block_start1225 = getelementptr inbounds %struct.extent_map, ptr %call1216, i32 0, i32 8
  %228 = ptrtoint ptr %block_start1225 to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %block_start1225, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %229)
  %cmp1226 = icmp ugt i64 %229, -5
  br i1 %cmp1226, label %do.end1231, label %if.end1235

do.end1231:                                       ; preds = %if.end1224
  call void @__sanitizer_cov_trace_pc() #7
  %call1234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 789, i64 noundef %229) #8
  br label %out

if.end1235:                                       ; preds = %if.end1224
  %start1236 = getelementptr inbounds %struct.extent_map, ptr %call1216, i32 0, i32 1
  %230 = ptrtoint ptr %start1236 to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %start1236, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %231, i64 %add1213)
  %cmp1237.not = icmp eq i64 %231, %add1213
  br i1 %cmp1237.not, label %lor.lhs.false1239, label %if.end1235.do.end1247_crit_edge

if.end1235.do.end1247_crit_edge:                  ; preds = %if.end1235
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1247

lor.lhs.false1239:                                ; preds = %if.end1235
  %len1240 = getelementptr inbounds %struct.extent_map, ptr %call1216, i32 0, i32 2
  %232 = ptrtoint ptr %len1240 to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %len1240, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %233, i64 %conv40)
  %cmp1242.not = icmp eq i64 %233, %conv40
  br i1 %cmp1242.not, label %if.end1252, label %lor.lhs.false1239.do.end1247_crit_edge

lor.lhs.false1239.do.end1247_crit_edge:           ; preds = %lor.lhs.false1239
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1247

do.end1247:                                       ; preds = %lor.lhs.false1239.do.end1247_crit_edge, %if.end1235.do.end1247_crit_edge
  %len1250 = getelementptr inbounds %struct.extent_map, ptr %call1216, i32 0, i32 2
  %234 = ptrtoint ptr %len1250 to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %len1250, align 8
  %call1251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 795, i64 noundef %add1213, i32 noundef %sectorsize, i64 noundef %231, i64 noundef %235) #8
  br label %out

if.end1252:                                       ; preds = %lor.lhs.false1239
  %flags1253 = getelementptr inbounds %struct.extent_map, ptr %call1216, i32 0, i32 11
  %236 = ptrtoint ptr %flags1253 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %flags1253, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp1254.not = icmp eq i32 %237, 0
  br i1 %cmp1254.not, label %if.end1263, label %do.end1259

do.end1259:                                       ; preds = %if.end1252
  call void @__sanitizer_cov_trace_pc() #7
  %call1262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 799, i32 noundef %237) #8
  br label %out

if.end1263:                                       ; preds = %if.end1252
  %orig_start1264 = getelementptr inbounds %struct.extent_map, ptr %call1216, i32 0, i32 5
  %238 = ptrtoint ptr %orig_start1264 to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %orig_start1264, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %239, i64 %add1213)
  %cmp1266.not = icmp eq i64 %239, %add1213
  br i1 %cmp1266.not, label %if.end1263.out_crit_edge, label %do.end1271

if.end1263.out_crit_edge:                         ; preds = %if.end1263
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end1271:                                       ; preds = %if.end1263
  call void @__sanitizer_cov_trace_pc() #7
  %call1275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 804, i64 noundef %add1213, i64 noundef %239) #8
  br label %out

out:                                              ; preds = %do.end1271, %if.end1263.out_crit_edge, %do.end1259, %do.end1247, %do.end1231, %do.end1221, %do.end1205, %do.end1193, %do.end1180, %do.end1163, %do.end1153, %do.end1138, %do.end1126, %do.end1114, %do.end1098, %do.end1088, %do.end1072, %do.end1061, %do.end1050, %do.end1037, %do.end1020, %do.end1010, %do.end994, %do.end982, %do.end970, %do.end954, %do.end944, %do.end927, %do.end915, %do.end903, %do.end891, %do.end875, %do.end865, %do.end850, %do.end839, %do.end827, %do.end814, %do.end797, %do.end787, %do.end768, %do.end753, %do.end742, %do.end729, %do.end712, %do.end702, %do.end683, %do.end668, %do.end657, %do.end645, %do.end629, %do.end619, %do.end601, %do.end589, %do.end577, %do.end561, %do.end551, %do.end535, %do.end523, %do.end511, %do.end495, %do.end485, %do.end470, %do.end456, %do.end445, %do.end432, %do.end416, %do.end406, %do.end391, %do.end379, %do.end363, %do.end353, %do.end335, %do.end323, %do.end311, %do.end295, %do.end285, %do.end269, %do.end257, %do.end245, %do.end228, %do.end218, %do.end203, %do.end191, %do.end176, %do.end166, %do.end151, %do.end139, %do.end123, %do.end113, %do.end99, %do.end88, %do.end76, %do.end66, %do.end54
  %ret.0 = phi i32 [ -22, %do.end54 ], [ -22, %do.end66 ], [ -22, %do.end76 ], [ -22, %do.end88 ], [ -22, %do.end99 ], [ -22, %do.end113 ], [ -22, %do.end123 ], [ -22, %do.end139 ], [ -22, %do.end151 ], [ -22, %do.end166 ], [ -22, %do.end176 ], [ -22, %do.end191 ], [ -22, %do.end203 ], [ -22, %do.end218 ], [ -22, %do.end228 ], [ -22, %do.end245 ], [ -22, %do.end257 ], [ -22, %do.end269 ], [ -22, %do.end285 ], [ -22, %do.end295 ], [ -22, %do.end311 ], [ -22, %do.end323 ], [ -22, %do.end335 ], [ -22, %do.end353 ], [ -22, %do.end363 ], [ -22, %do.end379 ], [ -22, %do.end391 ], [ -22, %do.end406 ], [ -22, %do.end416 ], [ -22, %do.end432 ], [ -22, %do.end445 ], [ -22, %do.end456 ], [ -22, %do.end470 ], [ -22, %do.end485 ], [ -22, %do.end495 ], [ -22, %do.end511 ], [ -22, %do.end523 ], [ -22, %do.end535 ], [ -22, %do.end551 ], [ -22, %do.end561 ], [ -22, %do.end577 ], [ -22, %do.end589 ], [ -22, %do.end601 ], [ -22, %do.end619 ], [ -22, %do.end629 ], [ -22, %do.end645 ], [ -22, %do.end657 ], [ -22, %do.end668 ], [ -22, %do.end683 ], [ -22, %do.end702 ], [ -22, %do.end712 ], [ -22, %do.end729 ], [ -22, %do.end742 ], [ -22, %do.end753 ], [ -22, %do.end768 ], [ -22, %do.end787 ], [ -22, %do.end797 ], [ -22, %do.end814 ], [ -22, %do.end827 ], [ -22, %do.end839 ], [ -22, %do.end850 ], [ -22, %do.end865 ], [ -22, %do.end875 ], [ -22, %do.end891 ], [ -22, %do.end903 ], [ -22, %do.end915 ], [ -22, %do.end927 ], [ -22, %do.end944 ], [ -22, %do.end954 ], [ -22, %do.end970 ], [ -22, %do.end982 ], [ -22, %do.end994 ], [ -22, %do.end1010 ], [ -22, %do.end1020 ], [ -22, %do.end1037 ], [ -22, %do.end1050 ], [ -22, %do.end1061 ], [ -22, %do.end1072 ], [ -22, %do.end1088 ], [ -22, %do.end1098 ], [ -22, %do.end1114 ], [ -22, %do.end1126 ], [ -22, %do.end1138 ], [ -22, %do.end1153 ], [ -22, %do.end1163 ], [ -22, %do.end1180 ], [ -22, %do.end1193 ], [ -22, %do.end1205 ], [ -22, %do.end1221 ], [ -22, %do.end1231 ], [ -22, %do.end1247 ], [ -22, %do.end1259 ], [ -22, %do.end1271 ], [ 0, %if.end1263.out_crit_edge ]
  %em.0 = phi ptr [ %call41, %do.end54 ], [ %call61, %do.end66 ], [ %call61, %do.end76 ], [ %call61, %do.end88 ], [ %call61, %do.end99 ], [ %call108, %do.end113 ], [ %call108, %do.end123 ], [ %call108, %do.end139 ], [ %call108, %do.end151 ], [ %call161, %do.end166 ], [ %call161, %do.end176 ], [ %call161, %do.end191 ], [ %call161, %do.end203 ], [ %call213, %do.end218 ], [ %call213, %do.end228 ], [ %call213, %do.end245 ], [ %call213, %do.end257 ], [ %call213, %do.end269 ], [ %call280, %do.end285 ], [ %call280, %do.end295 ], [ %call280, %do.end311 ], [ %call280, %do.end323 ], [ %call280, %do.end335 ], [ %call348, %do.end353 ], [ %call348, %do.end363 ], [ %call348, %do.end379 ], [ %call348, %do.end391 ], [ %call401, %do.end406 ], [ %call401, %do.end416 ], [ %call401, %do.end432 ], [ %call401, %do.end445 ], [ %call401, %do.end456 ], [ %call401, %do.end470 ], [ %call480, %do.end485 ], [ %call480, %do.end495 ], [ %call480, %do.end511 ], [ %call480, %do.end523 ], [ %call480, %do.end535 ], [ %call546, %do.end551 ], [ %call546, %do.end561 ], [ %call546, %do.end577 ], [ %call546, %do.end589 ], [ %call546, %do.end601 ], [ %call614, %do.end619 ], [ %call614, %do.end629 ], [ %call614, %do.end645 ], [ %call614, %do.end657 ], [ %call614, %do.end668 ], [ %call614, %do.end683 ], [ %call697, %do.end702 ], [ %call697, %do.end712 ], [ %call697, %do.end729 ], [ %call697, %do.end742 ], [ %call697, %do.end753 ], [ %call697, %do.end768 ], [ %call782, %do.end787 ], [ %call782, %do.end797 ], [ %call782, %do.end814 ], [ %call782, %do.end827 ], [ %call782, %do.end839 ], [ %call782, %do.end850 ], [ %call860, %do.end865 ], [ %call860, %do.end875 ], [ %call860, %do.end891 ], [ %call860, %do.end903 ], [ %call860, %do.end915 ], [ %call860, %do.end927 ], [ %call939, %do.end944 ], [ %call939, %do.end954 ], [ %call939, %do.end970 ], [ %call939, %do.end982 ], [ %call939, %do.end994 ], [ %call1005, %do.end1010 ], [ %call1005, %do.end1020 ], [ %call1005, %do.end1037 ], [ %call1005, %do.end1050 ], [ %call1005, %do.end1061 ], [ %call1005, %do.end1072 ], [ %call1083, %do.end1088 ], [ %call1083, %do.end1098 ], [ %call1083, %do.end1114 ], [ %call1083, %do.end1126 ], [ %call1083, %do.end1138 ], [ %call1148, %do.end1153 ], [ %call1148, %do.end1163 ], [ %call1148, %do.end1180 ], [ %call1148, %do.end1193 ], [ %call1148, %do.end1205 ], [ %call1216, %do.end1221 ], [ %call1216, %do.end1231 ], [ %call1216, %do.end1247 ], [ %call1216, %do.end1259 ], [ %call1216, %do.end1271 ], [ %call1216, %if.end1263.out_crit_edge ]
  %cmp.i1875 = icmp ugt ptr %em.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1875, label %out.if.end1279_crit_edge, label %out.if.then1278_crit_edge

out.if.then1278_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then1278

out.if.end1279_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1279

if.then1278:                                      ; preds = %out.if.then1278_crit_edge, %if.then43, %do.end31, %do.end21, %do.end12
  %root.01883 = phi ptr [ %call16, %out.if.then1278_crit_edge ], [ null, %do.end12 ], [ %call16, %do.end31 ], [ %call16, %if.then43 ], [ %call16, %do.end21 ]
  %em.01882 = phi ptr [ %em.0, %out.if.then1278_crit_edge ], [ null, %do.end12 ], [ null, %do.end31 ], [ null, %if.then43 ], [ null, %do.end21 ]
  %ret.01880 = phi i32 [ %ret.0, %out.if.then1278_crit_edge ], [ -12, %do.end12 ], [ -12, %do.end31 ], [ -22, %if.then43 ], [ -12, %do.end21 ]
  tail call void @free_extent_map(ptr noundef %em.01882) #5
  br label %if.end1279

if.end1279:                                       ; preds = %if.then1278, %out.if.end1279_crit_edge
  %root.01884 = phi ptr [ %root.01883, %if.then1278 ], [ %call16, %out.if.end1279_crit_edge ]
  %ret.01881 = phi i32 [ %ret.01880, %if.then1278 ], [ %ret.0, %out.if.end1279_crit_edge ]
  tail call void @iput(ptr noundef nonnull %call1) #5
  tail call void @btrfs_free_dummy_root(ptr noundef %root.01884) #5
  tail call void @btrfs_free_dummy_fs_info(ptr noundef %call7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end1279, %do.end4
  %retval.0 = phi i32 [ %ret.01881, %if.end1279 ], [ -12, %do.end4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_new_test_inode() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_fs_info(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_dummy_extent_buffer(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_extent(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_map(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_drop_extent_cache(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_fs_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @insert_extent(ptr noundef %root, i64 noundef %start, i64 noundef %len, i64 noundef %ram_bytes, i64 noundef %offset, i64 noundef %disk_bytenr, i64 noundef %disk_len, i32 noundef %type, i8 noundef zeroext %compression, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.btrfs_path, align 4
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %path) #5
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #5
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %4 = trunc i64 %len to i32
  %conv1 = add i32 %4, 53
  %value_len.0 = select i1 %cmp, i32 %conv1, i32 53
  %5 = getelementptr inbounds i8, ptr %path, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 72)
  %7 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %8 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %slot, ptr %slots, align 4
  %9 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 256, ptr %key, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 108, ptr %2, align 8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %start, ptr %3, align 1
  call void @btrfs_setup_item_for_insert(ptr noundef %root, ptr noundef nonnull %path, ptr noundef nonnull %key, i32 noundef %value_len.0) #5
  %mul.i.i.i = mul i32 %slot, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %12 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %1, ptr noundef %12, i32 noundef 17) #5
  %add5 = add i32 %call.i.i, 101
  %13 = inttoptr i32 %add5 to ptr
  call void @btrfs_set_64(ptr noundef %1, ptr noundef %13, i32 noundef 0, i64 noundef 1) #5
  %conv6 = trunc i32 %type to i8
  call void @btrfs_set_8(ptr noundef %1, ptr noundef %13, i32 noundef 20, i8 noundef zeroext %conv6) #5
  call void @btrfs_set_64(ptr noundef %1, ptr noundef %13, i32 noundef 21, i64 noundef %disk_bytenr) #5
  call void @btrfs_set_64(ptr noundef %1, ptr noundef %13, i32 noundef 29, i64 noundef %disk_len) #5
  call void @btrfs_set_64(ptr noundef %1, ptr noundef %13, i32 noundef 37, i64 noundef %offset) #5
  call void @btrfs_set_64(ptr noundef %1, ptr noundef %13, i32 noundef 45, i64 noundef %len) #5
  call void @btrfs_set_64(ptr noundef %1, ptr noundef %13, i32 noundef 8, i64 noundef %ram_bytes) #5
  call void @btrfs_set_8(ptr noundef %1, ptr noundef %13, i32 noundef 16, i8 noundef zeroext %compression) #5
  call void @btrfs_set_8(ptr noundef %1, ptr noundef %13, i32 noundef 17, i8 noundef zeroext 0) #5
  call void @btrfs_set_16(ptr noundef %1, ptr noundef %13, i32 noundef 18, i16 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #5
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %path) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_setup_item_for_insert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_16(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_set_extent_delalloc(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !271, !273, !274, !276, !277, !279, !280, !282, !283, !285, !286, !288, !289, !291, !292, !294, !295, !297, !298, !300, !301, !303, !304, !305, !307, !308, !310, !311, !313, !314, !316, !317, !319, !320, !322, !323, !325, !326, !328, !329, !331, !333, !334, !335, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !351, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !381, !383, !384, !386, !387, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !414, !415, !417, !418, !420, !421, !423, !424, !425, !427, !428, !430, !431, !432, !434, !435, !437, !438, !440, !441, !443, !444, !446, !447, !449, !450}
!llvm.module.flags = !{!451, !452, !453, !454, !455, !456, !457, !458}
!llvm.ident = !{!459}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1106, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @btrfs_test_inodes._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @btrfs_test_inodes._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @compressed_only, !7, !"compressed_only", i1 false, i1 false}
!7 = !{!"../fs/btrfs/tests/inode-tests.c", i32 213, i32 22}
!8 = !{ptr @prealloc_only, !9, !"prealloc_only", i1 false, i1 false}
!9 = !{!"../fs/btrfs/tests/inode-tests.c", i32 212, i32 22}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/tests/inode-tests.c", i32 227, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @test_btrfs_get_extent._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @test_btrfs_get_extent._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/btrfs/tests/inode-tests.c", i32 231, i32 3}
!17 = !{ptr @test_btrfs_get_extent._entry.5, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @test_btrfs_get_extent._entry_ptr.7, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @test_btrfs_get_extent._entry.8, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../fs/btrfs/tests/inode-tests.c", i32 237, i32 3}
!21 = !{ptr @test_btrfs_get_extent._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @test_btrfs_get_extent._entry.10, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../fs/btrfs/tests/inode-tests.c", i32 243, i32 3}
!24 = !{ptr @test_btrfs_get_extent._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @test_btrfs_get_extent._entry.12, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../fs/btrfs/tests/inode-tests.c", i32 249, i32 3}
!27 = !{ptr @test_btrfs_get_extent._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/btrfs/tests/inode-tests.c", i32 262, i32 3}
!30 = !{ptr @test_btrfs_get_extent._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @test_btrfs_get_extent._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/tests/inode-tests.c", i32 266, i32 3}
!34 = !{ptr @test_btrfs_get_extent._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @test_btrfs_get_extent._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @test_btrfs_get_extent._entry.20, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../fs/btrfs/tests/inode-tests.c", i32 281, i32 3}
!38 = !{ptr @test_btrfs_get_extent._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @test_btrfs_get_extent._entry.22, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../fs/btrfs/tests/inode-tests.c", i32 285, i32 3}
!41 = !{ptr @test_btrfs_get_extent._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/btrfs/tests/inode-tests.c", i32 289, i32 3}
!44 = !{ptr @test_btrfs_get_extent._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @test_btrfs_get_extent._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/btrfs/tests/inode-tests.c", i32 295, i32 3}
!48 = !{ptr @test_btrfs_get_extent._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @test_btrfs_get_extent._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @test_btrfs_get_extent._entry.30, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../fs/btrfs/tests/inode-tests.c", i32 303, i32 3}
!52 = !{ptr @test_btrfs_get_extent._entry_ptr.31, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/btrfs/tests/inode-tests.c", i32 307, i32 3}
!55 = !{ptr @test_btrfs_get_extent._entry.32, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @test_btrfs_get_extent._entry_ptr.34, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/btrfs/tests/inode-tests.c", i32 312, i32 3}
!59 = !{ptr @test_btrfs_get_extent._entry.35, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @test_btrfs_get_extent._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @test_btrfs_get_extent._entry.38, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../fs/btrfs/tests/inode-tests.c", i32 318, i32 3}
!63 = !{ptr @test_btrfs_get_extent._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @test_btrfs_get_extent._entry.40, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../fs/btrfs/tests/inode-tests.c", i32 331, i32 3}
!66 = !{ptr @test_btrfs_get_extent._entry_ptr.41, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @test_btrfs_get_extent._entry.42, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../fs/btrfs/tests/inode-tests.c", i32 335, i32 3}
!69 = !{ptr @test_btrfs_get_extent._entry_ptr.43, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.45, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/btrfs/tests/inode-tests.c", i32 339, i32 3}
!72 = !{ptr @test_btrfs_get_extent._entry.44, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @test_btrfs_get_extent._entry_ptr.46, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @test_btrfs_get_extent._entry.47, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../fs/btrfs/tests/inode-tests.c", i32 345, i32 3}
!76 = !{ptr @test_btrfs_get_extent._entry_ptr.48, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @test_btrfs_get_extent._entry.49, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../fs/btrfs/tests/inode-tests.c", i32 354, i32 3}
!79 = !{ptr @test_btrfs_get_extent._entry_ptr.50, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.52, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/btrfs/tests/inode-tests.c", i32 358, i32 3}
!82 = !{ptr @test_btrfs_get_extent._entry.51, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @test_btrfs_get_extent._entry_ptr.53, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.55, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/btrfs/tests/inode-tests.c", i32 362, i32 3}
!86 = !{ptr @test_btrfs_get_extent._entry.54, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @test_btrfs_get_extent._entry_ptr.56, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @test_btrfs_get_extent._entry.57, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../fs/btrfs/tests/inode-tests.c", i32 368, i32 3}
!90 = !{ptr @test_btrfs_get_extent._entry_ptr.58, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.60, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/btrfs/tests/inode-tests.c", i32 372, i32 3}
!93 = !{ptr @test_btrfs_get_extent._entry.59, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @test_btrfs_get_extent._entry_ptr.61, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @test_btrfs_get_extent._entry.62, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../fs/btrfs/tests/inode-tests.c", i32 382, i32 3}
!97 = !{ptr @test_btrfs_get_extent._entry_ptr.63, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @test_btrfs_get_extent._entry.64, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../fs/btrfs/tests/inode-tests.c", i32 386, i32 3}
!100 = !{ptr @test_btrfs_get_extent._entry_ptr.65, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.67, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/btrfs/tests/inode-tests.c", i32 390, i32 3}
!103 = !{ptr @test_btrfs_get_extent._entry.66, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @test_btrfs_get_extent._entry_ptr.68, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @test_btrfs_get_extent._entry.69, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../fs/btrfs/tests/inode-tests.c", i32 396, i32 3}
!107 = !{ptr @test_btrfs_get_extent._entry_ptr.70, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @test_btrfs_get_extent._entry.71, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../fs/btrfs/tests/inode-tests.c", i32 400, i32 3}
!110 = !{ptr @test_btrfs_get_extent._entry_ptr.72, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @test_btrfs_get_extent._entry.73, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../fs/btrfs/tests/inode-tests.c", i32 411, i32 3}
!113 = !{ptr @test_btrfs_get_extent._entry_ptr.74, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @test_btrfs_get_extent._entry.75, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../fs/btrfs/tests/inode-tests.c", i32 415, i32 3}
!116 = !{ptr @test_btrfs_get_extent._entry_ptr.76, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.78, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/btrfs/tests/inode-tests.c", i32 419, i32 3}
!119 = !{ptr @test_btrfs_get_extent._entry.77, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @test_btrfs_get_extent._entry_ptr.79, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @test_btrfs_get_extent._entry.80, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../fs/btrfs/tests/inode-tests.c", i32 425, i32 3}
!123 = !{ptr @test_btrfs_get_extent._entry_ptr.81, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @test_btrfs_get_extent._entry.82, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../fs/btrfs/tests/inode-tests.c", i32 433, i32 3}
!126 = !{ptr @test_btrfs_get_extent._entry_ptr.83, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @test_btrfs_get_extent._entry.84, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../fs/btrfs/tests/inode-tests.c", i32 437, i32 3}
!129 = !{ptr @test_btrfs_get_extent._entry_ptr.85, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @test_btrfs_get_extent._entry.86, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../fs/btrfs/tests/inode-tests.c", i32 441, i32 3}
!132 = !{ptr @test_btrfs_get_extent._entry_ptr.87, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @test_btrfs_get_extent._entry.88, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../fs/btrfs/tests/inode-tests.c", i32 447, i32 3}
!135 = !{ptr @test_btrfs_get_extent._entry_ptr.89, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @test_btrfs_get_extent._entry.90, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../fs/btrfs/tests/inode-tests.c", i32 451, i32 3}
!138 = !{ptr @test_btrfs_get_extent._entry_ptr.91, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.93, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/btrfs/tests/inode-tests.c", i32 457, i32 3}
!141 = !{ptr @test_btrfs_get_extent._entry.92, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @test_btrfs_get_extent._entry_ptr.94, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @test_btrfs_get_extent._entry.95, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../fs/btrfs/tests/inode-tests.c", i32 467, i32 3}
!145 = !{ptr @test_btrfs_get_extent._entry_ptr.96, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @test_btrfs_get_extent._entry.97, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../fs/btrfs/tests/inode-tests.c", i32 471, i32 3}
!148 = !{ptr @test_btrfs_get_extent._entry_ptr.98, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @test_btrfs_get_extent._entry.99, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../fs/btrfs/tests/inode-tests.c", i32 475, i32 3}
!151 = !{ptr @test_btrfs_get_extent._entry_ptr.100, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.102, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/btrfs/tests/inode-tests.c", i32 481, i32 3}
!154 = !{ptr @test_btrfs_get_extent._entry.101, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @test_btrfs_get_extent._entry_ptr.103, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @test_btrfs_get_extent._entry.104, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../fs/btrfs/tests/inode-tests.c", i32 486, i32 3}
!158 = !{ptr @test_btrfs_get_extent._entry_ptr.105, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @test_btrfs_get_extent._entry.106, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../fs/btrfs/tests/inode-tests.c", i32 496, i32 3}
!161 = !{ptr @test_btrfs_get_extent._entry_ptr.107, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @test_btrfs_get_extent._entry.108, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../fs/btrfs/tests/inode-tests.c", i32 500, i32 3}
!164 = !{ptr @test_btrfs_get_extent._entry_ptr.109, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @test_btrfs_get_extent._entry.110, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../fs/btrfs/tests/inode-tests.c", i32 504, i32 3}
!167 = !{ptr @test_btrfs_get_extent._entry_ptr.111, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @test_btrfs_get_extent._entry.112, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../fs/btrfs/tests/inode-tests.c", i32 510, i32 3}
!170 = !{ptr @test_btrfs_get_extent._entry_ptr.113, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @test_btrfs_get_extent._entry.114, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../fs/btrfs/tests/inode-tests.c", i32 515, i32 3}
!173 = !{ptr @test_btrfs_get_extent._entry_ptr.115, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @test_btrfs_get_extent._entry.116, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../fs/btrfs/tests/inode-tests.c", i32 526, i32 3}
!176 = !{ptr @test_btrfs_get_extent._entry_ptr.117, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @test_btrfs_get_extent._entry.118, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../fs/btrfs/tests/inode-tests.c", i32 530, i32 3}
!179 = !{ptr @test_btrfs_get_extent._entry_ptr.119, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @test_btrfs_get_extent._entry.120, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../fs/btrfs/tests/inode-tests.c", i32 534, i32 3}
!182 = !{ptr @test_btrfs_get_extent._entry_ptr.121, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @test_btrfs_get_extent._entry.122, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../fs/btrfs/tests/inode-tests.c", i32 540, i32 3}
!185 = !{ptr @test_btrfs_get_extent._entry_ptr.123, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.125, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/btrfs/tests/inode-tests.c", i32 544, i32 3}
!188 = !{ptr @test_btrfs_get_extent._entry.124, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @test_btrfs_get_extent._entry_ptr.126, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.128, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/btrfs/tests/inode-tests.c", i32 549, i32 3}
!192 = !{ptr @test_btrfs_get_extent._entry.127, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @test_btrfs_get_extent._entry_ptr.129, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @test_btrfs_get_extent._entry.130, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../fs/btrfs/tests/inode-tests.c", i32 559, i32 3}
!196 = !{ptr @test_btrfs_get_extent._entry_ptr.131, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @test_btrfs_get_extent._entry.132, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../fs/btrfs/tests/inode-tests.c", i32 563, i32 3}
!199 = !{ptr @test_btrfs_get_extent._entry_ptr.133, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @test_btrfs_get_extent._entry.134, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../fs/btrfs/tests/inode-tests.c", i32 567, i32 3}
!202 = !{ptr @test_btrfs_get_extent._entry_ptr.135, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @test_btrfs_get_extent._entry.136, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../fs/btrfs/tests/inode-tests.c", i32 573, i32 3}
!205 = !{ptr @test_btrfs_get_extent._entry_ptr.137, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @test_btrfs_get_extent._entry.138, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../fs/btrfs/tests/inode-tests.c", i32 578, i32 3}
!208 = !{ptr @test_btrfs_get_extent._entry_ptr.139, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @test_btrfs_get_extent._entry.140, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../fs/btrfs/tests/inode-tests.c", i32 583, i32 3}
!211 = !{ptr @test_btrfs_get_extent._entry_ptr.141, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @test_btrfs_get_extent._entry.142, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../fs/btrfs/tests/inode-tests.c", i32 594, i32 3}
!214 = !{ptr @test_btrfs_get_extent._entry_ptr.143, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @test_btrfs_get_extent._entry.144, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../fs/btrfs/tests/inode-tests.c", i32 598, i32 3}
!217 = !{ptr @test_btrfs_get_extent._entry_ptr.145, !216, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @test_btrfs_get_extent._entry.146, !219, !"_entry", i1 false, i1 false}
!219 = !{!"../fs/btrfs/tests/inode-tests.c", i32 602, i32 3}
!220 = !{ptr @test_btrfs_get_extent._entry_ptr.147, !219, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @test_btrfs_get_extent._entry.148, !222, !"_entry", i1 false, i1 false}
!222 = !{!"../fs/btrfs/tests/inode-tests.c", i32 608, i32 3}
!223 = !{ptr @test_btrfs_get_extent._entry_ptr.149, !222, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @test_btrfs_get_extent._entry.150, !225, !"_entry", i1 false, i1 false}
!225 = !{!"../fs/btrfs/tests/inode-tests.c", i32 613, i32 3}
!226 = !{ptr @test_btrfs_get_extent._entry_ptr.151, !225, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.153, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/btrfs/tests/inode-tests.c", i32 618, i32 3}
!229 = !{ptr @test_btrfs_get_extent._entry.152, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @test_btrfs_get_extent._entry_ptr.154, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @test_btrfs_get_extent._entry.155, !232, !"_entry", i1 false, i1 false}
!232 = !{!"../fs/btrfs/tests/inode-tests.c", i32 628, i32 3}
!233 = !{ptr @test_btrfs_get_extent._entry_ptr.156, !232, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @test_btrfs_get_extent._entry.157, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../fs/btrfs/tests/inode-tests.c", i32 632, i32 3}
!236 = !{ptr @test_btrfs_get_extent._entry_ptr.158, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @test_btrfs_get_extent._entry.159, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../fs/btrfs/tests/inode-tests.c", i32 636, i32 3}
!239 = !{ptr @test_btrfs_get_extent._entry_ptr.160, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @test_btrfs_get_extent._entry.161, !241, !"_entry", i1 false, i1 false}
!241 = !{!"../fs/btrfs/tests/inode-tests.c", i32 642, i32 3}
!242 = !{ptr @test_btrfs_get_extent._entry_ptr.162, !241, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @test_btrfs_get_extent._entry.163, !244, !"_entry", i1 false, i1 false}
!244 = !{!"../fs/btrfs/tests/inode-tests.c", i32 647, i32 3}
!245 = !{ptr @test_btrfs_get_extent._entry_ptr.164, !244, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @test_btrfs_get_extent._entry.165, !247, !"_entry", i1 false, i1 false}
!247 = !{!"../fs/btrfs/tests/inode-tests.c", i32 652, i32 3}
!248 = !{ptr @test_btrfs_get_extent._entry_ptr.166, !247, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @test_btrfs_get_extent._entry.167, !250, !"_entry", i1 false, i1 false}
!250 = !{!"../fs/btrfs/tests/inode-tests.c", i32 663, i32 3}
!251 = !{ptr @test_btrfs_get_extent._entry_ptr.168, !250, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @test_btrfs_get_extent._entry.169, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../fs/btrfs/tests/inode-tests.c", i32 667, i32 3}
!254 = !{ptr @test_btrfs_get_extent._entry_ptr.170, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @test_btrfs_get_extent._entry.171, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../fs/btrfs/tests/inode-tests.c", i32 671, i32 3}
!257 = !{ptr @test_btrfs_get_extent._entry_ptr.172, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @test_btrfs_get_extent._entry.173, !259, !"_entry", i1 false, i1 false}
!259 = !{!"../fs/btrfs/tests/inode-tests.c", i32 677, i32 3}
!260 = !{ptr @test_btrfs_get_extent._entry_ptr.174, !259, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @test_btrfs_get_extent._entry.175, !262, !"_entry", i1 false, i1 false}
!262 = !{!"../fs/btrfs/tests/inode-tests.c", i32 681, i32 3}
!263 = !{ptr @test_btrfs_get_extent._entry_ptr.176, !262, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @test_btrfs_get_extent._entry.177, !265, !"_entry", i1 false, i1 false}
!265 = !{!"../fs/btrfs/tests/inode-tests.c", i32 690, i32 3}
!266 = !{ptr @test_btrfs_get_extent._entry_ptr.178, !265, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.180, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/btrfs/tests/inode-tests.c", i32 694, i32 3}
!269 = !{ptr @test_btrfs_get_extent._entry.179, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @test_btrfs_get_extent._entry_ptr.181, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @test_btrfs_get_extent._entry.182, !272, !"_entry", i1 false, i1 false}
!272 = !{!"../fs/btrfs/tests/inode-tests.c", i32 699, i32 3}
!273 = !{ptr @test_btrfs_get_extent._entry_ptr.183, !272, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @test_btrfs_get_extent._entry.184, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../fs/btrfs/tests/inode-tests.c", i32 705, i32 3}
!276 = !{ptr @test_btrfs_get_extent._entry_ptr.185, !275, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @test_btrfs_get_extent._entry.186, !278, !"_entry", i1 false, i1 false}
!278 = !{!"../fs/btrfs/tests/inode-tests.c", i32 710, i32 3}
!279 = !{ptr @test_btrfs_get_extent._entry_ptr.187, !278, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @test_btrfs_get_extent._entry.188, !281, !"_entry", i1 false, i1 false}
!281 = !{!"../fs/btrfs/tests/inode-tests.c", i32 715, i32 3}
!282 = !{ptr @test_btrfs_get_extent._entry_ptr.189, !281, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @test_btrfs_get_extent._entry.190, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../fs/btrfs/tests/inode-tests.c", i32 725, i32 3}
!285 = !{ptr @test_btrfs_get_extent._entry_ptr.191, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @test_btrfs_get_extent._entry.192, !287, !"_entry", i1 false, i1 false}
!287 = !{!"../fs/btrfs/tests/inode-tests.c", i32 729, i32 3}
!288 = !{ptr @test_btrfs_get_extent._entry_ptr.193, !287, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @test_btrfs_get_extent._entry.194, !290, !"_entry", i1 false, i1 false}
!290 = !{!"../fs/btrfs/tests/inode-tests.c", i32 733, i32 3}
!291 = !{ptr @test_btrfs_get_extent._entry_ptr.195, !290, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @test_btrfs_get_extent._entry.196, !293, !"_entry", i1 false, i1 false}
!293 = !{!"../fs/btrfs/tests/inode-tests.c", i32 739, i32 3}
!294 = !{ptr @test_btrfs_get_extent._entry_ptr.197, !293, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @test_btrfs_get_extent._entry.198, !296, !"_entry", i1 false, i1 false}
!296 = !{!"../fs/btrfs/tests/inode-tests.c", i32 743, i32 3}
!297 = !{ptr @test_btrfs_get_extent._entry_ptr.199, !296, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @test_btrfs_get_extent._entry.200, !299, !"_entry", i1 false, i1 false}
!299 = !{!"../fs/btrfs/tests/inode-tests.c", i32 752, i32 3}
!300 = !{ptr @test_btrfs_get_extent._entry_ptr.201, !299, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.203, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/btrfs/tests/inode-tests.c", i32 756, i32 3}
!303 = !{ptr @test_btrfs_get_extent._entry.202, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @test_btrfs_get_extent._entry_ptr.204, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @test_btrfs_get_extent._entry.205, !306, !"_entry", i1 false, i1 false}
!306 = !{!"../fs/btrfs/tests/inode-tests.c", i32 765, i32 3}
!307 = !{ptr @test_btrfs_get_extent._entry_ptr.206, !306, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @test_btrfs_get_extent._entry.207, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../fs/btrfs/tests/inode-tests.c", i32 771, i32 3}
!310 = !{ptr @test_btrfs_get_extent._entry_ptr.208, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @test_btrfs_get_extent._entry.209, !312, !"_entry", i1 false, i1 false}
!312 = !{!"../fs/btrfs/tests/inode-tests.c", i32 776, i32 3}
!313 = !{ptr @test_btrfs_get_extent._entry_ptr.210, !312, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @test_btrfs_get_extent._entry.211, !315, !"_entry", i1 false, i1 false}
!315 = !{!"../fs/btrfs/tests/inode-tests.c", i32 785, i32 3}
!316 = !{ptr @test_btrfs_get_extent._entry_ptr.212, !315, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @test_btrfs_get_extent._entry.213, !318, !"_entry", i1 false, i1 false}
!318 = !{!"../fs/btrfs/tests/inode-tests.c", i32 789, i32 3}
!319 = !{ptr @test_btrfs_get_extent._entry_ptr.214, !318, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @test_btrfs_get_extent._entry.215, !321, !"_entry", i1 false, i1 false}
!321 = !{!"../fs/btrfs/tests/inode-tests.c", i32 793, i32 3}
!322 = !{ptr @test_btrfs_get_extent._entry_ptr.216, !321, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @test_btrfs_get_extent._entry.217, !324, !"_entry", i1 false, i1 false}
!324 = !{!"../fs/btrfs/tests/inode-tests.c", i32 799, i32 3}
!325 = !{ptr @test_btrfs_get_extent._entry_ptr.218, !324, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @test_btrfs_get_extent._entry.219, !327, !"_entry", i1 false, i1 false}
!327 = !{!"../fs/btrfs/tests/inode-tests.c", i32 803, i32 3}
!328 = !{ptr @test_btrfs_get_extent._entry_ptr.220, !327, !"_entry_ptr", i1 false, i1 false}
!329 = distinct !{null, !330, !"vacancy_only", i1 false, i1 false}
!330 = !{!"../fs/btrfs/tests/inode-tests.c", i32 214, i32 22}
!331 = !{ptr @.str.221, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../fs/btrfs/tests/inode-tests.c", i32 825, i32 2}
!333 = !{ptr @.str.222, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @test_hole_first._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @test_hole_first._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @test_hole_first._entry.223, !337, !"_entry", i1 false, i1 false}
!337 = !{!"../fs/btrfs/tests/inode-tests.c", i32 829, i32 3}
!338 = !{ptr @test_hole_first._entry_ptr.224, !337, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @test_hole_first._entry.225, !340, !"_entry", i1 false, i1 false}
!340 = !{!"../fs/btrfs/tests/inode-tests.c", i32 835, i32 3}
!341 = !{ptr @test_hole_first._entry_ptr.226, !340, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @test_hole_first._entry.227, !343, !"_entry", i1 false, i1 false}
!343 = !{!"../fs/btrfs/tests/inode-tests.c", i32 841, i32 3}
!344 = !{ptr @test_hole_first._entry_ptr.228, !343, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @test_hole_first._entry.229, !346, !"_entry", i1 false, i1 false}
!346 = !{!"../fs/btrfs/tests/inode-tests.c", i32 847, i32 3}
!347 = !{ptr @test_hole_first._entry_ptr.230, !346, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @test_hole_first._entry.231, !349, !"_entry", i1 false, i1 false}
!349 = !{!"../fs/btrfs/tests/inode-tests.c", i32 865, i32 3}
!350 = !{ptr @test_hole_first._entry_ptr.232, !349, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @test_hole_first._entry.233, !352, !"_entry", i1 false, i1 false}
!352 = !{!"../fs/btrfs/tests/inode-tests.c", i32 869, i32 3}
!353 = !{ptr @test_hole_first._entry_ptr.234, !352, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.236, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/btrfs/tests/inode-tests.c", i32 873, i32 3}
!356 = !{ptr @test_hole_first._entry.235, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @test_hole_first._entry_ptr.237, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.239, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../fs/btrfs/tests/inode-tests.c", i32 879, i32 3}
!360 = !{ptr @test_hole_first._entry.238, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @test_hole_first._entry_ptr.240, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @test_hole_first._entry.241, !363, !"_entry", i1 false, i1 false}
!363 = !{!"../fs/btrfs/tests/inode-tests.c", i32 887, i32 3}
!364 = !{ptr @test_hole_first._entry_ptr.242, !363, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @test_hole_first._entry.243, !366, !"_entry", i1 false, i1 false}
!366 = !{!"../fs/btrfs/tests/inode-tests.c", i32 891, i32 3}
!367 = !{ptr @test_hole_first._entry_ptr.244, !366, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.246, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../fs/btrfs/tests/inode-tests.c", i32 895, i32 3}
!370 = !{ptr @test_hole_first._entry.245, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @test_hole_first._entry_ptr.247, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.249, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../fs/btrfs/tests/inode-tests.c", i32 901, i32 3}
!374 = !{ptr @test_hole_first._entry.248, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @test_hole_first._entry_ptr.250, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.251, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../fs/btrfs/tests/inode-tests.c", i32 922, i32 2}
!378 = !{ptr @.str.252, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @test_extent_accounting._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @test_extent_accounting._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @test_extent_accounting._entry.253, !382, !"_entry", i1 false, i1 false}
!382 = !{!"../fs/btrfs/tests/inode-tests.c", i32 926, i32 3}
!383 = !{ptr @test_extent_accounting._entry_ptr.254, !382, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @test_extent_accounting._entry.255, !385, !"_entry", i1 false, i1 false}
!385 = !{!"../fs/btrfs/tests/inode-tests.c", i32 932, i32 3}
!386 = !{ptr @test_extent_accounting._entry_ptr.256, !385, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @test_extent_accounting._entry.257, !388, !"_entry", i1 false, i1 false}
!388 = !{!"../fs/btrfs/tests/inode-tests.c", i32 938, i32 3}
!389 = !{ptr @test_extent_accounting._entry_ptr.258, !388, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.260, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../fs/btrfs/tests/inode-tests.c", i32 948, i32 3}
!392 = !{ptr @test_extent_accounting._entry.259, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @test_extent_accounting._entry_ptr.261, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.263, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../fs/btrfs/tests/inode-tests.c", i32 953, i32 3}
!396 = !{ptr @test_extent_accounting._entry.262, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @test_extent_accounting._entry_ptr.264, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @test_extent_accounting._entry.265, !399, !"_entry", i1 false, i1 false}
!399 = !{!"../fs/btrfs/tests/inode-tests.c", i32 963, i32 3}
!400 = !{ptr @test_extent_accounting._entry_ptr.266, !399, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.268, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../fs/btrfs/tests/inode-tests.c", i32 968, i32 3}
!403 = !{ptr @test_extent_accounting._entry.267, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @test_extent_accounting._entry_ptr.269, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.271, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../fs/btrfs/tests/inode-tests.c", i32 980, i32 3}
!407 = !{ptr @test_extent_accounting._entry.270, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @test_extent_accounting._entry_ptr.272, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @test_extent_accounting._entry.273, !410, !"_entry", i1 false, i1 false}
!410 = !{!"../fs/btrfs/tests/inode-tests.c", i32 985, i32 3}
!411 = !{ptr @test_extent_accounting._entry_ptr.274, !410, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @test_extent_accounting._entry.275, !413, !"_entry", i1 false, i1 false}
!413 = !{!"../fs/btrfs/tests/inode-tests.c", i32 996, i32 3}
!414 = !{ptr @test_extent_accounting._entry_ptr.276, !413, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @test_extent_accounting._entry.277, !416, !"_entry", i1 false, i1 false}
!416 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1001, i32 3}
!417 = !{ptr @test_extent_accounting._entry_ptr.278, !416, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @test_extent_accounting._entry.279, !419, !"_entry", i1 false, i1 false}
!419 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1014, i32 3}
!420 = !{ptr @test_extent_accounting._entry_ptr.280, !419, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.282, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1019, i32 3}
!423 = !{ptr @test_extent_accounting._entry.281, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @test_extent_accounting._entry_ptr.283, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @test_extent_accounting._entry.284, !426, !"_entry", i1 false, i1 false}
!426 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1031, i32 3}
!427 = !{ptr @test_extent_accounting._entry_ptr.285, !426, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.287, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1036, i32 3}
!430 = !{ptr @test_extent_accounting._entry.286, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @test_extent_accounting._entry_ptr.288, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @test_extent_accounting._entry.289, !433, !"_entry", i1 false, i1 false}
!433 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1048, i32 3}
!434 = !{ptr @test_extent_accounting._entry_ptr.290, !433, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @test_extent_accounting._entry.291, !436, !"_entry", i1 false, i1 false}
!436 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1053, i32 3}
!437 = !{ptr @test_extent_accounting._entry_ptr.292, !436, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @test_extent_accounting._entry.293, !439, !"_entry", i1 false, i1 false}
!439 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1066, i32 3}
!440 = !{ptr @test_extent_accounting._entry_ptr.294, !439, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @test_extent_accounting._entry.295, !442, !"_entry", i1 false, i1 false}
!442 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1071, i32 3}
!443 = !{ptr @test_extent_accounting._entry_ptr.296, !442, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @test_extent_accounting._entry.297, !445, !"_entry", i1 false, i1 false}
!445 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1081, i32 3}
!446 = !{ptr @test_extent_accounting._entry_ptr.298, !445, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.300, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../fs/btrfs/tests/inode-tests.c", i32 1086, i32 3}
!449 = !{ptr @test_extent_accounting._entry.299, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @test_extent_accounting._entry_ptr.301, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{i32 1, !"wchar_size", i32 2}
!452 = !{i32 1, !"min_enum_size", i32 4}
!453 = !{i32 8, !"branch-target-enforcement", i32 0}
!454 = !{i32 8, !"sign-return-address", i32 0}
!455 = !{i32 8, !"sign-return-address-all", i32 0}
!456 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!457 = !{i32 7, !"uwtable", i32 1}
!458 = !{i32 7, !"frame-pointer", i32 2}
!459 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
