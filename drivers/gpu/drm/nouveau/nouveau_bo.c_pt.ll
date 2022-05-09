; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_bo.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct._method_table = type { ptr, i32, i32, ptr, ptr }
%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.92 }
%struct.anon.92 = type { ptr, i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.98, %struct.anon.99, %struct.anon.100, ptr, %struct.anon.101, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.102, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.114 }
%struct.nvif_parent = type { ptr }
%struct.anon.98 = type { ptr, i32, i32, i8 }
%struct.anon.99 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.100 = type { i64, i64 }
%struct.anon.101 = type { i32, i64 }
%struct.anon.102 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.109, %struct.anon.110, %struct.anon.111, %struct.anon.112 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.103, i8 }
%union.anon.103 = type { %struct.anon.107 }
%struct.anon.107 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.109 = type { i32 }
%struct.anon.110 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.111 = type { i16, i16 }
%struct.anon.112 = type { i16, i16, i16, %struct.anon.113, i16 }
%struct.anon.113 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.114 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.anon.96 = type { i8, i8 }
%struct.anon.93 = type { i8, i8 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.nouveau_channel = type { %struct.anon.91, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.94, i8, ptr, %struct.anon.97, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.91 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.94 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.97 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.191 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.anon.192 = type { %struct.nvkm_object, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.189, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.189 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.148, %struct.anon.149, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.148 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.149 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.anon.193 = type { %struct.nvkm_object, ptr }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.nvif_vma = type { i64, i64 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.195 = type { %struct.nv50_mem_map_v0 }
%struct.nv50_mem_map_v0 = type { i8, i8, i8, i8 }
%struct.anon.194 = type { %struct.nvkm_object, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.88, i64, i64, i32, %struct.kref, i32 }
%union.anon.88 = type { i64 }

@nouveau_bo_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: skipped size %016llx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nouveau_bo_alloc\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/nouveau/nouveau_bo.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nouveau_bo_alloc._entry_ptr = internal global ptr @nouveau_bo_alloc._entry, section ".printk_index", align 4
@nouveau_bo_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 456, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: bo %p pinned elsewhere: 0x%08x vs 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nouveau_bo_pin\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nouveau_bo_pin._entry_ptr = internal global ptr @nouveau_bo_pin._entry, section ".printk_index", align 4
@nouveau_bo_sync_for_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 558, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: ttm_dma 0x%p: pages NULL\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nouveau_bo_sync_for_device\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nouveau_bo_sync_for_device._entry_ptr = internal global ptr @nouveau_bo_sync_for_device._entry, section ".printk_index", align 4
@nouveau_bo_sync_for_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.11, ptr @.str.2, i32 594, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nouveau_bo_sync_for_cpu\00", [40 x i8] zeroinitializer }, align 32
@nouveau_bo_sync_for_cpu._entry_ptr = internal global ptr @nouveau_bo_sync_for_cpu._entry, section ".printk_index", align 4
@nouveau_bo_move_init._methods = internal constant { [21 x %struct._method_table], [124 x i8] } { [21 x %struct._method_table] [%struct._method_table { ptr @.str.12, i32 4, i32 51125, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.12, i32 4, i32 50613, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.13, i32 0, i32 50613, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.12, i32 4, i32 50101, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.13, i32 0, i32 50101, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.12, i32 4, i32 49589, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.13, i32 0, i32 49589, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.12, i32 4, i32 49333, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.13, i32 0, i32 49333, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.12, i32 4, i32 45237, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.13, i32 0, i32 45237, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.12, i32 4, i32 41141, ptr @nve0_bo_move_copy, ptr @nve0_bo_move_init }, %struct._method_table { ptr @.str.13, i32 0, i32 41141, ptr @nve0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.14, i32 5, i32 37048, ptr @nvc0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.15, i32 4, i32 37045, ptr @nvc0_bo_move_copy, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.12, i32 0, i32 34229, ptr @nva3_bo_move_copy, ptr @nv50_bo_move_init }, %struct._method_table { ptr @.str.16, i32 0, i32 29889, ptr @nv84_bo_move_exec, ptr @nv50_bo_move_init }, %struct._method_table { ptr @.str.17, i32 0, i32 36921, ptr @nvc0_bo_move_m2mf, ptr @nvc0_bo_move_init }, %struct._method_table { ptr @.str.17, i32 0, i32 20537, ptr @nv50_bo_move_m2mf, ptr @nv50_bo_move_init }, %struct._method_table { ptr @.str.17, i32 0, i32 57, ptr @nv04_bo_move_m2mf, ptr @nv04_bo_move_init }, %struct._method_table zeroinitializer], [124 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"COPY\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GRCE\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"COPY1\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"COPY0\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CRYPT\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"M2MF\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPU\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ttmBoMove\00", [22 x i8] zeroinitializer }, align 32
@nouveau_bo_move_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 901, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: MM: using %s for buffer copies\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nouveau_bo_move_init\00", [43 x i8] zeroinitializer }, align 32
@nouveau_bo_move_init._entry_ptr = internal global ptr @nouveau_bo_move_init._entry, section ".printk_index", align 4
@nouveau_bo_driver = dso_local global { %struct.ttm_device_funcs, [36 x i8] } { %struct.ttm_device_funcs { ptr @nouveau_ttm_tt_create, ptr @nouveau_ttm_tt_populate, ptr @nouveau_ttm_tt_unpopulate, ptr @nouveau_ttm_tt_destroy, ptr @ttm_bo_eviction_valuable, ptr @nouveau_bo_evict_flags, ptr @nouveau_bo_move, ptr @nouveau_bo_delete_mem_notify, ptr null, ptr @nouveau_ttm_io_mem_reserve, ptr @nouveau_ttm_io_mem_free, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@drm_vma_node_reset.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&node->vm_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/drm/ttm/ttm_bo_driver.h\00", [32 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/drm/ttm/ttm_bo_api.h\00", [35 x i8] zeroinitializer }, align 32
@ttm_bo_pin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ttm_bo_unpin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ttm_bo_unpin.__already_done.25 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@nouveau_bo_move._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 993, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Moving pinned object %p!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nouveau_bo_move\00", [16 x i8] zeroinitializer }, align 32
@nouveau_bo_move._entry_ptr = internal global ptr @nouveau_bo_move._entry, section ".printk_index", align 4
@dma_resv_excl_fence.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/dma-resv.h\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 2147504139, i64 2147520523]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 210, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 454, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 558, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 594, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [9 x i8] c"_methods\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 846, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 847, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 849, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 860, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 861, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 863, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 864, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 870, i32 21 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 883, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 901, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"nouveau_bo_driver\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1316, i32 25 }
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [33 x i8] c"../include/drm/drm_vma_manager.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 151, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [35 x i8] c"../include/drm/ttm/ttm_bo_driver.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 140, i32 7 }
@___asan_gen_.135 = private unnamed_addr constant [32 x i8] c"../include/drm/ttm/ttm_bo_api.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 551, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private constant [40 x i8] c"../drivers/gpu/drm/nouveau/nouveau_bo.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 993, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [28 x i8] c"../include/linux/dma-resv.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 440, i32 9 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @nouveau_bo_alloc._entry, ptr @nouveau_bo_alloc._entry_ptr, ptr @nouveau_bo_move._entry, ptr @nouveau_bo_move._entry_ptr, ptr @nouveau_bo_move_init._entry, ptr @nouveau_bo_move_init._entry_ptr, ptr @nouveau_bo_pin._entry, ptr @nouveau_bo_pin._entry_ptr, ptr @nouveau_bo_sync_for_cpu._entry, ptr @nouveau_bo_sync_for_cpu._entry_ptr, ptr @nouveau_bo_sync_for_device._entry, ptr @nouveau_bo_sync_for_device._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @nouveau_bo_move_init._methods, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @nouveau_bo_driver, ptr @drm_vma_node_reset.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_bo_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_bo_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_bo_sync_for_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_bo_sync_for_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_bo_move_init._methods to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_bo_move_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_bo_driver to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_vma_node_reset.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_bo_move._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nouveau_bo_alloc(ptr nocapture noundef readonly %cli, ptr nocapture noundef %size, ptr nocapture noundef %align, i32 noundef %domain, i32 noundef %tile_mode, i32 noundef %tile_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drm1 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 1
  %0 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm1, align 8
  %svm = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 6
  %2 = ptrtoint ptr %svm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %svm, align 8
  %tobool.not = icmp eq ptr %3, null
  %vmm5 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 6, i32 1
  %vmm7 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 5, i32 1
  %cond = select i1 %tobool.not, ptr %vmm7, ptr %vmm5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool8.not = icmp eq i64 %5, 0
  br i1 %tobool8.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %drm10 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %drm10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drm10, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev11, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %name, i64 noundef 0) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 624) #13
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %head = getelementptr inbounds %struct.nouveau_bo, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %head, ptr %head, align 8
  %prev.i = getelementptr inbounds %struct.nouveau_bo, ptr %call7.i.i, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %head, ptr %prev.i, align 4
  %entry19 = getelementptr inbounds %struct.nouveau_bo, ptr %call7.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i314 = getelementptr inbounds %struct.nouveau_bo, ptr %call7.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i314 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry19, ptr %prev.i314, align 8
  %vma_list = getelementptr inbounds %struct.nouveau_bo, ptr %call7.i.i, i32 0, i32 14
  %17 = ptrtoint ptr %vma_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %vma_list, ptr %vma_list, align 8
  %prev.i315 = getelementptr inbounds %struct.nouveau_bo, ptr %call7.i.i, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %prev.i315 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vma_list, ptr %prev.i315, align 4
  %ttm = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 8
  %bdev20 = getelementptr inbounds %struct.ttm_buffer_object, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %bdev20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ttm, ptr %bdev20, align 8
  %and = and i32 %domain, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end18.if.end26_crit_edge, label %if.then22

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then22:                                        ; preds = %if.end18
  %type.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 4, i32 8
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type.i, align 8
  %type_host.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 8, i32 7
  %22 = ptrtoint ptr %type_host.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type_host.i, align 8
  %arrayidx2.i = getelementptr %struct.anon.96, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %tobool.not.i = icmp sgt i8 %25, -1
  br i1 %tobool.not.i, label %if.then22.if.end26_crit_edge, label %if.then24

if.then22.if.end26_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %force_coherent = getelementptr inbounds %struct.nouveau_bo, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %force_coherent to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %force_coherent, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then22.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %family = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 3, i32 1, i32 4
  %27 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %28)
  %cmp = icmp ugt i8 %28, 6
  br i1 %cmp, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  %kind = getelementptr inbounds %struct.nouveau_bo, ptr %call7.i.i, i32 0, i32 15
  %29 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load = load i32, ptr %kind, align 8
  %30 = shl i32 %tile_flags, 10
  %bf.shl = and i32 %30, 66846720
  %bf.clear = and i32 %bf.load, -66846721
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %kind, align 8
  %bf.lshr = lshr exact i32 %bf.shl, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.shl)
  %tobool.not.i316 = icmp eq i32 %bf.shl, 0
  br i1 %tobool.not.i316, label %if.then28.if.end37_crit_edge, label %if.then.i

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then.i:                                        ; preds = %if.then28
  %kind_nr.i = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4, i32 5
  %31 = ptrtoint ptr %kind_nr.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %kind_nr.i, align 4
  %33 = trunc i32 %bf.lshr to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %33)
  %cmp.not.i = icmp ugt i16 %32, %33
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i.if.then35_crit_edge

if.then.i.if.then35_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

lor.lhs.false.i:                                  ; preds = %if.then.i
  %kind3.i = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4, i32 9
  %34 = ptrtoint ptr %kind3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %kind3.i, align 4
  %arrayidx.i = getelementptr i8, ptr %35, i32 %bf.lshr
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %kind_inv.i = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %kind_inv.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %kind_inv.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp6.i = icmp eq i8 %37, %39
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then35_crit_edge, label %lor.lhs.false.i.if.end37_crit_edge

lor.lhs.false.i.if.end37_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

lor.lhs.false.i.if.then35_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.i.if.then35_crit_edge, %if.then.i.if.then35_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false.i.if.end37_crit_edge, %if.then28.if.end37_crit_edge
  %kind38 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4, i32 9
  %40 = ptrtoint ptr %kind38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %kind38, align 4
  %bf.lshr41 = lshr i32 %bf.set, 18
  %bf.clear42 = and i32 %bf.lshr41, 255
  %arrayidx = getelementptr i8, ptr %41, i32 %bf.clear42
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx, align 1
  %44 = trunc i32 %bf.lshr41 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %44)
  %cmp48.not = icmp eq i8 %43, %44
  %bf.shl52 = select i1 %cmp48.not, i32 0, i32 32768
  %bf.clear53 = and i32 %bf.set, -229377
  %bf.set54 = or i32 %bf.shl52, %bf.clear53
  %45 = ptrtoint ptr %kind to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %bf.set54, ptr %kind, align 8
  br label %if.end95

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %28)
  %cmp59 = icmp eq i8 %28, 6
  %kind64 = getelementptr inbounds %struct.nouveau_bo, ptr %call7.i.i, i32 0, i32 15
  %46 = ptrtoint ptr %kind64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load65 = load i32, ptr %kind64, align 8
  br i1 %cmp59, label %if.then61, label %if.else87

if.then61:                                        ; preds = %if.else
  %47 = shl i32 %tile_flags, 10
  %bf.shl67 = and i32 %47, 33292288
  %bf.clear68 = and i32 %bf.load65, -67076097
  %48 = lshr i32 %tile_flags, 1
  %bf.shl75 = and i32 %48, 98304
  %bf.set69 = or i32 %bf.shl75, %bf.shl67
  %bf.set77 = or i32 %bf.set69, %bf.clear68
  %49 = ptrtoint ptr %kind64 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %bf.set77, ptr %kind64, align 8
  %bf.lshr80 = lshr exact i32 %bf.shl67, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.shl67)
  %tobool.not.i317 = icmp eq i32 %bf.shl67, 0
  br i1 %tobool.not.i317, label %if.then61.if.end95_crit_edge, label %if.then.i320

if.then61.if.end95_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then.i320:                                     ; preds = %if.then61
  %kind_nr.i318 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %kind_nr.i318 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %kind_nr.i318, align 4
  %52 = trunc i32 %bf.lshr80 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %52)
  %cmp.not.i319 = icmp ugt i16 %51, %52
  br i1 %cmp.not.i319, label %lor.lhs.false.i326, label %if.then.i320.if.then84_crit_edge

if.then.i320.if.then84_crit_edge:                 ; preds = %if.then.i320
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then84

lor.lhs.false.i326:                               ; preds = %if.then.i320
  %kind3.i322 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4, i32 9
  %53 = ptrtoint ptr %kind3.i322 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %kind3.i322, align 4
  %arrayidx.i323 = getelementptr i8, ptr %54, i32 %bf.lshr80
  %55 = ptrtoint ptr %arrayidx.i323 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i323, align 1
  %kind_inv.i324 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4, i32 4
  %57 = ptrtoint ptr %kind_inv.i324 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %kind_inv.i324, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %58)
  %cmp6.i325 = icmp eq i8 %56, %58
  br i1 %cmp6.i325, label %lor.lhs.false.i326.if.then84_crit_edge, label %lor.lhs.false.i326.if.end95_crit_edge

lor.lhs.false.i326.if.end95_crit_edge:            ; preds = %lor.lhs.false.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

lor.lhs.false.i326.if.then84_crit_edge:           ; preds = %lor.lhs.false.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then84

if.then84:                                        ; preds = %lor.lhs.false.i326.if.then84_crit_edge, %if.then.i320.if.then84_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.else87:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and88 = shl i32 %tile_flags, 12
  %bf.shl91 = and i32 %and88, 28672
  %bf.clear92 = and i32 %bf.load65, -28673
  %bf.set93 = or i32 %bf.clear92, %bf.shl91
  %59 = ptrtoint ptr %kind64 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %bf.set93, ptr %kind64, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.else87, %lor.lhs.false.i326.if.end95_crit_edge, %if.then61.if.end95_crit_edge, %if.end37
  %mode = getelementptr inbounds %struct.nouveau_bo, ptr %call7.i.i, i32 0, i32 16
  %60 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %tile_mode, ptr %mode, align 4
  %and96 = lshr i32 %tile_flags, 3
  %61 = xor i32 %and96, -1
  %contig = getelementptr inbounds %struct.nouveau_bo, ptr %call7.i.i, i32 0, i32 15
  %62 = ptrtoint ptr %contig to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load98 = load i32, ptr %contig, align 8
  %bf.shl100 = shl i32 %61, 31
  %bf.clear101 = and i32 %bf.load98, 2147483647
  %bf.set102 = or i32 %bf.clear101, %bf.shl100
  store i32 %bf.set102, ptr %contig, align 8
  %page_nr = getelementptr inbounds %struct.nvif_vmm, ptr %cond, i32 0, i32 4
  %63 = ptrtoint ptr %page_nr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %page_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp103336 = icmp sgt i32 %64, 0
  br i1 %cmp103336, label %for.body.lr.ph, label %if.end95.do.end179_crit_edge

if.end95.do.end179_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end179

for.body.lr.ph:                                   ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %28)
  %cmp109 = icmp ult i8 %28, 6
  %and111 = and i32 %domain, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  %or.cond = or i1 %tobool112.not, %cmp109
  %page = getelementptr inbounds %struct.nvif_vmm, ptr %cond, i32 0, i32 3
  %and120 = and i32 %domain, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  %65 = and i32 %bf.load98, 229376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool143.not = icmp eq i32 %65, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pi.0343 = phi i32 [ -1, %for.body.lr.ph ], [ %pi.2, %for.inc.for.body_crit_edge ]
  %i.0337 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %or.cond, label %for.body.if.end119_crit_edge, label %land.lhs.true113

for.body.if.end119_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

land.lhs.true113:                                 ; preds = %for.body
  %66 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %page, align 8
  %vram = getelementptr %struct.anon.93, ptr %67, i32 %i.0337, i32 1
  %68 = ptrtoint ptr %vram to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load115 = load i8, ptr %vram, align 1
  %69 = and i8 %bf.load115, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %bf.cast.not = icmp eq i8 %69, 0
  br i1 %bf.cast.not, label %land.lhs.true113.for.inc_crit_edge, label %land.lhs.true113.if.end119_crit_edge

land.lhs.true113.if.end119_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

land.lhs.true113.for.inc_crit_edge:               ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end119:                                        ; preds = %land.lhs.true113.if.end119_crit_edge, %for.body.if.end119_crit_edge
  br i1 %tobool121.not, label %if.end119.if.end135_crit_edge, label %land.lhs.true122

if.end119.if.end135_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

land.lhs.true122:                                 ; preds = %if.end119
  %70 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %page, align 8
  %host = getelementptr %struct.anon.93, ptr %71, i32 %i.0337, i32 1
  %72 = ptrtoint ptr %host to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load125 = load i8, ptr %host, align 1
  %73 = and i8 %bf.load125, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %bf.cast128.not = icmp eq i8 %73, 0
  br i1 %bf.cast128.not, label %land.lhs.true122.for.inc_crit_edge, label %lor.lhs.false

land.lhs.true122.for.inc_crit_edge:               ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true122
  %arrayidx124 = getelementptr %struct.anon.93, ptr %71, i32 %i.0337
  %74 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx124, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %75)
  %cmp132 = icmp ugt i8 %75, 12
  br i1 %cmp132, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.end135_crit_edge

lor.lhs.false.if.end135_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end135:                                        ; preds = %lor.lhs.false.if.end135_crit_edge, %if.end119.if.end135_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pi.0343)
  %cmp136 = icmp slt i32 %pi.0343, 0
  %or.cond335 = select i1 %cmp136, i1 true, i1 %tobool143.not
  br i1 %or.cond335, label %if.end135.if.then153_crit_edge, label %lor.lhs.false144

if.end135.if.then153_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then153

lor.lhs.false144:                                 ; preds = %if.end135
  %76 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %page, align 8
  %comp147 = getelementptr %struct.anon.93, ptr %77, i32 %i.0337, i32 1
  %78 = ptrtoint ptr %comp147 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load148 = load i8, ptr %comp147, align 1
  %79 = and i8 %bf.load148, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %bf.cast151.not = icmp eq i8 %79, 0
  br i1 %bf.cast151.not, label %lor.lhs.false144.if.end154_crit_edge, label %lor.lhs.false144.if.then153_crit_edge

lor.lhs.false144.if.then153_crit_edge:            ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then153

lor.lhs.false144.if.end154_crit_edge:             ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154

if.then153:                                       ; preds = %lor.lhs.false144.if.then153_crit_edge, %if.end135.if.then153_crit_edge
  br label %if.end154

if.end154:                                        ; preds = %if.then153, %lor.lhs.false144.if.end154_crit_edge
  %pi.1 = phi i32 [ %i.0337, %if.then153 ], [ %pi.0343, %lor.lhs.false144.if.end154_crit_edge ]
  %80 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %size, align 8
  %82 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %page, align 8
  %arrayidx156 = getelementptr %struct.anon.93, ptr %83, i32 %i.0337
  %84 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx156, align 1
  %sh_prom = zext i8 %85 to i64
  %.highbits = lshr i64 %81, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.highbits)
  %cmp159.not = icmp eq i64 %.highbits, 0
  br i1 %cmp159.not, label %if.end154.for.inc_crit_edge, label %if.end154.for.end_crit_edge

if.end154.for.end_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end154.for.inc_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end154.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true122.for.inc_crit_edge, %land.lhs.true113.for.inc_crit_edge
  %pi.2 = phi i32 [ %pi.0343, %lor.lhs.false.for.inc_crit_edge ], [ %pi.1, %if.end154.for.inc_crit_edge ], [ %pi.0343, %land.lhs.true122.for.inc_crit_edge ], [ %pi.0343, %land.lhs.true113.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0337, 1
  %exitcond.not = icmp eq i32 %inc, %64
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end154.for.end_crit_edge
  %pi.3 = phi i32 [ %pi.2, %for.inc.for.end_crit_edge ], [ %pi.1, %if.end154.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pi.3)
  %cmp163 = icmp slt i32 %pi.3, 0
  br i1 %cmp163, label %for.end.do.end179_crit_edge, label %if.end195, !prof !80

for.end.do.end179_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end179

do.end179:                                        ; preds = %for.end.do.end179_crit_edge, %if.end95.do.end179_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 284, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end195:                                        ; preds = %for.end
  %86 = and i32 %bf.load98, 229376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool200.not = icmp eq i32 %86, 0
  br i1 %tobool200.not, label %if.end195.if.end231_crit_edge, label %land.lhs.true201

if.end195.if.end231_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231

land.lhs.true201:                                 ; preds = %if.end195
  %page202 = getelementptr inbounds %struct.nvif_vmm, ptr %cond, i32 0, i32 3
  %87 = ptrtoint ptr %page202 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %page202, align 8
  %comp204 = getelementptr %struct.anon.93, ptr %88, i32 %pi.3, i32 1
  %89 = ptrtoint ptr %comp204 to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load205 = load i8, ptr %comp204, align 1
  %90 = and i8 %bf.load205, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %bf.cast208.not = icmp eq i8 %90, 0
  br i1 %bf.cast208.not, label %if.then209, label %land.lhs.true201.if.end231_crit_edge

land.lhs.true201.if.end231_crit_edge:             ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231

if.then209:                                       ; preds = %land.lhs.true201
  %oclass = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4, i32 0, i32 4
  %91 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147446776, i32 %92)
  %cmp210 = icmp ugt i32 %92, -2147446776
  br i1 %cmp210, label %if.then212, label %if.then209.if.end226_crit_edge

if.then209.if.end226_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end226

if.then212:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  %kind213 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4, i32 9
  %93 = ptrtoint ptr %kind213 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %kind213, align 4
  %bf.lshr216 = lshr i32 %bf.load98, 18
  %bf.clear217 = and i32 %bf.lshr216, 255
  %arrayidx218 = getelementptr i8, ptr %94, i32 %bf.clear217
  %95 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %96 to i32
  %bf.shl223 = shl nuw nsw i32 %conv219, 18
  %bf.clear224 = and i32 %bf.set102, -66846721
  %bf.set225 = or i32 %bf.shl223, %bf.clear224
  %97 = ptrtoint ptr %contig to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %bf.set225, ptr %contig, align 8
  br label %if.end226

if.end226:                                        ; preds = %if.then212, %if.then209.if.end226_crit_edge
  %98 = ptrtoint ptr %contig to i32
  call void @__asan_load4_noabort(i32 %98)
  %bf.load228 = load i32, ptr %contig, align 8
  %bf.clear229 = and i32 %bf.load228, -229377
  store i32 %bf.clear229, ptr %contig, align 8
  br label %if.end231

if.end231:                                        ; preds = %if.end226, %land.lhs.true201.if.end231_crit_edge, %if.end195.if.end231_crit_edge
  %page232 = getelementptr inbounds %struct.nvif_vmm, ptr %cond, i32 0, i32 3
  %99 = ptrtoint ptr %page232 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %page232, align 8
  %arrayidx233 = getelementptr %struct.anon.93, ptr %100, i32 %pi.3
  %101 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx233, align 1
  %103 = ptrtoint ptr %contig to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load237 = load i32, ptr %contig, align 8
  %104 = and i8 %102, 31
  %bf.value238 = zext i8 %104 to i32
  %bf.shl239 = shl nuw nsw i32 %bf.value238, 26
  %bf.clear240 = and i32 %bf.load237, -2080374785
  %bf.set241 = or i32 %bf.shl239, %bf.clear240
  store i32 %bf.set241, ptr %contig, align 8
  %105 = ptrtoint ptr %bdev20 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bdev20, align 8
  %family.i = getelementptr i8, ptr %106, i32 -715
  %107 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %108)
  %cmp.i = icmp ult i8 %108, 6
  br i1 %cmp.i, label %if.then.i331, label %if.else44.i

if.then.i331:                                     ; preds = %if.end231
  %109 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i330 = icmp eq i32 %110, 0
  br i1 %tobool.not.i330, label %if.then.i331.nouveau_bo_fixup_align.exit_crit_edge, label %if.then3.i

if.then.i331.nouveau_bo_fixup_align.exit_crit_edge: ; preds = %if.then.i331
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_bo_fixup_align.exit

if.then3.i:                                       ; preds = %if.then.i331
  %chipset.i = getelementptr i8, ptr %106, i32 -718
  %111 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %112)
  %cmp6.i332 = icmp ugt i16 %112, 63
  br i1 %cmp6.i332, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then3.i
  %113 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 65536, ptr %align, align 4
  %114 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %size, align 8
  %mul.i = shl i32 %110, 6
  %sub.i.i = add i32 %mul.i, -1
  %conv.i.i = zext i32 %sub.i.i to i64
  %add.i.i = add i64 %115, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp168.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp168.i.i, label %if.then172.i.i, label %if.else178.i.i, !prof !81

if.then172.i.i:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv173.i.i = trunc i64 %add.i.i to i32
  %div176.i.i = udiv i32 %conv173.i.i, %mul.i
  %conv177.i.i = zext i32 %div176.i.i to i64
  br label %roundup_64.exit.i

if.else178.i.i:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %add.i.i) #14, !srcloc !82
  %asmresult1.i.i.i = extractvalue { i64, i64 } %116, 1
  br label %roundup_64.exit.i

roundup_64.exit.i:                                ; preds = %if.else178.i.i, %if.then172.i.i
  %x.addr.0.i.i = phi i64 [ %conv177.i.i, %if.then172.i.i ], [ %asmresult1.i.i.i, %if.else178.i.i ]
  %conv184.i.i = zext i32 %mul.i to i64
  %mul185.i.i = mul i64 %x.addr.0.i.i, %conv184.i.i
  %117 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %mul185.i.i, ptr %size, align 8
  br label %nouveau_bo_fixup_align.exit

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %112)
  %cmp14.i = icmp ugt i16 %112, 47
  br i1 %cmp14.i, label %if.then16.i, label %if.else20.i

if.then16.i:                                      ; preds = %if.else.i
  %118 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 32768, ptr %align, align 4
  %119 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %size, align 8
  %mul18.i = shl i32 %110, 6
  %sub.i84.i = add i32 %mul18.i, -1
  %conv.i85.i = zext i32 %sub.i84.i to i64
  %add.i86.i = add i64 %120, %conv.i85.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i86.i)
  %cmp168.i191.i = icmp ult i64 %add.i86.i, 4294967296
  br i1 %cmp168.i191.i, label %if.then172.i196.i, label %if.else178.i198.i, !prof !81

if.then172.i196.i:                                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv173.i193.i = trunc i64 %add.i86.i to i32
  %div176.i194.i = udiv i32 %conv173.i193.i, %mul18.i
  %conv177.i195.i = zext i32 %div176.i194.i to i64
  br label %roundup_64.exit202.i

if.else178.i198.i:                                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  %121 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul18.i, i64 %add.i86.i) #14, !srcloc !82
  %asmresult1.i.i197.i = extractvalue { i64, i64 } %121, 1
  br label %roundup_64.exit202.i

roundup_64.exit202.i:                             ; preds = %if.else178.i198.i, %if.then172.i196.i
  %x.addr.0.i199.i = phi i64 [ %conv177.i195.i, %if.then172.i196.i ], [ %asmresult1.i.i197.i, %if.else178.i198.i ]
  %conv184.i200.i = zext i32 %mul18.i to i64
  %mul185.i201.i = mul i64 %x.addr.0.i199.i, %conv184.i200.i
  %122 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %mul185.i201.i, ptr %size, align 8
  br label %nouveau_bo_fixup_align.exit

if.else20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %112)
  %cmp24.i = icmp ugt i16 %112, 31
  br i1 %cmp24.i, label %if.then26.i, label %if.else30.i

if.then26.i:                                      ; preds = %if.else20.i
  %123 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 16384, ptr %align, align 4
  %124 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %size, align 8
  %mul28.i = shl i32 %110, 6
  %sub.i203.i = add i32 %mul28.i, -1
  %conv.i204.i = zext i32 %sub.i203.i to i64
  %add.i205.i = add i64 %125, %conv.i204.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i205.i)
  %cmp168.i310.i = icmp ult i64 %add.i205.i, 4294967296
  br i1 %cmp168.i310.i, label %if.then172.i315.i, label %if.else178.i317.i, !prof !81

if.then172.i315.i:                                ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv173.i312.i = trunc i64 %add.i205.i to i32
  %div176.i313.i = udiv i32 %conv173.i312.i, %mul28.i
  %conv177.i314.i = zext i32 %div176.i313.i to i64
  br label %roundup_64.exit321.i

if.else178.i317.i:                                ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  %126 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul28.i, i64 %add.i205.i) #14, !srcloc !82
  %asmresult1.i.i316.i = extractvalue { i64, i64 } %126, 1
  br label %roundup_64.exit321.i

roundup_64.exit321.i:                             ; preds = %if.else178.i317.i, %if.then172.i315.i
  %x.addr.0.i318.i = phi i64 [ %conv177.i314.i, %if.then172.i315.i ], [ %asmresult1.i.i316.i, %if.else178.i317.i ]
  %conv184.i319.i = zext i32 %mul28.i to i64
  %mul185.i320.i = mul i64 %x.addr.0.i318.i, %conv184.i319.i
  %127 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %mul185.i320.i, ptr %size, align 8
  br label %nouveau_bo_fixup_align.exit

if.else30.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %112)
  %cmp34.i = icmp ugt i16 %112, 15
  br i1 %cmp34.i, label %if.then36.i, label %if.else30.i.nouveau_bo_fixup_align.exit_crit_edge

if.else30.i.nouveau_bo_fixup_align.exit_crit_edge: ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_bo_fixup_align.exit

if.then36.i:                                      ; preds = %if.else30.i
  %128 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 16384, ptr %align, align 4
  %129 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %size, align 8
  %mul38.i = shl i32 %110, 5
  %sub.i322.i = add i32 %mul38.i, -1
  %conv.i323.i = zext i32 %sub.i322.i to i64
  %add.i324.i = add i64 %130, %conv.i323.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i324.i)
  %cmp168.i429.i = icmp ult i64 %add.i324.i, 4294967296
  br i1 %cmp168.i429.i, label %if.then172.i434.i, label %if.else178.i436.i, !prof !81

if.then172.i434.i:                                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv173.i431.i = trunc i64 %add.i324.i to i32
  %div176.i432.i = udiv i32 %conv173.i431.i, %mul38.i
  %conv177.i433.i = zext i32 %div176.i432.i to i64
  br label %roundup_64.exit440.i

if.else178.i436.i:                                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  %131 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul38.i, i64 %add.i324.i) #14, !srcloc !82
  %asmresult1.i.i435.i = extractvalue { i64, i64 } %131, 1
  br label %roundup_64.exit440.i

roundup_64.exit440.i:                             ; preds = %if.else178.i436.i, %if.then172.i434.i
  %x.addr.0.i437.i = phi i64 [ %conv177.i433.i, %if.then172.i434.i ], [ %asmresult1.i.i435.i, %if.else178.i436.i ]
  %conv184.i438.i = zext i32 %mul38.i to i64
  %mul185.i439.i = mul i64 %x.addr.0.i437.i, %conv184.i438.i
  %132 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %mul185.i439.i, ptr %size, align 8
  br label %nouveau_bo_fixup_align.exit

if.else44.i:                                      ; preds = %if.end231
  %133 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %size, align 8
  %shl.i = shl nuw i32 1, %bf.value238
  %sub.i441.i = add i32 %shl.i, -1
  %conv.i442.i = zext i32 %sub.i441.i to i64
  %add.i443.i = add i64 %134, %conv.i442.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i443.i)
  %cmp168.i497.i = icmp ult i64 %add.i443.i, 4294967296
  br i1 %cmp168.i497.i, label %if.then172.i502.i, label %if.else178.i504.i, !prof !81

if.then172.i502.i:                                ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv173.i499.i = trunc i64 %add.i443.i to i32
  %div176.i500515.i = lshr i32 %conv173.i499.i, %bf.value238
  %conv177.i501.i = zext i32 %div176.i500515.i to i64
  br label %roundup_64.exit508.i

if.else178.i504.i:                                ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #11
  %135 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i, i64 %add.i443.i) #14, !srcloc !82
  %asmresult1.i.i503.i = extractvalue { i64, i64 } %135, 1
  br label %roundup_64.exit508.i

roundup_64.exit508.i:                             ; preds = %if.else178.i504.i, %if.then172.i502.i
  %x.addr.0.i505.i = phi i64 [ %conv177.i501.i, %if.then172.i502.i ], [ %asmresult1.i.i503.i, %if.else178.i504.i ]
  %conv184.i506.i = zext i32 %shl.i to i64
  %mul185.i507.i = mul i64 %x.addr.0.i505.i, %conv184.i506.i
  %136 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %mul185.i507.i, ptr %size, align 8
  %137 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %align, align 4
  %139 = tail call i32 @llvm.smax.i32(i32 %shl.i, i32 %138) #9
  %140 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %align, align 4
  br label %nouveau_bo_fixup_align.exit

nouveau_bo_fixup_align.exit:                      ; preds = %roundup_64.exit508.i, %roundup_64.exit440.i, %if.else30.i.nouveau_bo_fixup_align.exit_crit_edge, %roundup_64.exit321.i, %roundup_64.exit202.i, %roundup_64.exit.i, %if.then.i331.nouveau_bo_fixup_align.exit_crit_edge
  %141 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %size, align 8
  %add.i509.i = add i64 %142, 4095
  %shr.i511.i = and i64 %add.i509.i, -4096
  store i64 %shr.i511.i, ptr %size, align 8
  br label %cleanup

cleanup:                                          ; preds = %nouveau_bo_fixup_align.exit, %do.end179, %if.then84, %if.then35, %if.end.cleanup_crit_edge, %do.body
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end179 ], [ %call7.i.i, %nouveau_bo_fixup_align.exit ], [ inttoptr (i32 -22 to ptr), %if.then35 ], [ inttoptr (i32 -22 to ptr), %if.then84 ], [ inttoptr (i32 -22 to ptr), %do.body ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_init(ptr noundef %nvbo, i64 noundef %size, i32 noundef %align, i32 noundef %domain, ptr noundef %sg, ptr noundef %robj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sg, null
  %cond = select i1 %tobool.not, i32 0, i32 2
  tail call void @nouveau_bo_placement_set(ptr noundef %nvbo, i32 noundef %domain, i32 noundef 0)
  %io_reserve_lru = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 8
  %0 = ptrtoint ptr %io_reserve_lru to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %io_reserve_lru, ptr %io_reserve_lru, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %io_reserve_lru, ptr %prev.i, align 4
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 1
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 8
  %conv = trunc i64 %size to i32
  %placement = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 1
  %shr = ashr i32 %align, 12
  %call = tail call i32 @ttm_bo_init(ptr noundef %3, ptr noundef %nvbo, i32 noundef %conv, i32 noundef %cond, ptr noundef %placement, i32 noundef %shr, i1 noundef zeroext false, ptr noundef %sg, ptr noundef %robj, ptr noundef nonnull @nouveau_bo_del_ttm) #9
  ret i32 %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_bo_placement_set(ptr noundef %nvbo, i32 noundef %domain, i32 noundef %busy) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %placement = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 1
  %placements = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 3
  %placement1 = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %placement1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %placements, ptr %placement1, align 4
  %1 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %placement, align 4
  %and.i = and i32 %domain, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 3, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %mem_type.i, align 4
  %flags.i = getelementptr %struct.nouveau_bo, ptr %nvbo, i32 0, i32 3, i32 0, i32 3
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags.i, align 4
  %4 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %placement, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %and2.i = and i32 %domain, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then4.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %placement, align 4
  %mem_type6.i = getelementptr %struct.ttm_place, ptr %placements, i32 %6, i32 2
  %7 = ptrtoint ptr %mem_type6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mem_type6.i, align 4
  %flags8.i = getelementptr %struct.ttm_place, ptr %placements, i32 %6, i32 3
  %8 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags8.i, align 4
  %9 = load i32, ptr %placement, align 4
  %inc9.i = add i32 %9, 1
  store i32 %inc9.i, ptr %placement, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then4.i, %if.end.i.if.end10.i_crit_edge
  %and11.i = and i32 %domain, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.set_placement_list.exit_crit_edge, label %if.then13.i

if.end10.i.set_placement_list.exit_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_placement_list.exit

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %placement, align 4
  %mem_type15.i = getelementptr %struct.ttm_place, ptr %placements, i32 %11, i32 2
  %12 = ptrtoint ptr %mem_type15.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mem_type15.i, align 4
  %inc16.i = add i32 %11, 1
  store i32 %inc16.i, ptr %placement, align 4
  %flags18.i = getelementptr %struct.ttm_place, ptr %placements, i32 %11, i32 3
  %13 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flags18.i, align 4
  br label %set_placement_list.exit

set_placement_list.exit:                          ; preds = %if.then13.i, %if.end10.i.set_placement_list.exit_crit_edge
  %busy_placements = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 4
  %busy_placement = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %busy_placement to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %busy_placements, ptr %busy_placement, align 4
  %num_busy_placement = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 1, i32 2
  %or = or i32 %busy, %domain
  %15 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %num_busy_placement, align 4
  %and.i17 = and i32 %or, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %set_placement_list.exit.if.end.i25_crit_edge, label %if.then.i22

set_placement_list.exit.if.end.i25_crit_edge:     ; preds = %set_placement_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i25

if.then.i22:                                      ; preds = %set_placement_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mem_type.i19 = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 4, i32 0, i32 2
  %16 = ptrtoint ptr %mem_type.i19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %mem_type.i19, align 4
  %flags.i20 = getelementptr %struct.nouveau_bo, ptr %nvbo, i32 0, i32 4, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %flags.i20, align 4
  %18 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %num_busy_placement, align 4
  br label %if.end.i25

if.end.i25:                                       ; preds = %if.then.i22, %set_placement_list.exit.if.end.i25_crit_edge
  %and2.i23 = and i32 %or, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i23)
  %tobool3.not.i24 = icmp eq i32 %and2.i23, 0
  br i1 %tobool3.not.i24, label %if.end.i25.if.end10.i32_crit_edge, label %if.then4.i29

if.end.i25.if.end10.i32_crit_edge:                ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i32

if.then4.i29:                                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_busy_placement, align 4
  %mem_type6.i26 = getelementptr %struct.ttm_place, ptr %busy_placements, i32 %20, i32 2
  %21 = ptrtoint ptr %mem_type6.i26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %mem_type6.i26, align 4
  %flags8.i27 = getelementptr %struct.ttm_place, ptr %busy_placements, i32 %20, i32 3
  %22 = ptrtoint ptr %flags8.i27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flags8.i27, align 4
  %inc9.i28 = add i32 %20, 1
  store i32 %inc9.i28, ptr %num_busy_placement, align 4
  br label %if.end10.i32

if.end10.i32:                                     ; preds = %if.then4.i29, %if.end.i25.if.end10.i32_crit_edge
  %and11.i30 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i30)
  %tobool12.not.i31 = icmp eq i32 %and11.i30, 0
  br i1 %tobool12.not.i31, label %if.end10.i32.set_placement_list.exit37_crit_edge, label %if.then13.i36

if.end10.i32.set_placement_list.exit37_crit_edge: ; preds = %if.end10.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_placement_list.exit37

if.then13.i36:                                    ; preds = %if.end10.i32
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_busy_placement, align 4
  %mem_type15.i33 = getelementptr %struct.ttm_place, ptr %busy_placements, i32 %24, i32 2
  %25 = ptrtoint ptr %mem_type15.i33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %mem_type15.i33, align 4
  %inc16.i34 = add i32 %24, 1
  store i32 %inc16.i34, ptr %num_busy_placement, align 4
  %flags18.i35 = getelementptr %struct.ttm_place, ptr %busy_placements, i32 %24, i32 3
  %26 = ptrtoint ptr %flags18.i35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flags18.i35, align 4
  br label %set_placement_list.exit37

set_placement_list.exit37:                        ; preds = %if.then13.i36, %if.end10.i32.set_placement_list.exit37_crit_edge
  %bdev.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 1
  %27 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev.i, align 8
  %ram_size.i = getelementptr i8, ptr %28, i32 -712
  %29 = ptrtoint ptr %ram_size.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ram_size.i, align 8
  %family.i = getelementptr i8, ptr %28, i32 -715
  %31 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp.i = icmp eq i8 %32, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %set_placement_list.exit37.set_placement_range.exit_crit_edge

set_placement_list.exit37.set_placement_range.exit_crit_edge: ; preds = %set_placement_list.exit37
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_placement_range.exit

land.lhs.true.i:                                  ; preds = %set_placement_list.exit37
  %mode.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 16
  %33 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i38 = icmp eq i32 %34, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool.not.i38
  br i1 %or.cond.i, label %land.lhs.true.i.set_placement_range.exit_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.set_placement_range.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_placement_range.exit

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %nvbo, i32 0, i32 5
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i, align 8
  %conv9.i = zext i32 %36 to i64
  %div60.i = lshr i64 %30, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %div60.i, i64 %conv9.i)
  %cmp10.i = icmp ugt i64 %div60.i, %conv9.i
  br i1 %cmp10.i, label %if.then.i41, label %land.lhs.true7.i.set_placement_range.exit_crit_edge

land.lhs.true7.i.set_placement_range.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_placement_range.exit

if.then.i41:                                      ; preds = %land.lhs.true7.i
  %zeta.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 15
  %37 = ptrtoint ptr %zeta.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load.i = load i32, ptr %zeta.i, align 8
  %38 = and i32 %bf.load.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool12.not.i40 = icmp eq i32 %38, 0
  %div1462.i = lshr i64 %30, 13
  %conv15.i = trunc i64 %div1462.i to i32
  %fpfn.0.i = select i1 %tobool12.not.i40, i32 0, i32 %conv15.i
  %lpfn.0.i = select i1 %tobool12.not.i40, i32 %conv15.i, i32 -1
  %39 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %placement, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp1963.not.i = icmp eq i32 %40, 0
  br i1 %cmp1963.not.i, label %if.then.i41.for.cond25.preheader.i_crit_edge, label %if.then.i41.for.body.i_crit_edge

if.then.i41.for.body.i_crit_edge:                 ; preds = %if.then.i41
  br label %for.body.i

if.then.i41.for.cond25.preheader.i_crit_edge:     ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond25.preheader.i

for.cond25.preheader.i:                           ; preds = %for.body.i.for.cond25.preheader.i_crit_edge, %if.then.i41.for.cond25.preheader.i_crit_edge
  %41 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_busy_placement, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp2765.not.i = icmp eq i32 %42, 0
  br i1 %cmp2765.not.i, label %for.cond25.preheader.i.set_placement_range.exit_crit_edge, label %for.cond25.preheader.i.for.body29.i_crit_edge

for.cond25.preheader.i.for.body29.i_crit_edge:    ; preds = %for.cond25.preheader.i
  br label %for.body29.i

for.cond25.preheader.i.set_placement_range.exit_crit_edge: ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_placement_range.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i41.for.body.i_crit_edge
  %i.064.i = phi i32 [ %inc.i42, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i41.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nouveau_bo, ptr %nvbo, i32 0, i32 3, i32 %i.064.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %fpfn.0.i, ptr %arrayidx.i, align 4
  %lpfn24.i = getelementptr %struct.nouveau_bo, ptr %nvbo, i32 0, i32 3, i32 %i.064.i, i32 1
  %44 = ptrtoint ptr %lpfn24.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %lpfn.0.i, ptr %lpfn24.i, align 4
  %inc.i42 = add nuw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i42, %40
  br i1 %exitcond.not.i, label %for.body.i.for.cond25.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.cond25.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond25.preheader.i

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %for.cond25.preheader.i.for.body29.i_crit_edge
  %i.166.i = phi i32 [ %inc36.i, %for.body29.i.for.body29.i_crit_edge ], [ 0, %for.cond25.preheader.i.for.body29.i_crit_edge ]
  %arrayidx30.i = getelementptr %struct.nouveau_bo, ptr %nvbo, i32 0, i32 4, i32 %i.166.i
  %45 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %fpfn.0.i, ptr %arrayidx30.i, align 4
  %lpfn34.i = getelementptr %struct.nouveau_bo, ptr %nvbo, i32 0, i32 4, i32 %i.166.i, i32 1
  %46 = ptrtoint ptr %lpfn34.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %lpfn.0.i, ptr %lpfn34.i, align 4
  %inc36.i = add nuw i32 %i.166.i, 1
  %47 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_busy_placement, align 8
  %cmp27.i = icmp ult i32 %inc36.i, %48
  br i1 %cmp27.i, label %for.body29.i.for.body29.i_crit_edge, label %for.body29.i.set_placement_range.exit_crit_edge

for.body29.i.set_placement_range.exit_crit_edge:  ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_placement_range.exit

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29.i

set_placement_range.exit:                         ; preds = %for.body29.i.set_placement_range.exit_crit_edge, %for.cond25.preheader.i.set_placement_range.exit_crit_edge, %land.lhs.true7.i.set_placement_range.exit_crit_edge, %land.lhs.true.i.set_placement_range.exit_crit_edge, %set_placement_list.exit37.set_placement_range.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_bo_del_ttm(ptr noundef %bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %dev1 = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 13
  %4 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !81

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 142, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev, align 8
  %io_reserve_mutex.i = getelementptr i8, ptr %7, i32 3000
  tail call void @mutex_lock_nested(ptr noundef %io_reserve_mutex.i, i32 noundef 0) #9
  %io_reserve_lru.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_reserve_lru.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.nouveau_bo_del_io_reserve_lru.exit_crit_edge

if.end.nouveau_bo_del_io_reserve_lru.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_bo_del_io_reserve_lru.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %io_reserve_lru.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_reserve_lru.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %nouveau_bo_del_io_reserve_lru.exit

nouveau_bo_del_io_reserve_lru.exit:               ; preds = %if.end.i.i.i, %if.end.nouveau_bo_del_io_reserve_lru.exit_crit_edge
  %14 = ptrtoint ptr %io_reserve_lru.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %io_reserve_lru.i, ptr %io_reserve_lru.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %io_reserve_lru.i, ptr %prev.i3.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %io_reserve_mutex.i) #9
  %tile = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 17
  %16 = ptrtoint ptr %tile to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tile, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %nouveau_bo_del_io_reserve_lru.exit.nv10_bo_put_tile_region.exit_crit_edge, label %if.then.i

nouveau_bo_del_io_reserve_lru.exit.nv10_bo_put_tile_region.exit_crit_edge: ; preds = %nouveau_bo_del_io_reserve_lru.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nv10_bo_put_tile_region.exit

if.then.i:                                        ; preds = %nouveau_bo_del_io_reserve_lru.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i.i, align 4
  %lock.i = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 17, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %17, align 4
  %used.i = getelementptr inbounds %struct.nouveau_drm_tile, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %used.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %used.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %nv10_bo_put_tile_region.exit

nv10_bo_put_tile_region.exit:                     ; preds = %if.then.i, %nouveau_bo_del_io_reserve_lru.exit.nv10_bo_put_tile_region.exit_crit_edge
  %dev22 = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %22 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev22, align 8
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %nv10_bo_put_tile_region.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_gem_object_release(ptr noundef %bo) #9
  br label %if.end27

if.else:                                          ; preds = %nv10_bo_put_tile_region.exit
  call void @__sanitizer_cov_trace_pc() #11
  %_resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 10
  tail call void @dma_resv_fini(ptr noundef %_resv) #9
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then24
  tail call void @kfree(ptr noundef %bo) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_new(ptr nocapture noundef readonly %cli, i64 noundef %size, i32 noundef %align, i32 noundef %domain, i32 noundef %tile_mode, i32 noundef %tile_flags, ptr noundef %sg, ptr noundef %robj, ptr nocapture noundef writeonly %pnvbo) local_unnamed_addr #0 align 64 {
entry:
  %size.addr = alloca i64, align 8
  %align.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %size, ptr %size.addr, align 8
  %1 = ptrtoint ptr %align.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %align, ptr %align.addr, align 4
  %call = call ptr @nouveau_bo_alloc(ptr noundef %cli, ptr noundef nonnull %size.addr, ptr noundef nonnull %align.addr, i32 noundef %domain, i32 noundef %tile_mode, i32 noundef %tile_flags)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %size.addr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size.addr, align 8
  %conv = trunc i64 %4 to i32
  %size3 = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %size3, align 8
  %_resv = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 10
  tail call void @dma_resv_init(ptr noundef %_resv) #9
  %vma_node = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 4
  %6 = call ptr @memset(ptr %vma_node, i32 0, i32 168)
  tail call void @__rwlock_init(ptr noundef %vma_node, ptr noundef nonnull @.str.22, ptr noundef nonnull @drm_vma_node_reset.__key) #9
  %7 = ptrtoint ptr %align.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %align.addr, align 4
  %tobool.not.i = icmp eq ptr %sg, null
  %cond.i = select i1 %tobool.not.i, i32 0, i32 2
  tail call void @nouveau_bo_placement_set(ptr noundef %call, i32 noundef %domain, i32 noundef 0) #9
  %io_reserve_lru.i = getelementptr inbounds %struct.nouveau_bo, ptr %call, i32 0, i32 8
  %9 = ptrtoint ptr %io_reserve_lru.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %io_reserve_lru.i, ptr %io_reserve_lru.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %call, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %io_reserve_lru.i, ptr %prev.i.i, align 4
  %bdev.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdev.i, align 8
  %placement.i = getelementptr inbounds %struct.nouveau_bo, ptr %call, i32 0, i32 1
  %shr.i = ashr i32 %8, 12
  %call.i = tail call i32 @ttm_bo_init(ptr noundef %12, ptr noundef %call, i32 noundef %conv, i32 noundef %cond.i, ptr noundef %placement.i, i32 noundef %shr.i, i1 noundef zeroext false, ptr noundef %sg, ptr noundef %robj, ptr noundef nonnull @nouveau_bo_del_ttm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %pnvbo to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %pnvbo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end10 ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_pin(ptr noundef %nvbo, i32 noundef %domain, i1 noundef zeroext %contig) local_unnamed_addr #0 align 64 {
entry:
  %ctx.i129 = alloca %struct.ttm_operation_ctx, align 8
  %ctx.i = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %resv35.i = getelementptr inbounds %struct.drm_gem_object, ptr %nvbo, i32 0, i32 9
  %2 = ptrtoint ptr %resv35.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv35.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %3, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, -4
  %retval.1.i = select i1 %cmp.i, i32 -512, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool.not = icmp eq i32 %retval.1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr i8, ptr %1, i32 -715
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp = icmp ult i8 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %domain)
  %cmp5 = icmp ne i32 %domain, 2
  %or.cond.not = or i1 %cmp5, %cmp
  %contig.not = xor i1 %contig, true
  %brmerge = or i1 %or.cond.not, %contig.not
  br i1 %brmerge, label %if.end.if.end17_crit_edge, label %if.then10

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then10:                                        ; preds = %if.end
  %contig11 = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 15
  %6 = ptrtoint ptr %contig11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %contig11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool12.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool12.not, label %if.end17.thread, label %if.then10.if.end17_crit_edge

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %if.then10.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 13
  %7 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool19.not = icmp eq i32 %8, 0
  br i1 %tobool19.not, label %if.end17.if.end57_crit_edge, label %if.end17.if.then20_crit_edge

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.end17.if.end57_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end17.thread:                                  ; preds = %if.then10
  %bf.set = or i32 %bf.load, -2147483648
  %9 = ptrtoint ptr %contig11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.set, ptr %contig11, align 8
  %pin_count156 = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 13
  %10 = ptrtoint ptr %pin_count156 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pin_count156, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not157 = icmp eq i32 %11, 0
  br i1 %tobool19.not157, label %if.then52, label %if.end17.thread.if.then20_crit_edge

if.end17.thread.if.then20_crit_edge:              ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %if.end17.thread.if.then20_crit_edge, %if.end17.if.then20_crit_edge
  %pin_count164 = phi ptr [ %pin_count156, %if.end17.thread.if.then20_crit_edge ], [ %pin_count, %if.end17.if.then20_crit_edge ]
  %evict.0.off0159 = phi i1 [ true, %if.end17.thread.if.then20_crit_edge ], [ false, %if.end17.if.then20_crit_edge ]
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 6
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.then20
  %and = lshr i32 %domain, 1
  %and.lobit = and i32 %and, 1
  %17 = xor i32 %and.lobit, 1
  %conv25 = zext i1 %evict.0.off0159 to i32
  %or = or i32 %17, %conv25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool26.not = icmp eq i32 %or, 0
  br i1 %tobool26.not, label %sw.bb.if.end48_crit_edge, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb.if.end48_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

sw.bb28:                                          ; preds = %if.then20
  %and29 = lshr i32 %domain, 2
  %conv34 = zext i1 %evict.0.off0159 to i32
  %18 = and i32 %and29, 1
  %.masked = xor i32 %18, 1
  %19 = or i32 %.masked, %conv34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %extract.t123.not = icmp eq i32 %19, 0
  br i1 %extract.t123.not, label %sw.bb28.if.end48_crit_edge, label %sw.bb28.do.body_crit_edge

sw.bb28.do.body_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb28.if.end48_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

sw.epilog:                                        ; preds = %if.then20
  br i1 %evict.0.off0159, label %sw.epilog.do.body_crit_edge, label %sw.epilog.if.end48_crit_edge

sw.epilog.if.end48_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %sw.bb28.do.body_crit_edge, %sw.bb.do.body_crit_edge
  %drm42 = getelementptr i8, ptr %1, i32 -856
  %20 = ptrtoint ptr %drm42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drm42, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %dev43 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev43, align 4
  %name = getelementptr i8, ptr %1, i32 -304
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef %nvbo, i32 noundef %15, i32 noundef %domain) #12
  br label %if.end48

if.end48:                                         ; preds = %do.body, %sw.epilog.if.end48_crit_edge, %sw.bb28.if.end48_crit_edge, %sw.bb.if.end48_crit_edge
  %ret.0 = phi i32 [ -16, %do.body ], [ 0, %sw.epilog.if.end48_crit_edge ], [ 0, %sw.bb28.if.end48_crit_edge ], [ 0, %sw.bb.if.end48_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.end48.if.end.i_crit_edge, label %land.rhs.i

if.end48.if.end.i_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end48
  %27 = ptrtoint ptr %resv35.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resv35.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %28, i32 0, i32 5
  %call.i.i126 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126)
  %cmp.not.i = icmp eq i32 %call.i.i126, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !80

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 551, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end48.if.end.i_crit_edge
  %kref.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #9
  %29 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool26.not.i = icmp eq i32 %30, 0
  br i1 %tobool26.not.i, label %land.rhs34.i, label %if.end.i.ttm_bo_pin.exit_crit_edge

if.end.i.ttm_bo_pin.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_pin.exit

land.rhs34.i:                                     ; preds = %if.end.i
  %.b85.i = load i1, ptr @ttm_bo_pin.__already_done, align 1
  br i1 %.b85.i, label %land.rhs34.i.ttm_bo_pin.exit_crit_edge, label %if.then45.i, !prof !81

land.rhs34.i.ttm_bo_pin.exit_crit_edge:           ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_pin.exit

if.then45.i:                                      ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ttm_bo_pin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 552, i32 noundef 9, ptr noundef null) #9
  br label %ttm_bo_pin.exit

ttm_bo_pin.exit:                                  ; preds = %if.then45.i, %land.rhs34.i.ttm_bo_pin.exit_crit_edge, %if.end.i.ttm_bo_pin.exit_crit_edge
  %31 = ptrtoint ptr %pin_count164 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pin_count164, align 8
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %pin_count164, align 8
  br label %out

if.then52:                                        ; preds = %if.end17.thread
  %placement.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 1
  %placements.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 3
  %placement1.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %placement1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %placements.i, ptr %placement1.i, align 4
  %mem_type6.i.i = getelementptr %struct.nouveau_bo, ptr %nvbo, i32 0, i32 3, i32 0, i32 2
  %34 = ptrtoint ptr %mem_type6.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %mem_type6.i.i, align 4
  %flags8.i.i = getelementptr %struct.nouveau_bo, ptr %nvbo, i32 0, i32 3, i32 0, i32 3
  %35 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %flags8.i.i, align 4
  %36 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %placement.i, align 4
  %busy_placements.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 4
  %busy_placement.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %busy_placements.i, ptr %busy_placement.i, align 4
  %num_busy_placement.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 1, i32 2
  %mem_type6.i26.i = getelementptr %struct.nouveau_bo, ptr %nvbo, i32 0, i32 4, i32 0, i32 2
  %38 = ptrtoint ptr %mem_type6.i26.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %mem_type6.i26.i, align 4
  %flags8.i27.i = getelementptr %struct.nouveau_bo, ptr %nvbo, i32 0, i32 4, i32 0, i32 3
  %39 = ptrtoint ptr %flags8.i27.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %flags8.i27.i, align 4
  %40 = ptrtoint ptr %num_busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %num_busy_placement.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx.i) #9
  %41 = call ptr @memset(ptr %ctx.i, i32 0, i32 24)
  %call.i = call i32 @ttm_bo_validate(ptr noundef %nvbo, ptr noundef %placement.i, ptr noundef nonnull %ctx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %nouveau_bo_validate.exit.thread, label %nouveau_bo_validate.exit

nouveau_bo_validate.exit.thread:                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  call void @nouveau_bo_sync_for_device(ptr noundef %nvbo) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i) #9
  br label %if.end57

nouveau_bo_validate.exit:                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i) #9
  br label %out

if.end57:                                         ; preds = %nouveau_bo_validate.exit.thread, %if.end17.if.end57_crit_edge
  %evict.0.off0158170 = phi i1 [ false, %if.end17.if.end57_crit_edge ], [ true, %nouveau_bo_validate.exit.thread ]
  %pin_count163167 = phi ptr [ %pin_count, %if.end17.if.end57_crit_edge ], [ %pin_count156, %nouveau_bo_validate.exit.thread ]
  call void @nouveau_bo_placement_set(ptr noundef %nvbo, i32 noundef %domain, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx.i129) #9
  %placement.i131 = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 1
  %42 = call ptr @memset(ptr %ctx.i129, i32 0, i32 24)
  %call.i132 = call i32 @ttm_bo_validate(ptr noundef %nvbo, ptr noundef %placement.i131, ptr noundef nonnull %ctx.i129) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool7.not.i133 = icmp eq i32 %call.i132, 0
  br i1 %tobool7.not.i133, label %if.end61, label %nouveau_bo_validate.exit135

nouveau_bo_validate.exit135:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i129) #9
  br label %out

if.end61:                                         ; preds = %if.end57
  call void @nouveau_bo_sync_for_device(ptr noundef %nvbo) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i129) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %43 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i136 = icmp eq i32 %43, 0
  br i1 %tobool.not.i136, label %if.end61.if.end.i146_crit_edge, label %land.rhs.i141

if.end61.if.end.i146_crit_edge:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i146

land.rhs.i141:                                    ; preds = %if.end61
  %44 = ptrtoint ptr %resv35.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resv35.i, align 8
  %dep_map.i138 = getelementptr inbounds %struct.mutex, ptr %45, i32 0, i32 5
  %call.i.i139 = call i32 @lock_is_held_type(ptr noundef %dep_map.i138, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i139)
  %cmp.not.i140 = icmp eq i32 %call.i.i139, 0
  br i1 %cmp.not.i140, label %do.end.i142, label %land.rhs.i141.if.end.i146_crit_edge, !prof !80

land.rhs.i141.if.end.i146_crit_edge:              ; preds = %land.rhs.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i146

do.end.i142:                                      ; preds = %land.rhs.i141
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 551, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i146

if.end.i146:                                      ; preds = %do.end.i142, %land.rhs.i141.if.end.i146_crit_edge, %if.end61.if.end.i146_crit_edge
  %kref.i143 = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 5
  %call.i.i.i.i.i144 = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i143, i32 noundef 4) #9
  %46 = ptrtoint ptr %kref.i143 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %kref.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool26.not.i145 = icmp eq i32 %47, 0
  br i1 %tobool26.not.i145, label %land.rhs34.i148, label %if.end.i146.ttm_bo_pin.exit152_crit_edge

if.end.i146.ttm_bo_pin.exit152_crit_edge:         ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_pin.exit152

land.rhs34.i148:                                  ; preds = %if.end.i146
  %.b85.i147 = load i1, ptr @ttm_bo_pin.__already_done, align 1
  br i1 %.b85.i147, label %land.rhs34.i148.ttm_bo_pin.exit152_crit_edge, label %if.then45.i149, !prof !81

land.rhs34.i148.ttm_bo_pin.exit152_crit_edge:     ; preds = %land.rhs34.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_pin.exit152

if.then45.i149:                                   ; preds = %land.rhs34.i148
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ttm_bo_pin.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 552, i32 noundef 9, ptr noundef null) #9
  br label %ttm_bo_pin.exit152

ttm_bo_pin.exit152:                               ; preds = %if.then45.i149, %land.rhs34.i148.ttm_bo_pin.exit152_crit_edge, %if.end.i146.ttm_bo_pin.exit152_crit_edge
  %48 = ptrtoint ptr %pin_count163167 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pin_count163167, align 8
  %inc.i151 = add i32 %49, 1
  store i32 %inc.i151, ptr %pin_count163167, align 8
  %resource63 = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 6
  %50 = ptrtoint ptr %resource63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resource63, align 4
  %mem_type64 = getelementptr inbounds %struct.ttm_resource, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %mem_type64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mem_type64, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %53, label %ttm_bo_pin.exit152.if.end84_crit_edge [
    i32 2, label %sw.bb65
    i32 1, label %sw.bb67
  ]

ttm_bo_pin.exit152.if.end84_crit_edge:            ; preds = %ttm_bo_pin.exit152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

sw.bb65:                                          ; preds = %ttm_bo_pin.exit152
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %nvbo, i32 0, i32 5
  %55 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size, align 8
  %conv66 = zext i32 %56 to i64
  %gem = getelementptr i8, ptr %1, i32 3104
  %57 = ptrtoint ptr %gem to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %gem, align 8
  %sub = sub i64 %58, %conv66
  store i64 %sub, ptr %gem, align 8
  br label %if.end84

sw.bb67:                                          ; preds = %ttm_bo_pin.exit152
  call void @__sanitizer_cov_trace_pc() #11
  %size69 = getelementptr inbounds %struct.drm_gem_object, ptr %nvbo, i32 0, i32 5
  %59 = ptrtoint ptr %size69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size69, align 8
  %conv70 = zext i32 %60 to i64
  %gart_available = getelementptr i8, ptr %1, i32 3112
  %61 = ptrtoint ptr %gart_available to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %gart_available, align 8
  %sub72 = sub i64 %62, %conv70
  store i64 %sub72, ptr %gart_available, align 8
  br label %if.end84

out:                                              ; preds = %nouveau_bo_validate.exit135, %nouveau_bo_validate.exit, %ttm_bo_pin.exit
  %evict.0.off0160 = phi i1 [ %evict.0.off0159, %ttm_bo_pin.exit ], [ true, %nouveau_bo_validate.exit ], [ %evict.0.off0158170, %nouveau_bo_validate.exit135 ]
  %ret.1 = phi i32 [ %ret.0, %ttm_bo_pin.exit ], [ %call.i, %nouveau_bo_validate.exit ], [ %call.i132, %nouveau_bo_validate.exit135 ]
  %evict.0.off0.not = xor i1 %evict.0.off0160, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool78.not = icmp eq i32 %ret.1, 0
  %or.cond125 = select i1 %evict.0.off0.not, i1 true, i1 %tobool78.not
  br i1 %or.cond125, label %out.if.end84_crit_edge, label %if.then79

out.if.end84_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then79:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %contig80 = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 15
  %63 = ptrtoint ptr %contig80 to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load81 = load i32, ptr %contig80, align 8
  %bf.clear82 = and i32 %bf.load81, 2147483647
  store i32 %bf.clear82, ptr %contig80, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %out.if.end84_crit_edge, %sw.bb67, %sw.bb65, %ttm_bo_pin.exit152.if.end84_crit_edge
  %ret.1176 = phi i32 [ %ret.1, %if.then79 ], [ %ret.1, %out.if.end84_crit_edge ], [ 0, %ttm_bo_pin.exit152.if.end84_crit_edge ], [ 0, %sw.bb67 ], [ 0, %sw.bb65 ]
  %64 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bdev, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %65, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #9
  %resource.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 6
  %66 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %resource.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %nvbo, ptr noundef %67, ptr noundef null) #9
  %68 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bdev, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %69, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #9
  %70 = ptrtoint ptr %resv35.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %resv35.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %71) #9
  call void @ww_mutex_unlock(ptr noundef %71) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1176, %if.end84 ], [ %retval.1.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_validate(ptr noundef %nvbo, i1 noundef zeroext %interruptible, i1 noundef zeroext %no_wait_gpu) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %interruptible to i8
  %frombool1 = zext i1 %no_wait_gpu to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #9
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %ctx, align 8
  %no_wait_gpu4 = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %no_wait_gpu4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool1, ptr %no_wait_gpu4, align 1
  %placement = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 1
  %call = call i32 @ttm_bo_validate(ptr noundef %nvbo, ptr noundef %placement, ptr noundef nonnull %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @nouveau_bo_sync_for_device(ptr noundef %nvbo)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_unpin(ptr noundef %nvbo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %resv35.i = getelementptr inbounds %struct.drm_gem_object, ptr %nvbo, i32 0, i32 9
  %2 = ptrtoint ptr %resv35.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv35.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %3, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, -4
  %retval.1.i = select i1 %cmp.i, i32 -512, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool.not = icmp eq i32 %retval.1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %5 = ptrtoint ptr %resv35.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resv35.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %6, i32 0, i32 5
  %call.i.i26 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %cmp.not.i = icmp eq i32 %call.i.i26, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !80

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 564, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %kref.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool26.not.i = icmp eq i32 %8, 0
  br i1 %tobool26.not.i, label %land.rhs34.i, label %if.end.i.if.end72.i_crit_edge

if.end.i.if.end72.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

land.rhs34.i:                                     ; preds = %if.end.i
  %.b142.i = load i1, ptr @ttm_bo_unpin.__already_done, align 1
  br i1 %.b142.i, label %land.rhs34.i.if.end72.i_crit_edge, label %if.then45.i, !prof !81

land.rhs34.i.if.end72.i_crit_edge:                ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

if.then45.i:                                      ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ttm_bo_unpin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 565, i32 noundef 9, ptr noundef null) #9
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then45.i, %land.rhs34.i.if.end72.i_crit_edge, %if.end.i.if.end72.i_crit_edge
  %pin_count.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 13
  %9 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pin_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool80.not.i = icmp eq i32 %10, 0
  br i1 %tobool80.not.i, label %land.end89.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %10, -1
  %11 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec.i, ptr %pin_count.i, align 8
  br label %ttm_bo_unpin.exit

land.end89.i:                                     ; preds = %if.end72.i
  %.b140141.i = load i1, ptr @ttm_bo_unpin.__already_done.25, align 1
  br i1 %.b140141.i, label %land.end89.i.if.then7_crit_edge, label %if.then96.i, !prof !81

land.end89.i.if.then7_crit_edge:                  ; preds = %land.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then96.i:                                      ; preds = %land.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ttm_bo_unpin.__already_done.25, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 569, i32 noundef 9, ptr noundef null) #9
  %12 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %pin_count.i, align 8
  br label %ttm_bo_unpin.exit

ttm_bo_unpin.exit:                                ; preds = %if.then96.i, %if.then81.i
  %13 = phi i32 [ %dec.i, %if.then81.i ], [ %.pr, %if.then96.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %ttm_bo_unpin.exit.if.then7_crit_edge, label %ttm_bo_unpin.exit.if.end14_crit_edge

ttm_bo_unpin.exit.if.end14_crit_edge:             ; preds = %ttm_bo_unpin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

ttm_bo_unpin.exit.if.then7_crit_edge:             ; preds = %ttm_bo_unpin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %ttm_bo_unpin.exit.if.then7_crit_edge, %land.end89.i.if.then7_crit_edge
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 6
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_type, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %17, label %if.then7.if.end14_crit_edge [
    i32 2, label %if.then7.if.end14.sink.split_crit_edge
    i32 1, label %sw.bb8
  ]

if.then7.if.end14.sink.split_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

sw.bb8:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %sw.bb8, %if.then7.if.end14.sink.split_crit_edge
  %.sink = phi i32 [ 3112, %sw.bb8 ], [ 3104, %if.then7.if.end14.sink.split_crit_edge ]
  %size10 = getelementptr inbounds %struct.drm_gem_object, ptr %nvbo, i32 0, i32 5
  %19 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size10, align 8
  %conv11 = zext i32 %20 to i64
  %gart_available = getelementptr i8, ptr %1, i32 %.sink
  %21 = ptrtoint ptr %gart_available to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %gart_available, align 8
  %add = add i64 %22, %conv11
  store i64 %add, ptr %gart_available, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.then7.if.end14_crit_edge, %ttm_bo_unpin.exit.if.end14_crit_edge
  %23 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %24, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #9
  %resource.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 6
  %25 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %nvbo, ptr noundef %26, ptr noundef null) #9
  %27 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %28, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #9
  %29 = ptrtoint ptr %resv35.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resv35.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %30) #9
  tail call void @ww_mutex_unlock(ptr noundef %30) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_map(ptr noundef %nvbo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resv35.i = getelementptr inbounds %struct.drm_gem_object, ptr %nvbo, i32 0, i32 9
  %0 = ptrtoint ptr %resv35.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv35.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, -4
  %retval.1.i = select i1 %cmp.i, i32 -512, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool.not = icmp eq i32 %retval.1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 6
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages, align 4
  %kmap = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 6
  %call3 = tail call i32 @ttm_bo_kmap(ptr noundef %nvbo, i32 noundef 0, i32 noundef %5, ptr noundef %kmap) #9
  %bdev.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 1
  %6 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %7, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #9
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %nvbo, ptr noundef %9, ptr noundef null) #9
  %10 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %11, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #9
  %12 = ptrtoint ptr %resv35.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resv35.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %13) #9
  tail call void @ww_mutex_unlock(ptr noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %retval.1.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_kmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_bo_unmap(ptr noundef %nvbo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nvbo, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %kmap = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 6
  tail call void @ttm_bo_kunmap(ptr noundef %kmap) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_kunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_bo_sync_for_device(ptr nocapture noundef readonly %nvbo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 7
  %2 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ttm, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_address, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %8 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.cleanup_crit_edge, label %do.body7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %drm9 = getelementptr i8, ptr %1, i32 -856
  %9 = ptrtoint ptr %drm9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm9, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  %name = getelementptr i8, ptr %1, i32 -304
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef nonnull %3) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %force_coherent = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 5
  %15 = ptrtoint ptr %force_coherent to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %force_coherent, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %while.cond.preheader, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end16
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp64.not = icmp eq i32 %18, 0
  br i1 %cmp64.not, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dev30 = getelementptr i8, ptr %1, i32 -128
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %19 = phi i32 [ %18, %while.body.lr.ph ], [ %36, %for.end.while.body_crit_edge ]
  %i.065 = phi i32 [ 0, %while.body.lr.ph ], [ %add34.pre-phi, %for.end.while.body_crit_edge ]
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %j.058 = add nuw i32 %i.065, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.058, i32 %19)
  %cmp2359 = icmp ult i32 %j.058, %19
  br i1 %cmp2359, label %for.body.preheader, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %while.body
  %arrayidx = getelementptr ptr, ptr %21, i32 %i.065
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %24 = sub i32 %19, %i.065
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.preheader
  %j.062 = phi i32 [ %j.0, %if.end28.for.body_crit_edge ], [ %j.058, %for.body.preheader ]
  %num_pages21.061 = phi i32 [ %inc, %if.end28.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %p.060 = phi ptr [ %incdec.ptr, %if.end28.for.body_crit_edge ], [ %23, %for.body.preheader ]
  %incdec.ptr = getelementptr %struct.page, ptr %p.060, i32 1
  %arrayidx25 = getelementptr ptr, ptr %21, i32 %j.062
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx25, align 4
  %cmp26.not = icmp eq ptr %incdec.ptr, %26
  br i1 %cmp26.not, label %if.end28, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

if.end28:                                         ; preds = %for.body
  %inc = add i32 %num_pages21.061, 1
  %j.0 = add i32 %j.062, 1
  %exitcond.not = icmp eq i32 %j.0, %19
  br i1 %exitcond.not, label %if.end28.for.end.loopexit_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end28.for.end.loopexit_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %if.end28.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  %num_pages21.0.lcssa.ph = phi i32 [ %24, %if.end28.for.end.loopexit_crit_edge ], [ %num_pages21.061, %for.body.for.end.loopexit_crit_edge ]
  %.pre = add i32 %num_pages21.0.lcssa.ph, %i.065
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %while.body.for.end_crit_edge
  %add34.pre-phi = phi i32 [ %.pre, %for.end.loopexit ], [ %j.058, %while.body.for.end_crit_edge ]
  %num_pages21.0.lcssa = phi i32 [ %num_pages21.0.lcssa.ph, %for.end.loopexit ], [ 1, %while.body.for.end_crit_edge ]
  %27 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev30, align 8
  %dev31 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev31, align 4
  %31 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_address, align 4
  %arrayidx33 = getelementptr i32, ptr %32, i32 %i.065
  %33 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx33, align 4
  %mul = shl i32 %num_pages21.0.lcssa, 12
  tail call void @dma_sync_single_for_device(ptr noundef %30, i32 noundef %34, i32 noundef %mul, i32 noundef 1) #9
  %35 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_pages, align 4
  %cmp = icmp ult i32 %add34.pre-phi, %36
  br i1 %cmp, label %for.end.while.body_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.body7, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_bo_sync_for_cpu(ptr nocapture noundef readonly %nvbo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 7
  %2 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ttm, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_address, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %8 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.cleanup_crit_edge, label %do.body7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %drm9 = getelementptr i8, ptr %1, i32 -856
  %9 = ptrtoint ptr %drm9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm9, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  %name = getelementptr i8, ptr %1, i32 -304
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef nonnull %3) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %force_coherent = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 5
  %15 = ptrtoint ptr %force_coherent to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %force_coherent, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %while.cond.preheader, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end16
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp64.not = icmp eq i32 %18, 0
  br i1 %cmp64.not, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dev30 = getelementptr i8, ptr %1, i32 -128
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %19 = phi i32 [ %18, %while.body.lr.ph ], [ %36, %for.end.while.body_crit_edge ]
  %i.065 = phi i32 [ 0, %while.body.lr.ph ], [ %add34.pre-phi, %for.end.while.body_crit_edge ]
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %j.058 = add nuw i32 %i.065, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.058, i32 %19)
  %cmp2359 = icmp ult i32 %j.058, %19
  br i1 %cmp2359, label %for.body.preheader, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %while.body
  %arrayidx = getelementptr ptr, ptr %21, i32 %i.065
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %24 = sub i32 %19, %i.065
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.preheader
  %j.062 = phi i32 [ %j.0, %if.end28.for.body_crit_edge ], [ %j.058, %for.body.preheader ]
  %num_pages21.061 = phi i32 [ %inc, %if.end28.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %p.060 = phi ptr [ %incdec.ptr, %if.end28.for.body_crit_edge ], [ %23, %for.body.preheader ]
  %incdec.ptr = getelementptr %struct.page, ptr %p.060, i32 1
  %arrayidx25 = getelementptr ptr, ptr %21, i32 %j.062
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx25, align 4
  %cmp26.not = icmp eq ptr %incdec.ptr, %26
  br i1 %cmp26.not, label %if.end28, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

if.end28:                                         ; preds = %for.body
  %inc = add i32 %num_pages21.061, 1
  %j.0 = add i32 %j.062, 1
  %exitcond.not = icmp eq i32 %j.0, %19
  br i1 %exitcond.not, label %if.end28.for.end.loopexit_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end28.for.end.loopexit_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %if.end28.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  %num_pages21.0.lcssa.ph = phi i32 [ %24, %if.end28.for.end.loopexit_crit_edge ], [ %num_pages21.061, %for.body.for.end.loopexit_crit_edge ]
  %.pre = add i32 %num_pages21.0.lcssa.ph, %i.065
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %while.body.for.end_crit_edge
  %add34.pre-phi = phi i32 [ %.pre, %for.end.loopexit ], [ %j.058, %while.body.for.end_crit_edge ]
  %num_pages21.0.lcssa = phi i32 [ %num_pages21.0.lcssa.ph, %for.end.loopexit ], [ 1, %while.body.for.end_crit_edge ]
  %27 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev30, align 8
  %dev31 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev31, align 4
  %31 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_address, align 4
  %arrayidx33 = getelementptr i32, ptr %32, i32 %i.065
  %33 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx33, align 4
  %mul = shl i32 %num_pages21.0.lcssa, 12
  tail call void @dma_sync_single_for_cpu(ptr noundef %30, i32 noundef %34, i32 noundef %mul, i32 noundef 2) #9
  %35 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_pages, align 4
  %cmp = icmp ult i32 %add34.pre-phi, %36
  br i1 %cmp, label %for.end.while.body_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.body7, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_bo_add_io_reserve_lru(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %io_reserve_mutex = getelementptr i8, ptr %1, i32 3000
  tail call void @mutex_lock_nested(ptr noundef %io_reserve_mutex, i32 noundef 0) #9
  %io_reserve_lru = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8
  %io_reserve_lru3 = getelementptr i8, ptr %1, i32 3092
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_reserve_lru) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %io_reserve_lru to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_reserve_lru, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr i8, ptr %1, i32 3096
  %8 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %io_reserve_lru, ptr noundef %9, ptr noundef %io_reserve_lru3) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %io_reserve_lru, ptr %prev.i2.i, align 4
  %11 = ptrtoint ptr %io_reserve_lru to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %io_reserve_lru3, ptr %io_reserve_lru, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %io_reserve_lru, ptr %9, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_reserve_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_bo_del_io_reserve_lru(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %io_reserve_mutex = getelementptr i8, ptr %1, i32 3000
  tail call void @mutex_lock_nested(ptr noundef %io_reserve_mutex, i32 noundef 0) #9
  %io_reserve_lru = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_reserve_lru) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %io_reserve_lru to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_reserve_lru, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %io_reserve_lru to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %io_reserve_lru, ptr %io_reserve_lru, align 4
  %prev.i3.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %io_reserve_lru, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %io_reserve_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_bo_wr16(ptr nocapture noundef readonly %nvbo, i32 noundef %index, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %kmap = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 6
  %bo_kmap_type.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %bo_kmap_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bo_kmap_type.i, align 4
  %2 = ptrtoint ptr %kmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kmap, align 4
  %add.ptr = getelementptr i16, ptr %3, i32 %index
  %4 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %val) #9, !srcloc !85
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %val, ptr %add.ptr, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_bo_rd32(ptr nocapture noundef readonly %nvbo, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %kmap = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 6
  %bo_kmap_type.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %bo_kmap_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bo_kmap_type.i, align 4
  %2 = ptrtoint ptr %kmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kmap, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 %index
  %4 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %7, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_bo_wr32(ptr nocapture noundef readonly %nvbo, i32 noundef %index, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %kmap = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 6
  %bo_kmap_type.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %bo_kmap_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bo_kmap_type.i, align 4
  %2 = ptrtoint ptr %kmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kmap, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 %index
  %4 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %val) #9, !srcloc !89
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %val, ptr %add.ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_bo_move_init(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cechan = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 12
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 13
  %copy = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 4
  %handle = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 4, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %mthd.0 = phi ptr [ @nouveau_bo_move_init._methods, %entry ], [ %incdec.ptr, %do.cond.do.body_crit_edge ]
  %engine = getelementptr inbounds %struct._method_table, ptr %mthd.0, i32 0, i32 1
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %engine, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %chan.0.in = select i1 %tobool.not, ptr %channel, ptr %cechan
  %2 = ptrtoint ptr %chan.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %chan.0 = load ptr, ptr %chan.0.in, align 4
  %cmp = icmp eq ptr %chan.0, null
  br i1 %cmp, label %do.body.do.cond_crit_edge, label %if.end2

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.end2:                                          ; preds = %do.body
  %user = getelementptr inbounds %struct.nouveau_channel, ptr %chan.0, i32 0, i32 17
  %oclass = getelementptr inbounds %struct._method_table, ptr %mthd.0, i32 0, i32 2
  %3 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %oclass, align 4
  %shl = shl i32 %1, 16
  %or = or i32 %4, %shl
  %call = tail call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.19, i32 noundef %or, i32 noundef %4, ptr noundef null, i32 noundef 0, ptr noundef %copy) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end2.do.cond_crit_edge

if.end2.do.cond_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.then6:                                         ; preds = %if.end2
  %init = getelementptr inbounds %struct._method_table, ptr %mthd.0, i32 0, i32 4
  %5 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init, align 4
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle, align 4
  %call9 = tail call i32 %6(ptr noundef nonnull %chan.0, i32 noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_dtor(ptr noundef %copy) #9
  br label %do.cond

cleanup:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %exec = getelementptr inbounds %struct._method_table, ptr %mthd.0, i32 0, i32 3
  %9 = ptrtoint ptr %exec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %exec, align 4
  %move = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %move to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %move, align 4
  %chan17 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %chan17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %chan.0, ptr %chan17, align 8
  %13 = ptrtoint ptr %mthd.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mthd.0, align 4
  br label %do.body22

do.cond:                                          ; preds = %if.then11, %if.end2.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %incdec.ptr = getelementptr %struct._method_table, ptr %mthd.0, i32 1
  %exec20 = getelementptr %struct._method_table, ptr %mthd.0, i32 1, i32 3
  %15 = ptrtoint ptr %exec20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %exec20, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %do.cond.do.body22_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond.do.body22_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

do.body22:                                        ; preds = %do.cond.do.body22_crit_edge, %cleanup
  %name.155 = phi ptr [ %14, %cleanup ], [ @.str.18, %do.cond.do.body22_crit_edge ]
  %drm26 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %drm26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drm26, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %dev27 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev27, align 4
  %name28 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.20, ptr noundef %name28, ptr noundef %name.155) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nve0_bo_move_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nve0_bo_move_init(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_bo_move_init(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_bo_move_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nva3_bo_move_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_bo_move_init(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv84_bo_move_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_bo_move_m2mf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_bo_move_m2mf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_bo_move_m2mf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_bo_move_init(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_ttm_fault_reserve_notify(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  %ctx.i = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %priv = getelementptr i8, ptr %1, i32 -740
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %device3 = getelementptr inbounds %struct.anon.191, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %resource_size = getelementptr inbounds %struct.nvkm_device_func, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %resource_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource_size, align 4
  %call4 = tail call i32 %9(ptr noundef %5, i32 noundef 1) #9
  %shr = lshr i32 %call4, 12
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.not = icmp eq i32 %13, 2
  %family19 = getelementptr i8, ptr %1, i32 -715
  %14 = ptrtoint ptr %family19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %family19, align 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %cmp7 = icmp ult i8 %15, 6
  br i1 %cmp7, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %kind = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 15
  %16 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %kind, align 8
  %17 = and i32 %bf.load, 66846720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12.not = icmp eq i32 %13, 0
  %or.cond = select i1 %tobool.not, i1 %cmp12.not, i1 false
  br i1 %or.cond, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %placement.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1
  %placements.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 3
  %placement1.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %placement1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %placements.i, ptr %placement1.i, align 4
  %mem_type6.i.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 3, i32 0, i32 2
  %19 = ptrtoint ptr %mem_type6.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %mem_type6.i.i, align 4
  %flags8.i.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 3, i32 0, i32 3
  %20 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags8.i.i, align 4
  %21 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %placement.i, align 4
  %busy_placements.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 4
  %busy_placement.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %busy_placements.i, ptr %busy_placement.i, align 4
  %num_busy_placement.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1, i32 2
  %mem_type6.i26.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 0, i32 2
  %23 = ptrtoint ptr %mem_type6.i26.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %mem_type6.i26.i, align 4
  %flags8.i27.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 0, i32 3
  %24 = ptrtoint ptr %flags8.i27.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flags8.i27.i, align 4
  %25 = ptrtoint ptr %num_busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %num_busy_placement.i, align 4
  br label %if.end47

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %15)
  %cmp21 = icmp ugt i8 %15, 5
  br i1 %cmp21, label %if.else.cleanup_crit_edge, label %lor.lhs.false23

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false23:                                  ; preds = %if.else
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %11, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %11, i32 0, i32 1
  %28 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_pages, align 4
  %add = add i32 %29, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shr)
  %cmp26 = icmp ult i32 %add, %shr
  br i1 %cmp26, label %lor.lhs.false23.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false23
  %placement = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1
  %30 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %placement, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp30116.not = icmp eq i32 %31, 0
  br i1 %cmp30116.not, label %for.cond.preheader.for.cond34.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond34.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.body.for.cond34.preheader_crit_edge, %for.cond.preheader.for.cond34.preheader_crit_edge
  %num_busy_placement = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_busy_placement, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp36118.not = icmp eq i32 %33, 0
  br i1 %cmp36118.not, label %for.cond34.preheader.for.end46_crit_edge, label %for.cond34.preheader.for.body38_crit_edge

for.cond34.preheader.for.body38_crit_edge:        ; preds = %for.cond34.preheader
  br label %for.body38

for.cond34.preheader.for.end46_crit_edge:         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0117 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 3, i32 %i.0117
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx, align 4
  %lpfn = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 3, i32 %i.0117, i32 1
  %35 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr, ptr %lpfn, align 4
  %inc = add nuw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, %31
  br i1 %exitcond.not, label %for.body.for.cond34.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.cond34.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond34.preheader

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.cond34.preheader.for.body38_crit_edge
  %i.1119 = phi i32 [ %inc45, %for.body38.for.body38_crit_edge ], [ 0, %for.cond34.preheader.for.body38_crit_edge ]
  %arrayidx39 = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 %i.1119
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx39, align 4
  %lpfn43 = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 %i.1119, i32 1
  %37 = ptrtoint ptr %lpfn43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr, ptr %lpfn43, align 4
  %inc45 = add nuw i32 %i.1119, 1
  %38 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_busy_placement, align 8
  %cmp36 = icmp ult i32 %inc45, %39
  br i1 %cmp36, label %for.body38.for.body38_crit_edge, label %for.body38.for.end46_crit_edge

for.body38.for.end46_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body38

for.end46:                                        ; preds = %for.body38.for.end46_crit_edge, %for.cond34.preheader.for.end46_crit_edge
  %placements.i102 = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 3
  %placement1.i103 = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %placement1.i103 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %placements.i102, ptr %placement1.i103, align 4
  %mem_type.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 3, i32 0, i32 2
  %41 = ptrtoint ptr %mem_type.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %mem_type.i.i, align 4
  %flags.i.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 3, i32 0, i32 3
  %42 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %flags.i.i, align 4
  %43 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %placement, align 4
  %busy_placements.i104 = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 4
  %busy_placement.i105 = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %busy_placement.i105 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %busy_placements.i104, ptr %busy_placement.i105, align 4
  %mem_type.i19.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 0, i32 2
  %45 = ptrtoint ptr %mem_type.i19.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %mem_type.i19.i, align 4
  %flags.i20.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 0, i32 3
  %46 = ptrtoint ptr %flags.i20.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %flags.i20.i, align 4
  %47 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %num_busy_placement, align 4
  %48 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bdev, align 8
  %ram_size.i.i108 = getelementptr i8, ptr %49, i32 -712
  %50 = ptrtoint ptr %ram_size.i.i108 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ram_size.i.i108, align 8
  %family.i.i109 = getelementptr i8, ptr %49, i32 -715
  %52 = ptrtoint ptr %family.i.i109 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %family.i.i109, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp.i.i110 = icmp eq i8 %53, 2
  br i1 %cmp.i.i110, label %land.lhs.true.i.i113, label %for.end46.if.end47_crit_edge

for.end46.if.end47_crit_edge:                     ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true.i.i113:                             ; preds = %for.end46
  %mode.i.i111 = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 16
  %54 = ptrtoint ptr %mode.i.i111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode.i.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i38.i112 = icmp eq i32 %55, 0
  br i1 %tobool.not.i38.i112, label %land.lhs.true.i.i113.if.end47_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i113.if.end47_crit_edge:          ; preds = %land.lhs.true.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i113
  %size.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %56 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i.i, align 8
  %conv9.i.i = zext i32 %57 to i64
  %div60.i.i = lshr i64 %51, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %div60.i.i, i64 %conv9.i.i)
  %cmp10.i.i = icmp ugt i64 %div60.i.i, %conv9.i.i
  br i1 %cmp10.i.i, label %if.then.i41.i, label %land.lhs.true7.i.i.if.end47_crit_edge

land.lhs.true7.i.i.if.end47_crit_edge:            ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then.i41.i:                                    ; preds = %land.lhs.true7.i.i
  %zeta.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 15
  %58 = ptrtoint ptr %zeta.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load.i.i = load i32, ptr %zeta.i.i, align 8
  %59 = and i32 %bf.load.i.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool12.not.i40.i = icmp eq i32 %59, 0
  %div1462.i.i = lshr i64 %51, 13
  %conv15.i.i = trunc i64 %div1462.i.i to i32
  %fpfn.0.i.i = select i1 %tobool12.not.i40.i, i32 0, i32 %conv15.i.i
  %lpfn.0.i.i = select i1 %tobool12.not.i40.i, i32 %conv15.i.i, i32 -1
  %60 = ptrtoint ptr %placements.i102 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %fpfn.0.i.i, ptr %placements.i102, align 4
  %lpfn24.i.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 3, i32 0, i32 1
  %61 = ptrtoint ptr %lpfn24.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %lpfn.0.i.i, ptr %lpfn24.i.i, align 4
  %62 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_busy_placement, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp2765.not.i.i = icmp eq i32 %63, 0
  br i1 %cmp2765.not.i.i, label %if.then.i41.i.if.end47_crit_edge, label %if.then.i41.i.for.body29.i.i_crit_edge

if.then.i41.i.for.body29.i.i_crit_edge:           ; preds = %if.then.i41.i
  br label %for.body29.i.i

if.then.i41.i.if.end47_crit_edge:                 ; preds = %if.then.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

for.body29.i.i:                                   ; preds = %for.body29.i.i.for.body29.i.i_crit_edge, %if.then.i41.i.for.body29.i.i_crit_edge
  %i.166.i.i = phi i32 [ %inc36.i.i, %for.body29.i.i.for.body29.i.i_crit_edge ], [ 0, %if.then.i41.i.for.body29.i.i_crit_edge ]
  %arrayidx30.i.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 %i.166.i.i
  %64 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %fpfn.0.i.i, ptr %arrayidx30.i.i, align 4
  %lpfn34.i.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 %i.166.i.i, i32 1
  %65 = ptrtoint ptr %lpfn34.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %lpfn.0.i.i, ptr %lpfn34.i.i, align 4
  %inc36.i.i = add nuw i32 %i.166.i.i, 1
  %66 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_busy_placement, align 8
  %cmp27.i.i = icmp ult i32 %inc36.i.i, %67
  br i1 %cmp27.i.i, label %for.body29.i.i.for.body29.i.i_crit_edge, label %for.body29.i.i.if.end47_crit_edge

for.body29.i.i.if.end47_crit_edge:                ; preds = %for.body29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

for.body29.i.i.for.body29.i.i_crit_edge:          ; preds = %for.body29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29.i.i

if.end47:                                         ; preds = %for.body29.i.i.if.end47_crit_edge, %if.then.i41.i.if.end47_crit_edge, %land.lhs.true7.i.i.if.end47_crit_edge, %land.lhs.true.i.i113.if.end47_crit_edge, %for.end46.if.end47_crit_edge, %if.end15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx.i) #9
  %placement.i115 = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1
  %68 = call ptr @memset(ptr %ctx.i, i32 0, i32 24)
  %call.i = call i32 @ttm_bo_validate(ptr noundef %bo, ptr noundef %placement.i115, ptr noundef nonnull %ctx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %nouveau_bo_validate.exit.thread, label %nouveau_bo_validate.exit

nouveau_bo_validate.exit.thread:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  call void @nouveau_bo_sync_for_device(ptr noundef %bo) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i) #9
  %69 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bdev, align 8
  %lru_lock.i = getelementptr inbounds %struct.ttm_device, ptr %70, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i) #9
  %71 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %resource, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %bo, ptr noundef %72, ptr noundef null) #9
  %73 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bdev, align 8
  %lru_lock2.i = getelementptr inbounds %struct.ttm_device, ptr %74, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i) #9
  br label %cleanup

nouveau_bo_validate.exit:                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %switch.selectcmp.case1 = icmp eq i32 %call.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call.i)
  %switch.selectcmp.case2 = icmp eq i32 %call.i, -512
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %75 = select i1 %switch.selectcmp, i32 256, i32 2
  br label %cleanup

cleanup:                                          ; preds = %nouveau_bo_validate.exit, %nouveau_bo_validate.exit.thread, %lor.lhs.false23.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nouveau_bo_validate.exit.thread ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %lor.lhs.false23.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %75, %nouveau_bo_validate.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_bo_fence(ptr nocapture noundef readonly %nvbo, ptr noundef %fence, i1 noundef zeroext %exclusive) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resv1 = getelementptr inbounds %struct.drm_gem_object, ptr %nvbo, i32 0, i32 9
  %0 = ptrtoint ptr %resv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv1, align 8
  br i1 %exclusive, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_resv_add_excl_fence(ptr noundef %1, ptr noundef %fence) #9
  br label %if.end6

if.else:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %fence, null
  br i1 %tobool3.not, label %if.else.if.end6_crit_edge, label %if.then4

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_resv_add_shared_fence(ptr noundef %1, ptr noundef nonnull %fence) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else.if.end6_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nouveau_ttm_tt_create(ptr noundef %bo, i32 noundef %page_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nouveau_sgdma_create_ttm(ptr noundef %bo, i32 noundef %page_flags) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_ttm_tt_populate(ptr noundef %bdev, ptr noundef %ttm, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %0 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i = icmp slt i32 %1, 0
  br i1 %tobool.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %sg = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 3
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 4
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_address, align 4
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %6 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages, align 4
  %call6 = tail call i32 @drm_prime_sg_to_dma_addr_array(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %7) #9
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %pool = getelementptr i8, ptr %bdev, i32 156
  %call11 = tail call i32 @ttm_pool_alloc(ptr noundef %pool, ptr noundef %ttm, ptr noundef %ctx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %call11, %if.end7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_ttm_tt_unpopulate(ptr noundef %bdev, ptr noundef %ttm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %0 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nouveau_sgdma_unbind(ptr noundef %bdev, ptr noundef %ttm) #9
  %pool = getelementptr i8, ptr %bdev, i32 156
  tail call void @ttm_pool_free(ptr noundef %pool, ptr noundef %ttm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_ttm_tt_destroy(ptr noundef %bdev, ptr noundef %ttm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nouveau_sgdma_destroy(ptr noundef %bdev, ptr noundef %ttm) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ttm_bo_eviction_valuable(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nouveau_bo_evict_flags(ptr noundef %bo, ptr nocapture noundef writeonly %pl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond = icmp eq i32 %3, 2
  %placement.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1
  %placements.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 3
  %placement1.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %placement1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %placements.i, ptr %placement1.i, align 4
  %mem_type6.i.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 3, i32 0, i32 2
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %mem_type6.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %mem_type6.i.i, align 4
  %flags8.i.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 3, i32 0, i32 3
  %6 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags8.i.i, align 4
  %7 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %placement.i, align 4
  %busy_placements.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 4
  %busy_placement.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %busy_placements.i, ptr %busy_placement.i, align 4
  %num_busy_placement.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1, i32 2
  %mem_type6.i26.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 0, i32 2
  %9 = ptrtoint ptr %mem_type6.i26.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %mem_type6.i26.i, align 4
  %flags8.i27.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 0, i32 3
  %10 = ptrtoint ptr %flags8.i27.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flags8.i27.i, align 4
  %mem_type15.i33.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 1, i32 2
  %11 = ptrtoint ptr %mem_type15.i33.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mem_type15.i33.i, align 4
  %12 = ptrtoint ptr %num_busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %num_busy_placement.i, align 4
  %flags18.i35.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 1, i32 3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %mem_type6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mem_type6.i.i, align 4
  %14 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %placement.i, align 4
  %flags18.i.i = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 3, i32 0, i32 3
  %15 = ptrtoint ptr %flags18.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags18.i.i, align 4
  %busy_placements.i7 = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 4
  %busy_placement.i8 = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %busy_placement.i8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %busy_placements.i7, ptr %busy_placement.i8, align 4
  %num_busy_placement.i9 = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1, i32 2
  %mem_type15.i33.i10 = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 0, i32 2
  %17 = ptrtoint ptr %mem_type15.i33.i10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mem_type15.i33.i10, align 4
  %18 = ptrtoint ptr %num_busy_placement.i9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %num_busy_placement.i9, align 4
  %flags18.i35.i12 = getelementptr %struct.nouveau_bo, ptr %bo, i32 0, i32 4, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %flags18.i35.i12.sink = phi ptr [ %flags18.i35.i12, %sw.default ], [ %flags18.i35.i, %sw.bb ]
  %19 = ptrtoint ptr %flags18.i35.i12.sink to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags18.i35.i12.sink, align 4
  %placement = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %pl, ptr %placement, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_bo_move(ptr noundef %bo, i1 noundef zeroext %evict, ptr noundef %ctx, ptr noundef %new_reg, ptr nocapture noundef writeonly %hop) #0 align 64 {
entry:
  %fence.i = alloca ptr, align 4
  %new_tile = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_tile) #9
  %4 = ptrtoint ptr %new_tile to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %new_tile, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %new_reg, i32 0, i32 2
  %5 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %new_reg, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %nouveau_ttm_tt_bind.exit

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nouveau_ttm_tt_bind.exit:                         ; preds = %if.then
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %7 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ttm, align 8
  %call.i = tail call i32 @nouveau_sgdma_bind(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %new_reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %nouveau_ttm_tt_bind.exit.if.end5_crit_edge, label %nouveau_ttm_tt_bind.exit.cleanup_crit_edge

nouveau_ttm_tt_bind.exit.cleanup_crit_edge:       ; preds = %nouveau_ttm_tt_bind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nouveau_ttm_tt_bind.exit.if.end5_crit_edge:       ; preds = %nouveau_ttm_tt_bind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %nouveau_ttm_tt_bind.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call fastcc void @nouveau_bo_move_ntfy(ptr noundef %bo, ptr noundef %new_reg)
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctx, align 8, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i = icmp ne i8 %10, 0
  %no_wait_gpu.i = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %no_wait_gpu.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %no_wait_gpu.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.i = icmp ne i8 %12, 0
  %call.i160 = tail call i32 @ttm_bo_wait(ptr noundef %bo, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool7.not = icmp eq i32 %call.i160, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.if.then98_crit_edge

if.end5.if.then98_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

if.end9:                                          ; preds = %if.end5
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 13
  %13 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %do.body

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %drm14 = getelementptr i8, ptr %1, i32 -856
  %15 = ptrtoint ptr %drm14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drm14, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev15, align 4
  %name = getelementptr i8, ptr %1, i32 -304
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef %bo) #12
  br label %if.end18

if.end18:                                         ; preds = %do.body, %if.end9.if.end18_crit_edge
  %family = getelementptr i8, ptr %1, i32 -715
  %21 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %22)
  %cmp20 = icmp ult i8 %22, 6
  br i1 %cmp20, label %if.then22, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %if.end18
  %23 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev, align 8
  %dev1.i = getelementptr i8, ptr %24, i32 -128
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i, align 8
  %27 = ptrtoint ptr %new_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %new_reg, align 4
  %shl.i = shl i32 %28, 12
  %29 = ptrtoint ptr %new_tile to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %new_tile, align 4
  %30 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.not.i = icmp eq i32 %31, 2
  br i1 %cmp.not.i, label %if.end.i161, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i161:                                      ; preds = %if.then22
  %family.i = getelementptr i8, ptr %24, i32 -715
  %32 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp5.i = icmp ugt i8 %33, 1
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i161.if.end27_crit_edge

if.end.i161.if.end27_crit_edge:                   ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then7.i:                                       ; preds = %if.end.i161
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i, align 8
  %mode.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 16
  %36 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode.i, align 4
  %zeta.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 15
  %38 = ptrtoint ptr %zeta.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load.i = load i32, ptr %zeta.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 12
  %bf.clear.i = and i32 %bf.lshr.i, 7
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 5
  %39 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_private.i.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 2, i32 3, i32 0, i32 5
  %41 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv.i.i, align 4
  %device1.i.i = getelementptr inbounds %struct.anon.192, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device1.i.i, align 8
  %fb2.i.i = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 33
  %45 = ptrtoint ptr %fb2.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fb2.i.i, align 8
  %tile3.i.i = getelementptr inbounds %struct.nvkm_fb, ptr %46, i32 0, i32 5
  %regions.i.i = getelementptr inbounds %struct.nvkm_fb, ptr %46, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %regions.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %regions.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp55.i.i = icmp sgt i32 %48, 0
  br i1 %cmp55.i.i, label %for.body.lr.ph.i.i, label %if.then7.i.nv10_bo_set_tiling.exit.i_crit_edge

if.then7.i.nv10_bo_set_tiling.exit.i_crit_edge:   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nv10_bo_set_tiling.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp ne i32 %37, 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.057.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %found.056.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %found.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %49 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_private.i.i.i, align 4
  %tile1.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 17
  %arrayidx.i.i.i = getelementptr [15 x %struct.nouveau_drm_tile], ptr %tile1.i.i.i, i32 0, i32 %i.057.i.i
  %lock.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 17, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #9
  %used.i.i.i = getelementptr [15 x %struct.nouveau_drm_tile], ptr %tile1.i.i.i, i32 0, i32 %i.057.i.i, i32 1
  %51 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %used.i.i.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.nv10_bo_get_tile_region.exit.i.i_crit_edge

for.body.i.i.nv10_bo_get_tile_region.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nv10_bo_get_tile_region.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %54, null
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  %call5.i.i.i = tail call zeroext i1 @nouveau_fence_done(ptr noundef nonnull %54) #9
  br i1 %call5.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.nv10_bo_get_tile_region.exit.i.i_crit_edge

lor.lhs.false.i.i.i.nv10_bo_get_tile_region.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nv10_bo_get_tile_region.exit.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then.i.i.i_crit_edge
  %55 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %used.i.i.i, align 4
  br label %nv10_bo_get_tile_region.exit.i.i

nv10_bo_get_tile_region.exit.i.i:                 ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.nv10_bo_get_tile_region.exit.i.i_crit_edge, %for.body.i.i.nv10_bo_get_tile_region.exit.i.i_crit_edge
  %tile.0.i.i.i = phi ptr [ %arrayidx.i.i.i, %if.then.i.i.i ], [ null, %lor.lhs.false.i.i.i.nv10_bo_get_tile_region.exit.i.i_crit_edge ], [ null, %for.body.i.i.nv10_bo_get_tile_region.exit.i.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #9
  %tobool5.not.i.i = icmp eq ptr %found.056.i.i, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %tobool5.not.i.i, i1 false
  br i1 %or.cond.i.i, label %nv10_bo_get_tile_region.exit.i.i.for.inc.i.i_crit_edge, label %if.else.i.i

nv10_bo_get_tile_region.exit.i.i.for.inc.i.i_crit_edge: ; preds = %nv10_bo_get_tile_region.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %nv10_bo_get_tile_region.exit.i.i
  %tobool6.not.i.i = icmp eq ptr %tile.0.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %land.lhs.true7.i.i

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %if.else.i.i
  %pitch9.i.i = getelementptr [16 x %struct.nvkm_fb_tile], ptr %tile3.i.i, i32 0, i32 %i.057.i.i, i32 3
  %56 = ptrtoint ptr %pitch9.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pitch9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool10.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true7.i.i.if.then.i38.i.i_crit_edge, label %if.then11.i.i

land.lhs.true7.i.i.if.then.i38.i.i_crit_edge:     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i38.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true7.i.i
  %58 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_private.i.i.i, align 4
  %tile.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 17
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %tile.0.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %tile.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 3
  %priv.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 2, i32 3, i32 0, i32 5
  %60 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv.i.i.i, align 4
  %device2.i.i.i = getelementptr inbounds %struct.anon.193, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %device2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device2.i.i.i, align 8
  %fb3.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 33
  %64 = ptrtoint ptr %fb3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fb3.i.i.i, align 8
  %tile5.i.i.i = getelementptr inbounds %struct.nvkm_fb, ptr %65, i32 0, i32 5
  %arrayidx.i32.i.i = getelementptr [16 x %struct.nvkm_fb_tile], ptr %tile5.i.i.i, i32 0, i32 %sub.ptr.div.i.i.i
  tail call void @nouveau_fence_unref(ptr noundef nonnull %tile.0.i.i.i) #9
  %pitch6.i.i.i = getelementptr [16 x %struct.nvkm_fb_tile], ptr %tile5.i.i.i, i32 0, i32 %sub.ptr.div.i.i.i, i32 3
  %66 = ptrtoint ptr %pitch6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pitch6.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i33.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i33.i.i, label %if.then11.i.i.nv10_bo_update_tile_region.exit.i.i_crit_edge, label %if.then.i34.i.i

if.then11.i.i.nv10_bo_update_tile_region.exit.i.i_crit_edge: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nv10_bo_update_tile_region.exit.i.i

if.then.i34.i.i:                                  ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvkm_fb_tile_fini(ptr noundef %65, i32 noundef %sub.ptr.div.i.i.i, ptr noundef %arrayidx.i32.i.i) #9
  br label %nv10_bo_update_tile_region.exit.i.i

nv10_bo_update_tile_region.exit.i.i:              ; preds = %if.then.i34.i.i, %if.then11.i.i.nv10_bo_update_tile_region.exit.i.i_crit_edge
  tail call void @nvkm_fb_tile_prog(ptr noundef %65, i32 noundef %sub.ptr.div.i.i.i, ptr noundef %arrayidx.i32.i.i) #9
  br label %if.then.i38.i.i

if.then.i38.i.i:                                  ; preds = %nv10_bo_update_tile_region.exit.i.i, %land.lhs.true7.i.i.if.then.i38.i.i_crit_edge
  %68 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_private.i.i.i, align 4
  %lock.i37.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %69, i32 0, i32 17, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i37.i.i) #9
  %70 = ptrtoint ptr %tile.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %tile.0.i.i.i, align 4
  %used.i39.i.i = getelementptr inbounds %struct.nouveau_drm_tile, ptr %tile.0.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %used.i39.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %used.i39.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i37.i.i) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i38.i.i, %if.else.i.i.for.inc.i.i_crit_edge, %nv10_bo_get_tile_region.exit.i.i.for.inc.i.i_crit_edge
  %found.1.i.i = phi ptr [ %tile.0.i.i.i, %nv10_bo_get_tile_region.exit.i.i.for.inc.i.i_crit_edge ], [ %found.056.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %found.056.i.i, %if.then.i38.i.i ]
  %inc.i.i = add nuw nsw i32 %i.057.i.i, 1
  %72 = ptrtoint ptr %regions.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %regions.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %73
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %tobool13.not.i.i = icmp eq ptr %found.1.i.i, null
  br i1 %tobool13.not.i.i, label %for.end.i.i.nv10_bo_set_tiling.exit.i_crit_edge, label %if.then14.i.i

for.end.i.i.nv10_bo_set_tiling.exit.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nv10_bo_set_tiling.exit.i

if.then14.i.i:                                    ; preds = %for.end.i.i
  %74 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_private.i.i.i, align 4
  %tile.i41.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 17
  %sub.ptr.lhs.cast.i42.i.i = ptrtoint ptr %found.1.i.i to i32
  %sub.ptr.rhs.cast.i43.i.i = ptrtoint ptr %tile.i41.i.i to i32
  %sub.ptr.sub.i44.i.i = sub i32 %sub.ptr.lhs.cast.i42.i.i, %sub.ptr.rhs.cast.i43.i.i
  %sub.ptr.div.i45.i.i = ashr exact i32 %sub.ptr.sub.i44.i.i, 3
  %priv.i46.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 3, i32 0, i32 5
  %76 = ptrtoint ptr %priv.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv.i46.i.i, align 4
  %device2.i47.i.i = getelementptr inbounds %struct.anon.193, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %device2.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device2.i47.i.i, align 8
  %fb3.i48.i.i = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 33
  %80 = ptrtoint ptr %fb3.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fb3.i48.i.i, align 8
  %tile5.i49.i.i = getelementptr inbounds %struct.nvkm_fb, ptr %81, i32 0, i32 5
  %arrayidx.i50.i.i = getelementptr [16 x %struct.nvkm_fb_tile], ptr %tile5.i49.i.i, i32 0, i32 %sub.ptr.div.i45.i.i
  tail call void @nouveau_fence_unref(ptr noundef nonnull %found.1.i.i) #9
  %pitch6.i51.i.i = getelementptr [16 x %struct.nvkm_fb_tile], ptr %tile5.i49.i.i, i32 0, i32 %sub.ptr.div.i45.i.i, i32 3
  %82 = ptrtoint ptr %pitch6.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pitch6.i51.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i52.i.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i52.i.i, label %if.then14.i.i.if.end.i.i.i_crit_edge, label %if.then.i53.i.i

if.then14.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i53.i.i:                                  ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvkm_fb_tile_fini(ptr noundef %81, i32 noundef %sub.ptr.div.i45.i.i, ptr noundef %arrayidx.i50.i.i) #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i53.i.i, %if.then14.i.i.if.end.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool7.not.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool7.not.i.i.i, label %if.end.i.i.i.nv10_bo_update_tile_region.exit54.i.i_crit_edge, label %if.then8.i.i.i

if.end.i.i.i.nv10_bo_update_tile_region.exit54.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nv10_bo_update_tile_region.exit54.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvkm_fb_tile_init(ptr noundef %81, i32 noundef %sub.ptr.div.i45.i.i, i32 noundef %shl.i, i32 noundef %35, i32 noundef %37, i32 noundef %bf.clear.i, ptr noundef %arrayidx.i50.i.i) #9
  br label %nv10_bo_update_tile_region.exit54.i.i

nv10_bo_update_tile_region.exit54.i.i:            ; preds = %if.then8.i.i.i, %if.end.i.i.i.nv10_bo_update_tile_region.exit54.i.i_crit_edge
  tail call void @nvkm_fb_tile_prog(ptr noundef %81, i32 noundef %sub.ptr.div.i45.i.i, ptr noundef %arrayidx.i50.i.i) #9
  br label %nv10_bo_set_tiling.exit.i

nv10_bo_set_tiling.exit.i:                        ; preds = %nv10_bo_update_tile_region.exit54.i.i, %for.end.i.i.nv10_bo_set_tiling.exit.i_crit_edge, %if.then7.i.nv10_bo_set_tiling.exit.i_crit_edge
  %found.0.lcssa61.i.i = phi ptr [ %found.1.i.i, %nv10_bo_update_tile_region.exit54.i.i ], [ null, %for.end.i.i.nv10_bo_set_tiling.exit.i_crit_edge ], [ null, %if.then7.i.nv10_bo_set_tiling.exit.i_crit_edge ]
  %84 = ptrtoint ptr %new_tile to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %found.0.lcssa61.i.i, ptr %new_tile, align 4
  br label %if.end27

if.end27:                                         ; preds = %nv10_bo_set_tiling.exit.i, %if.end.i161.if.end27_crit_edge, %if.then22.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %mem_type28 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2
  %85 = ptrtoint ptr %mem_type28 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mem_type28, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %86, label %if.end55 [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true47
  ]

land.lhs.true:                                    ; preds = %if.end27
  %ttm31 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %88 = ptrtoint ptr %ttm31 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ttm31, align 8
  %tobool32.not = icmp eq ptr %89, null
  br i1 %tobool32.not, label %if.then33, label %land.lhs.true38

if.then33:                                        ; preds = %land.lhs.true
  tail call void @ttm_resource_free(ptr noundef %bo, ptr noundef %resource) #9
  %90 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %resource, align 4
  %tobool.not.i.i162 = icmp eq ptr %91, null
  br i1 %tobool.not.i.i162, label %if.then33.ttm_bo_move_null.exit_crit_edge, label %do.end.i.i, !prof !81

if.then33.ttm_bo_move_null.exit_crit_edge:        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_move_null.exit

do.end.i.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 192, i32 noundef 9, ptr noundef null) #9
  br label %ttm_bo_move_null.exit

ttm_bo_move_null.exit:                            ; preds = %do.end.i.i, %if.then33.ttm_bo_move_null.exit_crit_edge
  %92 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %new_reg, ptr %resource, align 4
  br label %out

land.lhs.true38:                                  ; preds = %land.lhs.true
  %93 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp40 = icmp eq i32 %94, 1
  br i1 %cmp40, label %if.then42, label %if.end55.thread

if.then42:                                        ; preds = %land.lhs.true38
  tail call void @ttm_resource_free(ptr noundef %bo, ptr noundef %resource) #9
  %95 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %resource, align 4
  %tobool.not.i.i164 = icmp eq ptr %96, null
  br i1 %tobool.not.i.i164, label %if.then42.ttm_bo_move_null.exit166_crit_edge, label %do.end.i.i165, !prof !81

if.then42.ttm_bo_move_null.exit166_crit_edge:     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_move_null.exit166

do.end.i.i165:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 192, i32 noundef 9, ptr noundef null) #9
  br label %ttm_bo_move_null.exit166

ttm_bo_move_null.exit166:                         ; preds = %do.end.i.i165, %if.then42.ttm_bo_move_null.exit166_crit_edge
  %97 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %new_reg, ptr %resource, align 4
  br label %out

land.lhs.true47:                                  ; preds = %if.end27
  %98 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp49 = icmp eq i32 %99, 0
  br i1 %cmp49, label %if.then51, label %if.end55.thread193

if.then51:                                        ; preds = %land.lhs.true47
  %100 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bdev, align 8
  %ttm53 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %102 = ptrtoint ptr %ttm53 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ttm53, align 8
  tail call void @nouveau_sgdma_unbind(ptr noundef %101, ptr noundef %103) #9
  tail call void @ttm_resource_free(ptr noundef %bo, ptr noundef %resource) #9
  %104 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %resource, align 4
  %tobool.not.i168 = icmp eq ptr %105, null
  br i1 %tobool.not.i168, label %if.then51.ttm_bo_assign_mem.exit_crit_edge, label %do.end.i, !prof !81

if.then51.ttm_bo_assign_mem.exit_crit_edge:       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %ttm_bo_assign_mem.exit

do.end.i:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 192, i32 noundef 9, ptr noundef null) #9
  br label %ttm_bo_assign_mem.exit

ttm_bo_assign_mem.exit:                           ; preds = %do.end.i, %if.then51.ttm_bo_assign_mem.exit_crit_edge
  %106 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %new_reg, ptr %resource, align 4
  br label %out

if.end55:                                         ; preds = %if.end27
  %move = getelementptr i8, ptr %1, i32 2924
  %107 = ptrtoint ptr %move to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %move, align 4
  %tobool57.not = icmp eq ptr %108, null
  br i1 %tobool57.not, label %if.end55.if.then81_crit_edge, label %lor.lhs.false

if.end55.if.then81_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

if.end55.thread193:                               ; preds = %land.lhs.true47
  %move194 = getelementptr i8, ptr %1, i32 2924
  %109 = ptrtoint ptr %move194 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %move194, align 4
  %tobool57.not195 = icmp eq ptr %110, null
  br i1 %tobool57.not195, label %if.end55.thread193.if.then81_crit_edge, label %if.end55.thread193.if.end75_crit_edge

if.end55.thread193.if.end75_crit_edge:            ; preds = %if.end55.thread193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end55.thread193.if.then81_crit_edge:           ; preds = %if.end55.thread193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

if.end55.thread:                                  ; preds = %land.lhs.true38
  %move179 = getelementptr i8, ptr %1, i32 2924
  %111 = ptrtoint ptr %move179 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %move179, align 4
  %tobool57.not180 = icmp eq ptr %112, null
  br i1 %tobool57.not180, label %if.end55.thread.if.then81_crit_edge, label %land.lhs.true62

if.end55.thread.if.then81_crit_edge:              ; preds = %if.end55.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

land.lhs.true62:                                  ; preds = %if.end55.thread
  %113 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %cmp64 = icmp eq i32 %114, 2
  br i1 %cmp64, label %land.lhs.true62.if.then73_crit_edge, label %land.lhs.true62.if.end75_crit_edge

land.lhs.true62.if.end75_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.lhs.true62.if.then73_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

lor.lhs.false:                                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %cmp67 = icmp eq i32 %86, 2
  br i1 %cmp67, label %land.lhs.true69, label %lor.lhs.false.if.end75_crit_edge

lor.lhs.false.if.end75_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.lhs.true69:                                  ; preds = %lor.lhs.false
  %115 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp71 = icmp eq i32 %116, 0
  br i1 %cmp71, label %land.lhs.true69.if.then73_crit_edge, label %land.lhs.true69.if.end75_crit_edge

land.lhs.true69.if.end75_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.lhs.true69.if.then73_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

if.then73:                                        ; preds = %land.lhs.true69.if.then73_crit_edge, %land.lhs.true62.if.then73_crit_edge
  %117 = ptrtoint ptr %hop to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %hop, align 4
  %lpfn = getelementptr inbounds %struct.ttm_place, ptr %hop, i32 0, i32 1
  %118 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %lpfn, align 4
  %mem_type74 = getelementptr inbounds %struct.ttm_place, ptr %hop, i32 0, i32 2
  %119 = ptrtoint ptr %mem_type74 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %mem_type74, align 4
  %flags = getelementptr inbounds %struct.ttm_place, ptr %hop, i32 0, i32 3
  %120 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %flags, align 4
  br label %cleanup

if.end75:                                         ; preds = %land.lhs.true69.if.end75_crit_edge, %lor.lhs.false.if.end75_crit_edge, %land.lhs.true62.if.end75_crit_edge, %if.end55.thread193.if.end75_crit_edge
  %121 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bdev, align 8
  %chan1.i = getelementptr i8, ptr %122, i32 2928
  %123 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %chan1.i, align 8
  %client.i = getelementptr inbounds %struct.nouveau_channel, ptr %124, i32 0, i32 17, i32 1
  %125 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %client.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence.i) #9
  %127 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence.i, align 4, !annotation !90
  %family.i171 = getelementptr i8, ptr %122, i32 -715
  %128 = ptrtoint ptr %family.i171 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %family.i171, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %129)
  %cmp.i = icmp ugt i8 %129, 5
  br i1 %cmp.i, label %if.then.i, label %if.end75.if.end6.i_crit_edge

if.end75.if.end6.i_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i:                                        ; preds = %if.end75
  %130 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %resource, align 4
  %vmm3.i.i = getelementptr i8, ptr %122, i32 -488
  %page.i.i = getelementptr inbounds %struct.nouveau_mem, ptr %131, i32 0, i32 4, i32 2
  %132 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %page.i.i, align 1
  %size.i.i = getelementptr inbounds %struct.nouveau_mem, ptr %131, i32 0, i32 4, i32 4
  %134 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %size.i.i, align 8
  %vma.i.i = getelementptr inbounds %struct.nouveau_mem, ptr %131, i32 0, i32 5
  %call5.i.i = tail call i32 @nvif_vmm_get(ptr noundef %vmm3.i.i, i32 noundef 2, i1 noundef zeroext false, i8 noundef zeroext %133, i8 noundef zeroext 0, i64 noundef %135, ptr noundef %vma.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i172 = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i172, label %if.end.i.i, label %nouveau_bo_move_m2mf.exit.thread

nouveau_bo_move_m2mf.exit.thread:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence.i) #9
  br label %if.then81

if.end.i.i:                                       ; preds = %if.then.i
  %page7.i.i = getelementptr inbounds %struct.nouveau_mem, ptr %new_reg, i32 0, i32 4, i32 2
  %136 = ptrtoint ptr %page7.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %page7.i.i, align 1
  %size9.i.i = getelementptr inbounds %struct.nouveau_mem, ptr %new_reg, i32 0, i32 4, i32 4
  %138 = ptrtoint ptr %size9.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %size9.i.i, align 8
  %arrayidx11.i.i = getelementptr %struct.nouveau_mem, ptr %131, i32 0, i32 5, i32 1
  %call12.i.i = tail call i32 @nvif_vmm_get(ptr noundef %vmm3.i.i, i32 noundef 2, i1 noundef zeroext false, i8 noundef zeroext %137, i8 noundef zeroext 0, i64 noundef %139, ptr noundef %arrayidx11.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i173 = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i173, label %if.end15.i.i, label %if.end.i.i.if.then26.i.i_crit_edge

if.end.i.i.if.then26.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i.i

if.end15.i.i:                                     ; preds = %if.end.i.i
  %call18.i.i = tail call i32 @nouveau_mem_map(ptr noundef %131, ptr noundef %vmm3.i.i, ptr noundef %vma.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %done.i.i, label %if.end15.i.i.if.then26.i.i_crit_edge

if.end15.i.i.if.then26.i.i_crit_edge:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i.i

done.i.i:                                         ; preds = %if.end15.i.i
  %call24.i.i = tail call i32 @nouveau_mem_map(ptr noundef %new_reg, ptr noundef %vmm3.i.i, ptr noundef %arrayidx11.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %done.i.i.if.end6.i_crit_edge, label %done.i.i.if.then26.i.i_crit_edge

done.i.i.if.then26.i.i_crit_edge:                 ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i.i

done.i.i.if.end6.i_crit_edge:                     ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then26.i.i:                                    ; preds = %done.i.i.if.then26.i.i_crit_edge, %if.end15.i.i.if.then26.i.i_crit_edge, %if.end.i.i.if.then26.i.i_crit_edge
  tail call void @nvif_vmm_put(ptr noundef %vmm3.i.i, ptr noundef %arrayidx11.i.i) #9
  tail call void @nvif_vmm_put(ptr noundef %vmm3.i.i, ptr noundef %vma.i.i) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then26.i.i, %done.i.i.if.end6.i_crit_edge, %if.end75.if.end6.i_crit_edge
  %dev.i = getelementptr i8, ptr %122, i32 -128
  %140 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev.i, align 8
  %driver.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %driver.i.i.i.i, align 4
  %driver_features.i.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %143, i32 0, i32 24
  %144 = ptrtoint ptr %driver_features.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %driver_features.i.i.i.i, align 4
  %driver_features1.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %141, i32 0, i32 10
  %146 = ptrtoint ptr %driver_features1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %driver_features1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %145, 16
  %and2.i.i.i.i = and i32 %and.i.i.i.i, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %cmp.i.i.not.i.i, label %lor.rhs.i.i, label %if.end6.i.if.end10.i_crit_edge

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

lor.rhs.i.i:                                      ; preds = %if.end6.i
  %funcs.i.i = getelementptr inbounds %struct.drm_device, ptr %141, i32 0, i32 30, i32 27
  %148 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i57.i = icmp eq ptr %149, null
  br i1 %tobool.not.i57.i, label %lor.rhs.i.i.if.else.i_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i

lor.rhs.i.i.if.else.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

drm_drv_uses_atomic_modeset.exit.i:               ; preds = %lor.rhs.i.i
  %atomic_commit.i.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %atomic_commit.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %atomic_commit.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %151, null
  br i1 %cmp.i.not.i, label %drm_drv_uses_atomic_modeset.exit.i.if.else.i_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i.if.end10.i_crit_edge

drm_drv_uses_atomic_modeset.exit.i.if.end10.i_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

drm_drv_uses_atomic_modeset.exit.i.if.else.i_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %drm_drv_uses_atomic_modeset.exit.i.if.else.i_crit_edge, %lor.rhs.i.i.if.else.i_crit_edge
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %drm_drv_uses_atomic_modeset.exit.i.if.end10.i_crit_edge, %if.end6.i.if.end10.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.else.i ], [ 0, %if.end6.i.if.end10.i_crit_edge ], [ 0, %drm_drv_uses_atomic_modeset.exit.i.if.end10.i_crit_edge ]
  %mutex9.i = getelementptr inbounds %struct.nouveau_cli, ptr %126, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex9.i, i32 noundef %.sink.i) #9
  %152 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %ctx, align 8, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool12.i = icmp ne i8 %153, 0
  %call13.i = tail call i32 @nouveau_fence_sync(ptr noundef %bo, ptr noundef %124, i1 noundef zeroext true, i1 noundef zeroext %tobool12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then16.i, label %if.end10.i.nouveau_bo_move_m2mf.exit.thread184_crit_edge

if.end10.i.nouveau_bo_move_m2mf.exit.thread184_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_bo_move_m2mf.exit.thread184

if.then16.i:                                      ; preds = %if.end10.i
  %move.i = getelementptr i8, ptr %122, i32 2924
  %154 = ptrtoint ptr %move.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %move.i, align 4
  %156 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %resource, align 4
  %call18.i = tail call i32 %155(ptr noundef %124, ptr noundef %bo, ptr noundef %157, ptr noundef %new_reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.i, label %if.then21.i, label %if.then16.i.nouveau_bo_move_m2mf.exit.thread184_crit_edge

if.then16.i.nouveau_bo_move_m2mf.exit.thread184_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_bo_move_m2mf.exit.thread184

if.then21.i:                                      ; preds = %if.then16.i
  %call22.i = call i32 @nouveau_fence_new(ptr noundef %124, i1 noundef zeroext false, ptr noundef nonnull %fence.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp eq i32 %call22.i, 0
  br i1 %cmp23.i, label %nouveau_bo_move_m2mf.exit, label %if.then21.i.nouveau_bo_move_m2mf.exit.thread184_crit_edge

if.then21.i.nouveau_bo_move_m2mf.exit.thread184_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_bo_move_m2mf.exit.thread184

nouveau_bo_move_m2mf.exit.thread184:              ; preds = %if.then21.i.nouveau_bo_move_m2mf.exit.thread184_crit_edge, %if.then16.i.nouveau_bo_move_m2mf.exit.thread184_crit_edge, %if.end10.i.nouveau_bo_move_m2mf.exit.thread184_crit_edge
  call void @mutex_unlock(ptr noundef %mutex9.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence.i) #9
  br label %if.then81

nouveau_bo_move_m2mf.exit:                        ; preds = %if.then21.i
  %158 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %fence.i, align 4
  %call27.i = call i32 @ttm_bo_move_accel_cleanup(ptr noundef %bo, ptr noundef %159, i1 noundef zeroext %evict, i1 noundef zeroext false, ptr noundef %new_reg) #9
  call void @nouveau_fence_unref(ptr noundef nonnull %fence.i) #9
  call void @mutex_unlock(ptr noundef %mutex9.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %phi.cmp = icmp eq i32 %call27.i, 0
  br i1 %phi.cmp, label %nouveau_bo_move_m2mf.exit.out_crit_edge, label %nouveau_bo_move_m2mf.exit.if.then81_crit_edge

nouveau_bo_move_m2mf.exit.if.then81_crit_edge:    ; preds = %nouveau_bo_move_m2mf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

nouveau_bo_move_m2mf.exit.out_crit_edge:          ; preds = %nouveau_bo_move_m2mf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then81:                                        ; preds = %nouveau_bo_move_m2mf.exit.if.then81_crit_edge, %nouveau_bo_move_m2mf.exit.thread184, %nouveau_bo_move_m2mf.exit.thread, %if.end55.thread.if.then81_crit_edge, %if.end55.thread193.if.then81_crit_edge, %if.end55.if.then81_crit_edge
  %call82 = call i32 @ttm_bo_move_memcpy(ptr noundef %bo, ptr noundef %ctx, ptr noundef %new_reg) #9
  br label %out

out:                                              ; preds = %if.then81, %nouveau_bo_move_m2mf.exit.out_crit_edge, %ttm_bo_assign_mem.exit, %ttm_bo_move_null.exit166, %ttm_bo_move_null.exit
  %ret.2 = phi i32 [ 0, %ttm_bo_move_null.exit166 ], [ 0, %ttm_bo_assign_mem.exit ], [ %call82, %if.then81 ], [ 0, %nouveau_bo_move_m2mf.exit.out_crit_edge ], [ 0, %ttm_bo_move_null.exit ]
  %160 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %161)
  %cmp89 = icmp ult i8 %161, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool92.not = icmp eq i32 %ret.2, 0
  br i1 %cmp89, label %if.then91, label %out_ntfy

if.then91:                                        ; preds = %out
  br i1 %tobool92.not, label %out_ntfy.thread190, label %if.then93

if.then93:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nouveau_bo_vm_cleanup(ptr noundef %bo, ptr noundef null, ptr noundef nonnull %new_tile)
  br label %if.then98

out_ntfy.thread190:                               ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %new_tile to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %new_tile, align 4
  %tile = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 17
  call fastcc void @nouveau_bo_vm_cleanup(ptr noundef %bo, ptr noundef %163, ptr noundef %tile)
  br label %cleanup

out_ntfy:                                         ; preds = %out
  br i1 %tobool92.not, label %out_ntfy.cleanup_crit_edge, label %out_ntfy.if.then98_crit_edge

out_ntfy.if.then98_crit_edge:                     ; preds = %out_ntfy
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

out_ntfy.cleanup_crit_edge:                       ; preds = %out_ntfy
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then98:                                        ; preds = %out_ntfy.if.then98_crit_edge, %if.then93, %if.end5.if.then98_crit_edge
  %ret.3189 = phi i32 [ %ret.2, %out_ntfy.if.then98_crit_edge ], [ %ret.2, %if.then93 ], [ %call.i160, %if.end5.if.then98_crit_edge ]
  %164 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %resource, align 4
  call fastcc void @nouveau_bo_move_ntfy(ptr noundef %bo, ptr noundef %165)
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %out_ntfy.cleanup_crit_edge, %out_ntfy.thread190, %if.then73, %nouveau_ttm_tt_bind.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -72, %if.then73 ], [ %call.i, %nouveau_ttm_tt_bind.exit.cleanup_crit_edge ], [ %ret.3189, %if.then98 ], [ 0, %out_ntfy.cleanup_crit_edge ], [ 0, %out_ntfy.thread190 ], [ -22, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_tile) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_bo_delete_mem_notify(ptr noundef %bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nouveau_bo_move_ntfy(ptr noundef %bo, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_ttm_io_mem_reserve(ptr noundef %bdev, ptr noundef %reg) #0 align 64 {
entry:
  %args = alloca %union.anon.195, align 4
  %handle = alloca i64, align 8
  %length = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %bdev, i32 -740
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.anon.194, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 8
  %io_reserve_mutex = getelementptr i8, ptr %bdev, i32 3000
  tail call void @mutex_lock_nested(ptr noundef %io_reserve_mutex, i32 noundef 0) #9
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %reg, i32 0, i32 2
  %mem8 = getelementptr i8, ptr %bdev, i32 -336
  %kind = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 2
  %offset = getelementptr inbounds %struct.ttm_resource, ptr %reg, i32 0, i32 4, i32 1
  %is_iomem = getelementptr inbounds %struct.ttm_resource, ptr %reg, i32 0, i32 4, i32 2
  %family = getelementptr i8, ptr %bdev, i32 -715
  %type = getelementptr i8, ptr %bdev, i32 -504
  %type_vram = getelementptr i8, ptr %bdev, i32 2980
  %caching = getelementptr inbounds %struct.ttm_resource, ptr %reg, i32 0, i32 4, i32 3
  %4 = getelementptr inbounds %struct.nv50_mem_map_v0, ptr %args, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nv50_mem_map_v0, ptr %args, i32 0, i32 2
  %6 = getelementptr inbounds %struct.nv50_mem_map_v0, ptr %args, i32 0, i32 3
  %mem31 = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 4
  %oclass33 = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 4, i32 0, i32 4
  %comp = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 3
  %io_reserve_lru = getelementptr i8, ptr %bdev, i32 3092
  %dev_mapping = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 9
  br label %retry

retry:                                            ; preds = %retry.backedge, %entry
  %7 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mem_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %8, label %retry.if.end132_crit_edge [
    i32 0, label %retry.if.end132.loopexit_crit_edge
    i32 1, label %sw.bb6
    i32 2, label %retry.sw.bb9_crit_edge
  ]

retry.sw.bb9_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

retry.if.end132.loopexit_crit_edge:               ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.loopexit

retry.if.end132_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

sw.bb6:                                           ; preds = %retry
  %10 = ptrtoint ptr %mem8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem8, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463157, i32 %13)
  %cmp = icmp ult i32 %13, -2147463157
  br i1 %cmp, label %sw.bb6.if.end132.loopexit_crit_edge, label %lor.lhs.false

sw.bb6.if.end132.loopexit_crit_edge:              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.loopexit

lor.lhs.false:                                    ; preds = %sw.bb6
  %14 = ptrtoint ptr %kind to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end132.loopexit_crit_edge, label %lor.lhs.false.sw.bb9_crit_edge

lor.lhs.false.sw.bb9_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

lor.lhs.false.if.end132.loopexit_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.loopexit

sw.bb9:                                           ; preds = %lor.lhs.false.sw.bb9_crit_edge, %retry.sw.bb9_crit_edge
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %shl = shl i32 %17, 12
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource_addr, align 4
  %call10 = call i32 %21(ptr noundef %3, i32 noundef 1) #9
  %add = add i32 %call10, %shl
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %offset, align 4
  %23 = ptrtoint ptr %is_iomem to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %is_iomem, align 4
  %24 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %25)
  %cmp14 = icmp ugt i8 %25, 5
  br i1 %cmp14, label %land.lhs.true, label %sw.bb9.if.else_crit_edge

sw.bb9.if.else_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb9
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type, align 8
  %28 = ptrtoint ptr %type_vram to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type_vram, align 4
  %arrayidx = getelementptr %struct.anon.96, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %tobool19.not = icmp sgt i8 %31, -1
  br i1 %tobool19.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb9.if.else_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.else, %land.lhs.true.if.end24_crit_edge
  %storemerge = phi i32 [ 1, %if.else ], [ 0, %land.lhs.true.if.end24_crit_edge ]
  %32 = ptrtoint ptr %caching to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %caching, align 4
  %33 = ptrtoint ptr %mem8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mem8, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463158, i32 %36)
  %cmp28 = icmp ugt i32 %36, -2147463158
  br i1 %cmp28, label %if.then30, label %if.end24.if.end132.loopexit_crit_edge

if.end24.if.end132.loopexit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.loopexit

if.then30:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #9
  %37 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %args, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %handle) #9
  %38 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -1, ptr %handle, align 8, !annotation !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length) #9
  %39 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %length, align 8, !annotation !90
  %40 = ptrtoint ptr %oclass33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %oclass33, align 8
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %41, label %do.end [
    i32 -2147463157, label %sw.bb34
    i32 -2147446773, label %sw.bb38
  ]

sw.bb34:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %args, align 4
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %4, align 1
  %45 = ptrtoint ptr %kind to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %kind, align 4
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %5, align 2
  %48 = ptrtoint ptr %comp to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %comp, align 1
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %6, align 1
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %args, align 4
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %4, align 1
  %53 = ptrtoint ptr %kind to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %kind, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %5, align 2
  br label %sw.epilog

do.end:                                           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1145, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb38, %sw.bb34
  %argc.0 = phi i32 [ 0, %do.end ], [ 3, %sw.bb38 ], [ 4, %sw.bb34 ]
  %call63 = call i32 @nvif_object_map_handle(ptr noundef %mem31, ptr noundef nonnull %args, i32 noundef %argc.0, ptr noundef nonnull %handle, ptr noundef nonnull %length) #9
  %56 = zext i32 %call63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call63, label %out [
    i32 1, label %cleanup.thread
    i32 0, label %select.unfold
  ], !prof !91

cleanup.thread:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %handle, align 8
  %conv103 = trunc i64 %58 to i32
  %59 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv103, ptr %offset, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %handle) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  br label %if.end132

select.unfold:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1153, i32 noundef 9, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %handle) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  br label %if.end132

out:                                              ; preds = %sw.epilog
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %handle) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call63)
  %cmp112 = icmp eq i32 %call63, -28
  br i1 %cmp112, label %if.then114, label %out.if.end132.loopexit_crit_edge

out.if.end132.loopexit_crit_edge:                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.loopexit

if.then114:                                       ; preds = %out
  %60 = ptrtoint ptr %io_reserve_lru to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %io_reserve_lru, align 4
  %cmp121.not = icmp eq ptr %61, %io_reserve_lru
  %add.ptr = getelementptr i8, ptr %61, i32 -560
  %tobool124.not187 = icmp eq ptr %add.ptr, null
  %tobool124.not = or i1 %cmp121.not, %tobool124.not187
  br i1 %tobool124.not, label %if.then114.if.end132.loopexit_crit_edge, label %if.then125

if.then114.if.end132.loopexit_crit_edge:          ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.loopexit

if.then125:                                       ; preds = %if.then114
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %61) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then125.list_del_init.exit_crit_edge

if.then125.list_del_init.exit_crit_edge:          ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then125.list_del_init.exit_crit_edge
  %68 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %61, ptr %61, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %61, ptr %prev.i3.i, align 4
  %70 = ptrtoint ptr %dev_mapping to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_mapping, align 8
  %flags.i.i = getelementptr i8, ptr %61, i32 -392
  %72 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %list_del_init.exit.drm_vma_node_unmap.exit_crit_edge, label %if.then.i

list_del_init.exit.drm_vma_node_unmap.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_vma_node_unmap.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %start.i.i = getelementptr i8, ptr %61, i32 -488
  %74 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %start.i.i, align 8
  %shl.i.i = shl i64 %75, 12
  %size.i.i = getelementptr i8, ptr %61, i32 -480
  %76 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %size.i.i, align 8
  %conv.i.i = trunc i64 %77 to i32
  %shl.i = shl i32 %conv.i.i, 12
  %conv.i = zext i32 %shl.i to i64
  call void @unmap_mapping_range(ptr noundef %71, i64 noundef %shl.i.i, i64 noundef %conv.i, i32 noundef 1) #9
  br label %drm_vma_node_unmap.exit

drm_vma_node_unmap.exit:                          ; preds = %if.then.i, %list_del_init.exit.drm_vma_node_unmap.exit_crit_edge
  %resource = getelementptr i8, ptr %61, i32 -188
  %78 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %resource, align 4
  %80 = ptrtoint ptr %mem8 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mem8, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463158, i32 %83)
  %cmp.i = icmp ugt i32 %83, -2147463158
  br i1 %cmp.i, label %if.then.i177, label %drm_vma_node_unmap.exit.retry.backedge_crit_edge

drm_vma_node_unmap.exit.retry.backedge_crit_edge: ; preds = %drm_vma_node_unmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

if.then.i177:                                     ; preds = %drm_vma_node_unmap.exit
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %79, i32 0, i32 2
  %84 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mem_type.i, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %85, label %if.then.i177.retry.backedge_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %if.then.i177.if.end7.sink.split.i_crit_edge
  ]

if.then.i177.if.end7.sink.split.i_crit_edge:      ; preds = %if.then.i177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.sink.split.i

if.then.i177.retry.backedge_crit_edge:            ; preds = %if.then.i177
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

sw.bb.i:                                          ; preds = %if.then.i177
  %kind.i = getelementptr inbounds %struct.nouveau_mem, ptr %79, i32 0, i32 2
  %87 = ptrtoint ptr %kind.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %kind.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i, label %sw.bb.i.retry.backedge_crit_edge, label %sw.bb.i.if.end7.sink.split.i_crit_edge

sw.bb.i.if.end7.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.sink.split.i

sw.bb.i.retry.backedge_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

if.end7.sink.split.i:                             ; preds = %sw.bb.i.if.end7.sink.split.i_crit_edge, %if.then.i177.if.end7.sink.split.i_crit_edge
  %mem5.i = getelementptr inbounds %struct.nouveau_mem, ptr %79, i32 0, i32 4
  call void @nvif_object_unmap_handle(ptr noundef %mem5.i) #9
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end7.sink.split.i, %sw.bb.i.retry.backedge_crit_edge, %if.then.i177.retry.backedge_crit_edge, %drm_vma_node_unmap.exit.retry.backedge_crit_edge
  br label %retry

if.end132.loopexit:                               ; preds = %if.then114.if.end132.loopexit_crit_edge, %out.if.end132.loopexit_crit_edge, %if.end24.if.end132.loopexit_crit_edge, %lor.lhs.false.if.end132.loopexit_crit_edge, %sw.bb6.if.end132.loopexit_crit_edge, %retry.if.end132.loopexit_crit_edge
  %ret.2183.ph = phi i32 [ -28, %if.then114.if.end132.loopexit_crit_edge ], [ %8, %retry.if.end132.loopexit_crit_edge ], [ 0, %lor.lhs.false.if.end132.loopexit_crit_edge ], [ 0, %sw.bb6.if.end132.loopexit_crit_edge ], [ 0, %if.end24.if.end132.loopexit_crit_edge ], [ %call63, %out.if.end132.loopexit_crit_edge ]
  br label %if.end132

if.end132:                                        ; preds = %if.end132.loopexit, %select.unfold, %cleanup.thread, %retry.if.end132_crit_edge
  %ret.2183 = phi i32 [ -22, %select.unfold ], [ 0, %cleanup.thread ], [ %ret.2183.ph, %if.end132.loopexit ], [ -22, %retry.if.end132_crit_edge ]
  call void @mutex_unlock(ptr noundef %io_reserve_mutex) #9
  ret i32 %ret.2183
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_ttm_io_mem_free(ptr noundef %bdev, ptr noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %io_reserve_mutex = getelementptr i8, ptr %bdev, i32 3000
  tail call void @mutex_lock_nested(ptr noundef %io_reserve_mutex, i32 noundef 0) #9
  %mem1.i = getelementptr i8, ptr %bdev, i32 -336
  %0 = ptrtoint ptr %mem1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem1.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463158, i32 %3)
  %cmp.i = icmp ugt i32 %3, -2147463158
  br i1 %cmp.i, label %if.then.i, label %entry.nouveau_ttm_io_mem_free_locked.exit_crit_edge

entry.nouveau_ttm_io_mem_free_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_ttm_io_mem_free_locked.exit

if.then.i:                                        ; preds = %entry
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %reg, i32 0, i32 2
  %4 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_type.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %5, label %if.then.i.nouveau_ttm_io_mem_free_locked.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %if.then.i.if.end7.sink.split.i_crit_edge
  ]

if.then.i.if.end7.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.sink.split.i

if.then.i.nouveau_ttm_io_mem_free_locked.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_ttm_io_mem_free_locked.exit

sw.bb.i:                                          ; preds = %if.then.i
  %kind.i = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 2
  %7 = ptrtoint ptr %kind.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %kind.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %sw.bb.i.nouveau_ttm_io_mem_free_locked.exit_crit_edge, label %sw.bb.i.if.end7.sink.split.i_crit_edge

sw.bb.i.if.end7.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.sink.split.i

sw.bb.i.nouveau_ttm_io_mem_free_locked.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_ttm_io_mem_free_locked.exit

if.end7.sink.split.i:                             ; preds = %sw.bb.i.if.end7.sink.split.i_crit_edge, %if.then.i.if.end7.sink.split.i_crit_edge
  %mem5.i = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 4
  tail call void @nvif_object_unmap_handle(ptr noundef %mem5.i) #9
  br label %nouveau_ttm_io_mem_free_locked.exit

nouveau_ttm_io_mem_free_locked.exit:              ; preds = %if.end7.sink.split.i, %sw.bb.i.nouveau_ttm_io_mem_free_locked.exit_crit_edge, %if.then.i.nouveau_ttm_io_mem_free_locked.exit_crit_edge, %entry.nouveau_ttm_io_mem_free_locked.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_reserve_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_sgdma_create_ttm(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_sg_to_dma_addr_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_pool_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_sgdma_unbind(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_sgdma_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nouveau_bo_move_ntfy(ptr noundef %bo, ptr noundef %new_reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %new_reg, null
  %destroy = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 4
  %0 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destroy, align 4
  %cmp.not = icmp eq ptr %1, @nouveau_bo_del_ttm
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bdev.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %2 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev.i, align 8
  %io_reserve_mutex.i = getelementptr i8, ptr %3, i32 3000
  tail call void @mutex_lock_nested(ptr noundef %io_reserve_mutex.i, i32 noundef 0) #9
  %io_reserve_lru.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_reserve_lru.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.nouveau_bo_del_io_reserve_lru.exit_crit_edge

if.end.nouveau_bo_del_io_reserve_lru.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nouveau_bo_del_io_reserve_lru.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %io_reserve_lru.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_reserve_lru.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %nouveau_bo_del_io_reserve_lru.exit

nouveau_bo_del_io_reserve_lru.exit:               ; preds = %if.end.i.i.i, %if.end.nouveau_bo_del_io_reserve_lru.exit_crit_edge
  %10 = ptrtoint ptr %io_reserve_lru.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %io_reserve_lru.i, ptr %io_reserve_lru.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %io_reserve_lru.i, ptr %prev.i3.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %io_reserve_mutex.i) #9
  br i1 %tobool.not, label %nouveau_bo_del_io_reserve_lru.exit.if.else_crit_edge, label %land.lhs.true

nouveau_bo_del_io_reserve_lru.exit.if.else_crit_edge: ; preds = %nouveau_bo_del_io_reserve_lru.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %nouveau_bo_del_io_reserve_lru.exit
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %new_reg, i32 0, i32 2
  %12 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.not = icmp eq i32 %13, 0
  br i1 %cmp3.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true
  %page = getelementptr inbounds %struct.nouveau_mem, ptr %new_reg, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %page, align 1
  %conv = zext i8 %15 to i32
  %page6 = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 15
  %16 = ptrtoint ptr %page6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %page6, align 8
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.clear = and i32 %bf.lshr, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %conv)
  %cmp7 = icmp eq i32 %bf.clear, %conv
  br i1 %cmp7, label %if.then9, label %land.lhs.true4.if.else_crit_edge

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true4
  %vma_list = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 14
  %17 = ptrtoint ptr %vma_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn9092 = load ptr, ptr %vma_list, align 8
  %cmp11.not93 = icmp eq ptr %.pn9092, %vma_list
  br i1 %cmp11.not93, label %if.then9.if.then65_crit_edge, label %if.then9.for.body_crit_edge

if.then9.for.body_crit_edge:                      ; preds = %if.then9
  br label %for.body

if.then9.if.then65_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then9.for.body_crit_edge
  %.pn9094 = phi ptr [ %.pn90, %for.body.for.body_crit_edge ], [ %.pn9092, %if.then9.for.body_crit_edge ]
  %vma.0 = getelementptr i8, ptr %.pn9094, i32 -8
  %call13 = tail call i32 @nouveau_vma_map(ptr noundef %vma.0, ptr noundef nonnull %new_reg) #9
  %18 = ptrtoint ptr %.pn9094 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn90 = load ptr, ptr %.pn9094, align 8
  %cmp11.not = icmp eq ptr %.pn90, %vma_list
  br i1 %cmp11.not, label %for.body.if.end63_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end63_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.else:                                          ; preds = %land.lhs.true4.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %nouveau_bo_del_io_reserve_lru.exit.if.else_crit_edge
  %vma_list20 = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 14
  %19 = ptrtoint ptr %vma_list20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn95 = load ptr, ptr %vma_list20, align 8
  %cmp27.not97 = icmp eq ptr %.pn95, %vma_list20
  br i1 %cmp27.not97, label %if.else.if.end63_crit_edge, label %if.else.for.body30_crit_edge

if.else.for.body30_crit_edge:                     ; preds = %if.else
  br label %for.body30

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

for.body30:                                       ; preds = %if.end48.for.body30_crit_edge, %if.else.for.body30_crit_edge
  %.pn98 = phi ptr [ %.pn, %if.end48.for.body30_crit_edge ], [ %.pn95, %if.else.for.body30_crit_edge ]
  %vma.199 = getelementptr i8, ptr %.pn98, i32 -8
  %call31 = tail call i32 @ttm_bo_wait(ptr noundef %bo, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %for.body30.if.end48_crit_edge, label %do.end, !prof !81

for.body30.if.end48_crit_edge:                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end:                                           ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 924, i32 noundef 9, ptr noundef null) #9
  br label %if.end48

if.end48:                                         ; preds = %do.end, %for.body30.if.end48_crit_edge
  tail call void @nouveau_vma_unmap(ptr noundef %vma.199) #9
  %20 = ptrtoint ptr %.pn98 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn98, align 8
  %cmp27.not = icmp eq ptr %.pn, %vma_list20
  br i1 %cmp27.not, label %if.end48.if.end63_crit_edge, label %if.end48.for.body30_crit_edge

if.end48.for.body30_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30

if.end48.if.end63_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.end63:                                         ; preds = %if.end48.if.end63_crit_edge, %if.else.if.end63_crit_edge, %for.body.if.end63_crit_edge
  br i1 %tobool.not, label %if.end63.cleanup_crit_edge, label %if.end63.if.then65_crit_edge

if.end63.if.then65_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then65:                                        ; preds = %if.end63.if.then65_crit_edge, %if.then9.if.then65_crit_edge
  %21 = ptrtoint ptr %new_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %new_reg, align 4
  %shl = shl i32 %22, 12
  %conv66 = zext i32 %shl to i64
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %bo, i32 0, i32 13
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv66, ptr %offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end63.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_move_memcpy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nouveau_bo_vm_cleanup(ptr nocapture noundef readonly %bo, ptr noundef %new_tile, ptr nocapture noundef %old_tile) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %dev1 = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  %fence_excl.i = getelementptr inbounds %struct.dma_resv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fence_excl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %fence_excl.i, align 4
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %5, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.dma_resv_excl_fence.exit_crit_edge

entry.dma_resv_excl_fence.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge

lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @dma_resv_excl_fence.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, label %if.then.i

land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_resv_excl_fence.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @dma_resv_excl_fence.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 440, ptr noundef nonnull @.str.29) #9
  br label %dma_resv_excl_fence.exit

dma_resv_excl_fence.exit:                         ; preds = %if.then.i, %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, %land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge, %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge, %entry.dma_resv_excl_fence.exit_crit_edge
  %8 = ptrtoint ptr %old_tile to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_tile, align 4
  %tobool.not.i5 = icmp eq ptr %9, null
  br i1 %tobool.not.i5, label %dma_resv_excl_fence.exit.nv10_bo_put_tile_region.exit_crit_edge, label %if.then.i6

dma_resv_excl_fence.exit.nv10_bo_put_tile_region.exit_crit_edge: ; preds = %dma_resv_excl_fence.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nv10_bo_put_tile_region.exit

if.then.i6:                                       ; preds = %dma_resv_excl_fence.exit
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i.i, align 4
  %lock.i = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 17, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i6.dma_fence_get.exit.i_crit_edge, label %if.then.i.i

if.then.i6.dma_fence_get.exit.i_crit_edge:        ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit.i

if.then.i.i:                                      ; preds = %if.then.i6
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %7, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !92
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !80

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !81

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %dma_fence_get.exit.i

dma_fence_get.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge, %if.then.i6.dma_fence_get.exit.i_crit_edge
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %7, ptr %9, align 4
  %used.i = getelementptr inbounds %struct.nouveau_drm_tile, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %used.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %used.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %nv10_bo_put_tile_region.exit

nv10_bo_put_tile_region.exit:                     ; preds = %dma_fence_get.exit.i, %dma_resv_excl_fence.exit.nv10_bo_put_tile_region.exit_crit_edge
  %16 = ptrtoint ptr %old_tile to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %new_tile, ptr %old_tile, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_sgdma_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_map(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_unmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nouveau_fence_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fb_tile_fini(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fb_tile_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fb_tile_prog(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_sync(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_new(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_move_accel_cleanup(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_get(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_mem_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_unmap_handle(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 210, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nouveau_bo_alloc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nouveau_bo_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 454, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nouveau_bo_pin._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @nouveau_bo_pin._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 558, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nouveau_bo_sync_for_device._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @nouveau_bo_sync_for_device._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 594, i32 3}
!22 = !{ptr @nouveau_bo_sync_for_cpu._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nouveau_bo_sync_for_cpu._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 847, i32 6}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 849, i32 6}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 860, i32 5}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 861, i32 5}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 863, i32 5}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 864, i32 6}
!36 = !{ptr @nouveau_bo_move_init._methods, !37, !"_methods", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 846, i32 4}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 870, i32 21}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 883, i32 39}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 901, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nouveau_bo_move_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @nouveau_bo_move_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @nouveau_bo_driver, !48, !"nouveau_bo_driver", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 1316, i32 25}
!49 = !{ptr @drm_vma_node_reset.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/drm/drm_vma_manager.h", i32 151, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 551, i32 2}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 552, i32 2}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 565, i32 2}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 569, i32 3}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo.c", i32 993, i32 3}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @nouveau_bo_move._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @nouveau_bo_move._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/dma-resv.h", i32 440, i32 9}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2148378056, i64 2148378336, i64 2148378670, i64 2148379004}
!83 = !{i8 0, i8 2}
!84 = !{i64 2157208069}
!85 = !{i64 6247314}
!86 = !{i64 6248352}
!87 = !{i64 2157208460}
!88 = !{i64 2157208723}
!89 = !{i64 6247934}
!90 = !{!"auto-init"}
!91 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!92 = !{i64 2148541006, i64 2148541038, i64 2148541067, i64 2148541101, i64 2148541132, i64 2148541155}
