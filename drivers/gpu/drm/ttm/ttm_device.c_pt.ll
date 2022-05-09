; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ttm/ttm_device.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ttm_glob\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_glob\09\09\09\09"
module asm "\09.long\09__crc_ttm_glob\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_glob:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_glob\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_glob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_global_swapout\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_global_swapout\09\09\09\09"
module asm "\09.long\09__crc_ttm_global_swapout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_global_swapout:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_global_swapout\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_global_swapout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_device_swapout\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_device_swapout\09\09\09\09"
module asm "\09.long\09__crc_ttm_device_swapout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_device_swapout:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_device_swapout\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_device_swapout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_device_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_device_init\09\09\09\09"
module asm "\09.long\09__crc_ttm_device_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_device_init\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_device_fini\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_device_fini\09\09\09\09"
module asm "\09.long\09__crc_ttm_device_fini\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_device_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_device_fini\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_device_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_device_clear_dma_mappings\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_device_clear_dma_mappings\09\09\09\09"
module asm "\09.long\09__crc_ttm_device_clear_dma_mappings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_device_clear_dma_mappings:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_device_clear_dma_mappings\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_device_clear_dma_mappings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ttm_global = type { ptr, %struct.list_head, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.75] }
%struct.anon.75 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }

@ttm_glob = dso_local global { %struct.ttm_global, [16 x i8] } zeroinitializer, align 32
@__kstrtab_ttm_glob = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_glob = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_glob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_glob to i32), ptr @__kstrtab_ttm_glob, ptr @__kstrtabns_ttm_glob }, section "___ksymtab+ttm_glob", align 4
@ttm_global_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ttm_global_mutex, i64 52), ptr getelementptr (i8, ptr @ttm_global_mutex, i64 52) }, ptr @ttm_global_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_ttm_global_swapout = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_global_swapout = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_global_swapout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_global_swapout to i32), ptr @__kstrtab_ttm_global_swapout, ptr @__kstrtabns_ttm_global_swapout }, section "___ksymtab+ttm_global_swapout", align 4
@__kstrtab_ttm_device_swapout = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_device_swapout = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_device_swapout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_device_swapout to i32), ptr @__kstrtab_ttm_device_swapout, ptr @__kstrtabns_ttm_device_swapout }, section "___ksymtab+ttm_device_swapout", align 4
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/ttm/ttm_device.c\00", [63 x i8] zeroinitializer }, align 32
@ttm_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&bdev->wq)->work)\00", [58 x i8] zeroinitializer }, align 32
@ttm_device_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&bdev->wq)->timer\00", [44 x i8] zeroinitializer }, align 32
@ttm_device_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&bdev->lru_lock\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_ttm_device_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_device_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_device_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_device_init to i32), ptr @__kstrtab_ttm_device_init, ptr @__kstrtabns_ttm_device_init }, section "___ksymtab+ttm_device_init", align 4
@ttm_device_fini.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.8, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ttm\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ttm_device_fini\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Delayed destroy list was clean\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[TTM DEVICE] Delayed destroy list was clean\0A\00", [51 x i8] zeroinitializer }, align 32
@ttm_device_fini.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.10, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Swap list %d was clean\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[TTM DEVICE] Swap list %d was clean\0A\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_ttm_device_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_device_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_device_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_device_fini to i32), ptr @__kstrtab_ttm_device_fini, ptr @__kstrtabns_ttm_device_fini }, section "___ksymtab+ttm_device_fini", align 4
@__kstrtab_ttm_device_clear_dma_mappings = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_device_clear_dma_mappings = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_device_clear_dma_mappings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_device_clear_dma_mappings to i32), ptr @__kstrtab_ttm_device_clear_dma_mappings, ptr @__kstrtabns_ttm_device_clear_dma_mappings }, section "___ksymtab+ttm_device_clear_dma_mappings", align 4
@ttm_debugfs_root = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ttm_global_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ttm_global_mutex\00", [47 x i8] zeroinitializer }, align 32
@ttm_glob_use_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_objects\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/drm/ttm/ttm_resource.h\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"ttm_glob\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 44, i32 19 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"ttm_global_mutex\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 207, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 220, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 221, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 249, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 254, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"ttm_debugfs_root\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 47, i32 16 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 42, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"ttm_glob_use_count\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 43, i32 17 }
@___asan_gen_.78 = private constant [36 x i8] c"../drivers/gpu/drm/ttm/ttm_device.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 108, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [34 x i8] c"../include/drm/ttm/ttm_resource.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 229, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_ttm_device_clear_dma_mappings, ptr @__ksymtab_ttm_device_fini, ptr @__ksymtab_ttm_device_init, ptr @__ksymtab_ttm_device_swapout, ptr @__ksymtab_ttm_glob, ptr @__ksymtab_ttm_global_swapout, ptr @ttm_glob, ptr @ttm_global_mutex, ptr @.str, ptr @ttm_device_init.__key, ptr @.str.1, ptr @ttm_device_init.__key.2, ptr @.str.3, ptr @ttm_device_init.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ttm_debugfs_root, ptr @.str.12, ptr @.str.13, ptr @ttm_glob_use_count, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_glob to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_global_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_device_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_device_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_glob_use_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_global_swapout(ptr noundef %ctx, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ttm_global_mutex, i32 noundef 0) #5
  %bdev.020 = load ptr, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), align 4
  %cmp.not21 = icmp eq ptr %bdev.020, getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1)
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond:                                         ; preds = %for.body
  %0 = ptrtoint ptr %bdev.022 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bdev.0 = load ptr, ptr %bdev.022, align 4
  %cmp.not = icmp eq ptr %bdev.0, getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1)
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %bdev.022 = phi ptr [ %bdev.0, %for.cond.for.body_crit_edge ], [ %bdev.020, %entry.for.body_crit_edge ]
  %call = tail call i32 @ttm_device_swapout(ptr noundef %bdev.022, ptr noundef %ctx, i32 noundef %gfp_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp sgt i32 %call, 0
  br i1 %cmp3, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bdev.022) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bdev.022, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %bdev.022 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bdev.022, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %7 = load ptr, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bdev.022, ptr noundef %7, ptr noundef getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1)) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.end_crit_edge

__list_del_entry.exit.i.for.end_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %bdev.022, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1, i32 1), align 4
  %8 = ptrtoint ptr %bdev.022 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), ptr %bdev.022, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %bdev.022, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %bdev.022, ptr %7, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %call, %__list_del_entry.exit.i.for.end_crit_edge ], [ %call, %if.end.i.i.i ], [ 0, %entry.for.end_crit_edge ], [ %call, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_device_swapout(ptr noundef %bdev, ptr noundef %ctx, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock) #5
  br label %for.body

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %entry
  %i.054 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.ttm_device, ptr %bdev, i32 0, i32 3, i32 %i.054
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc25_crit_edge, label %lor.lhs.false

for.body.for.inc25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25

lor.lhs.false:                                    ; preds = %for.body
  %use_tt = getelementptr inbounds %struct.ttm_resource_manager, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %use_tt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_tt, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.for.inc25_crit_edge, label %for.body4.preheader

lor.lhs.false.for.inc25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25

for.body4.preheader:                              ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 0
  br label %for.cond5

for.cond5:                                        ; preds = %for.body10.for.cond5_crit_edge, %for.body4.preheader
  %.pn.in = phi ptr [ %arrayidx, %for.body4.preheader ], [ %.pn, %for.body10.for.cond5_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp9.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp9.not, label %for.inc23, label %for.body10

for.body10:                                       ; preds = %for.cond5
  %bo.0 = getelementptr i8, ptr %.pn, i32 -384
  %size = getelementptr i8, ptr %.pn, i32 -200
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  %call11 = tail call i32 @ttm_bo_swapout(ptr noundef %bo.0, ptr noundef %ctx, i32 noundef %gfp_flags) #5
  %7 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call11, label %for.body10.cleanup29_crit_edge [
    i32 0, label %for.body10.if.then13_crit_edge
    i32 -16, label %for.body10.for.cond5_crit_edge
  ]

for.body10.for.cond5_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5

for.body10.if.then13_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

for.body10.cleanup29_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.then13:                                        ; preds = %for.body10.3.if.then13_crit_edge, %for.body10.2.if.then13_crit_edge, %for.body10.1.if.then13_crit_edge, %for.body10.if.then13_crit_edge
  %.lcssa56 = phi i32 [ %18, %for.body10.3.if.then13_crit_edge ], [ %14, %for.body10.2.if.then13_crit_edge ], [ %10, %for.body10.1.if.then13_crit_edge ], [ %6, %for.body10.if.then13_crit_edge ]
  %sub = add i32 %.lcssa56, 4095
  %shr = lshr i32 %sub, 12
  br label %cleanup29

for.inc23:                                        ; preds = %for.cond5
  %arrayidx.1 = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 1
  br label %for.cond5.1

for.cond5.1:                                      ; preds = %for.body10.1.for.cond5.1_crit_edge, %for.inc23
  %.pn.in.1 = phi ptr [ %arrayidx.1, %for.inc23 ], [ %.pn.1, %for.body10.1.for.cond5.1_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.1 = load ptr, ptr %.pn.in.1, align 8
  %cmp9.not.1 = icmp eq ptr %.pn.1, %arrayidx.1
  br i1 %cmp9.not.1, label %for.inc23.1, label %for.body10.1

for.body10.1:                                     ; preds = %for.cond5.1
  %bo.0.1 = getelementptr i8, ptr %.pn.1, i32 -384
  %size.1 = getelementptr i8, ptr %.pn.1, i32 -200
  %9 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.1, align 8
  %call11.1 = tail call i32 @ttm_bo_swapout(ptr noundef %bo.0.1, ptr noundef %ctx, i32 noundef %gfp_flags) #5
  %11 = zext i32 %call11.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call11.1, label %for.body10.1.cleanup29_crit_edge [
    i32 0, label %for.body10.1.if.then13_crit_edge
    i32 -16, label %for.body10.1.for.cond5.1_crit_edge
  ]

for.body10.1.for.cond5.1_crit_edge:               ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.1

for.body10.1.if.then13_crit_edge:                 ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

for.body10.1.cleanup29_crit_edge:                 ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

for.inc23.1:                                      ; preds = %for.cond5.1
  %arrayidx.2 = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 2
  br label %for.cond5.2

for.cond5.2:                                      ; preds = %for.body10.2.for.cond5.2_crit_edge, %for.inc23.1
  %.pn.in.2 = phi ptr [ %arrayidx.2, %for.inc23.1 ], [ %.pn.2, %for.body10.2.for.cond5.2_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.2 = load ptr, ptr %.pn.in.2, align 8
  %cmp9.not.2 = icmp eq ptr %.pn.2, %arrayidx.2
  br i1 %cmp9.not.2, label %for.inc23.2, label %for.body10.2

for.body10.2:                                     ; preds = %for.cond5.2
  %bo.0.2 = getelementptr i8, ptr %.pn.2, i32 -384
  %size.2 = getelementptr i8, ptr %.pn.2, i32 -200
  %13 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.2, align 8
  %call11.2 = tail call i32 @ttm_bo_swapout(ptr noundef %bo.0.2, ptr noundef %ctx, i32 noundef %gfp_flags) #5
  %15 = zext i32 %call11.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call11.2, label %for.body10.2.cleanup29_crit_edge [
    i32 0, label %for.body10.2.if.then13_crit_edge
    i32 -16, label %for.body10.2.for.cond5.2_crit_edge
  ]

for.body10.2.for.cond5.2_crit_edge:               ; preds = %for.body10.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.2

for.body10.2.if.then13_crit_edge:                 ; preds = %for.body10.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

for.body10.2.cleanup29_crit_edge:                 ; preds = %for.body10.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

for.inc23.2:                                      ; preds = %for.cond5.2
  %arrayidx.3 = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 3
  br label %for.cond5.3

for.cond5.3:                                      ; preds = %for.body10.3.for.cond5.3_crit_edge, %for.inc23.2
  %.pn.in.3 = phi ptr [ %arrayidx.3, %for.inc23.2 ], [ %.pn.3, %for.body10.3.for.cond5.3_crit_edge ]
  %16 = ptrtoint ptr %.pn.in.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.3 = load ptr, ptr %.pn.in.3, align 8
  %cmp9.not.3 = icmp eq ptr %.pn.3, %arrayidx.3
  br i1 %cmp9.not.3, label %for.cond5.3.for.inc25_crit_edge, label %for.body10.3

for.cond5.3.for.inc25_crit_edge:                  ; preds = %for.cond5.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25

for.body10.3:                                     ; preds = %for.cond5.3
  %bo.0.3 = getelementptr i8, ptr %.pn.3, i32 -384
  %size.3 = getelementptr i8, ptr %.pn.3, i32 -200
  %17 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.3, align 8
  %call11.3 = tail call i32 @ttm_bo_swapout(ptr noundef %bo.0.3, ptr noundef %ctx, i32 noundef %gfp_flags) #5
  %19 = zext i32 %call11.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call11.3, label %for.body10.3.cleanup29_crit_edge [
    i32 0, label %for.body10.3.if.then13_crit_edge
    i32 -16, label %for.body10.3.for.cond5.3_crit_edge
  ]

for.body10.3.for.cond5.3_crit_edge:               ; preds = %for.body10.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.3

for.body10.3.if.then13_crit_edge:                 ; preds = %for.body10.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

for.body10.3.cleanup29_crit_edge:                 ; preds = %for.body10.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

for.inc25:                                        ; preds = %for.cond5.3.for.inc25_crit_edge, %lor.lhs.false.for.inc25_crit_edge, %for.body.for.inc25_crit_edge
  %inc26 = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc26, 8
  br i1 %exitcond.not, label %for.end27, label %for.inc25.for.body_crit_edge

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end27:                                        ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock) #5
  br label %cleanup29

cleanup29:                                        ; preds = %for.end27, %for.body10.3.cleanup29_crit_edge, %for.body10.2.cleanup29_crit_edge, %for.body10.1.cleanup29_crit_edge, %if.then13, %for.body10.cleanup29_crit_edge
  %retval.5 = phi i32 [ 0, %for.end27 ], [ %shr, %if.then13 ], [ %call11.3, %for.body10.3.cleanup29_crit_edge ], [ %call11.2, %for.body10.2.cleanup29_crit_edge ], [ %call11.1, %for.body10.1.cleanup29_crit_edge ], [ %call11, %for.body10.cleanup29_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_swapout(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_device_init(ptr noundef %bdev, ptr noundef %funcs, ptr noundef %dev, ptr noundef %mapping, ptr noundef %vma_manager, i1 noundef zeroext %use_dma_alloc, i1 noundef zeroext %use_dma32) #0 align 64 {
entry:
  %si.i = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vma_manager, null
  br i1 %cmp, label %do.end, label %if.end22, !prof !59

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %si.i) #5
  %0 = call ptr @memset(ptr %si.i, i32 255, i32 64)
  tail call void @mutex_lock_nested(ptr noundef nonnull @ttm_global_mutex, i32 noundef 0) #5
  %1 = load i32, ptr @ttm_glob_use_count, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr @ttm_glob_use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 1
  br i1 %cmp.i, label %if.end22.if.end25_crit_edge, label %if.end.i

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end.i:                                         ; preds = %if.end22
  call void @si_meminfo(ptr noundef nonnull %si.i) #5
  %call.i = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.6, ptr noundef null) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i
  store ptr %spec.store.select.i, ptr @ttm_debugfs_root, align 4
  %totalram.i = getelementptr inbounds %struct.sysinfo, ptr %si.i, i32 0, i32 2
  %2 = ptrtoint ptr %totalram.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %totalram.i, align 4
  %conv.i = zext i32 %3 to i64
  %mem_unit.i = getelementptr inbounds %struct.sysinfo, ptr %si.i, i32 0, i32 12
  %4 = ptrtoint ptr %mem_unit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_unit.i, align 4
  %conv4.i = zext i32 %5 to i64
  %mul.i = mul nuw i64 %conv4.i, %conv.i
  %sum.shift.i = lshr i64 %mul.i, 13
  %div4243.i = trunc i64 %sum.shift.i to i32
  %div42.i = and i32 %div4243.i, 2147483647
  %totalhigh.i = getelementptr inbounds %struct.sysinfo, ptr %si.i, i32 0, i32 10
  %6 = ptrtoint ptr %totalhigh.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %totalhigh.i, align 4
  %sub.i = sub i32 %3, %7
  %conv7.i = zext i32 %sub.i to i64
  %mul10.i = mul nuw i64 %conv7.i, %conv4.i
  %shr11.i = lshr i64 %mul10.i, 12
  %conv12.i = trunc i64 %shr11.i to i32
  %8 = call i32 @llvm.umin.i32(i32 %conv12.i, i32 524288) #5
  %call15.i = call i32 @ttm_pool_mgr_init(i32 noundef %div42.i) #5
  call void @ttm_tt_mgr_init(i32 noundef %div42.i, i32 noundef %8) #5
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef 260, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  store ptr %call38.i.i.i.i, ptr @ttm_glob, align 4
  %cmp18.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %cmp18.i, label %land.lhs.true.i, label %if.end22.i, !prof !59

if.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store volatile ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1, i32 1), align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 2), i32 noundef 4) #5
  store volatile i32 0, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 2), align 4
  %9 = load ptr, ptr @ttm_debugfs_root, align 4
  call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef %9, ptr noundef getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 2)) #5
  br label %if.end25

land.lhs.true.i:                                  ; preds = %if.end.i
  %10 = load ptr, ptr @ttm_debugfs_root, align 4
  %tobool25.not.i = icmp eq ptr %10, null
  br i1 %tobool25.not.i, label %land.lhs.true.i.ttm_global_init.exit_crit_edge, label %if.then26.i

land.lhs.true.i.ttm_global_init.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_global_init.exit

if.then26.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @debugfs_remove(ptr noundef nonnull %10) #5
  br label %ttm_global_init.exit

ttm_global_init.exit:                             ; preds = %if.then26.i, %land.lhs.true.i.ttm_global_init.exit_crit_edge
  %11 = load i32, ptr @ttm_glob_use_count, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr @ttm_glob_use_count, align 4
  call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %si.i) #5
  br label %cleanup

if.end25:                                         ; preds = %if.end22.i, %if.end22.if.end25_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %si.i) #5
  %funcs26 = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 1
  %12 = ptrtoint ptr %funcs26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %funcs, ptr %funcs26, align 8
  call void @ttm_sys_man_init(ptr noundef %bdev) #5
  %pool = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 5
  call void @ttm_pool_init(ptr noundef %pool, ptr noundef %dev, i1 noundef zeroext %use_dma_alloc, i1 noundef zeroext %use_dma32) #5
  %vma_manager29 = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 4
  %13 = ptrtoint ptr %vma_manager29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vma_manager, ptr %vma_manager29, align 8
  %wq = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 10
  call void @__init_work(ptr noundef %wq, i32 noundef 0) #5
  %14 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %wq, align 4
  %lockdep_map = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 10, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @ttm_device_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry38 = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 10, i32 0, i32 1
  %15 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 10, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry38, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 10, i32 0, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ttm_device_delayed_workqueue, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 10, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @ttm_device_init.__key.2) #5
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %lru_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @ttm_device_init.__key.4, i16 noundef signext 3) #5
  %ddestroy = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 7
  %18 = ptrtoint ptr %ddestroy to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %ddestroy, ptr %ddestroy, align 4
  %prev.i72 = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %prev.i72 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ddestroy, ptr %prev.i72, align 4
  %pinned = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 8
  %20 = ptrtoint ptr %pinned to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %pinned, ptr %pinned, align 4
  %prev.i73 = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pinned, ptr %prev.i73, align 4
  %dev_mapping = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 9
  %22 = ptrtoint ptr %dev_mapping to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mapping, ptr %dev_mapping, align 8
  call void @mutex_lock_nested(ptr noundef nonnull @ttm_global_mutex, i32 noundef 0) #5
  %23 = load ptr, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %bdev, ptr noundef %23, ptr noundef getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1)) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_add_tail.exit_crit_edge

if.end25.list_add_tail.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %bdev, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1, i32 1), align 4
  %24 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), ptr %bdev, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %bdev, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %bdev, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end25.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %ttm_global_init.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %list_add_tail.exit ], [ -12, %ttm_global_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_sys_man_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_init(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttm_device_delayed_workqueue(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2820
  %call = tail call zeroext i1 @ttm_bo_delayed_delete(ptr noundef %add.ptr, i1 noundef zeroext false) #5
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_device_fini(ptr noundef %bdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ttm_device, ptr %bdev, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx.i42 = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 0
  %2 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.i42, align 4
  %cmp.i.not.i = icmp eq ptr %3, %arrayidx.i42
  br i1 %cmp.i.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !60

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.not.1.i = icmp eq ptr %5, %arrayidx.1.i
  br i1 %cmp.i.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %do.end.1.i, !prof !60

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1.i

do.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %do.end.1.i, %if.end.i.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.not.2.i = icmp eq ptr %7, %arrayidx.2.i
  br i1 %cmp.i.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %do.end.2.i, !prof !60

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2.i

do.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %do.end.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.ttm_resource_manager, ptr %1, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.3.i, align 4
  %cmp.i.not.3.i = icmp eq ptr %9, %arrayidx.3.i
  br i1 %cmp.i.not.3.i, label %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge, label %do.end.3.i, !prof !60

if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_resource_manager_set_used.exit

do.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %ttm_resource_manager_set_used.exit

ttm_resource_manager_set_used.exit:               ; preds = %do.end.3.i, %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %1, align 8
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ttm_global_mutex, i32 noundef 0) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bdev) #5
  br i1 %call.i.i, label %if.end.i.i, label %ttm_resource_manager_set_used.exit.list_del.exit_crit_edge

ttm_resource_manager_set_used.exit.list_del.exit_crit_edge: ; preds = %ttm_resource_manager_set_used.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %ttm_resource_manager_set_used.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bdev, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %ttm_resource_manager_set_used.exit.list_del.exit_crit_edge
  %18 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %bdev, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %bdev, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  %wq = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 10
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wq) #5
  %call2 = tail call zeroext i1 @ttm_bo_delayed_delete(ptr noundef %bdev, i1 noundef zeroext true) #5
  br i1 %call2, label %do.body, label %list_del.exit.if.end7_crit_edge

list_del.exit.if.end7_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

do.body:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ttm_device_fini.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ttm_device_fini, %if.then6)) #5
          to label %if.end7 [label %if.then6], !srcloc !61

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ttm_device_fini.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.9) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body, %list_del.exit.if.end7_crit_edge
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7
  %i.046 = phi i32 [ 0, %if.end7 ], [ %inc, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx.i42, align 4
  %cmp.i.not = icmp eq ptr %21, %arrayidx.i42
  br i1 %cmp.i.not, label %do.body11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ttm_device_fini.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ttm_device_fini, %if.then23)) #5
          to label %for.inc [label %if.then23], !srcloc !61

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ttm_device_fini.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.11, i32 noundef %i.046) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %do.body11, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock) #5
  %pool = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 5
  tail call void @ttm_pool_fini(ptr noundef %pool) #5
  tail call void @mutex_lock_nested(ptr noundef nonnull @ttm_global_mutex, i32 noundef 0) #5
  %22 = load i32, ptr @ttm_glob_use_count, align 4
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr @ttm_glob_use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i43, label %for.end.ttm_global_release.exit_crit_edge

for.end.ttm_global_release.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_global_release.exit

if.end.i43:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ttm_pool_mgr_fini() #5
  %23 = load ptr, ptr @ttm_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %23) #5
  %24 = load ptr, ptr @ttm_glob, align 4
  tail call void @__free_pages(ptr noundef %24, i32 noundef 0) #5
  %25 = call ptr @memset(ptr @ttm_glob, i32 0, i32 16)
  br label %ttm_global_release.exit

ttm_global_release.exit:                          ; preds = %if.end.i43, %for.end.ttm_global_release.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ttm_bo_delayed_delete(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_device_clear_dma_mappings(ptr noundef %bdev) #0 align 64 {
entry:
  %old.i.i.i.i.i79 = alloca i32, align 4
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock) #5
  %pinned = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 8
  %0 = ptrtoint ptr %pinned to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pinned, align 4
  %cmp.i.not110 = icmp eq ptr %1, %pinned
  br i1 %cmp.i.not110, label %entry.for.body.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %28, %if.end10.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -384
  %kref.i = getelementptr i8, ptr %2, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #5
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #5
  %3 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %kref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %while.body
  %5 = phi i32 [ %4, %while.body ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %5, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #5
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #5
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %9 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 %8, i32 %add.i.i.i.i.i, ptr elementtype(i32) %kref.i) #5, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %8
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !60

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %11, 1
  %12 = or i32 %add5.i.i.i.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.ttm_bo_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !60

if.end4.i.i.i.i.i.ttm_bo_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_bo_get_unless_zero.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 0) #5
  br label %ttm_bo_get_unless_zero.exit

ttm_bo_get_unless_zero.exit:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.ttm_bo_get_unless_zero.exit_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #5
  %tobool3.not108 = icmp eq ptr %add.ptr, null
  %tobool3.not = select i1 %tobool12.i.i.i.i.not.i, i1 true, i1 %tobool3.not108
  br i1 %tobool3.not, label %ttm_bo_get_unless_zero.exit.if.end10_crit_edge, label %if.then

ttm_bo_get_unless_zero.exit.if.end10_crit_edge:   ; preds = %ttm_bo_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %ttm_bo_get_unless_zero.exit
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %2, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lru_lock) #5
  %ttm = getelementptr i8, ptr %2, i32 -8
  %23 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ttm, align 8
  %tobool5.not = icmp eq ptr %24, null
  br i1 %tobool5.not, label %list_del_init.exit.if.end_crit_edge, label %if.then6

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then6:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %bdev7 = getelementptr i8, ptr %2, i32 -32
  %25 = ptrtoint ptr %bdev7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdev7, align 8
  call void @ttm_tt_unpopulate(ptr noundef %26, ptr noundef nonnull %24) #5
  br label %if.end

if.end:                                           ; preds = %if.then6, %list_del_init.exit.if.end_crit_edge
  call void @ttm_bo_put(ptr noundef nonnull %add.ptr) #5
  call void @_raw_spin_lock(ptr noundef %lru_lock) #5
  br label %if.end10

if.end10:                                         ; preds = %if.end, %ttm_bo_get_unless_zero.exit.if.end10_crit_edge
  %27 = ptrtoint ptr %pinned to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %pinned, align 4
  %cmp.i.not = icmp eq ptr %28, %pinned
  br i1 %cmp.i.not, label %if.end10.for.body.preheader_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end10.for.body.preheader_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end10.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc45.for.body_crit_edge, %for.body.preheader
  %i.0113 = phi i32 [ %inc46, %for.inc45.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx.i = getelementptr %struct.ttm_device, ptr %bdev, i32 0, i32 3, i32 %i.0113
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not = icmp eq ptr %30, null
  br i1 %tobool12.not, label %for.body.for.inc45_crit_edge, label %lor.lhs.false

for.body.for.inc45_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45

lor.lhs.false:                                    ; preds = %for.body
  %use_tt = getelementptr inbounds %struct.ttm_resource_manager, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %use_tt to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %use_tt, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool13.not = icmp eq i8 %32, 0
  br i1 %tobool13.not, label %lor.lhs.false.for.inc45_crit_edge, label %lor.lhs.false.while.cond19.preheader_crit_edge

lor.lhs.false.while.cond19.preheader_crit_edge:   ; preds = %lor.lhs.false
  br label %while.cond19.preheader

lor.lhs.false.for.inc45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45

while.cond19.preheader:                           ; preds = %for.inc.while.cond19.preheader_crit_edge, %lor.lhs.false.while.cond19.preheader_crit_edge
  %j.0112 = phi i32 [ %inc, %for.inc.while.cond19.preheader_crit_edge ], [ 0, %lor.lhs.false.while.cond19.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.ttm_resource_manager, ptr %30, i32 0, i32 5, i32 %j.0112
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i77.not111 = icmp eq ptr %34, %arrayidx
  br i1 %cmp.i77.not111, label %while.cond19.preheader.for.inc_crit_edge, label %while.cond19.preheader.while.body24_crit_edge

while.cond19.preheader.while.body24_crit_edge:    ; preds = %while.cond19.preheader
  br label %while.body24

while.cond19.preheader.for.inc_crit_edge:         ; preds = %while.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body24:                                     ; preds = %if.end43.while.body24_crit_edge, %while.cond19.preheader.while.body24_crit_edge
  %35 = phi ptr [ %61, %if.end43.while.body24_crit_edge ], [ %34, %while.cond19.preheader.while.body24_crit_edge ]
  %add.ptr30 = getelementptr i8, ptr %35, i32 -384
  %kref.i80 = getelementptr i8, ptr %35, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i79) #5
  %call.i.i.i.i.i.i.i.i81 = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i80, i32 noundef 4) #5
  %36 = ptrtoint ptr %kref.i80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %kref.i80, align 4
  br label %do.body.i.i.i.i.i83

do.body.i.i.i.i.i83:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i93.do.body.i.i.i.i.i83_crit_edge, %while.body24
  %38 = phi i32 [ %37, %while.body24 ], [ %asmresult3.i.i.i.i.i.i.i.i91, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i93.do.body.i.i.i.i.i83_crit_edge ]
  %39 = ptrtoint ptr %old.i.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %old.i.i.i.i.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i.i.i.i82 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i.i.i.i82, label %do.body.i.i.i.i.i83.if.end4.i.i.i.i.i96_crit_edge, label %do.cond.i.i.i.i.i87

do.body.i.i.i.i.i83.if.end4.i.i.i.i.i96_crit_edge: ; preds = %do.body.i.i.i.i.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i.i.i96

do.cond.i.i.i.i.i87:                              ; preds = %do.body.i.i.i.i.i83
  %add.i.i.i.i.i84 = add i32 %38, 1
  %call.i.i.i.i.i.i.i85 = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i80, i32 noundef 4) #5
  %call.i3.i.i.i.i.i.i86 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i79, i32 noundef 4) #5
  %40 = ptrtoint ptr %old.i.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %old.i.i.i.i.i79, align 4
  call void @llvm.prefetch.p0(ptr %kref.i80, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i.i.i.i90

do.body.i.i.i.i.i.i.i.i90:                        ; preds = %do.body.i.i.i.i.i.i.i.i90.do.body.i.i.i.i.i.i.i.i90_crit_edge, %do.cond.i.i.i.i.i87
  %42 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i80, ptr %kref.i80, i32 %41, i32 %add.i.i.i.i.i84, ptr elementtype(i32) %kref.i80) #5, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i88 = extractvalue { i32, i32 } %42, 0
  %tobool.not.i.i.i.i.i.i.i.i89 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i88, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i89, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i93, label %do.body.i.i.i.i.i.i.i.i90.do.body.i.i.i.i.i.i.i.i90_crit_edge

do.body.i.i.i.i.i.i.i.i90.do.body.i.i.i.i.i.i.i.i90_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i.i.i.i90

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i93: ; preds = %do.body.i.i.i.i.i.i.i.i90
  %asmresult3.i.i.i.i.i.i.i.i91 = extractvalue { i32, i32 } %42, 1
  %cmp.not.i.i.i.i.i.i.i92 = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i91, %41
  br i1 %cmp.not.i.i.i.i.i.i.i92, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i93.if.end4.i.i.i.i.i96_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i93.do.body.i.i.i.i.i83_crit_edge, !prof !60

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i93.do.body.i.i.i.i.i83_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i83

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i93.if.end4.i.i.i.i.i96_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i.i.i96

if.end4.i.i.i.i.i96:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i93.if.end4.i.i.i.i.i96_crit_edge, %do.body.i.i.i.i.i83.if.end4.i.i.i.i.i96_crit_edge
  %43 = ptrtoint ptr %old.i.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %old.i.i.i.i.i79, align 4
  %add5.i.i.i.i.i94 = add i32 %44, 1
  %45 = or i32 %add5.i.i.i.i.i94, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i.i95 = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i.i95, label %if.end4.i.i.i.i.i96.ttm_bo_get_unless_zero.exit100_crit_edge, label %if.then10.i.i.i.i.i97, !prof !60

if.end4.i.i.i.i.i96.ttm_bo_get_unless_zero.exit100_crit_edge: ; preds = %if.end4.i.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_bo_get_unless_zero.exit100

if.then10.i.i.i.i.i97:                            ; preds = %if.end4.i.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %kref.i80, i32 noundef 0) #5
  br label %ttm_bo_get_unless_zero.exit100

ttm_bo_get_unless_zero.exit100:                   ; preds = %if.then10.i.i.i.i.i97, %if.end4.i.i.i.i.i96.ttm_bo_get_unless_zero.exit100_crit_edge
  %46 = ptrtoint ptr %old.i.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %old.i.i.i.i.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool12.i.i.i.i.not.i98 = icmp eq i32 %47, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i79) #5
  %tobool32.not107 = icmp eq ptr %add.ptr30, null
  %tobool32.not = select i1 %tobool12.i.i.i.i.not.i98, i1 true, i1 %tobool32.not107
  br i1 %tobool32.not, label %ttm_bo_get_unless_zero.exit100.if.end43_crit_edge, label %if.then33

ttm_bo_get_unless_zero.exit100.if.end43_crit_edge: ; preds = %ttm_bo_get_unless_zero.exit100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then33:                                        ; preds = %ttm_bo_get_unless_zero.exit100
  %call.i.i101 = call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #5
  br i1 %call.i.i101, label %if.end.i.i104, label %if.then33.list_del_init.exit106_crit_edge

if.then33.list_del_init.exit106_crit_edge:        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit106

if.end.i.i104:                                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i102 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i102, align 4
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %35, align 4
  %prev1.i.i.i103 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i103, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit106

list_del_init.exit106:                            ; preds = %if.end.i.i104, %if.then33.list_del_init.exit106_crit_edge
  %54 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %35, ptr %35, align 4
  %prev.i3.i105 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i3.i105 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %35, ptr %prev.i3.i105, align 4
  call void @_raw_spin_unlock(ptr noundef %lru_lock) #5
  %ttm36 = getelementptr i8, ptr %35, i32 -8
  %56 = ptrtoint ptr %ttm36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ttm36, align 8
  %tobool37.not = icmp eq ptr %57, null
  br i1 %tobool37.not, label %list_del_init.exit106.if.end41_crit_edge, label %if.then38

list_del_init.exit106.if.end41_crit_edge:         ; preds = %list_del_init.exit106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then38:                                        ; preds = %list_del_init.exit106
  call void @__sanitizer_cov_trace_pc() #7
  %bdev39 = getelementptr i8, ptr %35, i32 -32
  %58 = ptrtoint ptr %bdev39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bdev39, align 8
  call void @ttm_tt_unpopulate(ptr noundef %59, ptr noundef nonnull %57) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %list_del_init.exit106.if.end41_crit_edge
  call void @ttm_bo_put(ptr noundef nonnull %add.ptr30) #5
  call void @_raw_spin_lock(ptr noundef %lru_lock) #5
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %ttm_bo_get_unless_zero.exit100.if.end43_crit_edge
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i77.not = icmp eq ptr %61, %arrayidx
  br i1 %cmp.i77.not, label %if.end43.for.inc_crit_edge, label %if.end43.while.body24_crit_edge

if.end43.while.body24_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body24

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end43.for.inc_crit_edge, %while.cond19.preheader.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0112, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.inc45_crit_edge, label %for.inc.while.cond19.preheader_crit_edge

for.inc.while.cond19.preheader_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond19.preheader

for.inc.for.inc45_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45

for.inc45:                                        ; preds = %for.inc.for.inc45_crit_edge, %lor.lhs.false.for.inc45_crit_edge, %for.body.for.inc45_crit_edge
  %inc46 = add nuw nsw i32 %i.0113, 1
  %exitcond115.not = icmp eq i32 %inc46, 8
  br i1 %exitcond115.not, label %for.end47, label %for.inc45.for.body_crit_edge

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end47:                                        ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock(ptr noundef %lru_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_tt_unpopulate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_pool_mgr_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_tt_mgr_init(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_atomic_t(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_mgr_fini() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !42, !44, !46}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__ksymtab_ttm_glob, !1, !"__ksymtab_ttm_glob", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 45, i32 1}
!2 = !{ptr @__ksymtab_ttm_global_swapout, !3, !"__ksymtab_ttm_global_swapout", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 140, i32 1}
!4 = !{ptr @__ksymtab_ttm_device_swapout, !5, !"__ksymtab_ttm_device_swapout", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 172, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 207, i32 6}
!8 = !{ptr @ttm_device_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 220, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ttm_device_init.__key.2, !9, !"__key", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ttm_device_init.__key.4, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 221, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__ksymtab_ttm_device_init, !17, !"__ksymtab_ttm_device_init", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 231, i32 1}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 249, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ttm_device_fini.__UNIQUE_ID_ddebug256, !19, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!23 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 254, i32 4}
!26 = !{ptr @ttm_device_fini.__UNIQUE_ID_ddebug257, !25, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!27 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__ksymtab_ttm_device_fini, !29, !"__ksymtab_ttm_device_fini", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 260, i32 1}
!30 = !{ptr @__ksymtab_ttm_device_clear_dma_mappings, !31, !"__ksymtab_ttm_device_clear_dma_mappings", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 307, i32 1}
!32 = !{ptr @ttm_glob, !33, !"ttm_glob", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 44, i32 19}
!34 = !{ptr @ttm_debugfs_root, !35, !"ttm_debugfs_root", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 47, i32 16}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 42, i32 8}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ttm_global_mutex, !37, !"ttm_global_mutex", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 108, i32 26}
!42 = !{ptr @ttm_glob_use_count, !43, !"ttm_glob_use_count", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/ttm/ttm_device.c", i32 43, i32 17}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/drm/ttm/ttm_resource.h", i32 229, i32 3}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2148272176, i64 2148272181, i64 2148272194, i64 2148272238, i64 2148272272, i64 2148272293}
!62 = !{i64 1157012, i64 1157036, i64 1157057, i64 1157074, i64 1157091}
