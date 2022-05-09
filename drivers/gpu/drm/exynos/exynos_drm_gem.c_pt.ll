; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.80, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.80 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.86 = type { i32, ptr }
%struct.exynos_drm_private = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.exynos_drm_gem = type { %struct.drm_gem_object, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.drm_exynos_gem_create = type { i64, i32, i32 }
%struct.drm_exynos_gem_map = type { i32, i32, i64 }
%struct.drm_exynos_gem_info = type { i32, i32, i64 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@__UNIQUE_ID_import_ns320 = internal constant [28 x i8] c"exynosdrm.import_ns=DMA_BUF\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"handle count = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* invalid GEM buffer flags: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* invalid GEM buffer size: %lu\0A\00", [58 x i8] zeroinitializer }, align 32
@exynos_drm_gem_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\014[drm] Non-contiguous allocation is not supported without IOMMU, falling back to contiguous buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_drm_gem_create\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/exynos/exynos_drm_gem.c\00", [56 x i8] zeroinitializer }, align 32
@exynos_drm_gem_create._entry_ptr = internal global ptr @exynos_drm_gem_create._entry, section ".printk_index", align 4
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* failed to lookup gem object.\0A\00", [58 x i8] zeroinitializer }, align 32
@exynos_drm_gem_dumb_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.6, i32 349, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FB allocation failed.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"exynos_drm_gem_dumb_create\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_drm_gem_dumb_create._entry_ptr = internal global ptr @exynos_drm_gem_dumb_create._entry, section ".printk_index", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get sgtable, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"buffer chunks must be mapped contiguously\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dma_addr is invalid.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dma_addr(0x%lx), size(0x%lx)\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_drm_gem_object_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @exynos_drm_gem_free_object, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_drm_gem_prime_get_sg_table, ptr null, ptr null, ptr @exynos_drm_gem_mmap, ptr @exynos_drm_gem_vm_ops }, [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to initialize gem object\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"created file object = %pK\0A\00", [37 x i8] zeroinitializer }, align 32
@exynos_drm_gem_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flags = 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to mmap.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"already allocated.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to allocate buffer.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gem handle = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 115, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 191, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 197, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 213, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 306, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 349, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 420, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 437, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 77, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 81, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"exynos_drm_gem_object_funcs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 140, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 165, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 177, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"exynos_drm_gem_vm_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 135, i32 42 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 373, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 290, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 31, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 60, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [43 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_gem.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 103, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_import_ns320, ptr @exynos_drm_gem_create._entry, ptr @exynos_drm_gem_create._entry_ptr, ptr @exynos_drm_gem_dumb_create._entry, ptr @exynos_drm_gem_dumb_create._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @exynos_drm_gem_object_funcs, ptr @.str.16, ptr @.str.17, ptr @exynos_drm_gem_vm_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_gem_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_gem_dumb_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_gem_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_drm_gem_destroy(ptr noundef %exynos_gem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %exynos_gem, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %dma_dev.i = getelementptr inbounds %struct.exynos_drm_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_dev.i, align 4
  %handle_count = getelementptr inbounds %struct.drm_gem_object, ptr %exynos_gem, i32 0, i32 1
  %6 = ptrtoint ptr %handle_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle_count, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %7) #5
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %exynos_gem, i32 0, i32 8
  %8 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %import_attach, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sgt = getelementptr inbounds %struct.exynos_drm_gem, ptr %exynos_gem, i32 0, i32 7
  %10 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sgt, align 8
  tail call void @drm_prime_gem_destroy(ptr noundef %exynos_gem, ptr noundef %11) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %dma_addr.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %exynos_gem, i32 0, i32 5
  %14 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2.i, align 4
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %17, i32 noundef 4, ptr noundef nonnull @.str.14) #5
  br label %if.end

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %size.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %exynos_gem, i32 0, i32 2
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %17, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %15, i32 noundef %19) #5
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %20 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_private.i.i, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.exynos_drm_private, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_dev.i.i, align 4
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  %cookie.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %exynos_gem, i32 0, i32 3
  %26 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cookie.i, align 8
  %28 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr.i, align 8
  %dma_attrs.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %exynos_gem, i32 0, i32 6
  %30 = ptrtoint ptr %dma_attrs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_attrs.i, align 4
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef %25, ptr noundef %27, i32 noundef %29, i32 noundef %31) #5
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.i, %if.then
  tail call void @drm_gem_object_release(ptr noundef %exynos_gem) #5
  tail call void @kfree(ptr noundef %exynos_gem) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_gem_create(ptr noundef %dev, i32 noundef %flags, i32 noundef %size, i1 noundef zeroext %kvmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %flags) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool2.not = icmp eq i32 %size, 0
  br i1 %tobool2.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef 0) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add = add i32 %size, 4095
  %div45 = and i32 %add, -4096
  %call7 = tail call fastcc ptr @exynos_drm_gem_init(ptr noundef %dev, i32 noundef %div45)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %mapping.i = getelementptr inbounds %struct.exynos_drm_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapping.i, align 4
  %tobool.i = icmp ne ptr %7, null
  %and12 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond = or i1 %tobool13.not, %tobool.i
  br i1 %or.cond, label %if.end10.if.end18_crit_edge, label %if.then14

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %and15 = and i32 %flags, -2
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end10.if.end18_crit_edge
  %flags.addr.0 = phi i32 [ %flags, %if.end10.if.end18_crit_edge ], [ %and15, %if.then14 ]
  %flags19 = getelementptr inbounds %struct.exynos_drm_gem, ptr %call7, i32 0, i32 1
  %8 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %flags.addr.0, ptr %flags19, align 8
  %dev1.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7, i32 0, i32 2
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 8
  %dma_addr.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %call7, i32 0, i32 5
  %11 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_private.i.i, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.exynos_drm_private, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_dev.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %16, i32 noundef 4, ptr noundef nonnull @.str.20) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %and.i = shl nuw nsw i32 %flags.addr.0, 6
  %17 = and i32 %and.i, 64
  %18 = xor i32 %17, 64
  %19 = and i32 %flags.addr.0, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %.not.i = icmp eq i32 %19, 2
  %or12.i = or i32 %18, 4
  %attr.1.i = select i1 %.not.i, i32 %18, i32 %or12.i
  %or16.i = or i32 %attr.1.i, 16
  %attr.2.i = select i1 %kvmap, i32 %attr.1.i, i32 %or16.i
  %dma_attrs.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %call7, i32 0, i32 6
  %20 = ptrtoint ptr %dma_attrs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %attr.2.i, ptr %dma_attrs.i, align 4
  %dev_private.i56.i = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private.i56.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i56.i, align 4
  %dma_dev.i57.i = getelementptr inbounds %struct.exynos_drm_private, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dma_dev.i57.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_dev.i57.i, align 4
  %size.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %call7, i32 0, i32 2
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 4
  %call21.i = tail call ptr @dma_alloc_attrs(ptr noundef %24, i32 noundef %26, ptr noundef %dma_addr.i, i32 noundef 3264, i32 noundef %attr.2.i) #5
  %cookie.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %call7, i32 0, i32 3
  %27 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call21.i, ptr %cookie.i, align 8
  %tobool23.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool23.not.i, label %if.then22, label %if.end26.i

if.end26.i:                                       ; preds = %if.end.i
  br i1 %kvmap, label %if.then28.i, label %if.end26.i.if.end30.i_crit_edge

if.end26.i.if.end30.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %kvaddr.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %call7, i32 0, i32 4
  %28 = ptrtoint ptr %kvaddr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call21.i, ptr %kvaddr.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end30.i_crit_edge
  %29 = ptrtoint ptr %dev_private.i56.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_private.i56.i, align 4
  %dma_dev.i61.i = getelementptr inbounds %struct.exynos_drm_private, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dma_dev.i61.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_dev.i61.i, align 4
  %33 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_addr.i, align 8
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %32, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %34, i32 noundef %36) #5
  br label %cleanup

if.then22:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %dev_private.i56.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_private.i56.i, align 4
  %dma_dev.i59.i = getelementptr inbounds %struct.exynos_drm_private, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dma_dev.i59.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_dev.i59.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %40, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #5
  tail call void @drm_gem_object_release(ptr noundef %call7) #5
  tail call void @kfree(ptr noundef %call7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end30.i, %if.then.i, %if.end6.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.then22 ], [ inttoptr (i32 -22 to ptr), %if.then3 ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call7, %if.then.i ], [ %call7, %if.end30.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @exynos_drm_gem_init(ptr noundef %dev, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %size2 = getelementptr inbounds %struct.exynos_drm_gem, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size2, align 4
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @exynos_drm_gem_object_funcs, ptr %funcs, align 4
  %call3 = tail call i32 @drm_gem_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef %size) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %5 = inttoptr i32 %call3 to ptr
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_gem_object_release(ptr noundef nonnull %call7.i.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %6 = inttoptr i32 %call8 to ptr
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %dev13 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev13, align 4
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %filp, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then4 ], [ %6, %if.then10 ], [ %call7.i.i, %if.end12 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_gem_create_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_exynos_gem_create, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  %conv = trunc i64 %3 to i32
  %call = tail call ptr @exynos_drm_gem_create(ptr noundef %dev, i32 noundef %1, i32 noundef %conv, i1 noundef zeroext false)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct.drm_exynos_gem_create, ptr %data, i32 0, i32 2
  %call3 = tail call fastcc i32 @exynos_drm_gem_handle_create(ptr noundef %call, ptr noundef %file_priv, ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @exynos_drm_gem_destroy(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_drm_gem_handle_create(ptr noundef %obj, ptr noundef %file_priv, ptr noundef %handle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %obj, ptr noundef %handle) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %dma_dev.i = getelementptr inbounds %struct.exynos_drm_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_dev.i, align 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %7) #5
  %tobool.not.i = icmp eq ptr %obj, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %obj, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr nonnull %obj, i32 1, i32 3, i32 1) #5
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %obj, ptr nonnull %obj, i32 1, ptr nonnull elementtype(i32) %obj) #5, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %obj, i32 noundef 3) #5
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @drm_gem_object_free(ptr noundef nonnull %obj) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_gem_map_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %offset = getelementptr inbounds %struct.drm_exynos_gem_map, ptr %data, i32 0, i32 2
  %call = tail call i32 @drm_gem_dumb_map_offset(ptr noundef %file_priv, ptr noundef %dev, i32 noundef %1, ptr noundef %offset) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_gem_get(ptr noundef %filp, i32 noundef %gem_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %gem_handle) #5
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_gem_get_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.then.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %flags = getelementptr inbounds %struct.exynos_drm_gem, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %flags2 = getelementptr inbounds %struct.drm_exynos_gem_info, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %flags2, align 4
  %size = getelementptr inbounds %struct.exynos_drm_gem, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %conv = zext i32 %8 to i64
  %size3 = getelementptr inbounds %struct.drm_exynos_gem_info, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %size3 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %size3, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #5
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #5, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #5
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_drm_gem_free_object(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @exynos_drm_gem_destroy(ptr noundef %obj)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_gem_dumb_create(ptr noundef %file_priv, ptr noundef %dev, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpp, align 8
  %add = add i32 %3, 7
  %div29 = lshr i32 %add, 3
  %mul = mul i32 %div29, %1
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %4 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %pitch, align 4
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args, align 8
  %mul2 = mul i32 %mul, %6
  %conv = zext i32 %mul2 to i64
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %size, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %mapping.i = getelementptr inbounds %struct.exynos_drm_private, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapping.i, align 4
  %tobool.i.not = icmp eq ptr %11, null
  %. = select i1 %tobool.i.not, i32 4, i32 5
  %call5 = tail call ptr @exynos_drm_gem_create(ptr noundef %dev, i32 noundef %., i32 noundef %mul2, i1 noundef zeroext false)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.8) #8
  %14 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end10:                                         ; preds = %entry
  %handle = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %call11 = tail call fastcc i32 @exynos_drm_gem_handle_create(ptr noundef %call5, ptr noundef %file_priv, ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @exynos_drm_gem_destroy(ptr noundef %call5)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %14, %do.end ], [ %call11, %if.then12 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_gem_prime_import(ptr noundef %dev, ptr noundef %dma_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %dma_dev.i = getelementptr inbounds %struct.exynos_drm_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_dev.i, align 4
  %call1 = tail call ptr @drm_gem_prime_import_dev(ptr noundef %dev, ptr noundef %dma_buf, ptr noundef %3) #5
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_prime_import_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_gem_prime_get_sg_table(ptr nocapture noundef readonly %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_private.i, align 4
  %dma_dev.i = getelementptr inbounds %struct.exynos_drm_private, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_dev.i, align 4
  %cookie = getelementptr inbounds %struct.exynos_drm_gem, ptr %obj, i32 0, i32 3
  %7 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cookie, align 8
  %dma_addr = getelementptr inbounds %struct.exynos_drm_gem, ptr %obj, i32 0, i32 5
  %9 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_addr, align 8
  %size = getelementptr inbounds %struct.exynos_drm_gem, ptr %obj, i32 0, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %dma_attrs = getelementptr inbounds %struct.exynos_drm_gem, ptr %obj, i32 0, i32 6
  %13 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_attrs, align 4
  %call3 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %6, ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %call3) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %15 = inttoptr i32 %call3 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.then5 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_gem_prime_import_sg_table(ptr noundef %dev, ptr nocapture noundef readonly %attach, ptr noundef %sgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_prime_get_contiguous_size(ptr noundef %sgt) #5
  %0 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attach, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %3)
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc ptr @exynos_drm_gem_init(ptr noundef %dev, i32 noundef %3)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %mapping.i = getelementptr inbounds %struct.exynos_drm_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapping.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.exynos_drm_gem, ptr %call4, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %or = or i32 %9, 1
  store i32 %or, ptr %flags, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %10 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sgt, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_address, align 4
  %dma_addr = getelementptr inbounds %struct.exynos_drm_gem, ptr %call4, i32 0, i32 5
  %14 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dma_addr, align 8
  %sgt14 = getelementptr inbounds %struct.exynos_drm_gem, ptr %call4, i32 0, i32 7
  %15 = ptrtoint ptr %sgt14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sgt, ptr %sgt14, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %call4, %if.end13 ], [ %call4, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_get_contiguous_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_drm_gem_mmap(ptr nocapture noundef readonly %obj, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 8
  %0 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %import_attach, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dma_buf = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 7
  %2 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_buf, align 8
  %call = tail call i32 @dma_buf_mmap(ptr noundef %3, ptr noundef %vma, i32 noundef 0) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %or = or i32 %5, 67387392
  store i32 %or, ptr %vm_flags, align 4
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %dma_dev.i = getelementptr inbounds %struct.exynos_drm_private, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_dev.i, align 4
  %flags = getelementptr inbounds %struct.exynos_drm_gem, ptr %obj, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %11, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %13) #5
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_flags, align 4
  %call6 = tail call i32 @vm_get_page_prot(i32 noundef %17) #5
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and8 = and i32 %15, 4
  %18 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_flags, align 4
  %call18 = tail call i32 @vm_get_page_prot(i32 noundef %19) #5
  %and19 = and i32 %call18, -61
  %20 = or i32 %and8, %and19
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then4
  %or14.sink = phi i32 [ %call6, %if.then4 ], [ %20, %if.else ]
  %vm_page_prot15 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %21 = ptrtoint ptr %vm_page_prot15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or14.sink, ptr %vm_page_prot15, align 4
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %24 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_flags, align 4
  %and.i = and i32 %25, -1025
  store i32 %and.i, ptr %vm_flags, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %26 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %vm_pgoff.i, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %27 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_end.i, align 4
  %29 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %28, %30
  %size.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %obj, i32 0, i32 2
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %32)
  %cmp.i = icmp ugt i32 %sub.i, %32
  br i1 %cmp.i, label %if.end23.err_close_vm_crit_edge, label %if.end.i

if.end23.err_close_vm_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_close_vm

if.end.i:                                         ; preds = %if.end23
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 5
  %33 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_private.i.i, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.exynos_drm_private, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_dev.i.i, align 4
  %cookie.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %obj, i32 0, i32 3
  %37 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cookie.i, align 8
  %dma_addr.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %obj, i32 0, i32 5
  %39 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_addr.i, align 8
  %dma_attrs.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %obj, i32 0, i32 6
  %41 = ptrtoint ptr %dma_attrs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_attrs.i, align 4
  %call2.i = tail call i32 @dma_mmap_attrs(ptr noundef %36, ptr noundef %vma, ptr noundef %38, i32 noundef %40, i32 noundef %32, i32 noundef %42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #5
  br label %err_close_vm

err_close_vm:                                     ; preds = %if.then4.i, %if.end23.err_close_vm_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end23.err_close_vm_crit_edge ], [ %call2.i, %if.then4.i ]
  tail call void @drm_gem_vm_close(ptr noundef %vma) #5
  br label %cleanup

cleanup:                                          ; preds = %err_close_vm, %if.end.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.0.i.ph, %err_close_vm ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_mmap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__UNIQUE_ID_import_ns320, !1, !"__UNIQUE_ID_import_ns320", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 21, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 115, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 191, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 197, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 213, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @exynos_drm_gem_create._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @exynos_drm_gem_create._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 306, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 349, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @exynos_drm_gem_dumb_create._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @exynos_drm_gem_dumb_create._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 420, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 437, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 77, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 81, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 165, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 177, i32 2}
!36 = !{ptr @exynos_drm_gem_object_funcs, !37, !"exynos_drm_gem_object_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 140, i32 42}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 373, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 290, i32 3}
!42 = !{ptr @exynos_drm_gem_vm_ops, !43, !"exynos_drm_gem_vm_ops", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 135, i32 42}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 31, i32 3}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 60, i32 3}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gem.c", i32 103, i32 2}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148549779}
!60 = !{i64 2148464243, i64 2148464275, i64 2148464304, i64 2148464338, i64 2148464369, i64 2148464392}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2150175793}
