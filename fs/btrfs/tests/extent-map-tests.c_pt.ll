; ModuleID = '/llk/IR_all_yes/fs/btrfs/tests/extent-map-tests.c_pt.bc'
source_filename = "../fs/btrfs/tests/extent-map-tests.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.extent_map = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, %struct.refcount_struct, i32, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.84, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic64_t = type { i64 }
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
%union.anon.84 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rmap_test_vector = type { i64, i64, i64, i64, i64, [5 x i64], i8, [5 x i64] }
%struct.map_lookup = type { i64, i32, i32, i64, i32, i32, i32, [0 x %struct.btrfs_io_stripe] }
%struct.btrfs_io_stripe = type { ptr, i64, i64 }

@__const.btrfs_test_extent_map.rmap_tests = private unnamed_addr constant [2 x { i64, i64, i64, i64, i64, [5 x i64], i8, [7 x i8], [5 x i64] }] [{ i64, i64, i64, i64, i64, [5 x i64], i8, [7 x i8], [5 x i64] } { i64 16, i64 62914560, i64 268435456, i64 2, i64 2, [5 x i64] [i64 62914560, i64 331350016, i64 0, i64 0, i64 0], i8 1, [7 x i8] zeroinitializer, [5 x i64] [i64 4299161600, i64 0, i64 0, i64 0, i64 0] }, { i64, i64, i64, i64, i64, [5 x i64], i8, [7 x i8], [5 x i64] } { i64 0, i64 4294967296, i64 268435456, i64 1, i64 1, [5 x i64] [i64 268435456, i64 0, i64 0, i64 0, i64 0], i8 0, [7 x i8] zeroinitializer, [5 x i64] zeroinitializer }], align 8
@btrfs_test_extent_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016BTRFS: selftest: running extent_map tests\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"btrfs_test_extent_map\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fs/btrfs/tests/extent-map-tests.c\00", [62 x i8] zeroinitializer }, align 32
@btrfs_test_extent_map._entry_ptr = internal global ptr @btrfs_test_extent_map._entry, section ".printk_index", align 4
@btrfs_test_extent_map._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013BTRFS: selftest: %s:%d %s\0A\00", [35 x i8] zeroinitializer }, align 32
@btrfs_test_extent_map._entry_ptr.5 = internal global ptr @btrfs_test_extent_map._entry.3, section ".printk_index", align 4
@test_error = external dso_local local_unnamed_addr global [0 x ptr], align 4
@btrfs_test_extent_map._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016BTRFS: selftest: running rmap tests\0A\00", [57 x i8] zeroinitializer }, align 32
@btrfs_test_extent_map._entry_ptr.8 = internal global ptr @btrfs_test_extent_map._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@test_case_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.9, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_case_1\00", [20 x i8] zeroinitializer }, align 32
@test_case_1._entry_ptr = internal global ptr @test_case_1._entry, section ".printk_index", align 4
@test_case_1._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013BTRFS: selftest: %s:%d cannot add extent range [0, 16K)\0A\00", [37 x i8] zeroinitializer }, align 32
@test_case_1._entry_ptr.12 = internal global ptr @test_case_1._entry.10, section ".printk_index", align 4
@test_case_1._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.9, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_case_1._entry_ptr.14 = internal global ptr @test_case_1._entry.13, section ".printk_index", align 4
@test_case_1._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013BTRFS: selftest: %s:%d cannot add extent range [16K, 20K)\0A\00", [35 x i8] zeroinitializer }, align 32
@test_case_1._entry_ptr.17 = internal global ptr @test_case_1._entry.15, section ".printk_index", align 4
@test_case_1._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.9, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_case_1._entry_ptr.19 = internal global ptr @test_case_1._entry.18, section ".printk_index", align 4
@test_case_1._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013BTRFS: selftest: %s:%d case1 [%llu %llu]: ret %d\0A\00", [44 x i8] zeroinitializer }, align 32
@test_case_1._entry_ptr.22 = internal global ptr @test_case_1._entry.20, section ".printk_index", align 4
@test_case_1._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"\013BTRFS: selftest: %s:%d case1 [%llu %llu]: ret %d return a wrong em (start %llu len %llu block_start %llu block_len %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@test_case_1._entry_ptr.25 = internal global ptr @test_case_1._entry.23, section ".printk_index", align 4
@free_extent_map_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013BTRFS: selftest: %s:%d em leak: em (start 0x%llx len 0x%llx block_start 0x%llx block_len 0x%llx) refs %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"free_extent_map_tree\00", [43 x i8] zeroinitializer }, align 32
@free_extent_map_tree._entry_ptr = internal global ptr @free_extent_map_tree._entry, section ".printk_index", align 4
@test_case_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.28, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_case_2\00", [20 x i8] zeroinitializer }, align 32
@test_case_2._entry_ptr = internal global ptr @test_case_2._entry, section ".printk_index", align 4
@test_case_2._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013BTRFS: selftest: %s:%d cannot add extent range [0, 1K)\0A\00", [38 x i8] zeroinitializer }, align 32
@test_case_2._entry_ptr.31 = internal global ptr @test_case_2._entry.29, section ".printk_index", align 4
@test_case_2._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.28, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_case_2._entry_ptr.33 = internal global ptr @test_case_2._entry.32, section ".printk_index", align 4
@test_case_2._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013BTRFS: selftest: %s:%d cannot add extent range [4K, 8K)\0A\00", [37 x i8] zeroinitializer }, align 32
@test_case_2._entry_ptr.36 = internal global ptr @test_case_2._entry.34, section ".printk_index", align 4
@test_case_2._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.28, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_case_2._entry_ptr.38 = internal global ptr @test_case_2._entry.37, section ".printk_index", align 4
@test_case_2._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.28, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013BTRFS: selftest: %s:%d case2 [0 1K]: ret %d\0A\00", [49 x i8] zeroinitializer }, align 32
@test_case_2._entry_ptr.41 = internal global ptr @test_case_2._entry.39, section ".printk_index", align 4
@test_case_2._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.28, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\013BTRFS: selftest: %s:%d case2 [0 1K]: ret %d return a wrong em (start %llu len %llu block_start %llu block_len %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@test_case_2._entry_ptr.44 = internal global ptr @test_case_2._entry.42, section ".printk_index", align 4
@__test_case_3._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.45, ptr @.str.2, i32 234, ptr null, ptr null }, align 1
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__test_case_3\00", [18 x i8] zeroinitializer }, align 32
@__test_case_3._entry_ptr = internal global ptr @__test_case_3._entry, section ".printk_index", align 4
@__test_case_3._entry.46 = internal constant %struct.pi_entry { ptr @.str.35, ptr @.str.45, ptr @.str.2, i32 247, ptr null, ptr null }, align 1
@__test_case_3._entry_ptr.47 = internal global ptr @__test_case_3._entry.46, section ".printk_index", align 4
@__test_case_3._entry.48 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.45, ptr @.str.2, i32 254, ptr null, ptr null }, align 1
@__test_case_3._entry_ptr.49 = internal global ptr @__test_case_3._entry.48, section ".printk_index", align 4
@__test_case_3._entry.50 = internal constant %struct.pi_entry { ptr @.str.51, ptr @.str.45, ptr @.str.2, i32 269, ptr null, ptr null }, align 1
@.str.51 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013BTRFS: selftest: %s:%d case3 [0x%llx 0x%llx): ret %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__test_case_3._entry_ptr.52 = internal global ptr @__test_case_3._entry.50, section ".printk_index", align 4
@__test_case_3._entry.53 = internal constant %struct.pi_entry { ptr @.str.54, ptr @.str.45, ptr @.str.2, i32 282, ptr null, ptr null }, align 1
@.str.54 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"\013BTRFS: selftest: %s:%d case3 [0x%llx 0x%llx): ret %d em (start 0x%llx len 0x%llx block_start 0x%llx block_len 0x%llx)\0A\00", [39 x i8] zeroinitializer }, align 32
@__test_case_3._entry_ptr.55 = internal global ptr @__test_case_3._entry.53, section ".printk_index", align 4
@__test_case_4._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.56, ptr @.str.2, i32 333, ptr null, ptr null }, align 1
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__test_case_4\00", [18 x i8] zeroinitializer }, align 32
@__test_case_4._entry_ptr = internal global ptr @__test_case_4._entry, section ".printk_index", align 4
@__test_case_4._entry.57 = internal constant %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 346, ptr null, ptr null }, align 1
@.str.58 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013BTRFS: selftest: %s:%d cannot add extent range [0, 8K)\0A\00", [38 x i8] zeroinitializer }, align 32
@__test_case_4._entry_ptr.59 = internal global ptr @__test_case_4._entry.57, section ".printk_index", align 4
@__test_case_4._entry.60 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.56, ptr @.str.2, i32 353, ptr null, ptr null }, align 1
@__test_case_4._entry_ptr.61 = internal global ptr @__test_case_4._entry.60, section ".printk_index", align 4
@__test_case_4._entry.62 = internal constant %struct.pi_entry { ptr @.str.63, ptr @.str.56, ptr @.str.2, i32 367, ptr null, ptr null }, align 1
@.str.63 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013BTRFS: selftest: %s:%d cannot add extent range [8K, 32K)\0A\00", [36 x i8] zeroinitializer }, align 32
@__test_case_4._entry_ptr.64 = internal global ptr @__test_case_4._entry.62, section ".printk_index", align 4
@__test_case_4._entry.65 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.56, ptr @.str.2, i32 374, ptr null, ptr null }, align 1
@__test_case_4._entry_ptr.66 = internal global ptr @__test_case_4._entry.65, section ".printk_index", align 4
@__test_case_4._entry.67 = internal constant %struct.pi_entry { ptr @.str.68, ptr @.str.56, ptr @.str.2, i32 388, ptr null, ptr null }, align 1
@.str.68 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013BTRFS: selftest: %s:%d case4 [0x%llx 0x%llx): ret %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__test_case_4._entry_ptr.69 = internal global ptr @__test_case_4._entry.67, section ".printk_index", align 4
@__test_case_4._entry.70 = internal constant %struct.pi_entry { ptr @.str.71, ptr @.str.56, ptr @.str.2, i32 395, ptr null, ptr null }, align 1
@.str.71 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"\013BTRFS: selftest: %s:%d case4 [0x%llx 0x%llx): ret %d, added wrong em (start 0x%llx len 0x%llx block_start 0x%llx block_len 0x%llx)\0A\00", [58 x i8] zeroinitializer }, align 32
@__test_case_4._entry_ptr.72 = internal global ptr @__test_case_4._entry.70, section ".printk_index", align 4
@test_rmap_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.73, ptr @.str.2, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_rmap_block\00", [16 x i8] zeroinitializer }, align 32
@test_rmap_block._entry_ptr = internal global ptr @test_rmap_block._entry, section ".printk_index", align 4
@test_rmap_block._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.73, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_rmap_block._entry_ptr.75 = internal global ptr @test_rmap_block._entry.74, section ".printk_index", align 4
@test_rmap_block._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.73, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013BTRFS: selftest: %s:%d cannot allocate device\0A\00", [47 x i8] zeroinitializer }, align 32
@test_rmap_block._entry_ptr.78 = internal global ptr @test_rmap_block._entry.76, section ".printk_index", align 4
@test_rmap_block._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.73, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013BTRFS: selftest: %s:%d error adding block group mapping to mapping tree\0A\00", [53 x i8] zeroinitializer }, align 32
@test_rmap_block._entry_ptr.81 = internal global ptr @test_rmap_block._entry.79, section ".printk_index", align 4
@test_rmap_block._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.73, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013BTRFS: selftest: %s:%d didn't rmap anything but expected %d\0A\00", [33 x i8] zeroinitializer }, align 32
@test_rmap_block._entry_ptr.84 = internal global ptr @test_rmap_block._entry.82, section ".printk_index", align 4
@test_rmap_block._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.73, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013BTRFS: selftest: %s:%d calculated stripe length doesn't match\0A\00", [63 x i8] zeroinitializer }, align 32
@test_rmap_block._entry_ptr.87 = internal global ptr @test_rmap_block._entry.85, section ".printk_index", align 4
@test_rmap_block._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.73, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016BTRFS: selftest: mapped %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@test_rmap_block._entry_ptr.90 = internal global ptr @test_rmap_block._entry.88, section ".printk_index", align 4
@test_rmap_block._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.73, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013BTRFS: selftest: %s:%d unexpected number of mapped addresses: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@test_rmap_block._entry_ptr.93 = internal global ptr @test_rmap_block._entry.91, section ".printk_index", align 4
@test_rmap_block._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.73, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013BTRFS: selftest: %s:%d unexpected logical address mapped\0A\00", [36 x i8] zeroinitializer }, align 32
@test_rmap_block._entry_ptr.96 = internal global ptr @test_rmap_block._entry.94, section ".printk_index", align 4
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 591, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 599, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 622, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 63, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 76, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 84, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 97, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 104, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 118, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 124, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 25, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 151, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 164, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 172, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 185, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 192, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 206, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 212, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 234, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 268, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 279, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 333, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 346, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 367, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 387, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 392, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 467, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 474, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 494, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 506, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 513, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 519, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 525, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 526, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [37 x i8] c"../fs/btrfs/tests/extent-map-tests.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 532, i32 4 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__test_case_3._entry, ptr @__test_case_3._entry.46, ptr @__test_case_3._entry.48, ptr @__test_case_3._entry.50, ptr @__test_case_3._entry.53, ptr @__test_case_3._entry_ptr, ptr @__test_case_3._entry_ptr.47, ptr @__test_case_3._entry_ptr.49, ptr @__test_case_3._entry_ptr.52, ptr @__test_case_3._entry_ptr.55, ptr @__test_case_4._entry, ptr @__test_case_4._entry.57, ptr @__test_case_4._entry.60, ptr @__test_case_4._entry.62, ptr @__test_case_4._entry.65, ptr @__test_case_4._entry.67, ptr @__test_case_4._entry.70, ptr @__test_case_4._entry_ptr, ptr @__test_case_4._entry_ptr.59, ptr @__test_case_4._entry_ptr.61, ptr @__test_case_4._entry_ptr.64, ptr @__test_case_4._entry_ptr.66, ptr @__test_case_4._entry_ptr.69, ptr @__test_case_4._entry_ptr.72, ptr @btrfs_test_extent_map._entry, ptr @btrfs_test_extent_map._entry.3, ptr @btrfs_test_extent_map._entry.6, ptr @btrfs_test_extent_map._entry_ptr, ptr @btrfs_test_extent_map._entry_ptr.5, ptr @btrfs_test_extent_map._entry_ptr.8, ptr @free_extent_map_tree._entry, ptr @free_extent_map_tree._entry_ptr, ptr @test_case_1._entry, ptr @test_case_1._entry.10, ptr @test_case_1._entry.13, ptr @test_case_1._entry.15, ptr @test_case_1._entry.18, ptr @test_case_1._entry.20, ptr @test_case_1._entry.23, ptr @test_case_1._entry_ptr, ptr @test_case_1._entry_ptr.12, ptr @test_case_1._entry_ptr.14, ptr @test_case_1._entry_ptr.17, ptr @test_case_1._entry_ptr.19, ptr @test_case_1._entry_ptr.22, ptr @test_case_1._entry_ptr.25, ptr @test_case_2._entry, ptr @test_case_2._entry.29, ptr @test_case_2._entry.32, ptr @test_case_2._entry.34, ptr @test_case_2._entry.37, ptr @test_case_2._entry.39, ptr @test_case_2._entry.42, ptr @test_case_2._entry_ptr, ptr @test_case_2._entry_ptr.31, ptr @test_case_2._entry_ptr.33, ptr @test_case_2._entry_ptr.36, ptr @test_case_2._entry_ptr.38, ptr @test_case_2._entry_ptr.41, ptr @test_case_2._entry_ptr.44, ptr @test_rmap_block._entry, ptr @test_rmap_block._entry.74, ptr @test_rmap_block._entry.76, ptr @test_rmap_block._entry.79, ptr @test_rmap_block._entry.82, ptr @test_rmap_block._entry.85, ptr @test_rmap_block._entry.88, ptr @test_rmap_block._entry.91, ptr @test_rmap_block._entry.94, ptr @test_rmap_block._entry_ptr, ptr @test_rmap_block._entry_ptr.75, ptr @test_rmap_block._entry_ptr.78, ptr @test_rmap_block._entry_ptr.81, ptr @test_rmap_block._entry_ptr.84, ptr @test_rmap_block._entry_ptr.87, ptr @test_rmap_block._entry_ptr.90, ptr @test_rmap_block._entry_ptr.93, ptr @test_rmap_block._entry_ptr.96, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.16, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.35, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.63, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_extent_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_extent_map._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_extent_map._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_1._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_1._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_1._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_1._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_1._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_1._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_extent_map_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_2._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_2._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_2._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_2._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_2._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_2._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rmap_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rmap_block._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rmap_block._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rmap_block._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rmap_block._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rmap_block._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rmap_block._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rmap_block._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rmap_block._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_test_extent_map() local_unnamed_addr #0 align 64 {
entry:
  %logical.i = alloca ptr, align 4
  %out_ndaddrs.i = alloca i32, align 4
  %out_stripe_len.i = alloca i32, align 4
  %em.i55 = alloca ptr, align 4
  %em.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %call1 = tail call ptr @btrfs_alloc_dummy_fs_info(i32 noundef 4096, i32 noundef 4096) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @test_error to i32))
  %0 = load ptr, ptr @test_error, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 599, ptr noundef %0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 60) #11
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end.out_crit_edge, label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %if.end
  tail call void @extent_map_tree_init(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %em.i) #7
  %call.i = tail call ptr @alloc_extent_map() #7
  %2 = ptrtoint ptr %em.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %em.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %test_case_1.exit.thread, label %if.end.i

test_case_1.exit.thread:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 63, ptr noundef %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em.i) #7
  br label %out

if.end.i:                                         ; preds = %if.end10
  %start2.i = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %start2.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %start2.i, align 8
  %len3.i = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %len3.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 16384, ptr %len3.i, align 8
  %block_start.i = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %block_start.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %block_start.i, align 8
  %block_len.i = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %block_len.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 16384, ptr %block_len.i, align 8
  %lock.i = getelementptr inbounds %struct.extent_map_tree, ptr %call7.i.i, i32 0, i32 2
  tail call void @_raw_write_lock(ptr noundef %lock.i) #7
  %8 = ptrtoint ptr %em.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %em.i, align 4
  %call4.i = tail call i32 @add_extent_mapping(ptr noundef nonnull %call7.i.i, ptr noundef %9, i32 noundef 0) #7
  tail call void @_raw_write_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end9.i, label %if.end12.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 76) #10
  br label %test_case_1.exit.thread102

if.end12.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %em.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %em.i, align 4
  tail call void @free_extent_map(ptr noundef %11) #7
  %call13.i = tail call ptr @alloc_extent_map() #7
  %12 = ptrtoint ptr %em.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13.i, ptr %em.i, align 4
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %do.end18.i, label %if.end21.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 84, ptr noundef %13) #10
  br label %test_case_1.exit.thread102

if.end21.i:                                       ; preds = %if.end12.i
  %start22.i = getelementptr inbounds %struct.extent_map, ptr %call13.i, i32 0, i32 1
  %14 = ptrtoint ptr %start22.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 16384, ptr %start22.i, align 8
  %len23.i = getelementptr inbounds %struct.extent_map, ptr %call13.i, i32 0, i32 2
  %15 = ptrtoint ptr %len23.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 4096, ptr %len23.i, align 8
  %block_start24.i = getelementptr inbounds %struct.extent_map, ptr %call13.i, i32 0, i32 8
  %16 = ptrtoint ptr %block_start24.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 32768, ptr %block_start24.i, align 8
  %block_len25.i = getelementptr inbounds %struct.extent_map, ptr %call13.i, i32 0, i32 9
  %17 = ptrtoint ptr %block_len25.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 4096, ptr %block_len25.i, align 8
  tail call void @_raw_write_lock(ptr noundef %lock.i) #7
  %18 = ptrtoint ptr %em.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %em.i, align 4
  %call27.i = tail call i32 @add_extent_mapping(ptr noundef nonnull %call7.i.i, ptr noundef %19, i32 noundef 0) #7
  tail call void @_raw_write_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp29.i = icmp slt i32 %call27.i, 0
  br i1 %cmp29.i, label %do.end33.i, label %if.end36.i

do.end33.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 97) #10
  br label %test_case_1.exit.thread102

if.end36.i:                                       ; preds = %if.end21.i
  %20 = ptrtoint ptr %em.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %em.i, align 4
  tail call void @free_extent_map(ptr noundef %21) #7
  %call37.i = tail call ptr @alloc_extent_map() #7
  %22 = ptrtoint ptr %em.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call37.i, ptr %em.i, align 4
  %tobool38.not.i = icmp eq ptr %call37.i, null
  br i1 %tobool38.not.i, label %do.end42.i, label %if.end45.i

do.end42.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 104, ptr noundef %23) #10
  br label %test_case_1.exit.thread102

if.end45.i:                                       ; preds = %if.end36.i
  %start46.i = getelementptr inbounds %struct.extent_map, ptr %call37.i, i32 0, i32 1
  %24 = ptrtoint ptr %start46.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %start46.i, align 8
  %len47.i = getelementptr inbounds %struct.extent_map, ptr %call37.i, i32 0, i32 2
  %25 = ptrtoint ptr %len47.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 8192, ptr %len47.i, align 8
  %block_start48.i = getelementptr inbounds %struct.extent_map, ptr %call37.i, i32 0, i32 8
  %26 = ptrtoint ptr %block_start48.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %block_start48.i, align 8
  %block_len49.i = getelementptr inbounds %struct.extent_map, ptr %call37.i, i32 0, i32 9
  %27 = ptrtoint ptr %block_len49.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 8192, ptr %block_len49.i, align 8
  tail call void @_raw_write_lock(ptr noundef %lock.i) #7
  %28 = ptrtoint ptr %em.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %em.i, align 4
  %start51.i = getelementptr inbounds %struct.extent_map, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %start51.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %start51.i, align 8
  %len52.i = getelementptr inbounds %struct.extent_map, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %len52.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %len52.i, align 8
  %call53.i = call i32 @btrfs_add_extent_mapping(ptr noundef nonnull %call1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %em.i, i64 noundef %31, i64 noundef %33) #7
  call void @_raw_write_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool55.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool55.not.i, label %if.end62.i, label %do.end59.i

do.end59.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %call61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 118, i64 noundef 0, i64 noundef 8192, i32 noundef %call53.i) #10
  br label %test_case_1.exit.thread102

if.end62.i:                                       ; preds = %if.end45.i
  %34 = ptrtoint ptr %em.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %em.i, align 4
  %tobool63.not.i = icmp eq ptr %35, null
  br i1 %tobool63.not.i, label %if.end62.i.test_case_1.exit_crit_edge, label %land.lhs.true.i

if.end62.i.test_case_1.exit_crit_edge:            ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %test_case_1.exit

land.lhs.true.i:                                  ; preds = %if.end62.i
  %start64.i = getelementptr inbounds %struct.extent_map, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %start64.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %start64.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %cmp65.not.i = icmp eq i64 %37, 0
  br i1 %cmp65.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.do.end77.i_crit_edge

land.lhs.true.i.do.end77.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %len.i.i = getelementptr inbounds %struct.extent_map, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16384, i64 %39)
  %cmp67.not.i = icmp eq i64 %39, 16384
  br i1 %cmp67.not.i, label %lor.lhs.false68.i, label %lor.lhs.false.i.do.end77.i_crit_edge

lor.lhs.false.i.do.end77.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77.i

lor.lhs.false68.i:                                ; preds = %lor.lhs.false.i
  %block_start69.i = getelementptr inbounds %struct.extent_map, ptr %35, i32 0, i32 8
  %40 = ptrtoint ptr %block_start69.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %block_start69.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp70.not.i = icmp eq i64 %41, 0
  br i1 %cmp70.not.i, label %lor.lhs.false71.i, label %lor.lhs.false68.i.do.end77.i_crit_edge

lor.lhs.false68.i.do.end77.i_crit_edge:           ; preds = %lor.lhs.false68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77.i

lor.lhs.false71.i:                                ; preds = %lor.lhs.false68.i
  %block_len72.i = getelementptr inbounds %struct.extent_map, ptr %35, i32 0, i32 9
  %42 = ptrtoint ptr %block_len72.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %block_len72.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16384, i64 %43)
  %cmp73.not.i = icmp eq i64 %43, 16384
  br i1 %cmp73.not.i, label %lor.lhs.false71.i.test_case_1.exit_crit_edge, label %lor.lhs.false71.i.do.end77.i_crit_edge

lor.lhs.false71.i.do.end77.i_crit_edge:           ; preds = %lor.lhs.false71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77.i

lor.lhs.false71.i.test_case_1.exit_crit_edge:     ; preds = %lor.lhs.false71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %test_case_1.exit

do.end77.i:                                       ; preds = %lor.lhs.false71.i.do.end77.i_crit_edge, %lor.lhs.false68.i.do.end77.i_crit_edge, %lor.lhs.false.i.do.end77.i_crit_edge, %land.lhs.true.i.do.end77.i_crit_edge
  %len81.i = getelementptr inbounds %struct.extent_map, ptr %35, i32 0, i32 2
  %44 = ptrtoint ptr %len81.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %len81.i, align 8
  %block_start82.i = getelementptr inbounds %struct.extent_map, ptr %35, i32 0, i32 8
  %46 = ptrtoint ptr %block_start82.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %block_start82.i, align 8
  %block_len83.i = getelementptr inbounds %struct.extent_map, ptr %35, i32 0, i32 9
  %48 = ptrtoint ptr %block_len83.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %block_len83.i, align 8
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef 127, i64 noundef 0, i64 noundef 8192, i32 noundef 0, i64 noundef %37, i64 noundef %45, i64 noundef %47, i64 noundef %49) #10
  br label %test_case_1.exit

test_case_1.exit.thread102:                       ; preds = %do.end59.i, %do.end42.i, %do.end33.i, %do.end18.i, %do.end9.i
  %ret.1.i.ph = phi i32 [ -12, %do.end18.i ], [ -12, %do.end42.i ], [ %call53.i, %do.end59.i ], [ %call27.i, %do.end33.i ], [ %call4.i, %do.end9.i ]
  call fastcc void @free_extent_map_tree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em.i) #7
  br label %out

test_case_1.exit:                                 ; preds = %do.end77.i, %lor.lhs.false71.i.test_case_1.exit_crit_edge, %if.end62.i.test_case_1.exit_crit_edge
  %tobool12.not = phi i1 [ true, %if.end62.i.test_case_1.exit_crit_edge ], [ true, %lor.lhs.false71.i.test_case_1.exit_crit_edge ], [ false, %do.end77.i ]
  %ret.0.i = phi i32 [ 0, %if.end62.i.test_case_1.exit_crit_edge ], [ 0, %lor.lhs.false71.i.test_case_1.exit_crit_edge ], [ -22, %do.end77.i ]
  %50 = ptrtoint ptr %em.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %em.i, align 4
  call void @free_extent_map(ptr noundef %51) #7
  call fastcc void @free_extent_map_tree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em.i) #7
  br i1 %tobool12.not, label %if.end14, label %test_case_1.exit.out_crit_edge

test_case_1.exit.out_crit_edge:                   ; preds = %test_case_1.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end14:                                         ; preds = %test_case_1.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %em.i55) #7
  %call.i56 = call ptr @alloc_extent_map() #7
  %52 = ptrtoint ptr %em.i55 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i56, ptr %em.i55, align 4
  %tobool.not.i57 = icmp eq ptr %call.i56, null
  br i1 %tobool.not.i57, label %test_case_2.exit.thread, label %if.end.i64

test_case_2.exit.thread:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call1.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 151, ptr noundef %53) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em.i55) #7
  br label %out

if.end.i64:                                       ; preds = %if.end14
  %start.i = getelementptr inbounds %struct.extent_map, ptr %call.i56, i32 0, i32 1
  %54 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %start.i, align 8
  %len.i = getelementptr inbounds %struct.extent_map, ptr %call.i56, i32 0, i32 2
  %55 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1024, ptr %len.i, align 8
  %block_start.i60 = getelementptr inbounds %struct.extent_map, ptr %call.i56, i32 0, i32 8
  %56 = ptrtoint ptr %block_start.i60 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 -2, ptr %block_start.i60, align 8
  %block_len.i61 = getelementptr inbounds %struct.extent_map, ptr %call.i56, i32 0, i32 9
  %57 = ptrtoint ptr %block_len.i61 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 -1, ptr %block_len.i61, align 8
  call void @_raw_write_lock(ptr noundef %lock.i) #7
  %58 = ptrtoint ptr %em.i55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %em.i55, align 4
  %call2.i = call i32 @add_extent_mapping(ptr noundef nonnull %call7.i.i, ptr noundef %59, i32 noundef 0) #7
  call void @_raw_write_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i63 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i63, label %do.end7.i, label %if.end10.i

do.end7.i:                                        ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, i32 noundef 164) #10
  br label %test_case_2.exit.thread107

if.end10.i:                                       ; preds = %if.end.i64
  %60 = ptrtoint ptr %em.i55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %em.i55, align 4
  call void @free_extent_map(ptr noundef %61) #7
  %call11.i65 = call ptr @alloc_extent_map() #7
  %62 = ptrtoint ptr %em.i55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call11.i65, ptr %em.i55, align 4
  %tobool12.not.i = icmp eq ptr %call11.i65, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end19.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 172, ptr noundef %63) #10
  br label %test_case_2.exit.thread107

if.end19.i:                                       ; preds = %if.end10.i
  %start20.i = getelementptr inbounds %struct.extent_map, ptr %call11.i65, i32 0, i32 1
  %64 = ptrtoint ptr %start20.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 4096, ptr %start20.i, align 8
  %len21.i = getelementptr inbounds %struct.extent_map, ptr %call11.i65, i32 0, i32 2
  %65 = ptrtoint ptr %len21.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 4096, ptr %len21.i, align 8
  %block_start22.i = getelementptr inbounds %struct.extent_map, ptr %call11.i65, i32 0, i32 8
  %66 = ptrtoint ptr %block_start22.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 4096, ptr %block_start22.i, align 8
  %block_len23.i = getelementptr inbounds %struct.extent_map, ptr %call11.i65, i32 0, i32 9
  %67 = ptrtoint ptr %block_len23.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 4096, ptr %block_len23.i, align 8
  call void @_raw_write_lock(ptr noundef %lock.i) #7
  %68 = ptrtoint ptr %em.i55 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %em.i55, align 4
  %call25.i = call i32 @add_extent_mapping(ptr noundef nonnull %call7.i.i, ptr noundef %69, i32 noundef 0) #7
  call void @_raw_write_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp27.i = icmp slt i32 %call25.i, 0
  br i1 %cmp27.i, label %do.end31.i, label %if.end34.i

do.end31.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 185) #10
  br label %test_case_2.exit.thread107

if.end34.i:                                       ; preds = %if.end19.i
  %70 = ptrtoint ptr %em.i55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %em.i55, align 4
  call void @free_extent_map(ptr noundef %71) #7
  %call35.i66 = call ptr @alloc_extent_map() #7
  %72 = ptrtoint ptr %em.i55 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call35.i66, ptr %em.i55, align 4
  %tobool36.not.i = icmp eq ptr %call35.i66, null
  br i1 %tobool36.not.i, label %do.end40.i, label %if.end43.i

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 192, ptr noundef %73) #10
  br label %test_case_2.exit.thread107

if.end43.i:                                       ; preds = %if.end34.i
  %start44.i = getelementptr inbounds %struct.extent_map, ptr %call35.i66, i32 0, i32 1
  %74 = ptrtoint ptr %start44.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %start44.i, align 8
  %len45.i = getelementptr inbounds %struct.extent_map, ptr %call35.i66, i32 0, i32 2
  %75 = ptrtoint ptr %len45.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 1024, ptr %len45.i, align 8
  %block_start46.i = getelementptr inbounds %struct.extent_map, ptr %call35.i66, i32 0, i32 8
  %76 = ptrtoint ptr %block_start46.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 -2, ptr %block_start46.i, align 8
  %block_len47.i = getelementptr inbounds %struct.extent_map, ptr %call35.i66, i32 0, i32 9
  %77 = ptrtoint ptr %block_len47.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 -1, ptr %block_len47.i, align 8
  call void @_raw_write_lock(ptr noundef %lock.i) #7
  %78 = ptrtoint ptr %em.i55 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %em.i55, align 4
  %start49.i = getelementptr inbounds %struct.extent_map, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %start49.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %start49.i, align 8
  %len50.i = getelementptr inbounds %struct.extent_map, ptr %79, i32 0, i32 2
  %82 = ptrtoint ptr %len50.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %len50.i, align 8
  %call51.i = call i32 @btrfs_add_extent_mapping(ptr noundef nonnull %call1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %em.i55, i64 noundef %81, i64 noundef %83) #7
  call void @_raw_write_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool53.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool53.not.i, label %if.end60.i, label %do.end57.i

do.end57.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef %call51.i) #10
  br label %test_case_2.exit.thread107

if.end60.i:                                       ; preds = %if.end43.i
  %84 = ptrtoint ptr %em.i55 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %em.i55, align 4
  %tobool61.not.i = icmp eq ptr %85, null
  br i1 %tobool61.not.i, label %if.end60.i.test_case_2.exit_crit_edge, label %land.lhs.true.i67

if.end60.i.test_case_2.exit_crit_edge:            ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %test_case_2.exit

land.lhs.true.i67:                                ; preds = %if.end60.i
  %start62.i = getelementptr inbounds %struct.extent_map, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %start62.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %start62.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %87)
  %cmp63.not.i = icmp eq i64 %87, 0
  br i1 %cmp63.not.i, label %lor.lhs.false.i70, label %land.lhs.true.i67.do.end75.i_crit_edge

land.lhs.true.i67.do.end75.i_crit_edge:           ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75.i

lor.lhs.false.i70:                                ; preds = %land.lhs.true.i67
  %len.i.i68 = getelementptr inbounds %struct.extent_map, ptr %85, i32 0, i32 2
  %88 = ptrtoint ptr %len.i.i68 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %len.i.i68, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %89)
  %cmp65.not.i69 = icmp eq i64 %89, 1024
  br i1 %cmp65.not.i69, label %lor.lhs.false66.i, label %lor.lhs.false.i70.do.end75.i_crit_edge

lor.lhs.false.i70.do.end75.i_crit_edge:           ; preds = %lor.lhs.false.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75.i

lor.lhs.false66.i:                                ; preds = %lor.lhs.false.i70
  %block_start67.i = getelementptr inbounds %struct.extent_map, ptr %85, i32 0, i32 8
  %90 = ptrtoint ptr %block_start67.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %block_start67.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %91)
  %cmp68.not.i = icmp eq i64 %91, -2
  br i1 %cmp68.not.i, label %lor.lhs.false69.i, label %lor.lhs.false66.i.do.end75.i_crit_edge

lor.lhs.false66.i.do.end75.i_crit_edge:           ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75.i

lor.lhs.false69.i:                                ; preds = %lor.lhs.false66.i
  %block_len70.i = getelementptr inbounds %struct.extent_map, ptr %85, i32 0, i32 9
  %92 = ptrtoint ptr %block_len70.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %block_len70.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %93)
  %cmp71.not.i = icmp eq i64 %93, -1
  br i1 %cmp71.not.i, label %lor.lhs.false69.i.test_case_2.exit_crit_edge, label %lor.lhs.false69.i.do.end75.i_crit_edge

lor.lhs.false69.i.do.end75.i_crit_edge:           ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75.i

lor.lhs.false69.i.test_case_2.exit_crit_edge:     ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %test_case_2.exit

do.end75.i:                                       ; preds = %lor.lhs.false69.i.do.end75.i_crit_edge, %lor.lhs.false66.i.do.end75.i_crit_edge, %lor.lhs.false.i70.do.end75.i_crit_edge, %land.lhs.true.i67.do.end75.i_crit_edge
  %len78.i = getelementptr inbounds %struct.extent_map, ptr %85, i32 0, i32 2
  %94 = ptrtoint ptr %len78.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %len78.i, align 8
  %block_start79.i = getelementptr inbounds %struct.extent_map, ptr %85, i32 0, i32 8
  %96 = ptrtoint ptr %block_start79.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %block_start79.i, align 8
  %block_len80.i = getelementptr inbounds %struct.extent_map, ptr %85, i32 0, i32 9
  %98 = ptrtoint ptr %block_len80.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %block_len80.i, align 8
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.2, i32 noundef 215, i32 noundef 0, i64 noundef %87, i64 noundef %95, i64 noundef %97, i64 noundef %99) #10
  br label %test_case_2.exit

test_case_2.exit.thread107:                       ; preds = %do.end57.i, %do.end40.i, %do.end31.i, %do.end16.i, %do.end7.i
  %ret.1.i72.ph = phi i32 [ -12, %do.end16.i ], [ -12, %do.end40.i ], [ %call51.i, %do.end57.i ], [ %call25.i, %do.end31.i ], [ %call2.i, %do.end7.i ]
  call fastcc void @free_extent_map_tree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em.i55) #7
  br label %out

test_case_2.exit:                                 ; preds = %do.end75.i, %lor.lhs.false69.i.test_case_2.exit_crit_edge, %if.end60.i.test_case_2.exit_crit_edge
  %tobool16.not = phi i1 [ true, %if.end60.i.test_case_2.exit_crit_edge ], [ true, %lor.lhs.false69.i.test_case_2.exit_crit_edge ], [ false, %do.end75.i ]
  %ret.0.i71 = phi i32 [ 0, %if.end60.i.test_case_2.exit_crit_edge ], [ 0, %lor.lhs.false69.i.test_case_2.exit_crit_edge ], [ -22, %do.end75.i ]
  %100 = ptrtoint ptr %em.i55 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %em.i55, align 4
  call void @free_extent_map(ptr noundef %101) #7
  call fastcc void @free_extent_map_tree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em.i55) #7
  br i1 %tobool16.not, label %if.end18, label %test_case_2.exit.out_crit_edge

test_case_2.exit.out_crit_edge:                   ; preds = %test_case_2.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end18:                                         ; preds = %test_case_2.exit
  %call.i75 = call fastcc i32 @__test_case_3(ptr noundef nonnull %call1, ptr noundef nonnull %call7.i.i, i64 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %if.end.i78, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i78:                                       ; preds = %if.end18
  %call1.i77 = call fastcc i32 @__test_case_3(ptr noundef nonnull %call1, ptr noundef nonnull %call7.i.i, i64 noundef 8192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool2.not.i = icmp eq i32 %call1.i77, 0
  br i1 %tobool2.not.i, label %test_case_3.exit, label %if.end.i78.out_crit_edge

if.end.i78.out_crit_edge:                         ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

test_case_3.exit:                                 ; preds = %if.end.i78
  %call5.i = call fastcc i32 @__test_case_3(ptr noundef nonnull %call1, ptr noundef nonnull %call7.i.i, i64 noundef 12288) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool20.not = icmp eq i32 %call5.i, 0
  br i1 %tobool20.not, label %if.end22, label %test_case_3.exit.out_crit_edge

test_case_3.exit.out_crit_edge:                   ; preds = %test_case_3.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end22:                                         ; preds = %test_case_3.exit
  %call23 = call fastcc i32 @test_case_4(ptr noundef nonnull %call1, ptr noundef nonnull %call7.i.i)
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  %mapping_tree.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %call1, i32 0, i32 19
  %lock.i92 = getelementptr inbounds %struct.btrfs_fs_info, ptr %call1, i32 0, i32 19, i32 2
  br label %for.body

for.cond:                                         ; preds = %test_rmap_block.exit
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end22
  %i.0116 = phi i32 [ 0, %if.end22 ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.rmap_test_vector], ptr @__const.btrfs_test_extent_map.rmap_tests, i32 0, i32 %i.0116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %logical.i) #7
  %102 = ptrtoint ptr %logical.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %logical.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_ndaddrs.i) #7
  %103 = ptrtoint ptr %out_ndaddrs.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %out_ndaddrs.i, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_stripe_len.i) #7
  %104 = ptrtoint ptr %out_stripe_len.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %out_stripe_len.i, align 4, !annotation !159
  %call.i80 = call ptr @alloc_extent_map() #7
  %tobool.not.i81 = icmp eq ptr %call.i80, null
  br i1 %tobool.not.i81, label %for.body.test_rmap_block.exit.thread_crit_edge, label %if.end.i84

for.body.test_rmap_block.exit.thread_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %test_rmap_block.exit.thread

if.end.i84:                                       ; preds = %for.body
  %num_stripes.i = getelementptr [2 x %struct.rmap_test_vector], ptr @__const.btrfs_test_extent_map.rmap_tests, i32 0, i32 %i.0116, i32 4
  %105 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %num_stripes.i, align 8
  %107 = trunc i64 %106 to i32
  %108 = mul i32 %107, 24
  %conv.i = add i32 %108, 40
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i, i32 noundef 3264) #12
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end10.i90

if.then4.i:                                       ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call.i80) #7
  br label %test_rmap_block.exit.thread

if.end10.i90:                                     ; preds = %if.end.i84
  %flags.i = getelementptr inbounds %struct.extent_map, ptr %call.i80, i32 0, i32 11
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #7
  %start.i87 = getelementptr inbounds %struct.extent_map, ptr %call.i80, i32 0, i32 1
  %109 = ptrtoint ptr %start.i87 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 4294967296, ptr %start.i87, align 8
  %data_stripe_size.i = getelementptr [2 x %struct.rmap_test_vector], ptr @__const.btrfs_test_extent_map.rmap_tests, i32 0, i32 %i.0116, i32 2
  %110 = ptrtoint ptr %data_stripe_size.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %data_stripe_size.i, align 8
  %num_data_stripes.i = getelementptr [2 x %struct.rmap_test_vector], ptr @__const.btrfs_test_extent_map.rmap_tests, i32 0, i32 %i.0116, i32 3
  %112 = ptrtoint ptr %num_data_stripes.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %num_data_stripes.i, align 8
  %mul11.i = mul i64 %113, %111
  %len.i88 = getelementptr inbounds %struct.extent_map, ptr %call.i80, i32 0, i32 2
  %114 = ptrtoint ptr %len.i88 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %mul11.i, ptr %len.i88, align 8
  %block_len.i89 = getelementptr inbounds %struct.extent_map, ptr %call.i80, i32 0, i32 9
  %115 = ptrtoint ptr %block_len.i89 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %mul11.i, ptr %block_len.i89, align 8
  %orig_block_len.i = getelementptr inbounds %struct.extent_map, ptr %call.i80, i32 0, i32 6
  %116 = ptrtoint ptr %orig_block_len.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %111, ptr %orig_block_len.i, align 8
  %map_lookup.i = getelementptr inbounds %struct.extent_map, ptr %call.i80, i32 0, i32 12
  %117 = ptrtoint ptr %map_lookup.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call9.i.i, ptr %map_lookup.i, align 4
  %num_stripes16.i = getelementptr inbounds %struct.map_lookup, ptr %call9.i.i, i32 0, i32 4
  %118 = ptrtoint ptr %num_stripes16.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %107, ptr %num_stripes16.i, align 8
  %stripe_len.i = getelementptr inbounds %struct.map_lookup, ptr %call9.i.i, i32 0, i32 3
  %119 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 65536, ptr %stripe_len.i, align 16
  %120 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx, align 8
  %122 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp186.i = icmp sgt i32 %107, 0
  br i1 %cmp186.i, label %if.end10.i90.for.body.i_crit_edge, label %if.end10.i90.for.end.i_crit_edge

if.end10.i90.for.end.i_crit_edge:                 ; preds = %if.end10.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end10.i90.for.body.i_crit_edge:                ; preds = %if.end10.i90
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end10.i90.for.body.i_crit_edge
  %i.0187.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end10.i90.for.body.i_crit_edge ]
  %call19.i = call ptr @btrfs_alloc_dummy_device(ptr noundef nonnull %call1) #7
  %cmp.i179.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179.i, label %cleanup.i, label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.2, i32 noundef 494) #10
  %123 = ptrtoint ptr %call19.i to i32
  br label %out.i98

for.inc.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.map_lookup, ptr %call9.i.i, i32 0, i32 7, i32 %i.0187.i
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call19.i, ptr %arrayidx.i, align 8
  %arrayidx30.i = getelementptr [2 x %struct.rmap_test_vector], ptr @__const.btrfs_test_extent_map.rmap_tests, i32 0, i32 %i.0116, i32 5, i32 %i.0187.i
  %125 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %arrayidx30.i, align 8
  %physical.i = getelementptr %struct.map_lookup, ptr %call9.i.i, i32 0, i32 7, i32 %i.0187.i, i32 1
  %127 = ptrtoint ptr %physical.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %physical.i, align 8
  %inc.i = add nuw nsw i32 %i.0187.i, 1
  %128 = ptrtoint ptr %num_stripes16.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_stripes16.i, align 8
  %cmp.i91 = icmp slt i32 %inc.i, %129
  br i1 %cmp.i91, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end10.i90.for.end.i_crit_edge
  call void @_raw_write_lock(ptr noundef %lock.i92) #7
  %call34.i = call i32 @add_extent_mapping(ptr noundef %mapping_tree.i, ptr noundef nonnull %call.i80, i32 noundef 0) #7
  call void @_raw_write_unlock(ptr noundef %lock.i92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool37.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool37.not.i, label %if.end44.i, label %do.end41.i

do.end41.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.2, i32 noundef 506) #10
  br label %test_rmap_block.exit

if.end44.i:                                       ; preds = %for.end.i
  %130 = ptrtoint ptr %start.i87 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %start.i87, align 8
  %call47.i = call i32 @btrfs_rmap_block(ptr noundef nonnull %call1, i64 noundef %131, ptr noundef null, i64 noundef 67108864, ptr noundef nonnull %logical.i, ptr noundef nonnull %out_ndaddrs.i, ptr noundef nonnull %out_stripe_len.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %lor.lhs.false.i93, label %if.end44.i.do.end56.i_crit_edge

if.end44.i.do.end56.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

lor.lhs.false.i93:                                ; preds = %if.end44.i
  %132 = ptrtoint ptr %out_ndaddrs.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %out_ndaddrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp49.i = icmp eq i32 %133, 0
  br i1 %cmp49.i, label %land.lhs.true.i94, label %lor.lhs.false.i93.if.end62.i97_crit_edge

lor.lhs.false.i93.if.end62.i97_crit_edge:         ; preds = %lor.lhs.false.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i97

land.lhs.true.i94:                                ; preds = %lor.lhs.false.i93
  %expected_mapped_addr.i = getelementptr [2 x %struct.rmap_test_vector], ptr @__const.btrfs_test_extent_map.rmap_tests, i32 0, i32 %i.0116, i32 6
  %134 = ptrtoint ptr %expected_mapped_addr.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %expected_mapped_addr.i, align 8, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool51.not.i = icmp eq i8 %135, 0
  br i1 %tobool51.not.i, label %land.lhs.true.i94.if.end62.i97_crit_edge, label %land.lhs.true.i94.do.end56.i_crit_edge

land.lhs.true.i94.do.end56.i_crit_edge:           ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

land.lhs.true.i94.if.end62.i97_crit_edge:         ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i97

do.end56.i:                                       ; preds = %land.lhs.true.i94.do.end56.i_crit_edge, %if.end44.i.do.end56.i_crit_edge
  %expected_mapped_addr58.i = getelementptr [2 x %struct.rmap_test_vector], ptr @__const.btrfs_test_extent_map.rmap_tests, i32 0, i32 %i.0116, i32 6
  %136 = ptrtoint ptr %expected_mapped_addr58.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %expected_mapped_addr58.i, align 8, !range !160
  %138 = zext i8 %137 to i32
  %call61.i95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.2, i32 noundef 514, i32 noundef %138) #10
  br label %out.i98

if.end62.i97:                                     ; preds = %land.lhs.true.i94.if.end62.i97_crit_edge, %lor.lhs.false.i93.if.end62.i97_crit_edge
  %139 = ptrtoint ptr %out_stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %out_stripe_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %140)
  %cmp63.not.i96 = icmp eq i32 %140, 65536
  br i1 %cmp63.not.i96, label %if.end71.i, label %do.end68.i

do.end68.i:                                       ; preds = %if.end62.i97
  call void @__sanitizer_cov_trace_pc() #9
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.2, i32 noundef 519) #10
  br label %out.i98

if.end71.i:                                       ; preds = %if.end62.i97
  %expected_mapped_addr72.i = getelementptr [2 x %struct.rmap_test_vector], ptr @__const.btrfs_test_extent_map.rmap_tests, i32 0, i32 %i.0116, i32 6
  %141 = ptrtoint ptr %expected_mapped_addr72.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %expected_mapped_addr72.i, align 8, !range !160
  %143 = zext i8 %142 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %143)
  %cmp75.not.i = icmp eq i32 %133, %143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp98190.i = icmp sgt i32 %133, 0
  br i1 %cmp75.not.i, label %for.cond97.preheader.i, label %for.cond78.preheader.i

for.cond78.preheader.i:                           ; preds = %if.end71.i
  br i1 %cmp98190.i, label %for.cond78.preheader.i.do.end84.i_crit_edge, label %for.cond78.preheader.i.do.end93.i_crit_edge

for.cond78.preheader.i.do.end93.i_crit_edge:      ; preds = %for.cond78.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93.i

for.cond78.preheader.i.do.end84.i_crit_edge:      ; preds = %for.cond78.preheader.i
  br label %do.end84.i

for.cond97.preheader.i:                           ; preds = %if.end71.i
  br i1 %cmp98190.i, label %for.body100.i, label %for.cond97.preheader.i.out.i98_crit_edge

for.cond97.preheader.i.out.i98_crit_edge:         ; preds = %for.cond97.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i98

do.end84.i:                                       ; preds = %do.end84.i.do.end84.i_crit_edge, %for.cond78.preheader.i.do.end84.i_crit_edge
  %i.1189.i = phi i32 [ %inc89.i, %do.end84.i.do.end84.i_crit_edge ], [ 0, %for.cond78.preheader.i.do.end84.i_crit_edge ]
  %144 = ptrtoint ptr %logical.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %logical.i, align 4
  %arrayidx86.i = getelementptr i64, ptr %145, i32 %i.1189.i
  %146 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %arrayidx86.i, align 8
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i64 noundef %147) #10
  %inc89.i = add nuw nsw i32 %i.1189.i, 1
  %148 = ptrtoint ptr %out_ndaddrs.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %out_ndaddrs.i, align 4
  %cmp79.i = icmp slt i32 %inc89.i, %149
  br i1 %cmp79.i, label %do.end84.i.do.end84.i_crit_edge, label %do.end84.i.do.end93.i_crit_edge

do.end84.i.do.end93.i_crit_edge:                  ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93.i

do.end84.i.do.end84.i_crit_edge:                  ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84.i

do.end93.i:                                       ; preds = %do.end84.i.do.end93.i_crit_edge, %for.cond78.preheader.i.do.end93.i_crit_edge
  %.lcssa.i = phi i32 [ %133, %for.cond78.preheader.i.do.end93.i_crit_edge ], [ %149, %do.end84.i.do.end93.i_crit_edge ]
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.2, i32 noundef 526, i32 noundef %.lcssa.i) #10
  br label %out.i98

for.body100.i:                                    ; preds = %for.cond97.preheader.i
  %150 = ptrtoint ptr %logical.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %logical.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %151, align 8
  %arrayidx102.i = getelementptr [2 x %struct.rmap_test_vector], ptr @__const.btrfs_test_extent_map.rmap_tests, i32 0, i32 %i.0116, i32 7, i32 0
  %154 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %arrayidx102.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %153, i64 %155)
  %cmp103.not.i = icmp eq i64 %153, %155
  br i1 %cmp103.not.i, label %for.body100.i.out.i98_crit_edge, label %do.end108.i

for.body100.i.out.i98_crit_edge:                  ; preds = %for.body100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i98

do.end108.i:                                      ; preds = %for.body100.i
  call void @__sanitizer_cov_trace_pc() #9
  %call110.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.2, i32 noundef 532) #10
  br label %out.i98

out.i98:                                          ; preds = %do.end108.i, %for.body100.i.out.i98_crit_edge, %do.end93.i, %for.cond97.preheader.i.out.i98_crit_edge, %do.end68.i, %do.end56.i, %cleanup.i
  %ret.2.i = phi i32 [ %123, %cleanup.i ], [ %call47.i, %do.end56.i ], [ 0, %do.end68.i ], [ 0, %do.end93.i ], [ 0, %do.end108.i ], [ 0, %for.cond97.preheader.i.out.i98_crit_edge ], [ 0, %for.body100.i.out.i98_crit_edge ]
  call void @_raw_write_lock(ptr noundef %lock.i92) #7
  call void @remove_extent_mapping(ptr noundef %mapping_tree.i, ptr noundef nonnull %call.i80) #7
  call void @_raw_write_unlock(ptr noundef %lock.i92) #7
  call void @free_extent_map(ptr noundef nonnull %call.i80) #7
  br label %test_rmap_block.exit

test_rmap_block.exit.thread:                      ; preds = %if.then4.i, %for.body.test_rmap_block.exit.thread_crit_edge
  %.sink = phi i32 [ 474, %if.then4.i ], [ 467, %for.body.test_rmap_block.exit.thread_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %156 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call9.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %.sink, ptr noundef %156) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_stripe_len.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_ndaddrs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %logical.i) #7
  br label %out

test_rmap_block.exit:                             ; preds = %out.i98, %do.end41.i
  %ret.3.i = phi i32 [ %ret.2.i, %out.i98 ], [ %call34.i, %do.end41.i ]
  call void @free_extent_map(ptr noundef nonnull %call.i80) #7
  %157 = ptrtoint ptr %logical.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %logical.i, align 4
  call void @kfree(ptr noundef %158) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_stripe_len.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_ndaddrs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %logical.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool30.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool30.not, label %for.cond, label %test_rmap_block.exit.out_crit_edge

test_rmap_block.exit.out_crit_edge:               ; preds = %test_rmap_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %test_rmap_block.exit.out_crit_edge, %test_rmap_block.exit.thread, %for.cond.out_crit_edge, %test_case_3.exit.out_crit_edge, %if.end.i78.out_crit_edge, %if.end18.out_crit_edge, %test_case_2.exit.out_crit_edge, %test_case_2.exit.thread107, %test_case_2.exit.thread, %test_case_1.exit.out_crit_edge, %test_case_1.exit.thread102, %test_case_1.exit.thread, %if.end.out_crit_edge
  %ret.1 = phi i32 [ %ret.0.i, %test_case_1.exit.out_crit_edge ], [ %ret.0.i71, %test_case_2.exit.out_crit_edge ], [ %call5.i, %test_case_3.exit.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ -12, %test_case_1.exit.thread ], [ %ret.1.i.ph, %test_case_1.exit.thread102 ], [ -12, %test_case_2.exit.thread ], [ %ret.1.i72.ph, %test_case_2.exit.thread107 ], [ -12, %test_rmap_block.exit.thread ], [ %call1.i77, %if.end.i78.out_crit_edge ], [ %call.i75, %if.end18.out_crit_edge ], [ 0, %for.cond.out_crit_edge ], [ %ret.3.i, %test_rmap_block.exit.out_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #7
  call void @btrfs_free_dummy_fs_info(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end4
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %do.end4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_fs_info(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @extent_map_tree_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_case_4(ptr noundef %fs_info, ptr noundef %em_tree) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__test_case_4(ptr noundef %fs_info, ptr noundef %em_tree, i64 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @__test_case_4(ptr noundef %fs_info, ptr noundef %em_tree, i64 noundef 4096)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_fs_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_extent_map() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_extent_mapping(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_map(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_add_extent_mapping(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_extent_map_tree(ptr noundef %em_tree) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %em_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %em_tree, align 4
  %cmp.not24 = icmp eq ptr %1, null
  br i1 %cmp.not24, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %em_tree, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost, align 4
  tail call void @remove_extent_mapping(ptr noundef %em_tree, ptr noundef %3) #7
  %refs = getelementptr inbounds %struct.extent_map, ptr %3, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #7
  %4 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3.not = icmp eq i32 %5, 1
  br i1 %cmp3.not, label %while.body.if.end_crit_edge, label %do.end6

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end6:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %start = getelementptr inbounds %struct.extent_map, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.extent_map, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len, align 8
  %block_start = getelementptr inbounds %struct.extent_map, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %block_start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %block_start, align 8
  %block_len = getelementptr inbounds %struct.extent_map, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %block_len to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %block_len, align 8
  %call.i.i.i22 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #7
  %14 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %refs, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 28, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13, i32 noundef %15) #10
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #7
  %16 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %refs, align 4
  br label %if.end

if.end:                                           ; preds = %do.end6, %while.body.if.end_crit_edge
  tail call void @free_extent_map(ptr noundef %3) #7
  %17 = ptrtoint ptr %em_tree to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %em_tree, align 4
  %cmp.not = icmp eq ptr %18, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_extent_mapping(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__test_case_3(ptr noundef %fs_info, ptr noundef %em_tree, i64 noundef %start) unnamed_addr #0 align 64 {
entry:
  %em = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %em) #7
  %call = tail call ptr @alloc_extent_map() #7
  %0 = ptrtoint ptr %em to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %em, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 234, ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %start2 = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %start2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4096, ptr %start2, align 8
  %len3 = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %len3 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 4096, ptr %len3, align 8
  %block_start = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %block_start to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 4096, ptr %block_start, align 8
  %block_len = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %block_len to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 4096, ptr %block_len, align 8
  %lock = getelementptr inbounds %struct.extent_map_tree, ptr %em_tree, i32 0, i32 2
  tail call void @_raw_write_lock(ptr noundef %lock) #7
  %6 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %em, align 4
  %call4 = tail call i32 @add_extent_mapping(ptr noundef %em_tree, ptr noundef %7, i32 noundef 0) #7
  tail call void @_raw_write_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 247) #10
  br label %out

if.end12:                                         ; preds = %if.end
  %8 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %em, align 4
  tail call void @free_extent_map(ptr noundef %9) #7
  %call13 = tail call ptr @alloc_extent_map() #7
  %10 = ptrtoint ptr %em to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call13, ptr %em, align 4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 254, ptr noundef %11) #10
  br label %out

if.end21:                                         ; preds = %if.end12
  %start22 = getelementptr inbounds %struct.extent_map, ptr %call13, i32 0, i32 1
  %12 = ptrtoint ptr %start22 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %start22, align 8
  %len23 = getelementptr inbounds %struct.extent_map, ptr %call13, i32 0, i32 2
  %13 = ptrtoint ptr %len23 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 16384, ptr %len23, align 8
  %block_start24 = getelementptr inbounds %struct.extent_map, ptr %call13, i32 0, i32 8
  %14 = ptrtoint ptr %block_start24 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %block_start24, align 8
  %block_len25 = getelementptr inbounds %struct.extent_map, ptr %call13, i32 0, i32 9
  %15 = ptrtoint ptr %block_len25 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 16384, ptr %block_len25, align 8
  tail call void @_raw_write_lock(ptr noundef %lock) #7
  %call27 = call i32 @btrfs_add_extent_mapping(ptr noundef %fs_info, ptr noundef %em_tree, ptr noundef nonnull %em, i64 noundef %start, i64 noundef 4096) #7
  call void @_raw_write_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool29.not = icmp eq i32 %call27, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i64 %start, 4096
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 269, i64 noundef %start, i64 noundef %add, i32 noundef %call27) #10
  br label %out

if.end36:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %em, align 4
  %tobool37.not = icmp eq ptr %17, null
  br i1 %tobool37.not, label %if.end36.if.end62_crit_edge, label %land.lhs.true

if.end36.if.end62_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end36
  %start38 = getelementptr inbounds %struct.extent_map, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %start38 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start38, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %start)
  %cmp39 = icmp ugt i64 %19, %start
  %.pre = add i64 %start, 4096
  br i1 %cmp39, label %land.lhs.true.do.end54_crit_edge, label %lor.lhs.false

land.lhs.true.do.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

lor.lhs.false:                                    ; preds = %land.lhs.true
  %len.i = getelementptr inbounds %struct.extent_map, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %len.i, align 8
  %22 = call i64 @llvm.uadd.sat.i64(i64 %19, i64 %21) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %.pre, i64 %22)
  %cmp42 = icmp ugt i64 %.pre, %22
  br i1 %cmp42, label %lor.lhs.false.do.end54_crit_edge, label %lor.lhs.false43

lor.lhs.false.do.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %block_start45 = getelementptr inbounds %struct.extent_map, ptr %17, i32 0, i32 8
  %23 = ptrtoint ptr %block_start45 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %block_start45, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %24)
  %cmp46.not = icmp eq i64 %19, %24
  br i1 %cmp46.not, label %lor.lhs.false47, label %lor.lhs.false43.do.end54_crit_edge

lor.lhs.false43.do.end54_crit_edge:               ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %block_len49 = getelementptr inbounds %struct.extent_map, ptr %17, i32 0, i32 9
  %25 = ptrtoint ptr %block_len49 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %block_len49, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %26)
  %cmp50.not = icmp eq i64 %21, %26
  br i1 %cmp50.not, label %lor.lhs.false47.if.end62_crit_edge, label %lor.lhs.false47.do.end54_crit_edge

lor.lhs.false47.do.end54_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

lor.lhs.false47.if.end62_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end54:                                         ; preds = %lor.lhs.false47.do.end54_crit_edge, %lor.lhs.false43.do.end54_crit_edge, %lor.lhs.false.do.end54_crit_edge, %land.lhs.true.do.end54_crit_edge
  %len58 = getelementptr inbounds %struct.extent_map, ptr %17, i32 0, i32 2
  %27 = ptrtoint ptr %len58 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %len58, align 8
  %block_start59 = getelementptr inbounds %struct.extent_map, ptr %17, i32 0, i32 8
  %29 = ptrtoint ptr %block_start59 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %block_start59, align 8
  %block_len60 = getelementptr inbounds %struct.extent_map, ptr %17, i32 0, i32 9
  %31 = ptrtoint ptr %block_len60 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %block_len60, align 8
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2, i32 noundef 282, i64 noundef %start, i64 noundef %.pre, i32 noundef 0, i64 noundef %19, i64 noundef %28, i64 noundef %30, i64 noundef %32) #10
  br label %if.end62

if.end62:                                         ; preds = %do.end54, %lor.lhs.false47.if.end62_crit_edge, %if.end36.if.end62_crit_edge
  %ret.0 = phi i32 [ -22, %do.end54 ], [ 0, %lor.lhs.false47.if.end62_crit_edge ], [ 0, %if.end36.if.end62_crit_edge ]
  %33 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %em, align 4
  call void @free_extent_map(ptr noundef %34) #7
  br label %out

out:                                              ; preds = %if.end62, %do.end33, %do.end18, %do.end9
  %ret.1 = phi i32 [ %call4, %do.end9 ], [ %call27, %do.end33 ], [ %ret.0, %if.end62 ], [ -12, %do.end18 ]
  call fastcc void @free_extent_map_tree(ptr noundef %em_tree)
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__test_case_4(ptr noundef %fs_info, ptr noundef %em_tree, i64 noundef %start) unnamed_addr #0 align 64 {
entry:
  %em = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %em) #7
  %call = tail call ptr @alloc_extent_map() #7
  %0 = ptrtoint ptr %em to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %em, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 333, ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %start2 = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %start2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %start2, align 8
  %len3 = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %len3 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 8192, ptr %len3, align 8
  %block_start = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %block_start to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %block_start, align 8
  %block_len = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %block_len to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 8192, ptr %block_len, align 8
  %lock = getelementptr inbounds %struct.extent_map_tree, ptr %em_tree, i32 0, i32 2
  tail call void @_raw_write_lock(ptr noundef %lock) #7
  %6 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %em, align 4
  %call4 = tail call i32 @add_extent_mapping(ptr noundef %em_tree, ptr noundef %7, i32 noundef 0) #7
  tail call void @_raw_write_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.2, i32 noundef 346) #10
  br label %out

if.end12:                                         ; preds = %if.end
  %8 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %em, align 4
  tail call void @free_extent_map(ptr noundef %9) #7
  %call13 = tail call ptr @alloc_extent_map() #7
  %10 = ptrtoint ptr %em to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call13, ptr %em, align 4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 353, ptr noundef %11) #10
  br label %out

if.end21:                                         ; preds = %if.end12
  %start22 = getelementptr inbounds %struct.extent_map, ptr %call13, i32 0, i32 1
  %12 = ptrtoint ptr %start22 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 8192, ptr %start22, align 8
  %len23 = getelementptr inbounds %struct.extent_map, ptr %call13, i32 0, i32 2
  %13 = ptrtoint ptr %len23 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 24576, ptr %len23, align 8
  %block_start24 = getelementptr inbounds %struct.extent_map, ptr %call13, i32 0, i32 8
  %14 = ptrtoint ptr %block_start24 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 16384, ptr %block_start24, align 8
  %block_len25 = getelementptr inbounds %struct.extent_map, ptr %call13, i32 0, i32 9
  %15 = ptrtoint ptr %block_len25 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 24576, ptr %block_len25, align 8
  tail call void @_raw_write_lock(ptr noundef %lock) #7
  %16 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %em, align 4
  %call27 = tail call i32 @add_extent_mapping(ptr noundef %em_tree, ptr noundef %17, i32 noundef 0) #7
  tail call void @_raw_write_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp29 = icmp slt i32 %call27, 0
  br i1 %cmp29, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 367) #10
  br label %out

if.end36:                                         ; preds = %if.end21
  %18 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %em, align 4
  tail call void @free_extent_map(ptr noundef %19) #7
  %call37 = tail call ptr @alloc_extent_map() #7
  %20 = ptrtoint ptr %em to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call37, ptr %em, align 4
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 6), align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 374, ptr noundef %21) #10
  br label %out

if.end45:                                         ; preds = %if.end36
  %start46 = getelementptr inbounds %struct.extent_map, ptr %call37, i32 0, i32 1
  %22 = ptrtoint ptr %start46 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %start46, align 8
  %len47 = getelementptr inbounds %struct.extent_map, ptr %call37, i32 0, i32 2
  %23 = ptrtoint ptr %len47 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 32768, ptr %len47, align 8
  %block_start48 = getelementptr inbounds %struct.extent_map, ptr %call37, i32 0, i32 8
  %24 = ptrtoint ptr %block_start48 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %block_start48, align 8
  %block_len49 = getelementptr inbounds %struct.extent_map, ptr %call37, i32 0, i32 9
  %25 = ptrtoint ptr %block_len49 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 32768, ptr %block_len49, align 8
  tail call void @_raw_write_lock(ptr noundef %lock) #7
  %call51 = call i32 @btrfs_add_extent_mapping(ptr noundef %fs_info, ptr noundef %em_tree, ptr noundef nonnull %em, i64 noundef %start, i64 noundef 4096) #7
  call void @_raw_write_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool53.not = icmp eq i32 %call51, 0
  br i1 %tobool53.not, label %if.end60, label %do.end57

do.end57:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 388, i64 noundef %start, i64 noundef 4096, i32 noundef %call51) #10
  br label %out

if.end60:                                         ; preds = %if.end45
  %26 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %em, align 4
  %tobool61.not = icmp eq ptr %27, null
  br i1 %tobool61.not, label %if.end60.if.end76_crit_edge, label %land.lhs.true

if.end60.if.end76_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

land.lhs.true:                                    ; preds = %if.end60
  %start62 = getelementptr inbounds %struct.extent_map, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %start62 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %start62, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %start)
  %cmp63 = icmp ugt i64 %29, %start
  br i1 %cmp63, label %land.lhs.true.do.end69_crit_edge, label %lor.lhs.false

land.lhs.true.do.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

lor.lhs.false:                                    ; preds = %land.lhs.true
  %add = add i64 %start, 4096
  %len.i = getelementptr inbounds %struct.extent_map, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %len.i, align 8
  %32 = call i64 @llvm.uadd.sat.i64(i64 %29, i64 %31) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %32)
  %cmp65 = icmp ugt i64 %add, %32
  br i1 %cmp65, label %lor.lhs.false.do.end69_crit_edge, label %lor.lhs.false.if.end76_crit_edge

lor.lhs.false.if.end76_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

lor.lhs.false.do.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

do.end69:                                         ; preds = %lor.lhs.false.do.end69_crit_edge, %land.lhs.true.do.end69_crit_edge
  %len72 = getelementptr inbounds %struct.extent_map, ptr %27, i32 0, i32 2
  %33 = ptrtoint ptr %len72 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %len72, align 8
  %block_start73 = getelementptr inbounds %struct.extent_map, ptr %27, i32 0, i32 8
  %35 = ptrtoint ptr %block_start73 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %block_start73, align 8
  %block_len74 = getelementptr inbounds %struct.extent_map, ptr %27, i32 0, i32 9
  %37 = ptrtoint ptr %block_len74 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %block_len74, align 8
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.2, i32 noundef 395, i64 noundef %start, i64 noundef 4096, i32 noundef 0, i64 noundef %29, i64 noundef %34, i64 noundef %36, i64 noundef %38) #10
  br label %if.end76

if.end76:                                         ; preds = %do.end69, %lor.lhs.false.if.end76_crit_edge, %if.end60.if.end76_crit_edge
  %ret.0 = phi i32 [ -22, %do.end69 ], [ 0, %lor.lhs.false.if.end76_crit_edge ], [ 0, %if.end60.if.end76_crit_edge ]
  %39 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %em, align 4
  call void @free_extent_map(ptr noundef %40) #7
  br label %out

out:                                              ; preds = %if.end76, %do.end57, %do.end42, %do.end33, %do.end18, %do.end9
  %ret.1 = phi i32 [ %call4, %do.end9 ], [ %call27, %do.end33 ], [ %call51, %do.end57 ], [ %ret.0, %if.end76 ], [ -12, %do.end42 ], [ -12, %do.end18 ]
  call fastcc void @free_extent_map_tree(ptr noundef %em_tree)
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_rmap_block(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 591, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @btrfs_test_extent_map._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @btrfs_test_extent_map._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 599, i32 3}
!8 = !{ptr @btrfs_test_extent_map._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @btrfs_test_extent_map._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 622, i32 2}
!12 = !{ptr @btrfs_test_extent_map._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @btrfs_test_extent_map._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 63, i32 3}
!16 = !{ptr @test_case_1._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @test_case_1._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 76, i32 3}
!20 = !{ptr @test_case_1._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @test_case_1._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @test_case_1._entry.13, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 84, i32 3}
!24 = !{ptr @test_case_1._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 97, i32 3}
!27 = !{ptr @test_case_1._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @test_case_1._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @test_case_1._entry.18, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 104, i32 3}
!31 = !{ptr @test_case_1._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 118, i32 3}
!34 = !{ptr @test_case_1._entry.20, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @test_case_1._entry_ptr.22, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 124, i32 3}
!38 = !{ptr @test_case_1._entry.23, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @test_case_1._entry_ptr.25, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 25, i32 4}
!42 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @free_extent_map_tree._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @free_extent_map_tree._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 151, i32 3}
!47 = !{ptr @test_case_2._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @test_case_2._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 164, i32 3}
!51 = !{ptr @test_case_2._entry.29, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @test_case_2._entry_ptr.31, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @test_case_2._entry.32, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 172, i32 3}
!55 = !{ptr @test_case_2._entry_ptr.33, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 185, i32 3}
!58 = !{ptr @test_case_2._entry.34, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @test_case_2._entry_ptr.36, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @test_case_2._entry.37, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 192, i32 3}
!62 = !{ptr @test_case_2._entry_ptr.38, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 206, i32 3}
!65 = !{ptr @test_case_2._entry.39, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @test_case_2._entry_ptr.41, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.43, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 212, i32 3}
!69 = !{ptr @test_case_2._entry.42, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @test_case_2._entry_ptr.44, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.45, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 234, i32 3}
!73 = !{ptr @__test_case_3._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @__test_case_3._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @__test_case_3._entry.46, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 247, i32 3}
!77 = !{ptr @__test_case_3._entry_ptr.47, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @__test_case_3._entry.48, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 254, i32 3}
!80 = !{ptr @__test_case_3._entry_ptr.49, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 268, i32 3}
!83 = !{ptr @__test_case_3._entry.50, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @__test_case_3._entry_ptr.52, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.54, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 279, i32 3}
!87 = !{ptr @__test_case_3._entry.53, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @__test_case_3._entry_ptr.55, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.56, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 333, i32 3}
!91 = !{ptr @__test_case_4._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @__test_case_4._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.58, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 346, i32 3}
!95 = !{ptr @__test_case_4._entry.57, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @__test_case_4._entry_ptr.59, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @__test_case_4._entry.60, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 353, i32 3}
!99 = !{ptr @__test_case_4._entry_ptr.61, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.63, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 367, i32 3}
!102 = !{ptr @__test_case_4._entry.62, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @__test_case_4._entry_ptr.64, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @__test_case_4._entry.65, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 374, i32 3}
!106 = !{ptr @__test_case_4._entry_ptr.66, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.68, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 387, i32 3}
!109 = !{ptr @__test_case_4._entry.67, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @__test_case_4._entry_ptr.69, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.71, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 392, i32 3}
!113 = !{ptr @__test_case_4._entry.70, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @__test_case_4._entry_ptr.72, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.73, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 467, i32 3}
!117 = !{ptr @test_rmap_block._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @test_rmap_block._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @test_rmap_block._entry.74, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 474, i32 3}
!121 = !{ptr @test_rmap_block._entry_ptr.75, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.77, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 494, i32 4}
!124 = !{ptr @test_rmap_block._entry.76, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @test_rmap_block._entry_ptr.78, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.80, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 506, i32 3}
!128 = !{ptr @test_rmap_block._entry.79, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @test_rmap_block._entry_ptr.81, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.83, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 513, i32 3}
!132 = !{ptr @test_rmap_block._entry.82, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @test_rmap_block._entry_ptr.84, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.86, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 519, i32 3}
!136 = !{ptr @test_rmap_block._entry.85, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @test_rmap_block._entry_ptr.87, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.89, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 525, i32 4}
!140 = !{ptr @test_rmap_block._entry.88, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @test_rmap_block._entry_ptr.90, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.92, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 526, i32 3}
!144 = !{ptr @test_rmap_block._entry.91, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @test_rmap_block._entry_ptr.93, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.95, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/btrfs/tests/extent-map-tests.c", i32 532, i32 4}
!148 = !{ptr @test_rmap_block._entry.94, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @test_rmap_block._entry_ptr.96, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{!"auto-init"}
!160 = !{i8 0, i8 2}
