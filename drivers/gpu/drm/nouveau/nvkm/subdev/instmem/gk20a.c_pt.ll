; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_instmem_func = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.gk20a_instmem = type { %struct.nvkm_instmem, %struct.mutex, i32, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i32 }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device_tegra = type { ptr, %struct.nvkm_device, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.142, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.142 = type { %struct.mutex, %struct.nvkm_mm, ptr, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.gk20a_instobj_iommu = type { %struct.gk20a_instobj, %struct.list_head, i32, ptr, [0 x ptr] }
%struct.gk20a_instobj = type { %struct.nvkm_memory, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.gk20a_instobj_dma = type { %struct.gk20a_instobj, i32, %struct.nvkm_mm_node }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }

@gk20a_instmem = internal constant { %struct.nvkm_instmem_func, [36 x i8] } { %struct.nvkm_instmem_func { ptr @gk20a_instmem_dtor, ptr null, ptr null, ptr null, ptr null, ptr @gk20a_instobj_new, i8 0 }, [36 x i8] zeroinitializer }, align 32
@gk20a_instmem_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&imem->lock\00", [20 x i8] zeroinitializer }, align 32
@gk20a_instmem_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: using IOMMU\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gk20a_instmem_new\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gk20a_instmem_new._entry_ptr = internal global ptr @gk20a_instmem_new._entry, section ".printk_index", align 4
@gk20a_instmem_new._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 600, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: using DMA API\0A\00", [45 x i8] zeroinitializer }, align 32
@gk20a_instmem_new._entry_ptr.8 = internal global ptr @gk20a_instmem_new._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gk20a_instmem_dtor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 554, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: instobj LRU not empty!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gk20a_instmem_dtor\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@gk20a_instmem_dtor._entry_ptr = internal global ptr @gk20a_instmem_dtor._entry, section ".printk_index", align 4
@gk20a_instmem_dtor._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 558, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: instobj vmap area not empty! 0x%x bytes still mapped\0A\00", [38 x i8] zeroinitializer }, align 32
@gk20a_instmem_dtor._entry_ptr.14 = internal global ptr @gk20a_instmem_dtor._entry.12, section ".printk_index", align 4
@gk20a_instobj_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %s (%s): size: %x align: %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gk20a_instobj_new\00", [46 x i8] zeroinitializer }, align 32
@gk20a_instobj_new._entry_ptr = internal global ptr @gk20a_instobj_new._entry, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IOMMU\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@gk20a_instobj_new._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.3, i32 542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: alloc size: 0x%x, align: 0x%x, gaddr: 0x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@gk20a_instobj_new._entry_ptr.21 = internal global ptr @gk20a_instobj_new._entry.19, section ".printk_index", align 4
@gk20a_instobj_func_iommu = internal constant { %struct.nvkm_memory_func, [56 x i8] } { %struct.nvkm_memory_func { ptr @gk20a_instobj_dtor_iommu, ptr @gk20a_instobj_target, ptr @gk20a_instobj_page, ptr null, ptr @gk20a_instobj_addr, ptr @gk20a_instobj_size, ptr null, ptr @gk20a_instobj_acquire_iommu, ptr @gk20a_instobj_release_iommu, ptr @gk20a_instobj_map }, [56 x i8] zeroinitializer }, align 32
@gk20a_instobj_ptrs = internal constant { %struct.nvkm_memory_ptrs, [24 x i8] } { %struct.nvkm_memory_ptrs { ptr @gk20a_instobj_rd32, ptr @gk20a_instobj_wr32 }, [24 x i8] zeroinitializer }, align 32
@gk20a_instobj_ctor_iommu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 456, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: DMA mapping error!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gk20a_instobj_ctor_iommu\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gk20a_instobj_ctor_iommu._entry_ptr = internal global ptr @gk20a_instobj_ctor_iommu._entry, section ".printk_index", align 4
@gk20a_instobj_ctor_iommu._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.3, i32 469, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: IOMMU space is full!\0A\00", [38 x i8] zeroinitializer }, align 32
@gk20a_instobj_ctor_iommu._entry_ptr.27 = internal global ptr @gk20a_instobj_ctor_iommu._entry.25, section ".printk_index", align 4
@gk20a_instobj_ctor_iommu._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.3, i32 480, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: IOMMU mapping failure: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@gk20a_instobj_ctor_iommu._entry_ptr.30 = internal global ptr @gk20a_instobj_ctor_iommu._entry.28, section ".printk_index", align 4
@gk20a_instobj_iommu_recycle_vaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: vaddr used: %x/%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"gk20a_instobj_iommu_recycle_vaddr\00", [62 x i8] zeroinitializer }, align 32
@gk20a_instobj_iommu_recycle_vaddr._entry_ptr = internal global ptr @gk20a_instobj_iommu_recycle_vaddr._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@gk20a_instobj_acquire_iommu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 213, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: cannot map instobj - this is not going to end well...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gk20a_instobj_acquire_iommu\00", [36 x i8] zeroinitializer }, align 32
@gk20a_instobj_acquire_iommu._entry_ptr = internal global ptr @gk20a_instobj_acquire_iommu._entry, section ".printk_index", align 4
@gk20a_instobj_acquire_iommu._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.34, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@gk20a_instobj_acquire_iommu._entry_ptr.36 = internal global ptr @gk20a_instobj_acquire_iommu._entry.35, section ".printk_index", align 4
@gk20a_instobj_func_dma = internal constant { %struct.nvkm_memory_func, [56 x i8] } { %struct.nvkm_memory_func { ptr @gk20a_instobj_dtor_dma, ptr @gk20a_instobj_target, ptr @gk20a_instobj_page, ptr null, ptr @gk20a_instobj_addr, ptr @gk20a_instobj_size, ptr null, ptr @gk20a_instobj_acquire_dma, ptr @gk20a_instobj_release_dma, ptr @gk20a_instobj_map }, [56 x i8] zeroinitializer }, align 32
@gk20a_instobj_ctor_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 401, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: cannot allocate DMA memory\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gk20a_instobj_ctor_dma\00", [41 x i8] zeroinitializer }, align 32
@gk20a_instobj_ctor_dma._entry_ptr = internal global ptr @gk20a_instobj_ctor_dma._entry, section ".printk_index", align 4
@gk20a_instobj_ctor_dma._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 409, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: memory not aligned as requested: %pad (0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@gk20a_instobj_ctor_dma._entry_ptr.42 = internal global ptr @gk20a_instobj_ctor_dma._entry.40, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"gk20a_instmem\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 564, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 580, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 595, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 600, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 554, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 557, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 522, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 541, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [25 x i8] c"gk20a_instobj_func_iommu\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 365, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"gk20a_instobj_ptrs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 377, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 456, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 469, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 480, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 152, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 212, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 218, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [23 x i8] c"gk20a_instobj_func_dma\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 353, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 401, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 407, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @gk20a_instmem_dtor._entry, ptr @gk20a_instmem_dtor._entry.12, ptr @gk20a_instmem_dtor._entry_ptr, ptr @gk20a_instmem_dtor._entry_ptr.14, ptr @gk20a_instmem_new._entry, ptr @gk20a_instmem_new._entry.6, ptr @gk20a_instmem_new._entry_ptr, ptr @gk20a_instmem_new._entry_ptr.8, ptr @gk20a_instobj_acquire_iommu._entry, ptr @gk20a_instobj_acquire_iommu._entry.35, ptr @gk20a_instobj_acquire_iommu._entry_ptr, ptr @gk20a_instobj_acquire_iommu._entry_ptr.36, ptr @gk20a_instobj_ctor_dma._entry, ptr @gk20a_instobj_ctor_dma._entry.40, ptr @gk20a_instobj_ctor_dma._entry_ptr, ptr @gk20a_instobj_ctor_dma._entry_ptr.42, ptr @gk20a_instobj_ctor_iommu._entry, ptr @gk20a_instobj_ctor_iommu._entry.25, ptr @gk20a_instobj_ctor_iommu._entry.28, ptr @gk20a_instobj_ctor_iommu._entry_ptr, ptr @gk20a_instobj_ctor_iommu._entry_ptr.27, ptr @gk20a_instobj_ctor_iommu._entry_ptr.30, ptr @gk20a_instobj_iommu_recycle_vaddr._entry, ptr @gk20a_instobj_iommu_recycle_vaddr._entry_ptr, ptr @gk20a_instobj_new._entry, ptr @gk20a_instobj_new._entry.19, ptr @gk20a_instobj_new._entry_ptr, ptr @gk20a_instobj_new._entry_ptr.21, ptr @gk20a_instmem, ptr @gk20a_instmem_new.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @gk20a_instobj_func_iommu, ptr @gk20a_instobj_ptrs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @gk20a_instobj_func_dma, ptr @.str.38, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instmem to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instmem_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instmem_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instmem_new._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instmem_dtor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instmem_dtor._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_new._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_func_iommu to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_ptrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_ctor_iommu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_ctor_iommu._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_ctor_iommu._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_iommu_recycle_vaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_acquire_iommu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_acquire_iommu._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_func_dma to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_ctor_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_instobj_ctor_dma._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_instmem_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pimem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %tegra = getelementptr inbounds %struct.nvkm_device_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tegra, align 4
  %call = tail call ptr %3(ptr noundef %device) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 360) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nvkm_instmem_ctor(ptr noundef nonnull @gk20a_instmem, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #10
  %lock = getelementptr inbounds %struct.gk20a_instmem, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @gk20a_instmem_new.__key) #10
  %5 = ptrtoint ptr %pimem to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pimem, align 4
  %vaddr_use = getelementptr inbounds %struct.gk20a_instmem, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %vaddr_use to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %vaddr_use, align 8
  %vaddr_max = getelementptr inbounds %struct.gk20a_instmem, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %vaddr_max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1048576, ptr %vaddr_max, align 4
  %vaddr_lru = getelementptr inbounds %struct.gk20a_instmem, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %vaddr_lru to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %vaddr_lru, ptr %vaddr_lru, align 8
  %prev.i = getelementptr inbounds %struct.gk20a_instmem, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vaddr_lru, ptr %prev.i, align 4
  %domain = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domain, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %iommu = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call, i32 0, i32 9
  %mm_mutex = getelementptr inbounds %struct.gk20a_instmem, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %mm_mutex to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %iommu, ptr %mm_mutex, align 8
  %mm = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call, i32 0, i32 9, i32 1
  %mm7 = getelementptr inbounds %struct.gk20a_instmem, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %mm7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mm, ptr %mm7, align 4
  %14 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %domain, align 4
  %domain10 = getelementptr inbounds %struct.gk20a_instmem, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %domain10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %domain10, align 8
  %pgshift = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %pgshift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pgshift, align 4
  %iommu_pgshift = getelementptr inbounds %struct.gk20a_instmem, ptr %call7.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %iommu_pgshift to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %iommu_pgshift, align 4
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv = zext i8 %23 to i16
  %iommu_bit13 = getelementptr inbounds %struct.gk20a_instmem, ptr %call7.i.i, i32 0, i32 9
  %24 = ptrtoint ptr %iommu_bit13 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %iommu_bit13, align 8
  %debug = getelementptr inbounds %struct.nvkm_instmem, ptr %call7.i.i, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp = icmp ugt i32 %26, 2
  br i1 %cmp, label %if.then4.cleanup.sink.split_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %attrs = getelementptr inbounds %struct.gk20a_instmem, ptr %call7.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %attrs, align 4
  %debug29 = getelementptr inbounds %struct.nvkm_instmem, ptr %call7.i.i, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %debug29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp30 = icmp ugt i32 %29, 2
  br i1 %cmp30, label %if.else.cleanup.sink.split_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.1, %if.then4.cleanup.sink.split_crit_edge ], [ @.str.7, %if.else.cleanup.sink.split_crit_edge ]
  %device21 = getelementptr inbounds %struct.nvkm_instmem, ptr %call7.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %device21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device21, align 8
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_instmem, ptr %call7.i.i, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull %.str.1.sink, ptr noundef %name) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instmem_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gk20a_instmem_dtor(ptr noundef returned %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vaddr_lru = getelementptr inbounds %struct.gk20a_instmem, ptr %base, i32 0, i32 4
  %0 = ptrtoint ptr %vaddr_lru to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vaddr_lru, align 4
  %cmp.i.not = icmp eq ptr %1, %vaddr_lru
  br i1 %cmp.i.not, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %do.end, label %do.body.if.end5_crit_edge

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef %name) #14
  br label %if.end5

if.end5:                                          ; preds = %do.end, %do.body.if.end5_crit_edge, %entry.if.end5_crit_edge
  %vaddr_use = getelementptr inbounds %struct.gk20a_instmem, ptr %base, i32 0, i32 2
  %8 = ptrtoint ptr %vaddr_use to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vaddr_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6.not = icmp eq i32 %9, 0
  br i1 %cmp6.not, label %if.end5.if.end25_crit_edge, label %do.body8

if.end5.if.end25_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body8:                                         ; preds = %if.end5
  %debug11 = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %debug11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp12 = icmp ugt i32 %11, 1
  br i1 %cmp12, label %do.end16, label %do.body8.if.end25_crit_edge

do.body8.if.end25_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end16:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %device17 = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %device17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device17, align 4
  %dev18 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev18, align 8
  %name19 = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %15, ptr noundef nonnull @.str.13, ptr noundef %name19, i32 noundef %9) #14
  br label %if.end25

if.end25:                                         ; preds = %do.end16, %do.body8.if.end25_crit_edge, %if.end5.if.end25_crit_edge
  ret ptr %base
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk20a_instobj_new(ptr noundef %base, i32 noundef %size, i32 noundef %align, i1 noundef zeroext %zero, ptr nocapture noundef writeonly %pmemory) #0 align 64 {
entry:
  %r.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 4
  %domain = getelementptr inbounds %struct.gk20a_instmem, ptr %base, i32 0, i32 7
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %7, null
  %cond = select i1 %tobool.not, ptr @.str.18, ptr @.str.17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.15, ptr noundef %name, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond, i32 noundef %size, i32 noundef %align) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add = add i32 %size, 4095
  %div82 = and i32 %add, -4096
  %8 = tail call i32 @llvm.umax.i32(i32 %div82, i32 4096)
  %add13 = add i32 %align, 4095
  %div1483 = and i32 %add13, -4096
  %9 = tail call i32 @llvm.umax.i32(i32 %div1483, i32 4096)
  %domain22 = getelementptr inbounds %struct.gk20a_instmem, ptr %base, i32 0, i32 7
  %10 = ptrtoint ptr %domain22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domain22, align 4
  %tobool23.not = icmp eq ptr %11, null
  %shr25 = lshr exact i32 %8, 12
  %device.i84 = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %device.i84 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i84, align 4
  %dev2.i85 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev2.i85 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2.i85, align 8
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r.i) #10
  %16 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %r.i, align 4, !annotation !92
  %mul.i = lshr exact i32 %8, 9
  %add.i = add nuw nsw i32 %mul.i, 44
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #15
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end27.thread116, label %if.end.i

if.end27.thread116:                               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i) #10
  %17 = ptrtoint ptr %pmemory to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pmemory, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.then24
  %pages.i = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %call9.i.i.i, i32 0, i32 4
  %add.ptr.i = getelementptr ptr, ptr %pages.i, i32 %shr25
  %dma_addrs.i = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %call9.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %dma_addrs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %dma_addrs.i, align 8
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @gk20a_instobj_func_iommu, ptr noundef nonnull %call9.i.i.i) #10
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %call9.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @gk20a_instobj_ptrs, ptr %ptrs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.0187.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i ]
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %cmp8.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %cmp8.i, label %for.body.i.free_pages.i_crit_edge, label %if.end10.i

for.body.i.free_pages.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_pages.i

if.end10.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.gk20a_instobj_iommu, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.0187.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38.i.i.i.i, ptr %arrayidx.i, align 4
  %call12.i = tail call i32 @dma_map_page_attrs(ptr noundef %15, ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef %call12.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i)
  %cmp.i.not.i = icmp eq i32 %call12.i, -1
  br i1 %cmp.i.not.i, label %do.body.i, label %for.inc.i

do.body.i:                                        ; preds = %if.end10.i
  %21 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp16.not.i = icmp eq i32 %22, 0
  br i1 %cmp16.not.i, label %do.body.i.free_pages.i_crit_edge, label %do.end.i

do.body.i.free_pages.i_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_pages.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %device.i84 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i84, align 4
  %dev20.i = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev20.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.22, ptr noundef %name.i) #14
  br label %free_pages.i

for.inc.i:                                        ; preds = %if.end10.i
  %27 = ptrtoint ptr %dma_addrs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_addrs.i, align 8
  %arrayidx27.i = getelementptr i32, ptr %28, i32 %i.0187.i
  %29 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call12.i, ptr %arrayidx27.i, align 4
  %inc.i = add nuw nsw i32 %i.0187.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr25
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %mm_mutex.i = getelementptr inbounds %struct.gk20a_instmem, ptr %base, i32 0, i32 5
  %30 = ptrtoint ptr %mm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm_mutex.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %31, i32 noundef 0) #10
  %mm.i = getelementptr inbounds %struct.gk20a_instmem, ptr %base, i32 0, i32 6
  %32 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mm.i, align 4
  %iommu_pgshift.i = getelementptr inbounds %struct.gk20a_instmem, ptr %base, i32 0, i32 8
  %34 = ptrtoint ptr %iommu_pgshift.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iommu_pgshift.i, align 4
  %shr.i = lshr i32 %9, %35
  %call29.i = call i32 @nvkm_mm_head(ptr noundef %33, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %shr25, i32 noundef %shr25, i32 noundef %shr.i, ptr noundef nonnull %r.i) #10
  %36 = ptrtoint ptr %mm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mm_mutex.i, align 4
  call void @mutex_unlock(ptr noundef %37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool31.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool31.not.i, label %for.end.i.for.body51.i_crit_edge, label %do.body33.i

for.end.i.for.body51.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body51.i

do.body33.i:                                      ; preds = %for.end.i
  %38 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp36.not.i = icmp eq i32 %39, 0
  br i1 %cmp36.not.i, label %do.body33.i.free_pages.i_crit_edge, label %do.end40.i

do.body33.i.free_pages.i_crit_edge:               ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_pages.i

do.end40.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %device.i84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device.i84, align 4
  %dev42.i = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev42.i, align 8
  %name43.i = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.26, ptr noundef %name43.i) #14
  br label %free_pages.i

for.body51.i:                                     ; preds = %for.inc82.i.for.body51.i_crit_edge, %for.end.i.for.body51.i_crit_edge
  %i.1189.i = phi i32 [ %inc83.i, %for.inc82.i.for.body51.i_crit_edge ], [ 0, %for.end.i.for.body51.i_crit_edge ]
  %44 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %r.i, align 4
  %offset52.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %offset52.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset52.i, align 4
  %add53.i = add i32 %47, %i.1189.i
  %48 = ptrtoint ptr %iommu_pgshift.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iommu_pgshift.i, align 4
  %shl.i = shl i32 %add53.i, %49
  %50 = ptrtoint ptr %domain22 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %domain22, align 4
  %52 = ptrtoint ptr %dma_addrs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_addrs.i, align 8
  %arrayidx56.i = getelementptr i32, ptr %53, i32 %i.1189.i
  %54 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx56.i, align 4
  %call57.i = call i32 @iommu_map(ptr noundef %51, i32 noundef %shl.i, i32 noundef %55, i32 noundef 4096, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %do.body60.i, label %for.inc82.i

do.body60.i:                                      ; preds = %for.body51.i
  %56 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp63.not.i = icmp eq i32 %57, 0
  br i1 %cmp63.not.i, label %do.body60.i.if.end72.i_crit_edge, label %do.end67.i

do.body60.i.if.end72.i_crit_edge:                 ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i

do.end67.i:                                       ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %device.i84 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device.i84, align 4
  %dev69.i = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev69.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev69.i, align 8
  %name70.i = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.29, ptr noundef %name70.i, i32 noundef %call57.i) #14
  br label %if.end72.i

if.end72.i:                                       ; preds = %do.end67.i, %do.body60.i.if.end72.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1189.i)
  %cmp75190.i.not = icmp eq i32 %i.1189.i, 0
  br i1 %cmp75190.i.not, label %if.end72.i.release_area.i_crit_edge, label %if.end72.i.while.body.i_crit_edge

if.end72.i.while.body.i_crit_edge:                ; preds = %if.end72.i
  br label %while.body.i

if.end72.i.release_area.i_crit_edge:              ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_area.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end72.i.while.body.i_crit_edge
  %offset.0192.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %shl.i, %if.end72.i.while.body.i_crit_edge ]
  %i.2191.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.1189.i, %if.end72.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.2191.i, -1
  %sub.i = add i32 %offset.0192.i, -4096
  %62 = ptrtoint ptr %domain22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %domain22, align 4
  %call77.i = call i32 @iommu_unmap(ptr noundef %63, i32 noundef %sub.i, i32 noundef 4096) #10
  %cmp75.i = icmp ugt i32 %i.2191.i, 1
  br i1 %cmp75.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.release_area.i_crit_edge

while.body.i.release_area.i_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_area.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

for.inc82.i:                                      ; preds = %for.body51.i
  %inc83.i = add nuw nsw i32 %i.1189.i, 1
  %exitcond198.not.i = icmp eq i32 %inc83.i, %shr25
  br i1 %exitcond198.not.i, label %if.end27.thread111, label %for.inc82.i.for.body51.i_crit_edge

for.inc82.i.for.body51.i_crit_edge:               ; preds = %for.inc82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body51.i

if.end27.thread111:                               ; preds = %for.inc82.i
  call void @__sanitizer_cov_trace_pc() #12
  %iommu_bit.i = getelementptr inbounds %struct.gk20a_instmem, ptr %base, i32 0, i32 9
  %64 = ptrtoint ptr %iommu_bit.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %iommu_bit.i, align 4
  %conv.i = zext i16 %65 to i32
  %66 = ptrtoint ptr %iommu_pgshift.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %iommu_pgshift.i, align 4
  %sub86.i = sub i32 %conv.i, %67
  %shl87.i = shl nuw i32 1, %sub86.i
  %68 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %r.i, align 4
  %offset88.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %offset88.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offset88.i, align 4
  %or.i = or i32 %71, %shl87.i
  store i32 %or.i, ptr %offset88.i, align 4
  %mn.i = getelementptr inbounds %struct.gk20a_instobj, ptr %call9.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %mn.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %mn.i, align 16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i) #10
  br label %if.end35

release_area.i:                                   ; preds = %while.body.i.release_area.i_crit_edge, %if.end72.i.release_area.i_crit_edge
  %73 = ptrtoint ptr %mm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mm_mutex.i, align 4
  call void @mutex_lock_nested(ptr noundef %74, i32 noundef 0) #10
  %75 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mm.i, align 4
  call void @nvkm_mm_free(ptr noundef %76, ptr noundef nonnull %r.i) #10
  %77 = ptrtoint ptr %mm_mutex.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mm_mutex.i, align 4
  call void @mutex_unlock(ptr noundef %78) #10
  br label %free_pages.i

free_pages.i:                                     ; preds = %release_area.i, %do.end40.i, %do.body33.i.free_pages.i_crit_edge, %do.end.i, %do.body.i.free_pages.i_crit_edge, %for.body.i.free_pages.i_crit_edge
  %ret.2.i = phi i32 [ %call57.i, %release_area.i ], [ %call29.i, %do.end40.i ], [ %call29.i, %do.body33.i.free_pages.i_crit_edge ], [ -12, %do.end.i ], [ -12, %do.body.i.free_pages.i_crit_edge ], [ -12, %for.body.i.free_pages.i_crit_edge ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end105.i.land.rhs.i_crit_edge, %free_pages.i
  %i.4194.i = phi i32 [ %inc109.i, %if.end105.i.land.rhs.i_crit_edge ], [ 0, %free_pages.i ]
  %arrayidx97.i = getelementptr %struct.gk20a_instobj_iommu, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.4194.i
  %79 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx97.i, align 4
  %cmp98.not.i = icmp eq ptr %80, null
  br i1 %cmp98.not.i, label %land.rhs.i.if.end27_crit_edge, label %for.body100.i

land.rhs.i.if.end27_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

for.body100.i:                                    ; preds = %land.rhs.i
  %81 = ptrtoint ptr %dma_addrs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_addrs.i, align 8
  %arrayidx102.i = getelementptr i32, ptr %82, i32 %i.4194.i
  %83 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool103.not.i = icmp eq i32 %84, 0
  br i1 %tobool103.not.i, label %for.body100.i.if.end105.i_crit_edge, label %if.then104.i

for.body100.i.if.end105.i_crit_edge:              ; preds = %for.body100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

if.then104.i:                                     ; preds = %for.body100.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %84, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then104.i, %for.body100.i.if.end105.i_crit_edge
  %85 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx97.i, align 4
  call void @__free_pages(ptr noundef %86, i32 noundef 0) #10
  %inc109.i = add nuw nsw i32 %i.4194.i, 1
  %exitcond199.not.i = icmp eq i32 %inc109.i, %shr25
  br i1 %exitcond199.not.i, label %if.end105.i.if.end27_crit_edge, label %if.end105.i.land.rhs.i_crit_edge

if.end105.i.land.rhs.i_crit_edge:                 ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

if.end105.i.if.end27_crit_edge:                   ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.else:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %87 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i86 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %87, i32 noundef 3520, i32 noundef 64) #13
  %tobool.not.i87 = icmp eq ptr %call7.i.i.i86, null
  br i1 %tobool.not.i87, label %if.else.if.end27.thread_crit_edge, label %if.end.i89

if.else.if.end27.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.thread

if.end.i89:                                       ; preds = %if.else
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @gk20a_instobj_func_dma, ptr noundef nonnull %call7.i.i.i86) #10
  %ptrs.i88 = getelementptr inbounds %struct.nvkm_memory, ptr %call7.i.i.i86, i32 0, i32 1
  %88 = ptrtoint ptr %ptrs.i88 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @gk20a_instobj_ptrs, ptr %ptrs.i88, align 4
  %handle.i = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %call7.i.i.i86, i32 0, i32 1
  %attrs.i = getelementptr inbounds %struct.gk20a_instmem, ptr %base, i32 0, i32 10
  %89 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %attrs.i, align 4
  %call7.i = tail call ptr @dma_alloc_attrs(ptr noundef %15, i32 noundef %8, ptr noundef %handle.i, i32 noundef 3264, i32 noundef %90) #10
  %vaddr.i = getelementptr inbounds %struct.gk20a_instobj, ptr %call7.i.i.i86, i32 0, i32 3
  %91 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i, ptr %vaddr.i, align 8
  %tobool11.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool11.not.i, label %do.body.i91, label %if.end20.i

do.body.i91:                                      ; preds = %if.end.i89
  %92 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.not.i = icmp eq i32 %93, 0
  br i1 %cmp.not.i, label %do.body.i91.if.end27.thread_crit_edge, label %do.end.i93

do.body.i91.if.end27.thread_crit_edge:            ; preds = %do.body.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.thread

do.end.i93:                                       ; preds = %do.body.i91
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %device.i84 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device.i84, align 4
  %dev16.i = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev16.i, align 8
  %name.i92 = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.38, ptr noundef %name.i92) #14
  br label %if.end27.thread

if.end20.i:                                       ; preds = %if.end.i89
  %98 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %handle.i, align 4
  %sub.i94 = add i32 %9, -1
  %and.i = and i32 %99, %sub.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end27.thread105_crit_edge, label %do.body26.i, !prof !93

if.end20.i.if.end27.thread105_crit_edge:          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.thread105

do.body26.i:                                      ; preds = %if.end20.i
  %100 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp29.i = icmp ugt i32 %101, 1
  br i1 %cmp29.i, label %do.end33.i, label %do.body26.i.if.end27.thread105_crit_edge

do.body26.i.if.end27.thread105_crit_edge:         ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.thread105

do.end33.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %device.i84 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device.i84, align 4
  %dev35.i = getelementptr inbounds %struct.nvkm_device, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev35.i, align 8
  %name36.i = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %105, ptr noundef nonnull @.str.41, ptr noundef %name36.i, ptr noundef %handle.i, i32 noundef %9) #14
  br label %if.end27.thread105

if.end27.thread105:                               ; preds = %do.end33.i, %do.body26.i.if.end27.thread105_crit_edge, %if.end20.i.if.end27.thread105_crit_edge
  %r.i95 = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %call7.i.i.i86, i32 0, i32 2
  %type.i = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %call7.i.i.i86, i32 0, i32 2, i32 4
  %106 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 12, ptr %type.i, align 1
  %107 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %handle.i, align 4
  %shr.i96 = lshr i32 %108, 12
  %offset.i = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %call7.i.i.i86, i32 0, i32 2, i32 5
  %109 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %shr.i96, ptr %offset.i, align 8
  %length.i = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %call7.i.i.i86, i32 0, i32 2, i32 6
  %110 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %shr25, ptr %length.i, align 4
  %mn.i97 = getelementptr inbounds %struct.gk20a_instobj, ptr %call7.i.i.i86, i32 0, i32 1
  %111 = ptrtoint ptr %mn.i97 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %r.i95, ptr %mn.i97, align 8
  br label %if.end35

if.end27.thread:                                  ; preds = %do.end.i93, %do.body.i91.if.end27.thread_crit_edge, %if.else.if.end27.thread_crit_edge
  %112 = ptrtoint ptr %pmemory to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call7.i.i.i86, ptr %pmemory, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end105.i.if.end27_crit_edge, %land.rhs.i.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i) #10
  %113 = ptrtoint ptr %pmemory to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call9.i.i.i, ptr %pmemory, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end27.thread105, %if.end27.thread111
  %storemerge = phi ptr [ %call9.i.i.i, %if.end27.thread111 ], [ %call7.i.i.i86, %if.end27.thread105 ]
  %114 = ptrtoint ptr %pmemory to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %storemerge, ptr %pmemory, align 4
  %imem36 = getelementptr inbounds %struct.gk20a_instobj, ptr %storemerge, i32 0, i32 2
  %115 = ptrtoint ptr %imem36 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %base, ptr %imem36, align 4
  %116 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %117)
  %cmp40 = icmp ugt i32 %117, 3
  br i1 %cmp40, label %do.end44, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %device45 = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 1
  %118 = ptrtoint ptr %device45 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %device45, align 4
  %dev46 = getelementptr inbounds %struct.nvkm_device, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev46, align 8
  %name47 = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 4
  %mn = getelementptr inbounds %struct.gk20a_instobj, ptr %storemerge, i32 0, i32 1
  %122 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mn, align 8
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %offset, align 4
  %conv = zext i32 %125 to i64
  %shl = shl nuw nsw i64 %conv, 12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %121, ptr noundef nonnull @.str.20, ptr noundef %name47, i32 noundef %8, i32 noundef %9, i64 noundef %shl) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end35.cleanup_crit_edge, %if.end27, %if.end27.thread, %if.end27.thread116
  %retval.0 = phi i32 [ %ret.2.i, %if.end27 ], [ 0, %do.end44 ], [ 0, %if.end35.cleanup_crit_edge ], [ -12, %if.end27.thread ], [ -12, %if.end27.thread116 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_ctor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gk20a_instobj_dtor_iommu(ptr noundef returned %memory) #0 align 64 {
entry:
  %r = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %imem4 = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %imem4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem4, align 4
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #10
  %mn = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 1
  %6 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mn, align 4
  %8 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %r, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !94

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %vaddr = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 3
  %9 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vaddr, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gk20a_instobj_iommu_recycle_vaddr(ptr noundef %memory)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %iommu_bit = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %iommu_bit to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %iommu_bit, align 4
  %conv = zext i16 %12 to i32
  %iommu_pgshift = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %iommu_pgshift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iommu_pgshift, align 4
  %sub = sub i32 %conv, %14
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %15 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %r, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %and = and i32 %18, %neg
  store i32 %and, ptr %offset, align 4
  %19 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mn, align 4
  %length44 = getelementptr inbounds %struct.nvkm_mm_node, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %length44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp45.not = icmp eq i32 %22, 0
  br i1 %cmp45.not, label %if.end14.for.end_crit_edge, label %for.body.lr.ph

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %domain = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %r, align 4
  %offset19 = getelementptr inbounds %struct.nvkm_mm_node, ptr %24, i32 0, i32 5
  %dma_addrs = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %memory, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domain, align 4
  %27 = ptrtoint ptr %offset19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset19, align 4
  %add = add i32 %28, %i.046
  %29 = ptrtoint ptr %iommu_pgshift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iommu_pgshift, align 4
  %shl21 = shl i32 %add, %30
  %call = tail call i32 @iommu_unmap(ptr noundef %26, i32 noundef %shl21, i32 noundef 4096) #10
  %31 = ptrtoint ptr %dma_addrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_addrs, align 4
  %arrayidx = getelementptr i32, ptr %32, i32 %i.046
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %34, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %arrayidx22 = getelementptr %struct.gk20a_instobj_iommu, ptr %memory, i32 0, i32 4, i32 %i.046
  %35 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx22, align 4
  tail call void @__free_pages(ptr noundef %36, i32 noundef 0) #10
  %inc = add nuw i32 %i.046, 1
  %37 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mn, align 4
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  %cmp = icmp ult i32 %inc, %40
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end14.for.end_crit_edge
  %mm_mutex = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %mm_mutex to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mm_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %42, i32 noundef 0) #10
  %mm = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mm, align 4
  call void @nvkm_mm_free(ptr noundef %44, ptr noundef nonnull %r) #10
  %45 = ptrtoint ptr %mm_mutex to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mm_mutex, align 4
  call void @mutex_unlock(ptr noundef %46) #10
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #10
  ret ptr %memory
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gk20a_instobj_target(ptr nocapture noundef readnone %memory) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @gk20a_instobj_page(ptr nocapture noundef readnone %memory) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @gk20a_instobj_addr(ptr nocapture noundef readonly %memory) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mn = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mn, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %conv = zext i32 %3 to i64
  %shl = shl nuw nsw i64 %conv, 12
  ret i64 %shl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @gk20a_instobj_size(ptr nocapture noundef readonly %memory) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mn = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mn, align 4
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %conv = zext i32 %3 to i64
  %shl = shl nuw nsw i64 %conv, 12
  ret i64 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gk20a_instobj_acquire_iommu(ptr noundef %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %imem4 = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %imem4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem4, align 4
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %ltc6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %ltc6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ltc6, align 4
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 4
  %size7 = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %size7, align 4
  %call = tail call i64 %9(ptr noundef %memory) #10
  tail call void @nvkm_ltc_flush(ptr noundef %5) #10
  %lock = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %vaddr = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 3
  %10 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %use_cpt = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %memory, i32 0, i32 2
  %12 = ptrtoint ptr %use_cpt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %use_cpt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.then10, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10:                                        ; preds = %if.then
  %vaddr_node = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %memory, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vaddr_node) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then10.list_del.exit_crit_edge

if.then10.list_del.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %memory, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %vaddr_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then10.list_del.exit_crit_edge
  %20 = ptrtoint ptr %vaddr_node to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %vaddr_node, align 4
  %prev.i = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %memory, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %out

if.end11:                                         ; preds = %entry
  %vaddr_lru.i = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 4
  %vaddr_use.i = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 2
  %vaddr_max.i = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %vaddr_use.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vaddr_use.i, align 4
  %conv7.i = zext i32 %23 to i64
  %add8.i = add i64 %call, %conv7.i
  %24 = ptrtoint ptr %vaddr_max.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vaddr_max.i, align 4
  %conv19.i = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i, i64 %conv19.i)
  %cmp10.i = icmp ugt i64 %add8.i, %conv19.i
  br i1 %cmp10.i, label %if.end11.while.body.i_crit_edge, label %if.end11.gk20a_instmem_vaddr_gc.exit_crit_edge

if.end11.gk20a_instmem_vaddr_gc.exit_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %gk20a_instmem_vaddr_gc.exit

if.end11.while.body.i_crit_edge:                  ; preds = %if.end11
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end11.while.body.i_crit_edge
  %26 = ptrtoint ptr %vaddr_lru.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %vaddr_lru.i, align 4
  %cmp.i.not.i = icmp eq ptr %27, %vaddr_lru.i
  br i1 %cmp.i.not.i, label %while.body.i.gk20a_instmem_vaddr_gc.exit_crit_edge, label %if.end.i

while.body.i.gk20a_instmem_vaddr_gc.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gk20a_instmem_vaddr_gc.exit

if.end.i:                                         ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %27, i32 -28
  tail call fastcc void @gk20a_instobj_iommu_recycle_vaddr(ptr noundef %add.ptr.i) #10
  %28 = ptrtoint ptr %vaddr_use.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vaddr_use.i, align 4
  %conv.i = zext i32 %29 to i64
  %add.i = add i64 %call, %conv.i
  %30 = ptrtoint ptr %vaddr_max.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vaddr_max.i, align 4
  %conv1.i = zext i32 %31 to i64
  %cmp.i = icmp ugt i64 %add.i, %conv1.i
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.gk20a_instmem_vaddr_gc.exit_crit_edge

if.end.i.gk20a_instmem_vaddr_gc.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gk20a_instmem_vaddr_gc.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

gk20a_instmem_vaddr_gc.exit:                      ; preds = %if.end.i.gk20a_instmem_vaddr_gc.exit_crit_edge, %while.body.i.gk20a_instmem_vaddr_gc.exit_crit_edge, %if.end11.gk20a_instmem_vaddr_gc.exit_crit_edge
  %pages = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %memory, i32 0, i32 4
  %shr = lshr i64 %call, 12
  %conv = trunc i64 %shr to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %32 = load i32, ptr @pgprot_kernel, align 4
  %or = and i32 %32, -573
  %or12 = or i32 %or, 516
  %call13 = tail call ptr @vmap(ptr noundef %pages, i32 noundef %conv, i32 noundef 4, i32 noundef %or12) #10
  %33 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call13, ptr %vaddr, align 4
  %tobool18.not = icmp eq ptr %call13, null
  br i1 %tobool18.not, label %do.body, label %if.end30

do.body:                                          ; preds = %gk20a_instmem_vaddr_gc.exit
  %debug = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not = icmp eq i32 %35, 0
  br i1 %cmp.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.33, ptr noundef %name) #14
  br label %out

if.end30:                                         ; preds = %gk20a_instmem_vaddr_gc.exit
  %40 = ptrtoint ptr %vaddr_use.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vaddr_use.i, align 4
  %42 = trunc i64 %call to i32
  %conv32 = add i32 %41, %42
  store i32 %conv32, ptr %vaddr_use.i, align 4
  %debug37 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %debug37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debug37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp38 = icmp ugt i32 %44, 3
  br i1 %cmp38, label %do.end43, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end43:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device, align 4
  %dev45 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev45, align 8
  %name46 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %vaddr_max.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vaddr_max.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.31, ptr noundef %name46, i32 noundef %conv32, i32 noundef %50) #14
  br label %out

out:                                              ; preds = %do.end43, %if.end30.out_crit_edge, %do.end, %do.body.out_crit_edge, %list_del.exit, %if.then.out_crit_edge
  %use_cpt52 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %memory, i32 0, i32 2
  %51 = ptrtoint ptr %use_cpt52 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %use_cpt52, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %use_cpt52, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %53 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vaddr, align 4
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk20a_instobj_release_iommu(ptr noundef %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %imem4 = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %imem4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem4, align 4
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %ltc6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %ltc6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ltc6, align 4
  %lock = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %use_cpt = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %memory, i32 0, i32 2
  %6 = ptrtoint ptr %use_cpt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_cpt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.end, label %if.end28.critedge, !prof !94

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 250, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end28.critedge:                                ; preds = %entry
  %dec = add i32 %7, -1
  %8 = ptrtoint ptr %use_cpt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec, ptr %use_cpt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp30 = icmp eq i32 %dec, 0
  br i1 %cmp30, label %if.then31, label %if.end28.critedge.out_crit_edge

if.end28.critedge.out_crit_edge:                  ; preds = %if.end28.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then31:                                        ; preds = %if.end28.critedge
  %vaddr_node = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %memory, i32 0, i32 1
  %vaddr_lru = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vaddr_node, ptr noundef %10, ptr noundef %vaddr_lru) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then31.out_crit_edge

if.then31.out_crit_edge:                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vaddr_node, ptr %prev.i, align 4
  %12 = ptrtoint ptr %vaddr_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vaddr_lru, ptr %vaddr_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %memory, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %vaddr_node, ptr %10, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.then31.out_crit_edge, %if.end28.critedge.out_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void @nvkm_ltc_invalidate(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk20a_instobj_map(ptr noundef %memory, i64 noundef %offset, ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc) #0 align 64 {
entry:
  %map = alloca %struct.nvkm_vmm_map, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %map) #10
  %0 = call ptr @memset(ptr %map, i32 0, i32 72)
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %memory, ptr %map, align 8
  %offset3 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %offset3 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %offset, ptr %offset3, align 8
  %mem = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 2
  %mn = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 1
  %3 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mn, align 4
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mem, align 8
  %call = call i32 @nvkm_vmm_map(ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc, ptr noundef nonnull %map) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %map) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gk20a_instobj_iommu_recycle_vaddr(ptr noundef %obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %imem1 = getelementptr inbounds %struct.gk20a_instobj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %imem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem1, align 4
  %use_cpt = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %use_cpt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_cpt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !93

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 147, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %vaddr_node = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %obj, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vaddr_node) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %obj, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %vaddr_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vaddr_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %vaddr_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %vaddr_node, align 4
  %prev.i = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %obj, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %vaddr = getelementptr inbounds %struct.gk20a_instobj, ptr %obj, i32 0, i32 3
  %12 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vaddr, align 4
  tail call void @vunmap(ptr noundef %13) #10
  %14 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %vaddr, align 4
  %15 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %obj, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %size, align 4
  %call = tail call i64 %18(ptr noundef %obj) #10
  %vaddr_use = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %vaddr_use to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vaddr_use, align 4
  %21 = trunc i64 %call to i32
  %conv27 = sub i32 %20, %21
  store i32 %conv27, ptr %vaddr_use, align 4
  %debug = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp = icmp ugt i32 %23, 3
  br i1 %cmp, label %do.end34, label %list_del.exit.if.end36_crit_edge

list_del.exit.if.end36_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end34:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 4
  %vaddr_max = getelementptr inbounds %struct.gk20a_instmem, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %vaddr_max to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vaddr_max, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.31, ptr noundef %name, i32 noundef %conv27, i32 noundef %29) #14
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %list_del.exit.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ltc_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ltc_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gk20a_instobj_rd32(ptr nocapture noundef readonly %memory, i64 noundef %offset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vaddr = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 3
  %0 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr, align 4
  %div1 = lshr i64 %offset, 2
  %idxprom = trunc i64 %div1 to i32
  %arrayidx = getelementptr i32, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gk20a_instobj_wr32(ptr nocapture noundef readonly %memory, i64 noundef %offset, i32 noundef %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vaddr = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 3
  %0 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr, align 4
  %div1 = lshr i64 %offset, 2
  %idxprom = trunc i64 %div1 to i32
  %arrayidx = getelementptr i32, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %data, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gk20a_instobj_dtor_dma(ptr noundef readonly returned %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vaddr = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 3
  %0 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !94

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %imem4 = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 2
  %2 = ptrtoint ptr %imem4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %imem4, align 4
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 8
  %mn = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 1
  %8 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mn, align 4
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  %shl = shl i32 %11, 12
  %handle = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %memory, i32 0, i32 1
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle, align 4
  %attrs = getelementptr inbounds %struct.gk20a_instmem, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %attrs, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %shl, ptr noundef nonnull %1, i32 noundef %13, i32 noundef %15) #10
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  ret ptr %memory
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gk20a_instobj_acquire_dma(ptr nocapture noundef readonly %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %imem1 = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %imem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem1, align 4
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %ltc2 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %ltc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ltc2, align 4
  tail call void @nvkm_ltc_flush(ptr noundef %5) #10
  %vaddr = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 3
  %6 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vaddr, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk20a_instobj_release_dma(ptr nocapture noundef readonly %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %imem1 = getelementptr inbounds %struct.gk20a_instobj, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %imem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem1, align 4
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %ltc2 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %ltc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ltc2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @arm_heavy_mb() #10
  tail call void @nvkm_ltc_invalidate(ptr noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @gk20a_instmem_new.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 580, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 595, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @gk20a_instmem_new._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @gk20a_instmem_new._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 600, i32 3}
!13 = !{ptr @gk20a_instmem_new._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @gk20a_instmem_new._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @gk20a_instmem, !16, !"gk20a_instmem", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 564, i32 1}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 554, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gk20a_instmem_dtor._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @gk20a_instmem_dtor._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 557, i32 3}
!25 = !{ptr @gk20a_instmem_dtor._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @gk20a_instmem_dtor._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 522, i32 2}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @gk20a_instobj_new._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @gk20a_instobj_new._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 541, i32 2}
!36 = !{ptr @gk20a_instobj_new._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @gk20a_instobj_new._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 456, i32 4}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @gk20a_instobj_ctor_iommu._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @gk20a_instobj_ctor_iommu._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 469, i32 3}
!46 = !{ptr @gk20a_instobj_ctor_iommu._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @gk20a_instobj_ctor_iommu._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 480, i32 4}
!50 = !{ptr @gk20a_instobj_ctor_iommu._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @gk20a_instobj_ctor_iommu._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @gk20a_instobj_func_iommu, !53, !"gk20a_instobj_func_iommu", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 365, i32 1}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 152, i32 2}
!56 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @gk20a_instobj_iommu_recycle_vaddr._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @gk20a_instobj_iommu_recycle_vaddr._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 212, i32 3}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @gk20a_instobj_acquire_iommu._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @gk20a_instobj_acquire_iommu._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @gk20a_instobj_acquire_iommu._entry.35, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 218, i32 2}
!66 = !{ptr @gk20a_instobj_acquire_iommu._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @gk20a_instobj_ptrs, !68, !"gk20a_instobj_ptrs", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 377, i32 1}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 401, i32 3}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @gk20a_instobj_ctor_dma._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @gk20a_instobj_ctor_dma._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 407, i32 3}
!78 = !{ptr @gk20a_instobj_ctor_dma._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @gk20a_instobj_ctor_dma._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @gk20a_instobj_func_dma, !81, !"gk20a_instobj_func_dma", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c", i32 353, i32 1}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{i64 2156287484}
!96 = !{i64 2156279978}
