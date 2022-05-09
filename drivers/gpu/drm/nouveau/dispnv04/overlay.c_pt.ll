; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv04/overlay.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/overlay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.98, %struct.anon.99, %struct.anon.101, ptr, %struct.anon.102, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.103, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.115 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.98 = type { ptr, i32, i32, i8 }
%struct.anon.99 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.100] }
%struct.anon.100 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.101 = type { i64, i64 }
%struct.anon.102 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.94 }
%struct.anon.94 = type { ptr, i64 }
%struct.anon.103 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.110, %struct.anon.111, %struct.anon.112, %struct.anon.113 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.104, i8 }
%union.anon.104 = type { %struct.anon.108 }
%struct.anon.108 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.110 = type { i32 }
%struct.anon.111 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.112 = type { i16, i16 }
%struct.anon.113 = type { i16, i16, i16, %struct.anon.114, i16 }
%struct.anon.114 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_plane = type { %struct.drm_plane, i8, ptr, %struct.anon.116, i32, i32, i32, i32, i32, i32, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.anon.116 = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
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
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.117, %struct.anon.118, %struct.anon.119, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.117 = type { i32, i8, i32, i32 }
%struct.anon.118 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.119 = type { i32 }

@nv04_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @nv04_update_plane, ptr @nv04_disable_plane, ptr @nv_destroy_plane, ptr null, ptr @nv_set_property, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@formats = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1448695129, i32 1498831189, i32 842094158, i32 825382478], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"colorkey\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"brightness\00", [21 x i8] zeroinitializer }, align 32
@nv04_overlay_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to create plane\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv04_overlay_init\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/dispnv04/overlay.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_overlay_init._entry_ptr = internal global ptr @nv04_overlay_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unsuitable framebuffer scaling: %dx%d -> %dx%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsuitable framebuffer offset: %d,%d\0A\00", [58 x i8] zeroinitializer }, align 32
@nv10_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @nv10_update_plane, ptr @nv10_disable_plane, ptr @nv_destroy_plane, ptr null, ptr @nv_set_property, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"contrast\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hue\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"saturation\00", [21 x i8] zeroinitializer }, align 32
@nv10_overlay_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.12, ptr @.str.4, i32 359, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv10_overlay_init\00", [46 x i8] zeroinitializer }, align 32
@nv10_overlay_init._entry_ptr = internal global ptr @nv10_overlay_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 16, i64 17, i64 21, i64 26, i64 32]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"nv04_plane_funcs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 461, i32 37 }
@___asan_gen_.17 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 61, i32 17 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 486, i32 15 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 488, i32 15 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 507, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 98, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 104, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"nv10_plane_funcs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 271, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 309, i32 15 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 313, i32 15 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 315, i32 15 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/dispnv04/overlay.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 359, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @nv04_overlay_init._entry, ptr @nv04_overlay_init._entry_ptr, ptr @nv10_overlay_init._entry, ptr @nv10_overlay_init._entry_ptr, ptr @nv04_plane_funcs, ptr @formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @nv10_plane_funcs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_overlay_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_overlay_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_overlay_init(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %device, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 2
  %2 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %3)
  %cmp = icmp ult i16 %3, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 584) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.if.end9_crit_edge, label %if.end.i

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end.i:                                         ; preds = %if.then
  %call2.i = tail call i32 @drm_plane_init(ptr noundef %device, ptr noundef nonnull %call7.i.i.i, i32 noundef 1, ptr noundef nonnull @nv04_plane_funcs, ptr noundef nonnull @formats, i32 noundef 2, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.err.i_crit_edge

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call ptr @drm_property_create_range(ptr noundef %device, i32 noundef 0, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 33554431) #4
  %props.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6.i, ptr %props.i, align 8
  %call7.i = tail call ptr @drm_property_create_range(ptr noundef %device, i32 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 1024) #4
  %brightness.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %brightness.i, align 8
  %7 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %props.i, align 8
  %tobool11.not.i = icmp eq ptr %8, null
  %tobool14.not.i = icmp eq ptr %call7.i, null
  %or.cond.i = select i1 %tobool11.not.i, i1 true, i1 %tobool14.not.i
  br i1 %or.cond.i, label %cleanup.i, label %if.end16.i

if.end16.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %colorkey17.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %colorkey17.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %colorkey17.i, align 4
  %base19.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @drm_object_attach_property(ptr noundef %base19.i, ptr noundef nonnull %8, i64 noundef 0) #4
  %brightness23.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %brightness23.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %brightness23.i, align 4
  %11 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %brightness.i, align 8
  tail call void @drm_object_attach_property(ptr noundef %base19.i, ptr noundef %12, i64 noundef 512) #4
  tail call void @drm_plane_force_disable(ptr noundef nonnull %call7.i.i.i) #4
  br label %if.end9

cleanup.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_plane_cleanup(ptr noundef nonnull %call7.i.i.i) #4
  br label %err.i

err.i:                                            ; preds = %cleanup.i, %if.end.i.err.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  %drm33.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %drm33.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drm33.i, align 8
  %dev.i = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  %dev34.i = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev34.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.2, ptr noundef %name.i) #8
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %3)
  %cmp6 = icmp ult i16 %3, 65
  br i1 %cmp6, label %if.then8, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then8:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 584) #7
  %tobool.not.i15 = icmp eq ptr %call7.i.i.i14, null
  br i1 %tobool.not.i15, label %if.then8.if.end9_crit_edge, label %if.end.i16

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end.i16:                                       ; preds = %if.then8
  %20 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %chipset, align 2
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i16 %21, label %if.end.i16.sw.epilog.i_crit_edge [
    i16 16, label %if.end.i16.sw.bb.i_crit_edge
    i16 17, label %if.end.i16.sw.bb.i_crit_edge25
    i16 21, label %if.end.i16.sw.bb.i_crit_edge26
    i16 26, label %if.end.i16.sw.bb.i_crit_edge27
    i16 32, label %if.end.i16.sw.bb.i_crit_edge28
  ]

if.end.i16.sw.bb.i_crit_edge28:                   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i16.sw.bb.i_crit_edge27:                   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i16.sw.bb.i_crit_edge26:                   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i16.sw.bb.i_crit_edge25:                   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i16.sw.bb.i_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.i16.sw.epilog.i_crit_edge:                 ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i16.sw.bb.i_crit_edge, %if.end.i16.sw.bb.i_crit_edge25, %if.end.i16.sw.bb.i_crit_edge26, %if.end.i16.sw.bb.i_crit_edge27, %if.end.i16.sw.bb.i_crit_edge28
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end.i16.sw.epilog.i_crit_edge
  %num_formats.0.i = phi i32 [ 4, %if.end.i16.sw.epilog.i_crit_edge ], [ 2, %sw.bb.i ]
  %call3.i = tail call i32 @drm_plane_init(ptr noundef %device, ptr noundef nonnull %call7.i.i.i14, i32 noundef 3, ptr noundef nonnull @nv10_plane_funcs, ptr noundef nonnull @formats, i32 noundef %num_formats.0.i, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %sw.epilog.i.err.i24_crit_edge

sw.epilog.i.err.i24_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err.i24

if.end6.i:                                        ; preds = %sw.epilog.i
  %call7.i17 = tail call ptr @drm_property_create_range(ptr noundef %device, i32 noundef 0, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 33554431) #4
  %props.i18 = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 3
  %23 = ptrtoint ptr %props.i18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i17, ptr %props.i18, align 8
  %call8.i = tail call ptr @drm_property_create_range(ptr noundef %device, i32 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 0, i64 noundef 8191) #4
  %contrast.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %contrast.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i, ptr %contrast.i, align 4
  %call10.i = tail call ptr @drm_property_create_range(ptr noundef %device, i32 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 1024) #4
  %brightness.i19 = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %brightness.i19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call10.i, ptr %brightness.i19, align 8
  %call12.i = tail call ptr @drm_property_create_range(ptr noundef %device, i32 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 359) #4
  %hue.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %hue.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call12.i, ptr %hue.i, align 4
  %call14.i = tail call ptr @drm_property_create_range(ptr noundef %device, i32 noundef 0, ptr noundef nonnull @.str.11, i64 noundef 0, i64 noundef 8191) #4
  %saturation.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 3, i32 4
  %27 = ptrtoint ptr %saturation.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call14.i, ptr %saturation.i, align 8
  %28 = ptrtoint ptr %props.i18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %props.i18, align 8
  %tobool18.not.i = icmp eq ptr %29, null
  br i1 %tobool18.not.i, label %if.end6.i.cleanup.i21_crit_edge, label %lor.lhs.false.i

if.end6.i.cleanup.i21_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i21

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %30 = ptrtoint ptr %contrast.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %contrast.i, align 4
  %tobool21.not.i = icmp eq ptr %31, null
  br i1 %tobool21.not.i, label %lor.lhs.false.i.cleanup.i21_crit_edge, label %lor.lhs.false22.i

lor.lhs.false.i.cleanup.i21_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i21

lor.lhs.false22.i:                                ; preds = %lor.lhs.false.i
  %32 = ptrtoint ptr %brightness.i19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %brightness.i19, align 8
  %tobool25.not.i = icmp eq ptr %33, null
  br i1 %tobool25.not.i, label %lor.lhs.false22.i.cleanup.i21_crit_edge, label %lor.lhs.false26.i

lor.lhs.false22.i.cleanup.i21_crit_edge:          ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i21

lor.lhs.false26.i:                                ; preds = %lor.lhs.false22.i
  %34 = ptrtoint ptr %hue.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hue.i, align 4
  %tobool29.not.i = icmp eq ptr %35, null
  %tobool33.not.i = icmp eq ptr %call14.i, null
  %or.cond.i20 = select i1 %tobool29.not.i, i1 true, i1 %tobool33.not.i
  br i1 %or.cond.i20, label %lor.lhs.false26.i.cleanup.i21_crit_edge, label %if.end35.i

lor.lhs.false26.i.cleanup.i21_crit_edge:          ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i21

if.end35.i:                                       ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #6
  %colorkey36.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 4
  %36 = ptrtoint ptr %colorkey36.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %colorkey36.i, align 4
  %base38.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i.i14, i32 0, i32 4
  tail call void @drm_object_attach_property(ptr noundef %base38.i, ptr noundef nonnull %29, i64 noundef 0) #4
  %contrast43.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 5
  %37 = ptrtoint ptr %contrast43.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4096, ptr %contrast43.i, align 8
  %38 = ptrtoint ptr %contrast.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %contrast.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base38.i, ptr noundef %39, i64 noundef 4096) #4
  %brightness50.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 6
  %40 = ptrtoint ptr %brightness50.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 512, ptr %brightness50.i, align 4
  %41 = ptrtoint ptr %brightness.i19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %brightness.i19, align 8
  tail call void @drm_object_attach_property(ptr noundef %base38.i, ptr noundef %42, i64 noundef 512) #4
  %hue57.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 7
  %43 = ptrtoint ptr %hue57.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %hue57.i, align 8
  %44 = ptrtoint ptr %hue.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hue.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base38.i, ptr noundef %45, i64 noundef 0) #4
  %saturation64.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 8
  %46 = ptrtoint ptr %saturation64.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4096, ptr %saturation64.i, align 4
  %47 = ptrtoint ptr %saturation.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %saturation.i, align 8
  tail call void @drm_object_attach_property(ptr noundef %base38.i, ptr noundef %48, i64 noundef 4096) #4
  %color_encoding.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 9
  %49 = ptrtoint ptr %color_encoding.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %color_encoding.i, align 8
  %call72.i = tail call i32 @drm_plane_create_color_properties(ptr noundef nonnull %call7.i.i.i14, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %set_params.i = getelementptr inbounds %struct.nouveau_plane, ptr %call7.i.i.i14, i32 0, i32 10
  %50 = ptrtoint ptr %set_params.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @nv10_set_params, ptr %set_params.i, align 4
  tail call void @nv10_set_params(ptr noundef nonnull %call7.i.i.i14) #4
  tail call void @drm_plane_force_disable(ptr noundef nonnull %call7.i.i.i14) #4
  br label %if.end9

cleanup.i21:                                      ; preds = %lor.lhs.false26.i.cleanup.i21_crit_edge, %lor.lhs.false22.i.cleanup.i21_crit_edge, %lor.lhs.false.i.cleanup.i21_crit_edge, %if.end6.i.cleanup.i21_crit_edge
  tail call void @drm_plane_cleanup(ptr noundef nonnull %call7.i.i.i14) #4
  br label %err.i24

err.i24:                                          ; preds = %cleanup.i21, %sw.epilog.i.err.i24_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i14) #4
  %drm77.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %drm77.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %drm77.i, align 8
  %dev.i22 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %dev.i22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i22, align 8
  %dev78.i = getelementptr inbounds %struct.drm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev78.i, align 4
  %name.i23 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.2, ptr noundef %name.i23) #8
  br label %if.end9

if.end9:                                          ; preds = %err.i24, %if.end35.i, %if.then8.if.end9_crit_edge, %if.else.if.end9_crit_edge, %err.i, %if.end16.i, %if.then.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_force_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_update_plane(ptr nocapture noundef %plane, ptr nocapture noundef readnone %crtc, ptr nocapture noundef readonly %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %cur2 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 2
  %4 = ptrtoint ptr %cur2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur2, align 4
  %brightness3 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 6
  %6 = ptrtoint ptr %brightness3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness3, align 4
  %8 = mul i32 %7, 62
  %mul = add i32 %8, -31744
  %div = sdiv i32 %mul, 512
  %shr = lshr i32 %src_x, 16
  %shr4 = lshr i32 %src_y, 16
  %shr5 = lshr i32 %src_w, 16
  %shr6 = lshr i32 %src_h, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5, i32 %crtc_w)
  %cmp.i = icmp ugt i32 %shr5, %crtc_w
  call void @__sanitizer_cov_trace_cmp4(i32 %shr6, i32 %crtc_h)
  %cmp4.i = icmp ugt i32 %shr6, %crtc_h
  %or.cond.i = or i1 %cmp.i, %cmp4.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %shr5, i32 noundef %shr6, i32 noundef %crtc_w, i32 noundef %crtc_h) #4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %9 = or i32 %shr4, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.end, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %shr, i32 noundef %shr4) #4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %11 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %obj, align 4
  %call9 = tail call i32 @nouveau_bo_pin(ptr noundef %12, i32 noundef 2, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %13 = ptrtoint ptr %cur2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %cur2, align 4
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 8
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.else, label %do.body, !prof !41

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 8
  %add.ptr20 = getelementptr i8, ptr %17, i32 6816292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #4, !srcloc !43
  br label %if.end21

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816292, i32 noundef 0) #4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %do.body
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 8
  %tobool25.not = icmp eq ptr %19, null
  br i1 %tobool25.not, label %if.else39, label %do.body33, !prof !41

do.body33:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 8
  %add.ptr38 = getelementptr i8, ptr %21, i32 6816296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #4, !srcloc !43
  br label %if.end40

if.else39:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816296, i32 noundef 0) #4
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %do.body33
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 8
  %tobool44.not = icmp eq ptr %23, null
  br i1 %tobool44.not, label %if.else58, label %do.body52, !prof !41

do.body52:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 8
  %add.ptr57 = getelementptr i8, ptr %25, i32 6816300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 0) #4, !srcloc !43
  br label %if.end59

if.else58:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816300, i32 noundef 0) #4
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %do.body52
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %12, i32 0, i32 13
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 8
  %tobool63.not = icmp eq ptr %27, null
  br i1 %tobool63.not, label %if.else78, label %do.body71, !prof !41

do.body71:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %offset, align 8
  %conv = trunc i64 %29 to i32
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 8
  %add.ptr77 = getelementptr i8, ptr %31, i32 6816268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %conv) #4, !srcloc !43
  br label %if.end84

if.else78:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %offset, align 8
  %conv83 = trunc i64 %33 to i32
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816268, i32 noundef %conv83) #4
  br label %if.end84

if.end84:                                         ; preds = %if.else78, %do.body71
  %34 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map, align 8
  %tobool88.not = icmp eq ptr %35, null
  br i1 %tobool88.not, label %if.else105, label %do.body96, !prof !41

do.body96:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pitches, align 8
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 8
  %add.ptr104 = getelementptr i8, ptr %39, i32 6816276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %37) #4, !srcloc !43
  br label %if.end111

if.else105:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pitches, align 8
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816276, i32 noundef %41) #4
  br label %if.end111

if.end111:                                        ; preds = %if.else105, %do.body96
  %42 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map, align 8
  %tobool115.not = icmp eq ptr %43, null
  br i1 %tobool115.not, label %if.else131, label %do.body123, !prof !41

do.body123:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %44 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map, align 8
  %add.ptr130 = getelementptr i8, ptr %45, i32 6816284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 0) #4, !srcloc !43
  br label %if.end135

if.else131:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816284, i32 noundef 0) #4
  br label %if.end135

if.end135:                                        ; preds = %if.else131, %do.body123
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 8
  %tobool63.not.1 = icmp eq ptr %47, null
  br i1 %tobool63.not.1, label %if.else78.1, label %do.body71.1, !prof !41

do.body71.1:                                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %48 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %offset, align 8
  %conv.1 = trunc i64 %49 to i32
  %50 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map, align 8
  %add.ptr77.1 = getelementptr i8, ptr %51, i32 6816272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.1, i32 %conv.1) #4, !srcloc !43
  br label %if.end84.1

if.else78.1:                                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %offset, align 8
  %conv83.1 = trunc i64 %53 to i32
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816272, i32 noundef %conv83.1) #4
  br label %if.end84.1

if.end84.1:                                       ; preds = %if.else78.1, %do.body71.1
  %54 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map, align 8
  %tobool88.not.1 = icmp eq ptr %55, null
  br i1 %tobool88.not.1, label %if.else105.1, label %do.body96.1, !prof !41

do.body96.1:                                      ; preds = %if.end84.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %56 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pitches, align 8
  %58 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map, align 8
  %add.ptr104.1 = getelementptr i8, ptr %59, i32 6816280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104.1, i32 %57) #4, !srcloc !43
  br label %if.end111.1

if.else105.1:                                     ; preds = %if.end84.1
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pitches, align 8
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816280, i32 noundef %61) #4
  br label %if.end111.1

if.end111.1:                                      ; preds = %if.else105.1, %do.body96.1
  %62 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %map, align 8
  %tobool115.not.1 = icmp eq ptr %63, null
  br i1 %tobool115.not.1, label %if.else131.1, label %do.body123.1, !prof !41

do.body123.1:                                     ; preds = %if.end111.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %64 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %map, align 8
  %add.ptr130.1 = getelementptr i8, ptr %65, i32 6816288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130.1, i32 0) #4, !srcloc !43
  br label %if.end135.1

if.else131.1:                                     ; preds = %if.end111.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816288, i32 noundef 0) #4
  br label %if.end135.1

if.end135.1:                                      ; preds = %if.else131.1, %do.body123.1
  %66 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map, align 8
  %tobool139.not = icmp eq ptr %67, null
  br i1 %tobool139.not, label %if.else153, label %do.body147, !prof !41

do.body147:                                       ; preds = %if.end135.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %shl = shl i32 %crtc_y, 16
  %or = or i32 %shl, %crtc_x
  %68 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map, align 8
  %add.ptr152 = getelementptr i8, ptr %69, i32 6816304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %or) #4, !srcloc !43
  br label %if.end156

if.else153:                                       ; preds = %if.end135.1
  call void @__sanitizer_cov_trace_pc() #6
  %shl154 = shl i32 %crtc_y, 16
  %or155 = or i32 %shl154, %crtc_x
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816304, i32 noundef %or155) #4
  br label %if.end156

if.end156:                                        ; preds = %if.else153, %do.body147
  %70 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map, align 8
  %tobool160.not = icmp eq ptr %71, null
  br i1 %tobool160.not, label %if.else176, label %do.body168, !prof !41

do.body168:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %shl171 = shl i32 %crtc_h, 16
  %or172 = or i32 %shl171, %crtc_w
  %72 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map, align 8
  %add.ptr175 = getelementptr i8, ptr %73, i32 6816308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 %or172) #4, !srcloc !43
  br label %if.end179

if.else176:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #6
  %shl177 = shl i32 %crtc_h, 16
  %or178 = or i32 %shl177, %crtc_w
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816308, i32 noundef %or178) #4
  br label %if.end179

if.end179:                                        ; preds = %if.else176, %do.body168
  %74 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map, align 8
  %tobool183.not = icmp eq ptr %75, null
  br i1 %tobool183.not, label %if.else207, label %do.body191, !prof !41

do.body191:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %sub194 = shl nuw nsw i32 %shr6, 11
  %shl195 = add nsw i32 %sub194, -2048
  %sub196 = add i32 %crtc_h, -1
  %div197 = udiv i32 %shl195, %sub196
  %shl198 = shl i32 %div197, 16
  %sub199 = shl nuw nsw i32 %shr5, 11
  %shl200 = add nsw i32 %sub199, -2048
  %sub201 = add i32 %crtc_w, -1
  %div202 = udiv i32 %shl200, %sub201
  %or203 = or i32 %shl198, %div202
  %76 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map, align 8
  %add.ptr206 = getelementptr i8, ptr %77, i32 6816256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr206, i32 %or203) #4, !srcloc !43
  br label %if.end218

if.else207:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #6
  %sub208 = shl nuw nsw i32 %shr6, 11
  %shl209 = add nsw i32 %sub208, -2048
  %sub210 = add i32 %crtc_h, -1
  %div211 = udiv i32 %shl209, %sub210
  %shl212 = shl i32 %div211, 16
  %sub213 = shl nuw nsw i32 %shr5, 11
  %shl214 = add nsw i32 %sub213, -2048
  %sub215 = add i32 %crtc_w, -1
  %div216 = udiv i32 %shl214, %sub215
  %or217 = or i32 %shl212, %div216
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816256, i32 noundef %or217) #4
  br label %if.end218

if.end218:                                        ; preds = %if.else207, %do.body191
  %78 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %map, align 8
  %tobool222.not = icmp eq ptr %79, null
  br i1 %tobool222.not, label %if.else237, label %do.body230, !prof !41

do.body230:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %sub233 = sub nsw i32 105, %div
  %80 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %map, align 8
  %add.ptr236 = getelementptr i8, ptr %81, i32 6816384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236, i32 %sub233) #4, !srcloc !43
  br label %if.end239

if.else237:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #6
  %sub238 = sub nsw i32 105, %div
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816384, i32 noundef %sub238) #4
  br label %if.end239

if.end239:                                        ; preds = %if.else237, %do.body230
  %82 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map, align 8
  %tobool243.not = icmp eq ptr %83, null
  br i1 %tobool243.not, label %if.else258, label %do.body251, !prof !41

do.body251:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %add254 = add nsw i32 %div, 62
  %84 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %map, align 8
  %add.ptr257 = getelementptr i8, ptr %85, i32 6816388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr257, i32 %add254) #4, !srcloc !43
  br label %if.end260

if.else258:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #6
  %add259 = add nsw i32 %div, 62
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816388, i32 noundef %add259) #4
  br label %if.end260

if.end260:                                        ; preds = %if.else258, %do.body251
  %86 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %map, align 8
  %tobool264.not = icmp eq ptr %87, null
  br i1 %tobool264.not, label %if.else279, label %do.body272, !prof !41

do.body272:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %sub275 = sub nsw i32 137, %div
  %88 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %map, align 8
  %add.ptr278 = getelementptr i8, ptr %89, i32 6816392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr278, i32 %sub275) #4, !srcloc !43
  br label %if.end281

if.else279:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #6
  %sub280 = sub nsw i32 137, %div
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816392, i32 noundef %sub280) #4
  br label %if.end281

if.end281:                                        ; preds = %if.else279, %do.body272
  %90 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %map, align 8
  %tobool285.not = icmp eq ptr %91, null
  br i1 %tobool285.not, label %if.else299, label %do.body293, !prof !41

do.body293:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %92 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %map, align 8
  %add.ptr298 = getelementptr i8, ptr %93, i32 6816396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298, i32 0) #4, !srcloc !43
  br label %if.end300

if.else299:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816396, i32 noundef 0) #4
  br label %if.end300

if.end300:                                        ; preds = %if.else299, %do.body293
  %94 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %map, align 8
  %tobool304.not = icmp eq ptr %95, null
  br i1 %tobool304.not, label %if.else318, label %do.body312, !prof !41

do.body312:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %96 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %map, align 8
  %add.ptr317 = getelementptr i8, ptr %97, i32 6816260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr317, i32 1) #4, !srcloc !43
  br label %if.end319

if.else318:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816260, i32 noundef 1) #4
  br label %if.end319

if.end319:                                        ; preds = %if.else318, %do.body312
  %98 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %map, align 8
  %tobool323.not = icmp eq ptr %99, null
  br i1 %tobool323.not, label %if.else337, label %do.body331, !prof !41

do.body331:                                       ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %100 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %map, align 8
  %add.ptr336 = getelementptr i8, ptr %101, i32 6816264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr336, i32 273) #4, !srcloc !43
  br label %if.end338

if.else337:                                       ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816264, i32 noundef 273) #4
  br label %if.end338

if.end338:                                        ; preds = %if.else337, %do.body331
  %102 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %map, align 8
  %tobool342.not = icmp eq ptr %103, null
  br i1 %tobool342.not, label %if.else356, label %do.body350, !prof !41

do.body350:                                       ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %104 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %map, align 8
  %add.ptr355 = getelementptr i8, ptr %105, i32 6816316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr355, i32 3) #4, !srcloc !43
  br label %if.end357

if.else356:                                       ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816316, i32 noundef 3) #4
  br label %if.end357

if.end357:                                        ; preds = %if.else356, %do.body350
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %tobool361.not = icmp eq ptr %107, null
  br i1 %tobool361.not, label %if.else375, label %do.body369, !prof !41

do.body369:                                       ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %108 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %map, align 8
  %add.ptr374 = getelementptr i8, ptr %109, i32 6816312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr374, i32 56) #4, !srcloc !43
  br label %if.end376

if.else375:                                       ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816312, i32 noundef 56) #4
  br label %if.end376

if.end376:                                        ; preds = %if.else375, %do.body369
  %110 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %map, align 8
  %tobool380.not = icmp eq ptr %111, null
  br i1 %tobool380.not, label %if.else394, label %do.body388, !prof !41

do.body388:                                       ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %colorkey = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 4
  %112 = ptrtoint ptr %colorkey to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %colorkey, align 4
  %114 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %map, align 8
  %add.ptr393 = getelementptr i8, ptr %115, i32 6816320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr393, i32 %113) #4, !srcloc !43
  br label %if.end396

if.else394:                                       ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #6
  %colorkey395 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 4
  %116 = ptrtoint ptr %colorkey395 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %colorkey395, align 4
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816320, i32 noundef %117) #4
  br label %if.end396

if.end396:                                        ; preds = %if.else394, %do.body388
  %colorkey397 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 4
  %118 = ptrtoint ptr %colorkey397 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %colorkey397, align 4
  %and = and i32 %119, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool398.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool398.not, i32 1, i32 17
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %120 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %format, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %123)
  %cmp403 = icmp eq i32 %123, 1448695129
  %or406 = or i32 %spec.select, 256
  %overlay.1 = select i1 %cmp403, i32 %or406, i32 %spec.select
  %124 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %map, align 8
  %tobool411.not = icmp eq ptr %125, null
  br i1 %tobool411.not, label %if.else425, label %do.body419, !prof !41

do.body419:                                       ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %126 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %map, align 8
  %add.ptr424 = getelementptr i8, ptr %127, i32 6816324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr424, i32 %overlay.1) #4, !srcloc !43
  br label %if.end426

if.else425:                                       ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816324, i32 noundef %overlay.1) #4
  br label %if.end426

if.end426:                                        ; preds = %if.else425, %do.body419
  %128 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %map, align 8
  %tobool430.not = icmp eq ptr %129, null
  br i1 %tobool430.not, label %if.else485, label %do.body438, !prof !41

do.body438:                                       ; preds = %if.end426
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %130 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %map, align 8
  %tobool445.not = icmp eq ptr %131, null
  br i1 %tobool445.not, label %if.else458, label %if.then452, !prof !41

if.then452:                                       ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr455 = getelementptr i8, ptr %131, i32 6816296
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr455) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  br label %if.end460

if.else458:                                       ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #6
  %call459 = tail call i32 @nvif_object_rd(ptr noundef %device, i32 noundef 4, i64 noundef 6816296) #4
  br label %if.end460

if.end460:                                        ; preds = %if.else458, %if.then452
  %_data.0 = phi i32 [ %132, %if.then452 ], [ %call459, %if.else458 ]
  %xor = xor i32 %_data.0, 65536
  %133 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %map, align 8
  %add.ptr464 = getelementptr i8, ptr %134, i32 6816296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr464, i32 %xor) #4, !srcloc !43
  br label %if.end490

if.else485:                                       ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #6
  %call486 = tail call i32 @nvif_object_rd(ptr noundef %device, i32 noundef 4, i64 noundef 6816296) #4
  %xor489 = xor i32 %call486, 65536
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816296, i32 noundef %xor489) #4
  br label %if.end490

if.end490:                                        ; preds = %if.else485, %if.end460
  %tobool491.not = icmp eq ptr %5, null
  br i1 %tobool491.not, label %if.end490.cleanup_crit_edge, label %if.then492

if.end490.cleanup_crit_edge:                      ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then492:                                       ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #6
  %call493 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then492, %if.end490.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i, %if.then.i
  %retval.0 = phi i32 [ %call9, %if.end.cleanup_crit_edge ], [ 0, %if.then492 ], [ 0, %if.end490.cleanup_crit_edge ], [ -34, %if.then.i ], [ -34, %if.then11.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_disable_plane(ptr nocapture noundef %plane, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then, !prof !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr8 = getelementptr i8, ptr %5, i32 6816324
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 @nvif_object_rd(ptr noundef %device, i32 noundef 4, i64 noundef 6816324) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %_data3.0 = phi i32 [ %6, %if.then ], [ %call11, %if.else ]
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 8
  %tobool16.not = icmp eq ptr %8, null
  br i1 %tobool16.not, label %if.else27, label %do.body, !prof !41

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %and = and i32 %_data3.0, -2
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 8
  %add.ptr26 = getelementptr i8, ptr %10, i32 6816324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %and) #4, !srcloc !43
  br label %if.end31

if.else27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and29 = and i32 %_data3.0, -2
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816324, i32 noundef %and29) #4
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %do.body
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 8
  %tobool36.not = icmp eq ptr %12, null
  br i1 %tobool36.not, label %if.else50, label %do.body44, !prof !41

do.body44:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 8
  %add.ptr49 = getelementptr i8, ptr %14, i32 6816292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #4, !srcloc !43
  br label %if.end51

if.else50:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816292, i32 noundef 0) #4
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %do.body44
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 8
  %tobool55.not = icmp eq ptr %16, null
  br i1 %tobool55.not, label %if.else69, label %do.body63, !prof !41

do.body63:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void @arm_heavy_mb() #4
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %add.ptr68 = getelementptr i8, ptr %18, i32 6816296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #4, !srcloc !43
  br label %if.end70

if.else69:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816296, i32 noundef 0) #4
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %do.body63
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 8
  %tobool74.not = icmp eq ptr %20, null
  br i1 %tobool74.not, label %if.else88, label %do.body82, !prof !41

do.body82:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map, align 8
  %add.ptr87 = getelementptr i8, ptr %22, i32 6816300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 0) #4, !srcloc !43
  br label %if.end89

if.else88:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 6816300, i32 noundef 0) #4
  br label %if.end89

if.end89:                                         ; preds = %if.else88, %do.body82
  %cur = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 2
  %23 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur, align 4
  %tobool90.not = icmp eq ptr %24, null
  br i1 %tobool90.not, label %if.end89.if.end95_crit_edge, label %if.then91

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  %call93 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %24) #4
  %25 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %cur, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end89.if.end95_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_destroy_plane(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_force_disable(ptr noundef %plane) #4
  tail call void @drm_plane_cleanup(ptr noundef %plane) #4
  tail call void @kfree(ptr noundef %plane) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_set_property(ptr noundef %plane, ptr noundef readnone %property, i64 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %props = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 3
  %0 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %props, align 8
  %cmp = icmp eq ptr %1, %property
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i64 %value to i32
  %colorkey1 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 4
  %2 = ptrtoint ptr %colorkey1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %colorkey1, align 4
  br label %if.end39

if.else:                                          ; preds = %entry
  %contrast = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %contrast, align 4
  %cmp3 = icmp eq ptr %4, %property
  br i1 %cmp3, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %conv6 = trunc i64 %value to i32
  %contrast7 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 5
  %5 = ptrtoint ptr %contrast7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv6, ptr %contrast7, align 8
  br label %if.end39

if.else8:                                         ; preds = %if.else
  %brightness = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %brightness, align 8
  %cmp10 = icmp eq ptr %7, %property
  br i1 %cmp10, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #6
  %conv13 = trunc i64 %value to i32
  %brightness14 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 6
  %8 = ptrtoint ptr %brightness14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv13, ptr %brightness14, align 4
  br label %if.end39

if.else15:                                        ; preds = %if.else8
  %hue = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hue, align 4
  %cmp17 = icmp eq ptr %10, %property
  br i1 %cmp17, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #6
  %conv20 = trunc i64 %value to i32
  %hue21 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 7
  %11 = ptrtoint ptr %hue21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv20, ptr %hue21, align 8
  br label %if.end39

if.else22:                                        ; preds = %if.else15
  %saturation = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %saturation, align 8
  %cmp24 = icmp eq ptr %13, %property
  br i1 %cmp24, label %if.then26, label %if.else29

if.then26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  %conv27 = trunc i64 %value to i32
  %saturation28 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 8
  %14 = ptrtoint ptr %saturation28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv27, ptr %saturation28, align 4
  br label %if.end39

if.else29:                                        ; preds = %if.else22
  %color_encoding_property = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 24
  %15 = ptrtoint ptr %color_encoding_property to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %color_encoding_property, align 8
  %cmp30 = icmp eq ptr %16, %property
  br i1 %cmp30, label %if.then32, label %if.else29.cleanup_crit_edge

if.else29.cleanup_crit_edge:                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  %conv33 = trunc i64 %value to i32
  %color_encoding = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 9
  %17 = ptrtoint ptr %color_encoding to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv33, ptr %color_encoding, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.then26, %if.then19, %if.then12, %if.then5, %if.then
  %set_params = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 10
  %18 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.end39.cleanup_crit_edge, label %if.then40

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then40:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %19(ptr noundef %plane) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end39.cleanup_crit_edge, %if.else29.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else29.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv10_set_params(ptr nocapture noundef readonly %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %brightness = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 6
  %4 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brightness, align 4
  %sub = shl i32 %5, 16
  %shl = add i32 %sub, -33554432
  %contrast = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 5
  %6 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %contrast, align 8
  %or = or i32 %shl, %7
  %hue = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 7
  %8 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hue, align 8
  %saturation = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 8
  %10 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saturation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %9)
  %cmp.i = icmp sgt i32 %9, 180
  %sub.i = add i32 %9, -180
  %mul.i = sub i32 0, %11
  %degrees.addr.0.i = select i1 %cmp.i, i32 %sub.i, i32 %9
  %factor.addr.0.i = select i1 %cmp.i, i32 %mul.i, i32 %11
  %sub3.i = sub i32 180, %degrees.addr.0.i
  %mul1.i = mul i32 %sub3.i, %degrees.addr.0.i
  %mul2.i = shl i32 %factor.addr.0.i, 2
  %mul4.i = mul i32 %mul2.i, %mul1.i
  %sub7.i = sub i32 40500, %mul1.i
  %div.i = sdiv i32 %mul4.i, %sub7.i
  %shl3 = shl i32 %div.i, 16
  %add.i = add i32 %9, 90
  %rem.i = srem i32 %add.i, 360
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %rem.i)
  %cmp.i.i = icmp sgt i32 %rem.i, 180
  %sub.i.i = add nsw i32 %rem.i, -180
  %degrees.addr.0.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 %rem.i
  %factor.addr.0.i.i = select i1 %cmp.i.i, i32 %mul.i, i32 %11
  %sub3.i.i = sub nsw i32 180, %degrees.addr.0.i.i
  %mul1.i.i = mul nsw i32 %sub3.i.i, %degrees.addr.0.i.i
  %mul2.i.i = shl i32 %factor.addr.0.i.i, 2
  %mul4.i.i = mul i32 %mul2.i.i, %mul1.i.i
  %sub7.i.i = sub nsw i32 40500, %mul1.i.i
  %div.i.i = sdiv i32 %mul4.i.i, %sub7.i.i
  %and7 = and i32 %div.i.i, 65535
  %or8 = or i32 %and7, %shl3
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.else, label %do.body, !prof !41

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 35088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #4, !srcloc !43
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 35088, i32 noundef %or) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 8
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.else30, label %do.body24, !prof !41

do.body24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 8
  %add.ptr29 = getelementptr i8, ptr %19, i32 35092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %or) #4, !srcloc !43
  br label %if.end31

if.else30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 35092, i32 noundef %or) #4
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %do.body24
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 8
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %if.else49, label %do.body43, !prof !41

do.body43:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 8
  %add.ptr48 = getelementptr i8, ptr %23, i32 35096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %or8) #4, !srcloc !43
  br label %if.end50

if.else49:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 35096, i32 noundef %or8) #4
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %do.body43
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 8
  %tobool54.not = icmp eq ptr %25, null
  br i1 %tobool54.not, label %if.else68, label %do.body62, !prof !41

do.body62:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  tail call void @arm_heavy_mb() #4
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 8
  %add.ptr67 = getelementptr i8, ptr %27, i32 35100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %or8) #4, !srcloc !43
  br label %if.end69

if.else68:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 35100, i32 noundef %or8) #4
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %do.body62
  %28 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map, align 8
  %tobool73.not = icmp eq ptr %29, null
  br i1 %tobool73.not, label %if.else88, label %do.body81, !prof !41

do.body81:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  tail call void @arm_heavy_mb() #4
  %colorkey = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 4
  %30 = ptrtoint ptr %colorkey to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %colorkey, align 4
  %and84 = and i32 %31, 16777215
  %32 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map, align 8
  %add.ptr87 = getelementptr i8, ptr %33, i32 35584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %and84) #4, !srcloc !43
  br label %if.end91

if.else88:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  %colorkey89 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 4
  %34 = ptrtoint ptr %colorkey89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %colorkey89, align 4
  %and90 = and i32 %35, 16777215
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 35584, i32 noundef %and90) #4
  br label %if.end91

if.end91:                                         ; preds = %if.else88, %do.body81
  %cur = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 2
  %36 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur, align 4
  %tobool92.not = icmp eq ptr %37, null
  br i1 %tobool92.not, label %if.end91.if.end151_crit_edge, label %if.then93

if.end91.if.end151_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end151

if.then93:                                        ; preds = %if.end91
  %color_encoding = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 9
  %38 = ptrtoint ptr %color_encoding to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %color_encoding, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp = icmp eq i32 %39, 1
  %spec.select = select i1 %cmp, i32 16777216, i32 0
  %colorkey97 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 4
  %40 = ptrtoint ptr %colorkey97 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %colorkey97, align 4
  %and98 = lshr i32 %41, 4
  %42 = and i32 %and98, 1048576
  %43 = or i32 %42, %spec.select
  %flip = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 1
  %44 = ptrtoint ptr %flip to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flip, align 8, !range !75
  %46 = shl nuw nsw i8 %45, 2
  %mul = zext i8 %46 to i32
  %add = or i32 %mul, 35160
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %tobool108.not = icmp eq ptr %48, null
  br i1 %tobool108.not, label %if.else121, label %if.then115, !prof !41

if.then115:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr118 = getelementptr i8, ptr %48, i32 %add
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  br label %if.end124

if.else121:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #6
  %conv122 = zext i32 %add to i64
  %call123 = tail call i32 @nvif_object_rd(ptr noundef %device, i32 noundef 4, i64 noundef %conv122) #4
  br label %if.end124

if.end124:                                        ; preds = %if.else121, %if.then115
  %_data105.0 = phi i32 [ %49, %if.then115 ], [ %call123, %if.else121 ]
  %50 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map, align 8
  %tobool129.not = icmp eq ptr %51, null
  br i1 %tobool129.not, label %if.else145, label %do.body137, !prof !41

do.body137:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %and140 = and i32 %_data105.0, -17825793
  %or141 = or i32 %and140, %43
  %52 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map, align 8
  %add.ptr144 = getelementptr i8, ptr %53, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %or141) #4, !srcloc !43
  br label %if.end151

if.else145:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #6
  %conv146 = zext i32 %add to i64
  %and147 = and i32 %_data105.0, -17825793
  %or148 = or i32 %and147, %43
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %conv146, i32 noundef %or148) #4
  br label %if.end151

if.end151:                                        ; preds = %if.else145, %do.body137, %if.end91.if.end151_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv10_update_plane(ptr nocapture noundef %plane, ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %cur3 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 2
  %4 = ptrtoint ptr %cur3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur3, align 4
  %flip4 = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 1
  %6 = ptrtoint ptr %flip4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flip4, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  %mul = shl i32 %9, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %10 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %11)
  %cmp = icmp ugt i16 %11, 47
  %shr = lshr i32 %src_x, 16
  %shr11 = and i32 %src_y, -65536
  %shr12 = lshr i32 %src_w, 16
  %shr13 = lshr i32 %src_h, 16
  %conv.i = select i1 %cmp, i32 1, i32 3
  %shr.i = lshr i32 %shr12, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %crtc_w)
  %cmp.i = icmp ugt i32 %shr.i, %crtc_w
  %shr3.i = lshr i32 %shr13, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr3.i, i32 %crtc_h)
  %cmp4.i = icmp ugt i32 %shr3.i, %crtc_h
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i, label %verify_scaling.exit, label %if.end

verify_scaling.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %shr12, i32 noundef %shr13, i32 noundef %crtc_w, i32 noundef %crtc_h) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %12 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %obj, align 4
  %call18 = tail call i32 @nouveau_bo_pin(ptr noundef %13, i32 noundef 2, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %14 = ptrtoint ptr %cur3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %cur3, align 4
  %add = add i32 %mul, 6293600
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 8
  %tobool25.not = icmp eq ptr %16, null
  br i1 %tobool25.not, label %if.else, label %if.then31, !prof !41

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr34 = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  br label %if.end39

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %conv37 = zext i32 %add to i64
  %call38 = tail call i32 @nvif_object_rd(ptr noundef %device, i32 noundef 4, i64 noundef %conv37) #4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then31
  %_data24.0 = phi i32 [ %17, %if.then31 ], [ %call38, %if.else ]
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 8
  %tobool44.not = icmp eq ptr %19, null
  br i1 %tobool44.not, label %if.else55, label %do.body, !prof !41

do.body:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  %or = or i32 %_data24.0, 4096
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 8
  %add.ptr54 = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %or) #4, !srcloc !43
  br label %if.end59

if.else55:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %conv56 = zext i32 %add to i64
  %or58 = or i32 %_data24.0, 4096
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %conv56, i32 noundef %or58) #4
  br label %if.end59

if.end59:                                         ; preds = %if.else55, %do.body
  %add63 = select i1 %tobool6.not, i32 6301792, i32 6293600
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 8
  %tobool70.not = icmp eq ptr %23, null
  br i1 %tobool70.not, label %if.else84, label %if.then77, !prof !41

if.then77:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr81 = getelementptr i8, ptr %23, i32 %add63
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  br label %if.end87

if.else84:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  %conv85 = zext i32 %add63 to i64
  %call86 = tail call i32 @nvif_object_rd(ptr noundef %device, i32 noundef 4, i64 noundef %conv85) #4
  br label %if.end87

if.end87:                                         ; preds = %if.else84, %if.then77
  %_data67.0 = phi i32 [ %24, %if.then77 ], [ %call86, %if.else84 ]
  %25 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map, align 8
  %tobool92.not = icmp eq ptr %26, null
  br i1 %tobool92.not, label %if.else108, label %do.body100, !prof !41

do.body100:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %and103 = and i32 %_data67.0, -4097
  %27 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map, align 8
  %add.ptr107 = getelementptr i8, ptr %28, i32 %add63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %and103) #4, !srcloc !43
  br label %if.end112

if.else108:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  %conv109 = zext i32 %add63 to i64
  %and110 = and i32 %_data67.0, -4097
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %conv109, i32 noundef %and110) #4
  br label %if.end112

if.end112:                                        ; preds = %if.else108, %do.body100
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 8
  %tobool117.not = icmp eq ptr %30, null
  br i1 %tobool117.not, label %if.else135, label %do.body125, !prof !41

do.body125:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  tail call void @arm_heavy_mb() #4
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 8
  %33 = shl nuw nsw i8 %7, 2
  %mul132 = zext i8 %33 to i32
  %add133 = or i32 %mul132, 35072
  %add.ptr134 = getelementptr i8, ptr %32, i32 %add133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 0) #4, !srcloc !43
  br label %if.end141

if.else135:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  %34 = shl nuw nsw i8 %7, 2
  %mul138 = zext i8 %34 to i32
  %add139 = or i32 %mul138, 35072
  %35 = zext i32 %add139 to i64
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %35, i32 noundef 0) #4
  br label %if.end141

if.end141:                                        ; preds = %if.else135, %do.body125
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map, align 8
  %tobool145.not = icmp eq ptr %37, null
  br i1 %tobool145.not, label %if.else164, label %do.body153, !prof !41

do.body153:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  tail call void @arm_heavy_mb() #4
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %13, i32 0, i32 13
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %offset, align 8
  %conv156 = trunc i64 %39 to i32
  %40 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map, align 8
  %42 = shl nuw nsw i8 %7, 2
  %mul161 = zext i8 %42 to i32
  %add162 = or i32 %mul161, 35104
  %add.ptr163 = getelementptr i8, ptr %41, i32 %add162
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %conv156) #4, !srcloc !43
  br label %if.end172

if.else164:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #6
  %43 = shl nuw nsw i8 %7, 2
  %mul167 = zext i8 %43 to i32
  %add168 = or i32 %mul167, 35104
  %44 = zext i32 %add168 to i64
  %offset170 = getelementptr inbounds %struct.nouveau_bo, ptr %13, i32 0, i32 13
  %45 = ptrtoint ptr %offset170 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %offset170, align 8
  %conv171 = trunc i64 %46 to i32
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %44, i32 noundef %conv171) #4
  br label %if.end172

if.end172:                                        ; preds = %if.else164, %do.body153
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %tobool176.not = icmp eq ptr %48, null
  br i1 %tobool176.not, label %if.else195, label %do.body184, !prof !41

do.body184:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %shl = and i32 %src_h, -65536
  %or187 = or i32 %shl, %shr12
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 8
  %51 = shl nuw nsw i8 %7, 2
  %mul192 = zext i8 %51 to i32
  %add193 = or i32 %mul192, 35112
  %add.ptr194 = getelementptr i8, ptr %50, i32 %add193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 %or187) #4, !srcloc !43
  br label %if.end203

if.else195:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #6
  %52 = shl nuw nsw i8 %7, 2
  %mul198 = zext i8 %52 to i32
  %add199 = or i32 %mul198, 35112
  %53 = zext i32 %add199 to i64
  %shl201 = and i32 %src_h, -65536
  %or202 = or i32 %shl201, %shr12
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %53, i32 noundef %or202) #4
  br label %if.end203

if.end203:                                        ; preds = %if.else195, %do.body184
  %54 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map, align 8
  %tobool207.not = icmp eq ptr %55, null
  br i1 %tobool207.not, label %if.else227, label %do.body215, !prof !41

do.body215:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %or219 = or i32 %shr11, %shr
  %56 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map, align 8
  %58 = shl nuw nsw i8 %7, 2
  %mul224 = zext i8 %58 to i32
  %add225 = or i32 %mul224, 35120
  %add.ptr226 = getelementptr i8, ptr %57, i32 %add225
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr226, i32 %or219) #4, !srcloc !43
  br label %if.end235

if.else227:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  %59 = shl nuw nsw i8 %7, 2
  %mul230 = zext i8 %59 to i32
  %add231 = or i32 %mul230, 35120
  %60 = zext i32 %add231 to i64
  %or234 = or i32 %shr11, %shr
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %60, i32 noundef %or234) #4
  br label %if.end235

if.end235:                                        ; preds = %if.else227, %do.body215
  %61 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map, align 8
  %tobool239.not = icmp eq ptr %62, null
  br i1 %tobool239.not, label %if.else258, label %do.body247, !prof !41

do.body247:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  tail call void @arm_heavy_mb() #4
  %shl250 = shl i32 %shr12, 20
  %div = udiv i32 %shl250, %crtc_w
  %63 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map, align 8
  %65 = shl nuw nsw i8 %7, 2
  %mul255 = zext i8 %65 to i32
  %add256 = or i32 %mul255, 35128
  %add.ptr257 = getelementptr i8, ptr %64, i32 %add256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr257, i32 %div) #4, !srcloc !43
  br label %if.end266

if.else258:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #6
  %66 = shl nuw nsw i8 %7, 2
  %mul261 = zext i8 %66 to i32
  %add262 = or i32 %mul261, 35128
  %67 = zext i32 %add262 to i64
  %shl264 = shl i32 %shr12, 20
  %div265 = udiv i32 %shl264, %crtc_w
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %67, i32 noundef %div265) #4
  br label %if.end266

if.end266:                                        ; preds = %if.else258, %do.body247
  %68 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map, align 8
  %tobool270.not = icmp eq ptr %69, null
  br i1 %tobool270.not, label %if.else290, label %do.body278, !prof !41

do.body278:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %shl281 = shl i32 %shr13, 20
  %div282 = udiv i32 %shl281, %crtc_h
  %70 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map, align 8
  %72 = shl nuw nsw i8 %7, 2
  %mul287 = zext i8 %72 to i32
  %add288 = or i32 %mul287, 35136
  %add.ptr289 = getelementptr i8, ptr %71, i32 %add288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr289, i32 %div282) #4, !srcloc !43
  br label %if.end298

if.else290:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #6
  %73 = shl nuw nsw i8 %7, 2
  %mul293 = zext i8 %73 to i32
  %add294 = or i32 %mul293, 35136
  %74 = zext i32 %add294 to i64
  %shl296 = shl i32 %shr13, 20
  %div297 = udiv i32 %shl296, %crtc_h
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %74, i32 noundef %div297) #4
  br label %if.end298

if.end298:                                        ; preds = %if.else290, %do.body278
  %75 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map, align 8
  %tobool302.not = icmp eq ptr %76, null
  br i1 %tobool302.not, label %if.else322, label %do.body310, !prof !41

do.body310:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  tail call void @arm_heavy_mb() #4
  %shl313 = shl i32 %crtc_y, 16
  %or314 = or i32 %shl313, %crtc_x
  %77 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map, align 8
  %79 = shl nuw nsw i8 %7, 2
  %mul319 = zext i8 %79 to i32
  %add320 = or i32 %mul319, 35144
  %add.ptr321 = getelementptr i8, ptr %78, i32 %add320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr321, i32 %or314) #4, !srcloc !43
  br label %if.end330

if.else322:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #6
  %80 = shl nuw nsw i8 %7, 2
  %mul325 = zext i8 %80 to i32
  %add326 = or i32 %mul325, 35144
  %81 = zext i32 %add326 to i64
  %shl328 = shl i32 %crtc_y, 16
  %or329 = or i32 %shl328, %crtc_x
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %81, i32 noundef %or329) #4
  br label %if.end330

if.end330:                                        ; preds = %if.else322, %do.body310
  %82 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map, align 8
  %tobool334.not = icmp eq ptr %83, null
  br i1 %tobool334.not, label %if.else354, label %do.body342, !prof !41

do.body342:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  tail call void @arm_heavy_mb() #4
  %shl345 = shl i32 %crtc_h, 16
  %or346 = or i32 %shl345, %crtc_w
  %84 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %map, align 8
  %86 = shl nuw nsw i8 %7, 2
  %mul351 = zext i8 %86 to i32
  %add352 = or i32 %mul351, 35152
  %add.ptr353 = getelementptr i8, ptr %85, i32 %add352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr353, i32 %or346) #4, !srcloc !43
  br label %if.end362

if.else354:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #6
  %87 = shl nuw nsw i8 %7, 2
  %mul357 = zext i8 %87 to i32
  %add358 = or i32 %mul357, 35152
  %88 = zext i32 %add358 to i64
  %shl360 = shl i32 %crtc_h, 16
  %or361 = or i32 %shl360, %crtc_w
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %88, i32 noundef %or361) #4
  br label %if.end362

if.end362:                                        ; preds = %if.else354, %do.body342
  %format363 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %89 = ptrtoint ptr %format363 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %format363, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %92)
  %switch.selectcmp.case1 = icmp eq i32 %92, 1448695129
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %92)
  %switch.selectcmp.case2 = icmp eq i32 %92, 842094158
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %93 = select i1 %switch.selectcmp, i32 65536, i32 0
  %94 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %92, label %if.end362.if.end385_crit_edge [
    i32 842094158, label %if.end362.if.then383_crit_edge
    i32 825382478, label %if.end362.if.then383_crit_edge710
  ]

if.end362.if.then383_crit_edge710:                ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then383

if.end362.if.then383_crit_edge:                   ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then383

if.end362.if.end385_crit_edge:                    ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end385

if.then383:                                       ; preds = %if.end362.if.then383_crit_edge, %if.end362.if.then383_crit_edge710
  %or384 = or i32 %93, 1
  br label %if.end385

if.end385:                                        ; preds = %if.then383, %if.end362.if.end385_crit_edge
  %format.1 = phi i32 [ %or384, %if.then383 ], [ %93, %if.end362.if.end385_crit_edge ]
  %color_encoding = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 9
  %95 = ptrtoint ptr %color_encoding to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %color_encoding, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp386 = icmp eq i32 %96, 1
  %or389 = or i32 %format.1, 16777216
  %spec.select = select i1 %cmp386, i32 %or389, i32 %format.1
  %colorkey = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 4
  %97 = ptrtoint ptr %colorkey to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %colorkey, align 4
  %and391 = lshr i32 %98, 4
  %99 = and i32 %and391, 1048576
  %100 = or i32 %99, %spec.select
  %and396 = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396)
  %tobool397.not = icmp eq i32 %and396, 0
  br i1 %tobool397.not, label %if.end385.if.end466_crit_edge, label %if.then398

if.end385.if.end466_crit_edge:                    ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end466

if.then398:                                       ; preds = %if.end385
  %101 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %map, align 8
  %tobool402.not = icmp eq ptr %102, null
  br i1 %tobool402.not, label %if.else420, label %do.body410, !prof !41

do.body410:                                       ; preds = %if.then398
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  tail call void @arm_heavy_mb() #4
  %103 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %map, align 8
  %105 = shl nuw nsw i8 %7, 2
  %mul417 = zext i8 %105 to i32
  %add418 = or i32 %mul417, 34816
  %add.ptr419 = getelementptr i8, ptr %104, i32 %add418
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr419, i32 0) #4, !srcloc !43
  br label %if.end426

if.else420:                                       ; preds = %if.then398
  call void @__sanitizer_cov_trace_pc() #6
  %106 = shl nuw nsw i8 %7, 2
  %mul423 = zext i8 %106 to i32
  %add424 = or i32 %mul423, 34816
  %107 = zext i32 %add424 to i64
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %107, i32 noundef 0) #4
  br label %if.end426

if.end426:                                        ; preds = %if.else420, %do.body410
  %108 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %map, align 8
  %tobool430.not = icmp eq ptr %109, null
  br i1 %tobool430.not, label %if.else453, label %do.body438, !prof !41

do.body438:                                       ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %offset441 = getelementptr inbounds %struct.nouveau_bo, ptr %13, i32 0, i32 13
  %110 = ptrtoint ptr %offset441 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %offset441, align 8
  %arrayidx442 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 1
  %112 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx442, align 4
  %114 = trunc i64 %111 to i32
  %conv445 = add i32 %113, %114
  %115 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %map, align 8
  %117 = shl nuw nsw i8 %7, 2
  %mul450 = zext i8 %117 to i32
  %add451 = or i32 %mul450, 34848
  %add.ptr452 = getelementptr i8, ptr %116, i32 %add451
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr452, i32 %conv445) #4, !srcloc !43
  br label %if.end466

if.else453:                                       ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #6
  %118 = shl nuw nsw i8 %7, 2
  %mul456 = zext i8 %118 to i32
  %add457 = or i32 %mul456, 34848
  %119 = zext i32 %add457 to i64
  %offset459 = getelementptr inbounds %struct.nouveau_bo, ptr %13, i32 0, i32 13
  %120 = ptrtoint ptr %offset459 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %offset459, align 8
  %arrayidx461 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 1
  %122 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx461, align 4
  %124 = trunc i64 %121 to i32
  %conv464 = add i32 %123, %124
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %119, i32 noundef %conv464) #4
  br label %if.end466

if.end466:                                        ; preds = %if.else453, %do.body438, %if.end385.if.end466_crit_edge
  %125 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %map, align 8
  %tobool470.not = icmp eq ptr %126, null
  br i1 %tobool470.not, label %if.else490, label %do.body478, !prof !41

do.body478:                                       ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  tail call void @arm_heavy_mb() #4
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %127 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pitches, align 8
  %or482 = or i32 %128, %100
  %129 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %map, align 8
  %131 = shl nuw nsw i8 %7, 2
  %mul487 = zext i8 %131 to i32
  %add488 = or i32 %mul487, 35160
  %add.ptr489 = getelementptr i8, ptr %130, i32 %add488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr489, i32 %or482) #4, !srcloc !43
  br label %if.end499

if.else490:                                       ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #6
  %132 = shl nuw nsw i8 %7, 2
  %mul493 = zext i8 %132 to i32
  %add494 = or i32 %mul493, 35160
  %133 = zext i32 %add494 to i64
  %pitches496 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %134 = ptrtoint ptr %pitches496 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pitches496, align 8
  %or498 = or i32 %135, %100
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef %133, i32 noundef %or498) #4
  br label %if.end499

if.end499:                                        ; preds = %if.else490, %do.body478
  %136 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %map, align 8
  %tobool503.not = icmp eq ptr %137, null
  br i1 %tobool503.not, label %if.else517, label %do.body511, !prof !41

do.body511:                                       ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  tail call void @arm_heavy_mb() #4
  %138 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %map, align 8
  %add.ptr516 = getelementptr i8, ptr %139, i32 34564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr516, i32 0) #4, !srcloc !43
  br label %if.end518

if.else517:                                       ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 34564, i32 noundef 0) #4
  br label %if.end518

if.end518:                                        ; preds = %if.else517, %do.body511
  %140 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %map, align 8
  %tobool522.not = icmp eq ptr %141, null
  br i1 %tobool522.not, label %if.else539, label %do.body530, !prof !41

do.body530:                                       ; preds = %if.end518
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  tail call void @arm_heavy_mb() #4
  %cond535 = select i1 %tobool.not, i32 1, i32 16
  %142 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %map, align 8
  %add.ptr538 = getelementptr i8, ptr %143, i32 34560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr538, i32 %cond535) #4, !srcloc !43
  br label %if.end543

if.else539:                                       ; preds = %if.end518
  call void @__sanitizer_cov_trace_pc() #6
  %cond542 = select i1 %tobool.not, i32 1, i32 16
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 34560, i32 noundef %cond542) #4
  br label %if.end543

if.end543:                                        ; preds = %if.else539, %do.body530
  %144 = xor i8 %7, 1
  %145 = ptrtoint ptr %flip4 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %flip4, align 8
  %tobool549.not = icmp eq ptr %5, null
  br i1 %tobool549.not, label %if.end543.cleanup_crit_edge, label %if.then550

if.end543.cleanup_crit_edge:                      ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then550:                                       ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #6
  %call551 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then550, %if.end543.cleanup_crit_edge, %if.end.cleanup_crit_edge, %verify_scaling.exit
  %retval.0 = phi i32 [ -34, %verify_scaling.exit ], [ %call18, %if.end.cleanup_crit_edge ], [ 0, %if.then550 ], [ 0, %if.end543.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv10_disable_plane(ptr nocapture noundef %plane, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %do.body, !prof !41

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 34564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 1) #4, !srcloc !43
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 34564, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %cur = getelementptr inbounds %struct.nouveau_plane, ptr %plane, i32 0, i32 2
  %8 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %9) #4
  %10 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cur, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 486, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 488, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 507, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nv04_overlay_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv04_overlay_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @nv04_plane_funcs, !13, !"nv04_plane_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 461, i32 37}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 98, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 104, i32 3}
!18 = !{ptr @formats, !19, !"formats", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 61, i32 17}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 309, i32 15}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 313, i32 15}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 315, i32 15}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 359, i32 2}
!28 = !{ptr @nv10_overlay_init._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nv10_overlay_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @nv10_plane_funcs, !31, !"nv10_plane_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/dispnv04/overlay.c", i32 271, i32 37}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2157857315}
!43 = !{i64 6881947}
!44 = !{i64 2157858292}
!45 = !{i64 2157859269}
!46 = !{i64 2157860322}
!47 = !{i64 2157861394}
!48 = !{i64 2157862416}
!49 = !{i64 2157863473}
!50 = !{i64 2157864550}
!51 = !{i64 2157865947}
!52 = !{i64 2157867088}
!53 = !{i64 2157868145}
!54 = !{i64 2157869202}
!55 = !{i64 2157870195}
!56 = !{i64 2157871188}
!57 = !{i64 2157872185}
!58 = !{i64 2157873178}
!59 = !{i64 2157874170}
!60 = !{i64 2157875218}
!61 = !{i64 2157876366}
!62 = !{i64 2157880748}
!63 = !{i64 6882365}
!64 = !{i64 2157881239}
!65 = !{i64 2157884057}
!66 = !{i64 2157885034}
!67 = !{i64 2157886034}
!68 = !{i64 2157887011}
!69 = !{i64 2157887988}
!70 = !{i64 2157844036}
!71 = !{i64 2157845081}
!72 = !{i64 2157846134}
!73 = !{i64 2157847189}
!74 = !{i64 2157848271}
!75 = !{i8 0, i8 2}
!76 = !{i64 2157849947}
!77 = !{i64 2157851024}
!78 = !{i64 2157822129}
!79 = !{i64 2157823170}
!80 = !{i64 2157824778}
!81 = !{i64 2157825787}
!82 = !{i64 2157826863}
!83 = !{i64 2157827952}
!84 = !{i64 2157829080}
!85 = !{i64 2157830215}
!86 = !{i64 2157831362}
!87 = !{i64 2157832512}
!88 = !{i64 2157833658}
!89 = !{i64 2157834803}
!90 = !{i64 2157836436}
!91 = !{i64 2157837593}
!92 = !{i64 2157838754}
!93 = !{i64 2157839753}
!94 = !{i64 2157840794}
!95 = !{i64 2157842982}
