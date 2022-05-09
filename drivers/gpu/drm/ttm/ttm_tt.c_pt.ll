; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ttm/ttm_tt.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_tt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ttm_tt_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_tt_init\09\09\09\09"
module asm "\09.long\09__crc_ttm_tt_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_tt_init\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_tt_fini\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_tt_fini\09\09\09\09"
module asm "\09.long\09__crc_ttm_tt_fini\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_tt_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_tt_fini\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_tt_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_sg_tt_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_sg_tt_init\09\09\09\09"
module asm "\09.long\09__crc_ttm_sg_tt_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_sg_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_sg_tt_init\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_sg_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_tt_populate\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_tt_populate\09\09\09\09"
module asm "\09.long\09__crc_ttm_tt_populate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_tt_populate:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_tt_populate\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_tt_populate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ttm_kmap_iter_tt_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ttm_kmap_iter_tt_init\09\09\09\09"
module asm "\09.long\09__crc_ttm_kmap_iter_tt_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_kmap_iter_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_kmap_iter_tt_init\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_kmap_iter_tt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ttm_kmap_iter_ops = type { ptr, ptr, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.79 }
%union.anon.79 = type { i32 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.88] }
%struct.anon.88 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.2, %union.anon.77, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.77 = type { %struct.atomic_t }
%struct.ttm_kmap_iter_tt = type { %struct.ttm_kmap_iter, ptr, i32 }
%struct.ttm_kmap_iter = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.81 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%union.anon.83 = type { ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.dma_buf_map = type { %union.anon.87, i8 }
%union.anon.87 = type { ptr }

@__UNIQUE_ID_pages_limit302 = internal constant [51 x i8] c"ttm.parm=pages_limit:Limit for the allocated pages\00", section ".modinfo", align 1
@__param_str_pages_limit = internal constant [16 x i8] c"ttm.pages_limit\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@ttm_pages_limit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pages_limit = internal constant %struct.kernel_param { ptr @__param_str_pages_limit, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @ttm_pages_limit } }, section "__param", align 4
@__UNIQUE_ID_pages_limittype303 = internal constant [31 x i8] c"ttm.parmtype=pages_limit:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_dma32_pages_limit304 = internal constant [63 x i8] c"ttm.parm=dma32_pages_limit:Limit for the allocated DMA32 pages\00", section ".modinfo", align 1
@__param_str_dma32_pages_limit = internal constant [22 x i8] c"ttm.dma32_pages_limit\00", align 1
@ttm_dma32_pages_limit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dma32_pages_limit = internal constant %struct.kernel_param { ptr @__param_str_dma32_pages_limit, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @ttm_dma32_pages_limit } }, section "__param", align 4
@__UNIQUE_ID_dma32_pages_limittype305 = internal constant [37 x i8] c"ttm.parmtype=dma32_pages_limit:ulong\00", section ".modinfo", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpu/drm/ttm/ttm_tt.c\00", [35 x i8] zeroinitializer }, align 32
@ttm_tt_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013[TTM] Illegal buffer object type\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ttm_tt_create\00", [18 x i8] zeroinitializer }, align 32
@ttm_tt_create._entry_ptr = internal global ptr @ttm_tt_create._entry, section ".printk_index", align 4
@ttm_tt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[TTM] Failed allocating page table\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ttm_tt_init\00", [20 x i8] zeroinitializer }, align 32
@ttm_tt_init._entry_ptr = internal global ptr @ttm_tt_init._entry, section ".printk_index", align 4
@__kstrtab_ttm_tt_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_tt_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_tt_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_tt_init to i32), ptr @__kstrtab_ttm_tt_init, ptr @__kstrtabns_ttm_tt_init }, section "___ksymtab+ttm_tt_init", align 4
@__kstrtab_ttm_tt_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_tt_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_tt_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_tt_fini to i32), ptr @__kstrtab_ttm_tt_fini, ptr @__kstrtabns_ttm_tt_fini }, section "___ksymtab+ttm_tt_fini", align 4
@ttm_sg_tt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.5, ptr @.str, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ttm_sg_tt_init\00", [17 x i8] zeroinitializer }, align 32
@ttm_sg_tt_init._entry_ptr = internal global ptr @ttm_sg_tt_init._entry, section ".printk_index", align 4
@__kstrtab_ttm_sg_tt_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_sg_tt_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_sg_tt_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_sg_tt_init to i32), ptr @__kstrtab_ttm_sg_tt_init, ptr @__kstrtabns_ttm_sg_tt_init }, section "___ksymtab+ttm_sg_tt_init", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ttm swap\00", [23 x i8] zeroinitializer }, align 32
@ttm_tt_swapout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013[TTM] Failed allocating swap storage\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ttm_tt_swapout\00", [17 x i8] zeroinitializer }, align 32
@ttm_tt_swapout._entry_ptr = internal global ptr @ttm_tt_swapout._entry, section ".printk_index", align 4
@ttm_pages_allocated = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ttm_dma32_pages_allocated = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ttm_tt_populate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_tt_populate = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_tt_populate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_tt_populate to i32), ptr @__kstrtab_ttm_tt_populate, ptr @__kstrtabns_ttm_tt_populate }, section "___ksymtab+ttm_tt_populate", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tt_shrink\00", [22 x i8] zeroinitializer }, align 32
@ttm_debugfs_root = external dso_local local_unnamed_addr global ptr, align 4
@ttm_tt_debugfs_shrink_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ttm_tt_debugfs_shrink_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ttm_kmap_iter_tt_ops = internal constant { %struct.ttm_kmap_iter_ops, [20 x i8] } { %struct.ttm_kmap_iter_ops { ptr @ttm_kmap_iter_tt_map_local, ptr @ttm_kmap_iter_tt_unmap_local, i8 1 }, [20 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_ttm_kmap_iter_tt_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_kmap_iter_tt_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_kmap_iter_tt_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_kmap_iter_tt_init to i32), ptr @__kstrtab_ttm_kmap_iter_tt_init, ptr @__kstrtabns_ttm_kmap_iter_tt_init }, section "___ksymtab+ttm_kmap_iter_tt_init", align 4
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"ttm_pages_limit\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 43, i32 22 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"ttm_dma32_pages_limit\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 48, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 64, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 80, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 154, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 190, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 259, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 261, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"ttm_pages_allocated\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 53, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant [26 x i8] c"ttm_dma32_pages_allocated\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 54, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 397, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"ttm_tt_debugfs_shrink_fops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 384, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"ttm_kmap_iter_tt_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 425, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 717, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [32 x i8] c"../drivers/gpu/drm/ttm/ttm_tt.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 381, i32 16 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_dma32_pages_limit304, ptr @__UNIQUE_ID_dma32_pages_limittype305, ptr @__UNIQUE_ID_pages_limit302, ptr @__UNIQUE_ID_pages_limittype303, ptr @__ksymtab_ttm_kmap_iter_tt_init, ptr @__ksymtab_ttm_sg_tt_init, ptr @__ksymtab_ttm_tt_fini, ptr @__ksymtab_ttm_tt_init, ptr @__ksymtab_ttm_tt_populate, ptr @__param_dma32_pages_limit, ptr @__param_pages_limit, ptr @ttm_sg_tt_init._entry, ptr @ttm_sg_tt_init._entry_ptr, ptr @ttm_tt_create._entry, ptr @ttm_tt_create._entry_ptr, ptr @ttm_tt_init._entry, ptr @ttm_tt_init._entry_ptr, ptr @ttm_tt_swapout._entry, ptr @ttm_tt_swapout._entry_ptr, ptr @ttm_pages_limit, ptr @ttm_dma32_pages_limit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ttm_pages_allocated, ptr @ttm_dma32_pages_allocated, ptr @.str.9, ptr @ttm_tt_debugfs_shrink_fops, ptr @ttm_kmap_iter_tt_ops, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_pages_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_dma32_pages_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_tt_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_tt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_sg_tt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_tt_swapout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_pages_allocated to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_dma32_pages_allocated to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_tt_debugfs_shrink_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttm_kmap_iter_tt_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_tt_create(ptr noundef %bo, i1 noundef zeroext %zero_alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev1 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %3 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resv, align 8
  %dep_map = getelementptr inbounds %struct.mutex, ptr %4, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !72

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %5 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ttm, align 8
  %tobool26.not = icmp eq ptr %6, null
  br i1 %tobool26.not, label %if.end28, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end36 [
    i32 0, label %sw.bb
    i32 1, label %if.end28.sw.epilog_crit_edge
    i32 2, label %sw.bb32
  ]

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = select i1 %zero_alloc, i32 2, i32 0
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb, %if.end28.sw.epilog_crit_edge
  %page_flags.0 = phi i32 [ 4, %sw.bb32 ], [ 0, %if.end28.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ]
  %funcs = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call39 = tail call ptr %13(ptr noundef %bo, i32 noundef %page_flags.0) #6
  %14 = ptrtoint ptr %ttm to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call39, ptr %ttm, align 8
  %cmp42 = icmp eq ptr %call39, null
  br i1 %cmp42, label %sw.epilog.cleanup_crit_edge, label %if.end50, !prof !72

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %sw.epilog
  %page_flags53 = getelementptr inbounds %struct.ttm_tt, ptr %call39, i32 0, i32 1
  %15 = ptrtoint ptr %page_flags53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_flags53, align 4
  %17 = and i32 %16, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %do.end78, label %if.end50.cleanup_crit_edge, !prof !72

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end78:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 89, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.end50.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end36, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end36 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ 0, %do.end78 ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_tt_destroy(ptr noundef %bdev, ptr noundef %ttm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %ttm_tt_destroy = getelementptr inbounds %struct.ttm_device_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ttm_tt_destroy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ttm_tt_destroy, align 4
  tail call void %3(ptr noundef %bdev, ptr noundef %ttm) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_tt_init(ptr nocapture noundef %ttm, ptr nocapture noundef readonly %bo, i32 noundef %page_flags, i32 noundef %caching) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 8
  %add.i = add i32 %1, 4095
  %shr.i = lshr i32 %add.i, 12
  %num_pages.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %2 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr.i, ptr %num_pages.i, align 4
  %caching1.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 6
  %3 = ptrtoint ptr %caching1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %caching1.i, align 4
  %page_flags2.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %4 = ptrtoint ptr %page_flags2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %page_flags, ptr %page_flags2.i, align 4
  %dma_address.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 4
  %5 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dma_address.i, align 4
  %swap_storage.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 5
  %6 = ptrtoint ptr %swap_storage.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %swap_storage.i, align 4
  %sg.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 14
  %7 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg.i, align 4
  %sg3.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 3
  %9 = ptrtoint ptr %sg3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %sg3.i, align 4
  store i32 %caching, ptr %caching1.i, align 4
  %10 = shl nuw nsw i32 %shr.i, 2
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %10, i32 noundef 3520, i32 noundef -1) #10
  %11 = ptrtoint ptr %ttm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %ttm, align 4
  %tobool.not.i.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_tt_fini(ptr nocapture noundef %ttm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %0 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !73

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 163, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %swap_storage = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 5
  %2 = ptrtoint ptr %swap_storage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swap_storage, align 4
  %tobool20.not = icmp eq ptr %3, null
  br i1 %tobool20.not, label %if.end.if.end23_crit_edge, label %if.then21

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fput(ptr noundef nonnull %3) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end.if.end23_crit_edge
  %4 = ptrtoint ptr %swap_storage to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %swap_storage, align 4
  %5 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ttm, align 4
  %tobool25.not = icmp eq ptr %6, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kvfree(ptr noundef nonnull %6) #6
  br label %if.end28

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 4
  %7 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_address, align 4
  tail call void @kvfree(ptr noundef %8) #6
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then26
  %9 = ptrtoint ptr %ttm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ttm, align 4
  %dma_address30 = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 4
  %10 = ptrtoint ptr %dma_address30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dma_address30, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_sg_tt_init(ptr nocapture noundef %ttm, ptr nocapture noundef readonly %bo, i32 noundef %page_flags, i32 noundef %caching) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 8
  %add.i = add i32 %1, 4095
  %shr.i = lshr i32 %add.i, 12
  %num_pages.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %2 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr.i, ptr %num_pages.i, align 4
  %caching1.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 6
  %3 = ptrtoint ptr %caching1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %caching1.i, align 4
  %page_flags2.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %4 = ptrtoint ptr %page_flags2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %page_flags, ptr %page_flags2.i, align 4
  %dma_address.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 4
  %5 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dma_address.i, align 4
  %swap_storage.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 5
  %6 = ptrtoint ptr %swap_storage.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %swap_storage.i, align 4
  %sg.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 14
  %7 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg.i, align 4
  %sg3.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 3
  %9 = ptrtoint ptr %sg3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %sg3.i, align 4
  store i32 %caching, ptr %caching1.i, align 4
  %and = and i32 %page_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %kvmalloc_array.exit.i, label %ttm_sg_tt_alloc_page_directory.exit

ttm_sg_tt_alloc_page_directory.exit:              ; preds = %entry
  %10 = shl nuw nsw i32 %shr.i, 2
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %10, i32 noundef 3520, i32 noundef -1) #10
  %11 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %dma_address.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %ttm_sg_tt_alloc_page_directory.exit.do.end_crit_edge, label %ttm_sg_tt_alloc_page_directory.exit.cleanup_crit_edge

ttm_sg_tt_alloc_page_directory.exit.cleanup_crit_edge: ; preds = %ttm_sg_tt_alloc_page_directory.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ttm_sg_tt_alloc_page_directory.exit.do.end_crit_edge: ; preds = %ttm_sg_tt_alloc_page_directory.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

kvmalloc_array.exit.i:                            ; preds = %entry
  %12 = shl nuw nsw i32 %shr.i, 3
  %call.i.i.i12 = tail call noalias ptr @kvmalloc_node(i32 noundef %12, i32 noundef 3520, i32 noundef -1) #10
  %13 = ptrtoint ptr %ttm to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i.i12, ptr %ttm, align 4
  %tobool.not.i13 = icmp eq ptr %call.i.i.i12, null
  br i1 %tobool.not.i13, label %kvmalloc_array.exit.i.do.end_crit_edge, label %if.end.i

kvmalloc_array.exit.i.do.end_crit_edge:           ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pages.i, align 4
  %add.ptr.i = getelementptr ptr, ptr %call.i.i.i12, i32 %15
  %16 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %dma_address.i, align 4
  br label %cleanup

do.end:                                           ; preds = %kvmalloc_array.exit.i.do.end_crit_edge, %ttm_sg_tt_alloc_page_directory.exit.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i, %ttm_sg_tt_alloc_page_directory.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %ttm_sg_tt_alloc_page_directory.exit.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_tt_swapin(ptr nocapture noundef %ttm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %swap_storage1 = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 5
  %0 = ptrtoint ptr %swap_storage1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %swap_storage1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body3, label %do.end8, !prof !72

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/ttm/ttm_tt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 207, 0\0A.popsection", ""() #6, !srcloc !74
  unreachable

do.end8:                                          ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gfp_mask.i, align 4
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %6 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp948.not = icmp eq i32 %7, 0
  br i1 %cmp948.not, label %do.end8.for.end_crit_edge, label %do.end8.for.body_crit_edge

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  br label %for.body

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %do.end8.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %put_page.exit.for.body_crit_edge ], [ 0, %do.end8.for.body_crit_edge ]
  %call10 = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %3, i32 noundef %i.049, i32 noundef %5) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %for.body
  %9 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ttm, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.049
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp15 = icmp eq ptr %12, null
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end23, !prof !72

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %13 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %13, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call10, i32 noundef %or.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %14 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %14, 512
  %call.i14.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %12, i32 noundef %or.i13.i) #6
  tail call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i) #6
  tail call void @kunmap_local_indexed(ptr noundef %call.i14.i) #6
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  %15 = getelementptr inbounds %struct.page, ptr %call10, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call10 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.10) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !75
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ttm_tt_swapin, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %19) #6
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.049, 1
  %24 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_pages, align 4
  %cmp9 = icmp ult i32 %inc, %25
  br i1 %cmp9, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %do.end8.for.end_crit_edge
  tail call void @fput(ptr noundef nonnull %1) #6
  %26 = ptrtoint ptr %swap_storage1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %swap_storage1, align 4
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %27 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %page_flags, align 4
  %and = and i32 %28, -2
  store i32 %and, ptr %page_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end14.cleanup_crit_edge, %if.then12
  %retval.0 = phi i32 [ 0, %for.end ], [ %8, %if.then12 ], [ -12, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_read_mapping_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_tt_swapout(ptr noundef %bdev, ptr noundef %ttm, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %0 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages, align 4
  %conv = zext i32 %1 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %call = tail call ptr @shmem_file_setup(ptr noundef nonnull @.str.6, i64 noundef %shl, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 18
  %3 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_mapping, align 4
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gfp_mask.i, align 4
  %and = and i32 %6, %gfp_flags
  %7 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp49.not = icmp eq i32 %8, 0
  br i1 %cmp49.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ttm, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.050
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp7 = icmp eq ptr %12, null
  br i1 %cmp7, label %for.body.for.inc_crit_edge, label %if.end11, !prof !72

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %call12 = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %4, i32 noundef %i.050, i32 noundef %and) #6
  %cmp.i47 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call12 to i32
  tail call void @fput(ptr noundef %call) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %14 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %14, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %12, i32 noundef %or.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %15, 512
  %call.i14.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call12, i32 noundef %or.i13.i) #6
  tail call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i) #6
  tail call void @kunmap_local_indexed(ptr noundef %call.i14.i) #6
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #6
  %call17 = tail call zeroext i1 @set_page_dirty(ptr noundef %call12) #6
  tail call void @mark_page_accessed(ptr noundef %call12) #6
  %16 = getelementptr inbounds %struct.page, ptr %call12, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call12 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %21 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.10) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !75
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ttm_tt_swapout, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %20, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %20) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.050, 1
  %25 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_pages, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @ttm_tt_unpopulate(ptr noundef %bdev, ptr noundef %ttm)
  %swap_storage18 = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 5
  %27 = ptrtoint ptr %swap_storage18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %swap_storage18, align 4
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %28 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %page_flags, align 4
  %or = or i32 %29, 1
  store i32 %or, ptr %page_flags, align 4
  %30 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_pages, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then14, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %13, %if.then14 ], [ %31, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_file_setup(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_tt_unpopulate(ptr noundef %bdev, ptr noundef %ttm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %page_flags.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %0 = ptrtoint ptr %page_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i = icmp slt i32 %1, 0
  br i1 %tobool.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %funcs = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 8
  %ttm_tt_unpopulate = getelementptr inbounds %struct.ttm_device_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ttm_tt_unpopulate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttm_tt_unpopulate, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %bdev, ptr noundef %ttm) #6
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pool = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 5
  tail call void @ttm_pool_free(ptr noundef %pool, ptr noundef %ttm) #6
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %6 = ptrtoint ptr %page_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_flags.i, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then6:                                         ; preds = %if.end4
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %8 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pages, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ttm_pages_allocated, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull @ttm_pages_allocated, i32 1, i32 3, i32 1) #6
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_pages_allocated, ptr nonnull @ttm_pages_allocated, i32 %9, ptr nonnull elementtype(i32) @ttm_pages_allocated) #6, !srcloc !80
  %use_dma32 = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %use_dma32 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_dma32, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  br i1 %tobool8.not, label %if.then6.if.end12_crit_edge, label %if.then9

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_pages, align 4
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ttm_dma32_pages_allocated, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull @ttm_dma32_pages_allocated, i32 1, i32 3, i32 1) #6
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated, ptr nonnull @ttm_dma32_pages_allocated, i32 %14, ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated) #6, !srcloc !80
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %16 = ptrtoint ptr %page_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page_flags.i, align 4
  %and14 = and i32 %17, 2147483647
  store i32 %and14, ptr %page_flags.i, align 4
  br label %return

return:                                           ; preds = %if.end12, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ttm_tt_populate(ptr noundef %bdev, ptr noundef %ttm, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ttm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_flags.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %0 = ptrtoint ptr %page_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i = icmp slt i32 %1, 0
  br i1 %tobool.i, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end2.while.cond.preheader_crit_edge

if.end2.while.cond.preheader_crit_edge:           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

if.then4:                                         ; preds = %if.end2
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %2 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ttm_pages_allocated, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull @ttm_pages_allocated, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_pages_allocated, ptr nonnull @ttm_pages_allocated, i32 %3, ptr nonnull elementtype(i32) @ttm_pages_allocated) #6, !srcloc !82
  %use_dma32 = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %use_dma32 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %use_dma32, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.then4.while.cond.preheader_crit_edge, label %if.then6

if.then4.while.cond.preheader_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_pages, align 4
  %call.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ttm_dma32_pages_allocated, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull @ttm_dma32_pages_allocated, i32 1, i32 3, i32 1) #6
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated, ptr nonnull @ttm_dma32_pages_allocated, i32 %8, ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated) #6, !srcloc !82
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then6, %if.then4.while.cond.preheader_crit_edge, %if.end2.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %if.end16.while.cond_crit_edge, %while.cond.preheader
  %call.i.i88 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ttm_pages_allocated, i32 noundef 4) #6
  %10 = load volatile i32, ptr @ttm_pages_allocated, align 4
  %11 = load i32, ptr @ttm_pages_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp = icmp ugt i32 %10, %11
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %lor.rhs

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %call.i.i89 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ttm_dma32_pages_allocated, i32 noundef 4) #6
  %12 = load volatile i32, ptr @ttm_dma32_pages_allocated, align 4
  %13 = load i32, ptr @ttm_dma32_pages_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp12 = icmp ugt i32 %12, %13
  br i1 %cmp12, label %lor.rhs.while.body_crit_edge, label %lor.rhs.while.end_crit_edge

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %call13 = tail call i32 @ttm_global_swapout(ptr noundef %ctx, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %while.body.while.end_crit_edge, label %if.end16

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end16:                                         ; preds = %while.body
  %cmp17 = icmp slt i32 %call13, 0
  br i1 %cmp17, label %if.end16.error_crit_edge, label %if.end16.while.cond_crit_edge

if.end16.while.cond_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

while.end:                                        ; preds = %while.body.while.end_crit_edge, %lor.rhs.while.end_crit_edge
  %funcs = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 1
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs, align 8
  %ttm_tt_populate = getelementptr inbounds %struct.ttm_device_funcs, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ttm_tt_populate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ttm_tt_populate, align 4
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 %17(ptr noundef %bdev, ptr noundef nonnull %ttm, ptr noundef %ctx) #6
  br label %if.end27

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %pool25 = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 5
  %call26 = tail call i32 @ttm_pool_alloc(ptr noundef %pool25, ptr noundef nonnull %ttm, ptr noundef %ctx) #6
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then21
  %ret.0 = phi i32 [ %call24, %if.then21 ], [ %call26, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool28.not = icmp eq i32 %ret.0, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.error_crit_edge

if.end27.error_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end30:                                         ; preds = %if.end27
  %18 = ptrtoint ptr %page_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_flags.i, align 4
  %or = or i32 %19, -2147483648
  store i32 %or, ptr %page_flags.i, align 4
  %and33 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end30.cleanup_crit_edge, label %if.then37, !prof !73

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %if.end30
  %call38 = tail call i32 @ttm_tt_swapin(ptr noundef nonnull %ttm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.then37.cleanup_crit_edge, label %if.then46, !prof !73

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then46:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ttm_tt_unpopulate(ptr noundef %bdev, ptr noundef nonnull %ttm)
  br label %cleanup

error:                                            ; preds = %if.end27.error_crit_edge, %if.end16.error_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end27.error_crit_edge ], [ %call13, %if.end16.error_crit_edge ]
  %20 = ptrtoint ptr %page_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_flags.i, align 4
  %and50 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then52, label %error.cleanup_crit_edge

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %error
  %num_pages53 = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %22 = ptrtoint ptr %num_pages53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_pages53, align 4
  %call.i.i90 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ttm_pages_allocated, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull @ttm_pages_allocated, i32 1, i32 3, i32 1) #6
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_pages_allocated, ptr nonnull @ttm_pages_allocated, i32 %23, ptr nonnull elementtype(i32) @ttm_pages_allocated) #6, !srcloc !80
  %use_dma3255 = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %use_dma3255 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_dma3255, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool56.not = icmp eq i8 %26, 0
  br i1 %tobool56.not, label %if.then52.cleanup_crit_edge, label %if.then57

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then57:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %num_pages53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_pages53, align 4
  %call.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ttm_dma32_pages_allocated, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull @ttm_dma32_pages_allocated, i32 1, i32 3, i32 1) #6
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated, ptr nonnull @ttm_dma32_pages_allocated, i32 %28, ptr nonnull elementtype(i32) @ttm_dma32_pages_allocated) #6, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.then52.cleanup_crit_edge, %error.cleanup_crit_edge, %if.then46, %if.then37.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.then46 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then37.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ %ret.1, %if.then52.cleanup_crit_edge ], [ %ret.1, %if.then57 ], [ %ret.1, %error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_global_swapout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_pool_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ttm_tt_mgr_init(i32 noundef %num_pages, i32 noundef %num_dma32_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ttm_debugfs_root to i32))
  %0 = load ptr, ptr @ttm_debugfs_root, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %0, ptr noundef null, ptr noundef nonnull @ttm_tt_debugfs_shrink_fops) #6
  %1 = load i32, ptr @ttm_pages_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %num_pages, ptr @ttm_pages_limit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load i32, ptr @ttm_dma32_pages_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %num_dma32_pages, ptr @ttm_dma32_pages_limit, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ttm_kmap_iter_tt_init(ptr noundef returned writeonly %iter_tt, ptr noundef %tt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iter_tt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ttm_kmap_iter_tt_ops, ptr %iter_tt, align 4
  %tt1 = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %iter_tt, i32 0, i32 1
  %1 = ptrtoint ptr %tt1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tt, ptr %tt1, align 4
  %tobool.not = icmp eq ptr %tt, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %caching = getelementptr inbounds %struct.ttm_tt, ptr %tt, i32 0, i32 6
  %2 = ptrtoint ptr %caching to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caching, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %4, 512
  %call = tail call i32 @ttm_prot_from_caching(i32 noundef %3, i32 noundef %or) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %5 = load i32, ptr @pgprot_kernel, align 4
  %or2 = or i32 %5, 512
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call.sink = phi i32 [ %or2, %if.else ], [ %call, %if.then ]
  %6 = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %iter_tt, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.sink, ptr %6, align 4
  ret ptr %iter_tt
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_prot_from_caching(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttm_tt_debugfs_shrink_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ttm_tt_debugfs_shrink_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttm_tt_debugfs_shrink_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #6
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %call = call i32 @ttm_global_swapout(ptr noundef nonnull %ctx, i32 noundef 3264) #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %call) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttm_kmap_iter_tt_map_local(ptr nocapture noundef readonly %iter, ptr nocapture noundef writeonly %dmap, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tt = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %iter, i32 0, i32 1
  %0 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tt, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %prot = getelementptr inbounds %struct.ttm_kmap_iter_tt, ptr %iter, i32 0, i32 2
  %6 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prot, align 4
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %5, i32 noundef %7) #6
  %8 = ptrtoint ptr %dmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %dmap, align 4
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %dmap, i32 0, i32 1
  %9 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_iomem.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttm_kmap_iter_tt_unmap_local(ptr nocapture noundef readnone %iter, ptr nocapture noundef readonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  tail call void @kunmap_local_indexed(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__UNIQUE_ID_pages_limit302, !1, !"__UNIQUE_ID_pages_limit302", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 45, i32 1}
!2 = !{ptr @__param_pages_limit, !3, !"__param_pages_limit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 46, i32 1}
!4 = !{ptr @__UNIQUE_ID_pages_limittype303, !3, !"__UNIQUE_ID_pages_limittype303", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_dma32_pages_limit304, !6, !"__UNIQUE_ID_dma32_pages_limit304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 50, i32 1}
!7 = !{ptr @__param_dma32_pages_limit, !8, !"__param_dma32_pages_limit", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 51, i32 1}
!9 = !{ptr @__UNIQUE_ID_dma32_pages_limittype305, !8, !"__UNIQUE_ID_dma32_pages_limittype305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 64, i32 2}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 80, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ttm_tt_create._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @ttm_tt_create._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 154, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ttm_tt_init._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ttm_tt_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_ttm_tt_init, !23, !"__ksymtab_ttm_tt_init", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 159, i32 1}
!24 = !{ptr @__ksymtab_ttm_tt_fini, !25, !"__ksymtab_ttm_tt_fini", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 176, i32 1}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 190, i32 3}
!28 = !{ptr @ttm_sg_tt_init._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ttm_sg_tt_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_ttm_sg_tt_init, !31, !"__ksymtab_ttm_sg_tt_init", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 195, i32 1}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 259, i32 34}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 261, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ttm_tt_swapout._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ttm_tt_swapout._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__ksymtab_ttm_tt_populate, !40, !"__ksymtab_ttm_tt_populate", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 352, i32 1}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 397, i32 22}
!43 = !{ptr @__ksymtab_ttm_kmap_iter_tt_init, !44, !"__ksymtab_ttm_kmap_iter_tt_init", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 451, i32 1}
!45 = !{ptr @ttm_pages_limit, !46, !"ttm_pages_limit", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 43, i32 22}
!47 = !{ptr @ttm_dma32_pages_limit, !48, !"ttm_dma32_pages_limit", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 48, i32 22}
!49 = !{ptr @ttm_pages_allocated, !50, !"ttm_pages_allocated", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 53, i32 22}
!51 = !{ptr @ttm_dma32_pages_allocated, !52, !"ttm_dma32_pages_allocated", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 54, i32 22}
!53 = !{ptr @__param_str_pages_limit, !3, !"__param_str_pages_limit", i1 false, i1 false}
!54 = !{ptr @__param_str_dma32_pages_limit, !8, !"__param_str_dma32_pages_limit", i1 false, i1 false}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/mm.h", i32 717, i32 2}
!57 = !{ptr @ttm_tt_debugfs_shrink_fops, !58, !"ttm_tt_debugfs_shrink_fops", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 384, i32 1}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 381, i32 16}
!61 = !{ptr @ttm_kmap_iter_tt_ops, !62, !"ttm_kmap_iter_tt_ops", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/ttm/ttm_tt.c", i32 425, i32 39}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2155323109, i64 2155323602, i64 2155323146, i64 2155323202, i64 2155323236, i64 2155323260, i64 2155323301, i64 2155323322, i64 2155323350, i64 2155323384}
!75 = !{i64 2153889424, i64 2153889907, i64 2153889461, i64 2153889517, i64 2153889551, i64 2153889575, i64 2153889616, i64 2153889637, i64 2153889665, i64 2153889699}
!76 = !{i64 2148517099}
!77 = !{i64 2148431832, i64 2148431864, i64 2148431893, i64 2148431927, i64 2148431958, i64 2148431981}
!78 = !{i64 2148517328}
!79 = !{i64 2148242040, i64 2148242045, i64 2148242058, i64 2148242102, i64 2148242136, i64 2148242157}
!80 = !{i64 2148431112, i64 2148431138, i64 2148431167, i64 2148431201, i64 2148431232, i64 2148431255}
!81 = !{i8 0, i8 2}
!82 = !{i64 2148428647, i64 2148428673, i64 2148428702, i64 2148428736, i64 2148428767, i64 2148428790}
