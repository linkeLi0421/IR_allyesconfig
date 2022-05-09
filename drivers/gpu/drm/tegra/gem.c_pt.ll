; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_bo_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.91 = type { i32, ptr }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.94, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.94 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.tegra_bo = type { %struct.drm_gem_object, %struct.host1x_bo, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.tegra_bo_tiling }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.host1x_bo = type { ptr, %struct.list_head, %struct.spinlock }
%struct.tegra_bo_tiling = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.82, i8 }
%union.anon.82 = type { ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.host1x_bo_mapping = type { %struct.kref, ptr, i32, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }

@__UNIQUE_ID_import_ns340 = internal constant [28 x i8] c"tegra_drm.import_ns=DMA_BUF\00", section ".modinfo", align 1
@tegra_bo_free_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 503, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mapping %p stale for device %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_bo_free_object\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/tegra/gem.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_bo_free_object._entry_ptr = internal global ptr @tegra_bo_free_object._entry, section ".printk_index", align 4
@tegra_bo_vm_ops = dso_local constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr @tegra_bo_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra_drm\00", [22 x i8] zeroinitializer }, align 32
@__const.tegra_gem_prime_export.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str.5, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@tegra_gem_prime_dmabuf_ops = internal constant { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 0, ptr null, ptr null, ptr null, ptr null, ptr @tegra_gem_prime_map_dma_buf, ptr @tegra_gem_prime_unmap_dma_buf, ptr @tegra_gem_prime_release, ptr @tegra_gem_prime_begin_cpu_access, ptr @tegra_gem_prime_end_cpu_access, ptr @tegra_gem_prime_mmap, ptr @tegra_gem_prime_vmap, ptr @tegra_gem_prime_vunmap }, [44 x i8] zeroinitializer }, align 32
@tegra_gem_object_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @tegra_bo_free_object, ptr null, ptr null, ptr null, ptr @tegra_gem_prime_export, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_bo_vm_ops }, [48 x i8] zeroinitializer }, align 32
@tegra_bo_ops = internal constant { %struct.host1x_bo_ops, [40 x i8] } { %struct.host1x_bo_ops { ptr @tegra_bo_get, ptr @tegra_bo_put, ptr @tegra_bo_pin, ptr @tegra_bo_unpin, ptr @tegra_bo_mmap, ptr @tegra_bo_munmap }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@host1x_bo_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bo->lock\00", [22 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@tegra_bo_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 383, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to allocate buffer of size %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_bo_alloc\00", [17 x i8] zeroinitializer }, align 32
@tegra_bo_alloc._entry_ptr = internal global ptr @tegra_bo_alloc._entry, section ".printk_index", align 4
@tegra_bo_iommu_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"out of I/O virtual memory: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_bo_iommu_map\00", [45 x i8] zeroinitializer }, align 32
@tegra_bo_iommu_map._entry_ptr = internal global ptr @tegra_bo_iommu_map._entry, section ".printk_index", align 4
@tegra_bo_iommu_map._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to map buffer\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_bo_iommu_map._entry_ptr.13 = internal global ptr @tegra_bo_iommu_map._entry.11, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 502, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"tegra_bo_vm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 556, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 730, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"tegra_gem_prime_dmabuf_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 716, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"tegra_gem_object_funcs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 280, i32 42 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"tegra_bo_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 213, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [26 x i8] c"../include/linux/host1x.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 154, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 381, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 239, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [31 x i8] c"../drivers/gpu/drm/tegra/gem.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 248, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_import_ns340, ptr @tegra_bo_alloc._entry, ptr @tegra_bo_alloc._entry_ptr, ptr @tegra_bo_free_object._entry, ptr @tegra_bo_free_object._entry_ptr, ptr @tegra_bo_iommu_map._entry, ptr @tegra_bo_iommu_map._entry.11, ptr @tegra_bo_iommu_map._entry_ptr, ptr @tegra_bo_iommu_map._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tegra_bo_vm_ops, ptr @.str.5, ptr @tegra_gem_prime_dmabuf_ops, ptr @tegra_gem_object_funcs, ptr @tegra_bo_ops, ptr @host1x_bo_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bo_free_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bo_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gem_prime_dmabuf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bo_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_bo_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bo_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bo_iommu_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bo_iommu_map._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_bo_create(ptr noundef %drm, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tegra_bo_alloc_object(ptr noundef %drm, i32 noundef %size)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %domain.i = getelementptr inbounds %struct.tegra_drm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call ptr @drm_gem_get_pages(ptr noundef %call) #8
  %pages.i.i = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %pages.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call.i.i to i32
  br label %tegra_bo_get_pages.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %size.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 8
  %shr.i.i = lshr i32 %7, 12
  %num_pages.i.i = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr.i.i, ptr %num_pages.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 8
  %call9.i.i = tail call ptr @drm_prime_pages_to_sg(ptr noundef %10, ptr noundef %call.i.i, i32 noundef %shr.i.i) #8
  %sgt.i.i = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %sgt.i.i, align 4
  %cmp.i42.i.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.i.i, label %if.then12.i.i, label %if.end15.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call9.i.i to i32
  br label %put_pages.i.i

if.end15.i.i:                                     ; preds = %if.end.i.i
  %dev16.i.i = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %13 = ptrtoint ptr %dev16.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev16.i.i, align 4
  %call18.i.i = tail call i32 @dma_map_sgtable(ptr noundef %14, ptr noundef %call9.i.i, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool.not.i.i, label %if.end15.i.i.if.end.i_crit_edge, label %free_sgt.i.i

if.end15.i.i.if.end.i_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

free_sgt.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sgt.i.i, align 4
  tail call void @sg_free_table(ptr noundef %16) #8
  %17 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sgt.i.i, align 4
  tail call void @kfree(ptr noundef %18) #8
  br label %put_pages.i.i

put_pages.i.i:                                    ; preds = %free_sgt.i.i, %if.then12.i.i
  %err.0.i.i = phi i32 [ %12, %if.then12.i.i ], [ %call18.i.i, %free_sgt.i.i ]
  %19 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i.i, align 8
  tail call void @drm_gem_put_pages(ptr noundef %call, ptr noundef %20, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %tegra_bo_get_pages.exit.i

tegra_bo_get_pages.exit.i:                        ; preds = %put_pages.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %5, %if.then.i.i ], [ %err.0.i.i, %put_pages.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i24 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i24, label %tegra_bo_get_pages.exit.i.release_crit_edge, label %tegra_bo_get_pages.exit.i.if.end.i_crit_edge

tegra_bo_get_pages.exit.i.if.end.i_crit_edge:     ; preds = %tegra_bo_get_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

tegra_bo_get_pages.exit.i.release_crit_edge:      ; preds = %tegra_bo_get_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

if.end.i:                                         ; preds = %tegra_bo_get_pages.exit.i.if.end.i_crit_edge, %if.end15.i.i.if.end.i_crit_edge
  %call2.i = tail call fastcc i32 @tegra_bo_iommu_map(ptr noundef %1, ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @tegra_bo_free(ptr noundef %drm, ptr noundef %call) #8
  br label %release

if.else.i:                                        ; preds = %if.end
  %size6.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %size6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size6.i, align 8
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %iova.i = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 4
  %call.i31.i = tail call ptr @dma_alloc_attrs(ptr noundef %24, i32 noundef %22, ptr noundef %iova.i, i32 noundef 11456, i32 noundef 260) #8
  %vaddr.i = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 5
  %25 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i31.i, ptr %vaddr.i, align 4
  %tobool9.not.i = icmp eq ptr %call.i31.i, null
  br i1 %tobool9.not.i, label %do.end.i, label %if.else.i.if.end4_crit_edge

if.else.i.if.end4_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.7, i32 noundef %22) #11
  br label %release

if.end4:                                          ; preds = %if.else.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.if.end6_crit_edge, label %if.then5

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %tiling = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 10
  %28 = ptrtoint ptr %tiling to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %tiling, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4.if.end6_crit_edge
  %and7 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %flags10 = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 2
  %29 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags10, align 8
  %or = or i32 %30, 1
  store i32 %or, ptr %flags10, align 8
  br label %cleanup

release:                                          ; preds = %do.end.i, %if.then4.i, %tegra_bo_get_pages.exit.i.release_crit_edge
  %retval.1.i.ph = phi i32 [ -12, %do.end.i ], [ %retval.0.i.i, %tegra_bo_get_pages.exit.i.release_crit_edge ], [ %call2.i, %if.then4.i ]
  tail call void @drm_gem_object_release(ptr noundef %call) #8
  tail call void @kfree(ptr noundef %call) #8
  %31 = inttoptr i32 %retval.1.i.ph to ptr
  br label %cleanup

cleanup:                                          ; preds = %release, %if.then9, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %31, %release ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.then9 ], [ %call, %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tegra_bo_alloc_object(ptr noundef %drm, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 456) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 11
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tegra_gem_object_funcs, ptr %funcs, align 4
  %base = getelementptr inbounds %struct.tegra_bo, ptr %call7.i.i, i32 0, i32 1
  %mappings.i = getelementptr inbounds %struct.tegra_bo, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %mappings.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mappings.i, ptr %mappings.i, align 4
  %prev.i.i = getelementptr inbounds %struct.tegra_bo, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mappings.i, ptr %prev.i.i, align 8
  %lock.i = getelementptr inbounds %struct.tegra_bo, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @host1x_bo_init.__key, i16 noundef signext 3) #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tegra_bo_ops, ptr %base, align 8
  %sub = add i32 %size, -1
  %or = or i32 %sub, 4095
  %add = add i32 %or, 1
  %call3 = tail call i32 @drm_gem_object_init(ptr noundef %drm, ptr noundef nonnull %call7.i.i, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.free_crit_edge, label %if.end5

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end5:                                          ; preds = %if.end
  %call7 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %release, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

release:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_gem_object_release(ptr noundef nonnull %call7.i.i) #8
  br label %free

free:                                             ; preds = %release, %if.end.free_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.free_crit_edge ], [ %call7, %release ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %5 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %free ], [ %call7.i.i, %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_bo_create_with_handle(ptr noundef %file, ptr noundef %drm, i32 noundef %size, i32 noundef %flags, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tegra_bo_create(ptr noundef %drm, i32 noundef %size, i32 noundef %flags)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @drm_gem_handle_create(ptr noundef %file, ptr noundef %call, ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tegra_bo_free_object(ptr noundef %call)
  %0 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.then.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #8, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !48

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ null, %if.end6.cleanup_crit_edge ], [ %call, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call, %if.then10.i.i.i.i.i.i ], [ %call, %if.then.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_bo_free_object(ptr noundef %gem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mappings = getelementptr inbounds %struct.tegra_bo, ptr %gem, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mappings, align 4
  %cmp.not52 = icmp eq ptr %5, %mappings
  br i1 %cmp.not52, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in53 = phi ptr [ %.pn55, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %mapping.054 = getelementptr i8, ptr %.pn.in53, i32 -12
  %6 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn55 = load ptr, ptr %.pn.in53, align 4
  %cache = getelementptr i8, ptr %.pn.in53, i32 32
  %7 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cache, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @host1x_bo_unpin(ptr noundef %mapping.054) #8
  br label %for.inc

do.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev10, align 4
  %dev11 = getelementptr i8, ptr %.pn.in53, i32 20
  %13 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev11, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef %mapping.054, ptr noundef %retval.0.i) #11
  br label %for.inc

for.inc:                                          ; preds = %dev_name.exit, %if.then
  %cmp.not = icmp eq ptr %.pn55, %mappings
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %domain = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %domain, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %for.end.if.end21_crit_edge, label %if.then19

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %for.end
  %mm.i = getelementptr inbounds %struct.tegra_bo, ptr %gem, i32 0, i32 6
  %21 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mm.i, align 8
  %tobool.not.i48 = icmp eq ptr %22, null
  br i1 %tobool.not.i48, label %if.then19.if.end21_crit_edge, label %if.end.i49

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end.i49:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %mm_lock.i = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mm_lock.i, i32 noundef 0) #8
  %23 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %domain, align 4
  %iova.i = getelementptr inbounds %struct.tegra_bo, ptr %gem, i32 0, i32 4
  %25 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iova.i, align 8
  %size.i = getelementptr inbounds %struct.tegra_bo, ptr %gem, i32 0, i32 9
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i, align 4
  %call.i = tail call i32 @iommu_unmap(ptr noundef %24, i32 noundef %26, i32 noundef %28) #8
  %29 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mm.i, align 8
  tail call void @drm_mm_remove_node(ptr noundef %30) #8
  tail call void @mutex_unlock(ptr noundef %mm_lock.i) #8
  %31 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mm.i, align 8
  tail call void @kfree(ptr noundef %32) #8
  br label %if.end21

if.end21:                                         ; preds = %if.end.i49, %if.then19.if.end21_crit_edge, %for.end.if.end21_crit_edge
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 8
  %33 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %import_attach, align 4
  %tobool22.not = icmp eq ptr %34, null
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %sgt = getelementptr inbounds %struct.tegra_bo, ptr %gem, i32 0, i32 3
  %35 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sgt, align 4
  tail call void @dma_buf_unmap_attachment(ptr noundef nonnull %34, ptr noundef %36, i32 noundef 1) #8
  tail call void @drm_prime_gem_destroy(ptr noundef %gem, ptr noundef null) #8
  br label %if.end27

if.else25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  tail call fastcc void @tegra_bo_free(ptr noundef %38, ptr noundef %gem)
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then23
  tail call void @drm_gem_object_release(ptr noundef %gem) #8
  tail call void @kfree(ptr noundef %gem) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_bo_free(ptr nocapture noundef readonly %drm, ptr noundef %bo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.tegra_bo, ptr %bo, i32 0, i32 8
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %sgt = getelementptr inbounds %struct.tegra_bo, ptr %bo, i32 0, i32 3
  %4 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgt, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %7, i32 noundef %9, i32 noundef 2, i32 noundef 0) #8
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 8
  tail call void @drm_gem_put_pages(ptr noundef %bo, ptr noundef %11, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %12 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sgt, align 4
  tail call void @sg_free_table(ptr noundef %13) #8
  %14 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgt, align 4
  tail call void @kfree(ptr noundef %15) #8
  br label %if.end9

if.else:                                          ; preds = %entry
  %vaddr = getelementptr inbounds %struct.tegra_bo, ptr %bo, i32 0, i32 5
  %16 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.else.if.end9_crit_edge, label %if.then5

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %18 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev6, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 8
  %iova = getelementptr inbounds %struct.tegra_bo, ptr %bo, i32 0, i32 4
  %22 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iova, align 8
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %17, i32 noundef %23, i32 noundef 4) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.else.if.end9_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_bo_dumb_create(ptr noundef %file, ptr noundef %drm, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpp, align 8
  %mul = mul i32 %3, %1
  %sub = add i32 %mul, 7
  %div21 = lshr i32 %sub, 3
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %sub1 = add nsw i32 %div21, -1
  %pitch_align = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %pitch_align to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pitch_align, align 4
  %sub2 = add i32 %7, -1
  %or = or i32 %sub1, %sub2
  %add3 = add i32 %or, 1
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %8 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add3, ptr %pitch, align 4
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %args, align 8
  %mul5 = mul i32 %add3, %10
  %conv = zext i32 %mul5 to i64
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %size, align 8
  %handle = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %call = tail call ptr @tegra_bo_create_with_handle(ptr noundef %file, ptr noundef %drm, i32 noundef %mul5, i32 noundef 0, ptr noundef %handle)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %12, i32 0
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bo_fault(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %pages = getelementptr inbounds %struct.tegra_bo, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %address = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 3
  %6 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %sub = sub i32 %7, %9
  %shr = lshr i32 %sub, 12
  %arrayidx = getelementptr ptr, ptr %5, i32 %shr
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @vm_insert_page(ptr noundef %1, i32 noundef %7, ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, -16
  %or.cond.i = or i1 %cmp1.i, %cmp2.not.i
  %spec.select.i = select i1 %or.cond.i, i32 256, i32 2
  %retval.0.i = select i1 %cmp.i, i32 1, i32 %spec.select.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.end ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__tegra_gem_mmap(ptr nocapture noundef readonly %gem, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.tegra_bo, ptr %gem, i32 0, i32 8
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vm_pgoff1 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %2 = ptrtoint ptr %vm_pgoff1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_pgoff1, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %and = and i32 %5, -1025
  store i32 %and, ptr %vm_flags, align 4
  store i32 0, ptr %vm_pgoff1, align 4
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %vaddr = getelementptr inbounds %struct.tegra_bo, ptr %gem, i32 0, i32 5
  %10 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr, align 4
  %iova = getelementptr inbounds %struct.tegra_bo, ptr %gem, i32 0, i32 4
  %12 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iova, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 5
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 8
  %call.i = tail call i32 @dma_mmap_attrs(ptr noundef %9, ptr noundef %vma, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_gem_vm_close(ptr noundef %vma) #8
  br label %cleanup16

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %vm_pgoff1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %3, ptr %vm_pgoff1, align 4
  br label %cleanup16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vm_flags8 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %17 = ptrtoint ptr %vm_flags8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_flags8, align 4
  %call9 = tail call i32 @vm_get_page_prot(i32 noundef %18) #8
  %19 = ptrtoint ptr %vm_flags8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_flags8, align 4
  %or = and i32 %20, -268436481
  %and12 = or i32 %or, 268435456
  store i32 %and12, ptr %vm_flags8, align 4
  %and13 = and i32 %call9, -61
  %or14 = or i32 %and13, 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %21 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or14, ptr %vm_page_prot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %if.else, %if.end, %if.then5
  %retval.1 = phi i32 [ %call.i, %if.then5 ], [ 0, %if.end ], [ 0, %if.else ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_mmap(ptr noundef %file, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_gem_mmap(ptr noundef %file, ptr noundef %vma) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %pages.i = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %vm_pgoff1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff1.i, align 4
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %6 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %7, -1025
  store i32 %and.i, ptr %vm_flags.i, align 4
  store i32 0, ptr %vm_pgoff1.i, align 4
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3.i, align 4
  %vaddr.i = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vaddr.i, align 4
  %iova.i = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iova.i, align 8
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 8
  %call.i.i = tail call i32 @dma_mmap_attrs(ptr noundef %11, ptr noundef %vma, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then5.i, label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_gem_vm_close(ptr noundef %vma) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %vm_pgoff1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %vm_pgoff1.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %vm_flags8.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %19 = ptrtoint ptr %vm_flags8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_flags8.i, align 4
  %call9.i = tail call i32 @vm_get_page_prot(i32 noundef %20) #8
  %21 = ptrtoint ptr %vm_flags8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_flags8.i, align 4
  %or.i = and i32 %22, -268436481
  %and12.i = or i32 %or.i, 268435456
  store i32 %and12.i, ptr %vm_flags8.i, align 4
  %and13.i = and i32 %call9.i, -61
  %or14.i = or i32 %and13.i, 4
  %vm_page_prot.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %23 = ptrtoint ptr %vm_page_prot.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or14.i, ptr %vm_page_prot.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.then5.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then5.i ], [ 0, %if.end.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_gem_prime_export(ptr noundef %gem, i32 noundef %flags) #0 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #8
  %0 = call ptr @memcpy(ptr %exp_info, ptr @__const.tegra_gem_prime_export.exp_info, i32 24)
  %1 = ptrtoint ptr %exp_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.5, ptr %exp_info, align 4
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %driver = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %fops = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %owner1 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 1
  %10 = ptrtoint ptr %owner1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %owner1, align 4
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tegra_gem_prime_dmabuf_ops, ptr %ops, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 5
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 8
  %size2 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 3
  %14 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size2, align 4
  %flags3 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 4
  %15 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %flags, ptr %flags3, align 4
  %priv = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 6
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %gem, ptr %priv, align 4
  %call = call ptr @drm_gem_dmabuf_export(ptr noundef %3, ptr noundef nonnull %exp_info) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_dmabuf_export(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_gem_prime_import(ptr noundef %drm, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp = icmp eq ptr %1, @tegra_gem_prime_dmabuf_ops
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %cmp1 = icmp eq ptr %5, %drm
  br i1 %cmp1, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then2.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !51

if.then2.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then2
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup9_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !48

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup9_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then2.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then2.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %.sink.i.i.i.i.i) #8
  br label %cleanup9

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf, align 4
  %call.i = tail call fastcc ptr @tegra_bo_alloc_object(ptr noundef %drm, i32 noundef %11) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end3.cleanup9_crit_edge, label %if.end.i

if.end3.cleanup9_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.end.i:                                         ; preds = %if.end3
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %call2.i = tail call ptr @dma_buf_attach(ptr noundef %buf, ptr noundef %13) #8
  %cmp.i53.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call2.i to i32
  br label %free.i

if.end6.i:                                        ; preds = %if.end.i
  %file.i.i = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 1
  %15 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %file.i.i, align 4
  %f_count.i.i.i = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %f_count.i.i.i, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i.i.i, ptr %f_count.i.i.i, i32 1, ptr elementtype(i32) %f_count.i.i.i) #8, !srcloc !52
  %call7.i = tail call ptr @dma_buf_map_attachment(ptr noundef %call2.i, i32 noundef 1) #8
  %sgt.i = getelementptr inbounds %struct.tegra_bo, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %sgt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %sgt.i, align 4
  %cmp.i54.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.i, label %if.then10.i, label %if.end13.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call7.i to i32
  br label %detach.i

if.end13.i:                                       ; preds = %if.end6.i
  %domain.i = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end13.i.if.end18.i_crit_edge, label %if.then14.i

if.end13.i.if.end18.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end13.i
  %call15.i = tail call fastcc i32 @tegra_bo_iommu_map(ptr noundef %9, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %if.then14.i.detach.i_crit_edge, label %if.then14.i.if.end18.i_crit_edge

if.then14.i.if.end18.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then14.i.detach.i_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %detach.i

if.end18.i:                                       ; preds = %if.then14.i.if.end18.i_crit_edge, %if.end13.i.if.end18.i_crit_edge
  %import_attach.i = getelementptr inbounds %struct.drm_gem_object, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %import_attach.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call2.i, ptr %import_attach.i, align 4
  br label %cleanup9

detach.i:                                         ; preds = %if.then14.i.detach.i_crit_edge, %if.then10.i
  %err.0.i = phi i32 [ %19, %if.then10.i ], [ %call15.i, %if.then14.i.detach.i_crit_edge ]
  %23 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sgt.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  %cmp.i55.i = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i55.i
  br i1 %spec.select.i.i, label %detach.i.if.end23.i_crit_edge, label %if.then21.i

detach.i.if.end23.i_crit_edge:                    ; preds = %detach.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %detach.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_buf_unmap_attachment(ptr noundef %call2.i, ptr noundef nonnull %24, i32 noundef 1) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %detach.i.if.end23.i_crit_edge
  tail call void @dma_buf_detach(ptr noundef %buf, ptr noundef %call2.i) #8
  tail call void @dma_buf_put(ptr noundef %buf) #8
  br label %free.i

free.i:                                           ; preds = %if.end23.i, %if.then4.i
  %err.1.i = phi i32 [ %14, %if.then4.i ], [ %err.0.i, %if.end23.i ]
  tail call void @drm_gem_object_release(ptr noundef %call.i) #8
  tail call void @kfree(ptr noundef %call.i) #8
  %25 = inttoptr i32 %err.1.i to ptr
  br label %cleanup9

cleanup9:                                         ; preds = %free.i, %if.end18.i, %if.end3.cleanup9_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup9_crit_edge
  %retval.1 = phi ptr [ %3, %if.else.i.i.i.i.i.cleanup9_crit_edge ], [ %3, %if.end15.sink.split.i.i.i.i.i ], [ %25, %free.i ], [ %call.i, %if.end18.i ], [ %call.i, %if.end3.cleanup9_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_gem_lookup(ptr noundef %file, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %handle) #8
  %tobool.not = icmp eq ptr %call, null
  %base = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 1
  %spec.select = select i1 %tobool.not, ptr null, ptr %base
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_bo_get(ptr noundef returned %bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bo, i32 -352
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !51

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !48

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %drm_gem_object_get.exit

drm_gem_object_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge
  ret ptr %bo
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_bo_put(ptr noundef %bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bo, i32 -352
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.drm_gem_object_put.exit_crit_edge, label %if.then.i

entry.drm_gem_object_put.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #8, !srcloc !47
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !48

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #8
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @drm_gem_object_free(ptr noundef nonnull %add.ptr.i) #8
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %entry.drm_gem_object_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_bo_pin(ptr noundef %dev, ptr noundef %bo, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup70_crit_edge, label %if.end

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup70

if.end:                                           ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call ptr %5(ptr noundef %bo) #8
  %bo5 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %bo5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %bo5, align 4
  %direction6 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %direction6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %direction, ptr %direction6, align 8
  %dev7 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev7, align 8
  %import_attach = getelementptr i8, ptr %bo, i32 -156
  %9 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %import_attach, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end30, label %if.then9

if.then9:                                         ; preds = %if.end
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call11 = tail call ptr @dma_buf_attach(ptr noundef %12, ptr noundef %dev) #8
  %attach = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %attach to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %attach, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call11 to i32
  br label %free

if.end17:                                         ; preds = %if.then9
  %call19 = tail call ptr @dma_buf_map_attachment(ptr noundef %call11, i32 noundef %direction) #8
  %sgt = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call19, ptr %sgt, align 8
  %cmp.i128 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attach, align 4
  tail call void @dma_buf_detach(ptr noundef %12, ptr noundef %17) #8
  %18 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sgt, align 8
  %20 = ptrtoint ptr %19 to i32
  br label %free

if.end26:                                         ; preds = %if.end17
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %call19, i32 0, i32 1
  %21 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp14.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp14.not.i.i, label %if.end26.cleanup_crit_edge, label %for.body.i.preheader.i

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.preheader.i:                           ; preds = %if.end26
  %23 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call19, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %s.018.i.i = phi ptr [ %call.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %24, %for.body.i.preheader.i ]
  %i.017.i.i = phi i32 [ %inc6.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %count.016.i.i = phi i32 [ %count.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %next.015.i.i = phi i32 [ %next.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ -1, %for.body.i.preheader.i ]
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.018.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.018.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_address.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %next.015.i.i)
  %cmp1.not.i.i = icmp eq i32 %28, %next.015.i.i
  br i1 %cmp1.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %28, %26
  %inc.i.i = add i32 %count.016.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %next.1.i.i = phi i32 [ %add.i.i, %if.then2.i.i ], [ %next.015.i.i, %if.end.i.i.for.inc.i.i_crit_edge ], [ %next.015.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %count.1.i.i = phi i32 [ %inc.i.i, %if.then2.i.i ], [ %count.016.i.i, %if.end.i.i.for.inc.i.i_crit_edge ], [ %count.016.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc6.i.i = add nuw i32 %i.017.i.i, 1
  %call.i.i = tail call ptr @sg_next(ptr noundef %s.018.i.i) #8
  %exitcond.not.i.i = icmp eq i32 %inc6.i.i, %22
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.i.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  %count.0.lcssa.i.i = phi i32 [ 0, %if.end26.cleanup_crit_edge ], [ %count.1.i.i, %for.inc.i.i.cleanup_crit_edge ]
  %size = getelementptr i8, ptr %bo, i32 -168
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 8
  %size29 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %size29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %size29, align 8
  br label %out

if.end30:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i129 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 12) #12
  %sgt32 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %sgt32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i129, ptr %sgt32, align 8
  %tobool34.not = icmp eq ptr %call7.i.i129, null
  br i1 %tobool34.not, label %if.end30.free_crit_edge, label %if.end36

if.end30.free_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end36:                                         ; preds = %if.end30
  %pages = getelementptr i8, ptr %bo, i32 80
  %34 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pages, align 8
  %tobool37.not = icmp eq ptr %35, null
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end36
  %num_pages = getelementptr i8, ptr %bo, i32 76
  %36 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_pages, align 4
  %size41 = getelementptr i8, ptr %bo, i32 -168
  %38 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size41, align 8
  %call.i131 = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %call7.i.i129, ptr noundef nonnull %35, i32 noundef %37, i32 noundef 0, i32 noundef %39, i32 noundef -1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %cmp = icmp slt i32 %call.i131, 0
  br i1 %cmp, label %if.then38.free_crit_edge, label %if.then38.if.end51_crit_edge

if.then38.if.end51_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then38.free_crit_edge:                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.else:                                          ; preds = %if.end36
  %vaddr = getelementptr i8, ptr %bo, i32 68
  %40 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vaddr, align 4
  %iova = getelementptr i8, ptr %bo, i32 64
  %42 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iova, align 8
  %size46 = getelementptr i8, ptr %bo, i32 -168
  %44 = ptrtoint ptr %size46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size46, align 8
  %call47 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %dev, ptr noundef nonnull %call7.i.i129, ptr noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.else.free_crit_edge, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.else.free_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end51:                                         ; preds = %if.else.if.end51_crit_edge, %if.then38.if.end51_crit_edge
  %46 = ptrtoint ptr %sgt32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sgt32, align 8
  %call53 = tail call i32 @dma_map_sgtable(ptr noundef %dev, ptr noundef %47, i32 noundef %direction, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end51.out_crit_edge, label %free_sgt

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end51.out_crit_edge, %cleanup
  %err.1 = phi i32 [ %count.0.lcssa.i.i, %cleanup ], [ 0, %if.end51.out_crit_edge ]
  %mm = getelementptr i8, ptr %bo, i32 72
  %48 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mm, align 8
  %tobool57.not = icmp eq ptr %49, null
  br i1 %tobool57.not, label %if.then58, label %if.else60

if.then58:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %sgt59 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %sgt59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sgt59, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %53, i32 0, i32 3
  br label %if.end64

if.else60:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %iova61 = getelementptr i8, ptr %bo, i32 64
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.then58
  %.sink136.in = phi ptr [ %dma_address, %if.then58 ], [ %iova61, %if.else60 ]
  %.sink = phi i32 [ %err.1, %if.then58 ], [ 1, %if.else60 ]
  %54 = ptrtoint ptr %.sink136.in to i32
  call void @__asan_load4_noabort(i32 %54)
  %.sink136 = load i32, ptr %.sink136.in, align 4
  %55 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink136, ptr %55, align 4
  %57 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink, ptr %57, align 4
  %size65 = getelementptr i8, ptr %bo, i32 -168
  %59 = ptrtoint ptr %size65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size65, align 8
  %size66 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 9
  %61 = ptrtoint ptr %size66 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %size66, align 8
  br label %cleanup70

free_sgt:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %sgt32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sgt32, align 8
  tail call void @sg_free_table(ptr noundef %63) #8
  br label %free

free:                                             ; preds = %free_sgt, %if.else.free_crit_edge, %if.then38.free_crit_edge, %if.end30.free_crit_edge, %if.then22, %if.then14
  %err.2 = phi i32 [ %call.i131, %if.then38.free_crit_edge ], [ %call53, %free_sgt ], [ %call47, %if.else.free_crit_edge ], [ -12, %if.end30.free_crit_edge ], [ %20, %if.then22 ], [ %14, %if.then14 ]
  %sgt68 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %call7.i.i, i32 0, i32 5
  %64 = ptrtoint ptr %sgt68 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sgt68, align 8
  tail call void @kfree(ptr noundef %65) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %66 = inttoptr i32 %err.2 to ptr
  br label %cleanup70

cleanup70:                                        ; preds = %free, %if.end64, %entry.cleanup70_crit_edge
  %retval.0 = phi ptr [ %66, %free ], [ %call7.i.i, %if.end64 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup70_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_bo_unpin(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attach = getelementptr inbounds %struct.host1x_bo_mapping, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attach, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sgt = getelementptr inbounds %struct.host1x_bo_mapping, ptr %map, i32 0, i32 5
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  %direction = getelementptr inbounds %struct.host1x_bo_mapping, ptr %map, i32 0, i32 2
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %direction, align 4
  tail call void @dma_buf_unmap_attachment(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %5) #8
  %6 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attach, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @dma_buf_detach(ptr noundef %9, ptr noundef %7) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.host1x_bo_mapping, ptr %map, i32 0, i32 7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %sgt4 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %map, i32 0, i32 5
  %12 = ptrtoint ptr %sgt4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sgt4, align 4
  %direction5 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %map, i32 0, i32 2
  %14 = ptrtoint ptr %direction5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction5, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %17, i32 noundef %19, i32 noundef %15, i32 noundef 0) #8
  %20 = ptrtoint ptr %sgt4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sgt4, align 4
  tail call void @sg_free_table(ptr noundef %21) #8
  %22 = ptrtoint ptr %sgt4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgt4, align 4
  tail call void @kfree(ptr noundef %23) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bo = getelementptr inbounds %struct.host1x_bo_mapping, ptr %map, i32 0, i32 4
  %24 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bo, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %put.i = getelementptr inbounds %struct.host1x_bo_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %put.i, align 4
  tail call void %29(ptr noundef %25) #8
  tail call void @kfree(ptr noundef %map) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_bo_mmap(ptr nocapture noundef readonly %bo) #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #8
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %map, align 8, !annotation !53
  %vaddr = getelementptr i8, ptr %bo, i32 68
  %1 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vaddr, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %import_attach = getelementptr i8, ptr %bo, i32 -156
  %3 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %import_attach, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.else8, label %if.then3

if.then3:                                         ; preds = %if.else
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call6 = call i32 @dma_buf_vmap(ptr noundef %6, ptr noundef nonnull %map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cond.false, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 8
  br label %cleanup

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %pages = getelementptr i8, ptr %bo, i32 80
  %9 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages, align 8
  %num_pages = getelementptr i8, ptr %bo, i32 76
  %11 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_pages, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %13 = load i32, ptr @pgprot_kernel, align 4
  %or = and i32 %13, -573
  %or9 = or i32 %or, 516
  %call10 = tail call ptr @vmap(ptr noundef %10, i32 noundef %12, i32 noundef 4, i32 noundef %or9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else8, %cond.false, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %if.else8 ], [ %2, %entry.cleanup_crit_edge ], [ %8, %cond.false ], [ null, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_bo_munmap(ptr nocapture noundef readonly %bo, ptr noundef %addr) #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #8
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -4278190081, ptr %map, align 8, !annotation !53
  store ptr %addr, ptr %map, align 8
  %vaddr = getelementptr i8, ptr %bo, i32 68
  %1 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vaddr, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %import_attach = getelementptr i8, ptr %bo, i32 -156
  %3 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %import_attach, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.else5, label %if.then2

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  call void @dma_buf_vunmap(ptr noundef %6, ptr noundef nonnull %map) #8
  br label %cleanup

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vunmap(ptr noundef %addr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else5, %if.then2, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_vmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_bo_iommu_map(ptr noundef %tegra, ptr nocapture noundef %bo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mm = getelementptr inbounds %struct.tegra_bo, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 112) #12
  %3 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %mm, align 8
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mm_lock = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #8
  %mm6 = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 4
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %conv = zext i32 %7 to i64
  %call.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %mm6, ptr noundef %5, i64 noundef %conv, i64 noundef 4096, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tegra, align 8
  %dev = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef %call.i) #11
  br label %unlock

if.end11:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mm, align 8
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start, align 8
  %conv13 = trunc i64 %15 to i32
  %iova = getelementptr inbounds %struct.tegra_bo, ptr %bo, i32 0, i32 4
  %16 = ptrtoint ptr %iova to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv13, ptr %iova, align 8
  %domain = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 1
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %sgt = getelementptr inbounds %struct.tegra_bo, ptr %bo, i32 0, i32 3
  %19 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sgt, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %orig_nents.i, align 4
  %call.i51 = tail call i32 @iommu_map_sg(ptr noundef %18, i32 noundef %conv13, ptr noundef %22, i32 noundef %24, i32 noundef 3) #8
  %size16 = getelementptr inbounds %struct.tegra_bo, ptr %bo, i32 0, i32 9
  %25 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i51, ptr %size16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool18.not = icmp eq i32 %call.i51, 0
  br i1 %tobool18.not, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %tegra to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tegra, align 8
  %dev24 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.12) #11
  %30 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm, align 8
  tail call void @drm_mm_remove_node(ptr noundef %31) #8
  br label %unlock

if.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mm_lock) #8
  br label %cleanup

unlock:                                           ; preds = %do.end22, %do.end
  %err.0 = phi i32 [ %call.i, %do.end ], [ -12, %do.end22 ]
  tail call void @mutex_unlock(ptr noundef %mm_lock) #8
  %32 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mm, align 8
  tail call void @kfree(ptr noundef %33) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ 0, %if.end25 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_put_pages(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_insert_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_gem_prime_map_dma_buf(ptr nocapture noundef readonly %attach, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attach, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pages = getelementptr inbounds %struct.tegra_bo, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %num_pages = getelementptr inbounds %struct.tegra_bo, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_pages, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 8
  %call.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %call7.i, ptr noundef nonnull %6, i32 noundef %8, i32 noundef 0, i32 noundef %10, i32 noundef -1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then3.free_crit_edge, label %if.then3.if.end13_crit_edge

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then3.free_crit_edge:                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.else:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attach, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %vaddr = getelementptr inbounds %struct.tegra_bo, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vaddr, align 4
  %iova = getelementptr inbounds %struct.tegra_bo, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iova, align 8
  %size8 = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size8, align 8
  %call9 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %12, ptr noundef nonnull %call7.i, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.else.free_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.else.free_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.then3.if.end13_crit_edge
  %dev14 = getelementptr inbounds %struct.dma_buf_attachment, ptr %attach, i32 0, i32 1
  %19 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev14, align 4
  %call15 = tail call i32 @dma_map_sgtable(ptr noundef %20, ptr noundef nonnull %call7.i, i32 noundef %dir, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end13.free_crit_edge

if.end13.free_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

free:                                             ; preds = %if.end13.free_crit_edge, %if.else.free_crit_edge, %if.then3.free_crit_edge
  tail call void @sg_free_table(ptr noundef nonnull %call7.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free ], [ null, %entry.cleanup_crit_edge ], [ %call7.i, %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gem_prime_unmap_dma_buf(ptr nocapture noundef readonly %attach, ptr noundef %sgt, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attach, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %pages = getelementptr inbounds %struct.tegra_bo, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attach, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %10 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %dir, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @sg_free_table(ptr noundef %sgt) #8
  tail call void @kfree(ptr noundef %sgt) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_gem_prime_release(ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_gem_dmabuf_release(ptr noundef %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gem_prime_begin_cpu_access(ptr nocapture noundef readonly %buf, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pages = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %sgt = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %7, ptr noundef %11, i32 noundef %13, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gem_prime_end_cpu_access(ptr nocapture noundef readonly %buf, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pages = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %sgt = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %7, ptr noundef %11, i32 noundef %13, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gem_prime_mmap(ptr nocapture noundef readonly %buf, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %call = tail call i32 @drm_gem_mmap_obj(ptr noundef %1, i32 noundef %3, ptr noundef %vma) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pages.i = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %vm_pgoff1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %6 = ptrtoint ptr %vm_pgoff1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff1.i, align 4
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %9, -1025
  store i32 %and.i, ptr %vm_flags.i, align 4
  store i32 0, ptr %vm_pgoff1.i, align 4
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3.i, align 4
  %vaddr.i = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vaddr.i, align 4
  %iova.i = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %iova.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iova.i, align 8
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 8
  %call.i.i = tail call i32 @dma_mmap_attrs(ptr noundef %13, ptr noundef %vma, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then5.i, label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_gem_vm_close(ptr noundef %vma) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %vm_pgoff1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %7, ptr %vm_pgoff1.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %vm_flags8.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %21 = ptrtoint ptr %vm_flags8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_flags8.i, align 4
  %call9.i = tail call i32 @vm_get_page_prot(i32 noundef %22) #8
  %23 = ptrtoint ptr %vm_flags8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_flags8.i, align 4
  %or.i = and i32 %24, -268436481
  %and12.i = or i32 %or.i, 268435456
  store i32 %and12.i, ptr %vm_flags8.i, align 4
  %and13.i = and i32 %call9.i, -61
  %or14.i = or i32 %and13.i, 4
  %vm_page_prot.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %25 = ptrtoint ptr %vm_page_prot.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or14.i, ptr %vm_page_prot.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.then5.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then5.i ], [ 0, %if.end.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_gem_prime_vmap(ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %vaddr = getelementptr inbounds %struct.tegra_bo, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr, align 4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %map, align 4
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %map, i32 0, i32 1
  %5 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_iomem.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_gem_prime_vunmap(ptr nocapture noundef %buf, ptr nocapture noundef %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_dmabuf_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap_obj(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__UNIQUE_ID_import_ns340, !1, !"__UNIQUE_ID_import_ns340", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/gem.c", i32 24, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/gem.c", i32 502, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra_bo_free_object._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tegra_bo_free_object._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @tegra_bo_vm_ops, !11, !"tegra_bo_vm_ops", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tegra/gem.c", i32 556, i32 35}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tegra/gem.c", i32 730, i32 2}
!14 = !{ptr @tegra_gem_object_funcs, !15, !"tegra_gem_object_funcs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tegra/gem.c", i32 280, i32 42}
!16 = !{ptr @host1x_bo_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/host1x.h", i32 154, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tegra_bo_ops, !20, !"tegra_bo_ops", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/tegra/gem.c", i32 213, i32 35}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/tegra/gem.c", i32 381, i32 4}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tegra_bo_alloc._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra_bo_alloc._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tegra/gem.c", i32 239, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tegra_bo_iommu_map._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra_bo_iommu_map._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/tegra/gem.c", i32 248, i32 3}
!33 = !{ptr @tegra_bo_iommu_map._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra_bo_iommu_map._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @tegra_gem_prime_dmabuf_ops, !36, !"tegra_gem_prime_dmabuf_ops", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/tegra/gem.c", i32 716, i32 33}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2148555188}
!47 = !{i64 2148469652, i64 2148469684, i64 2148469713, i64 2148469747, i64 2148469778, i64 2148469801}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2150181202}
!50 = !{i64 2148467187, i64 2148467219, i64 2148467248, i64 2148467282, i64 2148467313, i64 2148467336}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2148465657, i64 2148465683, i64 2148465712, i64 2148465746, i64 2148465777, i64 2148465800}
!53 = !{!"auto-init"}
