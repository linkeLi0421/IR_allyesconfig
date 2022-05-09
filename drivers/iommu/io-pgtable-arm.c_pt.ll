; ModuleID = '/llk/IR_all_yes/drivers/iommu/io-pgtable-arm.c_pt.bc'
source_filename = "../drivers/iommu/io-pgtable-arm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.io_pgtable_init_fns = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iommu_flush_ops = type { ptr, ptr, ptr }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.anon.77 }
%struct.anon.77 = type { [4 x i64], i32 }
%struct.arm_lpae_io_pgtable = type { %struct.io_pgtable, i32, i32, i32, ptr }
%struct.io_pgtable = type { i32, ptr, %struct.io_pgtable_cfg, %struct.io_pgtable_ops }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.iommu_iotlb_gather = type { i32, i32, i32, %struct.list_head, i8 }

@io_pgtable_arm_64_lpae_s1_init_fns = dso_local global { %struct.io_pgtable_init_fns, [24 x i8] } { %struct.io_pgtable_init_fns { ptr @arm_64_lpae_alloc_pgtable_s1, ptr @arm_lpae_free_pgtable }, [24 x i8] zeroinitializer }, align 32
@io_pgtable_arm_64_lpae_s2_init_fns = dso_local global { %struct.io_pgtable_init_fns, [24 x i8] } { %struct.io_pgtable_init_fns { ptr @arm_64_lpae_alloc_pgtable_s2, ptr @arm_lpae_free_pgtable }, [24 x i8] zeroinitializer }, align 32
@io_pgtable_arm_32_lpae_s1_init_fns = dso_local global { %struct.io_pgtable_init_fns, [24 x i8] } { %struct.io_pgtable_init_fns { ptr @arm_32_lpae_alloc_pgtable_s1, ptr @arm_lpae_free_pgtable }, [24 x i8] zeroinitializer }, align 32
@io_pgtable_arm_32_lpae_s2_init_fns = dso_local global { %struct.io_pgtable_init_fns, [24 x i8] } { %struct.io_pgtable_init_fns { ptr @arm_32_lpae_alloc_pgtable_s2, ptr @arm_lpae_free_pgtable }, [24 x i8] zeroinitializer }, align 32
@io_pgtable_arm_mali_lpae_init_fns = dso_local global { %struct.io_pgtable_init_fns, [24 x i8] } { %struct.io_pgtable_init_fns { ptr @arm_mali_lpae_alloc_pgtable, ptr @arm_lpae_free_pgtable }, [24 x i8] zeroinitializer }, align 32
@io_pgtable_apple_dart_init_fns = dso_local global { %struct.io_pgtable_init_fns, [24 x i8] } { %struct.io_pgtable_init_fns { ptr @apple_dart_alloc_pgtable, ptr @arm_lpae_free_pgtable }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_io_pgtable_arm__245_1368_arm_lpae_do_selftests4 = internal global ptr @arm_lpae_do_selftests, section ".initcall4.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iommu/io-pgtable-arm.c\00", [33 x i8] zeroinitializer }, align 32
@selftest_running = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__arm_lpae_alloc_pages._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 225, ptr @.str.3, ptr @.str.4 }, align 1
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Cannot accommodate DMA translation for IOMMU page tables\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__arm_lpae_alloc_pages\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__arm_lpae_alloc_pages._entry_ptr = internal global ptr @__arm_lpae_alloc_pages._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_lpae_do_selftests.pgsize = internal unnamed_addr constant [3 x i32] [i32 1075843072, i32 33570816, i32 536936448], section ".init.rodata", align 4
@arm_lpae_do_selftests.ias = internal unnamed_addr constant [6 x i32] [i32 32, i32 36, i32 40, i32 42, i32 44, i32 48], section ".init.rodata", align 4
@dummy_tlb_ops = internal constant %struct.iommu_flush_ops { ptr @dummy_tlb_flush_all, ptr @dummy_tlb_flush, ptr @dummy_tlb_add_page }, section ".init.rodata", align 4
@__const.arm_lpae_do_selftests.cfg = private unnamed_addr constant { i32, i32, i32, i32, i8, [3 x i8], ptr, ptr, [4 x i8], { { [4 x i64], i32, [4 x i8] } } } { i32 0, i32 0, i32 0, i32 48, i8 1, [3 x i8] zeroinitializer, ptr @dummy_tlb_ops, ptr null, [4 x i8] zeroinitializer, { { [4 x i64], i32, [4 x i8] } } zeroinitializer }, align 8
@arm_lpae_do_selftests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016arm-lpae io-pgtable: selftest: pgsize_bitmap 0x%08lx, IAS %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arm_lpae_do_selftests\00", [42 x i8] zeroinitializer }, align 32
@arm_lpae_do_selftests._entry_ptr = internal global ptr @arm_lpae_do_selftests._entry, section ".printk_index", align 4
@arm_lpae_do_selftests._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 1365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016arm-lpae io-pgtable: selftest: completed with %d PASS %d FAIL\0A\00", [63 x i8] zeroinitializer }, align 32
@arm_lpae_do_selftests._entry_ptr.12 = internal global ptr @arm_lpae_do_selftests._entry.10, section ".printk_index", align 4
@cfg_cookie = internal unnamed_addr global ptr null, section ".init.data", align 4
@arm_lpae_run_tests.fmts = internal unnamed_addr constant [2 x i32] [i32 2, i32 3], section ".init.rodata", align 4
@arm_lpae_run_tests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 1252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013arm-lpae io-pgtable: selftest: failed to allocate io pgtable ops\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm_lpae_run_tests\00", [45 x i8] zeroinitializer }, align 32
@arm_lpae_run_tests._entry_ptr = internal global ptr @arm_lpae_run_tests._entry, section ".printk_index", align 4
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"selftest: test failed for fmt idx %d\0A\00", [58 x i8] zeroinitializer }, align 32
@arm_lpae_dump_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013arm-lpae io-pgtable: cfg: pgsize_bitmap 0x%lx, ias %u-bit\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm_lpae_dump_ops\00", [46 x i8] zeroinitializer }, align 32
@arm_lpae_dump_ops._entry_ptr = internal global ptr @arm_lpae_dump_ops._entry, section ".printk_index", align 4
@arm_lpae_dump_ops._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\013arm-lpae io-pgtable: data: %d levels, 0x%zx pgd_size, %u pg_shift, %u bits_per_level, pgd @ %p\0A\00", [62 x i8] zeroinitializer }, align 32
@arm_lpae_dump_ops._entry_ptr.20 = internal global ptr @arm_lpae_dump_ops._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4096, i64 16384, i64 65536]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 4, i64 5, i64 6, i64 8, i64 10]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 4096, i64 16384, i64 65536]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 4, i64 5, i64 6, i64 8, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 4096, i64 16384, i64 65536]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 7]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.27 = private unnamed_addr constant [35 x i8] c"io_pgtable_arm_64_lpae_s1_init_fns\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1156, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant [35 x i8] c"io_pgtable_arm_64_lpae_s2_init_fns\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1161, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant [35 x i8] c"io_pgtable_arm_32_lpae_s1_init_fns\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1166, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant [35 x i8] c"io_pgtable_arm_32_lpae_s2_init_fns\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1171, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant [34 x i8] c"io_pgtable_arm_mali_lpae_init_fns\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1176, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant [31 x i8] c"io_pgtable_apple_dart_init_fns\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1181, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 488, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"selftest_running\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 225, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 326, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1356, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1365, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1252, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1261, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1220, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [34 x i8] c"../drivers/iommu/io-pgtable-arm.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1222, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__arm_lpae_alloc_pages._entry, ptr @__arm_lpae_alloc_pages._entry_ptr, ptr @__initcall__kmod_io_pgtable_arm__245_1368_arm_lpae_do_selftests4, ptr @arm_lpae_do_selftests._entry, ptr @arm_lpae_do_selftests._entry.10, ptr @arm_lpae_do_selftests._entry_ptr, ptr @arm_lpae_do_selftests._entry_ptr.12, ptr @arm_lpae_dump_ops._entry, ptr @arm_lpae_dump_ops._entry.18, ptr @arm_lpae_dump_ops._entry_ptr, ptr @arm_lpae_dump_ops._entry_ptr.20, ptr @arm_lpae_run_tests._entry, ptr @arm_lpae_run_tests._entry_ptr, ptr @io_pgtable_arm_64_lpae_s1_init_fns, ptr @io_pgtable_arm_64_lpae_s2_init_fns, ptr @io_pgtable_arm_32_lpae_s1_init_fns, ptr @io_pgtable_arm_32_lpae_s2_init_fns, ptr @io_pgtable_arm_mali_lpae_init_fns, ptr @io_pgtable_apple_dart_init_fns, ptr @.str, ptr @selftest_running, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_pgtable_arm_64_lpae_s1_init_fns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_pgtable_arm_64_lpae_s2_init_fns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_pgtable_arm_32_lpae_s1_init_fns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_pgtable_arm_32_lpae_s2_init_fns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_pgtable_arm_mali_lpae_init_fns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_pgtable_apple_dart_init_fns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest_running to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_lpae_do_selftests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_lpae_do_selftests._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_lpae_run_tests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_lpae_dump_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_lpae_dump_ops._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_64_lpae_alloc_pgtable_s1(ptr noundef %cfg, ptr nocapture noundef readnone %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 7
  %tcr1 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 7, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cfg, align 8
  %and = and i32 %2, -98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @arm_lpae_alloc_pgtable(ptr noundef %cfg)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %coherent_walk = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 4
  %3 = ptrtoint ptr %coherent_walk to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %coherent_walk, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %tcr1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load18 = load i32, ptr %tcr1, align 4
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %bf.set = and i32 %bf.load18, -132120577
  %bf.set12 = or i32 %bf.set, 111149056
  %6 = ptrtoint ptr %tcr1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bf.set12, ptr %tcr1, align 4
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfg, align 8
  %and14 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then6.if.end36_crit_edge, label %if.then6.out_free_data_crit_edge

if.then6.out_free_data_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

if.then6.if.end36_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cfg, align 8
  %and25 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %bf.set20 = and i32 %bf.load18, -132120577
  %bf.clear29.sink.v = select i1 %tobool26.not, i32 67108864, i32 75497472
  %bf.clear29.sink = or i32 %bf.set20, %bf.clear29.sink.v
  %11 = ptrtoint ptr %tcr1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %bf.clear29.sink, ptr %tcr1, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then6.if.end36_crit_edge
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg, align 8
  %and38 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %bits_per_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 3
  %14 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits_per_level, align 8
  %shl = shl i32 8, %15
  %16 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shl, label %if.end36.sw.epilog_crit_edge [
    i32 4096, label %sw.bb
    i32 16384, label %sw.bb44
    i32 65536, label %sw.bb52
  ]

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %bf.shl = shl nuw nsw i32 %and38, 23
  br label %sw.epilog.sink.split

sw.bb44:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %cond46 = select i1 %tobool39.not, i32 268435456, i32 134217728
  br label %sw.epilog.sink.split

sw.bb52:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %cond54 = select i1 %tobool39.not, i32 134217728, i32 402653184
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb52, %sw.bb44, %sw.bb
  %cond54.sink = phi i32 [ %cond54, %sw.bb52 ], [ %cond46, %sw.bb44 ], [ %bf.shl, %sw.bb ]
  %17 = ptrtoint ptr %tcr1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load55.sink = load i32, ptr %tcr1, align 4
  %bf.clear58 = and i32 %bf.load55.sink, -402653185
  %bf.set59 = or i32 %bf.clear58, %cond54.sink
  store i32 %bf.set59, ptr %tcr1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end36.sw.epilog_crit_edge
  %oas = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 3
  %18 = ptrtoint ptr %oas to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oas, align 4
  %20 = add i32 %19, -32
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 31)
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %21, label %sw.epilog.out_free_data_crit_edge [
    i32 0, label %sw.bb60
    i32 2, label %sw.bb64
    i32 4, label %sw.bb68
    i32 5, label %sw.bb72
    i32 6, label %sw.bb76
    i32 8, label %sw.bb80
    i32 10, label %sw.bb84
  ]

sw.epilog.out_free_data_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

sw.bb60:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %tcr1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load61 = load i32, ptr %tcr1, align 4
  %bf.clear62 = and i32 %bf.load61, 536870911
  br label %sw.epilog88

sw.bb64:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %tcr1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load65 = load i32, ptr %tcr1, align 4
  %bf.clear66 = and i32 %bf.load65, 536870911
  %bf.set67 = or i32 %bf.clear66, 536870912
  br label %sw.epilog88

sw.bb68:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %tcr1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load69 = load i32, ptr %tcr1, align 4
  %bf.clear70 = and i32 %bf.load69, 536870911
  %bf.set71 = or i32 %bf.clear70, 1073741824
  br label %sw.epilog88

sw.bb72:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %tcr1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load73 = load i32, ptr %tcr1, align 4
  %bf.clear74 = and i32 %bf.load73, 536870911
  %bf.set75 = or i32 %bf.clear74, 1610612736
  br label %sw.epilog88

sw.bb76:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %tcr1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load77 = load i32, ptr %tcr1, align 4
  %bf.clear78 = and i32 %bf.load77, 536870911
  %bf.set79 = or i32 %bf.clear78, -2147483648
  br label %sw.epilog88

sw.bb80:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %tcr1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load81 = load i32, ptr %tcr1, align 4
  %bf.clear82 = and i32 %bf.load81, 536870911
  %bf.set83 = or i32 %bf.clear82, -1610612736
  br label %sw.epilog88

sw.bb84:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %tcr1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load85 = load i32, ptr %tcr1, align 4
  %bf.clear86 = and i32 %bf.load85, 536870911
  %bf.set87 = or i32 %bf.clear86, -1073741824
  br label %sw.epilog88

sw.epilog88:                                      ; preds = %sw.bb84, %sw.bb80, %sw.bb76, %sw.bb72, %sw.bb68, %sw.bb64, %sw.bb60
  %bf.set87.sink = phi i32 [ %bf.set87, %sw.bb84 ], [ %bf.set83, %sw.bb80 ], [ %bf.set79, %sw.bb76 ], [ %bf.set75, %sw.bb72 ], [ %bf.set71, %sw.bb68 ], [ %bf.set67, %sw.bb64 ], [ %bf.clear62, %sw.bb60 ]
  %30 = ptrtoint ptr %tcr1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bf.set87.sink, ptr %tcr1, align 4
  %ias = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 2
  %31 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ias, align 8
  %.neg = mul i32 %32, 2064384
  %bf.shl92 = and i32 %.neg, 2064384
  %bf.clear93 = and i32 %bf.set87.sink, -2064385
  %bf.set94 = or i32 %bf.clear93, %bf.shl92
  store i32 %bf.set94, ptr %tcr1, align 4
  %mair = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 7, i32 0, i32 0, i32 2
  %33 = ptrtoint ptr %mair to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 -200999100, ptr %mair, align 8
  %pgd_bits = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 1
  %34 = ptrtoint ptr %pgd_bits to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pgd_bits, align 8
  %shl95 = shl i32 8, %35
  %call96 = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %shl95, i32 noundef 3264, ptr noundef %cfg)
  %pgd = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 4
  %36 = ptrtoint ptr %pgd to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call96, ptr %pgd, align 4
  %tobool98.not = icmp eq ptr %call96, null
  br i1 %tobool98.not, label %sw.epilog88.out_free_data_crit_edge, label %do.body

sw.epilog88.out_free_data_crit_edge:              ; preds = %sw.epilog88
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

do.body:                                          ; preds = %sw.epilog88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pgd, align 4
  %39 = ptrtoint ptr %38 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %39) #8
  %conv103 = zext i32 %call.i to i64
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv103, ptr %0, align 8
  br label %cleanup

out_free_data:                                    ; preds = %sw.epilog88.out_free_data_crit_edge, %sw.epilog.out_free_data_crit_edge, %if.then6.out_free_data_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_data, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free_data ], [ %call, %do.body ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_lpae_free_pgtable(ptr noundef %iop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %start_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %iop, i32 0, i32 2
  %0 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_level, align 4
  %pgd = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %iop, i32 0, i32 4
  %2 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pgd, align 4
  tail call fastcc void @__arm_lpae_free_pgtable(ptr noundef %iop, i32 noundef %1, ptr noundef %3)
  tail call void @kfree(ptr noundef %iop) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_64_lpae_alloc_pgtable_s2(ptr noundef %cfg, ptr nocapture noundef readnone %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 7
  %vtcr1 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 7, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cfg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @arm_lpae_alloc_pgtable(ptr noundef %cfg)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %start_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then5, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %if.end4
  %pgd_bits = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %pgd_bits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pgd_bits, align 8
  %shl = shl i32 8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %shl)
  %cmp6 = icmp ult i32 %shl, 136
  br i1 %cmp6, label %if.then7, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %bits_per_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bits_per_level, align 8
  %add = add i32 %8, %6
  %9 = ptrtoint ptr %pgd_bits to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %pgd_bits, align 8
  %10 = ptrtoint ptr %start_level to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %start_level, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then5.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %coherent_walk = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 4
  %11 = ptrtoint ptr %coherent_walk to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %coherent_walk, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load20 = load i32, ptr %vtcr1, align 4
  %bf.clear21 = and i32 %bf.load20, -132120577
  %. = select i1 %tobool12.not, i32 67108864, i32 111149056
  %bf.set22 = or i32 %bf.clear21, %.
  store i32 %bf.set22, ptr %vtcr1, align 4
  %14 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start_level, align 4
  %bits_per_level31 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %bits_per_level31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bits_per_level31, align 8
  %shl32 = shl i32 8, %17
  %18 = zext i32 %shl32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %shl32, label %if.end11.sw.epilog_crit_edge [
    i32 4096, label %sw.bb
    i32 16384, label %sw.bb37
    i32 65536, label %sw.bb41
  ]

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear34 = and i32 %bf.set22, -423624705
  %19 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bf.clear34, ptr %vtcr1, align 4
  %inc36 = add i32 %15, 1
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear39 = and i32 %bf.set22, -423624705
  %bf.set40 = or i32 %bf.clear39, 268435456
  %20 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bf.set40, ptr %vtcr1, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear43 = and i32 %bf.set22, -423624705
  %bf.set44 = or i32 %bf.clear43, 134217728
  %21 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.set44, ptr %vtcr1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb37, %sw.bb, %if.end11.sw.epilog_crit_edge
  %sl.0 = phi i32 [ %15, %if.end11.sw.epilog_crit_edge ], [ %15, %sw.bb41 ], [ %15, %sw.bb37 ], [ %inc36, %sw.bb ]
  %oas = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 3
  %22 = ptrtoint ptr %oas to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oas, align 4
  %24 = add i32 %23, -32
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 31)
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %25, label %sw.epilog.out_free_data_crit_edge [
    i32 0, label %sw.bb45
    i32 2, label %sw.bb49
    i32 4, label %sw.bb53
    i32 5, label %sw.bb57
    i32 6, label %sw.bb61
    i32 8, label %sw.bb65
    i32 10, label %sw.bb69
  ]

sw.epilog.out_free_data_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

sw.bb45:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load46 = load i32, ptr %vtcr1, align 4
  %bf.clear47 = and i32 %bf.load46, 536870911
  br label %sw.epilog73

sw.bb49:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load50 = load i32, ptr %vtcr1, align 4
  %bf.clear51 = and i32 %bf.load50, 536870911
  %bf.set52 = or i32 %bf.clear51, 536870912
  br label %sw.epilog73

sw.bb53:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load54 = load i32, ptr %vtcr1, align 4
  %bf.clear55 = and i32 %bf.load54, 536870911
  %bf.set56 = or i32 %bf.clear55, 1073741824
  br label %sw.epilog73

sw.bb57:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load58 = load i32, ptr %vtcr1, align 4
  %bf.clear59 = and i32 %bf.load58, 536870911
  %bf.set60 = or i32 %bf.clear59, 1610612736
  br label %sw.epilog73

sw.bb61:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load62 = load i32, ptr %vtcr1, align 4
  %bf.clear63 = and i32 %bf.load62, 536870911
  %bf.set64 = or i32 %bf.clear63, -2147483648
  br label %sw.epilog73

sw.bb65:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load66 = load i32, ptr %vtcr1, align 4
  %bf.clear67 = and i32 %bf.load66, 536870911
  %bf.set68 = or i32 %bf.clear67, -1610612736
  br label %sw.epilog73

sw.bb69:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load70 = load i32, ptr %vtcr1, align 4
  %bf.clear71 = and i32 %bf.load70, 536870911
  %bf.set72 = or i32 %bf.clear71, -1073741824
  br label %sw.epilog73

sw.epilog73:                                      ; preds = %sw.bb69, %sw.bb65, %sw.bb61, %sw.bb57, %sw.bb53, %sw.bb49, %sw.bb45
  %bf.set72.sink = phi i32 [ %bf.set72, %sw.bb69 ], [ %bf.set68, %sw.bb65 ], [ %bf.set64, %sw.bb61 ], [ %bf.set60, %sw.bb57 ], [ %bf.set56, %sw.bb53 ], [ %bf.set52, %sw.bb49 ], [ %bf.clear47, %sw.bb45 ]
  %34 = ptrtoint ptr %vtcr1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bf.set72.sink, ptr %vtcr1, align 4
  %ias = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 2
  %35 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ias, align 8
  %.neg = mul i32 %36, 516096
  %bf.shl = and i32 %.neg, 516096
  %bf.clear77 = and i32 %bf.set72.sink, -2088961
  %neg = shl i32 %sl.0, 19
  %and = and i32 %neg, 1572864
  %bf.set78 = or i32 %bf.shl, %and
  %37 = or i32 %bf.set78, %bf.clear77
  %bf.set84 = xor i32 %37, 1572864
  store i32 %bf.set84, ptr %vtcr1, align 4
  %pgd_bits85 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 1
  %38 = ptrtoint ptr %pgd_bits85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pgd_bits85, align 8
  %shl86 = shl i32 8, %39
  %call87 = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %shl86, i32 noundef 3264, ptr noundef %cfg)
  %pgd = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 4
  %40 = ptrtoint ptr %pgd to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call87, ptr %pgd, align 4
  %tobool89.not = icmp eq ptr %call87, null
  br i1 %tobool89.not, label %sw.epilog73.out_free_data_crit_edge, label %do.body

sw.epilog73.out_free_data_crit_edge:              ; preds = %sw.epilog73
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

do.body:                                          ; preds = %sw.epilog73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pgd, align 4
  %43 = ptrtoint ptr %42 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %43) #8
  %conv94 = zext i32 %call.i to i64
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv94, ptr %0, align 8
  br label %cleanup

out_free_data:                                    ; preds = %sw.epilog73.out_free_data_crit_edge, %sw.epilog.out_free_data_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_data, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free_data ], [ %call, %do.body ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_32_lpae_alloc_pgtable_s1(ptr noundef %cfg, ptr nocapture noundef readnone %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ias = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 2
  %0 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ias, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp ugt i32 %1, 32
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %oas = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 3
  %2 = ptrtoint ptr %oas to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %3)
  %cmp1 = icmp ugt i32 %3, 40
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 1
  %4 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgsize_bitmap, align 4
  %and = and i32 %5, 1075843072
  store i32 %and, ptr %pgsize_bitmap, align 4
  %call = tail call ptr @arm_64_lpae_alloc_pgtable_s1(ptr noundef %cfg, ptr noundef %cookie)
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %lor.lhs.false.return_crit_edge ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_32_lpae_alloc_pgtable_s2(ptr noundef %cfg, ptr nocapture noundef readnone %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ias = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 2
  %0 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ias, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %1)
  %cmp = icmp ugt i32 %1, 40
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %oas = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 3
  %2 = ptrtoint ptr %oas to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %3)
  %cmp1 = icmp ugt i32 %3, 40
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 1
  %4 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgsize_bitmap, align 4
  %and = and i32 %5, 1075843072
  store i32 %and, ptr %pgsize_bitmap, align 4
  %call = tail call ptr @arm_64_lpae_alloc_pgtable_s2(ptr noundef %cfg, ptr noundef %cookie)
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %lor.lhs.false.return_crit_edge ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_mali_lpae_alloc_pgtable(ptr nocapture noundef %cfg, ptr nocapture noundef readnone %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ias = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 2
  %2 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ias, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %3)
  %cmp = icmp ugt i32 %3, 48
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %oas = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 3
  %4 = ptrtoint ptr %oas to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %5)
  %cmp1 = icmp ugt i32 %5, 40
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgsize_bitmap, align 4
  %and = and i32 %7, 1075843072
  store i32 %and, ptr %pgsize_bitmap, align 4
  %call = tail call fastcc ptr @arm_lpae_alloc_pgtable(ptr noundef %cfg)
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %start_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7 = icmp sgt i32 %9, 0
  br i1 %cmp7, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %start_level to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %start_level, align 4
  %pgd_bits = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %pgd_bits to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pgd_bits, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %12 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 7
  %memattr = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 7, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %memattr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 8949128, ptr %memattr, align 8
  %pgd_bits11 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %pgd_bits11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pgd_bits11, align 8
  %shl = shl i32 8, %15
  %call12 = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %shl, i32 noundef 3264, ptr noundef %cfg)
  %pgd = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 4
  %16 = ptrtoint ptr %pgd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call12, ptr %pgd, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %out_free_data, label %do.body

do.body:                                          ; preds = %if.end10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pgd, align 4
  %19 = ptrtoint ptr %18 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %19) #8
  %or19 = or i32 %call.i, 7
  %conv = zext i32 %or19 to i64
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv, ptr %12, align 8
  %coherent_walk = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 4
  %21 = ptrtoint ptr %coherent_walk to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %coherent_walk, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool20.not = icmp eq i8 %22, 0
  br i1 %tobool20.not, label %do.body.cleanup_crit_edge, label %if.then21

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %or23 = or i64 %conv, 16
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %or23, ptr %12, align 8
  br label %cleanup

out_free_data:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_data, %if.then21, %do.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free_data ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ], [ %call, %if.then21 ], [ %call, %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @apple_dart_alloc_pgtable(ptr nocapture noundef %cfg, ptr nocapture noundef readnone %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %oas = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 3
  %0 = ptrtoint ptr %oas to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %1)
  %cmp = icmp ugt i32 %1, 36
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @arm_lpae_alloc_pgtable(ptr noundef %cfg)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %start_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3 = icmp slt i32 %3, 1
  br i1 %cmp3, label %if.end2.out_free_data_crit_edge, label %if.end5

if.end2.out_free_data_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp eq i32 %3, 1
  %pgd_bits = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 1
  br i1 %cmp7, label %land.lhs.true, label %if.then13

land.lhs.true:                                    ; preds = %if.end5
  %4 = ptrtoint ptr %pgd_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgd_bits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp8 = icmp sgt i32 %5, 2
  br i1 %cmp8, label %land.lhs.true.out_free_data_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true.out_free_data_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %pgd_bits to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pgd_bits, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true.if.end15_crit_edge
  %7 = ptrtoint ptr %start_level to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %start_level, align 4
  %pgd_bits17 = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %pgd_bits17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pgd_bits17, align 8
  %shl = shl nuw i32 1, %9
  %10 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 7
  %n_ttbrs = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 7, i32 0, i32 1
  %11 = ptrtoint ptr %n_ttbrs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl, ptr %n_ttbrs, align 8
  %bits_per_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits_per_level, align 8
  %add = add i32 %13, %9
  store i32 %add, ptr %pgd_bits17, align 8
  %shl20 = shl i32 8, %add
  %call21 = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %shl20, i32 noundef 3264, ptr noundef %cfg)
  %pgd = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %pgd to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call21, ptr %pgd, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end15.out_free_data_crit_edge, label %for.cond.preheader

if.end15.out_free_data_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

for.cond.preheader:                               ; preds = %if.end15
  %15 = ptrtoint ptr %n_ttbrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_ttbrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2758.not = icmp eq i32 %16, 0
  br i1 %cmp2758.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %17 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pgd, align 4
  %19 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bits_per_level, align 8
  %shl30 = shl i32 8, %20
  %mul = mul i32 %shl30, %i.059
  %add.ptr = getelementptr i8, ptr %18, i32 %mul
  %21 = ptrtoint ptr %add.ptr to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %21) #8
  %conv = zext i32 %call.i to i64
  %arrayidx = getelementptr [4 x i64], ptr %10, i32 0, i32 %i.059
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %arrayidx, align 8
  %inc = add nuw i32 %i.059, 1
  %23 = ptrtoint ptr %n_ttbrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_ttbrs, align 8
  %cmp27 = icmp ult i32 %inc, %24
  br i1 %cmp27, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

out_free_data:                                    ; preds = %if.end15.out_free_data_crit_edge, %land.lhs.true.out_free_data_crit_edge, %if.end2.out_free_data_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_data, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free_data ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call, %for.cond.preheader.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_lpae_do_selftests() #1 section ".init.text" align 64 {
entry:
  %cfg = alloca %struct.io_pgtable_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cfg) #8
  %0 = call ptr @memcpy(ptr %cfg, ptr @__const.arm_lpae_do_selftests.cfg, i32 72)
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 1
  %ias = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc10.for.cond1.preheader_crit_edge, %entry
  %i.033 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10.for.cond1.preheader_crit_edge ]
  %fail.032 = phi i32 [ 0, %entry ], [ %fail.2, %for.inc10.for.cond1.preheader_crit_edge ]
  %pass.031 = phi i32 [ 0, %entry ], [ %pass.2, %for.inc10.for.cond1.preheader_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr @arm_lpae_do_selftests.pgsize, i32 0, i32 %i.033
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader
  %j.030 = phi i32 [ 0, %for.cond1.preheader ], [ %inc9, %for.body3.for.body3_crit_edge ]
  %fail.129 = phi i32 [ %fail.032, %for.cond1.preheader ], [ %fail.2, %for.body3.for.body3_crit_edge ]
  %pass.128 = phi i32 [ %pass.031, %for.cond1.preheader ], [ %pass.2, %for.body3.for.body3_crit_edge ]
  %3 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pgsize_bitmap, align 4
  %arrayidx4 = getelementptr [6 x i32], ptr @arm_lpae_do_selftests.ias, i32 0, i32 %j.030
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %6 = ptrtoint ptr %ias to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ias, align 8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %2, i32 noundef %5) #11
  %call7 = call fastcc i32 @arm_lpae_run_tests(ptr noundef nonnull %cfg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %inc8 = zext i1 %tobool.not to i32
  %pass.2 = add i32 %pass.128, %inc8
  %not.tobool.not = xor i1 %tobool.not, true
  %inc = zext i1 %not.tobool.not to i32
  %fail.2 = add i32 %fail.129, %inc
  %inc9 = add nuw nsw i32 %j.030, 1
  %exitcond.not = icmp eq i32 %inc9, 6
  br i1 %exitcond.not, label %for.inc10, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.inc10:                                        ; preds = %for.body3
  %inc11 = add nuw nsw i32 %i.033, 1
  %exitcond34.not = icmp eq i32 %inc11, 3
  br i1 %exitcond34.not, label %do.end15, label %for.inc10.for.cond1.preheader_crit_edge

for.inc10.for.cond1.preheader_crit_edge:          ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

do.end15:                                         ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %pass.2, i32 noundef %fail.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fail.2)
  %tobool18.not = icmp eq i32 %fail.2, 0
  %cond = select i1 %tobool18.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cfg) #8
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @arm_lpae_alloc_pgtable(ptr nocapture noundef %cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pgsize_bitmap.i = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 1
  %0 = ptrtoint ptr %pgsize_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pgsize_bitmap.i, align 4
  %and.i = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.arm_lpae_restrict_pgsizes.exit_crit_edge

entry.arm_lpae_restrict_pgsizes.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_lpae_restrict_pgsizes.exit

if.else.i:                                        ; preds = %entry
  %and2.i = and i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else7.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.ctlz.i32(i32 %and2.i, i1 true) #8, !range !80
  %sub.i.i = xor i32 %2, 31
  br label %if.end18.i

if.else7.i:                                       ; preds = %if.else.i
  %and9.i = and i32 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else7.i.sw.default.i_crit_edge, label %if.then11.i

if.else7.i.sw.default.i_crit_edge:                ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

if.then11.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i32 @llvm.cttz.i32(i32 %and9.i, i1 true) #8, !range !80
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then11.i, %if.then4.i
  %sub.i.pn.i = phi i32 [ %sub.i.i, %if.then4.i ], [ %3, %if.then11.i ]
  %granule.0.i = shl nuw i32 1, %sub.i.pn.i
  %4 = zext i32 %granule.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %granule.0.i, label %if.end18.i.sw.default.i_crit_edge [
    i32 4096, label %if.end18.i.arm_lpae_restrict_pgsizes.exit_crit_edge
    i32 16384, label %sw.bb19.i
    i32 65536, label %sw.bb20.i
  ]

if.end18.i.arm_lpae_restrict_pgsizes.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_lpae_restrict_pgsizes.exit

if.end18.i.sw.default.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb19.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_lpae_restrict_pgsizes.exit

sw.bb20.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_lpae_restrict_pgsizes.exit

sw.default.i:                                     ; preds = %if.end18.i.sw.default.i_crit_edge, %if.else7.i.sw.default.i_crit_edge
  br label %arm_lpae_restrict_pgsizes.exit

arm_lpae_restrict_pgsizes.exit:                   ; preds = %sw.default.i, %sw.bb20.i, %sw.bb19.i, %if.end18.i.arm_lpae_restrict_pgsizes.exit_crit_edge, %entry.arm_lpae_restrict_pgsizes.exit_crit_edge
  %max_addr_bits.0.i = phi i32 [ 48, %sw.default.i ], [ 48, %sw.bb19.i ], [ 48, %if.end18.i.arm_lpae_restrict_pgsizes.exit_crit_edge ], [ 52, %sw.bb20.i ], [ 48, %entry.arm_lpae_restrict_pgsizes.exit_crit_edge ]
  %page_sizes.0.i = phi i32 [ 0, %sw.default.i ], [ 33570816, %sw.bb19.i ], [ 1075843072, %if.end18.i.arm_lpae_restrict_pgsizes.exit_crit_edge ], [ 536936448, %sw.bb20.i ], [ 1075843072, %entry.arm_lpae_restrict_pgsizes.exit_crit_edge ]
  %and25.i = and i32 %page_sizes.0.i, %1
  %5 = ptrtoint ptr %pgsize_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and25.i, ptr %pgsize_bitmap.i, align 4
  %ias.i = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 2
  %6 = ptrtoint ptr %ias.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ias.i, align 8
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %max_addr_bits.0.i) #8
  %9 = ptrtoint ptr %ias.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ias.i, align 8
  %oas29.i = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 3
  %10 = ptrtoint ptr %oas29.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oas29.i, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %max_addr_bits.0.i) #8
  %13 = ptrtoint ptr %oas29.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %oas29.i, align 4
  %and = and i32 %and25.i, 86016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %arm_lpae_restrict_pgsizes.exit.cleanup_crit_edge, label %if.end5

arm_lpae_restrict_pgsizes.exit.cleanup_crit_edge: ; preds = %arm_lpae_restrict_pgsizes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %arm_lpae_restrict_pgsizes.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 120) #13
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %pgsize_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pgsize_bitmap.i, align 4
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 false) #8, !range !80
  %sub = add nsw i32 %17, -3
  %bits_per_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call7.i, i32 0, i32 3
  %18 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %bits_per_level, align 8
  %19 = ptrtoint ptr %ias.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ias.i, align 8
  %sub14 = add i32 %20, -4
  %div = sdiv i32 %sub14, %sub
  %sub16 = sub i32 4, %div
  %start_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call7.i, i32 0, i32 2
  %21 = ptrtoint ptr %start_level to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub16, ptr %start_level, align 4
  %sub18.neg = sub i32 1, %div
  %mul.neg40 = mul i32 %sub18.neg, %sub
  %.neg39 = sub i32 %20, %17
  %sub19 = add i32 %.neg39, %mul.neg40
  %pgd_bits = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %call7.i, i32 0, i32 1
  %22 = ptrtoint ptr %pgd_bits to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub19, ptr %pgd_bits, align 8
  %ops = getelementptr inbounds %struct.io_pgtable, ptr %call7.i, i32 0, i32 3
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @arm_lpae_map, ptr %ops, align 8
  %.compoundliteral.sroa.2.0.ops.sroa_idx = getelementptr inbounds %struct.io_pgtable, ptr %call7.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %.compoundliteral.sroa.2.0.ops.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @arm_lpae_map_pages, ptr %.compoundliteral.sroa.2.0.ops.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.ops.sroa_idx = getelementptr inbounds %struct.io_pgtable, ptr %call7.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %.compoundliteral.sroa.3.0.ops.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @arm_lpae_unmap, ptr %.compoundliteral.sroa.3.0.ops.sroa_idx, align 8
  %.compoundliteral.sroa.4.0.ops.sroa_idx = getelementptr inbounds %struct.io_pgtable, ptr %call7.i, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %.compoundliteral.sroa.4.0.ops.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @arm_lpae_unmap_pages, ptr %.compoundliteral.sroa.4.0.ops.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.ops.sroa_idx = getelementptr inbounds %struct.io_pgtable, ptr %call7.i, i32 0, i32 3, i32 4
  %27 = ptrtoint ptr %.compoundliteral.sroa.5.0.ops.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @arm_lpae_iova_to_phys, ptr %.compoundliteral.sroa.5.0.ops.sroa_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %arm_lpae_restrict_pgsizes.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end8 ], [ null, %arm_lpae_restrict_pgsizes.exit.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %size, i32 noundef %gfp, ptr nocapture noundef readonly %cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_dev = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 6
  %0 = ptrtoint ptr %iommu_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu_dev, align 8
  %dec.i = add i32 %size, -1
  %shr.i = lshr i32 %dec.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %2 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #8, !range !80
  %sub.i.i = sub nuw nsw i32 32, %2
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %and = and i32 %gfp, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end, label %do.body3, !prof !81

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/io-pgtable-arm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #8, !srcloc !82
  unreachable

cond.end:                                         ; preds = %entry
  %or = or i32 %gfp, 256
  %call38.i.i = tail call ptr @__alloc_pages(i32 noundef %or, i32 noundef %cond.i.i, i32 noundef 0, ptr noundef null) #8
  %tobool12.not = icmp eq ptr %call38.i.i, null
  br i1 %tobool12.not, label %cond.end.cleanup_crit_edge, label %if.end14

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %cond.end
  %call15 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i) #8
  %coherent_walk = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 4
  %3 = ptrtoint ptr %coherent_walk to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %coherent_walk, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool16.not = icmp eq i8 %4, 0
  br i1 %tobool16.not, label %if.then17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %call15) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then17
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i51, !prof !81

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i51:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i50 = icmp eq ptr %6, null
  br i1 %tobool.not.i.i50, label %if.end.i.i, label %if.then.i51.dev_name.exit.i_crit_edge

if.then.i51.dev_name.exit.i_crit_edge:            ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i51.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then.i51.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef -1) #8
  br label %out_free

dma_map_single_attrs.exit:                        ; preds = %if.then17
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef %call15, i32 noundef %size) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %call15 to i32
  %sub.i52 = add i32 %10, 1073741824
  %shr.i53 = lshr i32 %sub.i52, 12
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i53
  %and.i = and i32 %10, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %size, i32 noundef 1, i32 noundef 0) #8
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i55 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i55, label %dma_map_single_attrs.exit.out_free_crit_edge, label %if.end22

dma_map_single_attrs.exit.out_free_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end22:                                         ; preds = %dma_map_single_attrs.exit
  %call.i56 = tail call i32 @__virt_to_phys(i32 noundef %10) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call41.i, i32 %call.i56)
  %cmp.not = icmp eq i32 %call41.i, %call.i56
  br i1 %cmp.not, label %if.end22.cleanup_crit_edge, label %do.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %call41.i, i32 noundef %size, i32 noundef 1, i32 noundef 0) #8
  br label %out_free

out_free:                                         ; preds = %do.end29, %dma_map_single_attrs.exit.out_free_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i, i32 noundef %cond.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end22.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free ], [ null, %cond.end.cleanup_crit_edge ], [ %call15, %if.end22.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_lpae_map(ptr nocapture noundef readonly %ops, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %iommu_prot, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @arm_lpae_map_pages(ptr noundef %ops, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef 1, i32 noundef %iommu_prot, i32 noundef %gfp, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_lpae_map_pages(ptr nocapture noundef readonly %ops, i32 noundef %iova, i32 noundef %paddr, i32 noundef %pgsize, i32 noundef %pgcount, i32 noundef %iommu_prot, i32 noundef %gfp, ptr noundef %mapped) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ops, i32 -80
  %cfg4 = getelementptr i8, ptr %ops, i32 -72
  %pgd = getelementptr i8, ptr %ops, i32 36
  %0 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgd, align 4
  %start_level = getelementptr i8, ptr %ops, i32 28
  %2 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_level, align 4
  %conv = zext i32 %iova to i64
  %ias = getelementptr i8, ptr %ops, i32 -64
  %4 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ias, align 8
  %sh_prom = zext i32 %5 to i64
  %shr = lshr i64 %conv, %sh_prom
  %conv5 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pgsize)
  %tobool.not = icmp eq i32 %pgsize, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %pgsize_bitmap = getelementptr i8, ptr %ops, i32 -68
  %6 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgsize_bitmap, align 4
  %and = and i32 %7, %pgsize
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %pgsize)
  %cmp.not = icmp eq i32 %and, %pgsize
  br i1 %cmp.not, label %if.end29, label %lor.rhs.do.end_crit_edge, !prof !81

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 488, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end29:                                         ; preds = %lor.rhs
  %8 = ptrtoint ptr %cfg4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg4, align 8
  %and30 = shl i32 %9, 26
  %sext = ashr i32 %and30, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %sext, i32 %conv5)
  %tobool35.not = icmp eq i32 %sext, %conv5
  br i1 %tobool35.not, label %lor.rhs36, label %if.end29.do.end55_crit_edge

if.end29.do.end55_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

lor.rhs36:                                        ; preds = %if.end29
  %oas = getelementptr i8, ptr %ops, i32 -60
  %10 = ptrtoint ptr %oas to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oas, align 4
  %shr37 = lshr i32 %paddr, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr37)
  %tobool38.not = icmp eq i32 %shr37, 0
  br i1 %tobool38.not, label %if.end71, label %lor.rhs36.do.end55_crit_edge, !prof !81

lor.rhs36.do.end55_crit_edge:                     ; preds = %lor.rhs36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

do.end55:                                         ; preds = %lor.rhs36.do.end55_crit_edge, %if.end29.do.end55_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 493, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end71:                                         ; preds = %lor.rhs36
  %and72 = and i32 %iommu_prot, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.cleanup_crit_edge, label %if.end75

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %13, label %if.else.i [
    i32 7, label %if.then.i
    i32 2, label %if.end75.if.then14.i_crit_edge
    i32 0, label %if.end75.if.then14.i_crit_edge199
  ]

if.end75.if.then14.i_crit_edge199:                ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.end75.if.then14.i_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.then.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = shl i32 %iommu_prot, 6
  %15 = and i32 %and.i, 128
  %16 = xor i32 %15, 128
  %17 = zext i32 %16 to i64
  %and2.i = and i32 %iommu_prot, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or5.i = or i64 %17, 256
  %pte.1.i = select i1 %tobool3.not.i, i64 %or5.i, i64 %17
  br label %arm_lpae_prot_to_pte.exit

if.then14.i:                                      ; preds = %if.end75.if.then14.i_crit_edge, %if.end75.if.then14.i_crit_edge199
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and72)
  %.not.i = icmp eq i32 %and72, 1
  %pte.2.i = select i1 %.not.i, i64 2176, i64 2048
  %and22.i = and i32 %iommu_prot, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  %or25.i = or i64 %pte.2.i, 64
  %spec.select141.i = select i1 %tobool23.not.i, i64 %or25.i, i64 %pte.2.i
  br label %if.end37.i

if.else.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %and27.i = shl i32 %iommu_prot, 6
  %18 = and i32 %and27.i, 192
  %19 = zext i32 %18 to i64
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i, %if.then14.i
  %pte.4.i = phi i64 [ %19, %if.else.i ], [ %spec.select141.i, %if.then14.i ]
  %20 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %13, label %if.else59.i [
    i32 3, label %if.end37.i.if.then45.i_crit_edge
    i32 1, label %if.end37.i.if.then45.i_crit_edge200
  ]

if.end37.i.if.then45.i_crit_edge200:              ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45.i

if.end37.i.if.then45.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45.i

if.then45.i:                                      ; preds = %if.end37.i.if.then45.i_crit_edge, %if.end37.i.if.then45.i_crit_edge200
  %and46.i = and i32 %iommu_prot, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.else50.i, label %if.then45.i.if.end71.i_crit_edge

if.then45.i.if.end71.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

if.else50.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  %and51.i = and i32 %iommu_prot, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  %..i = select i1 %tobool52.not.i, i64 20, i64 60
  br label %if.end71.i

if.else59.i:                                      ; preds = %if.end37.i
  %and60.i = and i32 %iommu_prot, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.else64.i, label %if.else59.i.if.end71.i_crit_edge

if.else59.i.if.end71.i_crit_edge:                 ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

if.else64.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #10
  %and65.i = and i32 %iommu_prot, 4
  %21 = zext i32 %and65.i to i64
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else64.i, %if.else59.i.if.end71.i_crit_edge, %if.else50.i, %if.then45.i.if.end71.i_crit_edge
  %.sink.i = phi i64 [ %21, %if.else64.i ], [ 4, %if.then45.i.if.end71.i_crit_edge ], [ %..i, %if.else50.i ], [ 8, %if.else59.i.if.end71.i_crit_edge ]
  %and72.i = and i32 %iommu_prot, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp77.not.i = icmp eq i32 %13, 5
  %or.cond142.i = select i1 %tobool73.not.i, i1 true, i1 %cmp77.not.i
  %pte.6.v.i = select i1 %or.cond142.i, i64 512, i64 768
  %22 = or i64 %pte.4.i, %pte.6.v.i
  %pte.6.i = or i64 %22, %.sink.i
  %and83.i = and i32 %iommu_prot, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  %or86.i = or i64 %pte.6.i, 27021597764222976
  %spec.select139.i = select i1 %tobool84.not.i, i64 %pte.6.i, i64 %or86.i
  %23 = ptrtoint ptr %cfg4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cfg4, align 8
  %and89.i = shl i32 %24, 5
  %25 = and i32 %and89.i, 32
  %26 = zext i32 %25 to i64
  %27 = or i64 %spec.select139.i, %26
  %or98.i = or i64 %27, 1024
  %pte.9.i = select i1 %cmp77.not.i, i64 %27, i64 %or98.i
  br label %arm_lpae_prot_to_pte.exit

arm_lpae_prot_to_pte.exit:                        ; preds = %if.end71.i, %if.then.i
  %retval.0.i = phi i64 [ %pte.1.i, %if.then.i ], [ %pte.9.i, %if.end71.i ]
  %bits_per_level.i = getelementptr i8, ptr %ops, i32 32
  %pgd_bits.i = getelementptr i8, ptr %ops, i32 24
  %coherent_walk.i = getelementptr i8, ptr %ops, i32 -56
  %iommu_dev.i199.i = getelementptr i8, ptr %ops, i32 -48
  %smax.i = tail call i32 @llvm.smax.i32(i32 %3, i32 3) #8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.end128.i, %arm_lpae_prot_to_pte.exit
  %lvl.tr.i = phi i32 [ %3, %arm_lpae_prot_to_pte.exit ], [ %add129.i, %if.end128.i ]
  %ptep.tr.i = phi ptr [ %1, %arm_lpae_prot_to_pte.exit ], [ %cptep.1.i, %if.end128.i ]
  %sub.i = sub i32 4, %lvl.tr.i
  %28 = ptrtoint ptr %bits_per_level.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bits_per_level.i, align 8
  %mul.i = mul i32 %29, %sub.i
  %add.i = add i32 %mul.i, 3
  %sh_prom.i = zext i32 %add.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %conv.i = trunc i64 %shl.i to i32
  %shl2.i = shl i32 8, %29
  %shr.i = lshr i64 %conv, %sh_prom.i
  %30 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %start_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %lvl.tr.i)
  %cmp.i = icmp eq i32 %31, %lvl.tr.i
  br i1 %cmp.i, label %cond.true.i, label %tailrecurse.i.cond.end.i_crit_edge

tailrecurse.i.cond.end.i_crit_edge:               ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %pgd_bits.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pgd_bits.i, align 8
  %sub13.i = sub i32 %33, %29
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %tailrecurse.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub13.i, %cond.true.i ], [ 0, %tailrecurse.i.cond.end.i_crit_edge ]
  %add14.i = add i32 %cond.i, %29
  %notmask.i = shl nsw i32 -1, %add14.i
  %sub16.i = xor i32 %notmask.i, -1
  %34 = trunc i64 %shr.i to i32
  %conv18.i = and i32 %sub16.i, %34
  %add.ptr.i = getelementptr i64, ptr %ptep.tr.i, i32 %conv18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %pgsize)
  %cmp19.i = icmp eq i32 %conv.i, %pgsize
  br i1 %cmp19.i, label %if.then.i102, label %if.end35.i

if.then.i102:                                     ; preds = %cond.end.i
  %shr23.i = lshr exact i32 %shl2.i, 3
  %sub24.i = sub i32 %shr23.i, %conv18.i
  %35 = tail call i32 @llvm.smin.i32(i32 %sub24.i, i32 %pgcount) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp109.i.i = icmp sgt i32 %35, 0
  br i1 %cmp109.i.i, label %for.body.lr.ph.i.i, label %if.then.i102.for.end.i.i_crit_edge

if.then.i102.for.end.i.i_crit_edge:               ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %lvl.tr.i)
  %cmp.i.i.i = icmp ne i32 %lvl.tr.i, 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0110.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i64, ptr %add.ptr.i, i32 %i.0110.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx.i.i, align 8
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %39)
  %cmp1.not.i.i.i = icmp eq i32 %39, 5
  %or.cond.i.i.i = or i1 %cmp.i.i.i, %cmp1.not.i.i.i
  %and4.i.i.i = and i64 %37, 3
  %..i.i.i = select i1 %or.cond.i.i.i, i64 1, i64 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and4.i.i.i, i64 %..i.i.i)
  %cmp5.i.i.i = icmp eq i64 %and4.i.i.i, %..i.i.i
  br i1 %cmp5.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %.b107.i.i = load i1, ptr @selftest_running, align 1
  br i1 %.b107.i.i, label %if.then.i.i.__arm_lpae_map.exit_crit_edge, label %do.end.i.i, !prof !81

if.then.i.i.__arm_lpae_map.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_lpae_map.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef null) #8
  br label %__arm_lpae_map.exit

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %and4.i.i.i)
  %cmp23.i.i = icmp eq i64 %and4.i.i.i, 3
  br i1 %cmp23.i.i, label %if.then24.i.i, label %if.else.i.i.for.inc.i.i_crit_edge

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then24.i.i:                                    ; preds = %if.else.i.i
  %40 = ptrtoint ptr %bits_per_level.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bits_per_level.i, align 8
  %mul.i.i = mul i32 %41, %sub.i
  %add.i.i = add i32 %mul.i.i, 3
  %sh_prom.i.i = zext i32 %add.i.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %conv.i.i = trunc i64 %shl.i.i to i32
  %shr31.i.i = lshr i64 %conv, %sh_prom.i.i
  %42 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %start_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %lvl.tr.i)
  %cmp33.i.i = icmp eq i32 %43, %lvl.tr.i
  br i1 %cmp33.i.i, label %cond.true.i.i, label %if.then24.i.i.cond.end.i.i_crit_edge

if.then24.i.i.cond.end.i.i_crit_edge:             ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %pgd_bits.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pgd_bits.i, align 8
  %sub36.i.i = sub i32 %45, %41
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then24.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %sub36.i.i, %cond.true.i.i ], [ 0, %if.then24.i.i.cond.end.i.i_crit_edge ]
  %add37.i.i = add i32 %cond.i.i, %41
  %notmask.i.i = shl nsw i32 -1, %add37.i.i
  %sub39.i.i = xor i32 %notmask.i.i, -1
  %46 = trunc i64 %shr31.i.i to i32
  %idx.ext.i.i = and i32 %sub39.i.i, %46
  %idx.neg.i.i = sub i32 0, %idx.ext.i.i
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr.i, i32 %idx.neg.i.i
  %mul42.i.i = mul i32 %i.0110.i.i, %conv.i.i
  %add43.i.i = add i32 %mul42.i.i, %iova
  %call44.i.i = tail call fastcc i32 @__arm_lpae_unmap(ptr noundef %add.ptr, ptr noundef null, i32 noundef %add43.i.i, i32 noundef %conv.i.i, i32 noundef 1, i32 noundef %lvl.tr.i, ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call44.i.i, i32 %conv.i.i)
  %cmp45.not.i.i = icmp eq i32 %call44.i.i, %conv.i.i
  br i1 %cmp45.not.i.i, label %cond.end.i.i.for.inc.i.i_crit_edge, label %do.end60.i.i

cond.end.i.i.for.inc.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

do.end60.i.i:                                     ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 306, i32 noundef 9, ptr noundef null) #8
  br label %__arm_lpae_map.exit

for.inc.i.i:                                      ; preds = %cond.end.i.i.for.inc.i.i_crit_edge, %if.else.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0110.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %35
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then.i102.for.end.i.i_crit_edge
  %47 = ptrtoint ptr %bits_per_level.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bits_per_level.i, align 8
  %mul.i.i.i = mul i32 %48, %sub.i
  %add.i.i.i = add i32 %mul.i.i.i, 3
  %sh_prom.i.i.i = zext i32 %add.i.i.i to i64
  %shl.i.i.i = shl nuw i64 1, %sh_prom.i.i.i
  %conv.i.i.i = trunc i64 %shl.i.i.i to i32
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %50)
  %cmp.not.i.i.i = icmp ne i32 %50, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %lvl.tr.i)
  %cmp4.i.i.i = icmp eq i32 %lvl.tr.i, 3
  %or.cond.i108.i.i = and i1 %cmp4.i.i.i, %cmp.not.i.i.i
  %pte.0.v.i.i.i = select i1 %or.cond.i108.i.i, i64 3, i64 1
  %pte.0.i.i.i = or i64 %pte.0.v.i.i.i, %retval.0.i
  br i1 %cmp109.i.i, label %for.end.i.i.for.body.i.i.i_crit_edge, label %for.end.i.i.for.end.i.i.i_crit_edge

for.end.i.i.for.end.i.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.for.body.i.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.end.i.i.for.body.i.i.i_crit_edge
  %i.027.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.end.i.i.for.body.i.i.i_crit_edge ]
  %mul9.i.i.i = mul i32 %i.027.i.i.i, %conv.i.i.i
  %add10.i.i.i = add i32 %mul9.i.i.i, %paddr
  %51 = and i32 %add10.i.i.i, -4096
  %and.i.i.i.i = zext i32 %51 to i64
  %or11.i.i.i = or i64 %pte.0.i.i.i, %and.i.i.i.i
  %arrayidx.i.i.i = getelementptr i64, ptr %add.ptr.i, i32 %i.027.i.i.i
  %52 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %or11.i.i.i, ptr %arrayidx.i.i.i, align 8
  %inc.i.i.i = add nuw nsw i32 %i.027.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %35
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %for.end.i.i.for.end.i.i.i_crit_edge
  %53 = ptrtoint ptr %coherent_walk.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %coherent_walk.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i.i.i, label %if.then12.i.i.i, label %for.end.i.i.i.arm_lpae_init_pte.exit.i_crit_edge

for.end.i.i.i.arm_lpae_init_pte.exit.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_lpae_init_pte.exit.i

if.then12.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %iommu_dev.i199.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iommu_dev.i199.i, align 8
  %57 = ptrtoint ptr %add.ptr.i to i32
  %call.i.i.i.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %57) #8
  %mul.i.i.i.i = shl i32 %35, 3
  tail call void @dma_sync_single_for_device(ptr noundef %56, i32 noundef %call.i.i.i.i.i.i, i32 noundef %mul.i.i.i.i, i32 noundef 1) #8
  br label %arm_lpae_init_pte.exit.i

arm_lpae_init_pte.exit.i:                         ; preds = %if.then12.i.i.i, %for.end.i.i.i.arm_lpae_init_pte.exit.i_crit_edge
  %tobool31.not.i = icmp eq ptr %mapped, null
  br i1 %tobool31.not.i, label %arm_lpae_init_pte.exit.i.__arm_lpae_map.exit_crit_edge, label %if.then32.i

arm_lpae_init_pte.exit.i.__arm_lpae_map.exit_crit_edge: ; preds = %arm_lpae_init_pte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_lpae_map.exit

if.then32.i:                                      ; preds = %arm_lpae_init_pte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul33.i = mul i32 %35, %pgsize
  %58 = ptrtoint ptr %mapped to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mapped, align 4
  %add34.i = add i32 %59, %mul33.i
  store i32 %add34.i, ptr %mapped, align 4
  br label %__arm_lpae_map.exit

if.end35.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.tr.i, i32 %smax.i)
  %exitcond.i = icmp eq i32 %lvl.tr.i, %smax.i
  br i1 %exitcond.i, label %do.end.i, label %do.end65.i, !prof !83

do.end.i:                                         ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef null) #8
  br label %__arm_lpae_map.exit

do.end65.i:                                       ; preds = %if.end35.i
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load volatile i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %tobool67.not.i = icmp eq i64 %61, 0
  br i1 %tobool67.not.i, label %if.then68.i, label %if.else.i103

if.then68.i:                                      ; preds = %do.end65.i
  %call69.i = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %shl2.i, i32 noundef %gfp, ptr noundef %cfg4) #8
  %tobool70.not.i = icmp eq ptr %call69.i, null
  br i1 %tobool70.not.i, label %if.then68.i.__arm_lpae_map.exit_crit_edge, label %if.end72.i

if.then68.i.__arm_lpae_map.exit_crit_edge:        ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_lpae_map.exit

if.end72.i:                                       ; preds = %if.then68.i
  %call73.i = tail call fastcc i64 @arm_lpae_install_table(ptr noundef nonnull %call69.i, ptr noundef %add.ptr.i, i64 noundef 0, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call73.i)
  %tobool74.not.i = icmp eq i64 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end72.i.if.end128.i_crit_edge, label %if.then75.i

if.end72.i.if.end128.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i

if.then75.i:                                      ; preds = %if.end72.i
  %62 = ptrtoint ptr %coherent_walk.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %coherent_walk.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i.i, label %if.then.i195.i, label %if.then75.i.__arm_lpae_free_pages.exit.i_crit_edge

if.then75.i.__arm_lpae_free_pages.exit.i_crit_edge: ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_lpae_free_pages.exit.i

if.then.i195.i:                                   ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %iommu_dev.i199.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iommu_dev.i199.i, align 8
  %66 = ptrtoint ptr %call69.i to i32
  %call.i.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %66) #8
  tail call void @dma_unmap_page_attrs(ptr noundef %65, i32 noundef %call.i.i.i.i, i32 noundef %shl2.i, i32 noundef 1, i32 noundef 0) #8
  br label %__arm_lpae_free_pages.exit.i

__arm_lpae_free_pages.exit.i:                     ; preds = %if.then.i195.i, %if.then75.i.__arm_lpae_free_pages.exit.i_crit_edge
  %dec.i.i.i = add i32 %shl2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i.i)
  %tobool.not.i.i.i.i = icmp ult i32 %dec.i.i.i, 4096
  %shr.i.i.i = lshr i32 %dec.i.i.i, 12
  %67 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i.i, i1 true) #8, !range !80
  %sub.i.i.i.i = sub nuw nsw i32 32, %67
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.i.i
  %68 = ptrtoint ptr %call69.i to i32
  tail call void @free_pages(i32 noundef %68, i32 noundef %cond.i.i.i.i) #8
  br label %land.lhs.true85.i

if.else.i103:                                     ; preds = %do.end65.i
  %69 = ptrtoint ptr %coherent_walk.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %coherent_walk.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool77.not.i = icmp eq i8 %70, 0
  %and79.i = and i64 %61, 36028797018963968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and79.i)
  %tobool80.not.i = icmp eq i64 %and79.i, 0
  %or.cond194.i = select i1 %tobool77.not.i, i1 %tobool80.not.i, i1 false
  br i1 %or.cond194.i, label %if.then81.i, label %if.else.i103.land.lhs.true85.i_crit_edge

if.else.i103.land.lhs.true85.i_crit_edge:         ; preds = %if.else.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true85.i

if.then81.i:                                      ; preds = %if.else.i103
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %iommu_dev.i199.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iommu_dev.i199.i, align 8
  %73 = ptrtoint ptr %add.ptr.i to i32
  %call.i.i.i200.i = tail call i32 @__virt_to_phys(i32 noundef %73) #8
  tail call void @dma_sync_single_for_device(ptr noundef %72, i32 noundef %call.i.i.i200.i, i32 noundef 8, i32 noundef 1) #8
  br label %land.lhs.true85.i

land.lhs.true85.i:                                ; preds = %if.then81.i, %if.else.i103.land.lhs.true85.i_crit_edge, %__arm_lpae_free_pages.exit.i
  %pte.0.ph.i = phi i64 [ %call73.i, %__arm_lpae_free_pages.exit.i ], [ %61, %if.then81.i ], [ %61, %if.else.i103.land.lhs.true85.i_crit_edge ]
  %and4.i.i = and i64 %pte.0.ph.i, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and4.i.i)
  %cmp5.i.i = icmp eq i64 %and4.i.i, 1
  br i1 %cmp5.i.i, label %if.then93.critedge.i, label %if.then88.i

if.then88.i:                                      ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %bits_per_level.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bits_per_level.i, align 8
  %shl.i202.i = shl i32 8, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl.i202.i)
  %cmp.i203.i = icmp ult i32 %shl.i202.i, 65536
  %76 = trunc i64 %pte.0.ph.i to i32
  %retval.0.v.i.i = select i1 %cmp.i203.i, i32 -4096, i32 -65536
  %retval.0.i.i = and i32 %retval.0.v.i.i, %76
  %77 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %retval.0.i.i, i32 -2130706432, i32 8454144) #14, !srcloc !84
  %78 = inttoptr i32 %77 to ptr
  br label %if.end128.i

if.then93.critedge.i:                             ; preds = %land.lhs.true85.i
  %.b193.i = load i1, ptr @selftest_running, align 1
  br i1 %.b193.i, label %if.then93.critedge.i.__arm_lpae_map.exit_crit_edge, label %do.end113.i, !prof !81

if.then93.critedge.i.__arm_lpae_map.exit_crit_edge: ; preds = %if.then93.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_lpae_map.exit

do.end113.i:                                      ; preds = %if.then93.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 395, i32 noundef 9, ptr noundef null) #8
  br label %__arm_lpae_map.exit

if.end128.i:                                      ; preds = %if.then88.i, %if.end72.i.if.end128.i_crit_edge
  %cptep.1.i = phi ptr [ %78, %if.then88.i ], [ %call69.i, %if.end72.i.if.end128.i_crit_edge ]
  %add129.i = add i32 %lvl.tr.i, 1
  br label %tailrecurse.i

__arm_lpae_map.exit:                              ; preds = %do.end113.i, %if.then93.critedge.i.__arm_lpae_map.exit_crit_edge, %if.then68.i.__arm_lpae_map.exit_crit_edge, %do.end.i, %if.then32.i, %arm_lpae_init_pte.exit.i.__arm_lpae_map.exit_crit_edge, %do.end60.i.i, %do.end.i.i, %if.then.i.i.__arm_lpae_map.exit_crit_edge
  %retval.0.i104 = phi i32 [ -22, %do.end.i ], [ 0, %if.then32.i ], [ 0, %arm_lpae_init_pte.exit.i.__arm_lpae_map.exit_crit_edge ], [ -17, %do.end113.i ], [ -17, %if.then93.critedge.i.__arm_lpae_map.exit_crit_edge ], [ -22, %do.end60.i.i ], [ -17, %if.then.i.i.__arm_lpae_map.exit_crit_edge ], [ -17, %do.end.i.i ], [ -12, %if.then68.i.__arm_lpae_map.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  br label %cleanup

cleanup:                                          ; preds = %__arm_lpae_map.exit, %if.end71.cleanup_crit_edge, %do.end55, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -34, %do.end55 ], [ %retval.0.i104, %__arm_lpae_map.exit ], [ 0, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_lpae_unmap(ptr nocapture noundef readonly %ops, i32 noundef %iova, i32 noundef %size, ptr noundef %gather) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ops, i32 -80
  %cfg4.i = getelementptr i8, ptr %ops, i32 -72
  %pgd.i = getelementptr i8, ptr %ops, i32 36
  %0 = ptrtoint ptr %pgd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgd.i, align 4
  %conv.i = zext i32 %iova to i64
  %ias.i = getelementptr i8, ptr %ops, i32 -64
  %2 = ptrtoint ptr %ias.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ias.i, align 8
  %sh_prom.i = zext i32 %3 to i64
  %shr.i = lshr i64 %conv.i, %sh_prom.i
  %conv5.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 0
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %pgsize_bitmap.i = getelementptr i8, ptr %ops, i32 -68
  %4 = ptrtoint ptr %pgsize_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgsize_bitmap.i, align 4
  %and.i = and i32 %5, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %size)
  %cmp.not.i.not = icmp eq i32 %and.i, %size
  br i1 %cmp.not.i.not, label %if.end31.i, label %lor.lhs.false.i.do.end.i_crit_edge, !prof !81

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 686, i32 noundef 9, ptr noundef null) #8
  br label %arm_lpae_unmap_pages.exit

if.end31.i:                                       ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %cfg4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg4.i, align 8
  %and32.i = shl i32 %7, 26
  %sext.i = ashr i32 %and32.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %sext.i, i32 %conv5.i)
  %tobool37.not.i = icmp eq i32 %sext.i, %conv5.i
  br i1 %tobool37.not.i, label %if.end69.i, label %do.end53.i, !prof !81

do.end53.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 691, i32 noundef 9, ptr noundef null) #8
  br label %arm_lpae_unmap_pages.exit

if.end69.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %start_level.i = getelementptr i8, ptr %ops, i32 28
  %8 = ptrtoint ptr %start_level.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_level.i, align 4
  %call.i = tail call fastcc i32 @__arm_lpae_unmap(ptr noundef %add.ptr.i, ptr noundef %gather, i32 noundef %iova, i32 noundef %size, i32 noundef 1, i32 noundef %9, ptr noundef %1) #8
  br label %arm_lpae_unmap_pages.exit

arm_lpae_unmap_pages.exit:                        ; preds = %if.end69.i, %do.end53.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 0, %do.end53.i ], [ %call.i, %if.end69.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_lpae_unmap_pages(ptr nocapture noundef readonly %ops, i32 noundef %iova, i32 noundef %pgsize, i32 noundef %pgcount, ptr noundef %gather) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ops, i32 -80
  %cfg4 = getelementptr i8, ptr %ops, i32 -72
  %pgd = getelementptr i8, ptr %ops, i32 36
  %0 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgd, align 4
  %conv = zext i32 %iova to i64
  %ias = getelementptr i8, ptr %ops, i32 -64
  %2 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ias, align 8
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 %conv, %sh_prom
  %conv5 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pgsize)
  %tobool.not = icmp eq i32 %pgsize, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %pgsize_bitmap = getelementptr i8, ptr %ops, i32 -68
  %4 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgsize_bitmap, align 4
  %and = and i32 %5, %pgsize
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %pgsize)
  %cmp.not = icmp ne i32 %and, %pgsize
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pgcount)
  %tobool7.not = icmp eq i32 %pgcount, 0
  %spec.select = or i1 %tobool7.not, %cmp.not
  br i1 %spec.select, label %lor.lhs.false.do.end_crit_edge, label %if.end31, !prof !83

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 686, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %cfg4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg4, align 8
  %and32 = shl i32 %7, 26
  %sext = ashr i32 %and32, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %sext, i32 %conv5)
  %tobool37.not = icmp eq i32 %sext, %conv5
  br i1 %tobool37.not, label %if.end69, label %do.end53, !prof !81

do.end53:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 691, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end69:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %start_level = getelementptr i8, ptr %ops, i32 28
  %8 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_level, align 4
  %call = tail call fastcc i32 @__arm_lpae_unmap(ptr noundef %add.ptr, ptr noundef %gather, i32 noundef %iova, i32 noundef %pgsize, i32 noundef %pgcount, i32 noundef %9, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end53, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end53 ], [ %call, %if.end69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_lpae_iova_to_phys(ptr nocapture noundef readonly %ops, i32 noundef %iova) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ops, i32 -80
  %pgd = getelementptr i8, ptr %ops, i32 36
  %0 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgd, align 4
  %start_level = getelementptr i8, ptr %ops, i32 28
  %2 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_level, align 4
  %conv = zext i32 %iova to i64
  %bits_per_level = getelementptr i8, ptr %ops, i32 32
  %pgd_bits = getelementptr i8, ptr %ops, i32 24
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %entry
  %ptep.0 = phi ptr [ %1, %entry ], [ %17, %if.end19.do.body_crit_edge ]
  %lvl.0 = phi i32 [ %3, %entry ], [ %inc, %if.end19.do.body_crit_edge ]
  %tobool.not = icmp eq ptr %ptep.0, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %do.body
  %sub = sub i32 4, %lvl.0
  %4 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_level, align 8
  %mul = mul i32 %5, %sub
  %add = add i32 %mul, 3
  %sh_prom = zext i32 %add to i64
  %shr = lshr i64 %conv, %sh_prom
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.0, i32 %3)
  %cmp = icmp eq i32 %lvl.0, %3
  br i1 %cmp, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %pgd_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgd_bits, align 8
  %sub8 = sub i32 %7, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %sub8, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %add9 = add i32 %cond, %5
  %notmask = shl nsw i32 -1, %add9
  %sub10 = xor i32 %notmask, -1
  %8 = trunc i64 %shr to i32
  %idx.ext = and i32 %sub10, %8
  %add.ptr12 = getelementptr i64, ptr %ptep.0, i32 %idx.ext
  %9 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load volatile i64, ptr %add.ptr12, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool15.not = icmp eq i64 %10, 0
  br i1 %tobool15.not, label %cond.end.cleanup_crit_edge, label %if.end17

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %cond.end
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %lvl.0)
  %cmp.i = icmp ne i32 %lvl.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp1.not.i = icmp eq i32 %12, 5
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  %and4.i = and i64 %10, 3
  %..i = select i1 %or.cond.i, i64 1, i64 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and4.i, i64 %..i)
  %cmp5.i = icmp eq i64 %and4.i, %..i
  br i1 %cmp5.i, label %found_translation, label %if.end19

if.end19:                                         ; preds = %if.end17
  %13 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits_per_level, align 8
  %shl.i = shl i32 8, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl.i)
  %cmp.i63 = icmp ult i32 %shl.i, 65536
  %15 = trunc i64 %10 to i32
  %retval.0.v.i = select i1 %cmp.i63, i32 -4096, i32 -65536
  %retval.0.i = and i32 %retval.0.v.i, %15
  %16 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %retval.0.i, i32 -2130706432, i32 8454144) #14, !srcloc !84
  %17 = inttoptr i32 %16 to ptr
  %inc = add i32 %lvl.0, 1
  %cmp23 = icmp slt i32 %inc, 4
  br i1 %cmp23, label %if.end19.do.body_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

found_translation:                                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %notmask62 = shl nsw i64 -1, %sh_prom
  %18 = trunc i64 %notmask62 to i32
  %19 = xor i32 %18, -1
  %conv35 = and i32 %19, %iova
  %20 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits_per_level, align 8
  %shl.i65 = shl i32 8, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl.i65)
  %cmp.i66 = icmp ult i32 %shl.i65, 65536
  %22 = trunc i64 %10 to i32
  %retval.0.v.i67 = select i1 %cmp.i66, i32 -4096, i32 -65536
  %retval.0.i68 = and i32 %retval.0.v.i67, %22
  %or = or i32 %retval.0.i68, %conv35
  br label %cleanup

cleanup:                                          ; preds = %found_translation, %if.end19.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %found_translation ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @arm_lpae_install_table(ptr noundef %table, ptr noundef %ptep, i64 noundef %curr, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  %call = tail call i32 @__virt_to_phys(i32 noundef %0) #8
  %1 = and i32 %call, -4096
  %and.i = zext i32 %1 to i64
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg1, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i64 3, i64 -9223372036854775805
  %spec.select = or i64 %spec.select.v, %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ptep, i32 noundef 8) #8
  tail call void @llvm.prefetch.p0(ptr %ptep, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i64 } asm sideeffect "1:\09ldrexd\09\09$1, ${1:H}, [$3]\0A\09teq\09\09$1, $4\0A\09teqeq\09\09${1:H}, ${4:H}\0A\09bne\09\092f\0A\09strexd\09\09$0, $5, ${5:H}, [$3]\0A\09teq\09\09$0, #0\0A\09bne\09\091b\0A2:", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %ptep, ptr %ptep, i64 %curr, i64 %spec.select, ptr elementtype(i64) %ptep) #8, !srcloc !87
  %asmresult1.i = extractvalue { i32, i64 } %4, 1
  %coherent_walk = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %coherent_walk to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %coherent_walk, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  %and7 = and i64 %asmresult1.i, 36028797018963968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  %or.cond = select i1 %tobool6.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %if.end10, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %entry
  %iommu_dev.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %iommu_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iommu_dev.i, align 8
  %9 = ptrtoint ptr %ptep to i32
  %call.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %9) #8
  tail call void @dma_sync_single_for_device(ptr noundef %8, i32 noundef %call.i.i.i, i32 noundef 8, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %asmresult1.i, i64 %curr)
  %cmp = icmp eq i64 %asmresult1.i, %curr
  br i1 %cmp, label %do.body13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %or14 = or i64 %spec.select, 36028797018963968
  %10 = ptrtoint ptr %ptep to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %or14, ptr %ptep, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i64 %asmresult1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__arm_lpae_unmap(ptr nocapture noundef readonly %data, ptr noundef %gather, i32 noundef %iova, i32 noundef %size, i32 noundef %pgcount, i32 noundef %lvl, ptr noundef %ptep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %lvl)
  %cmp321 = icmp eq i32 %lvl, 4
  br i1 %cmp321, label %entry.do.end_crit_edge, label %if.end22.lr.ph, !prof !83

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end22.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %iova to i64
  %bits_per_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %data, i32 0, i32 3
  %start_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %data, i32 0, i32 2
  %pgd_bits = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %data, i32 0, i32 1
  %conv72 = zext i32 %size to i64
  %cfg1.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2
  %coherent_walk.i284 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 4
  %iommu_dev.i.i287 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 6
  br label %if.end22

do.end:                                           ; preds = %tailrecurse.backedge.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 628, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end22:                                         ; preds = %tailrecurse.backedge.if.end22_crit_edge, %if.end22.lr.ph
  %ptep.tr323 = phi ptr [ %ptep, %if.end22.lr.ph ], [ %ptep.tr.be, %tailrecurse.backedge.if.end22_crit_edge ]
  %lvl.tr322 = phi i32 [ %lvl, %if.end22.lr.ph ], [ %lvl.tr.be, %tailrecurse.backedge.if.end22_crit_edge ]
  %sub = sub i32 4, %lvl.tr322
  %0 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_level, align 8
  %mul = mul i32 %1, %sub
  %add = add i32 %mul, 3
  %sh_prom = zext i32 %add to i64
  %shr = lshr i64 %conv, %sh_prom
  %2 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %lvl.tr322)
  %cmp24 = icmp eq i32 %3, %lvl.tr322
  br i1 %cmp24, label %cond.true, label %if.end22.cond.end_crit_edge

if.end22.cond.end_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %pgd_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgd_bits, align 8
  %sub27 = sub i32 %5, %1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end22.cond.end_crit_edge
  %cond = phi i32 [ %sub27, %cond.true ], [ 0, %if.end22.cond.end_crit_edge ]
  %add28 = add i32 %cond, %1
  %notmask = shl nsw i32 -1, %add28
  %sub29 = xor i32 %notmask, -1
  %6 = trunc i64 %shr to i32
  %conv31 = and i32 %sub29, %6
  %add.ptr = getelementptr i64, ptr %ptep.tr323, i32 %conv31
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load volatile i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool37.not = icmp eq i64 %8, 0
  br i1 %tobool37.not, label %do.end55, label %if.end71, !prof !83

do.end55:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 634, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end71:                                         ; preds = %cond.end
  %shl78 = shl nuw i64 1, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl78, i64 %conv72)
  %cmp79 = icmp eq i64 %shl78, %conv72
  br i1 %cmp79, label %if.then81, label %if.else150

if.then81:                                        ; preds = %if.end71
  %shl83 = shl i32 8, %1
  %shr84 = lshr exact i32 %shl83, 3
  %sub85 = sub i32 %shr84, %conv31
  %9 = tail call i32 @llvm.smin.i32(i32 %sub85, i32 %pgcount)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp93326 = icmp sgt i32 %9, 0
  br i1 %cmp93326, label %do.end97.lr.ph, label %if.then81.while.end_crit_edge

if.then81.while.end_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end97.lr.ph:                                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %lvl.tr322)
  %cmp.i = icmp ne i32 %lvl.tr322, 3
  %tlb.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 5
  %cookie.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 1
  %add140 = add i32 %lvl.tr322, 1
  %tobool.not.i234 = icmp eq ptr %gather, null
  %queued.i = getelementptr inbounds %struct.iommu_iotlb_gather, ptr %gather, i32 0, i32 4
  br label %do.end97

do.end97:                                         ; preds = %if.end148.do.end97_crit_edge, %do.end97.lr.ph
  %ptep.addr.0329 = phi ptr [ %add.ptr, %do.end97.lr.ph ], [ %incdec.ptr, %if.end148.do.end97_crit_edge ]
  %i.0327 = phi i32 [ 0, %do.end97.lr.ph ], [ %inc, %if.end148.do.end97_crit_edge ]
  %10 = ptrtoint ptr %ptep.addr.0329 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load volatile i64, ptr %ptep.addr.0329, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool100.not = icmp eq i64 %11, 0
  br i1 %tobool100.not, label %do.end118, label %if.end134.critedge, !prof !83

do.end118:                                        ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 644, i32 noundef 9, ptr noundef null) #8
  br label %while.end

if.end134.critedge:                               ; preds = %do.end97
  %12 = ptrtoint ptr %ptep.addr.0329 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %ptep.addr.0329, align 8
  %13 = ptrtoint ptr %coherent_walk.i284 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %coherent_walk.i284, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end134.critedge.__arm_lpae_clear_pte.exit_crit_edge

if.end134.critedge.__arm_lpae_clear_pte.exit_crit_edge: ; preds = %if.end134.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_lpae_clear_pte.exit

if.then.i:                                        ; preds = %if.end134.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %iommu_dev.i.i287 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iommu_dev.i.i287, align 8
  %17 = ptrtoint ptr %ptep.addr.0329 to i32
  %call.i.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %17) #8
  tail call void @dma_sync_single_for_device(ptr noundef %16, i32 noundef %call.i.i.i.i, i32 noundef 8, i32 noundef 1) #8
  br label %__arm_lpae_clear_pte.exit

__arm_lpae_clear_pte.exit:                        ; preds = %if.then.i, %if.end134.critedge.__arm_lpae_clear_pte.exit_crit_edge
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp1.not.i = icmp eq i32 %19, 5
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  %and4.i = and i64 %11, 3
  %..i = select i1 %or.cond.i, i64 1, i64 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and4.i, i64 %..i)
  %cmp5.i = icmp eq i64 %and4.i, %..i
  br i1 %cmp5.i, label %if.else, label %if.then135

if.then135:                                       ; preds = %__arm_lpae_clear_pte.exit
  %mul136 = mul i32 %i.0327, %size
  %add137 = add i32 %mul136, %iova
  %20 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits_per_level, align 8
  %shl139 = shl i32 8, %21
  %22 = ptrtoint ptr %tlb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tlb.i, align 4
  %tobool.not.i231 = icmp eq ptr %23, null
  br i1 %tobool.not.i231, label %if.then135.io_pgtable_tlb_flush_walk.exit_crit_edge, label %land.lhs.true.i

if.then135.io_pgtable_tlb_flush_walk.exit_crit_edge: ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  br label %io_pgtable_tlb_flush_walk.exit

land.lhs.true.i:                                  ; preds = %if.then135
  %tlb_flush_walk.i = getelementptr inbounds %struct.iommu_flush_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %tlb_flush_walk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tlb_flush_walk.i, align 4
  %tobool3.not.i = icmp eq ptr %25, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.io_pgtable_tlb_flush_walk.exit_crit_edge, label %if.then.i232

land.lhs.true.i.io_pgtable_tlb_flush_walk.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %io_pgtable_tlb_flush_walk.exit

if.then.i232:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cookie.i, align 4
  tail call void %25(i32 noundef %add137, i32 noundef %size, i32 noundef %shl139, ptr noundef %27) #8
  br label %io_pgtable_tlb_flush_walk.exit

io_pgtable_tlb_flush_walk.exit:                   ; preds = %if.then.i232, %land.lhs.true.i.io_pgtable_tlb_flush_walk.exit_crit_edge, %if.then135.io_pgtable_tlb_flush_walk.exit_crit_edge
  %28 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bits_per_level, align 8
  %shl.i = shl i32 8, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl.i)
  %cmp.i233 = icmp ult i32 %shl.i, 65536
  %30 = trunc i64 %11 to i32
  %retval.0.v.i = select i1 %cmp.i233, i32 -4096, i32 -65536
  %retval.0.i = and i32 %retval.0.v.i, %30
  %31 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %retval.0.i, i32 -2130706432, i32 8454144) #14, !srcloc !84
  %32 = inttoptr i32 %31 to ptr
  tail call fastcc void @__arm_lpae_free_pgtable(ptr noundef %data, i32 noundef %add140, ptr noundef %32)
  br label %if.end148

if.else:                                          ; preds = %__arm_lpae_clear_pte.exit
  br i1 %tobool.not.i234, label %if.else.if.then144_crit_edge, label %iommu_iotlb_gather_queued.exit

if.else.if.then144_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

iommu_iotlb_gather_queued.exit:                   ; preds = %if.else
  %33 = ptrtoint ptr %queued.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %queued.i, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool1.i.not = icmp eq i8 %34, 0
  br i1 %tobool1.i.not, label %iommu_iotlb_gather_queued.exit.if.then144_crit_edge, label %iommu_iotlb_gather_queued.exit.if.end148_crit_edge

iommu_iotlb_gather_queued.exit.if.end148_crit_edge: ; preds = %iommu_iotlb_gather_queued.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

iommu_iotlb_gather_queued.exit.if.then144_crit_edge: ; preds = %iommu_iotlb_gather_queued.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.then144:                                       ; preds = %iommu_iotlb_gather_queued.exit.if.then144_crit_edge, %if.else.if.then144_crit_edge
  %mul145 = mul i32 %i.0327, %size
  %add146 = add i32 %mul145, %iova
  %35 = ptrtoint ptr %tlb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tlb.i, align 4
  %tobool.not.i236 = icmp eq ptr %36, null
  br i1 %tobool.not.i236, label %if.then144.if.end148_crit_edge, label %land.lhs.true.i238

if.then144.if.end148_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

land.lhs.true.i238:                               ; preds = %if.then144
  %tlb_add_page.i = getelementptr inbounds %struct.iommu_flush_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %tlb_add_page.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tlb_add_page.i, align 4
  %tobool3.not.i237 = icmp eq ptr %38, null
  br i1 %tobool3.not.i237, label %land.lhs.true.i238.if.end148_crit_edge, label %if.then.i240

land.lhs.true.i238.if.end148_crit_edge:           ; preds = %land.lhs.true.i238
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then.i240:                                     ; preds = %land.lhs.true.i238
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cookie.i, align 4
  tail call void %38(ptr noundef %gather, i32 noundef %add146, i32 noundef %size, ptr noundef %40) #8
  br label %if.end148

if.end148:                                        ; preds = %if.then.i240, %land.lhs.true.i238.if.end148_crit_edge, %if.then144.if.end148_crit_edge, %iommu_iotlb_gather_queued.exit.if.end148_crit_edge, %io_pgtable_tlb_flush_walk.exit
  %incdec.ptr = getelementptr i64, ptr %ptep.addr.0329, i32 1
  %inc = add nuw nsw i32 %i.0327, 1
  %exitcond353.not = icmp eq i32 %inc, %9
  br i1 %exitcond353.not, label %if.end148.while.end_crit_edge, label %if.end148.do.end97_crit_edge

if.end148.do.end97_crit_edge:                     ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end97

if.end148.while.end_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end148.while.end_crit_edge, %do.end118, %if.then81.while.end_crit_edge
  %i.0295 = phi i32 [ %i.0327, %do.end118 ], [ 0, %if.then81.while.end_crit_edge ], [ %9, %if.end148.while.end_crit_edge ]
  %mul149 = mul i32 %i.0295, %size
  br label %cleanup

if.else150:                                       ; preds = %if.end71
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %lvl.tr322)
  %cmp.i241 = icmp ne i32 %lvl.tr322, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %42)
  %cmp1.not.i242 = icmp eq i32 %42, 5
  %or.cond.i243 = or i1 %cmp.i241, %cmp1.not.i242
  %and4.i244 = and i64 %8, 3
  %..i245 = select i1 %or.cond.i243, i64 1, i64 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and4.i244, i64 %..i245)
  %cmp5.i246 = icmp eq i64 %and4.i244, %..i245
  br i1 %cmp5.i246, label %if.then153, label %if.end157

if.then153:                                       ; preds = %if.else150
  %add154 = add i32 %lvl.tr322, 1
  %shl.i248 = shl i32 8, %1
  %sub.i = sub i32 3, %lvl.tr322
  %mul.i = mul i32 %1, %sub.i
  %add.i = add i32 %mul.i, 3
  %sh_prom.i = zext i32 %add.i to i64
  %shl3.i = shl nuw i64 1, %sh_prom.i
  %conv.i = trunc i64 %shl3.i to i32
  %shr.i = lshr exact i32 %shl.i248, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add154)
  %cmp.i249 = icmp eq i32 %add154, 4
  br i1 %cmp.i249, label %do.end.i, label %if.end27.i, !prof !83

do.end.i:                                         ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 572, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end27.i:                                       ; preds = %if.then153
  %call.i = tail call fastcc ptr @__arm_lpae_alloc_pages(i32 noundef %shl.i248, i32 noundef 2592, ptr noundef %cfg1.i) #8
  %tobool28.not.i = icmp eq ptr %call.i, null
  br i1 %tobool28.not.i, label %if.end27.i.cleanup_crit_edge, label %if.end30.i

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %size)
  %cmp31.i = icmp eq i32 %conv.i, %size
  br i1 %cmp31.i, label %if.then33.i, label %if.end30.i.if.end59.i_crit_edge

if.end30.i.if.end59.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

if.then33.i:                                      ; preds = %if.end30.i
  %43 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bits_per_level, align 8
  %mul37.i = mul i32 %44, %sub.i
  %add38.i = add i32 %mul37.i, 3
  %sh_prom39.i = zext i32 %add38.i to i64
  %shr40.i = lshr i64 %conv, %sh_prom39.i
  %45 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %start_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add154)
  %cmp42.i = icmp eq i32 %46, %add154
  br i1 %cmp42.i, label %cond.true.i, label %if.then33.i.cond.end.i_crit_edge

if.then33.i.cond.end.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %pgd_bits to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pgd_bits, align 8
  %sub45.i = sub i32 %48, %44
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then33.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub45.i, %cond.true.i ], [ 0, %if.then33.i.cond.end.i_crit_edge ]
  %add46.i = add i32 %cond.i, %44
  %notmask.i = shl nsw i32 -1, %add46.i
  %sub48.i = xor i32 %notmask.i, -1
  %49 = trunc i64 %shr40.i to i32
  %conv50.i = and i32 %sub48.i, %49
  %sub51.i = sub i32 %shr.i, %conv50.i
  %50 = tail call i32 @llvm.smin.i32(i32 %sub51.i, i32 %pgcount)
  br label %if.end59.i

if.end59.i:                                       ; preds = %cond.end.i, %if.end30.i.if.end59.i_crit_edge
  %unmap_idx_start.0.i = phi i32 [ %conv50.i, %cond.end.i ], [ -1, %if.end30.i.if.end59.i_crit_edge ]
  %num_entries.0.i = phi i32 [ %50, %cond.end.i ], [ 0, %if.end30.i.if.end59.i_crit_edge ]
  %and61.i = and i64 %8, 27021597764227068
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %1)
  %cmp62.i317.not = icmp ugt i32 %1, 28
  br i1 %cmp62.i317.not, label %if.end59.i.for.end.i_crit_edge, label %for.body.i.lr.ph

if.end59.i.for.end.i_crit_edge:                   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.lr.ph:                                 ; preds = %if.end59.i
  %51 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bits_per_level, align 8
  %shl.i290 = shl i32 8, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl.i290)
  %cmp.i291 = icmp ult i32 %shl.i290, 65536
  %retval.0.v.i292 = select i1 %cmp.i291, i32 -4096, i32 -65536
  %53 = trunc i64 %8 to i32
  %retval.0.i293 = and i32 %retval.0.v.i292, %53
  %add66.i = add i32 %num_entries.0.i, %unmap_idx_start.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add154)
  %cmp4.i = icmp eq i32 %add154, 3
  %smax = tail call i32 @llvm.smax.i32(i32 %shr.i, i32 1)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.lr.ph
  %i.0.i320 = phi i32 [ 0, %for.body.i.lr.ph ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %blk_paddr.0.i318 = phi i32 [ %retval.0.i293, %for.body.i.lr.ph ], [ %add71.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i320, i32 %unmap_idx_start.0.i)
  %cmp64.not.i = icmp sge i32 %i.0.i320, %unmap_idx_start.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i320, i32 %add66.i)
  %cmp67.i = icmp slt i32 %i.0.i320, %add66.i
  %or.cond.i250 = select i1 %cmp64.not.i, i1 %cmp67.i, i1 false
  br i1 %or.cond.i250, label %for.body.i.for.inc.i_crit_edge, label %if.end70.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end70.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr i64, ptr %call.i, i32 %i.0.i320
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %55)
  %cmp.not.i = icmp ne i32 %55, 5
  %or.cond.i280 = and i1 %cmp4.i, %cmp.not.i
  %pte.0.v.i = select i1 %or.cond.i280, i64 3, i64 1
  %56 = and i32 %blk_paddr.0.i318, -4096
  %and.i.i = zext i32 %56 to i64
  %pte.0.i = or i64 %and61.i, %and.i.i
  %or11.i = or i64 %pte.0.i, %pte.0.v.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %or11.i, ptr %arrayidx.i, align 8
  %58 = ptrtoint ptr %coherent_walk.i284 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %coherent_walk.i284, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i285 = icmp eq i8 %59, 0
  br i1 %tobool.not.i285, label %if.then12.i, label %if.end70.i.for.inc.i_crit_edge

if.end70.i.for.inc.i_crit_edge:                   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then12.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %iommu_dev.i.i287 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iommu_dev.i.i287, align 8
  %62 = ptrtoint ptr %arrayidx.i to i32
  %call.i.i.i.i288 = tail call i32 @__virt_to_phys(i32 noundef %62) #8
  tail call void @dma_sync_single_for_device(ptr noundef %61, i32 noundef %call.i.i.i.i288, i32 noundef 8, i32 noundef 1) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %if.end70.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0.i320, 1
  %add71.i = add i32 %blk_paddr.0.i318, %conv.i
  %exitcond.not = icmp eq i32 %inc.i, %smax
  br i1 %exitcond.not, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end59.i.for.end.i_crit_edge
  %call72.i = tail call fastcc i64 @arm_lpae_install_table(ptr noundef nonnull %call.i, ptr noundef %add.ptr, i64 noundef %8, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call72.i, i64 %8)
  %cmp73.not.i = icmp eq i64 %call72.i, %8
  br i1 %cmp73.not.i, label %if.else.i, label %if.then75.i

if.then75.i:                                      ; preds = %for.end.i
  %63 = ptrtoint ptr %coherent_walk.i284 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %coherent_walk.i284, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i271 = icmp eq i8 %64, 0
  br i1 %tobool.not.i271, label %if.then.i272, label %if.then75.i.__arm_lpae_free_pages.exit_crit_edge

if.then75.i.__arm_lpae_free_pages.exit_crit_edge: ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_lpae_free_pages.exit

if.then.i272:                                     ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %iommu_dev.i.i287 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iommu_dev.i.i287, align 8
  %67 = ptrtoint ptr %call.i to i32
  %call.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %67) #8
  tail call void @dma_unmap_page_attrs(ptr noundef %66, i32 noundef %call.i.i.i, i32 noundef %shl.i248, i32 noundef 1, i32 noundef 0) #8
  br label %__arm_lpae_free_pages.exit

__arm_lpae_free_pages.exit:                       ; preds = %if.then.i272, %if.then75.i.__arm_lpae_free_pages.exit_crit_edge
  %dec.i.i = add i32 %shl.i248, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %68 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #8, !range !80
  %sub.i.i.i = sub nuw nsw i32 32, %68
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %69 = ptrtoint ptr %call.i to i32
  tail call void @free_pages(i32 noundef %69, i32 noundef %cond.i.i.i) #8
  %and77.i = and i64 %call72.i, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %and77.i)
  %cmp78.not.i = icmp eq i64 %and77.i, 3
  br i1 %cmp78.not.i, label %if.end81.i, label %__arm_lpae_free_pages.exit.cleanup_crit_edge

__arm_lpae_free_pages.exit.cleanup_crit_edge:     ; preds = %__arm_lpae_free_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end81.i:                                       ; preds = %__arm_lpae_free_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bits_per_level, align 8
  %shl.i266 = shl i32 8, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl.i266)
  %cmp.i267 = icmp ult i32 %shl.i266, 65536
  %72 = trunc i64 %call72.i to i32
  %retval.0.v.i268 = select i1 %cmp.i267, i32 -4096, i32 -65536
  %retval.0.i269 = and i32 %retval.0.v.i268, %72
  %73 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %retval.0.i269, i32 -2130706432, i32 8454144) #14, !srcloc !84
  %74 = inttoptr i32 %73 to ptr
  br label %tailrecurse.backedge

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %unmap_idx_start.0.i)
  %cmp84.i = icmp sgt i32 %unmap_idx_start.0.i, -1
  br i1 %cmp84.i, label %for.cond87.i.preheader, label %if.else.i.tailrecurse.backedge_crit_edge

if.else.i.tailrecurse.backedge_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tailrecurse.backedge

for.cond87.i.preheader:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_entries.0.i)
  %cmp88.i324 = icmp sgt i32 %num_entries.0.i, 0
  br i1 %cmp88.i324, label %for.body90.i.lr.ph, label %for.cond87.i.preheader.for.end96.i_crit_edge

for.cond87.i.preheader.for.end96.i_crit_edge:     ; preds = %for.cond87.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96.i

for.body90.i.lr.ph:                               ; preds = %for.cond87.i.preheader
  %tlb.i257 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 5
  %cookie.i262 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 1
  br label %for.body90.i

for.body90.i:                                     ; preds = %io_pgtable_tlb_add_page.exit264.for.body90.i_crit_edge, %for.body90.i.lr.ph
  %i.1.i325 = phi i32 [ 0, %for.body90.i.lr.ph ], [ %inc95.i, %io_pgtable_tlb_add_page.exit264.for.body90.i_crit_edge ]
  %mul92.i = mul i32 %i.1.i325, %size
  %add93.i = add i32 %mul92.i, %iova
  %75 = ptrtoint ptr %tlb.i257 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tlb.i257, align 4
  %tobool.not.i258 = icmp eq ptr %76, null
  br i1 %tobool.not.i258, label %for.body90.i.io_pgtable_tlb_add_page.exit264_crit_edge, label %land.lhs.true.i261

for.body90.i.io_pgtable_tlb_add_page.exit264_crit_edge: ; preds = %for.body90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %io_pgtable_tlb_add_page.exit264

land.lhs.true.i261:                               ; preds = %for.body90.i
  %tlb_add_page.i259 = getelementptr inbounds %struct.iommu_flush_ops, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %tlb_add_page.i259 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tlb_add_page.i259, align 4
  %tobool3.not.i260 = icmp eq ptr %78, null
  br i1 %tobool3.not.i260, label %land.lhs.true.i261.io_pgtable_tlb_add_page.exit264_crit_edge, label %if.then.i263

land.lhs.true.i261.io_pgtable_tlb_add_page.exit264_crit_edge: ; preds = %land.lhs.true.i261
  call void @__sanitizer_cov_trace_pc() #10
  br label %io_pgtable_tlb_add_page.exit264

if.then.i263:                                     ; preds = %land.lhs.true.i261
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %cookie.i262 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cookie.i262, align 4
  tail call void %78(ptr noundef %gather, i32 noundef %add93.i, i32 noundef %size, ptr noundef %80) #8
  br label %io_pgtable_tlb_add_page.exit264

io_pgtable_tlb_add_page.exit264:                  ; preds = %if.then.i263, %land.lhs.true.i261.io_pgtable_tlb_add_page.exit264_crit_edge, %for.body90.i.io_pgtable_tlb_add_page.exit264_crit_edge
  %inc95.i = add nuw nsw i32 %i.1.i325, 1
  %exitcond352.not = icmp eq i32 %inc95.i, %num_entries.0.i
  br i1 %exitcond352.not, label %io_pgtable_tlb_add_page.exit264.for.end96.i_crit_edge, label %io_pgtable_tlb_add_page.exit264.for.body90.i_crit_edge

io_pgtable_tlb_add_page.exit264.for.body90.i_crit_edge: ; preds = %io_pgtable_tlb_add_page.exit264
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body90.i

io_pgtable_tlb_add_page.exit264.for.end96.i_crit_edge: ; preds = %io_pgtable_tlb_add_page.exit264
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96.i

for.end96.i:                                      ; preds = %io_pgtable_tlb_add_page.exit264.for.end96.i_crit_edge, %for.cond87.i.preheader.for.end96.i_crit_edge
  %mul97.i = mul i32 %num_entries.0.i, %size
  br label %cleanup

tailrecurse.backedge:                             ; preds = %if.end157, %if.else.i.tailrecurse.backedge_crit_edge, %if.end81.i
  %lvl.tr.be = phi i32 [ %add160, %if.end157 ], [ %add154, %if.else.i.tailrecurse.backedge_crit_edge ], [ %add154, %if.end81.i ]
  %ptep.tr.be = phi ptr [ %83, %if.end157 ], [ %call.i, %if.else.i.tailrecurse.backedge_crit_edge ], [ %74, %if.end81.i ]
  %cmp = icmp eq i32 %lvl.tr.be, 4
  br i1 %cmp, label %tailrecurse.backedge.do.end_crit_edge, label %tailrecurse.backedge.if.end22_crit_edge, !prof !83

tailrecurse.backedge.if.end22_crit_edge:          ; preds = %tailrecurse.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

tailrecurse.backedge.do.end_crit_edge:            ; preds = %tailrecurse.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end157:                                        ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i253 = shl i32 8, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl.i253)
  %cmp.i254 = icmp ult i32 %shl.i253, 65536
  %81 = trunc i64 %8 to i32
  %retval.0.v.i255 = select i1 %cmp.i254, i32 -4096, i32 -65536
  %retval.0.i256 = and i32 %retval.0.v.i255, %81
  %82 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %retval.0.i256, i32 -2130706432, i32 8454144) #14, !srcloc !84
  %83 = inttoptr i32 %82 to ptr
  %add160 = add i32 %lvl.tr322, 1
  br label %tailrecurse.backedge

cleanup:                                          ; preds = %for.end96.i, %__arm_lpae_free_pages.exit.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %do.end.i, %while.end, %do.end55, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end55 ], [ %mul149, %while.end ], [ 0, %do.end.i ], [ %mul97.i, %for.end96.i ], [ 0, %if.end27.i.cleanup_crit_edge ], [ 0, %__arm_lpae_free_pages.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__arm_lpae_free_pgtable(ptr nocapture noundef readonly %data, i32 noundef %lvl, ptr noundef %ptep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %start_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lvl)
  %cmp = icmp eq i32 %1, %lvl
  %pgd_bits = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %data, i32 0, i32 1
  %bits_per_level = getelementptr inbounds %struct.arm_lpae_io_pgtable, ptr %data, i32 0, i32 3
  %.pn.in = select i1 %cmp, ptr %pgd_bits, ptr %bits_per_level
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load i32, ptr %.pn.in, align 8
  %table_size.0 = shl i32 8, %.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %lvl)
  %cmp2 = icmp eq i32 %lvl, 3
  %end.0.idx = select i1 %cmp2, i32 0, i32 %table_size.0
  %end.0 = getelementptr i8, ptr %ptep, i32 %end.0.idx
  %cmp6.not29 = icmp eq ptr %end.0, %ptep
  br i1 %cmp6.not29, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %lvl)
  %cmp.i = icmp ne i32 %lvl, 3
  %add = add i32 %lvl, 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %ptep.addr.030 = phi ptr [ %ptep, %while.body.lr.ph ], [ %incdec.ptr, %cleanup.while.body_crit_edge ]
  %incdec.ptr = getelementptr i64, ptr %ptep.addr.030, i32 1
  %3 = ptrtoint ptr %ptep.addr.030 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ptep.addr.030, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %lor.lhs.false

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %while.body
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 5
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  %and4.i = and i64 %4, 3
  %..i = select i1 %or.cond.i, i64 1, i64 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and4.i, i64 %..i)
  %cmp5.i = icmp eq i64 %and4.i, %..i
  br i1 %cmp5.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bits_per_level, align 8
  %shl.i = shl i32 8, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl.i)
  %cmp.i28 = icmp ult i32 %shl.i, 65536
  %9 = trunc i64 %4 to i32
  %retval.0.v.i = select i1 %cmp.i28, i32 -4096, i32 -65536
  %retval.0.i = and i32 %retval.0.v.i, %9
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %retval.0.i, i32 -2130706432, i32 8454144) #14, !srcloc !84
  %11 = inttoptr i32 %10 to ptr
  tail call fastcc void @__arm_lpae_free_pgtable(ptr noundef %data, i32 noundef %add, ptr noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %cmp6.not = icmp eq ptr %incdec.ptr, %end.0
  br i1 %cmp6.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %coherent_walk.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %coherent_walk.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %coherent_walk.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.end.__arm_lpae_free_pages.exit_crit_edge

while.end.__arm_lpae_free_pages.exit_crit_edge:   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_lpae_free_pages.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %iommu_dev.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %iommu_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iommu_dev.i, align 8
  %16 = ptrtoint ptr %ptep to i32
  %call.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %16) #8
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %call.i.i.i, i32 noundef %table_size.0, i32 noundef 1, i32 noundef 0) #8
  br label %__arm_lpae_free_pages.exit

__arm_lpae_free_pages.exit:                       ; preds = %if.then.i, %while.end.__arm_lpae_free_pages.exit_crit_edge
  %dec.i.i = add i32 %table_size.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %17 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #8, !range !80
  %sub.i.i.i = sub nuw nsw i32 32, %17
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %18 = ptrtoint ptr %ptep to i32
  tail call void @free_pages(i32 noundef %18, i32 noundef %cond.i.i.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arm_lpae_run_tests(ptr noundef %cfg) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @selftest_running, align 1
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end442.for.body_crit_edge, %entry
  %i.0588 = phi i32 [ 0, %entry ], [ %inc, %for.end442.for.body_crit_edge ]
  store ptr %cfg, ptr @cfg_cookie, align 4
  %arrayidx = getelementptr [2 x i32], ptr @arm_lpae_run_tests.fmts, i32 0, i32 %i.0588
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call ptr @alloc_io_pgtable_ops(i32 noundef %1, ptr noundef %cfg, ptr noundef %cfg) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %iova_to_phys = getelementptr inbounds %struct.io_pgtable_ops, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iova_to_phys, align 4
  %call2 = tail call i32 %3(ptr noundef nonnull %call, i32 noundef 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end27, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1261, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef nonnull %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %4 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iova_to_phys, align 4
  %call29 = tail call i32 %5(ptr noundef nonnull %call, i32 noundef 1073741866) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end59, label %do.end44

do.end44:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1264, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef nonnull %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end59:                                         ; preds = %if.end27
  %6 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iova_to_phys, align 4
  %call61 = tail call i32 %7(ptr noundef nonnull %call, i32 noundef -2147483606) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end91, label %do.end76

do.end76:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1267, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef nonnull %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end91:                                         ; preds = %if.end59
  %call92 = tail call i32 @_find_next_bit_be(ptr noundef %pgsize_bitmap, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call92)
  %cmp94582 = icmp slt i32 %call92, 32
  br i1 %cmp94582, label %if.end91.for.body95_crit_edge, label %if.end91.for.end_crit_edge

if.end91.for.end_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end91.for.body95_crit_edge:                    ; preds = %if.end91
  br label %for.body95

for.body95:                                       ; preds = %if.end192.for.body95_crit_edge, %if.end91.for.body95_crit_edge
  %j.0584 = phi i32 [ %call196, %if.end192.for.body95_crit_edge ], [ %call92, %if.end91.for.body95_crit_edge ]
  %iova.0583 = phi i32 [ %add193, %if.end192.for.body95_crit_edge ], [ 0, %if.end91.for.body95_crit_edge ]
  %shl = shl nuw i32 1, %j.0584
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %call96 = tail call i32 %9(ptr noundef %call, i32 noundef %iova.0583, i32 noundef %iova.0583, i32 noundef %shl, i32 noundef 15, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end126, label %do.end111

do.end111:                                        ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1280, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end126:                                        ; preds = %for.body95
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %add = add i32 %shl, %iova.0583
  %call128 = tail call i32 %11(ptr noundef %call, i32 noundef %iova.0583, i32 noundef %add, i32 noundef %shl, i32 noundef 9, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %do.end143, label %if.end158

do.end143:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1285, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end158:                                        ; preds = %if.end126
  %12 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iova_to_phys, align 4
  %add160 = or i32 %iova.0583, 42
  %call161 = tail call i32 %13(ptr noundef %call, i32 noundef %add160) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call161, i32 %add160)
  %cmp163.not = icmp eq i32 %call161, %add160
  br i1 %cmp163.not, label %if.end192, label %do.end177

do.end177:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1288, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end192:                                        ; preds = %if.end158
  %add193 = add i32 %iova.0583, 1073741824
  %add195 = add nsw i32 %j.0584, 1
  %call196 = tail call i32 @_find_next_bit_be(ptr noundef %pgsize_bitmap, i32 noundef 32, i32 noundef %add195) #8
  %cmp94 = icmp slt i32 %call196, 32
  br i1 %cmp94, label %if.end192.for.body95_crit_edge, label %if.end192.for.end_crit_edge

if.end192.for.end_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end192.for.body95_crit_edge:                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body95

for.end:                                          ; preds = %if.end192.for.end_crit_edge, %if.end91.for.end_crit_edge
  %14 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pgsize_bitmap, align 4
  %16 = tail call i32 @llvm.cttz.i32(i32 %15, i1 false) #8, !range !80
  %shl199 = shl nuw i32 1, %16
  %unmap = getelementptr inbounds %struct.io_pgtable_ops, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unmap, align 4
  %add200 = add nuw i32 %shl199, 1073741824
  %call201 = tail call i32 %18(ptr noundef %call, i32 noundef %add200, i32 noundef %shl199, ptr noundef null) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call201, i32 %shl199)
  %cmp202.not = icmp eq i32 %call201, %shl199
  br i1 %cmp202.not, label %if.end231, label %do.end216

do.end216:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1296, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end231:                                        ; preds = %for.end
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %call234 = tail call i32 %20(ptr noundef %call, i32 noundef %add200, i32 noundef %shl199, i32 noundef %shl199, i32 noundef 1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.end264, label %do.end249

do.end249:                                        ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1300, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end264:                                        ; preds = %if.end231
  %21 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iova_to_phys, align 4
  %add267 = add nuw i32 %shl199, 1073741866
  %call268 = tail call i32 %22(ptr noundef %call, i32 noundef %add267) #8
  %add269 = add nuw i32 %shl199, 42
  call void @__sanitizer_cov_trace_cmp4(i32 %call268, i32 %add269)
  %cmp270.not = icmp eq i32 %call268, %add269
  br i1 %cmp270.not, label %if.end299, label %do.end284

do.end284:                                        ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1303, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end299:                                        ; preds = %if.end264
  %call301 = tail call i32 @_find_next_bit_be(ptr noundef %pgsize_bitmap, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call301)
  %cmp303585 = icmp slt i32 %call301, 32
  br i1 %cmp303585, label %if.end299.for.body304_crit_edge, label %if.end299.for.end442_crit_edge

if.end299.for.end442_crit_edge:                   ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end442

if.end299.for.body304_crit_edge:                  ; preds = %if.end299
  br label %for.body304

for.body304:                                      ; preds = %if.end436.for.body304_crit_edge, %if.end299.for.body304_crit_edge
  %j.1587 = phi i32 [ %call441, %if.end436.for.body304_crit_edge ], [ %call301, %if.end299.for.body304_crit_edge ]
  %iova.1586 = phi i32 [ %add437, %if.end436.for.body304_crit_edge ], [ 0, %if.end299.for.body304_crit_edge ]
  %shl305 = shl nuw i32 1, %j.1587
  %23 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unmap, align 4
  %call307 = tail call i32 %24(ptr noundef %call, i32 noundef %iova.1586, i32 noundef %shl305, ptr noundef null) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call307, i32 %shl305)
  %cmp308.not = icmp eq i32 %call307, %shl305
  br i1 %cmp308.not, label %if.end337, label %do.end322

do.end322:                                        ; preds = %for.body304
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1311, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end337:                                        ; preds = %for.body304
  %25 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iova_to_phys, align 4
  %add339 = or i32 %iova.1586, 42
  %call340 = tail call i32 %26(ptr noundef %call, i32 noundef %add339) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %tobool341.not = icmp eq i32 %call340, 0
  br i1 %tobool341.not, label %if.end370, label %do.end355

do.end355:                                        ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1314, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end370:                                        ; preds = %if.end337
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call, align 4
  %call372 = tail call i32 %28(ptr noundef %call, i32 noundef %iova.1586, i32 noundef %iova.1586, i32 noundef %shl305, i32 noundef 2, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %if.end402, label %do.end387

do.end387:                                        ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1318, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end402:                                        ; preds = %if.end370
  %29 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iova_to_phys, align 4
  %call405 = tail call i32 %30(ptr noundef %call, i32 noundef %add339) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call405, i32 %add339)
  %cmp407.not = icmp eq i32 %call405, %add339
  br i1 %cmp407.not, label %if.end436, label %do.end421

do.end421:                                        ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1321, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %i.0588) #8
  tail call fastcc void @arm_lpae_dump_ops(ptr noundef %call) #12
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end436:                                        ; preds = %if.end402
  %add437 = add i32 %iova.1586, 1073741824
  %add440 = add nsw i32 %j.1587, 1
  %call441 = tail call i32 @_find_next_bit_be(ptr noundef %pgsize_bitmap, i32 noundef 32, i32 noundef %add440) #8
  %cmp303 = icmp slt i32 %call441, 32
  br i1 %cmp303, label %if.end436.for.body304_crit_edge, label %if.end436.for.end442_crit_edge

if.end436.for.end442_crit_edge:                   ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end442

if.end436.for.body304_crit_edge:                  ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body304

for.end442:                                       ; preds = %if.end436.for.end442_crit_edge, %if.end299.for.end442_crit_edge
  tail call void @free_io_pgtable_ops(ptr noundef %call) #8
  %inc = add nuw nsw i32 %i.0588, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.end444, label %for.end442.for.body_crit_edge

for.end442.for.body_crit_edge:                    ; preds = %for.end442
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end444:                                       ; preds = %for.end442
  call void @__sanitizer_cov_trace_pc() #10
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end444, %do.end421, %do.end387, %do.end355, %do.end322, %do.end284, %do.end249, %do.end216, %do.end177, %do.end143, %do.end111, %do.end76, %do.end44, %do.end12, %do.end
  %retval.0 = phi i32 [ -14, %do.end12 ], [ -14, %do.end44 ], [ -14, %do.end76 ], [ -14, %do.end111 ], [ -14, %do.end177 ], [ -14, %do.end143 ], [ -14, %do.end216 ], [ -14, %do.end249 ], [ -14, %do.end284 ], [ -14, %do.end322 ], [ -14, %do.end355 ], [ -14, %do.end387 ], [ -14, %do.end421 ], [ -12, %do.end ], [ 0, %for.end444 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dummy_tlb_flush_all(ptr nocapture noundef readnone %cookie) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cfg_cookie, align 4
  %cmp.not = icmp eq ptr %0, %cookie
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !81

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1192, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dummy_tlb_flush(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr nocapture noundef readnone %cookie) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cfg_cookie, align 4
  %cmp.not = icmp eq ptr %0, %cookie
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !81

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1198, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load ptr, ptr @cfg_cookie, align 4
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgsize_bitmap, align 4
  %and = and i32 %3, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.end38, label %if.end.if.end44_crit_edge, !prof !83

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1199, i32 noundef 9, ptr noundef null) #8
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dummy_tlb_add_page(ptr nocapture noundef readnone %gather, i32 noundef %iova, i32 noundef %granule, ptr nocapture noundef readnone %cookie) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dummy_tlb_flush(i32 noundef %iova, i32 noundef %granule, i32 noundef %granule, ptr noundef %cookie) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_io_pgtable_ops(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_lpae_dump_ops(ptr nocapture noundef readonly %ops) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pgsize_bitmap = getelementptr i8, ptr %ops, i32 -68
  %0 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pgsize_bitmap, align 4
  %ias = getelementptr i8, ptr %ops, i32 -64
  %2 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ias, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %1, i32 noundef %3) #11
  %start_level = getelementptr i8, ptr %ops, i32 28
  %4 = ptrtoint ptr %start_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_level, align 4
  %pgd_bits = getelementptr i8, ptr %ops, i32 24
  %6 = ptrtoint ptr %pgd_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgd_bits, align 8
  %bits_per_level = getelementptr i8, ptr %ops, i32 32
  %8 = ptrtoint ptr %bits_per_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %9)
  %cmp = icmp ugt i32 %9, 28
  %shl10 = shl i32 8, %9
  %10 = tail call i32 @llvm.ctlz.i32(i32 %shl10, i1 true) #8, !range !80
  %sub.i.op.i = xor i32 %10, 31
  %sub.i = select i1 %cmp, i32 -1, i32 %sub.i.op.i
  %shl = shl i32 8, %7
  %sub = sub i32 4, %5
  %pgd = getelementptr i8, ptr %ops, i32 36
  %11 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pgd, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %sub, i32 noundef %shl, i32 noundef %sub.i, i32 noundef %9, ptr noundef %12) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_io_pgtable_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @io_pgtable_arm_64_lpae_s1_init_fns, !1, !"io_pgtable_arm_64_lpae_s1_init_fns", i1 false, i1 false}
!1 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1156, i32 28}
!2 = !{ptr @io_pgtable_arm_64_lpae_s2_init_fns, !3, !"io_pgtable_arm_64_lpae_s2_init_fns", i1 false, i1 false}
!3 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1161, i32 28}
!4 = !{ptr @io_pgtable_arm_32_lpae_s1_init_fns, !5, !"io_pgtable_arm_32_lpae_s1_init_fns", i1 false, i1 false}
!5 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1166, i32 28}
!6 = !{ptr @io_pgtable_arm_32_lpae_s2_init_fns, !7, !"io_pgtable_arm_32_lpae_s2_init_fns", i1 false, i1 false}
!7 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1171, i32 28}
!8 = !{ptr @io_pgtable_arm_mali_lpae_init_fns, !9, !"io_pgtable_arm_mali_lpae_init_fns", i1 false, i1 false}
!9 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1176, i32 28}
!10 = !{ptr @io_pgtable_apple_dart_init_fns, !11, !"io_pgtable_apple_dart_init_fns", i1 false, i1 false}
!11 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1181, i32 28}
!12 = !{ptr @__initcall__kmod_io_pgtable_arm__245_1368_arm_lpae_do_selftests4, !13, !"__initcall__kmod_io_pgtable_arm__245_1368_arm_lpae_do_selftests4", i1 false, i1 false}
!13 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1368, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 488, i32 6}
!16 = distinct !{null, !17, !"selftest_running", i1 false, i1 false}
!17 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 186, i32 13}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 225, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__arm_lpae_alloc_pages._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @__arm_lpae_alloc_pages._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @arm_lpae_do_selftests.pgsize, !32, !"pgsize", i1 false, i1 false}
!32 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1335, i32 29}
!33 = !{ptr @arm_lpae_do_selftests.ias, !34, !"ias", i1 false, i1 false}
!34 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1341, i32 28}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1356, i32 4}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @arm_lpae_do_selftests._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @arm_lpae_do_selftests._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1365, i32 2}
!42 = !{ptr @arm_lpae_do_selftests._entry.10, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @arm_lpae_do_selftests._entry_ptr.12, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @dummy_tlb_ops, !45, !"dummy_tlb_ops", i1 false, i1 false}
!45 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1209, i32 37}
!46 = !{ptr @cfg_cookie, !47, !"cfg_cookie", i1 false, i1 false}
!47 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1188, i32 31}
!48 = !{ptr @arm_lpae_run_tests.fmts, !49, !"fmts", i1 false, i1 false}
!49 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1236, i32 35}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1252, i32 4}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @arm_lpae_run_tests._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @arm_lpae_run_tests._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1261, i32 11}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1220, i32 2}
!59 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @arm_lpae_dump_ops._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @arm_lpae_dump_ops._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iommu/io-pgtable-arm.c", i32 1222, i32 2}
!64 = !{ptr @arm_lpae_dump_ops._entry.18, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @arm_lpae_dump_ops._entry_ptr.20, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i8 0, i8 2}
!77 = !{i64 2154108692}
!78 = !{i64 2154109324}
!79 = !{i64 2154109953}
!80 = !{i32 0, i32 33}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2154040562, i64 2154041057, i64 2154040599, i64 2154040655, i64 2154040689, i64 2154040713, i64 2154040754, i64 2154040775, i64 2154040803, i64 2154040837}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 2149182870, i64 2149182893, i64 2149182925, i64 2149182957, i64 2149182995, i64 2149183025}
!85 = !{i64 2154069055}
!86 = !{i64 2154046855}
!87 = !{i64 664147, i64 664177, i64 664194, i64 664215, i64 664228, i64 664259, i64 664276, i64 664289}
