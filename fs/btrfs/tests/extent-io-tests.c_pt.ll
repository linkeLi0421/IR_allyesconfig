; ModuleID = '/llk/IR_all_yes/fs/btrfs/tests/extent-io-tests.c_pt.bc'
source_filename = "../fs/btrfs/tests/extent-io-tests.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }

@btrfs_test_extent_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016BTRFS: selftest: running extent I/O tests\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"btrfs_test_extent_io\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fs/btrfs/tests/extent-io-tests.c\00", [63 x i8] zeroinitializer }, align 32
@btrfs_test_extent_io._entry_ptr = internal global ptr @btrfs_test_extent_io._entry, section ".printk_index", align 4
@test_find_delalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016BTRFS: selftest: running find delalloc tests\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_find_delalloc\00", [45 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr = internal global ptr @test_find_delalloc._entry, section ".printk_index", align 4
@test_find_delalloc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013BTRFS: selftest: %s:%d %s\0A\00", [35 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.7 = internal global ptr @test_find_delalloc._entry.5, section ".printk_index", align 4
@test_error = external dso_local local_unnamed_addr global [0 x ptr], align 4
@test_find_delalloc._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013BTRFS: selftest: %s:%d failed to allocate test page\0A\00", [41 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.10 = internal global ptr @test_find_delalloc._entry.8, section ".printk_index", align 4
@test_find_delalloc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013BTRFS: selftest: %s:%d should have found at least one delalloc\0A\00", [62 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.13 = internal global ptr @test_find_delalloc._entry.11, section ".printk_index", align 4
@test_find_delalloc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013BTRFS: selftest: %s:%d expected start 0 end %u, got start %llu end %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.16 = internal global ptr @test_find_delalloc._entry.14, section ".printk_index", align 4
@test_find_delalloc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013BTRFS: selftest: %s:%d couldn't find the locked page\0A\00", [40 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.19 = internal global ptr @test_find_delalloc._entry.17, section ".printk_index", align 4
@test_find_delalloc._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013BTRFS: selftest: %s:%d couldn't find delalloc in our range\0A\00", [34 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.22 = internal global ptr @test_find_delalloc._entry.20, section ".printk_index", align 4
@test_find_delalloc._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013BTRFS: selftest: %s:%d expected start %llu end %llu, got start %llu, end %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.25 = internal global ptr @test_find_delalloc._entry.23, section ".printk_index", align 4
@test_find_delalloc._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013BTRFS: selftest: %s:%d there were unlocked pages in the range\0A\00", [63 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.28 = internal global ptr @test_find_delalloc._entry.26, section ".printk_index", align 4
@test_find_delalloc._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.30 = internal global ptr @test_find_delalloc._entry.29, section ".printk_index", align 4
@test_find_delalloc._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013BTRFS: selftest: %s:%d found range when we shouldn't have\0A\00", [35 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.33 = internal global ptr @test_find_delalloc._entry.31, section ".printk_index", align 4
@test_find_delalloc._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013BTRFS: selftest: %s:%d did not return the proper end offset\0A\00", [33 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.36 = internal global ptr @test_find_delalloc._entry.34, section ".printk_index", align 4
@test_find_delalloc._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013BTRFS: selftest: %s:%d didn't find our range\0A\00", [48 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.39 = internal global ptr @test_find_delalloc._entry.37, section ".printk_index", align 4
@test_find_delalloc._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.4, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013BTRFS: selftest: %s:%d expected start %llu end %llu, got start %llu end %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.42 = internal global ptr @test_find_delalloc._entry.40, section ".printk_index", align 4
@test_find_delalloc._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.4, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013BTRFS: selftest: %s:%d pages in range were not all locked\0A\00", [35 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.45 = internal global ptr @test_find_delalloc._entry.43, section ".printk_index", align 4
@test_find_delalloc._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.4, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013BTRFS: selftest: %s:%d couldn't find our page\0A\00", [47 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.48 = internal global ptr @test_find_delalloc._entry.46, section ".printk_index", align 4
@test_find_delalloc._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.50 = internal global ptr @test_find_delalloc._entry.49, section ".printk_index", align 4
@test_find_delalloc._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.4, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.52 = internal global ptr @test_find_delalloc._entry.51, section ".printk_index", align 4
@test_find_delalloc._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.4, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_find_delalloc._entry_ptr.54 = internal global ptr @test_find_delalloc._entry.53, section ".printk_index", align 4
@.str.55 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@process_page_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013stuck in a loop, start %llu, end %llu, nr_pages %lu, ret %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"process_page_range\00", [45 x i8] zeroinitializer }, align 32
@process_page_range._entry_ptr = internal global ptr @process_page_range._entry, section ".printk_index", align 4
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@dump_extent_io_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016BTRFS: selftest: io tree content:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dump_extent_io_tree\00", [44 x i8] zeroinitializer }, align 32
@dump_extent_io_tree._entry_ptr = internal global ptr @dump_extent_io_tree._entry, section ".printk_index", align 4
@dump_extent_io_tree._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016BTRFS: selftest:   start=%llu len=%llu flags=%s\0A\00", [45 x i8] zeroinitializer }, align 32
@dump_extent_io_tree._entry_ptr.67 = internal global ptr @dump_extent_io_tree._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%sDIRTY\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%sUPTODATE\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%sLOCKED\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%sNEW\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%sDELALLOC\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%sDEFRAG\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%sBOUNDARY\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%sNODATASUM\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%sCLEAR_META_RESV\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%sNEED_WAIT\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%sDAMAGED\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%sNORESERVE\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%sQGROUP_RESERVED\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%sCLEAR_DATA_RESV\00", [46 x i8] zeroinitializer }, align 32
@test_find_first_clear_extent_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016BTRFS: selftest: running find_first_clear_extent_bit test\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"test_find_first_clear_extent_bit\00", [63 x i8] zeroinitializer }, align 32
@test_find_first_clear_extent_bit._entry_ptr = internal global ptr @test_find_first_clear_extent_bit._entry, section ".printk_index", align 4
@test_find_first_clear_extent_bit._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013BTRFS: selftest: %s:%d error getting a range from completely empty tree: start %llu end %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@test_find_first_clear_extent_bit._entry_ptr.88 = internal global ptr @test_find_first_clear_extent_bit._entry.86, section ".printk_index", align 4
@test_find_first_clear_extent_bit._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013BTRFS: selftest: %s:%d error finding beginning range: start %llu end %llu\0A\00", [51 x i8] zeroinitializer }, align 32
@test_find_first_clear_extent_bit._entry_ptr.91 = internal global ptr @test_find_first_clear_extent_bit._entry.89, section ".printk_index", align 4
@test_find_first_clear_extent_bit._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.2, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013BTRFS: selftest: %s:%d error finding trimmed range: start %llu end %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@test_find_first_clear_extent_bit._entry_ptr.94 = internal global ptr @test_find_first_clear_extent_bit._entry.92, section ".printk_index", align 4
@test_find_first_clear_extent_bit._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.85, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013BTRFS: selftest: %s:%d error finding next unalloc range: start %llu end %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@test_find_first_clear_extent_bit._entry_ptr.97 = internal global ptr @test_find_first_clear_extent_bit._entry.95, section ".printk_index", align 4
@test_find_first_clear_extent_bit._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.85, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013BTRFS: selftest: %s:%d error finding exact range: start %llu end %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@test_find_first_clear_extent_bit._entry_ptr.100 = internal global ptr @test_find_first_clear_extent_bit._entry.98, section ".printk_index", align 4
@test_find_first_clear_extent_bit._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.85, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013BTRFS: selftest: %s:%d error finding next alloc range: start %llu end %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@test_find_first_clear_extent_bit._entry_ptr.103 = internal global ptr @test_find_first_clear_extent_bit._entry.101, section ".printk_index", align 4
@test_find_first_clear_extent_bit._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.85, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013BTRFS: selftest: %s:%d error handling beyond end of range search: start %llu end %llu\0A\00", [39 x i8] zeroinitializer }, align 32
@test_find_first_clear_extent_bit._entry_ptr.106 = internal global ptr @test_find_first_clear_extent_bit._entry.104, section ".printk_index", align 4
@test_eb_bitmaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016BTRFS: selftest: running extent buffer bitmap tests\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_eb_bitmaps\00", [16 x i8] zeroinitializer }, align 32
@test_eb_bitmaps._entry_ptr = internal global ptr @test_eb_bitmaps._entry, section ".printk_index", align 4
@test_eb_bitmaps._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.108, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_eb_bitmaps._entry_ptr.110 = internal global ptr @test_eb_bitmaps._entry.109, section ".printk_index", align 4
@test_eb_bitmaps._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.108, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013BTRFS: selftest: %s:%d couldn't allocate test bitmap\0A\00", [40 x i8] zeroinitializer }, align 32
@test_eb_bitmaps._entry_ptr.113 = internal global ptr @test_eb_bitmaps._entry.111, section ".printk_index", align 4
@test_eb_bitmaps._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.108, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_eb_bitmaps._entry_ptr.115 = internal global ptr @test_eb_bitmaps._entry.114, section ".printk_index", align 4
@test_eb_bitmaps._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.108, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_eb_bitmaps._entry_ptr.117 = internal global ptr @test_eb_bitmaps._entry.116, section ".printk_index", align 4
@__test_eb_bitmaps._entry = internal constant %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 356, ptr null, ptr null }, align 1
@.str.118 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013BTRFS: selftest: %s:%d bitmap was not zeroed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__test_eb_bitmaps\00", [46 x i8] zeroinitializer }, align 32
@__test_eb_bitmaps._entry_ptr = internal global ptr @__test_eb_bitmaps._entry, section ".printk_index", align 4
@__test_eb_bitmaps._entry.120 = internal constant %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 364, ptr null, ptr null }, align 1
@.str.121 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013BTRFS: selftest: %s:%d setting all bits failed\0A\00", [46 x i8] zeroinitializer }, align 32
@__test_eb_bitmaps._entry_ptr.122 = internal global ptr @__test_eb_bitmaps._entry.120, section ".printk_index", align 4
@__test_eb_bitmaps._entry.123 = internal constant %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.2, i32 372, ptr null, ptr null }, align 1
@.str.124 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013BTRFS: selftest: %s:%d clearing all bits failed\0A\00", [45 x i8] zeroinitializer }, align 32
@__test_eb_bitmaps._entry_ptr.125 = internal global ptr @__test_eb_bitmaps._entry.123, section ".printk_index", align 4
@__test_eb_bitmaps._entry.126 = internal constant %struct.pi_entry { ptr @.str.127, ptr @.str.119, ptr @.str.2, i32 385, ptr null, ptr null }, align 1
@.str.127 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013BTRFS: selftest: %s:%d setting straddling pages failed\0A\00", [38 x i8] zeroinitializer }, align 32
@__test_eb_bitmaps._entry_ptr.128 = internal global ptr @__test_eb_bitmaps._entry.126, section ".printk_index", align 4
@__test_eb_bitmaps._entry.129 = internal constant %struct.pi_entry { ptr @.str.130, ptr @.str.119, ptr @.str.2, i32 398, ptr null, ptr null }, align 1
@.str.130 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013BTRFS: selftest: %s:%d clearing straddling pages failed\0A\00", [37 x i8] zeroinitializer }, align 32
@__test_eb_bitmaps._entry_ptr.131 = internal global ptr @__test_eb_bitmaps._entry.129, section ".printk_index", align 4
@__test_eb_bitmaps._entry.132 = internal constant %struct.pi_entry { ptr @.str.133, ptr @.str.119, ptr @.str.2, i32 422, ptr null, ptr null }, align 1
@.str.133 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013BTRFS: selftest: %s:%d random bit pattern failed\0A\00", [44 x i8] zeroinitializer }, align 32
@__test_eb_bitmaps._entry_ptr.134 = internal global ptr @__test_eb_bitmaps._entry.132, section ".printk_index", align 4
@check_eb_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013BTRFS: selftest: %s:%d bits do not match\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_eb_bitmap\00", [16 x i8] zeroinitializer }, align 32
@check_eb_bitmap._entry_ptr = internal global ptr @check_eb_bitmap._entry, section ".printk_index", align 4
@check_eb_bitmap._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013BTRFS: selftest: %s:%d offset bits do not match\0A\00", [45 x i8] zeroinitializer }, align 32
@check_eb_bitmap._entry_ptr.139 = internal global ptr @check_eb_bitmap._entry.137, section ".printk_index", align 4
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 598, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 121, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 125, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 144, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 167, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 171, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 189, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 198, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 202, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 208, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 224, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 232, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 236, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 253, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 257, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 263, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 275, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 294, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 298, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 304, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 420, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1160, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 717, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 50, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 788, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 260, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 95, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 101, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 73, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 74, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 75, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 76, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 77, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 78, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 79, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 80, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 81, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 82, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 83, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 84, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 85, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 86, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 489, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 496, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 512, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 528, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 541, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 555, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 568, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 579, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 436, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 440, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 446, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 453, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 470, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 356, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 364, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 372, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 385, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 398, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 422, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 332, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.453 = private constant [36 x i8] c"../fs/btrfs/tests/extent-io-tests.c\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 339, i32 4 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @__test_eb_bitmaps._entry, ptr @__test_eb_bitmaps._entry.120, ptr @__test_eb_bitmaps._entry.123, ptr @__test_eb_bitmaps._entry.126, ptr @__test_eb_bitmaps._entry.129, ptr @__test_eb_bitmaps._entry.132, ptr @__test_eb_bitmaps._entry_ptr, ptr @__test_eb_bitmaps._entry_ptr.122, ptr @__test_eb_bitmaps._entry_ptr.125, ptr @__test_eb_bitmaps._entry_ptr.128, ptr @__test_eb_bitmaps._entry_ptr.131, ptr @__test_eb_bitmaps._entry_ptr.134, ptr @btrfs_test_extent_io._entry, ptr @btrfs_test_extent_io._entry_ptr, ptr @check_eb_bitmap._entry, ptr @check_eb_bitmap._entry.137, ptr @check_eb_bitmap._entry_ptr, ptr @check_eb_bitmap._entry_ptr.139, ptr @dump_extent_io_tree._entry, ptr @dump_extent_io_tree._entry.65, ptr @dump_extent_io_tree._entry_ptr, ptr @dump_extent_io_tree._entry_ptr.67, ptr @process_page_range._entry, ptr @process_page_range._entry_ptr, ptr @test_eb_bitmaps._entry, ptr @test_eb_bitmaps._entry.109, ptr @test_eb_bitmaps._entry.111, ptr @test_eb_bitmaps._entry.114, ptr @test_eb_bitmaps._entry.116, ptr @test_eb_bitmaps._entry_ptr, ptr @test_eb_bitmaps._entry_ptr.110, ptr @test_eb_bitmaps._entry_ptr.113, ptr @test_eb_bitmaps._entry_ptr.115, ptr @test_eb_bitmaps._entry_ptr.117, ptr @test_find_delalloc._entry, ptr @test_find_delalloc._entry.11, ptr @test_find_delalloc._entry.14, ptr @test_find_delalloc._entry.17, ptr @test_find_delalloc._entry.20, ptr @test_find_delalloc._entry.23, ptr @test_find_delalloc._entry.26, ptr @test_find_delalloc._entry.29, ptr @test_find_delalloc._entry.31, ptr @test_find_delalloc._entry.34, ptr @test_find_delalloc._entry.37, ptr @test_find_delalloc._entry.40, ptr @test_find_delalloc._entry.43, ptr @test_find_delalloc._entry.46, ptr @test_find_delalloc._entry.49, ptr @test_find_delalloc._entry.5, ptr @test_find_delalloc._entry.51, ptr @test_find_delalloc._entry.53, ptr @test_find_delalloc._entry.8, ptr @test_find_delalloc._entry_ptr, ptr @test_find_delalloc._entry_ptr.10, ptr @test_find_delalloc._entry_ptr.13, ptr @test_find_delalloc._entry_ptr.16, ptr @test_find_delalloc._entry_ptr.19, ptr @test_find_delalloc._entry_ptr.22, ptr @test_find_delalloc._entry_ptr.25, ptr @test_find_delalloc._entry_ptr.28, ptr @test_find_delalloc._entry_ptr.30, ptr @test_find_delalloc._entry_ptr.33, ptr @test_find_delalloc._entry_ptr.36, ptr @test_find_delalloc._entry_ptr.39, ptr @test_find_delalloc._entry_ptr.42, ptr @test_find_delalloc._entry_ptr.45, ptr @test_find_delalloc._entry_ptr.48, ptr @test_find_delalloc._entry_ptr.50, ptr @test_find_delalloc._entry_ptr.52, ptr @test_find_delalloc._entry_ptr.54, ptr @test_find_delalloc._entry_ptr.7, ptr @test_find_first_clear_extent_bit._entry, ptr @test_find_first_clear_extent_bit._entry.101, ptr @test_find_first_clear_extent_bit._entry.104, ptr @test_find_first_clear_extent_bit._entry.86, ptr @test_find_first_clear_extent_bit._entry.89, ptr @test_find_first_clear_extent_bit._entry.92, ptr @test_find_first_clear_extent_bit._entry.95, ptr @test_find_first_clear_extent_bit._entry.98, ptr @test_find_first_clear_extent_bit._entry_ptr, ptr @test_find_first_clear_extent_bit._entry_ptr.100, ptr @test_find_first_clear_extent_bit._entry_ptr.103, ptr @test_find_first_clear_extent_bit._entry_ptr.106, ptr @test_find_first_clear_extent_bit._entry_ptr.88, ptr @test_find_first_clear_extent_bit._entry_ptr.91, ptr @test_find_first_clear_extent_bit._entry_ptr.94, ptr @test_find_first_clear_extent_bit._entry_ptr.97, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.112, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.138], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_extent_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_delalloc._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_page_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_extent_io_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_extent_io_tree._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_first_clear_extent_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_first_clear_extent_bit._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_first_clear_extent_bit._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_first_clear_extent_bit._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_first_clear_extent_bit._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_first_clear_extent_bit._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_first_clear_extent_bit._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_first_clear_extent_bit._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_eb_bitmaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_eb_bitmaps._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_eb_bitmaps._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_eb_bitmaps._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_eb_bitmaps._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_eb_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_eb_bitmap._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_test_extent_io(i32 noundef %sectorsize, i32 noundef %nodesize) local_unnamed_addr #0 align 64 {
entry:
  %tree.i = alloca %struct.extent_io_tree, align 8
  %start.i = alloca i64, align 8
  %end.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %call1 = tail call fastcc i32 @test_find_delalloc(i32 noundef %sectorsize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %tree.i) #8
  %0 = call ptr @memset(ptr %tree.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start.i) #8
  %1 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %start.i, align 8, !annotation !229
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end.i) #8
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %end.i, align 8, !annotation !229
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #11
  call void @extent_io_tree_init(ptr noundef null, ptr noundef nonnull %tree.i, i32 noundef 10, ptr noundef null) #8
  call void @find_first_clear_extent_bit(ptr noundef nonnull %tree.i, i64 noundef 0, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, i32 noundef 32) #8
  %3 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.not.i = icmp eq i64 %4, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.do.end4.i_crit_edge

if.end.do.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

lor.lhs.false.i:                                  ; preds = %if.end
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %6)
  %cmp1.not.i = icmp eq i64 %6, -1
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.do.end4.i_crit_edge

lor.lhs.false.i.do.end4.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %lor.lhs.false.i.do.end4.i_crit_edge, %if.end.do.end4.i_crit_edge
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %end.i, align 8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.2, i32 noundef 498, i64 noundef %4, i64 noundef %8) #11
  br label %test_find_first_clear_extent_bit.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i.i = call i32 @set_extent_bit(ptr noundef nonnull %tree.i, i64 noundef 1048576, i64 noundef 4194303, i32 noundef 33, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 3136, ptr noundef null) #8
  call void @find_first_clear_extent_bit(ptr noundef nonnull %tree.i, i64 noundef 524288, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, i32 noundef 33) #8
  %9 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp8.not.i = icmp eq i64 %10, 0
  br i1 %cmp8.not.i, label %lor.lhs.false9.i, label %if.end.i.do.end14.i_crit_edge

if.end.i.do.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

lor.lhs.false9.i:                                 ; preds = %if.end.i
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048575, i64 %12)
  %cmp10.not.i = icmp eq i64 %12, 1048575
  br i1 %cmp10.not.i, label %if.end17.i, label %lor.lhs.false9.i.do.end14.i_crit_edge

lor.lhs.false9.i.do.end14.i_crit_edge:            ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.end14.i:                                       ; preds = %lor.lhs.false9.i.do.end14.i_crit_edge, %if.end.i.do.end14.i_crit_edge
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %end.i, align 8
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.2, i32 noundef 513, i64 noundef %10, i64 noundef %14) #11
  br label %test_find_first_clear_extent_bit.exit

if.end17.i:                                       ; preds = %lor.lhs.false9.i
  %call.i74.i = call i32 @set_extent_bit(ptr noundef nonnull %tree.i, i64 noundef 33554432, i64 noundef 67108863, i32 noundef 33, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 3136, ptr noundef null) #8
  call void @find_first_clear_extent_bit(ptr noundef nonnull %tree.i, i64 noundef 12582912, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, i32 noundef 33) #8
  %15 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194304, i64 %16)
  %cmp19.not.i = icmp eq i64 %16, 4194304
  br i1 %cmp19.not.i, label %lor.lhs.false20.i, label %if.end17.i.do.end25.i_crit_edge

if.end17.i.do.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25.i

lor.lhs.false20.i:                                ; preds = %if.end17.i
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554431, i64 %18)
  %cmp21.not.i = icmp eq i64 %18, 33554431
  br i1 %cmp21.not.i, label %if.end28.i, label %lor.lhs.false20.i.do.end25.i_crit_edge

lor.lhs.false20.i.do.end25.i_crit_edge:           ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25.i

do.end25.i:                                       ; preds = %lor.lhs.false20.i.do.end25.i_crit_edge, %if.end17.i.do.end25.i_crit_edge
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %end.i, align 8
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.2, i32 noundef 529, i64 noundef %16, i64 noundef %20) #11
  br label %test_find_first_clear_extent_bit.exit

if.end28.i:                                       ; preds = %lor.lhs.false20.i
  call void @find_first_clear_extent_bit(ptr noundef nonnull %tree.i, i64 noundef 2097152, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, i32 noundef 33) #8
  %21 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194304, i64 %22)
  %cmp29.not.i = icmp eq i64 %22, 4194304
  br i1 %cmp29.not.i, label %lor.lhs.false30.i, label %if.end28.i.do.end35.i_crit_edge

if.end28.i.do.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35.i

lor.lhs.false30.i:                                ; preds = %if.end28.i
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554431, i64 %24)
  %cmp31.not.i = icmp eq i64 %24, 33554431
  br i1 %cmp31.not.i, label %if.end38.i, label %lor.lhs.false30.i.do.end35.i_crit_edge

lor.lhs.false30.i.do.end35.i_crit_edge:           ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35.i

do.end35.i:                                       ; preds = %lor.lhs.false30.i.do.end35.i_crit_edge, %if.end28.i.do.end35.i_crit_edge
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %end.i, align 8
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.2, i32 noundef 542, i64 noundef %22, i64 noundef %26) #11
  br label %test_find_first_clear_extent_bit.exit

if.end38.i:                                       ; preds = %lor.lhs.false30.i
  %call.i75.i = call i32 @set_extent_bit(ptr noundef nonnull %tree.i, i64 noundef 67108864, i64 noundef 75497471, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 3136, ptr noundef null) #8
  call void @find_first_clear_extent_bit(ptr noundef nonnull %tree.i, i64 noundef 68157440, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, i32 noundef 32) #8
  %27 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 67108864, i64 %28)
  %cmp40.not.i = icmp eq i64 %28, 67108864
  br i1 %cmp40.not.i, label %lor.lhs.false41.i, label %if.end38.i.do.end46.i_crit_edge

if.end38.i.do.end46.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46.i

lor.lhs.false41.i:                                ; preds = %if.end38.i
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 75497471, i64 %30)
  %cmp42.not.i = icmp eq i64 %30, 75497471
  br i1 %cmp42.not.i, label %if.end49.i, label %lor.lhs.false41.i.do.end46.i_crit_edge

lor.lhs.false41.i.do.end46.i_crit_edge:           ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46.i

do.end46.i:                                       ; preds = %lor.lhs.false41.i.do.end46.i_crit_edge, %if.end38.i.do.end46.i_crit_edge
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %end.i, align 8
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.2, i32 noundef 556, i64 noundef %28, i64 noundef %32) #11
  br label %test_find_first_clear_extent_bit.exit

if.end49.i:                                       ; preds = %lor.lhs.false41.i
  call void @find_first_clear_extent_bit(ptr noundef nonnull %tree.i, i64 noundef 58720256, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, i32 noundef 32) #8
  %33 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 67108864, i64 %34)
  %cmp50.not.i = icmp eq i64 %34, 67108864
  br i1 %cmp50.not.i, label %lor.lhs.false51.i, label %if.end49.i.do.end56.i_crit_edge

if.end49.i.do.end56.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56.i

lor.lhs.false51.i:                                ; preds = %if.end49.i
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 75497471, i64 %36)
  %cmp52.not.i = icmp eq i64 %36, 75497471
  br i1 %cmp52.not.i, label %if.end59.i, label %lor.lhs.false51.i.do.end56.i_crit_edge

lor.lhs.false51.i.do.end56.i_crit_edge:           ; preds = %lor.lhs.false51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56.i

do.end56.i:                                       ; preds = %lor.lhs.false51.i.do.end56.i_crit_edge, %if.end49.i.do.end56.i_crit_edge
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %end.i, align 8
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.2, i32 noundef 569, i64 noundef %34, i64 noundef %38) #11
  br label %test_find_first_clear_extent_bit.exit

if.end59.i:                                       ; preds = %lor.lhs.false51.i
  call void @find_first_clear_extent_bit(ptr noundef nonnull %tree.i, i64 noundef -1, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, i32 noundef 32) #8
  %39 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 75497472, i64 %40)
  %cmp60.not.i = icmp eq i64 %40, 75497472
  br i1 %cmp60.not.i, label %lor.lhs.false61.i, label %if.end59.i.do.end66.i_crit_edge

if.end59.i.do.end66.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66.i

lor.lhs.false61.i:                                ; preds = %if.end59.i
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %42)
  %cmp62.not.i = icmp eq i64 %42, -1
  br i1 %cmp62.not.i, label %if.end5, label %lor.lhs.false61.i.do.end66.i_crit_edge

lor.lhs.false61.i.do.end66.i_crit_edge:           ; preds = %lor.lhs.false61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66.i

do.end66.i:                                       ; preds = %lor.lhs.false61.i.do.end66.i_crit_edge, %if.end59.i.do.end66.i_crit_edge
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %end.i, align 8
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.2, i32 noundef 581, i64 noundef %40, i64 noundef %44) #11
  br label %test_find_first_clear_extent_bit.exit

test_find_first_clear_extent_bit.exit:            ; preds = %do.end66.i, %do.end56.i, %do.end46.i, %do.end35.i, %do.end25.i, %do.end14.i, %do.end4.i
  call fastcc void @dump_extent_io_tree(ptr noundef nonnull %tree.i) #8
  %call.i76.i = call i32 @clear_extent_bit(ptr noundef nonnull %tree.i, i64 noundef 0, i64 noundef -1, i32 noundef 33, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %tree.i) #8
  br label %out

if.end5:                                          ; preds = %lor.lhs.false61.i
  %call.i76.i17 = call i32 @clear_extent_bit(ptr noundef nonnull %tree.i, i64 noundef 0, i64 noundef -1, i32 noundef 33, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %tree.i) #8
  %call.i10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #11
  %call1.i = call ptr @btrfs_alloc_dummy_fs_info(i32 noundef %nodesize, i32 noundef %sectorsize) #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end4.i12, label %if.end8.i.i

do.end4.i12:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @test_error to i32))
  %45 = load ptr, ptr @test_error, align 4
  %call6.i11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 440, ptr noundef %45) #11
  br label %out

if.end8.i.i:                                      ; preds = %if.end5
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %nodesize, i32 noundef 3264) #12
  %tobool8.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not.i, label %do.end12.i, label %if.end15.i

do.end12.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.2, i32 noundef 446) #11
  br label %out.i

if.end15.i:                                       ; preds = %if.end8.i.i
  %call16.i14 = call ptr @__alloc_dummy_extent_buffer(ptr noundef nonnull %call1.i, i64 noundef 0, i32 noundef %nodesize) #8
  %tobool17.not.i = icmp eq ptr %call16.i14, null
  br i1 %tobool17.not.i, label %do.end21.i, label %if.end24.i

do.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 453, ptr noundef %46) #11
  br label %out.i

if.end24.i:                                       ; preds = %if.end15.i
  %call25.i = call fastcc i32 @__test_eb_bitmaps(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call16.i14, i32 noundef %nodesize) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i15, label %if.end24.i.out.i_crit_edge

if.end24.i.out.i_crit_edge:                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end28.i15:                                     ; preds = %if.end24.i
  call void @free_extent_buffer(ptr noundef nonnull %call16.i14) #8
  %conv.i = zext i32 %sectorsize to i64
  %call29.i = call ptr @__alloc_dummy_extent_buffer(ptr noundef nonnull %call1.i, i64 noundef %conv.i, i32 noundef %nodesize) #8
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %if.end28.i15
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 470, ptr noundef %47) #11
  br label %out.i

if.end37.i:                                       ; preds = %if.end28.i15
  call void @__sanitizer_cov_trace_pc() #10
  %call38.i = call fastcc i32 @__test_eb_bitmaps(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call29.i, i32 noundef %nodesize) #8
  br label %out.i

out.i:                                            ; preds = %if.end37.i, %do.end34.i, %if.end24.i.out.i_crit_edge, %do.end21.i, %do.end12.i
  %retval.1.i62.i = phi ptr [ %call9.i.i, %if.end24.i.out.i_crit_edge ], [ %call9.i.i, %if.end37.i ], [ %call9.i.i, %do.end34.i ], [ %call9.i.i, %do.end21.i ], [ null, %do.end12.i ]
  %ret.0.i = phi i32 [ %call25.i, %if.end24.i.out.i_crit_edge ], [ %call38.i, %if.end37.i ], [ -12, %do.end34.i ], [ -12, %do.end21.i ], [ -12, %do.end12.i ]
  %eb.0.i = phi ptr [ %call16.i14, %if.end24.i.out.i_crit_edge ], [ %call29.i, %if.end37.i ], [ null, %do.end34.i ], [ null, %do.end21.i ], [ null, %do.end12.i ]
  call void @free_extent_buffer(ptr noundef %eb.0.i) #8
  call void @kfree(ptr noundef %retval.1.i62.i) #8
  call void @btrfs_free_dummy_fs_info(ptr noundef nonnull %call1.i) #8
  br label %out

out:                                              ; preds = %out.i, %do.end4.i12, %test_find_first_clear_extent_bit.exit, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ -22, %test_find_first_clear_extent_bit.exit ], [ %ret.0.i, %out.i ], [ -12, %do.end4.i12 ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_find_delalloc(i32 noundef %sectorsize) unnamed_addr #0 align 64 {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #8
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %start, align 8, !annotation !229
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end) #8
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %end, align 8, !annotation !229
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  %call2 = tail call ptr @btrfs_new_test_inode() #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end5, label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 4) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 4), align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 125, ptr noundef %2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_tree = getelementptr i8, ptr %call2, i32 -736
  tail call void @extent_io_tree_init(ptr noundef null, ptr noundef %io_tree, i32 noundef 10, ptr noundef null) #8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %locked_page.0461 = phi ptr [ null, %if.end ], [ %locked_page.1, %for.inc.for.body_crit_edge ]
  %index.0460 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %4, i32 noundef %index.0460, i32 noundef 7, i32 noundef 3264) #8
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %do.end15, label %if.end18

do.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 144) #11
  br label %out

if.end18:                                         ; preds = %for.body
  %5 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !230

if.then.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, -1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %5, align 4
  %and.i12.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !231

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !230

if.then.i15.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i14.i = add i32 %13, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %14, %if.end.i16.i ]
  %15 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.55) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !232
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !230

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i21.i = add i32 %13, -1
  br label %SetPageDirty.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call.i to i32
  br label %SetPageDirty.exit

SetPageDirty.exit:                                ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %16, %if.end.i23.i ]
  %17 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_set_bit(i32 noundef 3, ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.0460)
  %tobool19.not = icmp eq i32 %index.0460, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %SetPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unlock_page(ptr noundef nonnull %call.i) #8
  br label %for.inc

if.else:                                          ; preds = %SetPageDirty.exit
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %5, align 4
  %and.i.i352 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i352)
  %tobool.not.i.i353 = icmp eq i32 %and.i.i352, 0
  br i1 %tobool.not.i.i353, label %if.end.i.i356, label %if.then.i.i355, !prof !230

if.then.i.i355:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i354 = add i32 %19, -1
  br label %_compound_head.exit.i358

if.end.i.i356:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i358

_compound_head.exit.i358:                         ; preds = %if.end.i.i356, %if.then.i.i355
  %retval.0.i.i357 = phi i32 [ %sub.i.i354, %if.then.i.i355 ], [ %20, %if.end.i.i356 ]
  %21 = inttoptr i32 %retval.0.i.i357 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %22 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %23, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !231

if.then.i1.i:                                     ; preds = %_compound_head.exit.i358
  call void @__sanitizer_cov_trace_pc() #10
  %24 = inttoptr i32 %retval.0.i.i357 to ptr
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.56) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !233
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i358
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@test_find_delalloc, %if.then.i.i.i.i)) #8
          to label %for.inc [label %if.then.i.i.i.i], !srcloc !235

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %21, i32 noundef 1) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i.i.i, %do.end5.i.i, %if.then20
  %locked_page.1 = phi ptr [ %locked_page.0461, %if.then20 ], [ %call.i, %do.end5.i.i ], [ %call.i, %if.then.i.i.i.i ]
  %inc = add nuw nsw i32 %index.0460, 1
  %exitcond.not = icmp eq i32 %inc, 65536
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %sub = add i32 %sectorsize, -1
  %conv22 = zext i32 %sub to i64
  %call.i359 = tail call i32 @set_extent_bit(ptr noundef %io_tree, i64 noundef 0, i64 noundef %conv22, i32 noundef 18, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 3136, ptr noundef null) #8
  %26 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %start, align 8
  %27 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 4095, ptr %end, align 8
  %call25 = call zeroext i1 @find_lock_delalloc_range(ptr noundef nonnull %call2, ptr noundef %locked_page.1, ptr noundef nonnull %start, ptr noundef nonnull %end) #8
  br i1 %call25, label %if.end33, label %do.end30

do.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 167) #11
  br label %if.then225

if.end33:                                         ; preds = %for.end
  %28 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp34.not = icmp eq i64 %29, 0
  br i1 %cmp34.not, label %lor.lhs.false, label %if.end33.do.end43_crit_edge

if.end33.do.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

lor.lhs.false:                                    ; preds = %if.end33
  %30 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %conv22)
  %cmp38.not = icmp eq i64 %31, %conv22
  br i1 %cmp38.not, label %if.end47, label %lor.lhs.false.do.end43_crit_edge

lor.lhs.false.do.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

do.end43:                                         ; preds = %lor.lhs.false.do.end43_crit_edge, %if.end33.do.end43_crit_edge
  %32 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %end, align 8
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 172, i32 noundef %sub, i64 noundef %29, i64 noundef %33) #11
  br label %if.then225

if.end47:                                         ; preds = %lor.lhs.false
  %call.i360 = call i32 @clear_extent_bit(ptr noundef %io_tree, i64 noundef 0, i64 noundef %conv22, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null) #8
  call void @unlock_page(ptr noundef %locked_page.1) #8
  %34 = getelementptr inbounds %struct.page, ptr %locked_page.1, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i361 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i361)
  %tobool.not.i.i362 = icmp eq i32 %and.i.i361, 0
  br i1 %tobool.not.i.i362, label %if.end.i.i365, label %if.then.i.i364, !prof !230

if.then.i.i364:                                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i363 = add i32 %36, -1
  br label %_compound_head.exit.i367

if.end.i.i365:                                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %locked_page.1 to i32
  br label %_compound_head.exit.i367

_compound_head.exit.i367:                         ; preds = %if.end.i.i365, %if.then.i.i364
  %retval.0.i.i366 = phi i32 [ %sub.i.i363, %if.then.i.i364 ], [ %37, %if.end.i.i365 ]
  %38 = inttoptr i32 %retval.0.i.i366 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %39 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i.i.i = icmp eq i32 %40, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i368, label %do.end5.i.i.i.i, !prof !231

if.then.i.i.i.i368:                               ; preds = %_compound_head.exit.i367
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %38, ptr noundef nonnull @.str.57) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !236
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i367
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %41 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !238
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %41, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@test_find_delalloc, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !235

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %38, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %38) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %42 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_mapping, align 8
  %call.i369 = call ptr @pagecache_get_page(ptr noundef %43, i32 noundef 16384, i32 noundef 2, i32 noundef 0) #8
  %tobool53.not = icmp eq ptr %call.i369, null
  br i1 %tobool53.not, label %do.end57, label %if.end60

do.end57:                                         ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 189) #11
  br label %if.then225

if.end60:                                         ; preds = %put_page.exit
  %conv61 = zext i32 %sectorsize to i64
  %call.i370 = call i32 @set_extent_bit(ptr noundef %io_tree, i64 noundef %conv61, i64 noundef 134217727, i32 noundef 18, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 3136, ptr noundef null) #8
  %44 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 67108864, ptr %start, align 8
  %45 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 67112959, ptr %end, align 8
  %call66 = call zeroext i1 @find_lock_delalloc_range(ptr noundef nonnull %call2, ptr noundef nonnull %call.i369, ptr noundef nonnull %start, ptr noundef nonnull %end) #8
  br i1 %call66, label %if.end75, label %do.end72

do.end72:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 198) #11
  br label %if.then225

if.end75:                                         ; preds = %if.end60
  %46 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 67108864, i64 %47)
  %cmp76.not = icmp eq i64 %47, 67108864
  br i1 %cmp76.not, label %lor.lhs.false78, label %if.end75.do.end85_crit_edge

if.end75.do.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

lor.lhs.false78:                                  ; preds = %if.end75
  %48 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 134217727, i64 %49)
  %cmp80.not = icmp eq i64 %49, 134217727
  br i1 %cmp80.not, label %if.end89, label %lor.lhs.false78.do.end85_crit_edge

lor.lhs.false78.do.end85_crit_edge:               ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

do.end85:                                         ; preds = %lor.lhs.false78.do.end85_crit_edge, %if.end75.do.end85_crit_edge
  %50 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %end, align 8
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2, i32 noundef 203, i64 noundef 67108864, i64 noundef 134217727, i64 noundef %47, i64 noundef %51) #11
  br label %if.then225

if.end89:                                         ; preds = %lor.lhs.false78
  %call90 = call fastcc i32 @process_page_range(ptr noundef nonnull %call2, i64 noundef 67108864, i64 noundef 134217727, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end98, label %do.end95

do.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef 208) #11
  br label %if.then225

if.end98:                                         ; preds = %if.end89
  %52 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %start, align 8
  %54 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %end, align 8
  %call.i371 = call i32 @clear_extent_bit(ptr noundef %io_tree, i64 noundef %53, i64 noundef %55, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null) #8
  %56 = getelementptr inbounds %struct.page, ptr %call.i369, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %and.i.i372 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i372)
  %tobool.not.i.i373 = icmp eq i32 %and.i.i372, 0
  br i1 %tobool.not.i.i373, label %if.end.i.i376, label %if.then.i.i375, !prof !230

if.then.i.i375:                                   ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i374 = add i32 %58, -1
  br label %_compound_head.exit.i381

if.end.i.i376:                                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %call.i369 to i32
  br label %_compound_head.exit.i381

_compound_head.exit.i381:                         ; preds = %if.end.i.i376, %if.then.i.i375
  %retval.0.i.i377 = phi i32 [ %sub.i.i374, %if.then.i.i375 ], [ %59, %if.end.i.i376 ]
  %60 = inttoptr i32 %retval.0.i.i377 to ptr
  %_refcount.i.i.i.i.i378 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 3
  %call.i.i.i.i.i.i.i379 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i378, i32 noundef 4) #8
  %61 = ptrtoint ptr %_refcount.i.i.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %_refcount.i.i.i.i.i378, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i.i.i.i380 = icmp eq i32 %62, 0
  br i1 %cmp.i.i.i.i380, label %if.then.i.i.i.i382, label %do.end5.i.i.i.i386, !prof !231

if.then.i.i.i.i382:                               ; preds = %_compound_head.exit.i381
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %60, ptr noundef nonnull @.str.57) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !236
  unreachable

do.end5.i.i.i.i386:                               ; preds = %_compound_head.exit.i381
  %call.i.i.i10.i.i.i.i383 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i378, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i378, i32 1, i32 3, i32 1) #8
  %63 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i378, ptr %_refcount.i.i.i.i.i378, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i378) #8, !srcloc !238
  %asmresult.i.i.i.i.i.i.i.i.i.i384 = extractvalue { i32, i32 } %63, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i384)
  %cmp.i.i.i.i.i.i.i385 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i384, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@test_find_delalloc, %if.then.i.i.i.i.i388)) #8
          to label %folio_put_testzero.exit.i.i389 [label %if.then.i.i.i.i.i388], !srcloc !235

if.then.i.i.i.i.i388:                             ; preds = %do.end5.i.i.i.i386
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i387 = zext i1 %cmp.i.i.i.i.i.i.i385 to i32
  call void @__page_ref_mod_and_test(ptr noundef %60, i32 noundef -1, i32 noundef %conv.i.i.i.i.i387) #8
  br label %folio_put_testzero.exit.i.i389

folio_put_testzero.exit.i.i389:                   ; preds = %if.then.i.i.i.i.i388, %do.end5.i.i.i.i386
  br i1 %cmp.i.i.i.i.i.i.i385, label %if.then.i4.i390, label %folio_put_testzero.exit.i.i389.put_page.exit391_crit_edge

folio_put_testzero.exit.i.i389.put_page.exit391_crit_edge: ; preds = %folio_put_testzero.exit.i.i389
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit391

if.then.i4.i390:                                  ; preds = %folio_put_testzero.exit.i.i389
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %60) #8
  br label %put_page.exit391

put_page.exit391:                                 ; preds = %if.then.i4.i390, %folio_put_testzero.exit.i.i389.put_page.exit391_crit_edge
  %add101 = add nuw nsw i64 %conv61, 134217728
  %64 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_mapping, align 8
  %shr103 = lshr i64 %add101, 12
  %conv104 = trunc i64 %shr103 to i32
  %call.i392 = call ptr @pagecache_get_page(ptr noundef %65, i32 noundef %conv104, i32 noundef 2, i32 noundef 0) #8
  %tobool106.not = icmp eq ptr %call.i392, null
  br i1 %tobool106.not, label %do.end110, label %if.end113

do.end110:                                        ; preds = %put_page.exit391
  call void @__sanitizer_cov_trace_pc() #10
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 224) #11
  br label %if.then225

if.end113:                                        ; preds = %put_page.exit391
  %66 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add101, ptr %start, align 8
  %sub115 = add nuw nsw i64 %conv61, 134221823
  %67 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %sub115, ptr %end, align 8
  %call116 = call zeroext i1 @find_lock_delalloc_range(ptr noundef nonnull %call2, ptr noundef nonnull %call.i392, ptr noundef nonnull %start, ptr noundef nonnull %end) #8
  br i1 %call116, label %do.end122, label %if.end125

do.end122:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, i32 noundef 232) #11
  br label %if.then225

if.end125:                                        ; preds = %if.end113
  %68 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %sub115)
  %cmp128.not = icmp eq i64 %69, %sub115
  br i1 %cmp128.not, label %if.end136, label %do.end133

do.end133:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 236) #11
  br label %if.then225

if.end136:                                        ; preds = %if.end125
  %call.i393 = call i32 @set_extent_bit(ptr noundef %io_tree, i64 noundef 134217728, i64 noundef 268435455, i32 noundef 18, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 3136, ptr noundef null) #8
  %70 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %add101, ptr %start, align 8
  %71 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %sub115, ptr %end, align 8
  %call141 = call zeroext i1 @find_lock_delalloc_range(ptr noundef nonnull %call2, ptr noundef nonnull %call.i392, ptr noundef nonnull %start, ptr noundef nonnull %end) #8
  br i1 %call141, label %if.end150, label %do.end147

do.end147:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 253) #11
  br label %if.then225

if.end150:                                        ; preds = %if.end136
  %72 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %add101)
  %cmp151.not = icmp eq i64 %73, %add101
  br i1 %cmp151.not, label %lor.lhs.false153, label %if.end150.do.end160_crit_edge

if.end150.do.end160_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end160

lor.lhs.false153:                                 ; preds = %if.end150
  %74 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435455, i64 %75)
  %cmp155.not = icmp eq i64 %75, 268435455
  br i1 %cmp155.not, label %if.end164, label %lor.lhs.false153.do.end160_crit_edge

lor.lhs.false153.do.end160_crit_edge:             ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end160

do.end160:                                        ; preds = %lor.lhs.false153.do.end160_crit_edge, %if.end150.do.end160_crit_edge
  %76 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %end, align 8
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2, i32 noundef 258, i64 noundef %add101, i64 noundef 268435455, i64 noundef %73, i64 noundef %77) #11
  br label %if.then225

if.end164:                                        ; preds = %lor.lhs.false153
  %call165 = call fastcc i32 @process_page_range(ptr noundef nonnull %call2, i64 noundef %add101, i64 noundef 268435455, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end173, label %do.end170

do.end170:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.2, i32 noundef 263) #11
  br label %if.then225

if.end173:                                        ; preds = %if.end164
  %78 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %start, align 8
  %80 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %end, align 8
  %call.i394 = call i32 @clear_extent_bit(ptr noundef %io_tree, i64 noundef %79, i64 noundef %81, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null) #8
  %82 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i_mapping, align 8
  %call.i395 = call ptr @pagecache_get_page(ptr noundef %83, i32 noundef 33024, i32 noundef 0, i32 noundef 0) #8
  %tobool180.not = icmp eq ptr %call.i395, null
  br i1 %tobool180.not, label %do.end184, label %if.end187

do.end184:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  %call186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.2, i32 noundef 275) #11
  br label %if.then225

if.end187:                                        ; preds = %if.end173
  %84 = getelementptr inbounds %struct.page, ptr %call.i395, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  %and.i.i331 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i331)
  %tobool.not.i.i332 = icmp eq i32 %and.i.i331, 0
  br i1 %tobool.not.i.i332, label %if.end.i.i335, label %if.then.i.i334, !prof !230

if.then.i.i334:                                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i333 = add i32 %86, -1
  br label %_compound_head.exit.i340

if.end.i.i335:                                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %call.i395 to i32
  br label %_compound_head.exit.i340

_compound_head.exit.i340:                         ; preds = %if.end.i.i335, %if.then.i.i334
  %retval.0.i.i336 = phi i32 [ %sub.i.i333, %if.then.i.i334 ], [ %87, %if.end.i.i335 ]
  %88 = inttoptr i32 %retval.0.i.i336 to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp.i.not.i337 = icmp eq i32 %90, -1
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %84, align 4
  %and.i12.i338 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i338)
  %tobool.not.i13.i339 = icmp eq i32 %and.i12.i338, 0
  br i1 %cmp.i.not.i337, label %if.then.i341, label %do.end8.i347, !prof !231

if.then.i341:                                     ; preds = %_compound_head.exit.i340
  br i1 %tobool.not.i13.i339, label %if.end.i16.i344, label %if.then.i15.i343, !prof !230

if.then.i15.i343:                                 ; preds = %if.then.i341
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i14.i342 = add i32 %92, -1
  br label %_compound_head.exit18.i346

if.end.i16.i344:                                  ; preds = %if.then.i341
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %call.i395 to i32
  br label %_compound_head.exit18.i346

_compound_head.exit18.i346:                       ; preds = %if.end.i16.i344, %if.then.i15.i343
  %retval.0.i17.i345 = phi i32 [ %sub.i14.i342, %if.then.i15.i343 ], [ %93, %if.end.i16.i344 ]
  %94 = inttoptr i32 %retval.0.i17.i345 to ptr
  call void @dump_page(ptr noundef %94, ptr noundef nonnull @.str.55) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !240
  unreachable

do.end8.i347:                                     ; preds = %_compound_head.exit.i340
  br i1 %tobool.not.i13.i339, label %if.end.i23.i350, label %if.then.i22.i349, !prof !230

if.then.i22.i349:                                 ; preds = %do.end8.i347
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i21.i348 = add i32 %92, -1
  br label %ClearPageDirty.exit

if.end.i23.i350:                                  ; preds = %do.end8.i347
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %call.i395 to i32
  br label %ClearPageDirty.exit

ClearPageDirty.exit:                              ; preds = %if.end.i23.i350, %if.then.i22.i349
  %retval.0.i24.i351 = phi i32 [ %sub.i21.i348, %if.then.i22.i349 ], [ %95, %if.end.i23.i350 ]
  %96 = inttoptr i32 %retval.0.i24.i351 to ptr
  call void @_clear_bit(i32 noundef 3, ptr noundef %96) #8
  %97 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %84, align 4
  %and.i.i396 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i396)
  %tobool.not.i.i397 = icmp eq i32 %and.i.i396, 0
  br i1 %tobool.not.i.i397, label %if.end.i.i400, label %if.then.i.i399, !prof !230

if.then.i.i399:                                   ; preds = %ClearPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i398 = add i32 %98, -1
  br label %_compound_head.exit.i405

if.end.i.i400:                                    ; preds = %ClearPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %call.i395 to i32
  br label %_compound_head.exit.i405

_compound_head.exit.i405:                         ; preds = %if.end.i.i400, %if.then.i.i399
  %retval.0.i.i401 = phi i32 [ %sub.i.i398, %if.then.i.i399 ], [ %99, %if.end.i.i400 ]
  %100 = inttoptr i32 %retval.0.i.i401 to ptr
  %_refcount.i.i.i.i.i402 = getelementptr inbounds %struct.page, ptr %100, i32 0, i32 3
  %call.i.i.i.i.i.i.i403 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i402, i32 noundef 4) #8
  %101 = ptrtoint ptr %_refcount.i.i.i.i.i402 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %_refcount.i.i.i.i.i402, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.i.i.i.i404 = icmp eq i32 %102, 0
  br i1 %cmp.i.i.i.i404, label %if.then.i.i.i.i406, label %do.end5.i.i.i.i410, !prof !231

if.then.i.i.i.i406:                               ; preds = %_compound_head.exit.i405
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %100, ptr noundef nonnull @.str.57) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !236
  unreachable

do.end5.i.i.i.i410:                               ; preds = %_compound_head.exit.i405
  %call.i.i.i10.i.i.i.i407 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i402, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i402, i32 1, i32 3, i32 1) #8
  %103 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i402, ptr %_refcount.i.i.i.i.i402, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i402) #8, !srcloc !238
  %asmresult.i.i.i.i.i.i.i.i.i.i408 = extractvalue { i32, i32 } %103, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i408)
  %cmp.i.i.i.i.i.i.i409 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i408, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@test_find_delalloc, %if.then.i.i.i.i.i412)) #8
          to label %folio_put_testzero.exit.i.i413 [label %if.then.i.i.i.i.i412], !srcloc !235

if.then.i.i.i.i.i412:                             ; preds = %do.end5.i.i.i.i410
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i411 = zext i1 %cmp.i.i.i.i.i.i.i409 to i32
  call void @__page_ref_mod_and_test(ptr noundef %100, i32 noundef -1, i32 noundef %conv.i.i.i.i.i411) #8
  br label %folio_put_testzero.exit.i.i413

folio_put_testzero.exit.i.i413:                   ; preds = %if.then.i.i.i.i.i412, %do.end5.i.i.i.i410
  br i1 %cmp.i.i.i.i.i.i.i409, label %if.then.i4.i414, label %folio_put_testzero.exit.i.i413.put_page.exit415_crit_edge

folio_put_testzero.exit.i.i413.put_page.exit415_crit_edge: ; preds = %folio_put_testzero.exit.i.i413
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit415

if.then.i4.i414:                                  ; preds = %folio_put_testzero.exit.i.i413
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %100) #8
  br label %put_page.exit415

put_page.exit415:                                 ; preds = %if.then.i4.i414, %folio_put_testzero.exit.i.i413.put_page.exit415_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.60, i32 noundef 788) #8
  %104 = getelementptr inbounds %struct.page, ptr %call.i392, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %104, align 4
  %and.i.i416 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i416)
  %tobool.not.i.i417 = icmp eq i32 %and.i.i416, 0
  br i1 %tobool.not.i.i417, label %if.end.i.i420, label %if.then.i.i419, !prof !230

if.then.i.i419:                                   ; preds = %put_page.exit415
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i418 = add i32 %106, -1
  br label %_compound_head.exit.i422

if.end.i.i420:                                    ; preds = %put_page.exit415
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %call.i392 to i32
  br label %_compound_head.exit.i422

_compound_head.exit.i422:                         ; preds = %if.end.i.i420, %if.then.i.i419
  %retval.0.i.i421 = phi i32 [ %sub.i.i418, %if.then.i.i419 ], [ %107, %if.end.i.i420 ]
  %108 = inttoptr i32 %retval.0.i.i421 to ptr
  %109 = getelementptr inbounds %struct.page, ptr %108, i32 0, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %109, align 4
  %and.i.i.i.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !230

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i422
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %108, ptr noundef nonnull @.str.61) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !241
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i422
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %108, i32 noundef 4) #8
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %108, align 4
  %and.i.i4.i.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i423_crit_edge

folio_flags.exit.i.i.if.then.i423_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i423

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %108, i32 1, i32 3, i32 1) #8
  %114 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %108, ptr %108, i32 1, ptr elementtype(i32) %108) #8, !srcloc !242
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %114, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !243
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i423_crit_edge

folio_trylock.exit.i.if.then.i423_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i423

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i423:                                     ; preds = %folio_trylock.exit.i.if.then.i423_crit_edge, %folio_flags.exit.i.i.if.then.i423_crit_edge
  call void @__folio_lock(ptr noundef %108) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i423, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %115 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %add101, ptr %start, align 8
  %116 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %sub115, ptr %end, align 8
  %call190 = call zeroext i1 @find_lock_delalloc_range(ptr noundef nonnull %call2, ptr noundef nonnull %call.i392, ptr noundef nonnull %start, ptr noundef nonnull %end) #8
  br i1 %call190, label %if.end199, label %do.end196

do.end196:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 294) #11
  br label %if.then225

if.end199:                                        ; preds = %lock_page.exit
  %117 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %118, i64 %add101)
  %cmp200.not = icmp eq i64 %118, %add101
  br i1 %cmp200.not, label %if.end199.if.end214_crit_edge, label %land.lhs.true

if.end199.if.end214_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

land.lhs.true:                                    ; preds = %if.end199
  %119 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %120, i64 %sub115)
  %cmp204.not = icmp eq i64 %120, %sub115
  br i1 %cmp204.not, label %land.lhs.true.if.end214_crit_edge, label %do.end209

land.lhs.true.if.end214_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

do.end209:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2, i32 noundef 299, i64 noundef %add101, i64 noundef %sub115, i64 noundef %118, i64 noundef %120) #11
  br label %if.then225

if.end214:                                        ; preds = %land.lhs.true.if.end214_crit_edge, %if.end199.if.end214_crit_edge
  %121 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %end, align 8
  %call215 = call fastcc i32 @process_page_range(ptr noundef nonnull %call2, i64 noundef %118, i64 noundef %122, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end214.if.end226_crit_edge, label %do.end220

if.end214.if.end226_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226

do.end220:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.2, i32 noundef 304) #11
  br label %if.then225

if.then225:                                       ; preds = %do.end220, %do.end209, %do.end196, %do.end184, %do.end170, %do.end160, %do.end147, %do.end133, %do.end122, %do.end110, %do.end95, %do.end85, %do.end72, %do.end57, %do.end43, %do.end30
  %locked_page.2.ph = phi ptr [ %locked_page.1, %do.end30 ], [ %locked_page.1, %do.end43 ], [ null, %do.end57 ], [ %call.i369, %do.end72 ], [ %call.i369, %do.end85 ], [ %call.i369, %do.end95 ], [ null, %do.end110 ], [ %call.i392, %do.end122 ], [ %call.i392, %do.end133 ], [ %call.i392, %do.end147 ], [ %call.i392, %do.end160 ], [ %call.i392, %do.end170 ], [ %call.i392, %do.end184 ], [ %call.i392, %do.end196 ], [ %call.i392, %do.end209 ], [ %call.i392, %do.end220 ]
  call fastcc void @dump_extent_io_tree(ptr noundef %io_tree)
  br label %if.end226

if.end226:                                        ; preds = %if.then225, %if.end214.if.end226_crit_edge
  %locked_page.2451 = phi ptr [ %locked_page.2.ph, %if.then225 ], [ %call.i392, %if.end214.if.end226_crit_edge ]
  %ret.0449 = phi i32 [ -22, %if.then225 ], [ 0, %if.end214.if.end226_crit_edge ]
  %call.i424 = call i32 @clear_extent_bit(ptr noundef %io_tree, i64 noundef 0, i64 noundef 268435455, i32 noundef -1, i32 noundef 1, i32 noundef 0, ptr noundef null) #8
  br label %out

out:                                              ; preds = %if.end226, %do.end15
  %ret.1 = phi i32 [ -12, %do.end15 ], [ %ret.0449, %if.end226 ]
  %locked_page.3 = phi ptr [ %locked_page.0461, %do.end15 ], [ %locked_page.2451, %if.end226 ]
  %tobool229.not = icmp eq ptr %locked_page.3, null
  br i1 %tobool229.not, label %out.if.end231_crit_edge, label %if.then230

out.if.end231_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then230:                                       ; preds = %out
  %123 = getelementptr inbounds %struct.page, ptr %locked_page.3, i32 0, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %123, align 4
  %and.i.i425 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i425)
  %tobool.not.i.i426 = icmp eq i32 %and.i.i425, 0
  br i1 %tobool.not.i.i426, label %if.end.i.i429, label %if.then.i.i428, !prof !230

if.then.i.i428:                                   ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i427 = add i32 %125, -1
  br label %_compound_head.exit.i434

if.end.i.i429:                                    ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %locked_page.3 to i32
  br label %_compound_head.exit.i434

_compound_head.exit.i434:                         ; preds = %if.end.i.i429, %if.then.i.i428
  %retval.0.i.i430 = phi i32 [ %sub.i.i427, %if.then.i.i428 ], [ %126, %if.end.i.i429 ]
  %127 = inttoptr i32 %retval.0.i.i430 to ptr
  %_refcount.i.i.i.i.i431 = getelementptr inbounds %struct.page, ptr %127, i32 0, i32 3
  %call.i.i.i.i.i.i.i432 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i431, i32 noundef 4) #8
  %128 = ptrtoint ptr %_refcount.i.i.i.i.i431 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %_refcount.i.i.i.i.i431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp.i.i.i.i433 = icmp eq i32 %129, 0
  br i1 %cmp.i.i.i.i433, label %if.then.i.i.i.i435, label %do.end5.i.i.i.i439, !prof !231

if.then.i.i.i.i435:                               ; preds = %_compound_head.exit.i434
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %127, ptr noundef nonnull @.str.57) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !236
  unreachable

do.end5.i.i.i.i439:                               ; preds = %_compound_head.exit.i434
  %call.i.i.i10.i.i.i.i436 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i431, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i431, i32 1, i32 3, i32 1) #8
  %130 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i431, ptr %_refcount.i.i.i.i.i431, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i431) #8, !srcloc !238
  %asmresult.i.i.i.i.i.i.i.i.i.i437 = extractvalue { i32, i32 } %130, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i437)
  %cmp.i.i.i.i.i.i.i438 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i437, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@test_find_delalloc, %if.then.i.i.i.i.i441)) #8
          to label %folio_put_testzero.exit.i.i442 [label %if.then.i.i.i.i.i441], !srcloc !235

if.then.i.i.i.i.i441:                             ; preds = %do.end5.i.i.i.i439
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i440 = zext i1 %cmp.i.i.i.i.i.i.i438 to i32
  call void @__page_ref_mod_and_test(ptr noundef %127, i32 noundef -1, i32 noundef %conv.i.i.i.i.i440) #8
  br label %folio_put_testzero.exit.i.i442

folio_put_testzero.exit.i.i442:                   ; preds = %if.then.i.i.i.i.i441, %do.end5.i.i.i.i439
  br i1 %cmp.i.i.i.i.i.i.i438, label %if.then.i4.i443, label %folio_put_testzero.exit.i.i442.if.end231_crit_edge

folio_put_testzero.exit.i.i442.if.end231_crit_edge: ; preds = %folio_put_testzero.exit.i.i442
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then.i4.i443:                                  ; preds = %folio_put_testzero.exit.i.i442
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %127) #8
  br label %if.end231

if.end231:                                        ; preds = %if.then.i4.i443, %folio_put_testzero.exit.i.i442.if.end231_crit_edge, %out.if.end231_crit_edge
  %call233 = call fastcc i32 @process_page_range(ptr noundef nonnull %call2, i64 noundef 0, i64 noundef 268435455, i32 noundef 3)
  call void @iput(ptr noundef nonnull %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end231, %do.end5
  %retval.0 = phi i32 [ %ret.1, %if.end231 ], [ -12, %do.end5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_new_test_inode() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @extent_io_tree_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @find_lock_delalloc_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_page_range(ptr nocapture noundef readonly %inode, i64 noundef %start, i64 noundef %end, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  %pages = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pages) #8
  %0 = call ptr @memset(ptr %pages, i32 255, i32 64)
  %shr = lshr i64 %start, 12
  %conv = trunc i64 %shr to i32
  %shr1 = lshr i64 %end, 12
  %conv2 = trunc i64 %shr1 to i32
  %sub = sub i32 1, %conv
  %add = add i32 %sub, %conv2
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and10 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %and20 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br label %while.cond

while.cond:                                       ; preds = %for.end.while.cond_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %count.1.lcssa, %for.end.while.cond_crit_edge ]
  %loops.0 = phi i32 [ 0, %entry ], [ %inc30, %for.end.while.cond_crit_edge ]
  %nr_pages.0 = phi i32 [ %add, %entry ], [ %sub26, %for.end.while.cond_crit_edge ]
  %index.0 = phi i32 [ %conv, %entry ], [ %add27, %for.end.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages.0)
  %cmp.not = icmp eq i32 %nr_pages.0, 0
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %3 = call i32 @llvm.umin.i32(i32 %nr_pages.0, i32 16)
  %call = call i32 @find_get_pages_contig(ptr noundef %2, i32 noundef %index.0, i32 noundef %3, ptr noundef nonnull %pages) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6128 = icmp sgt i32 %call, 0
  br i1 %cmp6128, label %while.body.for.body_crit_edge, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %count.1132 = phi i32 [ %count.2, %for.inc.for.body_crit_edge ], [ %count.0, %while.body.for.body_crit_edge ]
  %i.0129 = phi i32 [ %inc25, %for.inc.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %i.0129
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !230

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, -1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %6, align 4
  %and.i16.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !231

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !230

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %14, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %15, %if.end.i20.i ]
  %16 = inttoptr i32 %retval.0.i21.i to ptr
  call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.55) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #8, !srcloc !244
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !230

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %14, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %5 to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %17, %if.end.i27.i ]
  %18 = inttoptr i32 %retval.0.i28.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and1.i.i = and i32 %20, 1
  %21 = xor i32 %and1.i.i, 1
  %spec.select = add i32 %21, %count.1132
  br label %if.end

if.end:                                           ; preds = %PageLocked.exit, %for.body.if.end_crit_edge
  %count.2 = phi i32 [ %count.1132, %for.body.if.end_crit_edge ], [ %spec.select, %PageLocked.exit ]
  br i1 %tobool11.not, label %if.end.if.end18_crit_edge, label %land.lhs.true12

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true12:                                  ; preds = %if.end
  %arrayidx13 = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %i.0129
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx13, align 4
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i59 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59)
  %tobool.not.i.i60 = icmp eq i32 %and.i.i59, 0
  br i1 %tobool.not.i.i60, label %if.end.i.i63, label %if.then.i.i62, !prof !230

if.then.i.i62:                                    ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i61 = add i32 %26, -1
  br label %_compound_head.exit.i68

if.end.i.i63:                                     ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %23 to i32
  br label %_compound_head.exit.i68

_compound_head.exit.i68:                          ; preds = %if.end.i.i63, %if.then.i.i62
  %retval.0.i.i64 = phi i32 [ %sub.i.i61, %if.then.i.i62 ], [ %27, %if.end.i.i63 ]
  %28 = inttoptr i32 %retval.0.i.i64 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i.not.i65 = icmp eq i32 %30, -1
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %24, align 4
  %and.i16.i66 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i66)
  %tobool.not.i17.i67 = icmp eq i32 %and.i16.i66, 0
  br i1 %cmp.i.not.i65, label %if.then.i69, label %do.end10.i75, !prof !231

if.then.i69:                                      ; preds = %_compound_head.exit.i68
  br i1 %tobool.not.i17.i67, label %if.end.i20.i72, label %if.then.i19.i71, !prof !230

if.then.i19.i71:                                  ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i70 = add i32 %32, -1
  br label %_compound_head.exit22.i74

if.end.i20.i72:                                   ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %23 to i32
  br label %_compound_head.exit22.i74

_compound_head.exit22.i74:                        ; preds = %if.end.i20.i72, %if.then.i19.i71
  %retval.0.i21.i73 = phi i32 [ %sub.i18.i70, %if.then.i19.i71 ], [ %33, %if.end.i20.i72 ]
  %34 = inttoptr i32 %retval.0.i21.i73 to ptr
  call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.55) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #8, !srcloc !244
  unreachable

do.end10.i75:                                     ; preds = %_compound_head.exit.i68
  br i1 %tobool.not.i17.i67, label %if.end.i27.i78, label %if.then.i26.i77, !prof !230

if.then.i26.i77:                                  ; preds = %do.end10.i75
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i76 = add i32 %32, -1
  br label %PageLocked.exit81

if.end.i27.i78:                                   ; preds = %do.end10.i75
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %23 to i32
  br label %PageLocked.exit81

PageLocked.exit81:                                ; preds = %if.end.i27.i78, %if.then.i26.i77
  %retval.0.i28.i79 = phi i32 [ %sub.i25.i76, %if.then.i26.i77 ], [ %35, %if.end.i27.i78 ]
  %36 = inttoptr i32 %retval.0.i28.i79 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and1.i.i80 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i80)
  %tobool15.not = icmp eq i32 %and1.i.i80, 0
  br i1 %tobool15.not, label %PageLocked.exit81.if.end18_crit_edge, label %if.then16

PageLocked.exit81.if.end18_crit_edge:             ; preds = %PageLocked.exit81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %PageLocked.exit81
  call void @__sanitizer_cov_trace_pc() #10
  call void @unlock_page(ptr noundef %23) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %PageLocked.exit81.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %arrayidx19 = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %i.0129
  %39 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx19, align 4
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i82 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82)
  %tobool.not.i.i83 = icmp eq i32 %and.i.i82, 0
  br i1 %tobool.not.i.i83, label %if.end.i.i86, label %if.then.i.i85, !prof !230

if.then.i.i85:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i84 = add i32 %43, -1
  br label %_compound_head.exit.i88

if.end.i.i86:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i88

_compound_head.exit.i88:                          ; preds = %if.end.i.i86, %if.then.i.i85
  %retval.0.i.i87 = phi i32 [ %sub.i.i84, %if.then.i.i85 ], [ %44, %if.end.i.i86 ]
  %45 = inttoptr i32 %retval.0.i.i87 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %46 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i.i.i = icmp eq i32 %47, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !231

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i88
  call void @__sanitizer_cov_trace_pc() #10
  %48 = inttoptr i32 %retval.0.i.i87 to ptr
  call void @dump_page(ptr noundef %48, ptr noundef nonnull @.str.57) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !236
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i88
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %49 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !238
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %49, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@process_page_range, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !235

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %45, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %45) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  br i1 %tobool21.not, label %put_page.exit.for.inc_crit_edge, label %if.then22

put_page.exit.for.inc_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then22:                                        ; preds = %put_page.exit
  %50 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx19, align 4
  %52 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %and.i.i89 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i89)
  %tobool.not.i.i90 = icmp eq i32 %and.i.i89, 0
  br i1 %tobool.not.i.i90, label %if.end.i.i93, label %if.then.i.i92, !prof !230

if.then.i.i92:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i91 = add i32 %54, -1
  br label %_compound_head.exit.i98

if.end.i.i93:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %51 to i32
  br label %_compound_head.exit.i98

_compound_head.exit.i98:                          ; preds = %if.end.i.i93, %if.then.i.i92
  %retval.0.i.i94 = phi i32 [ %sub.i.i91, %if.then.i.i92 ], [ %55, %if.end.i.i93 ]
  %56 = inttoptr i32 %retval.0.i.i94 to ptr
  %_refcount.i.i.i.i.i95 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 3
  %call.i.i.i.i.i.i.i96 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i95, i32 noundef 4) #8
  %57 = ptrtoint ptr %_refcount.i.i.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %_refcount.i.i.i.i.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i.i.i97 = icmp eq i32 %58, 0
  br i1 %cmp.i.i.i.i97, label %if.then.i.i.i.i99, label %do.end5.i.i.i.i103, !prof !231

if.then.i.i.i.i99:                                ; preds = %_compound_head.exit.i98
  call void @__sanitizer_cov_trace_pc() #10
  %59 = inttoptr i32 %retval.0.i.i94 to ptr
  call void @dump_page(ptr noundef %59, ptr noundef nonnull @.str.57) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !236
  unreachable

do.end5.i.i.i.i103:                               ; preds = %_compound_head.exit.i98
  %call.i.i.i10.i.i.i.i100 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i95, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !237
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i95, i32 1, i32 3, i32 1) #8
  %60 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i95, ptr %_refcount.i.i.i.i.i95, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i95) #8, !srcloc !238
  %asmresult.i.i.i.i.i.i.i.i.i.i101 = extractvalue { i32, i32 } %60, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i101)
  %cmp.i.i.i.i.i.i.i102 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i101, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@process_page_range, %if.then.i.i.i.i.i105)) #8
          to label %folio_put_testzero.exit.i.i106 [label %if.then.i.i.i.i.i105], !srcloc !235

if.then.i.i.i.i.i105:                             ; preds = %do.end5.i.i.i.i103
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i104 = zext i1 %cmp.i.i.i.i.i.i.i102 to i32
  call void @__page_ref_mod_and_test(ptr noundef %56, i32 noundef -1, i32 noundef %conv.i.i.i.i.i104) #8
  br label %folio_put_testzero.exit.i.i106

folio_put_testzero.exit.i.i106:                   ; preds = %if.then.i.i.i.i.i105, %do.end5.i.i.i.i103
  br i1 %cmp.i.i.i.i.i.i.i102, label %if.then.i4.i107, label %folio_put_testzero.exit.i.i106.for.inc_crit_edge

folio_put_testzero.exit.i.i106.for.inc_crit_edge: ; preds = %folio_put_testzero.exit.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i4.i107:                                  ; preds = %folio_put_testzero.exit.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %56) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i107, %folio_put_testzero.exit.i.i106.for.inc_crit_edge, %put_page.exit.for.inc_crit_edge
  %inc25 = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc25, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge
  %count.1.lcssa = phi i32 [ %count.0, %while.body.for.end_crit_edge ], [ %count.2, %for.inc.for.end_crit_edge ]
  %sub26 = sub i32 %nr_pages.0, %call
  %add27 = add i32 %call, %index.0
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 47, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  %inc30 = add nuw nsw i32 %loops.0, 1
  %exitcond150 = icmp eq i32 %inc30, 100001
  br i1 %exitcond150, label %do.end, label %for.end.while.cond_crit_edge

for.end.while.cond_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i64 noundef %start, i64 noundef %end, i32 noundef %sub26, i32 noundef %call) #11
  br label %while.end

while.end:                                        ; preds = %do.end, %while.cond.while.end_crit_edge
  %count.3 = phi i32 [ %count.1.lcssa, %do.end ], [ %count.0, %while.cond.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages) #8
  ret i32 %count.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_extent_io_tree(ptr noundef %tree) unnamed_addr #0 align 64 {
entry:
  %flags_str = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %flags_str) #8
  %0 = getelementptr inbounds i8, ptr %flags_str, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 255)
  %call = tail call ptr @rb_first(ptr noundef %tree) #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #11
  %tobool.not17 = icmp eq ptr %call, null
  br i1 %tobool.not17, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %extent_flag_to_str.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %node.018 = phi ptr [ %call11, %extent_flag_to_str.exit.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.018, i32 -16
  %2 = ptrtoint ptr %flags_str to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %flags_str, align 1
  %state1.i = getelementptr i8, ptr %node.018, i32 68
  %3 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state1.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.if.end.i_crit_edge, label %if.then.i

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %flags_str, i32 noundef 256, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.if.end.i_crit_edge
  %cur.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %while.body.if.end.i_crit_edge ]
  %5 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state1.i, align 4
  %and3.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then5.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6.i = getelementptr i8, ptr %flags_str, i32 %cur.0.i
  %sub7.i = sub i32 256, %cur.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.0.i)
  %cmp8.i = icmp eq i32 %cur.0.i, 0
  %cond9.i = select i1 %cmp8.i, ptr @.str.69, ptr @.str.70
  %call10.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6.i, i32 noundef %sub7.i, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond9.i) #8
  %add11.i = add i32 %call10.i, %cur.0.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then5.i, %if.end.i.if.end12.i_crit_edge
  %cur.1.i = phi i32 [ %add11.i, %if.then5.i ], [ %cur.0.i, %if.end.i.if.end12.i_crit_edge ]
  %7 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state1.i, align 4
  %and14.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.if.end23.i_crit_edge, label %if.then16.i

if.end12.i.if.end23.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr17.i = getelementptr i8, ptr %flags_str, i32 %cur.1.i
  %sub18.i = sub i32 256, %cur.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.1.i)
  %cmp19.i = icmp eq i32 %cur.1.i, 0
  %cond20.i = select i1 %cmp19.i, ptr @.str.69, ptr @.str.70
  %call21.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17.i, i32 noundef %sub18.i, ptr noundef nonnull @.str.72, ptr noundef nonnull %cond20.i) #8
  %add22.i = add i32 %call21.i, %cur.1.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end23.i_crit_edge
  %cur.2.i = phi i32 [ %add22.i, %if.then16.i ], [ %cur.1.i, %if.end12.i.if.end23.i_crit_edge ]
  %9 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state1.i, align 4
  %and25.i = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end23.i.if.end34.i_crit_edge, label %if.then27.i

if.end23.i.if.end34.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr28.i = getelementptr i8, ptr %flags_str, i32 %cur.2.i
  %sub29.i = sub i32 256, %cur.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.2.i)
  %cmp30.i = icmp eq i32 %cur.2.i, 0
  %cond31.i = select i1 %cmp30.i, ptr @.str.69, ptr @.str.70
  %call32.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28.i, i32 noundef %sub29.i, ptr noundef nonnull @.str.73, ptr noundef nonnull %cond31.i) #8
  %add33.i = add i32 %call32.i, %cur.2.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then27.i, %if.end23.i.if.end34.i_crit_edge
  %cur.3.i = phi i32 [ %add33.i, %if.then27.i ], [ %cur.2.i, %if.end23.i.if.end34.i_crit_edge ]
  %11 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state1.i, align 4
  %and36.i = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end34.i.if.end45.i_crit_edge, label %if.then38.i

if.end34.i.if.end45.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr39.i = getelementptr i8, ptr %flags_str, i32 %cur.3.i
  %sub40.i = sub i32 256, %cur.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.3.i)
  %cmp41.i = icmp eq i32 %cur.3.i, 0
  %cond42.i = select i1 %cmp41.i, ptr @.str.69, ptr @.str.70
  %call43.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39.i, i32 noundef %sub40.i, ptr noundef nonnull @.str.74, ptr noundef nonnull %cond42.i) #8
  %add44.i = add i32 %call43.i, %cur.3.i
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then38.i, %if.end34.i.if.end45.i_crit_edge
  %cur.4.i = phi i32 [ %add44.i, %if.then38.i ], [ %cur.3.i, %if.end34.i.if.end45.i_crit_edge ]
  %13 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state1.i, align 4
  %and47.i = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end45.i.if.end56.i_crit_edge, label %if.then49.i

if.end45.i.if.end56.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

if.then49.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr50.i = getelementptr i8, ptr %flags_str, i32 %cur.4.i
  %sub51.i = sub i32 256, %cur.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.4.i)
  %cmp52.i = icmp eq i32 %cur.4.i, 0
  %cond53.i = select i1 %cmp52.i, ptr @.str.69, ptr @.str.70
  %call54.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50.i, i32 noundef %sub51.i, ptr noundef nonnull @.str.75, ptr noundef nonnull %cond53.i) #8
  %add55.i = add i32 %call54.i, %cur.4.i
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then49.i, %if.end45.i.if.end56.i_crit_edge
  %cur.5.i = phi i32 [ %add55.i, %if.then49.i ], [ %cur.4.i, %if.end45.i.if.end56.i_crit_edge ]
  %15 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state1.i, align 4
  %and58.i = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end56.i.if.end67.i_crit_edge, label %if.then60.i

if.end56.i.if.end67.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

if.then60.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr61.i = getelementptr i8, ptr %flags_str, i32 %cur.5.i
  %sub62.i = sub i32 256, %cur.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.5.i)
  %cmp63.i = icmp eq i32 %cur.5.i, 0
  %cond64.i = select i1 %cmp63.i, ptr @.str.69, ptr @.str.70
  %call65.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr61.i, i32 noundef %sub62.i, ptr noundef nonnull @.str.76, ptr noundef nonnull %cond64.i) #8
  %add66.i = add i32 %call65.i, %cur.5.i
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then60.i, %if.end56.i.if.end67.i_crit_edge
  %cur.6.i = phi i32 [ %add66.i, %if.then60.i ], [ %cur.5.i, %if.end56.i.if.end67.i_crit_edge ]
  %17 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state1.i, align 4
  %and69.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.end67.i.if.end78.i_crit_edge, label %if.then71.i

if.end67.i.if.end78.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i

if.then71.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr72.i = getelementptr i8, ptr %flags_str, i32 %cur.6.i
  %sub73.i = sub i32 256, %cur.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.6.i)
  %cmp74.i = icmp eq i32 %cur.6.i, 0
  %cond75.i = select i1 %cmp74.i, ptr @.str.69, ptr @.str.70
  %call76.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr72.i, i32 noundef %sub73.i, ptr noundef nonnull @.str.77, ptr noundef nonnull %cond75.i) #8
  %add77.i = add i32 %call76.i, %cur.6.i
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then71.i, %if.end67.i.if.end78.i_crit_edge
  %cur.7.i = phi i32 [ %add77.i, %if.then71.i ], [ %cur.6.i, %if.end67.i.if.end78.i_crit_edge ]
  %19 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state1.i, align 4
  %and80.i = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end78.i.if.end89.i_crit_edge, label %if.then82.i

if.end78.i.if.end89.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then82.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr83.i = getelementptr i8, ptr %flags_str, i32 %cur.7.i
  %sub84.i = sub i32 256, %cur.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.7.i)
  %cmp85.i = icmp eq i32 %cur.7.i, 0
  %cond86.i = select i1 %cmp85.i, ptr @.str.69, ptr @.str.70
  %call87.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr83.i, i32 noundef %sub84.i, ptr noundef nonnull @.str.78, ptr noundef nonnull %cond86.i) #8
  %add88.i = add i32 %call87.i, %cur.7.i
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then82.i, %if.end78.i.if.end89.i_crit_edge
  %cur.8.i = phi i32 [ %add88.i, %if.then82.i ], [ %cur.7.i, %if.end78.i.if.end89.i_crit_edge ]
  %21 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state1.i, align 4
  %and91.i = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %if.end89.i.if.end100.i_crit_edge, label %if.then93.i

if.end89.i.if.end100.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100.i

if.then93.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr94.i = getelementptr i8, ptr %flags_str, i32 %cur.8.i
  %sub95.i = sub i32 256, %cur.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.8.i)
  %cmp96.i = icmp eq i32 %cur.8.i, 0
  %cond97.i = select i1 %cmp96.i, ptr @.str.69, ptr @.str.70
  %call98.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr94.i, i32 noundef %sub95.i, ptr noundef nonnull @.str.79, ptr noundef nonnull %cond97.i) #8
  %add99.i = add i32 %call98.i, %cur.8.i
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then93.i, %if.end89.i.if.end100.i_crit_edge
  %cur.9.i = phi i32 [ %add99.i, %if.then93.i ], [ %cur.8.i, %if.end89.i.if.end100.i_crit_edge ]
  %23 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state1.i, align 4
  %and102.i = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %if.end100.i.if.end111.i_crit_edge, label %if.then104.i

if.end100.i.if.end111.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111.i

if.then104.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr105.i = getelementptr i8, ptr %flags_str, i32 %cur.9.i
  %sub106.i = sub i32 256, %cur.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.9.i)
  %cmp107.i = icmp eq i32 %cur.9.i, 0
  %cond108.i = select i1 %cmp107.i, ptr @.str.69, ptr @.str.70
  %call109.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr105.i, i32 noundef %sub106.i, ptr noundef nonnull @.str.80, ptr noundef nonnull %cond108.i) #8
  %add110.i = add i32 %call109.i, %cur.9.i
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then104.i, %if.end100.i.if.end111.i_crit_edge
  %cur.10.i = phi i32 [ %add110.i, %if.then104.i ], [ %cur.9.i, %if.end100.i.if.end111.i_crit_edge ]
  %25 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state1.i, align 4
  %and113.i = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %if.end111.i.if.end122.i_crit_edge, label %if.then115.i

if.end111.i.if.end122.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122.i

if.then115.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr116.i = getelementptr i8, ptr %flags_str, i32 %cur.10.i
  %sub117.i = sub i32 256, %cur.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.10.i)
  %cmp118.i = icmp eq i32 %cur.10.i, 0
  %cond119.i = select i1 %cmp118.i, ptr @.str.69, ptr @.str.70
  %call120.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr116.i, i32 noundef %sub117.i, ptr noundef nonnull @.str.81, ptr noundef nonnull %cond119.i) #8
  %add121.i = add i32 %call120.i, %cur.10.i
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then115.i, %if.end111.i.if.end122.i_crit_edge
  %cur.11.i = phi i32 [ %add121.i, %if.then115.i ], [ %cur.10.i, %if.end111.i.if.end122.i_crit_edge ]
  %27 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state1.i, align 4
  %and124.i = and i32 %28, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.not.i = icmp eq i32 %and124.i, 0
  br i1 %tobool125.not.i, label %if.end122.i.if.end133.i_crit_edge, label %if.then126.i

if.end122.i.if.end133.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133.i

if.then126.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr127.i = getelementptr i8, ptr %flags_str, i32 %cur.11.i
  %sub128.i = sub i32 256, %cur.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.11.i)
  %cmp129.i = icmp eq i32 %cur.11.i, 0
  %cond130.i = select i1 %cmp129.i, ptr @.str.69, ptr @.str.70
  %call131.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127.i, i32 noundef %sub128.i, ptr noundef nonnull @.str.82, ptr noundef nonnull %cond130.i) #8
  %add132.i = add i32 %call131.i, %cur.11.i
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then126.i, %if.end122.i.if.end133.i_crit_edge
  %cur.12.i = phi i32 [ %add132.i, %if.then126.i ], [ %cur.11.i, %if.end122.i.if.end133.i_crit_edge ]
  %29 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state1.i, align 4
  %and135.i = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  br i1 %tobool136.not.i, label %if.end133.i.extent_flag_to_str.exit_crit_edge, label %if.then137.i

if.end133.i.extent_flag_to_str.exit_crit_edge:    ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %extent_flag_to_str.exit

if.then137.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr138.i = getelementptr i8, ptr %flags_str, i32 %cur.12.i
  %sub139.i = sub i32 256, %cur.12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.12.i)
  %cmp140.i = icmp eq i32 %cur.12.i, 0
  %cond141.i = select i1 %cmp140.i, ptr @.str.69, ptr @.str.70
  %call142.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr138.i, i32 noundef %sub139.i, ptr noundef nonnull @.str.83, ptr noundef nonnull %cond141.i) #8
  br label %extent_flag_to_str.exit

extent_flag_to_str.exit:                          ; preds = %if.then137.i, %if.end133.i.extent_flag_to_str.exit_crit_edge
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr, align 8
  %end = getelementptr i8, ptr %node.018, i32 -8
  %33 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %end, align 8
  %add = sub i64 1, %32
  %sub = add i64 %add, %34
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i64 noundef %32, i64 noundef %sub, ptr noundef nonnull %flags_str) #11
  %call11 = call ptr @rb_next(ptr noundef nonnull %node.018) #8
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %extent_flag_to_str.exit.while.end_crit_edge, label %extent_flag_to_str.exit.while.body_crit_edge

extent_flag_to_str.exit.while.body_crit_edge:     ; preds = %extent_flag_to_str.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

extent_flag_to_str.exit.while.end_crit_edge:      ; preds = %extent_flag_to_str.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %extent_flag_to_str.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %flags_str) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_pages_contig(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @find_first_clear_extent_bit(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_fs_info(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_dummy_extent_buffer(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__test_eb_bitmaps(ptr noundef %bitmap, ptr noundef %eb, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %bitmap, i32 0, i32 %len)
  tail call void @memzero_extent_buffer(ptr noundef %eb, i32 noundef 0, i32 noundef %len) #8
  %call = tail call i32 @memcmp_extent_buffer(ptr noundef %eb, ptr noundef %bitmap, i32 noundef 0, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.2, i32 noundef 356) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %len, 3
  tail call void @__bitmap_set(ptr noundef %bitmap, i32 noundef 0, i32 noundef %mul) #8
  tail call void @extent_buffer_bitmap_set(ptr noundef %eb, i32 noundef 0, i32 noundef 0, i32 noundef %mul) #8
  %call3 = tail call fastcc i32 @check_eb_bitmap(ptr noundef %bitmap, ptr noundef %eb, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.else11.i144, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.2, i32 noundef 364) #11
  br label %cleanup

if.else11.i144:                                   ; preds = %if.end
  tail call void @__bitmap_clear(ptr noundef %bitmap, i32 noundef 0, i32 noundef %mul) #8
  tail call void @extent_buffer_bitmap_clear(ptr noundef %eb, i32 noundef 0, i32 noundef 0, i32 noundef %mul) #8
  %call13 = tail call fastcc i32 @check_eb_bitmap(ptr noundef %bitmap, ptr noundef %eb, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.else11.i144
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.2, i32 noundef 372) #11
  br label %cleanup

if.end21:                                         ; preds = %if.else11.i144
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp22 = icmp ugt i32 %len, 4096
  br i1 %cmp22, label %if.then23, label %if.end21.if.else11.i159_crit_edge

if.end21.if.else11.i159_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else11.i159

if.then23:                                        ; preds = %if.end21
  tail call void @__bitmap_set(ptr noundef %bitmap, i32 noundef 32752, i32 noundef 32) #8
  tail call void @extent_buffer_bitmap_set(ptr noundef %eb, i32 noundef 4094, i32 noundef 0, i32 noundef 32) #8
  %call24 = tail call fastcc i32 @check_eb_bitmap(ptr noundef %bitmap, ptr noundef %eb, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else11.i151, label %do.end29

do.end29:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.2, i32 noundef 385) #11
  br label %cleanup

if.else11.i151:                                   ; preds = %if.then23
  tail call void @__bitmap_set(ptr noundef %bitmap, i32 noundef 0, i32 noundef %mul) #8
  tail call void @__bitmap_clear(ptr noundef %bitmap, i32 noundef 32752, i32 noundef 32) #8
  tail call void @extent_buffer_bitmap_set(ptr noundef %eb, i32 noundef 0, i32 noundef 0, i32 noundef %mul) #8
  tail call void @extent_buffer_bitmap_clear(ptr noundef %eb, i32 noundef 4094, i32 noundef 0, i32 noundef 32) #8
  %call35 = tail call fastcc i32 @check_eb_bitmap(ptr noundef %bitmap, ptr noundef %eb, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else11.i151.if.else11.i159_crit_edge, label %do.end40

if.else11.i151.if.else11.i159_crit_edge:          ; preds = %if.else11.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else11.i159

do.end40:                                         ; preds = %if.else11.i151
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.2, i32 noundef 398) #11
  br label %cleanup

if.else11.i159:                                   ; preds = %if.else11.i151.if.else11.i159_crit_edge, %if.end21.if.else11.i159_crit_edge
  tail call void @__bitmap_clear(ptr noundef %bitmap, i32 noundef 0, i32 noundef %mul) #8
  tail call void @extent_buffer_bitmap_clear(ptr noundef %eb, i32 noundef 0, i32 noundef 0, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mul)
  %cmp48163.not = icmp ult i32 %mul, 32
  br i1 %cmp48163.not, label %if.else11.i159.for.end65_crit_edge, label %for.body.preheader

if.else11.i159.for.end65_crit_edge:               ; preds = %if.else11.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

for.body.preheader:                               ; preds = %if.else11.i159
  %div138 = lshr i32 %mul, 5
  br label %for.body

for.body:                                         ; preds = %for.inc63.for.body_crit_edge, %for.body.preheader
  %i.0165 = phi i32 [ %inc64, %for.inc63.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %x.0164 = phi i32 [ %add, %for.inc63.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul49 = mul i32 %x.0164, 1664525
  %add = add i32 %mul49, 1013904223
  %mul58 = shl i32 %i.0165, 5
  br label %for.body54

for.body54:                                       ; preds = %for.inc.for.body54_crit_edge, %for.body
  %j.0161 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body54_crit_edge ]
  %shl = shl nuw i32 1, %j.0161
  %and55 = and i32 %shl, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %for.body54.for.inc_crit_edge, label %if.then57

for.body54.for.inc_crit_edge:                     ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then57:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  %add59 = add nuw nsw i32 %j.0161, %mul58
  %rem.i.i = and i32 %add59, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %add59, 5
  %add.ptr.i.i = getelementptr i32, ptr %bitmap, i32 %div2.i.i
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %2, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  tail call void @extent_buffer_bitmap_set(ptr noundef %eb, i32 noundef 0, i32 noundef %add59, i32 noundef 1) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then57, %for.body54.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0161, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc63, label %for.inc.for.body54_crit_edge

for.inc.for.body54_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.inc63:                                        ; preds = %for.inc
  %inc64 = add nuw nsw i32 %i.0165, 1
  %exitcond166.not = icmp eq i32 %inc64, %div138
  br i1 %exitcond166.not, label %for.inc63.for.end65_crit_edge, label %for.inc63.for.body_crit_edge

for.inc63.for.body_crit_edge:                     ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc63.for.end65_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

for.end65:                                        ; preds = %for.inc63.for.end65_crit_edge, %if.else11.i159.for.end65_crit_edge
  %call66 = tail call fastcc i32 @check_eb_bitmap(ptr noundef %bitmap, ptr noundef %eb, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %for.end65.cleanup_crit_edge, label %do.end71

for.end65.cleanup_crit_edge:                      ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end71:                                         ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #10
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.2, i32 noundef 422) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %for.end65.cleanup_crit_edge, %do.end40, %do.end29, %do.end18, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call3, %do.end7 ], [ %call13, %do.end18 ], [ %call24, %do.end29 ], [ %call35, %do.end40 ], [ %call66, %do.end71 ], [ 0, %for.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_fs_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @memzero_extent_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @extent_buffer_bitmap_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_eb_bitmap(ptr noundef %bitmap, ptr noundef %eb, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp36.not = icmp eq i32 %mul, 0
  br i1 %cmp36.not, label %entry.cleanup25_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

for.cond:                                         ; preds = %if.end
  %inc = add nuw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %for.cond.cleanup25_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup25_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %div3.i = lshr i32 %i.037, 5
  %arrayidx.i = getelementptr i32, ptr %bitmap, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.037, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %call2 = tail call i32 @extent_buffer_test_bit(ptr noundef %eb, i32 noundef 0, i32 noundef %i.037) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3 = icmp eq i32 %call2, 0
  %cmp8.not = xor i1 %tobool3, %tobool
  br i1 %cmp8.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.2, i32 noundef 332) #11
  br label %cleanup25

if.end:                                           ; preds = %for.body
  %div34 = lshr i32 %i.037, 3
  %rem = and i32 %i.037, 7
  %call10 = tail call i32 @extent_buffer_test_bit(ptr noundef %eb, i32 noundef %div34, i32 noundef %rem) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11 = icmp eq i32 %call10, 0
  %cmp16.not = xor i1 %tobool, %tobool11
  br i1 %cmp16.not, label %for.cond, label %do.end20

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.2, i32 noundef 339) #11
  br label %cleanup25

cleanup25:                                        ; preds = %do.end20, %do.end, %for.cond.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.2 = phi i32 [ -22, %do.end20 ], [ -22, %do.end ], [ 0, %entry.cleanup25_crit_edge ], [ 0, %for.cond.cleanup25_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @extent_buffer_bitmap_clear(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extent_buffer_test_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !83, !85, !87, !88, !89, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !178, !179, !180, !182, !183, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 598, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @btrfs_test_extent_io._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @btrfs_test_extent_io._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 121, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @test_find_delalloc._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @test_find_delalloc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 125, i32 3}
!13 = !{ptr @test_find_delalloc._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @test_find_delalloc._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 144, i32 4}
!17 = !{ptr @test_find_delalloc._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @test_find_delalloc._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 167, i32 3}
!21 = !{ptr @test_find_delalloc._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @test_find_delalloc._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 171, i32 3}
!25 = !{ptr @test_find_delalloc._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @test_find_delalloc._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 189, i32 3}
!29 = !{ptr @test_find_delalloc._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @test_find_delalloc._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 198, i32 3}
!33 = !{ptr @test_find_delalloc._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @test_find_delalloc._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 202, i32 3}
!37 = !{ptr @test_find_delalloc._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @test_find_delalloc._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 208, i32 3}
!41 = !{ptr @test_find_delalloc._entry.26, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @test_find_delalloc._entry_ptr.28, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @test_find_delalloc._entry.29, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 224, i32 3}
!45 = !{ptr @test_find_delalloc._entry_ptr.30, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.32, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 232, i32 3}
!48 = !{ptr @test_find_delalloc._entry.31, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @test_find_delalloc._entry_ptr.33, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.35, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 236, i32 3}
!52 = !{ptr @test_find_delalloc._entry.34, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @test_find_delalloc._entry_ptr.36, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.38, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 253, i32 3}
!56 = !{ptr @test_find_delalloc._entry.37, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @test_find_delalloc._entry_ptr.39, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.41, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 257, i32 3}
!60 = !{ptr @test_find_delalloc._entry.40, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @test_find_delalloc._entry_ptr.42, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.44, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 263, i32 3}
!64 = !{ptr @test_find_delalloc._entry.43, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @test_find_delalloc._entry_ptr.45, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.47, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 275, i32 3}
!68 = !{ptr @test_find_delalloc._entry.46, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @test_find_delalloc._entry_ptr.48, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @test_find_delalloc._entry.49, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 294, i32 3}
!72 = !{ptr @test_find_delalloc._entry_ptr.50, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @test_find_delalloc._entry.51, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 298, i32 3}
!75 = !{ptr @test_find_delalloc._entry_ptr.52, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @test_find_delalloc._entry.53, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 304, i32 3}
!78 = !{ptr @test_find_delalloc._entry_ptr.54, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.55, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!81 = !{ptr @.str.56, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!83 = !{ptr @.str.57, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/mm.h", i32 717, i32 2}
!85 = !{ptr @.str.58, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 50, i32 4}
!87 = !{ptr @.str.59, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @process_page_range._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @process_page_range._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.60, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!92 = !{ptr @.str.61, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!96 = !{ptr @.str.63, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 95, i32 2}
!98 = !{ptr @.str.64, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @dump_extent_io_tree._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @dump_extent_io_tree._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.66, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 101, i32 3}
!103 = !{ptr @dump_extent_io_tree._entry.65, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @dump_extent_io_tree._entry_ptr.67, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.68, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 73, i32 2}
!107 = !{ptr @.str.69, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.70, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.71, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 74, i32 2}
!111 = !{ptr @.str.72, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 75, i32 2}
!113 = !{ptr @.str.73, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 76, i32 2}
!115 = !{ptr @.str.74, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 77, i32 2}
!117 = !{ptr @.str.75, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 78, i32 2}
!119 = !{ptr @.str.76, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 79, i32 2}
!121 = !{ptr @.str.77, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 80, i32 2}
!123 = !{ptr @.str.78, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 81, i32 2}
!125 = !{ptr @.str.79, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 82, i32 2}
!127 = !{ptr @.str.80, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 83, i32 2}
!129 = !{ptr @.str.81, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 84, i32 2}
!131 = !{ptr @.str.82, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 85, i32 2}
!133 = !{ptr @.str.83, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 86, i32 2}
!135 = !{ptr @.str.84, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 489, i32 2}
!137 = !{ptr @.str.85, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @test_find_first_clear_extent_bit._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @test_find_first_clear_extent_bit._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.87, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 496, i32 3}
!142 = !{ptr @test_find_first_clear_extent_bit._entry.86, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @test_find_first_clear_extent_bit._entry_ptr.88, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.90, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 512, i32 3}
!146 = !{ptr @test_find_first_clear_extent_bit._entry.89, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @test_find_first_clear_extent_bit._entry_ptr.91, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.93, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 528, i32 3}
!150 = !{ptr @test_find_first_clear_extent_bit._entry.92, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @test_find_first_clear_extent_bit._entry_ptr.94, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.96, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 541, i32 3}
!154 = !{ptr @test_find_first_clear_extent_bit._entry.95, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @test_find_first_clear_extent_bit._entry_ptr.97, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.99, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 555, i32 3}
!158 = !{ptr @test_find_first_clear_extent_bit._entry.98, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @test_find_first_clear_extent_bit._entry_ptr.100, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.102, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 568, i32 3}
!162 = !{ptr @test_find_first_clear_extent_bit._entry.101, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @test_find_first_clear_extent_bit._entry_ptr.103, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.105, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 579, i32 3}
!166 = !{ptr @test_find_first_clear_extent_bit._entry.104, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @test_find_first_clear_extent_bit._entry_ptr.106, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.107, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 436, i32 2}
!170 = !{ptr @.str.108, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @test_eb_bitmaps._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @test_eb_bitmaps._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @test_eb_bitmaps._entry.109, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 440, i32 3}
!175 = !{ptr @test_eb_bitmaps._entry_ptr.110, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.112, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 446, i32 3}
!178 = !{ptr @test_eb_bitmaps._entry.111, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @test_eb_bitmaps._entry_ptr.113, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @test_eb_bitmaps._entry.114, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 453, i32 3}
!182 = !{ptr @test_eb_bitmaps._entry_ptr.115, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @test_eb_bitmaps._entry.116, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 470, i32 3}
!185 = !{ptr @test_eb_bitmaps._entry_ptr.117, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.118, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 356, i32 3}
!188 = !{ptr @.str.119, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @__test_eb_bitmaps._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @__test_eb_bitmaps._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.121, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 364, i32 3}
!193 = !{ptr @__test_eb_bitmaps._entry.120, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @__test_eb_bitmaps._entry_ptr.122, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.124, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 372, i32 3}
!197 = !{ptr @__test_eb_bitmaps._entry.123, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @__test_eb_bitmaps._entry_ptr.125, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.127, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 385, i32 4}
!201 = !{ptr @__test_eb_bitmaps._entry.126, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @__test_eb_bitmaps._entry_ptr.128, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.130, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 398, i32 4}
!205 = !{ptr @__test_eb_bitmaps._entry.129, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @__test_eb_bitmaps._entry_ptr.131, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.133, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 422, i32 3}
!209 = !{ptr @__test_eb_bitmaps._entry.132, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @__test_eb_bitmaps._entry_ptr.134, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.135, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 332, i32 4}
!213 = !{ptr @.str.136, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @check_eb_bitmap._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @check_eb_bitmap._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.138, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/btrfs/tests/extent-io-tests.c", i32 339, i32 4}
!218 = !{ptr @check_eb_bitmap._entry.137, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @check_eb_bitmap._entry_ptr.139, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{i32 1, !"wchar_size", i32 2}
!221 = !{i32 1, !"min_enum_size", i32 4}
!222 = !{i32 8, !"branch-target-enforcement", i32 0}
!223 = !{i32 8, !"sign-return-address", i32 0}
!224 = !{i32 8, !"sign-return-address-all", i32 0}
!225 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!226 = !{i32 7, !"uwtable", i32 1}
!227 = !{i32 7, !"frame-pointer", i32 2}
!228 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!229 = !{!"auto-init"}
!230 = !{!"branch_weights", i32 2000, i32 1}
!231 = !{!"branch_weights", i32 1, i32 2000}
!232 = !{i64 2150392795, i64 2150392968, i64 2150392983, i64 2150393035, i64 2150393094, i64 2150393118, i64 2150393159, i64 2150393180, i64 2150393208, i64 2150393240}
!233 = !{i64 2153187868, i64 2153188352, i64 2153187905, i64 2153187961, i64 2153187995, i64 2153188019, i64 2153188060, i64 2153188081, i64 2153188109, i64 2153188143}
!234 = !{i64 2148717899, i64 2148717925, i64 2148717954, i64 2148717988, i64 2148718019, i64 2148718042}
!235 = !{i64 2148318576, i64 2148318581, i64 2148318594, i64 2148318638, i64 2148318672, i64 2148318693}
!236 = !{i64 2153163895, i64 2153164378, i64 2153163932, i64 2153163988, i64 2153164022, i64 2153164046, i64 2153164087, i64 2153164108, i64 2153164136, i64 2153164170}
!237 = !{i64 2148806375}
!238 = !{i64 2148721084, i64 2148721116, i64 2148721145, i64 2148721179, i64 2148721210, i64 2148721233}
!239 = !{i64 2148806604}
!240 = !{i64 2150398087, i64 2150398260, i64 2150398275, i64 2150398327, i64 2150398386, i64 2150398410, i64 2150398451, i64 2150398472, i64 2150398500, i64 2150398532}
!241 = !{i64 2150272897, i64 2150273388, i64 2150272934, i64 2150272990, i64 2150273024, i64 2150273048, i64 2150273089, i64 2150273110, i64 2150273138, i64 2150273172}
!242 = !{i64 2148726757, i64 2148726789, i64 2148726818, i64 2148726852, i64 2148726883, i64 2148726906}
!243 = !{i64 2148815862}
!244 = !{i64 2150284391, i64 2150284882, i64 2150284428, i64 2150284484, i64 2150284518, i64 2150284542, i64 2150284583, i64 2150284604, i64 2150284632, i64 2150284666}
