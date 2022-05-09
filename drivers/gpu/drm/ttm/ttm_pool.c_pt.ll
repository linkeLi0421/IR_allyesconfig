; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ttm/ttm_pool.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_pool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ttm_pool_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_pool_alloc\09\09\09\09"
module asm "\09.long\09__crc_ttm_pool_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_pool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_pool_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_pool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_pool_free\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_pool_free\09\09\09\09"
module asm "\09.long\09__crc_ttm_pool_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_pool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_pool_free\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_pool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_pool_debugfs\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_pool_debugfs\09\09\09\09"
module asm "\09.long\09__crc_ttm_pool_debugfs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_pool_debugfs:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_pool_debugfs\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_pool_debugfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.73] }
%struct.anon.73 = type { [12 x %struct.ttm_pool_type] }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.ttm_pool_dma = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__UNIQUE_ID_page_pool_size264 = internal constant [62 x i8] c"ttm.parm=page_pool_size:Number of pages in the WC/UC/DMA pool\00", section ".modinfo", align 1
@__param_str_page_pool_size = internal constant [19 x i8] c"ttm.page_pool_size\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@page_pool_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_page_pool_size = internal constant %struct.kernel_param { ptr @__param_str_page_pool_size, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @page_pool_size } }, section "__param", align 4
@__UNIQUE_ID_page_pool_sizetype265 = internal constant [34 x i8] c"ttm.parmtype=page_pool_size:ulong\00", section ".modinfo", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/ttm/ttm_pool.c\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_ttm_pool_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_pool_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_pool_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_pool_alloc to i32), ptr @__kstrtab_ttm_pool_alloc, ptr @__kstrtabns_ttm_pool_alloc }, section "___ksymtab+ttm_pool_alloc", align 4
@allocated_pages = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ttm_pool_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_pool_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_pool_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_pool_free to i32), ptr @__kstrtab_ttm_pool_free, ptr @__kstrtabns_ttm_pool_free }, section "___ksymtab+ttm_pool_free", align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unused\0A\00", [24 x i8] zeroinitializer }, align 32
@shrinker_lock = internal global { %struct.spinlock, [52 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMA \00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\09:\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wc\09:\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uc\09:\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_ttm_pool_debugfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_pool_debugfs = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_pool_debugfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_pool_debugfs to i32), ptr @__kstrtab_ttm_pool_debugfs, ptr @__kstrtabns_ttm_pool_debugfs }, section "___ksymtab+ttm_pool_debugfs", align 4
@ttm_pool_mgr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&shrinker_lock\00", [17 x i8] zeroinitializer }, align 32
@shrinker_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@global_write_combined = internal global { [12 x %struct.ttm_pool_type], [192 x i8] } zeroinitializer, align 32
@global_uncached = internal global { [12 x %struct.ttm_pool_type], [192 x i8] } zeroinitializer, align 32
@global_dma32_write_combined = internal global { [12 x %struct.ttm_pool_type], [192 x i8] } zeroinitializer, align 32
@global_dma32_uncached = internal global { [12 x %struct.ttm_pool_type], [192 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"page_pool\00", [22 x i8] zeroinitializer }, align 32
@ttm_debugfs_root = external dso_local local_unnamed_addr global ptr, align 4
@ttm_pool_debugfs_globals_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ttm_pool_debugfs_globals_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"page_pool_shrink\00", [47 x i8] zeroinitializer }, align 32
@ttm_pool_debugfs_shrink_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ttm_pool_debugfs_shrink_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mm_shrinker = internal global { %struct.shrinker, [60 x i8] } zeroinitializer, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@ttm_pool_type_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pt->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\09 \00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" ---%2u---\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %8u\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0Atotal\09: %8lu of %8lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wc 32\09:\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uc 32\09:\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%lu/%lu\0A\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"page_pool_size\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 60, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 371, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"allocated_pages\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 65, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 642, i32 15 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"shrinker_lock\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 73, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 650, i32 15 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 653, i32 16 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 656, i32 16 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 659, i32 16 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 701, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"shrinker_list\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 74, i32 25 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"global_write_combined\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 67, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"global_uncached\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 68, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant [28 x i8] c"global_dma32_write_combined\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 70, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"global_dma32_uncached\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 71, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 716, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant [30 x i8] c"ttm_pool_debugfs_globals_fops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 627, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 718, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant [29 x i8] c"ttm_pool_debugfs_shrink_fops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 683, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"mm_shrinker\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 75, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 263, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 583, i32 14 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 585, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 586, i32 14 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 596, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 603, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 617, i32 14 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 619, i32 14 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [34 x i8] c"../drivers/gpu/drm/ttm/ttm_pool.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 677, i32 16 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_page_pool_size264, ptr @__UNIQUE_ID_page_pool_sizetype265, ptr @__ksymtab_ttm_pool_alloc, ptr @__ksymtab_ttm_pool_debugfs, ptr @__ksymtab_ttm_pool_free, ptr @__param_page_pool_size, ptr @page_pool_size, ptr @.str, ptr @allocated_pages, ptr @.str.1, ptr @shrinker_lock, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ttm_pool_mgr_init.__key, ptr @.str.6, ptr @shrinker_list, ptr @global_write_combined, ptr @global_uncached, ptr @global_dma32_write_combined, ptr @global_dma32_uncached, ptr @.str.7, ptr @ttm_pool_debugfs_globals_fops, ptr @.str.8, ptr @ttm_pool_debugfs_shrink_fops, ptr @mm_shrinker, ptr @ttm_pool_type_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_pool_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocated_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shrinker_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_pool_mgr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shrinker_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_write_combined to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_uncached to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_dma32_write_combined to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_dma32_uncached to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_pool_debugfs_globals_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_pool_debugfs_shrink_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_shrinker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_pool_type_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_pool_alloc(ptr noundef %pool, ptr nocapture noundef readonly %tt, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pages1 = getelementptr inbounds %struct.ttm_tt, ptr %tt, i32 0, i32 2
  %0 = ptrtoint ptr %num_pages1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages1, align 4
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %tt, i32 0, i32 4
  %2 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_address, align 4
  %4 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %page_flags.i = getelementptr inbounds %struct.ttm_tt, ptr %tt, i32 0, i32 1
  %6 = ptrtoint ptr %page_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i = icmp slt i32 %7, 0
  br i1 %tobool.i, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !84

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 371, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %if.end.if.end49_crit_edge, label %land.rhs

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

land.rhs:                                         ; preds = %if.end
  %8 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pool, align 4
  %tobool25.not = icmp eq ptr %9, null
  br i1 %tobool25.not, label %do.end43, label %land.rhs.if.end49_crit_edge, !prof !84

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

do.end43:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef null) #5
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %land.rhs.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %tt, i32 0, i32 1
  %10 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_flags, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool57.not, i32 1051840, i32 1052096
  %gfp_retry_mayfail = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 2
  %12 = ptrtoint ptr %gfp_retry_mayfail to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %gfp_retry_mayfail, align 2, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool60.not = icmp eq i8 %13, 0
  %or62 = or i32 %spec.select, 16384
  %gfp_flags.1 = select i1 %tobool60.not, i32 %spec.select, i32 %or62
  %use_dma32 = getelementptr inbounds %struct.ttm_pool, ptr %pool, i32 0, i32 2
  %14 = ptrtoint ptr %use_dma32 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_dma32, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool64.not = icmp eq i8 %15, 0
  %gfp_flags.2.v = select i1 %tobool64.not, i32 1051842, i32 4
  %gfp_flags.2 = or i32 %gfp_flags.1, %gfp_flags.2.v
  br i1 %tobool.not, label %if.end49.cleanup147_crit_edge, label %for.body.lr.ph

if.end49.cleanup147_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup147

for.body.lr.ph:                                   ; preds = %if.end49
  %16 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #5, !range !86
  %sub.i = xor i32 %16, 31
  %17 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 11)
  %caching72 = getelementptr inbounds %struct.ttm_tt, ptr %tt, i32 0, i32 6
  %use_dma_alloc.i = getelementptr inbounds %struct.ttm_pool, ptr %pool, i32 0, i32 1
  %or.i = or i32 %gfp_flags.2, 600064
  br label %for.body

for.body:                                         ; preds = %for.inc120.for.body_crit_edge, %for.body.lr.ph
  %num_pages.0366 = phi i32 [ %1, %for.body.lr.ph ], [ %num_pages.1.ph, %for.inc120.for.body_crit_edge ]
  %pages2.0362 = phi ptr [ %5, %for.body.lr.ph ], [ %pages2.2.ph, %for.inc120.for.body_crit_edge ]
  %order.0356 = phi i32 [ %17, %for.body.lr.ph ], [ %60, %for.inc120.for.body_crit_edge ]
  %dma_addr.0352 = phi ptr [ %3, %for.body.lr.ph ], [ %dma_addr.4.ph, %for.inc120.for.body_crit_edge ]
  %18 = ptrtoint ptr %caching72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caching72, align 4
  %20 = ptrtoint ptr %use_dma_alloc.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_dma_alloc.i, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %arrayidx.i = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 %19
  %arrayidx2.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.i, i32 0, i32 %order.0356
  %tobool74.not338 = icmp eq ptr %arrayidx2.i, null
  %tobool74.not = select i1 %tobool.not.i, i1 true, i1 %tobool74.not338
  br i1 %tobool74.not, label %for.body.if.else82_crit_edge, label %cond.true75

for.body.if.else82_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else82

cond.true75:                                      ; preds = %for.body
  %lock.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.i, i32 0, i32 %order.0356, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #5
  %pages.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.i, i32 0, i32 %order.0356, i32 5
  %22 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %pages.i, align 4
  %cmp.not.i = icmp eq ptr %23, %pages.i
  %add.ptr.i = getelementptr i8, ptr %23, i32 -4
  %tobool.not.i224339 = icmp eq ptr %add.ptr.i, null
  %tobool.not.i224 = or i1 %cmp.not.i, %tobool.not.i224339
  br i1 %tobool.not.i224, label %cond.end78.thread271, label %if.then.i

cond.end78.thread271:                             ; preds = %cond.true75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  br label %if.else82

if.then.i:                                        ; preds = %cond.true75
  %order.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.i, i32 0, i32 %order.0356, i32 1
  %24 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %order.i, align 4
  %shl.i = shl nuw i32 1, %25
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr nonnull @allocated_pages, i32 1, i32 3, i32 1) #5
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @allocated_pages, ptr nonnull @allocated_pages, i32 %shl.i, ptr nonnull elementtype(i32) @allocated_pages) #5, !srcloc !87
  %call.i.i11.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #5
  br i1 %call.i.i11.i, label %if.end.i.i.i, label %if.then.i.cond.end78_crit_edge

if.then.i.cond.end78_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end78

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr i8, ptr %23, i32 4
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %23, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %cond.end78

cond.end78:                                       ; preds = %if.end.i.i.i, %if.then.i.cond.end78_crit_edge
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  %prev.i.i = getelementptr i8, ptr %23, i32 4
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  br label %if.end104

if.else82:                                        ; preds = %cond.end78.thread271, %for.body.if.else82_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %order.0356)
  %tobool.not.i225 = icmp eq i32 %order.0356, 0
  %spec.select.i226 = select i1 %tobool.not.i225, i32 %gfp_flags.2, i32 %or.i
  %35 = ptrtoint ptr %use_dma_alloc.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %use_dma_alloc.i, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool1.not.i = icmp eq i8 %36, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end6.i

if.then2.i:                                       ; preds = %if.else82
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %spec.select.i226, i32 noundef %order.0356, i32 noundef 0, ptr noundef null) #5
  %tobool3.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool3.not.i, label %if.then2.i.if.then92_crit_edge, label %ttm_pool_alloc_page.exit.thread275

if.then2.i.if.then92_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

ttm_pool_alloc_page.exit.thread275:               ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %private.i = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i, i32 0, i32 1, i32 0, i32 3
  %37 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %order.0356, ptr %private.i, align 4
  br label %if.end104

if.end6.i:                                        ; preds = %if.else82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 8) #8
  %tobool8.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i, label %if.end6.i.if.then92_crit_edge, label %if.end10.i

if.end6.i.if.then92_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

if.end10.i:                                       ; preds = %if.end6.i
  %spec.select51.i = select i1 %tobool.not.i225, i32 64, i32 320
  %39 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pool, align 4
  %sh_prom.i = zext i32 %order.0356 to i64
  %mul.i = shl i64 4096, %sh_prom.i
  %conv.i = trunc i64 %mul.i to i32
  %call15.i = tail call ptr @dma_alloc_attrs(ptr noundef %40, i32 noundef %conv.i, ptr noundef nonnull %call7.i.i, i32 noundef %spec.select.i226, i32 noundef %spec.select51.i) #5
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %error_free.i, label %if.end18.i

if.end18.i:                                       ; preds = %if.end10.i
  %call19.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call15.i) #5
  br i1 %call19.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i = tail call ptr @vmalloc_to_page(ptr noundef nonnull %call15.i) #5
  %.pre.i = ptrtoint ptr %call15.i to i32
  br label %ttm_pool_alloc_page.exit

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %call15.i to i32
  %sub.i228 = add i32 %42, 1073741824
  %shr.i = lshr i32 %sub.i228, 12
  %add.ptr.i229 = getelementptr %struct.page, ptr %41, i32 %shr.i
  br label %ttm_pool_alloc_page.exit

error_free.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %if.then92

ttm_pool_alloc_page.exit:                         ; preds = %if.else.i, %if.then20.i
  %.pre-phi.i = phi i32 [ %42, %if.else.i ], [ %.pre.i, %if.then20.i ]
  %p.0.i = phi ptr [ %add.ptr.i229, %if.else.i ], [ %call21.i, %if.then20.i ]
  %or24.i = or i32 %.pre-phi.i, %order.0356
  %vaddr25.i = getelementptr inbounds %struct.ttm_pool_dma, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %vaddr25.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or24.i, ptr %vaddr25.i, align 4
  %44 = ptrtoint ptr %call7.i.i to i32
  %private26.i = getelementptr inbounds %struct.page, ptr %p.0.i, i32 0, i32 1, i32 0, i32 3
  %45 = ptrtoint ptr %private26.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %private26.i, align 4
  %tobool84.not = icmp eq ptr %p.0.i, null
  br i1 %tobool84.not, label %ttm_pool_alloc_page.exit.if.then92_crit_edge, label %ttm_pool_alloc_page.exit.if.end104_crit_edge

ttm_pool_alloc_page.exit.if.end104_crit_edge:     ; preds = %ttm_pool_alloc_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

ttm_pool_alloc_page.exit.if.then92_crit_edge:     ; preds = %ttm_pool_alloc_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

if.then92:                                        ; preds = %ttm_pool_alloc_page.exit.if.then92_crit_edge, %error_free.i, %if.end6.i.if.then92_crit_edge, %if.then2.i.if.then92_crit_edge
  br i1 %tobool.not.i225, label %if.then92.error_free_all_crit_edge, label %if.then94

if.then92.error_free_all_crit_edge:               ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_free_all

if.then94:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i32 %order.0356, -1
  br label %for.inc120

if.end104:                                        ; preds = %ttm_pool_alloc_page.exit.if.end104_crit_edge, %ttm_pool_alloc_page.exit.thread275, %cond.end78
  %p.0.ph289 = phi ptr [ %add.ptr.i, %cond.end78 ], [ %call38.i.i.i.i, %ttm_pool_alloc_page.exit.thread275 ], [ %p.0.i, %ttm_pool_alloc_page.exit.if.end104_crit_edge ]
  %tobool105.not = icmp eq ptr %dma_addr.0352, null
  br i1 %tobool105.not, label %if.end104.if.end111_crit_edge, label %if.then106

if.end104.if.end111_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = shl nuw i32 1, %order.0356
  br label %if.end111

if.then106:                                       ; preds = %if.end104
  %46 = ptrtoint ptr %use_dma_alloc.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %use_dma_alloc.i, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i233 = icmp eq i8 %47, 0
  br i1 %tobool.not.i233, label %if.else.i239, label %if.then.i235

if.then.i235:                                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #7
  %private.i234 = getelementptr inbounds %struct.page, ptr %p.0.ph289, i32 0, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %private.i234 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %private.i234, align 4
  %50 = inttoptr i32 %49 to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  br label %if.end6.i240

if.else.i239:                                     ; preds = %if.then106
  %sh_prom.i236 = zext i32 %order.0356 to i64
  %mul.i237 = shl i64 4096, %sh_prom.i236
  %conv.i238 = trunc i64 %mul.i237 to i32
  %53 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pool, align 4
  %call.i = tail call i32 @dma_map_page_attrs(ptr noundef %54, ptr noundef nonnull %p.0.ph289, i32 noundef 0, i32 noundef %conv.i238, i32 noundef 0, i32 noundef 0) #5
  %55 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pool, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %56, i32 noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i.not.i, label %error_free_page, label %if.else.i239.if.end6.i240_crit_edge

if.else.i239.if.end6.i240_crit_edge:              ; preds = %if.else.i239
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i240

if.end6.i240:                                     ; preds = %if.else.i239.if.end6.i240_crit_edge, %if.then.i235
  %addr.0.i = phi i32 [ %52, %if.then.i235 ], [ %call.i, %if.else.i239.if.end6.i240_crit_edge ]
  %shl7.i = shl nuw i32 1, %order.0356
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.i240
  %dma_addr.1 = phi ptr [ %dma_addr.0352, %if.end6.i240 ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %addr.119.i = phi i32 [ %addr.0.i, %if.end6.i240 ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ %shl7.i, %if.end6.i240 ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %dma_addr.1, i32 1
  %57 = ptrtoint ptr %dma_addr.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %addr.119.i, ptr %dma_addr.1, align 4
  %add.i = add i32 %addr.119.i, 4096
  %dec.i = add i32 %i.018.i, -1
  %tobool8.not.i241 = icmp eq i32 %dec.i, 0
  br i1 %tobool8.not.i241, label %for.body.i.if.end111_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.if.end111_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.end111:                                        ; preds = %for.body.i.if.end111_crit_edge, %if.end104.if.end111_crit_edge
  %shl112.pre-phi = phi i32 [ %.pre, %if.end104.if.end111_crit_edge ], [ %shl7.i, %for.body.i.if.end111_crit_edge ]
  %dma_addr.3 = phi ptr [ null, %if.end104.if.end111_crit_edge ], [ %incdec.ptr.i, %for.body.i.if.end111_crit_edge ]
  br label %for.body116

for.body116:                                      ; preds = %for.body116.for.body116_crit_edge, %if.end111
  %pages2.1350 = phi ptr [ %pages2.0362, %if.end111 ], [ %incdec.ptr117, %for.body116.for.body116_crit_edge ]
  %p.1349 = phi ptr [ %p.0.ph289, %if.end111 ], [ %incdec.ptr, %for.body116.for.body116_crit_edge ]
  %i.0348 = phi i32 [ %shl112.pre-phi, %if.end111 ], [ %dec118, %for.body116.for.body116_crit_edge ]
  %incdec.ptr = getelementptr %struct.page, ptr %p.1349, i32 1
  %incdec.ptr117 = getelementptr ptr, ptr %pages2.1350, i32 1
  %58 = ptrtoint ptr %pages2.1350 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %p.1349, ptr %pages2.1350, align 4
  %dec118 = add i32 %i.0348, -1
  %tobool115.not = icmp eq i32 %dec118, 0
  br i1 %tobool115.not, label %for.inc120.loopexit, label %for.body116.for.body116_crit_edge

for.body116.for.body116_crit_edge:                ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body116

for.inc120.loopexit:                              ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i32 %num_pages.0366, %shl112.pre-phi
  br label %for.inc120

for.inc120:                                       ; preds = %for.inc120.loopexit, %if.then94
  %dma_addr.4.ph = phi ptr [ %dma_addr.0352, %if.then94 ], [ %dma_addr.3, %for.inc120.loopexit ]
  %order.1.ph = phi i32 [ %dec, %if.then94 ], [ %order.0356, %for.inc120.loopexit ]
  %pages2.2.ph = phi ptr [ %pages2.0362, %if.then94 ], [ %incdec.ptr117, %for.inc120.loopexit ]
  %num_pages.1.ph = phi i32 [ %num_pages.0366, %if.then94 ], [ %sub, %for.inc120.loopexit ]
  %59 = tail call i32 @llvm.ctlz.i32(i32 %num_pages.1.ph, i1 false) #5, !range !86
  %sub.i223 = sub nsw i32 31, %59
  %60 = tail call i32 @llvm.umin.i32(i32 %order.1.ph, i32 %sub.i223)
  %tobool71.not = icmp eq i32 %num_pages.1.ph, 0
  br i1 %tobool71.not, label %for.inc120.cleanup147_crit_edge, label %for.inc120.for.body_crit_edge

for.inc120.for.body_crit_edge:                    ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc120.cleanup147_crit_edge:                  ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup147

error_free_page:                                  ; preds = %if.else.i239
  %tobool.not.i242 = icmp eq ptr %pool, null
  br i1 %tobool.not.i242, label %error_free_page.if.then.i245_crit_edge, label %lor.lhs.false.i

error_free_page.if.then.i245_crit_edge:           ; preds = %error_free_page
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i245

lor.lhs.false.i:                                  ; preds = %error_free_page
  %61 = ptrtoint ptr %use_dma_alloc.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %use_dma_alloc.i, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool1.not.i244 = icmp eq i8 %62, 0
  br i1 %tobool1.not.i244, label %lor.lhs.false.i.if.then.i245_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i245_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i245

if.then.i245:                                     ; preds = %lor.lhs.false.i.if.then.i245_crit_edge, %error_free_page.if.then.i245_crit_edge
  tail call void @__free_pages(ptr noundef nonnull %p.0.ph289, i32 noundef %order.0356) #5
  br label %error_free_all

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %order.0356)
  %tobool2.not.i = icmp eq i32 %order.0356, 0
  %spec.select.i246 = select i1 %tobool2.not.i, i32 64, i32 320
  %private.i247 = getelementptr inbounds %struct.page, ptr %p.0.ph289, i32 0, i32 1, i32 0, i32 3
  %63 = ptrtoint ptr %private.i247 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %private.i247, align 4
  %65 = inttoptr i32 %64 to ptr
  %vaddr5.i = getelementptr inbounds %struct.ttm_pool_dma, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %vaddr5.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vaddr5.i, align 4
  %and.i = and i32 %67, -4096
  %68 = inttoptr i32 %and.i to ptr
  %69 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pool, align 4
  %mul.i248 = shl i32 4096, %order.0356
  %71 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %65, align 4
  tail call void @dma_free_attrs(ptr noundef %70, i32 noundef %mul.i248, ptr noundef %68, i32 noundef %72, i32 noundef %spec.select.i246) #5
  tail call void @kfree(ptr noundef %65) #5
  br label %error_free_all

error_free_all:                                   ; preds = %if.end.i, %if.then.i245, %if.then92.error_free_all_crit_edge
  %r.3327 = phi i32 [ -14, %if.then.i245 ], [ -14, %if.end.i ], [ -12, %if.then92.error_free_all_crit_edge ]
  %73 = ptrtoint ptr %num_pages1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_pages1, align 4
  %sub136 = sub i32 %74, %num_pages.0366
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %num_pages.0366)
  %cmp138372.not = icmp eq i32 %74, %num_pages.0366
  br i1 %cmp138372.not, label %error_free_all.cleanup147_crit_edge, label %for.body139.lr.ph

error_free_all.cleanup147_crit_edge:              ; preds = %error_free_all
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup147

for.body139.lr.ph:                                ; preds = %error_free_all
  %tobool.not.i254332 = icmp eq ptr %pool, null
  br label %for.body139

for.body139:                                      ; preds = %ttm_pool_free_page.exit266.for.body139_crit_edge, %for.body139.lr.ph
  %i.1373 = phi i32 [ 0, %for.body139.lr.ph ], [ %add, %ttm_pool_free_page.exit266.for.body139_crit_edge ]
  %75 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tt, align 4
  %arrayidx = getelementptr ptr, ptr %76, i32 %i.1373
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 4
  %79 = ptrtoint ptr %use_dma_alloc.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %use_dma_alloc.i, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i250 = icmp eq i8 %80, 0
  %private1.i = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1, i32 0, i32 3
  %81 = ptrtoint ptr %private1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %private1.i, align 4
  br i1 %tobool.not.i250, label %for.body139.if.then.i258_crit_edge, label %ttm_pool_page_order.exit.thread

for.body139.if.then.i258_crit_edge:               ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i258

ttm_pool_page_order.exit.thread:                  ; preds = %for.body139
  %83 = inttoptr i32 %82 to ptr
  %vaddr.i = getelementptr inbounds %struct.ttm_pool_dma, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vaddr.i, align 4
  %and.i251 = and i32 %85, 4095
  br i1 %tobool.not.i254332, label %ttm_pool_page_order.exit.thread.if.then.i258_crit_edge, label %if.end.i265

ttm_pool_page_order.exit.thread.if.then.i258_crit_edge: ; preds = %ttm_pool_page_order.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i258

if.then.i258:                                     ; preds = %ttm_pool_page_order.exit.thread.if.then.i258_crit_edge, %for.body139.if.then.i258_crit_edge
  %retval.0.i253335 = phi i32 [ %and.i251, %ttm_pool_page_order.exit.thread.if.then.i258_crit_edge ], [ %82, %for.body139.if.then.i258_crit_edge ]
  tail call void @__free_pages(ptr noundef %78, i32 noundef %retval.0.i253335) #5
  br label %ttm_pool_free_page.exit266

if.end.i265:                                      ; preds = %ttm_pool_page_order.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i251)
  %tobool2.not.i259 = icmp eq i32 %and.i251, 0
  %spec.select.i260 = select i1 %tobool2.not.i259, i32 64, i32 320
  %86 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vaddr.i, align 4
  %and.i263 = and i32 %87, -4096
  %88 = inttoptr i32 %and.i263 to ptr
  %89 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pool, align 4
  %mul.i264 = shl i32 4096, %and.i251
  %91 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %83, align 4
  tail call void @dma_free_attrs(ptr noundef %90, i32 noundef %mul.i264, ptr noundef %88, i32 noundef %92, i32 noundef %spec.select.i260) #5
  tail call void @kfree(ptr noundef %83) #5
  br label %ttm_pool_free_page.exit266

ttm_pool_free_page.exit266:                       ; preds = %if.end.i265, %if.then.i258
  %retval.0.i253333 = phi i32 [ %retval.0.i253335, %if.then.i258 ], [ %and.i251, %if.end.i265 ]
  %shl145 = shl nuw i32 1, %retval.0.i253333
  %add = add i32 %shl145, %i.1373
  %cmp138 = icmp ult i32 %add, %sub136
  br i1 %cmp138, label %ttm_pool_free_page.exit266.for.body139_crit_edge, label %ttm_pool_free_page.exit266.cleanup147_crit_edge

ttm_pool_free_page.exit266.cleanup147_crit_edge:  ; preds = %ttm_pool_free_page.exit266
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup147

ttm_pool_free_page.exit266.for.body139_crit_edge: ; preds = %ttm_pool_free_page.exit266
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body139

cleanup147:                                       ; preds = %ttm_pool_free_page.exit266.cleanup147_crit_edge, %error_free_all.cleanup147_crit_edge, %for.inc120.cleanup147_crit_edge, %if.end49.cleanup147_crit_edge
  %retval.0 = phi i32 [ %r.3327, %error_free_all.cleanup147_crit_edge ], [ 0, %if.end49.cleanup147_crit_edge ], [ %r.3327, %ttm_pool_free_page.exit266.cleanup147_crit_edge ], [ 0, %for.inc120.cleanup147_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_pool_free(ptr noundef %pool, ptr nocapture noundef readonly %tt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %tt, i32 0, i32 2
  %0 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp64.not = icmp eq i32 %1, 0
  br i1 %cmp64.not, label %entry.while.cond.preheader_crit_edge, label %for.body.lr.ph

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %entry
  %use_dma_alloc.i = getelementptr inbounds %struct.ttm_pool, ptr %pool, i32 0, i32 1
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %tt, i32 0, i32 4
  %caching = getelementptr inbounds %struct.ttm_tt, ptr %tt, i32 0, i32 6
  %tobool.not.i42 = icmp eq ptr %pool, null
  br label %for.body

while.cond.preheader:                             ; preds = %if.end12.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %call.i.i68 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  %2 = load volatile i32, ptr @allocated_pages, align 4
  %3 = load i32, ptr @page_pool_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp1469 = icmp ugt i32 %2, %3
  br i1 %cmp1469, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end12.for.body_crit_edge ]
  %4 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tt, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.065
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %use_dma_alloc.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_dma_alloc.i, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %private1.i = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %private1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private1.i, align 4
  br i1 %tobool.not.i, label %ttm_pool_page_order.exit, label %ttm_pool_page_order.exit.thread

ttm_pool_page_order.exit:                         ; preds = %for.body
  %sh_prom = zext i32 %11 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv = trunc i64 %shl to i32
  %12 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_address, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %ttm_pool_page_order.exit.if.end_crit_edge, label %if.end.i

ttm_pool_page_order.exit.if.end_crit_edge:        ; preds = %ttm_pool_page_order.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

ttm_pool_page_order.exit.thread:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = inttoptr i32 %11 to ptr
  %vaddr.i = getelementptr inbounds %struct.ttm_pool_dma, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vaddr.i, align 4
  %and.i = and i32 %16, 4095
  %sh_prom48 = zext i32 %and.i to i64
  %shl49 = shl nuw i64 1, %sh_prom48
  %conv50 = trunc i64 %shl49 to i32
  br label %if.end

if.end.i:                                         ; preds = %ttm_pool_page_order.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3 = getelementptr i32, ptr %13, i32 %i.065
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx3, align 4
  %19 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pool, align 4
  %shl.i = shl i32 %conv, 12
  tail call void @dma_unmap_page_attrs(ptr noundef %20, i32 noundef %18, i32 noundef %shl.i, i32 noundef 0, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.end.i, %ttm_pool_page_order.exit.thread, %ttm_pool_page_order.exit.if.end_crit_edge
  %conv57 = phi i32 [ %conv, %ttm_pool_page_order.exit.if.end_crit_edge ], [ %conv, %if.end.i ], [ %conv50, %ttm_pool_page_order.exit.thread ]
  %retval.0.i54 = phi i32 [ %11, %ttm_pool_page_order.exit.if.end_crit_edge ], [ %11, %if.end.i ], [ %and.i, %ttm_pool_page_order.exit.thread ]
  %21 = ptrtoint ptr %caching to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caching, align 4
  %23 = ptrtoint ptr %use_dma_alloc.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %use_dma_alloc.i, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i39 = icmp eq i8 %24, 0
  %arrayidx.i = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 %22
  %arrayidx2.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.i, i32 0, i32 %retval.0.i54
  %tobool5.not63 = icmp eq ptr %arrayidx2.i, null
  %tobool5.not = select i1 %tobool.not.i39, i1 true, i1 %tobool5.not63
  %25 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tt, align 4
  %arrayidx11 = getelementptr ptr, ptr %26, i32 %i.065
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx11, align 4
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %order.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.i, i32 0, i32 %retval.0.i54, i32 1
  %29 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %order.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then6
  %i.022.i = phi i32 [ 0, %if.then6 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 4
  %shr.i.i = lshr i32 %32, 30
  %33 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %for.body.i.if.else.i_crit_edge [
    i32 2, label %for.body.i.if.then.i41_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

for.body.i.if.then.i41_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i41

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

is_highmem_idx.exit.i:                            ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %34 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp2.i.not.i = icmp eq i32 %34, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.then.i41_crit_edge, label %is_highmem_idx.exit.i.if.else.i_crit_edge

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

is_highmem_idx.exit.i.if.then.i41_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i41

if.then.i41:                                      ; preds = %is_highmem_idx.exit.i.if.then.i41_crit_edge, %for.body.i.if.then.i41_crit_edge
  %add.ptr.i = getelementptr %struct.page, ptr %28, i32 %i.022.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %35 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %35, 512
  %call.i.i17.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i.i.i) #5
  %36 = call ptr @memset(ptr %call.i.i17.i, i32 0, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i17.i) #5
  br label %for.inc.i

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %add.ptr2.i = getelementptr %struct.page, ptr %28, i32 %i.022.i
  %call3.i = tail call ptr @page_address(ptr noundef %add.ptr2.i) #5
  %37 = call ptr @memset(ptr %call3.i, i32 0, i32 4096)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i41
  %inc.i = add i32 %i.022.i, 1
  %i.0.highbits.i = lshr i32 %inc.i, %30
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %lock.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.i, i32 0, i32 %retval.0.i54, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #5
  %38 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %pages.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.i, i32 0, i32 %retval.0.i54, i32 5
  %39 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pages.i, align 4
  %call.i.i18.i = tail call zeroext i1 @__list_add_valid(ptr noundef %38, ptr noundef %pages.i, ptr noundef %40) #5
  br i1 %call.i.i18.i, label %if.end.i.i.i, label %for.end.i.ttm_pool_type_give.exit_crit_edge

for.end.i.ttm_pool_type_give.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_pool_type_give.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %38, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %pages.i, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %38, ptr %pages.i, align 4
  br label %ttm_pool_type_give.exit

ttm_pool_type_give.exit:                          ; preds = %if.end.i.i.i, %for.end.i.ttm_pool_type_give.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  %45 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %order.i, align 4
  %shl6.i = shl nuw i32 1, %46
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr nonnull @allocated_pages, i32 1, i32 3, i32 1) #5
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @allocated_pages, ptr nonnull @allocated_pages, i32 %shl6.i, ptr nonnull elementtype(i32) @allocated_pages) #5, !srcloc !88
  br label %if.end12

if.else:                                          ; preds = %if.end
  %brmerge = select i1 %tobool.not.i42, i1 true, i1 %tobool.not.i39
  br i1 %brmerge, label %if.then.i44, label %if.end.i46

if.then.i44:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__free_pages(ptr noundef %28, i32 noundef %retval.0.i54) #5
  br label %if.end12

if.end.i46:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i54)
  %tobool2.not.i = icmp eq i32 %retval.0.i54, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 64, i32 320
  %private.i = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %private.i, align 4
  %50 = inttoptr i32 %49 to ptr
  %vaddr5.i = getelementptr inbounds %struct.ttm_pool_dma, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %vaddr5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vaddr5.i, align 4
  %and.i45 = and i32 %52, -4096
  %53 = inttoptr i32 %and.i45 to ptr
  %54 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pool, align 4
  %mul.i = shl i32 4096, %retval.0.i54
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %50, align 4
  tail call void @dma_free_attrs(ptr noundef %55, i32 noundef %mul.i, ptr noundef %53, i32 noundef %57, i32 noundef %spec.select.i) #5
  tail call void @kfree(ptr noundef %50) #5
  br label %if.end12

if.end12:                                         ; preds = %if.end.i46, %if.then.i44, %ttm_pool_type_give.exit
  %add = add i32 %conv57, %i.065
  %58 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_pages, align 4
  %cmp = icmp ult i32 %add, %59
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.while.cond.preheader_crit_edge

if.end12.while.cond.preheader_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call16 = tail call fastcc i32 @ttm_pool_shrink()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  %60 = load volatile i32, ptr @allocated_pages, align 4
  %61 = load i32, ptr @page_pool_size, align 4
  %cmp14 = icmp ugt i32 %60, %61
  br i1 %cmp14, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ttm_pool_shrink() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #5
  %0 = load ptr, ptr @shrinker_list, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 -12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %7, ptr noundef nonnull @shrinker_list) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @shrinker_list, ptr %0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %0, ptr %7, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shrinker_lock) #5
  %lock.i = getelementptr i8, ptr %0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #5
  %pages.i = getelementptr i8, ptr %0, i32 52
  %11 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pages.i, align 4
  %cmp.not.i = icmp eq ptr %12, %pages.i
  %add.ptr.i = getelementptr i8, ptr %12, i32 -4
  %tobool.not.i14 = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not.i14
  br i1 %tobool.not.i, label %ttm_pool_type_take.exit.thread, label %if.then.i

ttm_pool_type_take.exit.thread:                   ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  br label %if.end

if.then.i:                                        ; preds = %list_move_tail.exit
  %order.i = getelementptr i8, ptr %0, i32 -8
  %13 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %order.i, align 4
  %shl.i = shl nuw i32 1, %14
  %call.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr nonnull @allocated_pages, i32 1, i32 3, i32 1) #5
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @allocated_pages, ptr nonnull @allocated_pages, i32 %shl.i, ptr nonnull elementtype(i32) @allocated_pages) #5, !srcloc !87
  %call.i.i11.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #5
  br i1 %call.i.i11.i, label %if.end.i.i.i9, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.i.i.i9:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr i8, ptr %12, i32 4
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %12, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %if.then

if.then:                                          ; preds = %if.end.i.i.i9, %if.then.i.if.then_crit_edge
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  %prev.i.i10 = getelementptr i8, ptr %12, i32 4
  %23 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i10, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %26 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %order.i, align 4
  %tobool.not.i11 = icmp eq ptr %25, null
  br i1 %tobool.not.i11, label %if.then.if.then.i12_crit_edge, label %lor.lhs.false.i

if.then.if.then.i12_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i12

lor.lhs.false.i:                                  ; preds = %if.then
  %use_dma_alloc.i = getelementptr inbounds %struct.ttm_pool, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %use_dma_alloc.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %use_dma_alloc.i, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool1.not.i = icmp eq i8 %29, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i12_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i12_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i12

if.then.i12:                                      ; preds = %lor.lhs.false.i.if.then.i12_crit_edge, %if.then.if.then.i12_crit_edge
  tail call void @__free_pages(ptr noundef nonnull %add.ptr.i, i32 noundef %27) #5
  br label %ttm_pool_free_page.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not.i = icmp eq i32 %27, 0
  %spec.select.i13 = select i1 %tobool2.not.i, i32 64, i32 320
  %private.i = getelementptr i8, ptr %12, i32 16
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %private.i, align 4
  %32 = inttoptr i32 %31 to ptr
  %vaddr5.i = getelementptr inbounds %struct.ttm_pool_dma, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %vaddr5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vaddr5.i, align 4
  %and.i = and i32 %34, -4096
  %35 = inttoptr i32 %and.i to ptr
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %25, align 4
  %mul.i = shl i32 4096, %27
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %32, align 4
  tail call void @dma_free_attrs(ptr noundef %37, i32 noundef %mul.i, ptr noundef %35, i32 noundef %39, i32 noundef %spec.select.i13) #5
  tail call void @kfree(ptr noundef %32) #5
  br label %ttm_pool_free_page.exit

ttm_pool_free_page.exit:                          ; preds = %if.end.i, %if.then.i12
  %40 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %order.i, align 4
  %shl = shl nuw i32 1, %41
  br label %if.end

if.end:                                           ; preds = %ttm_pool_free_page.exit, %ttm_pool_type_take.exit.thread
  %num_pages.0 = phi i32 [ %shl, %ttm_pool_free_page.exit ], [ 0, %ttm_pool_type_take.exit.thread ]
  ret i32 %num_pages.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_pool_init(ptr noundef %pool, ptr noundef %dev, i1 noundef zeroext %use_dma_alloc, i1 noundef zeroext %use_dma32) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %use_dma_alloc to i8
  %frombool1 = zext i1 %use_dma32 to i8
  %tobool.not = icmp eq ptr %dev, null
  %spec.select = and i1 %tobool.not, %use_dma_alloc
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !84

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 502, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %pool, align 4
  %use_dma_alloc24 = getelementptr inbounds %struct.ttm_pool, ptr %pool, i32 0, i32 1
  %1 = ptrtoint ptr %use_dma_alloc24 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %use_dma_alloc24, align 4
  %use_dma3227 = getelementptr inbounds %struct.ttm_pool, ptr %pool, i32 0, i32 2
  %2 = ptrtoint ptr %use_dma3227 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool1, ptr %use_dma3227, align 1
  br i1 %use_dma_alloc, label %for.cond31.preheader.preheader, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

for.cond31.preheader.preheader:                   ; preds = %if.end
  %arrayidx = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0
  br label %for.body33

for.body33:                                       ; preds = %ttm_pool_type_init.exit.for.body33_crit_edge, %for.cond31.preheader.preheader
  %j.053 = phi i32 [ 0, %for.cond31.preheader.preheader ], [ %inc, %ttm_pool_type_init.exit.for.body33_crit_edge ]
  %arrayidx34 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx, i32 0, i32 %j.053
  %3 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pool, ptr %arrayidx34, align 4
  %caching2.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx, i32 0, i32 %j.053, i32 2
  %4 = ptrtoint ptr %caching2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %caching2.i, align 4
  %order3.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx, i32 0, i32 %j.053, i32 1
  %5 = ptrtoint ptr %order3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %j.053, ptr %order3.i, align 4
  %lock.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx, i32 0, i32 %j.053, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @ttm_pool_type_init.__key, i16 noundef signext 3) #5
  %pages.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx, i32 0, i32 %j.053, i32 5
  %6 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %pages.i, ptr %pages.i, align 4
  %prev.i.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx, i32 0, i32 %j.053, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pages.i, ptr %prev.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #5
  %shrinker_list.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx, i32 0, i32 %j.053, i32 3
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %shrinker_list.i, ptr noundef %8, ptr noundef nonnull @shrinker_list) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body33.ttm_pool_type_init.exit_crit_edge

for.body33.ttm_pool_type_init.exit_crit_edge:     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_pool_type_init.exit

if.end.i.i.i:                                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %shrinker_list.i, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %shrinker_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @shrinker_list, ptr %shrinker_list.i, align 4
  %prev3.i.i.i = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx, i32 0, i32 %j.053, i32 3, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %shrinker_list.i, ptr %8, align 4
  br label %ttm_pool_type_init.exit

ttm_pool_type_init.exit:                          ; preds = %if.end.i.i.i, %for.body33.ttm_pool_type_init.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shrinker_lock) #5
  %inc = add nuw nsw i32 %j.053, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.inc35, label %ttm_pool_type_init.exit.for.body33_crit_edge

ttm_pool_type_init.exit.for.body33_crit_edge:     ; preds = %ttm_pool_type_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body33

for.inc35:                                        ; preds = %ttm_pool_type_init.exit
  %arrayidx.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1
  br label %for.body33.1

for.body33.1:                                     ; preds = %ttm_pool_type_init.exit.1.for.body33.1_crit_edge, %for.inc35
  %j.053.1 = phi i32 [ 0, %for.inc35 ], [ %inc.1, %ttm_pool_type_init.exit.1.for.body33.1_crit_edge ]
  %arrayidx34.1 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.1, i32 0, i32 %j.053.1
  %12 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pool, ptr %arrayidx34.1, align 4
  %caching2.i.1 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.1, i32 0, i32 %j.053.1, i32 2
  %13 = ptrtoint ptr %caching2.i.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %caching2.i.1, align 4
  %order3.i.1 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.1, i32 0, i32 %j.053.1, i32 1
  %14 = ptrtoint ptr %order3.i.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %j.053.1, ptr %order3.i.1, align 4
  %lock.i.1 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.1, i32 0, i32 %j.053.1, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @ttm_pool_type_init.__key, i16 noundef signext 3) #5
  %pages.i.1 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.1, i32 0, i32 %j.053.1, i32 5
  %15 = ptrtoint ptr %pages.i.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %pages.i.1, ptr %pages.i.1, align 4
  %prev.i.i.1 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.1, i32 0, i32 %j.053.1, i32 5, i32 1
  %16 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pages.i.1, ptr %prev.i.i.1, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #5
  %shrinker_list.i.1 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.1, i32 0, i32 %j.053.1, i32 3
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %call.i.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %shrinker_list.i.1, ptr noundef %17, ptr noundef nonnull @shrinker_list) #5
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %for.body33.1.ttm_pool_type_init.exit.1_crit_edge

for.body33.1.ttm_pool_type_init.exit.1_crit_edge: ; preds = %for.body33.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_pool_type_init.exit.1

if.end.i.i.i.1:                                   ; preds = %for.body33.1
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %shrinker_list.i.1, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %18 = ptrtoint ptr %shrinker_list.i.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @shrinker_list, ptr %shrinker_list.i.1, align 4
  %prev3.i.i.i.1 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.1, i32 0, i32 %j.053.1, i32 3, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %prev3.i.i.i.1, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %shrinker_list.i.1, ptr %17, align 4
  br label %ttm_pool_type_init.exit.1

ttm_pool_type_init.exit.1:                        ; preds = %if.end.i.i.i.1, %for.body33.1.ttm_pool_type_init.exit.1_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shrinker_lock) #5
  %inc.1 = add nuw nsw i32 %j.053.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 12
  br i1 %exitcond.1.not, label %for.inc35.1, label %ttm_pool_type_init.exit.1.for.body33.1_crit_edge

ttm_pool_type_init.exit.1.for.body33.1_crit_edge: ; preds = %ttm_pool_type_init.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body33.1

for.inc35.1:                                      ; preds = %ttm_pool_type_init.exit.1
  %arrayidx.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2
  br label %for.body33.2

for.body33.2:                                     ; preds = %ttm_pool_type_init.exit.2.for.body33.2_crit_edge, %for.inc35.1
  %j.053.2 = phi i32 [ 0, %for.inc35.1 ], [ %inc.2, %ttm_pool_type_init.exit.2.for.body33.2_crit_edge ]
  %arrayidx34.2 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.2, i32 0, i32 %j.053.2
  %21 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pool, ptr %arrayidx34.2, align 4
  %caching2.i.2 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.2, i32 0, i32 %j.053.2, i32 2
  %22 = ptrtoint ptr %caching2.i.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %caching2.i.2, align 4
  %order3.i.2 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.2, i32 0, i32 %j.053.2, i32 1
  %23 = ptrtoint ptr %order3.i.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %j.053.2, ptr %order3.i.2, align 4
  %lock.i.2 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.2, i32 0, i32 %j.053.2, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.2, ptr noundef nonnull @.str.10, ptr noundef nonnull @ttm_pool_type_init.__key, i16 noundef signext 3) #5
  %pages.i.2 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.2, i32 0, i32 %j.053.2, i32 5
  %24 = ptrtoint ptr %pages.i.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %pages.i.2, ptr %pages.i.2, align 4
  %prev.i.i.2 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.2, i32 0, i32 %j.053.2, i32 5, i32 1
  %25 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pages.i.2, ptr %prev.i.i.2, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #5
  %shrinker_list.i.2 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.2, i32 0, i32 %j.053.2, i32 3
  %26 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %call.i.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %shrinker_list.i.2, ptr noundef %26, ptr noundef nonnull @shrinker_list) #5
  br i1 %call.i.i.i.2, label %if.end.i.i.i.2, label %for.body33.2.ttm_pool_type_init.exit.2_crit_edge

for.body33.2.ttm_pool_type_init.exit.2_crit_edge: ; preds = %for.body33.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_pool_type_init.exit.2

if.end.i.i.i.2:                                   ; preds = %for.body33.2
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %shrinker_list.i.2, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %27 = ptrtoint ptr %shrinker_list.i.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @shrinker_list, ptr %shrinker_list.i.2, align 4
  %prev3.i.i.i.2 = getelementptr [12 x %struct.ttm_pool_type], ptr %arrayidx.2, i32 0, i32 %j.053.2, i32 3, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %prev3.i.i.i.2, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %shrinker_list.i.2, ptr %26, align 4
  br label %ttm_pool_type_init.exit.2

ttm_pool_type_init.exit.2:                        ; preds = %if.end.i.i.i.2, %for.body33.2.ttm_pool_type_init.exit.2_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shrinker_lock) #5
  %inc.2 = add nuw nsw i32 %j.053.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 12
  br i1 %exitcond.2.not, label %ttm_pool_type_init.exit.2.if.end38_crit_edge, label %ttm_pool_type_init.exit.2.for.body33.2_crit_edge

ttm_pool_type_init.exit.2.for.body33.2_crit_edge: ; preds = %ttm_pool_type_init.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body33.2

ttm_pool_type_init.exit.2.if.end38_crit_edge:     ; preds = %ttm_pool_type_init.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end38:                                         ; preds = %ttm_pool_type_init.exit.2.if.end38_crit_edge, %if.end.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_pool_fini(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %use_dma_alloc = getelementptr inbounds %struct.ttm_pool, ptr %pool, i32 0, i32 1
  %0 = ptrtoint ptr %use_dma_alloc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_dma_alloc, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond1.preheader.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond1.preheader.preheader:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx)
  %arrayidx4.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0, i32 0, i32 1
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.1)
  %arrayidx4.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0, i32 0, i32 2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.2)
  %arrayidx4.3 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0, i32 0, i32 3
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.3)
  %arrayidx4.4 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0, i32 0, i32 4
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.4)
  %arrayidx4.5 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0, i32 0, i32 5
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.5)
  %arrayidx4.6 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0, i32 0, i32 6
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.6)
  %arrayidx4.7 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0, i32 0, i32 7
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.7)
  %arrayidx4.8 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0, i32 0, i32 8
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.8)
  %arrayidx4.9 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0, i32 0, i32 9
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.9)
  %arrayidx4.10 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0, i32 0, i32 10
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.10)
  %arrayidx4.11 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0, i32 0, i32 11
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.11)
  %arrayidx.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx.1)
  %arrayidx4.1.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1, i32 0, i32 1
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.1.1)
  %arrayidx4.2.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1, i32 0, i32 2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.2.1)
  %arrayidx4.3.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1, i32 0, i32 3
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.3.1)
  %arrayidx4.4.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1, i32 0, i32 4
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.4.1)
  %arrayidx4.5.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1, i32 0, i32 5
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.5.1)
  %arrayidx4.6.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1, i32 0, i32 6
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.6.1)
  %arrayidx4.7.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1, i32 0, i32 7
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.7.1)
  %arrayidx4.8.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1, i32 0, i32 8
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.8.1)
  %arrayidx4.9.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1, i32 0, i32 9
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.9.1)
  %arrayidx4.10.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1, i32 0, i32 10
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.10.1)
  %arrayidx4.11.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1, i32 0, i32 11
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.11.1)
  %arrayidx.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx.2)
  %arrayidx4.1.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2, i32 0, i32 1
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.1.2)
  %arrayidx4.2.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2, i32 0, i32 2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.2.2)
  %arrayidx4.3.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2, i32 0, i32 3
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.3.2)
  %arrayidx4.4.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2, i32 0, i32 4
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.4.2)
  %arrayidx4.5.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2, i32 0, i32 5
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.5.2)
  %arrayidx4.6.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2, i32 0, i32 6
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.6.2)
  %arrayidx4.7.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2, i32 0, i32 7
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.7.2)
  %arrayidx4.8.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2, i32 0, i32 8
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.8.2)
  %arrayidx4.9.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2, i32 0, i32 9
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.9.2)
  %arrayidx4.10.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2, i32 0, i32 10
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.10.2)
  %arrayidx4.11.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2, i32 0, i32 11
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx4.11.2)
  br label %if.end

if.end:                                           ; preds = %for.cond1.preheader.preheader, %entry.if.end_crit_edge
  tail call void @synchronize_shrinkers() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ttm_pool_type_fini(ptr noundef %pt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #5
  %shrinker_list = getelementptr inbounds %struct.ttm_pool_type, ptr %pt, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %shrinker_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.ttm_pool_type, ptr %pt, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %shrinker_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shrinker_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %shrinker_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %shrinker_list, align 4
  %prev.i = getelementptr inbounds %struct.ttm_pool_type, ptr %pt, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shrinker_lock) #5
  %lock.i = getelementptr inbounds %struct.ttm_pool_type, ptr %pt, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #5
  %pages.i = getelementptr inbounds %struct.ttm_pool_type, ptr %pt, i32 0, i32 5
  %8 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pages.i, align 4
  %cmp.not.i10 = icmp eq ptr %9, %pages.i
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 -4
  %tobool.not.i912 = icmp eq ptr %add.ptr.i11, null
  %tobool.not.i13 = or i1 %cmp.not.i10, %tobool.not.i912
  br i1 %tobool.not.i13, label %list_del.exit.while.end_crit_edge, label %if.then.i.lr.ph

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.then.i.lr.ph:                                  ; preds = %list_del.exit
  %order.i = getelementptr inbounds %struct.ttm_pool_type, ptr %pt, i32 0, i32 1
  br label %if.then.i

if.then.i:                                        ; preds = %ttm_pool_free_page.exit.if.then.i_crit_edge, %if.then.i.lr.ph
  %add.ptr.i14 = phi ptr [ %add.ptr.i11, %if.then.i.lr.ph ], [ %add.ptr.i, %ttm_pool_free_page.exit.if.then.i_crit_edge ]
  %10 = phi ptr [ %9, %if.then.i.lr.ph ], [ %39, %ttm_pool_free_page.exit.if.then.i_crit_edge ]
  %11 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %order.i, align 4
  %shl.i = shl nuw i32 1, %12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr nonnull @allocated_pages, i32 1, i32 3, i32 1) #5
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @allocated_pages, ptr nonnull @allocated_pages, i32 %shl.i, ptr nonnull elementtype(i32) @allocated_pages) #5, !srcloc !87
  %call.i.i11.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #5
  br i1 %call.i.i11.i, label %if.end.i.i.i, label %if.then.i.while.body_crit_edge

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr i8, ptr %10, i32 4
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.i.i.i, %if.then.i.while.body_crit_edge
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i.i5 = getelementptr i8, ptr %10, i32 4
  %21 = ptrtoint ptr %prev.i.i5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i5, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  %22 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pt, align 4
  %24 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %order.i, align 4
  %tobool.not.i6 = icmp eq ptr %23, null
  br i1 %tobool.not.i6, label %while.body.if.then.i7_crit_edge, label %lor.lhs.false.i

while.body.if.then.i7_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i7

lor.lhs.false.i:                                  ; preds = %while.body
  %use_dma_alloc.i = getelementptr inbounds %struct.ttm_pool, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %use_dma_alloc.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %use_dma_alloc.i, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not.i = icmp eq i8 %27, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i7_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i7_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i7

if.then.i7:                                       ; preds = %lor.lhs.false.i.if.then.i7_crit_edge, %while.body.if.then.i7_crit_edge
  tail call void @__free_pages(ptr noundef nonnull %add.ptr.i14, i32 noundef %25) #5
  br label %ttm_pool_free_page.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not.i = icmp eq i32 %25, 0
  %spec.select.i8 = select i1 %tobool2.not.i, i32 64, i32 320
  %private.i = getelementptr i8, ptr %10, i32 16
  %28 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %private.i, align 4
  %30 = inttoptr i32 %29 to ptr
  %vaddr5.i = getelementptr inbounds %struct.ttm_pool_dma, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %vaddr5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vaddr5.i, align 4
  %and.i = and i32 %32, -4096
  %33 = inttoptr i32 %and.i to ptr
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %23, align 4
  %mul.i = shl i32 4096, %25
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %30, align 4
  tail call void @dma_free_attrs(ptr noundef %35, i32 noundef %mul.i, ptr noundef %33, i32 noundef %37, i32 noundef %spec.select.i8) #5
  tail call void @kfree(ptr noundef %30) #5
  br label %ttm_pool_free_page.exit

ttm_pool_free_page.exit:                          ; preds = %if.end.i, %if.then.i7
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #5
  %38 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %pages.i, align 4
  %cmp.not.i = icmp eq ptr %39, %pages.i
  %add.ptr.i = getelementptr i8, ptr %39, i32 -4
  %tobool.not.i9 = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not.i9
  br i1 %tobool.not.i, label %ttm_pool_free_page.exit.while.end_crit_edge, label %ttm_pool_free_page.exit.if.then.i_crit_edge

ttm_pool_free_page.exit.if.then.i_crit_edge:      ; preds = %ttm_pool_free_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

ttm_pool_free_page.exit.while.end_crit_edge:      ; preds = %ttm_pool_free_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %ttm_pool_free_page.exit.while.end_crit_edge, %list_del.exit.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_shrinkers() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_pool_debugfs(ptr noundef %pool, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %use_dma_alloc = getelementptr inbounds %struct.ttm_pool, ptr %pool, i32 0, i32 1
  %0 = ptrtoint ptr %use_dma_alloc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_dma_alloc, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %sw.epilog

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.1) #5
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  tail call fastcc void @ttm_pool_debugfs_header(ptr noundef %m)
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #5
  %arrayidx = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %ttm_pool_type_count.exit.i.for.body.i_crit_edge, %sw.epilog
  %i.04.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %ttm_pool_type_count.exit.i.for.body.i_crit_edge ]
  %lock.i.i = getelementptr %struct.ttm_pool_type, ptr %arrayidx, i32 %i.04.i, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #5
  %pages.i.i = getelementptr %struct.ttm_pool_type, ptr %arrayidx, i32 %i.04.i, i32 5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %for.body.i
  %.pn.in.i.i = phi ptr [ %pages.i.i, %for.body.i ], [ %.pn.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %count.0.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %pages.i.i
  %inc.i.i = add i32 %count.0.i.i, 1
  br i1 %cmp.not.i.i, label %ttm_pool_type_count.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

ttm_pool_type_count.exit.i:                       ; preds = %for.cond.i.i
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %count.0.i.i) #5
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %sw.epilog.1, label %ttm_pool_type_count.exit.i.for.body.i_crit_edge

ttm_pool_type_count.exit.i.for.body.i_crit_edge:  ; preds = %ttm_pool_type_count.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

sw.epilog.1:                                      ; preds = %ttm_pool_type_count.exit.i
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #5
  %arrayidx.1 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 1
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %ttm_pool_type_count.exit.i.1.for.body.i.1_crit_edge, %sw.epilog.1
  %i.04.i.1 = phi i32 [ 0, %sw.epilog.1 ], [ %inc.i.1, %ttm_pool_type_count.exit.i.1.for.body.i.1_crit_edge ]
  %lock.i.i.1 = getelementptr %struct.ttm_pool_type, ptr %arrayidx.1, i32 %i.04.i.1, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.1) #5
  %pages.i.i.1 = getelementptr %struct.ttm_pool_type, ptr %arrayidx.1, i32 %i.04.i.1, i32 5
  br label %for.cond.i.i.1

for.cond.i.i.1:                                   ; preds = %for.cond.i.i.1.for.cond.i.i.1_crit_edge, %for.body.i.1
  %.pn.in.i.i.1 = phi ptr [ %pages.i.i.1, %for.body.i.1 ], [ %.pn.i.i.1, %for.cond.i.i.1.for.cond.i.i.1_crit_edge ]
  %count.0.i.i.1 = phi i32 [ 0, %for.body.i.1 ], [ %inc.i.i.1, %for.cond.i.i.1.for.cond.i.i.1_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i.i.1 = load ptr, ptr %.pn.in.i.i.1, align 4
  %cmp.not.i.i.1 = icmp eq ptr %.pn.i.i.1, %pages.i.i.1
  %inc.i.i.1 = add i32 %count.0.i.i.1, 1
  br i1 %cmp.not.i.i.1, label %ttm_pool_type_count.exit.i.1, label %for.cond.i.i.1.for.cond.i.i.1_crit_edge

for.cond.i.i.1.for.cond.i.i.1_crit_edge:          ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.1

ttm_pool_type_count.exit.i.1:                     ; preds = %for.cond.i.i.1
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.1) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %count.0.i.i.1) #5
  %inc.i.1 = add nuw nsw i32 %i.04.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 12
  br i1 %exitcond.not.i.1, label %sw.epilog.2, label %ttm_pool_type_count.exit.i.1.for.body.i.1_crit_edge

ttm_pool_type_count.exit.i.1.for.body.i.1_crit_edge: ; preds = %ttm_pool_type_count.exit.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.1

sw.epilog.2:                                      ; preds = %ttm_pool_type_count.exit.i.1
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.3) #5
  %arrayidx.2 = getelementptr %struct.ttm_pool, ptr %pool, i32 0, i32 3, i32 2
  br label %for.body.i.2

for.body.i.2:                                     ; preds = %ttm_pool_type_count.exit.i.2.for.body.i.2_crit_edge, %sw.epilog.2
  %i.04.i.2 = phi i32 [ 0, %sw.epilog.2 ], [ %inc.i.2, %ttm_pool_type_count.exit.i.2.for.body.i.2_crit_edge ]
  %lock.i.i.2 = getelementptr %struct.ttm_pool_type, ptr %arrayidx.2, i32 %i.04.i.2, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.2) #5
  %pages.i.i.2 = getelementptr %struct.ttm_pool_type, ptr %arrayidx.2, i32 %i.04.i.2, i32 5
  br label %for.cond.i.i.2

for.cond.i.i.2:                                   ; preds = %for.cond.i.i.2.for.cond.i.i.2_crit_edge, %for.body.i.2
  %.pn.in.i.i.2 = phi ptr [ %pages.i.i.2, %for.body.i.2 ], [ %.pn.i.i.2, %for.cond.i.i.2.for.cond.i.i.2_crit_edge ]
  %count.0.i.i.2 = phi i32 [ 0, %for.body.i.2 ], [ %inc.i.i.2, %for.cond.i.i.2.for.cond.i.i.2_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i.i.2 = load ptr, ptr %.pn.in.i.i.2, align 4
  %cmp.not.i.i.2 = icmp eq ptr %.pn.i.i.2, %pages.i.i.2
  %inc.i.i.2 = add i32 %count.0.i.i.2, 1
  br i1 %cmp.not.i.i.2, label %ttm_pool_type_count.exit.i.2, label %for.cond.i.i.2.for.cond.i.i.2_crit_edge

for.cond.i.i.2.for.cond.i.i.2_crit_edge:          ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.2

ttm_pool_type_count.exit.i.2:                     ; preds = %for.cond.i.i.2
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.2) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %count.0.i.i.2) #5
  %inc.i.2 = add nuw nsw i32 %i.04.i.2, 1
  %exitcond.not.i.2 = icmp eq i32 %inc.i.2, 12
  br i1 %exitcond.not.i.2, label %ttm_pool_debugfs_orders.exit.2, label %ttm_pool_type_count.exit.i.2.for.body.i.2_crit_edge

ttm_pool_type_count.exit.i.2.for.body.i.2_crit_edge: ; preds = %ttm_pool_type_count.exit.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.2

ttm_pool_debugfs_orders.exit.2:                   ; preds = %ttm_pool_type_count.exit.i.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #5
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shrinker_lock) #5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  %5 = load volatile i32, ptr @allocated_pages, align 4
  %6 = load i32, ptr @page_pool_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %5, i32 noundef %6) #5
  br label %cleanup

cleanup:                                          ; preds = %ttm_pool_debugfs_orders.exit.2, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ttm_pool_debugfs_header(ptr noundef %m) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 0) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 1) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 2) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 3) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 4) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 5) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 6) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 7) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 8) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 9) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 10) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 11) #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_pool_mgr_init(i32 noundef %num_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @page_pool_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i32 %num_pages, ptr @page_pool_size, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @shrinker_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ttm_pool_mgr_init.__key, i16 noundef signext 3) #5
  store volatile ptr @shrinker_list, ptr @shrinker_list, align 4
  store ptr @shrinker_list, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  br label %for.body

for.body:                                         ; preds = %ttm_pool_type_init.exit45.for.body_crit_edge, %do.body
  %i.046 = phi i32 [ 0, %do.body ], [ %inc, %ttm_pool_type_init.exit45.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %i.046
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx, align 4
  %caching2.i = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %i.046, i32 2
  %2 = ptrtoint ptr %caching2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %caching2.i, align 4
  %order3.i = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %i.046, i32 1
  %3 = ptrtoint ptr %order3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i.046, ptr %order3.i, align 4
  %lock.i = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %i.046, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @ttm_pool_type_init.__key, i16 noundef signext 3) #5
  %pages.i = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %i.046, i32 5
  %4 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %pages.i, ptr %pages.i, align 4
  %prev.i.i = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %i.046, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pages.i, ptr %prev.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #5
  %shrinker_list.i = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %i.046, i32 3
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %shrinker_list.i, ptr noundef %6, ptr noundef nonnull @shrinker_list) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.ttm_pool_type_init.exit_crit_edge

for.body.ttm_pool_type_init.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_pool_type_init.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %shrinker_list.i, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %7 = ptrtoint ptr %shrinker_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @shrinker_list, ptr %shrinker_list.i, align 4
  %prev3.i.i.i = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %i.046, i32 3, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %shrinker_list.i, ptr %6, align 4
  br label %ttm_pool_type_init.exit

ttm_pool_type_init.exit:                          ; preds = %if.end.i.i.i, %for.body.ttm_pool_type_init.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shrinker_lock) #5
  %arrayidx1 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %i.046
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx1, align 4
  %caching2.i16 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %i.046, i32 2
  %11 = ptrtoint ptr %caching2.i16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %caching2.i16, align 4
  %order3.i17 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %i.046, i32 1
  %12 = ptrtoint ptr %order3.i17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.046, ptr %order3.i17, align 4
  %lock.i18 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %i.046, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i18, ptr noundef nonnull @.str.10, ptr noundef nonnull @ttm_pool_type_init.__key, i16 noundef signext 3) #5
  %pages.i19 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %i.046, i32 5
  %13 = ptrtoint ptr %pages.i19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %pages.i19, ptr %pages.i19, align 4
  %prev.i.i20 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %i.046, i32 5, i32 1
  %14 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pages.i19, ptr %prev.i.i20, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #5
  %shrinker_list.i21 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %i.046, i32 3
  %15 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %call.i.i.i22 = tail call zeroext i1 @__list_add_valid(ptr noundef %shrinker_list.i21, ptr noundef %15, ptr noundef nonnull @shrinker_list) #5
  br i1 %call.i.i.i22, label %if.end.i.i.i24, label %ttm_pool_type_init.exit.ttm_pool_type_init.exit25_crit_edge

ttm_pool_type_init.exit.ttm_pool_type_init.exit25_crit_edge: ; preds = %ttm_pool_type_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_pool_type_init.exit25

if.end.i.i.i24:                                   ; preds = %ttm_pool_type_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %shrinker_list.i21, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %16 = ptrtoint ptr %shrinker_list.i21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @shrinker_list, ptr %shrinker_list.i21, align 4
  %prev3.i.i.i23 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %i.046, i32 3, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %prev3.i.i.i23, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %shrinker_list.i21, ptr %15, align 4
  br label %ttm_pool_type_init.exit25

ttm_pool_type_init.exit25:                        ; preds = %if.end.i.i.i24, %ttm_pool_type_init.exit.ttm_pool_type_init.exit25_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shrinker_lock) #5
  %arrayidx2 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %i.046
  %19 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx2, align 4
  %caching2.i26 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %i.046, i32 2
  %20 = ptrtoint ptr %caching2.i26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %caching2.i26, align 4
  %order3.i27 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %i.046, i32 1
  %21 = ptrtoint ptr %order3.i27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.046, ptr %order3.i27, align 4
  %lock.i28 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %i.046, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i28, ptr noundef nonnull @.str.10, ptr noundef nonnull @ttm_pool_type_init.__key, i16 noundef signext 3) #5
  %pages.i29 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %i.046, i32 5
  %22 = ptrtoint ptr %pages.i29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %pages.i29, ptr %pages.i29, align 4
  %prev.i.i30 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %i.046, i32 5, i32 1
  %23 = ptrtoint ptr %prev.i.i30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pages.i29, ptr %prev.i.i30, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #5
  %shrinker_list.i31 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %i.046, i32 3
  %24 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %call.i.i.i32 = tail call zeroext i1 @__list_add_valid(ptr noundef %shrinker_list.i31, ptr noundef %24, ptr noundef nonnull @shrinker_list) #5
  br i1 %call.i.i.i32, label %if.end.i.i.i34, label %ttm_pool_type_init.exit25.ttm_pool_type_init.exit35_crit_edge

ttm_pool_type_init.exit25.ttm_pool_type_init.exit35_crit_edge: ; preds = %ttm_pool_type_init.exit25
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_pool_type_init.exit35

if.end.i.i.i34:                                   ; preds = %ttm_pool_type_init.exit25
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %shrinker_list.i31, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %25 = ptrtoint ptr %shrinker_list.i31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @shrinker_list, ptr %shrinker_list.i31, align 4
  %prev3.i.i.i33 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %i.046, i32 3, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %prev3.i.i.i33, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %shrinker_list.i31, ptr %24, align 4
  br label %ttm_pool_type_init.exit35

ttm_pool_type_init.exit35:                        ; preds = %if.end.i.i.i34, %ttm_pool_type_init.exit25.ttm_pool_type_init.exit35_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shrinker_lock) #5
  %arrayidx3 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %i.046
  %28 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx3, align 4
  %caching2.i36 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %i.046, i32 2
  %29 = ptrtoint ptr %caching2.i36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %caching2.i36, align 4
  %order3.i37 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %i.046, i32 1
  %30 = ptrtoint ptr %order3.i37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.046, ptr %order3.i37, align 4
  %lock.i38 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %i.046, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i38, ptr noundef nonnull @.str.10, ptr noundef nonnull @ttm_pool_type_init.__key, i16 noundef signext 3) #5
  %pages.i39 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %i.046, i32 5
  %31 = ptrtoint ptr %pages.i39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %pages.i39, ptr %pages.i39, align 4
  %prev.i.i40 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %i.046, i32 5, i32 1
  %32 = ptrtoint ptr %prev.i.i40 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pages.i39, ptr %prev.i.i40, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #5
  %shrinker_list.i41 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %i.046, i32 3
  %33 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %call.i.i.i42 = tail call zeroext i1 @__list_add_valid(ptr noundef %shrinker_list.i41, ptr noundef %33, ptr noundef nonnull @shrinker_list) #5
  br i1 %call.i.i.i42, label %if.end.i.i.i44, label %ttm_pool_type_init.exit35.ttm_pool_type_init.exit45_crit_edge

ttm_pool_type_init.exit35.ttm_pool_type_init.exit45_crit_edge: ; preds = %ttm_pool_type_init.exit35
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_pool_type_init.exit45

if.end.i.i.i44:                                   ; preds = %ttm_pool_type_init.exit35
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %shrinker_list.i41, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  %34 = ptrtoint ptr %shrinker_list.i41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @shrinker_list, ptr %shrinker_list.i41, align 4
  %prev3.i.i.i43 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %i.046, i32 3, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %prev3.i.i.i43, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %shrinker_list.i41, ptr %33, align 4
  br label %ttm_pool_type_init.exit45

ttm_pool_type_init.exit45:                        ; preds = %if.end.i.i.i44, %ttm_pool_type_init.exit35.ttm_pool_type_init.exit45_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shrinker_lock) #5
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %ttm_pool_type_init.exit45.for.body_crit_edge

ttm_pool_type_init.exit45.for.body_crit_edge:     ; preds = %ttm_pool_type_init.exit45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %ttm_pool_type_init.exit45
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ttm_debugfs_root to i32))
  %37 = load ptr, ptr @ttm_debugfs_root, align 4
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %37, ptr noundef null, ptr noundef nonnull @ttm_pool_debugfs_globals_fops) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ttm_debugfs_root to i32))
  %38 = load ptr, ptr @ttm_debugfs_root, align 4
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %38, ptr noundef null, ptr noundef nonnull @ttm_pool_debugfs_shrink_fops) #5
  store ptr @ttm_pool_shrinker_count, ptr @mm_shrinker, align 4
  store ptr @ttm_pool_shrinker_scan, ptr getelementptr inbounds (%struct.shrinker, ptr @mm_shrinker, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.shrinker, ptr @mm_shrinker, i32 0, i32 3), align 4
  %call6 = tail call i32 @register_shrinker(ptr noundef nonnull @mm_shrinker) #5
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttm_pool_shrinker_count(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readnone %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  %0 = load volatile i32, ptr @allocated_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %spec.select = select i1 %tobool.not, i32 -2, i32 %0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttm_pool_shrinker_scan(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readnone %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %call = tail call fastcc i32 @ttm_pool_shrink()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  %0 = load volatile i32, ptr @allocated_pages, align 4
  %tobool2.not = icmp eq i32 %0, 0
  br i1 %tobool2.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_pool_mgr_fini() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %i.030
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx)
  %arrayidx1 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %i.030
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx1)
  %arrayidx2 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %i.030
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx2)
  %arrayidx3 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %i.030
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %arrayidx3)
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @unregister_shrinker(ptr noundef nonnull @mm_shrinker) #5
  %0 = load volatile ptr, ptr @shrinker_list, align 4
  %cmp.i.not = icmp eq ptr %0, @shrinker_list
  br i1 %cmp.i.not, label %for.end.if.end_crit_edge, label %do.end, !prof !89

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 746, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttm_pool_debugfs_globals_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ttm_pool_debugfs_globals_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttm_pool_debugfs_globals_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ttm_pool_debugfs_header(ptr noundef %m)
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #5
  br label %for.body.i

for.body.i:                                       ; preds = %ttm_pool_type_count.exit.i.for.body.i_crit_edge, %entry
  %i.04.i = phi i32 [ 0, %entry ], [ %inc.i, %ttm_pool_type_count.exit.i.for.body.i_crit_edge ]
  %lock.i.i = getelementptr %struct.ttm_pool_type, ptr @global_write_combined, i32 %i.04.i, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #5
  %pages.i.i = getelementptr %struct.ttm_pool_type, ptr @global_write_combined, i32 %i.04.i, i32 5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %for.body.i
  %.pn.in.i.i = phi ptr [ %pages.i.i, %for.body.i ], [ %.pn.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %count.0.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %pages.i.i
  %inc.i.i = add i32 %count.0.i.i, 1
  br i1 %cmp.not.i.i, label %ttm_pool_type_count.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

ttm_pool_type_count.exit.i:                       ; preds = %for.cond.i.i
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %count.0.i.i) #5
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %ttm_pool_debugfs_orders.exit, label %ttm_pool_type_count.exit.i.for.body.i_crit_edge

ttm_pool_type_count.exit.i.for.body.i_crit_edge:  ; preds = %ttm_pool_type_count.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

ttm_pool_debugfs_orders.exit:                     ; preds = %ttm_pool_type_count.exit.i
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #5
  br label %for.body.i13

for.body.i13:                                     ; preds = %ttm_pool_type_count.exit.i22.for.body.i13_crit_edge, %ttm_pool_debugfs_orders.exit
  %i.04.i10 = phi i32 [ 0, %ttm_pool_debugfs_orders.exit ], [ %inc.i20, %ttm_pool_type_count.exit.i22.for.body.i13_crit_edge ]
  %lock.i.i11 = getelementptr %struct.ttm_pool_type, ptr @global_uncached, i32 %i.04.i10, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i11) #5
  %pages.i.i12 = getelementptr %struct.ttm_pool_type, ptr @global_uncached, i32 %i.04.i10, i32 5
  br label %for.cond.i.i19

for.cond.i.i19:                                   ; preds = %for.cond.i.i19.for.cond.i.i19_crit_edge, %for.body.i13
  %.pn.in.i.i14 = phi ptr [ %pages.i.i12, %for.body.i13 ], [ %.pn.i.i16, %for.cond.i.i19.for.cond.i.i19_crit_edge ]
  %count.0.i.i15 = phi i32 [ 0, %for.body.i13 ], [ %inc.i.i18, %for.cond.i.i19.for.cond.i.i19_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i.i14 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i.i16 = load ptr, ptr %.pn.in.i.i14, align 4
  %cmp.not.i.i17 = icmp eq ptr %.pn.i.i16, %pages.i.i12
  %inc.i.i18 = add i32 %count.0.i.i15, 1
  br i1 %cmp.not.i.i17, label %ttm_pool_type_count.exit.i22, label %for.cond.i.i19.for.cond.i.i19_crit_edge

for.cond.i.i19.for.cond.i.i19_crit_edge:          ; preds = %for.cond.i.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i19

ttm_pool_type_count.exit.i22:                     ; preds = %for.cond.i.i19
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i11) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %count.0.i.i15) #5
  %inc.i20 = add nuw nsw i32 %i.04.i10, 1
  %exitcond.not.i21 = icmp eq i32 %inc.i20, 12
  br i1 %exitcond.not.i21, label %ttm_pool_debugfs_orders.exit23, label %ttm_pool_type_count.exit.i22.for.body.i13_crit_edge

ttm_pool_type_count.exit.i22.for.body.i13_crit_edge: ; preds = %ttm_pool_type_count.exit.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i13

ttm_pool_debugfs_orders.exit23:                   ; preds = %ttm_pool_type_count.exit.i22
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.16) #5
  br label %for.body.i27

for.body.i27:                                     ; preds = %ttm_pool_type_count.exit.i36.for.body.i27_crit_edge, %ttm_pool_debugfs_orders.exit23
  %i.04.i24 = phi i32 [ 0, %ttm_pool_debugfs_orders.exit23 ], [ %inc.i34, %ttm_pool_type_count.exit.i36.for.body.i27_crit_edge ]
  %lock.i.i25 = getelementptr %struct.ttm_pool_type, ptr @global_dma32_write_combined, i32 %i.04.i24, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i25) #5
  %pages.i.i26 = getelementptr %struct.ttm_pool_type, ptr @global_dma32_write_combined, i32 %i.04.i24, i32 5
  br label %for.cond.i.i33

for.cond.i.i33:                                   ; preds = %for.cond.i.i33.for.cond.i.i33_crit_edge, %for.body.i27
  %.pn.in.i.i28 = phi ptr [ %pages.i.i26, %for.body.i27 ], [ %.pn.i.i30, %for.cond.i.i33.for.cond.i.i33_crit_edge ]
  %count.0.i.i29 = phi i32 [ 0, %for.body.i27 ], [ %inc.i.i32, %for.cond.i.i33.for.cond.i.i33_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i.i28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i.i30 = load ptr, ptr %.pn.in.i.i28, align 4
  %cmp.not.i.i31 = icmp eq ptr %.pn.i.i30, %pages.i.i26
  %inc.i.i32 = add i32 %count.0.i.i29, 1
  br i1 %cmp.not.i.i31, label %ttm_pool_type_count.exit.i36, label %for.cond.i.i33.for.cond.i.i33_crit_edge

for.cond.i.i33.for.cond.i.i33_crit_edge:          ; preds = %for.cond.i.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i33

ttm_pool_type_count.exit.i36:                     ; preds = %for.cond.i.i33
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i25) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %count.0.i.i29) #5
  %inc.i34 = add nuw nsw i32 %i.04.i24, 1
  %exitcond.not.i35 = icmp eq i32 %inc.i34, 12
  br i1 %exitcond.not.i35, label %ttm_pool_debugfs_orders.exit37, label %ttm_pool_type_count.exit.i36.for.body.i27_crit_edge

ttm_pool_type_count.exit.i36.for.body.i27_crit_edge: ; preds = %ttm_pool_type_count.exit.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i27

ttm_pool_debugfs_orders.exit37:                   ; preds = %ttm_pool_type_count.exit.i36
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.17) #5
  br label %for.body.i41

for.body.i41:                                     ; preds = %ttm_pool_type_count.exit.i50.for.body.i41_crit_edge, %ttm_pool_debugfs_orders.exit37
  %i.04.i38 = phi i32 [ 0, %ttm_pool_debugfs_orders.exit37 ], [ %inc.i48, %ttm_pool_type_count.exit.i50.for.body.i41_crit_edge ]
  %lock.i.i39 = getelementptr %struct.ttm_pool_type, ptr @global_dma32_uncached, i32 %i.04.i38, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i39) #5
  %pages.i.i40 = getelementptr %struct.ttm_pool_type, ptr @global_dma32_uncached, i32 %i.04.i38, i32 5
  br label %for.cond.i.i47

for.cond.i.i47:                                   ; preds = %for.cond.i.i47.for.cond.i.i47_crit_edge, %for.body.i41
  %.pn.in.i.i42 = phi ptr [ %pages.i.i40, %for.body.i41 ], [ %.pn.i.i44, %for.cond.i.i47.for.cond.i.i47_crit_edge ]
  %count.0.i.i43 = phi i32 [ 0, %for.body.i41 ], [ %inc.i.i46, %for.cond.i.i47.for.cond.i.i47_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i.i42 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i.i44 = load ptr, ptr %.pn.in.i.i42, align 4
  %cmp.not.i.i45 = icmp eq ptr %.pn.i.i44, %pages.i.i40
  %inc.i.i46 = add i32 %count.0.i.i43, 1
  br i1 %cmp.not.i.i45, label %ttm_pool_type_count.exit.i50, label %for.cond.i.i47.for.cond.i.i47_crit_edge

for.cond.i.i47.for.cond.i.i47_crit_edge:          ; preds = %for.cond.i.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i47

ttm_pool_type_count.exit.i50:                     ; preds = %for.cond.i.i47
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i39) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %count.0.i.i43) #5
  %inc.i48 = add nuw nsw i32 %i.04.i38, 1
  %exitcond.not.i49 = icmp eq i32 %inc.i48, 12
  br i1 %exitcond.not.i49, label %ttm_pool_debugfs_orders.exit51, label %ttm_pool_type_count.exit.i50.for.body.i41_crit_edge

ttm_pool_type_count.exit.i50.for.body.i41_crit_edge: ; preds = %ttm_pool_type_count.exit.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i41

ttm_pool_debugfs_orders.exit51:                   ; preds = %ttm_pool_type_count.exit.i50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #5
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shrinker_lock) #5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  %4 = load volatile i32, ptr @allocated_pages, align 4
  %5 = load i32, ptr @page_pool_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %4, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttm_pool_debugfs_shrink_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ttm_pool_debugfs_shrink_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttm_pool_debugfs_shrink_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fs_reclaim_acquire(i32 noundef 3264) #5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  %0 = load volatile i32, ptr @allocated_pages, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %entry
  %call.i = tail call fastcc i32 @ttm_pool_shrink() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i2 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i2, label %land.rhs.i, label %do.body.i.ttm_pool_shrinker_scan.exit_crit_edge

do.body.i.ttm_pool_shrinker_scan.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_pool_shrinker_scan.exit

land.rhs.i:                                       ; preds = %do.body.i
  %call.i.i.i3 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @allocated_pages, i32 noundef 4) #5
  %1 = load volatile i32, ptr @allocated_pages, align 4
  %tobool2.not.i = icmp eq i32 %1, 0
  br i1 %tobool2.not.i, label %land.rhs.i.ttm_pool_shrinker_scan.exit_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

land.rhs.i.ttm_pool_shrinker_scan.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_pool_shrinker_scan.exit

ttm_pool_shrinker_scan.exit:                      ; preds = %land.rhs.i.ttm_pool_shrinker_scan.exit_crit_edge, %do.body.i.ttm_pool_shrinker_scan.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  %spec.select.i = select i1 %tobool.not.i, i32 -2, i32 %0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %spec.select.i, i32 noundef %call.i) #5
  tail call void @fs_reclaim_release(i32 noundef 3264) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fs_reclaim_acquire(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fs_reclaim_release(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__UNIQUE_ID_page_pool_size264, !1, !"__UNIQUE_ID_page_pool_size264", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 62, i32 1}
!2 = !{ptr @__param_page_pool_size, !3, !"__param_page_pool_size", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_page_pool_sizetype265, !3, !"__UNIQUE_ID_page_pool_sizetype265", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 371, i32 2}
!7 = !{ptr @__ksymtab_ttm_pool_alloc, !8, !"__ksymtab_ttm_pool_alloc", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 448, i32 1}
!9 = !{ptr @__ksymtab_ttm_pool_free, !10, !"__ksymtab_ttm_pool_free", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 485, i32 1}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 642, i32 15}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 650, i32 15}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 653, i32 16}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 656, i32 16}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 659, i32 16}
!21 = !{ptr @__ksymtab_ttm_pool_debugfs, !22, !"__ksymtab_ttm_pool_debugfs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 669, i32 1}
!23 = !{ptr @ttm_pool_mgr_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 701, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 716, i32 22}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 718, i32 22}
!30 = !{ptr @page_pool_size, !31, !"page_pool_size", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 60, i32 22}
!32 = !{ptr @allocated_pages, !33, !"allocated_pages", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 65, i32 22}
!34 = !{ptr @global_write_combined, !35, !"global_write_combined", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 67, i32 29}
!36 = !{ptr @global_uncached, !37, !"global_uncached", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 68, i32 29}
!38 = !{ptr @global_dma32_write_combined, !39, !"global_dma32_write_combined", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 70, i32 29}
!40 = !{ptr @global_dma32_uncached, !41, !"global_dma32_uncached", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 71, i32 29}
!42 = !{ptr @shrinker_lock, !43, !"shrinker_lock", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 73, i32 19}
!44 = !{ptr @shrinker_list, !45, !"shrinker_list", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 74, i32 25}
!46 = !{ptr @mm_shrinker, !47, !"mm_shrinker", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 75, i32 24}
!48 = !{ptr @__param_str_page_pool_size, !3, !"__param_str_page_pool_size", i1 false, i1 false}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!51 = !{ptr @ttm_pool_type_init.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 263, i32 2}
!53 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 583, i32 14}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 585, i32 17}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 586, i32 14}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 596, i32 17}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 603, i32 16}
!64 = !{ptr @ttm_pool_debugfs_globals_fops, !65, !"ttm_pool_debugfs_globals_fops", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 627, i32 1}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 617, i32 14}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 619, i32 14}
!70 = !{ptr @ttm_pool_debugfs_shrink_fops, !71, !"ttm_pool_debugfs_shrink_fops", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 683, i32 1}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/ttm/ttm_pool.c", i32 677, i32 16}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i8 0, i8 2}
!86 = !{i32 0, i32 33}
!87 = !{i64 2148359328, i64 2148359354, i64 2148359383, i64 2148359417, i64 2148359448, i64 2148359471}
!88 = !{i64 2148356863, i64 2148356889, i64 2148356918, i64 2148356952, i64 2148356983, i64 2148357006}
!89 = !{!"branch_weights", i32 2000, i32 1}
