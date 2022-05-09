; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_ttm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_ttm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ttm_resource_manager_func = type { ptr, ptr, ptr }
%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.93 }
%struct.anon.93 = type { ptr, i64 }
%struct.nvif_vma = type { i64, i64 }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.97, %struct.anon.98, %struct.anon.99, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.101, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.113 }
%struct.nvif_parent = type { ptr }
%struct.anon.97 = type { ptr, i32, i32, i8 }
%struct.anon.98 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.99 = type { i64, i64 }
%struct.anon.100 = type { i32, i64 }
%struct.anon.101 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.108, %struct.anon.109, %struct.anon.110, %struct.anon.111 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.102, i8 }
%union.anon.102 = type { %struct.anon.106 }
%struct.anon.106 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.108 = type { i32 }
%struct.anon.109 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.110 = type { i16, i16 }
%struct.anon.111 = type { i16, i16, i16, %struct.anon.112, i16 }
%struct.anon.112 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, %struct.mutex, i8 }
%struct.anon.188 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.186, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.186 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.95 = type { i8, i8 }
%struct.nvkm_pci = type { ptr, %struct.nvkm_subdev, ptr, i32, %struct.anon.118, %struct.anon.119, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.118 = type { ptr, i32, i64, i64, i32, i8, i8 }
%struct.anon.119 = type { i32, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.83, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.84, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.85, ptr, %struct.address_space, %struct.list_head, %union.anon.86, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.84 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.85 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.86 = type { ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.anon.189 = type { %struct.nvkm_object, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }

@nouveau_vram_manager = dso_local constant { %struct.ttm_resource_manager_func, [20 x i8] } { %struct.ttm_resource_manager_func { ptr @nouveau_vram_manager_new, ptr @nouveau_manager_del, ptr null }, [20 x i8] zeroinitializer }, align 32
@nouveau_gart_manager = dso_local constant { %struct.ttm_resource_manager_func, [20 x i8] } { %struct.ttm_resource_manager_func { ptr @nouveau_gart_manager_new, ptr @nouveau_manager_del, ptr null }, [20 x i8] zeroinitializer }, align 32
@nv04_gart_manager = dso_local constant { %struct.ttm_resource_manager_func, [20 x i8] } { %struct.ttm_resource_manager_func { ptr @nv04_gart_manager_new, ptr @nouveau_manager_del, ptr null }, [20 x i8] zeroinitializer }, align 32
@nouveau_bo_driver = external dso_local global %struct.ttm_device_funcs, align 4
@nouveau_ttm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 287, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: error initialising bo driver, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nouveau_ttm_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/nouveau/nouveau_ttm.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nouveau_ttm_init._entry_ptr = internal global ptr @nouveau_ttm_init._entry, section ".printk_index", align 4
@nouveau_ttm_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: VRAM mm init failed, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@nouveau_ttm_init._entry_ptr.7 = internal global ptr @nouveau_ttm_init._entry.5, section ".printk_index", align 4
@nouveau_ttm_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: GART mm init failed, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@nouveau_ttm_init._entry_ptr.10 = internal global ptr @nouveau_ttm_init._entry.8, section ".printk_index", align 4
@nouveau_ttm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&drm->ttm.io_reserve_mutex\00", [37 x i8] zeroinitializer }, align 32
@nouveau_ttm_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 322, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: VRAM: %d MiB\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nouveau_ttm_init._entry_ptr.15 = internal global ptr @nouveau_ttm_init._entry.12, section ".printk_index", align 4
@nouveau_ttm_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 323, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: GART: %d MiB\0A\00", [46 x i8] zeroinitializer }, align 32
@nouveau_ttm_init._entry_ptr.18 = internal global ptr @nouveau_ttm_init._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/drm/ttm/ttm_resource.h\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"nouveau_vram_manager\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 72, i32 40 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"nouveau_gart_manager\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 96, i32 40 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"nv04_gart_manager\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 129, i32 40 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 287, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 299, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 315, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 319, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 322, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private constant [41 x i8] c"../drivers/gpu/drm/nouveau/nouveau_ttm.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 323, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [34 x i8] c"../include/drm/ttm/ttm_resource.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 229, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @nouveau_ttm_init._entry, ptr @nouveau_ttm_init._entry.12, ptr @nouveau_ttm_init._entry.16, ptr @nouveau_ttm_init._entry.5, ptr @nouveau_ttm_init._entry.8, ptr @nouveau_ttm_init._entry_ptr, ptr @nouveau_ttm_init._entry_ptr.10, ptr @nouveau_ttm_init._entry_ptr.15, ptr @nouveau_ttm_init._entry_ptr.18, ptr @nouveau_ttm_init._entry_ptr.7, ptr @nouveau_vram_manager, ptr @nouveau_gart_manager, ptr @nv04_gart_manager, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @nouveau_ttm_init.__key, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_vram_manager to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gart_manager to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_gart_manager to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_ttm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_ttm_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_ttm_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_ttm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_ttm_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_ttm_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_vram_manager_new(ptr nocapture noundef readnone %man, ptr noundef %bo, ptr noundef %place, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %ram_size = getelementptr i8, ptr %1, i32 -712
  %2 = ptrtoint ptr %ram_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %master = getelementptr i8, ptr %1, i32 -1712
  %kind = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 15
  %4 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %kind, align 8
  %bf.lshr = lshr i32 %bf.load, 18
  %conv = trunc i32 %bf.lshr to i8
  %bf.lshr3 = lshr i32 %bf.load, 15
  %5 = trunc i32 %bf.lshr3 to i8
  %conv5 = and i8 %5, 7
  %call6 = tail call i32 @nouveau_mem_new(ptr noundef %master, i8 noundef zeroext %conv, i8 noundef zeroext %conv5, ptr noundef %res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res, align 4
  tail call void @ttm_resource_init(ptr noundef %bo, ptr noundef %place, ptr noundef %7) #5
  %8 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res, align 4
  %10 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load9 = load i32, ptr %kind, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load9)
  %tobool11 = icmp slt i32 %bf.load9, 0
  %bf.lshr13 = lshr i32 %bf.load9, 26
  %11 = trunc i32 %bf.lshr13 to i8
  %conv15 = and i8 %11, 31
  %call16 = tail call i32 @nouveau_mem_vram(ptr noundef %9, i1 noundef zeroext %tobool11, i8 noundef zeroext %conv15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end8.cleanup_crit_edge, label %if.then18

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %res, align 4
  tail call void @nouveau_mem_del(ptr noundef %13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then18 ], [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_manager_del(ptr nocapture noundef readnone %man, ptr noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nouveau_mem_del(ptr noundef %reg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_gart_manager_new(ptr nocapture noundef readnone %man, ptr noundef %bo, ptr noundef %place, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %master = getelementptr i8, ptr %1, i32 -1712
  %kind = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 15
  %2 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %kind, align 8
  %bf.lshr = lshr i32 %bf.load, 18
  %conv = trunc i32 %bf.lshr to i8
  %bf.lshr3 = lshr i32 %bf.load, 15
  %3 = trunc i32 %bf.lshr3 to i8
  %conv5 = and i8 %3, 7
  %call6 = tail call i32 @nouveau_mem_new(ptr noundef %master, i8 noundef zeroext %conv, i8 noundef zeroext %conv5, ptr noundef %res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res, align 4
  tail call void @ttm_resource_init(ptr noundef %bo, ptr noundef %place, ptr noundef %5) #5
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_gart_manager_new(ptr nocapture noundef readnone %man, ptr noundef %bo, ptr noundef %place, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %master = getelementptr i8, ptr %1, i32 -1712
  %kind = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 15
  %2 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %kind, align 8
  %bf.lshr = lshr i32 %bf.load, 18
  %conv = trunc i32 %bf.lshr to i8
  %bf.lshr3 = lshr i32 %bf.load, 15
  %3 = trunc i32 %bf.lshr3 to i8
  %conv5 = and i8 %3, 7
  %call6 = tail call i32 @nouveau_mem_new(ptr noundef %master, i8 noundef zeroext %conv, i8 noundef zeroext %conv5, ptr noundef %res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res, align 4
  tail call void @ttm_resource_init(ptr noundef %bo, ptr noundef %place, ptr noundef %5) #5
  %cli = getelementptr inbounds %struct.nouveau_mem, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cli to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cli, align 8
  %vmm8 = getelementptr inbounds %struct.nouveau_cli, ptr %7, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pages, align 4
  %shl = shl i32 %11, 12
  %conv9 = sext i32 %shl to i64
  %vma = getelementptr inbounds %struct.nouveau_mem, ptr %5, i32 0, i32 5
  %call10 = tail call i32 @nvif_vmm_get(ptr noundef %vmm8, i32 noundef 1, i1 noundef zeroext false, i8 noundef zeroext 12, i8 noundef zeroext 0, i64 noundef %conv9, ptr noundef %vma) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %res, align 4
  tail call void @nouveau_mem_del(ptr noundef %13) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %vma to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vma, align 8
  %shr = lshr i64 %15, 12
  %conv16 = trunc i64 %shr to i32
  %16 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %res, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv16, ptr %17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ 0, %if.end13 ], [ %call6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_ttm_init(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.188, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 8
  %pci3 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %pci3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci3, align 4
  %dev6 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 3
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 8
  %type_nr.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 4, i32 3
  %8 = ptrtoint ptr %type_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type_nr.i.i, align 2
  %conv.i.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp14.not.i.i = icmp eq i8 %9, 0
  br i1 %cmp14.not.i.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %entry
  %type.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 4, i32 8
  %10 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.015.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.anon.95, ptr %11, i32 %i.015.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 1
  %and13.i.i = and i8 %13, 98
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %and13.i.i)
  %cmp6.i.i = icmp eq i8 %and13.i.i, 98
  br i1 %cmp6.i.i, label %for.body.lr.ph.i35.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i35.i:                             ; preds = %for.body.i.i
  %arrayidx.i = getelementptr %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 7, i32 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.015.i.i, ptr %arrayidx.i, align 4
  br label %for.body.i40.i

for.body.i40.i:                                   ; preds = %for.inc.i43.i.for.body.i40.i_crit_edge, %for.body.lr.ph.i35.i
  %i.015.i36.i = phi i32 [ 0, %for.body.lr.ph.i35.i ], [ %inc.i41.i, %for.inc.i43.i.for.body.i40.i_crit_edge ]
  %arrayidx.i37.i = getelementptr %struct.anon.95, ptr %11, i32 %i.015.i36.i
  %15 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i37.i, align 1
  %and13.i38.i = and i8 %16, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %and13.i38.i)
  %cmp6.i39.i = icmp eq i8 %and13.i38.i, 34
  br i1 %cmp6.i39.i, label %if.end, label %for.inc.i43.i

for.inc.i43.i:                                    ; preds = %for.body.i40.i
  %inc.i41.i = add nuw nsw i32 %i.015.i36.i, 1
  %exitcond.not.i42.i = icmp eq i32 %inc.i41.i, %conv.i.i
  br i1 %exitcond.not.i42.i, label %for.inc.i43.i.cleanup_crit_edge, label %for.inc.i43.i.for.body.i40.i_crit_edge

for.inc.i43.i.for.body.i40.i_crit_edge:           ; preds = %for.inc.i43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i40.i

for.inc.i43.i.cleanup_crit_edge:                  ; preds = %for.inc.i43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body.i40.i
  %arrayidx20.i = getelementptr %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 8, i32 0
  %17 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.015.i36.i, ptr %arrayidx20.i, align 4
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 4
  %18 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %cmp = icmp ugt i8 %19, 5
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end44_crit_edge

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 2
  %20 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %21)
  %cmp14.not = icmp eq i16 %21, 80
  br i1 %cmp14.not, label %if.end21.thread298, label %for.body.lr.ph.i.i266

for.body.lr.ph.i.i266:                            ; preds = %land.lhs.true
  %22 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type.i.i, align 8
  br label %for.body.i.i271

for.body.i.i271:                                  ; preds = %for.inc.i.i274.for.body.i.i271_crit_edge, %for.body.lr.ph.i.i266
  %i.015.i.i267 = phi i32 [ 0, %for.body.lr.ph.i.i266 ], [ %inc.i.i272, %for.inc.i.i274.for.body.i.i271_crit_edge ]
  %arrayidx.i.i268 = getelementptr %struct.anon.95, ptr %23, i32 %i.015.i.i267
  %24 = ptrtoint ptr %arrayidx.i.i268 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i268, align 1
  %and13.i.i269 = and i8 %25, 114
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %and13.i.i269)
  %cmp6.i.i270 = icmp eq i8 %and13.i.i269, 114
  br i1 %cmp6.i.i270, label %for.body.lr.ph.i35.i276, label %for.inc.i.i274

for.inc.i.i274:                                   ; preds = %for.body.i.i271
  %inc.i.i272 = add nuw nsw i32 %i.015.i.i267, 1
  %exitcond.not.i.i273 = icmp eq i32 %inc.i.i272, %conv.i.i
  br i1 %exitcond.not.i.i273, label %for.inc.i.i274.cleanup_crit_edge, label %for.inc.i.i274.for.body.i.i271_crit_edge

for.inc.i.i274.for.body.i.i271_crit_edge:         ; preds = %for.inc.i.i274
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i271

for.inc.i.i274.cleanup_crit_edge:                 ; preds = %for.inc.i.i274
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i35.i276:                          ; preds = %for.body.i.i271
  %arrayidx.i275 = getelementptr %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 7, i32 1
  %26 = ptrtoint ptr %arrayidx.i275 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %i.015.i.i267, ptr %arrayidx.i275, align 4
  br label %for.body.i40.i281

for.body.i40.i281:                                ; preds = %for.inc.i43.i284.for.body.i40.i281_crit_edge, %for.body.lr.ph.i35.i276
  %i.015.i36.i277 = phi i32 [ 0, %for.body.lr.ph.i35.i276 ], [ %inc.i41.i282, %for.inc.i43.i284.for.body.i40.i281_crit_edge ]
  %arrayidx.i37.i278 = getelementptr %struct.anon.95, ptr %23, i32 %i.015.i36.i277
  %27 = ptrtoint ptr %arrayidx.i37.i278 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i37.i278, align 1
  %and13.i38.i279 = and i8 %28, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %and13.i38.i279)
  %cmp6.i39.i280 = icmp eq i8 %and13.i38.i279, 50
  br i1 %cmp6.i39.i280, label %if.end21, label %for.inc.i43.i284

for.inc.i43.i284:                                 ; preds = %for.body.i40.i281
  %inc.i41.i282 = add nuw nsw i32 %i.015.i36.i277, 1
  %exitcond.not.i42.i283 = icmp eq i32 %inc.i41.i282, %conv.i.i
  br i1 %exitcond.not.i42.i283, label %for.inc.i43.i284.cleanup_crit_edge, label %for.inc.i43.i284.for.body.i40.i281_crit_edge

for.inc.i43.i284.for.body.i40.i281_crit_edge:     ; preds = %for.inc.i43.i284
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i40.i281

for.inc.i43.i284.cleanup_crit_edge:               ; preds = %for.inc.i43.i284
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %for.body.i40.i281
  %arrayidx20.i285 = getelementptr %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 8, i32 1
  %29 = ptrtoint ptr %arrayidx20.i285 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.015.i36.i277, ptr %arrayidx20.i285, align 4
  %platform = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 1
  %30 = ptrtoint ptr %platform to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %platform, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %31)
  %cmp26.not = icmp eq i8 %31, 4
  br i1 %cmp26.not, label %if.end21.if.end44_crit_edge, label %if.end21.if.then36_crit_edge

if.end21.if.then36_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36

if.end21.if.end44_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.end21.thread298:                               ; preds = %land.lhs.true
  %platform299 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 1
  %32 = ptrtoint ptr %platform299 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %platform299, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp26.not300 = icmp eq i8 %33, 4
  br i1 %cmp26.not300, label %if.end21.thread298.if.end44_crit_edge, label %if.end21.thread298.if.then36_crit_edge

if.end21.thread298.if.then36_crit_edge:           ; preds = %if.end21.thread298
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36

if.end21.thread298.if.end44_crit_edge:            ; preds = %if.end21.thread298
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then36:                                        ; preds = %if.end21.thread298.if.then36_crit_edge, %if.end21.if.then36_crit_edge
  %34 = ptrtoint ptr %type_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %type_nr.i.i, align 2
  %conv.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp14.not.i = icmp eq i8 %35, 0
  br i1 %cmp14.not.i, label %if.then36.cleanup_crit_edge, label %for.body.lr.ph.i

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then36
  %36 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %type.i.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i289 = getelementptr %struct.anon.95, ptr %37, i32 %i.015.i
  %38 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i289, align 1
  %and13.i = and i8 %39, 61
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %and13.i)
  %cmp6.i = icmp eq i8 %and13.i, 61
  br i1 %cmp6.i, label %for.body.i.if.end44_crit_edge, label %for.inc.i

for.body.i.if.end44_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %for.body.i.if.end44_crit_edge, %if.end21.thread298.if.end44_crit_edge, %if.end21.if.end44_crit_edge, %if.end.if.end44_crit_edge
  %.sink = phi i32 [ -1, %if.end21.if.end44_crit_edge ], [ -1, %if.end.if.end44_crit_edge ], [ -1, %if.end21.thread298.if.end44_crit_edge ], [ %i.015.i, %for.body.i.if.end44_crit_edge ]
  %type_vram43 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 6
  %40 = ptrtoint ptr %type_vram43 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink, ptr %type_vram43, align 4
  %tobool45.not = icmp eq ptr %5, null
  br i1 %tobool45.not, label %if.end44.if.end65_crit_edge, label %land.lhs.true46

if.end44.if.end65_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

land.lhs.true46:                                  ; preds = %if.end44
  %agp = getelementptr inbounds %struct.nvkm_pci, ptr %5, i32 0, i32 4
  %41 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %agp, align 8
  %tobool47.not = icmp eq ptr %42, null
  br i1 %tobool47.not, label %land.lhs.true46.if.end65_crit_edge, label %if.then48

land.lhs.true46.if.end65_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then48:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  %agp51 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 7
  %43 = ptrtoint ptr %agp51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %agp51, align 4
  %base = getelementptr inbounds %struct.nvkm_pci, ptr %5, i32 0, i32 4, i32 2
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %base, align 8
  %conv54 = trunc i64 %45 to i32
  %base56 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %base56 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv54, ptr %base56, align 4
  %size = getelementptr inbounds %struct.nvkm_pci, ptr %5, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %size, align 8
  %conv58 = trunc i64 %48 to i32
  %size60 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 7, i32 2
  %49 = ptrtoint ptr %size60 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv58, ptr %size60, align 4
  %cma = getelementptr inbounds %struct.nvkm_pci, ptr %5, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %cma to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cma, align 4, !range !45
  %cma64 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 7, i32 3
  %52 = ptrtoint ptr %cma64 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %cma64, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then48, %land.lhs.true46.if.end65_crit_edge, %if.end44.if.end65_crit_edge
  %ttm66 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8
  %dev68 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %53 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev68, align 4
  %anon_inode = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 12
  %55 = ptrtoint ptr %anon_inode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %anon_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_mapping, align 8
  %vma_offset_manager = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 33
  %59 = ptrtoint ptr %vma_offset_manager to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vma_offset_manager, align 4
  %dmabits = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 4, i32 1
  %61 = ptrtoint ptr %dmabits to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %dmabits, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %62)
  %cmp73 = icmp ult i8 %62, 33
  %call75 = tail call i32 @ttm_device_init(ptr noundef %ttm66, ptr noundef nonnull @nouveau_bo_driver, ptr noundef %54, ptr noundef %58, ptr noundef %60, i1 noundef zeroext false, i1 noundef zeroext %cmp73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end85, label %do.body

do.body:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %drm80 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %drm80 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %drm80, align 8
  %dev81 = getelementptr inbounds %struct.nouveau_drm, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev81, align 8
  %dev82 = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev82, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call75) #8
  br label %cleanup

if.end85:                                         ; preds = %if.end65
  %ram_user = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 7
  %69 = ptrtoint ptr %ram_user to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %ram_user, align 8
  %gem = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 9
  %71 = ptrtoint ptr %gem to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %gem, align 8
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %resource_addr, align 4
  %call89 = tail call i32 %75(ptr noundef %3, i32 noundef 1) #5
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %3, align 8
  %resource_size = getelementptr inbounds %struct.nvkm_device_func, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %resource_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %resource_size, align 4
  %call91 = tail call i32 %79(ptr noundef %3, i32 noundef 1) #5
  %80 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %81)
  %cmp.i = icmp ugt i8 %81, 5
  br i1 %cmp.i, label %if.then.i, label %nouveau_ttm_init_vram.exit

if.then.i:                                        ; preds = %if.end85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 104) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i.do.body96_crit_edge, label %if.end.i

if.then.i.do.body96_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body96

if.end.i:                                         ; preds = %if.then.i
  %func.i = getelementptr inbounds %struct.ttm_resource_manager, ptr %call7.i.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @nouveau_vram_manager, ptr %func.i, align 8
  %84 = ptrtoint ptr %gem to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %gem, align 8
  %shr.i = lshr i64 %85, 12
  %conv3.i = trunc i64 %shr.i to i32
  tail call void @ttm_resource_manager_init(ptr noundef nonnull %call7.i.i.i, i32 noundef %conv3.i) #5
  %arrayidx.i.i291 = getelementptr %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 0, i32 3, i32 2
  %86 = ptrtoint ptr %arrayidx.i.i291 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i.i, ptr %arrayidx.i.i291, align 4
  %arrayidx.i19.i = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i.i, i32 0, i32 5, i32 0
  %87 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %arrayidx.i19.i, align 8
  %cmp.i.not.i.i = icmp eq ptr %88, %arrayidx.i19.i
  br i1 %cmp.i.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !46

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end.i.if.end.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %89 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %arrayidx.1.i.i, align 8
  %cmp.i.not.1.i.i = icmp eq ptr %90, %arrayidx.1.i.i
  br i1 %cmp.i.not.1.i.i, label %if.end.i.i.if.end.1.i.i_crit_edge, label %do.end.1.i.i, !prof !46

if.end.i.i.if.end.1.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1.i.i

do.end.1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.1.i.i

if.end.1.i.i:                                     ; preds = %do.end.1.i.i, %if.end.i.i.if.end.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %91 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %arrayidx.2.i.i, align 8
  %cmp.i.not.2.i.i = icmp eq ptr %92, %arrayidx.2.i.i
  br i1 %cmp.i.not.2.i.i, label %if.end.1.i.i.if.end.2.i.i_crit_edge, label %do.end.2.i.i, !prof !46

if.end.1.i.i.if.end.2.i.i_crit_edge:              ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2.i.i

do.end.2.i.i:                                     ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.2.i.i

if.end.2.i.i:                                     ; preds = %do.end.2.i.i, %if.end.1.i.i.if.end.2.i.i_crit_edge
  %arrayidx.3.i.i = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i.i, i32 0, i32 5, i32 3
  %93 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %arrayidx.3.i.i, align 8
  %cmp.i.not.3.i.i = icmp eq ptr %94, %arrayidx.3.i.i
  br i1 %cmp.i.not.3.i.i, label %if.end.2.i.i.nouveau_ttm_init_vram.exit.thread_crit_edge, label %do.end.3.i.i, !prof !46

if.end.2.i.i.nouveau_ttm_init_vram.exit.thread_crit_edge: ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_ttm_init_vram.exit.thread

do.end.3.i.i:                                     ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %nouveau_ttm_init_vram.exit.thread

nouveau_ttm_init_vram.exit.thread:                ; preds = %do.end.3.i.i, %if.end.2.i.i.nouveau_ttm_init_vram.exit.thread_crit_edge
  %95 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %call7.i.i.i, align 8
  br label %if.end109

nouveau_ttm_init_vram.exit:                       ; preds = %if.end85
  %96 = ptrtoint ptr %gem to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %gem, align 8
  %shr8.i = lshr i64 %97, 12
  %conv9.i = trunc i64 %shr8.i to i32
  %call.i.i = tail call i32 @ttm_range_man_init_nocheck(ptr noundef %ttm66, i32 noundef 2, i1 noundef zeroext false, i32 noundef %conv9.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool94.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool94.not, label %nouveau_ttm_init_vram.exit.if.end109_crit_edge, label %nouveau_ttm_init_vram.exit.do.body96_crit_edge

nouveau_ttm_init_vram.exit.do.body96_crit_edge:   ; preds = %nouveau_ttm_init_vram.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body96

nouveau_ttm_init_vram.exit.if.end109_crit_edge:   ; preds = %nouveau_ttm_init_vram.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

do.body96:                                        ; preds = %nouveau_ttm_init_vram.exit.do.body96_crit_edge, %if.then.i.do.body96_crit_edge
  %retval.1.i309 = phi i32 [ %call.i.i, %nouveau_ttm_init_vram.exit.do.body96_crit_edge ], [ -12, %if.then.i.do.body96_crit_edge ]
  %drm102 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %98 = ptrtoint ptr %drm102 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %drm102, align 8
  %dev103 = getelementptr inbounds %struct.nouveau_drm, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev103, align 8
  %dev104 = getelementptr inbounds %struct.drm_device, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev104, align 4
  %name105 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.6, ptr noundef %name105, i32 noundef %retval.1.i309) #8
  br label %cleanup

if.end109:                                        ; preds = %nouveau_ttm_init_vram.exit.if.end109_crit_edge, %nouveau_ttm_init_vram.exit.thread
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %3, align 8
  %resource_addr111 = getelementptr inbounds %struct.nvkm_device_func, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %resource_addr111 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %resource_addr111, align 4
  %call112 = tail call i32 %107(ptr noundef %3, i32 noundef 1) #5
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %3, align 8
  %resource_size114 = getelementptr inbounds %struct.nvkm_device_func, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %resource_size114 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %resource_size114, align 4
  %call115 = tail call i32 %111(ptr noundef %3, i32 noundef 1) #5
  %mtrr = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 5
  %112 = ptrtoint ptr %mtrr to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %mtrr, align 8
  %agp118 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 7
  %113 = ptrtoint ptr %agp118 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %agp118, align 4
  %tobool120.not = icmp eq ptr %114, null
  br i1 %tobool120.not, label %if.then121, label %if.else125

if.then121:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  %limit = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 5, i32 1, i32 2
  %115 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %limit, align 8
  br label %if.end131

if.else125:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  %size127 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 7, i32 2
  %117 = ptrtoint ptr %size127 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %size127, align 4
  %conv128 = zext i32 %118 to i64
  br label %if.end131

if.end131:                                        ; preds = %if.else125, %if.then121
  %conv128.sink = phi i64 [ %116, %if.then121 ], [ %conv128, %if.else125 ]
  %119 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 9, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv128.sink, ptr %119, align 8
  %call132 = tail call fastcc i32 @nouveau_ttm_init_gtt(ptr noundef %drm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %do.body149, label %do.body135

do.body135:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  %drm141 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %121 = ptrtoint ptr %drm141 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %drm141, align 8
  %dev142 = getelementptr inbounds %struct.nouveau_drm, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev142, align 8
  %dev143 = getelementptr inbounds %struct.drm_device, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev143, align 4
  %name144 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.9, ptr noundef %name144, i32 noundef %call132) #8
  br label %cleanup

do.body149:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  %io_reserve_mutex = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 9
  tail call void @__mutex_init(ptr noundef %io_reserve_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @nouveau_ttm_init.__key) #5
  %io_reserve_lru = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 10
  %127 = ptrtoint ptr %io_reserve_lru to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %io_reserve_lru, ptr %io_reserve_lru, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 10, i32 1
  %128 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %io_reserve_lru, ptr %prev.i, align 4
  %drm160 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %129 = ptrtoint ptr %drm160 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %drm160, align 8
  %dev161 = getelementptr inbounds %struct.nouveau_drm, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev161, align 8
  %dev162 = getelementptr inbounds %struct.drm_device, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %dev162 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev162, align 4
  %name163 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  %135 = ptrtoint ptr %gem to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %gem, align 8
  %shr = lshr i64 %136, 20
  %conv167 = trunc i64 %shr to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %134, ptr noundef nonnull @.str.13, ptr noundef %name163, i32 noundef %conv167) #8
  %137 = ptrtoint ptr %drm160 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %drm160, align 8
  %dev177 = getelementptr inbounds %struct.nouveau_drm, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %dev177 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev177, align 8
  %dev178 = getelementptr inbounds %struct.drm_device, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %dev178 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev178, align 4
  %143 = ptrtoint ptr %119 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %119, align 8
  %shr183 = lshr i64 %144, 20
  %conv184 = trunc i64 %shr183 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %142, ptr noundef nonnull @.str.17, ptr noundef %name163, i32 noundef %conv184) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body149, %do.body135, %do.body96, %do.body, %for.inc.i.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %for.inc.i43.i284.cleanup_crit_edge, %for.inc.i.i274.cleanup_crit_edge, %for.inc.i43.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call75, %do.body ], [ %retval.1.i309, %do.body96 ], [ %call132, %do.body135 ], [ 0, %do.body149 ], [ -38, %entry.cleanup_crit_edge ], [ -38, %if.then36.cleanup_crit_edge ], [ -38, %for.inc.i.cleanup_crit_edge ], [ -38, %for.inc.i43.i284.cleanup_crit_edge ], [ -38, %for.inc.i.i274.cleanup_crit_edge ], [ -38, %for.inc.i43.i.cleanup_crit_edge ], [ -38, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_ttm_init_gtt(ptr noundef %drm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gart_available = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %gart_available to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gart_available, align 8
  %shr = lshr i64 %1, 12
  %conv = trunc i64 %shr to i32
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 4
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp ugt i8 %3, 5
  br i1 %cmp, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.else:                                          ; preds = %entry
  %agp = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 7
  %4 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %agp, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else.if.end5_crit_edge, label %if.else4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %ttm = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8
  %call.i = tail call i32 @ttm_range_man_init_nocheck(ptr noundef %ttm, i32 noundef 1, i1 noundef zeroext true, i32 noundef %conv) #5
  br label %cleanup

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %func.0 = phi ptr [ @nouveau_gart_manager, %entry.if.end5_crit_edge ], [ @nv04_gart_manager, %if.else.if.end5_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 104) #9
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %func10 = getelementptr inbounds %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %func10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %func.0, ptr %func10, align 8
  %use_tt = getelementptr inbounds %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %use_tt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %use_tt, align 1
  tail call void @ttm_resource_manager_init(ptr noundef nonnull %call7.i.i, i32 noundef %conv) #5
  %arrayidx.i = getelementptr %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  %arrayidx.i25 = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.i25, align 8
  %cmp.i.not.i = icmp eq ptr %11, %arrayidx.i25
  br i1 %cmp.i.not.i, label %if.end9.if.end.i_crit_edge, label %do.end.i, !prof !46

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end9.if.end.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.1.i, align 8
  %cmp.i.not.1.i = icmp eq ptr %13, %arrayidx.1.i
  br i1 %cmp.i.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %do.end.1.i, !prof !46

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1.i

do.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %do.end.1.i, %if.end.i.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.2.i, align 8
  %cmp.i.not.2.i = icmp eq ptr %15, %arrayidx.2.i
  br i1 %cmp.i.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %do.end.2.i, !prof !46

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2.i

do.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %do.end.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.ttm_resource_manager, ptr %call7.i.i, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx.3.i, align 8
  %cmp.i.not.3.i = icmp eq ptr %17, %arrayidx.3.i
  br i1 %cmp.i.not.3.i, label %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge, label %do.end.3.i, !prof !46

if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_resource_manager_set_used.exit

do.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %ttm_resource_manager_set_used.exit

ttm_resource_manager_set_used.exit:               ; preds = %do.end.3.i, %if.end.2.i.ttm_resource_manager_set_used.exit_crit_edge
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ttm_resource_manager_set_used.exit, %if.end5.cleanup_crit_edge, %if.else4
  %retval.0 = phi i32 [ 0, %ttm_resource_manager_set_used.exit ], [ %call.i, %if.else4 ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_ttm_fini(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.189, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 8
  %ttm.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8
  %arrayidx.i.i = getelementptr %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 4
  %6 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp.i = icmp ugt i8 %7, 5
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %arrayidx.i17.i = getelementptr %struct.ttm_resource_manager, ptr %5, i32 0, i32 5, i32 0
  %8 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i17.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %arrayidx.i17.i
  br i1 %cmp.i.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !46

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.if.end.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.ttm_resource_manager, ptr %5, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.1.i.i, align 4
  %cmp.i.not.1.i.i = icmp eq ptr %11, %arrayidx.1.i.i
  br i1 %cmp.i.not.1.i.i, label %if.end.i.i.if.end.1.i.i_crit_edge, label %do.end.1.i.i, !prof !46

if.end.i.i.if.end.1.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1.i.i

do.end.1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.1.i.i

if.end.1.i.i:                                     ; preds = %do.end.1.i.i, %if.end.i.i.if.end.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr %struct.ttm_resource_manager, ptr %5, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.2.i.i, align 4
  %cmp.i.not.2.i.i = icmp eq ptr %13, %arrayidx.2.i.i
  br i1 %cmp.i.not.2.i.i, label %if.end.1.i.i.if.end.2.i.i_crit_edge, label %do.end.2.i.i, !prof !46

if.end.1.i.i.if.end.2.i.i_crit_edge:              ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2.i.i

do.end.2.i.i:                                     ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.2.i.i

if.end.2.i.i:                                     ; preds = %do.end.2.i.i, %if.end.1.i.i.if.end.2.i.i_crit_edge
  %arrayidx.3.i.i = getelementptr %struct.ttm_resource_manager, ptr %5, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.3.i.i, align 4
  %cmp.i.not.3.i.i = icmp eq ptr %15, %arrayidx.3.i.i
  br i1 %cmp.i.not.3.i.i, label %if.end.2.i.i.ttm_resource_manager_set_used.exit.i_crit_edge, label %do.end.3.i.i, !prof !46

if.end.2.i.i.ttm_resource_manager_set_used.exit.i_crit_edge: ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_resource_manager_set_used.exit.i

do.end.3.i.i:                                     ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %ttm_resource_manager_set_used.exit.i

ttm_resource_manager_set_used.exit.i:             ; preds = %do.end.3.i.i, %if.end.2.i.i.ttm_resource_manager_set_used.exit.i_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %5, align 8
  %call4.i = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %ttm.i, ptr noundef %5) #5
  %move.i.i = getelementptr inbounds %struct.ttm_resource_manager, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %move.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %move.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %ttm_resource_manager_set_used.exit.i.ttm_resource_manager_cleanup.exit.i_crit_edge, label %if.then.i.i.i

ttm_resource_manager_set_used.exit.i.ttm_resource_manager_cleanup.exit.i_crit_edge: ; preds = %ttm_resource_manager_set_used.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_resource_manager_cleanup.exit.i

if.then.i.i.i:                                    ; preds = %ttm_resource_manager_set_used.exit.i
  %refcount.i.i.i = getelementptr inbounds %struct.dma_fence, ptr %18, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #5
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #5, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.ttm_resource_manager_cleanup.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.i.i.ttm_resource_manager_cleanup.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_resource_manager_cleanup.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #5
  br label %ttm_resource_manager_cleanup.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @dma_fence_release(ptr noundef %refcount.i.i.i) #5
  br label %ttm_resource_manager_cleanup.exit.i

ttm_resource_manager_cleanup.exit.i:              ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.ttm_resource_manager_cleanup.exit.i_crit_edge, %ttm_resource_manager_set_used.exit.i.ttm_resource_manager_cleanup.exit.i_crit_edge
  %20 = ptrtoint ptr %move.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %move.i.i, align 8
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %5) #5
  br label %nouveau_ttm_fini_vram.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @ttm_range_man_fini_nocheck(ptr noundef %ttm.i, i32 noundef 2) #5
  br label %nouveau_ttm_fini_vram.exit

nouveau_ttm_fini_vram.exit:                       ; preds = %if.else.i, %ttm_resource_manager_cleanup.exit.i
  %arrayidx.i.i17 = getelementptr %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i17, align 4
  %24 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %25)
  %cmp.i19 = icmp ult i8 %25, 6
  br i1 %cmp.i19, label %land.lhs.true.i, label %nouveau_ttm_fini_vram.exit.if.else.i23_crit_edge

nouveau_ttm_fini_vram.exit.if.else.i23_crit_edge: ; preds = %nouveau_ttm_fini_vram.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i23

land.lhs.true.i:                                  ; preds = %nouveau_ttm_fini_vram.exit
  %agp.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 7
  %26 = ptrtoint ptr %agp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %agp.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i23_crit_edge, label %if.then.i21

land.lhs.true.i.if.else.i23_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i23

if.then.i21:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i20 = tail call i32 @ttm_range_man_fini_nocheck(ptr noundef %ttm.i, i32 noundef 1) #5
  br label %nouveau_ttm_fini_gtt.exit

if.else.i23:                                      ; preds = %land.lhs.true.i.if.else.i23_crit_edge, %nouveau_ttm_fini_vram.exit.if.else.i23_crit_edge
  %arrayidx.i18.i = getelementptr %struct.ttm_resource_manager, ptr %23, i32 0, i32 5, i32 0
  %28 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx.i18.i, align 4
  %cmp.i.not.i.i22 = icmp eq ptr %29, %arrayidx.i18.i
  br i1 %cmp.i.not.i.i22, label %if.else.i23.if.end.i.i27_crit_edge, label %do.end.i.i24, !prof !46

if.else.i23.if.end.i.i27_crit_edge:               ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i27

do.end.i.i24:                                     ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i27

if.end.i.i27:                                     ; preds = %do.end.i.i24, %if.else.i23.if.end.i.i27_crit_edge
  %arrayidx.1.i.i25 = getelementptr %struct.ttm_resource_manager, ptr %23, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx.1.i.i25, align 4
  %cmp.i.not.1.i.i26 = icmp eq ptr %31, %arrayidx.1.i.i25
  br i1 %cmp.i.not.1.i.i26, label %if.end.i.i27.if.end.1.i.i31_crit_edge, label %do.end.1.i.i28, !prof !46

if.end.i.i27.if.end.1.i.i31_crit_edge:            ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1.i.i31

do.end.1.i.i28:                                   ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.1.i.i31

if.end.1.i.i31:                                   ; preds = %do.end.1.i.i28, %if.end.i.i27.if.end.1.i.i31_crit_edge
  %arrayidx.2.i.i29 = getelementptr %struct.ttm_resource_manager, ptr %23, i32 0, i32 5, i32 2
  %32 = ptrtoint ptr %arrayidx.2.i.i29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %arrayidx.2.i.i29, align 4
  %cmp.i.not.2.i.i30 = icmp eq ptr %33, %arrayidx.2.i.i29
  br i1 %cmp.i.not.2.i.i30, label %if.end.1.i.i31.if.end.2.i.i35_crit_edge, label %do.end.2.i.i32, !prof !46

if.end.1.i.i31.if.end.2.i.i35_crit_edge:          ; preds = %if.end.1.i.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2.i.i35

do.end.2.i.i32:                                   ; preds = %if.end.1.i.i31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %if.end.2.i.i35

if.end.2.i.i35:                                   ; preds = %do.end.2.i.i32, %if.end.1.i.i31.if.end.2.i.i35_crit_edge
  %arrayidx.3.i.i33 = getelementptr %struct.ttm_resource_manager, ptr %23, i32 0, i32 5, i32 3
  %34 = ptrtoint ptr %arrayidx.3.i.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx.3.i.i33, align 4
  %cmp.i.not.3.i.i34 = icmp eq ptr %35, %arrayidx.3.i.i33
  br i1 %cmp.i.not.3.i.i34, label %if.end.2.i.i35.ttm_resource_manager_set_used.exit.i39_crit_edge, label %do.end.3.i.i36, !prof !46

if.end.2.i.i35.ttm_resource_manager_set_used.exit.i39_crit_edge: ; preds = %if.end.2.i.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_resource_manager_set_used.exit.i39

do.end.3.i.i36:                                   ; preds = %if.end.2.i.i35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %ttm_resource_manager_set_used.exit.i39

ttm_resource_manager_set_used.exit.i39:           ; preds = %do.end.3.i.i36, %if.end.2.i.i35.ttm_resource_manager_set_used.exit.i39_crit_edge
  %36 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %23, align 8
  %call7.i = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %ttm.i, ptr noundef %23) #5
  %move.i.i37 = getelementptr inbounds %struct.ttm_resource_manager, ptr %23, i32 0, i32 6
  %37 = ptrtoint ptr %move.i.i37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %move.i.i37, align 8
  %tobool.not.i.i.i38 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i38, label %ttm_resource_manager_set_used.exit.i39.ttm_resource_manager_cleanup.exit.i49_crit_edge, label %if.then.i.i.i44

ttm_resource_manager_set_used.exit.i39.ttm_resource_manager_cleanup.exit.i49_crit_edge: ; preds = %ttm_resource_manager_set_used.exit.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_resource_manager_cleanup.exit.i49

if.then.i.i.i44:                                  ; preds = %ttm_resource_manager_set_used.exit.i39
  %refcount.i.i.i40 = getelementptr inbounds %struct.dma_fence, ptr %38, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i40, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i40, i32 1, i32 3, i32 1) #5
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i40, ptr %refcount.i.i.i40, i32 1, ptr elementtype(i32) %refcount.i.i.i40) #5, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i.i.i42 = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i42)
  %cmp.i.i.i.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i42, 1
  br i1 %cmp.i.i.i.i.i.i.i43, label %if.then.i.i.i.i48, label %if.end5.i.i.i.i.i.i.i46

if.end5.i.i.i.i.i.i.i46:                          ; preds = %if.then.i.i.i44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i42)
  %.not.i.i.i.i.i.i.i45 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i42, 0
  br i1 %.not.i.i.i.i.i.i.i45, label %if.end5.i.i.i.i.i.i.i46.ttm_resource_manager_cleanup.exit.i49_crit_edge, label %if.then10.i.i.i.i.i.i.i47, !prof !46

if.end5.i.i.i.i.i.i.i46.ttm_resource_manager_cleanup.exit.i49_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %ttm_resource_manager_cleanup.exit.i49

if.then10.i.i.i.i.i.i.i47:                        ; preds = %if.end5.i.i.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i40, i32 noundef 3) #5
  br label %ttm_resource_manager_cleanup.exit.i49

if.then.i.i.i.i48:                                ; preds = %if.then.i.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @dma_fence_release(ptr noundef %refcount.i.i.i40) #5
  br label %ttm_resource_manager_cleanup.exit.i49

ttm_resource_manager_cleanup.exit.i49:            ; preds = %if.then.i.i.i.i48, %if.then10.i.i.i.i.i.i.i47, %if.end5.i.i.i.i.i.i.i46.ttm_resource_manager_cleanup.exit.i49_crit_edge, %ttm_resource_manager_set_used.exit.i39.ttm_resource_manager_cleanup.exit.i49_crit_edge
  %40 = ptrtoint ptr %move.i.i37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %move.i.i37, align 8
  %41 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx.i.i17, align 4
  tail call void @kfree(ptr noundef %23) #5
  br label %nouveau_ttm_fini_gtt.exit

nouveau_ttm_fini_gtt.exit:                        ; preds = %ttm_resource_manager_cleanup.exit.i49, %if.then.i21
  tail call void @ttm_device_fini(ptr noundef %ttm.i) #5
  %mtrr = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 5
  %42 = ptrtoint ptr %mtrr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %mtrr, align 8
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resource_addr, align 4
  %call = tail call i32 %46(ptr noundef %3, i32 noundef 1) #5
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 8
  %resource_size = getelementptr inbounds %struct.nvkm_device_func, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %resource_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %resource_size, align 4
  %call7 = tail call i32 %50(ptr noundef %3, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_device_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_mem_new(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_mem_vram(ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_mem_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_get(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_manager_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_range_man_init_nocheck(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_range_man_fini_nocheck(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @nouveau_vram_manager, !1, !"nouveau_vram_manager", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_ttm.c", i32 72, i32 40}
!2 = !{ptr @nouveau_gart_manager, !3, !"nouveau_gart_manager", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nouveau_ttm.c", i32 96, i32 40}
!4 = !{ptr @nv04_gart_manager, !5, !"nv04_gart_manager", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nouveau_ttm.c", i32 129, i32 40}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nouveau_ttm.c", i32 287, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nouveau_ttm_init._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @nouveau_ttm_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nouveau_ttm.c", i32 299, i32 3}
!16 = !{ptr @nouveau_ttm_init._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nouveau_ttm_init._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nouveau_ttm.c", i32 315, i32 3}
!20 = !{ptr @nouveau_ttm_init._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nouveau_ttm_init._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @nouveau_ttm_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nouveau_ttm.c", i32 319, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nouveau_ttm.c", i32 322, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nouveau_ttm_init._entry.12, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @nouveau_ttm_init._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nouveau_ttm.c", i32 323, i32 2}
!32 = !{ptr @nouveau_ttm_init._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @nouveau_ttm_init._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/drm/ttm/ttm_resource.h", i32 229, i32 3}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2148566715}
!48 = !{i64 2148481179, i64 2148481211, i64 2148481240, i64 2148481274, i64 2148481305, i64 2148481328}
!49 = !{i64 2149612685}
