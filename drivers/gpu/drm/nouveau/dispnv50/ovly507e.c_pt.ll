; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/ovly507e.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.118, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.118 = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.117 }
%struct.anon.117 = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.92, %struct.anon.93, [4 x i8], %struct.anon.94, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.92 = type { i32, i16 }
%struct.anon.93 = type { i32, i16, i32, i32 }
%struct.anon.94 = type { i32, [4 x i8], %struct.anon.95 }
%struct.anon.95 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.96 = type { [12 x i32], i8 }
%struct.anon.97 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.98 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.99 = type { i16, i16 }
%struct.anon.100 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.101 }
%struct.anon.101 = type { i8 }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.102, %struct.anon.103, %struct.nv50_head_mode, %struct.anon.106, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.110, %struct.anon.111, %struct.anon.112, %struct.anon.114, %struct.nv50_crc_atom, %struct.anon.115, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.anon.102 = type { i32, i32, i32 }
%struct.anon.103 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i16, i16, i16, i16 }
%struct.anon.105 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.106 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.107 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.108 = type { i8, i32, [6 x i8], i8 }
%struct.anon.109 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.110 = type { i8 }
%struct.anon.111 = type { i8 }
%struct.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i16, i16 }
%struct.anon.114 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.115 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.116 }
%struct.anon.116 = type { i16 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.88, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.88 = type { [4 x i8] }
%struct.nvif_notify_uevent_req = type {}
%struct.nv50_disp_overlay_channel_dma_v0 = type { i8, i8, [6 x i8], i64 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.125, %struct.anon.126, %struct.anon.127, ptr, %struct.anon.128, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.129, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.141 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.125 = type { ptr, i32, i32, i8 }
%struct.anon.126 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.121] }
%struct.anon.121 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.127 = type { i64, i64 }
%struct.anon.128 = type { i32, i64 }
%struct.anon.129 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.136, %struct.anon.137, %struct.anon.138, %struct.anon.139 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.130, i8 }
%union.anon.130 = type { %struct.anon.134 }
%struct.anon.134 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.136 = type { i32 }
%struct.anon.137 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.138 = type { i16, i16 }
%struct.anon.139 = type { i16, i16, i16, %struct.anon.140, i16 }
%struct.anon.140 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
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

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/ovly507e.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ovly507e_scale_set = private unnamed_addr constant [19 x i8] c"ovly507e_scale_set\00", align 1
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507E_SET_POINT_IN\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507E_SET_SIZE_IN\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507E_SET_SIZE_OUT\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ovly\00", [27 x i8] zeroinitializer }, align 32
@ovly507e_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 168, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: ovly%04x allocation failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovly507e_new_\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ovly507e_new_._entry_ptr = internal global ptr @ovly507e_new_._entry, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kmsOvlyNtfy\00", [20 x i8] zeroinitializer }, align 32
@ovly507e = internal constant { %struct.nv50_wndw_func, [36 x i8] } { %struct.nv50_wndw_func { ptr @ovly507e_acquire, ptr @ovly507e_release, ptr null, ptr null, ptr null, ptr @base507c_ntfy_reset, ptr @base507c_ntfy_set, ptr @base507c_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i8 0, ptr null, ptr null, ptr @ovly507e_image_set, ptr @base507c_image_clr, ptr @ovly507e_scale_set, ptr null, ptr @base507c_update }, [36 x i8] zeroinitializer }, align 32
@ovly507e_format = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1448695129, i32 1498831189, i32 875713112, i32 892424792, i32 0], [44 x i8] zeroinitializer }, align 32
@__func__.ovly507e_image_set = private unnamed_addr constant [19 x i8] c"ovly507e_image_set\00", align 1
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507E_SET_PRESENT_CONTROL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507E_SET_CONTEXT_DMA_ISO\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507E_SET_COMPOSITION_CONTROL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507E_SURFACE_SET_OFFSET\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507E_SURFACE_SET_SIZE\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507E_SURFACE_SET_STORAGE\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507E_SURFACE_SET_PARAMS\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 44, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 158, i32 9 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 168, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 172, i32 48 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"ovly507e\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 123, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"ovly507e_format\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 137, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 66, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 70, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 72, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 75, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 77, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @ovly507e_new_._entry, ptr @ovly507e_new_._entry_ptr, ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ovly507e, ptr @ovly507e_format, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovly507e_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovly507e to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovly507e_format to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovly507e_scale_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 4
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end104_crit_edge, label %if.then.i

entry.if.end104_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end104_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end104_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.end104:                                        ; preds = %if.then.i.if.end104_crit_edge, %entry.if.end104_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end104.if.end140_crit_edge, label %do.end134, !prof !50

if.end104.if.end140_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

do.end134:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end140

if.end140:                                        ; preds = %do.end134, %if.end104.if.end140_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp153.not = icmp ult ptr %12, %14
  br i1 %cmp153.not, label %if.end140.if.end177_crit_edge, label %do.end171, !prof !50

if.end140.if.end177_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.end171:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end177

if.end177:                                        ; preds = %do.end171, %if.end140.if.end177_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle, align 4
  %name194 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 786656, i32 noundef 224, i32 noundef 3, ptr noundef nonnull @__func__.ovly507e_scale_set) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 786656, ptr %34, align 4
  %scale = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 9
  %36 = ptrtoint ptr %scale to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %scale, align 8
  %38 = and i16 %37, 32767
  %and = zext i16 %38 to i32
  %sy = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %sy to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sy, align 2
  %41 = and i16 %40, 32767
  %and209 = zext i16 %41 to i32
  %shl210 = shl nuw nsw i32 %and209, 16
  %or = or i32 %shl210, %and
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %seg.i, align 8
  %cmp216.not = icmp ult ptr %42, %44
  br i1 %cmp216.not, label %if.end177.if.end241_crit_edge, label %do.end235, !prof !50

if.end177.if.end241_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241

do.end235:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end241

if.end241:                                        ; preds = %do.end235, %if.end177.if.end241_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i, align 4
  %cmp255.not = icmp ult ptr %46, %48
  br i1 %cmp255.not, label %if.end241.if.end280_crit_edge, label %do.end274, !prof !50

if.end241.if.end280_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end280

do.end274:                                        ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end280

if.end280:                                        ; preds = %do.end274, %if.end241.if.end280_crit_edge
  %49 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cur.i, align 4
  %51 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast298 = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast299 = ptrtoint ptr %52 to i32
  %sub.ptr.sub300 = sub i32 %sub.ptr.lhs.cast298, %sub.ptr.rhs.cast299
  %53 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mem, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %client, align 4
  %name312 = getelementptr inbounds %struct.nvif_object, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %name312 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name312, align 8
  %63 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %handle, align 4
  %65 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %58(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %62, i32 noundef %64, ptr noundef %66, i32 noundef %sub.ptr.sub300, i32 noundef %or) #5
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %incdec.ptr321 = getelementptr i32, ptr %68, i32 1
  store ptr %incdec.ptr321, ptr %cur.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or, ptr %68, align 4
  %sw = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 9, i32 2
  %70 = ptrtoint ptr %sw to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %sw, align 4
  %72 = and i16 %71, 32767
  %and331 = zext i16 %72 to i32
  %sh = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 9, i32 3
  %73 = ptrtoint ptr %sh to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %sh, align 2
  %75 = and i16 %74, 32767
  %and335 = zext i16 %75 to i32
  %shl336 = shl nuw nsw i32 %and335, 16
  %or337 = or i32 %shl336, %and331
  %76 = load ptr, ptr %cur.i, align 4
  %77 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %seg.i, align 8
  %cmp343.not = icmp ult ptr %76, %78
  br i1 %cmp343.not, label %if.end280.if.end368_crit_edge, label %do.end362, !prof !50

if.end280.if.end368_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end368

do.end362:                                        ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end368

if.end368:                                        ; preds = %do.end362, %if.end280.if.end368_crit_edge
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %81 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %end.i, align 4
  %cmp382.not = icmp ult ptr %80, %82
  br i1 %cmp382.not, label %if.end368.if.end407_crit_edge, label %do.end401, !prof !50

if.end368.if.end407_crit_edge:                    ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end407

do.end401:                                        ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end407

if.end407:                                        ; preds = %do.end401, %if.end368.if.end407_crit_edge
  %83 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur.i, align 4
  %85 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast425 = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast426 = ptrtoint ptr %86 to i32
  %sub.ptr.sub427 = sub i32 %sub.ptr.lhs.cast425, %sub.ptr.rhs.cast426
  %87 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mem, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %93 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %client, align 4
  %name439 = getelementptr inbounds %struct.nvif_object, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %name439 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name439, align 8
  %97 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %handle, align 4
  %99 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %92(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %96, i32 noundef %98, ptr noundef %100, i32 noundef %sub.ptr.sub427, i32 noundef %or337) #5
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %incdec.ptr448 = getelementptr i32, ptr %102, i32 1
  store ptr %incdec.ptr448, ptr %cur.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or337, ptr %102, align 4
  %dw = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 9, i32 4
  %104 = ptrtoint ptr %dw to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %dw, align 8
  %106 = and i16 %105, 32767
  %conv460 = zext i16 %106 to i32
  %107 = load ptr, ptr %cur.i, align 4
  %108 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %seg.i, align 8
  %cmp465.not = icmp ult ptr %107, %109
  br i1 %cmp465.not, label %if.end407.if.end490_crit_edge, label %do.end484, !prof !50

if.end407.if.end490_crit_edge:                    ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end490

do.end484:                                        ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end490

if.end490:                                        ; preds = %do.end484, %if.end407.if.end490_crit_edge
  %110 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cur.i, align 4
  %112 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %end.i, align 4
  %cmp504.not = icmp ult ptr %111, %113
  br i1 %cmp504.not, label %if.end490.if.end529_crit_edge, label %do.end523, !prof !50

if.end490.if.end529_crit_edge:                    ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end529

do.end523:                                        ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end529

if.end529:                                        ; preds = %do.end523, %if.end490.if.end529_crit_edge
  %114 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cur.i, align 4
  %116 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast547 = ptrtoint ptr %115 to i32
  %sub.ptr.rhs.cast548 = ptrtoint ptr %117 to i32
  %sub.ptr.sub549 = sub i32 %sub.ptr.lhs.cast547, %sub.ptr.rhs.cast548
  %118 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mem, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %124 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %client, align 4
  %name561 = getelementptr inbounds %struct.nvif_object, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %name561 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %name561, align 8
  %128 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %handle, align 4
  %130 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %123(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %127, i32 noundef %129, ptr noundef %131, i32 noundef %sub.ptr.sub549, i32 noundef %conv460) #5
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %incdec.ptr570 = getelementptr i32, ptr %133, i32 1
  store ptr %incdec.ptr570, ptr %cur.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv460, ptr %133, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end529, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end529 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ovly507e_release(ptr nocapture readnone %wndw, ptr nocapture readnone %asyw, ptr nocapture noundef writeonly %asyh) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ovly = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 8
  %0 = ptrtoint ptr %ovly to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ovly, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovly507e_acquire(ptr nocapture readnone %wndw, ptr noundef %asyw, ptr noundef %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 2
  %0 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb1, align 8
  %call = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %asyw, ptr noundef %asyh, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %format, align 8
  %4 = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 2
  %ovly = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 8
  %7 = ptrtoint ptr %ovly to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ovly, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovly507e_new_(ptr noundef %func, ptr noundef %format, ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, i32 noundef %interlock_data, ptr nocapture noundef writeonly %pwndw) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.nvif_notify_uevent_req, align 1
  %oclass.addr = alloca i32, align 4
  %args = alloca %struct.nv50_disp_overlay_channel_dma_v0, align 8
  %wndw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oclass.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %oclass, ptr %oclass.addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #5
  %1 = getelementptr inbounds %struct.nv50_disp_overlay_channel_dma_v0, ptr %args, i32 0, i32 1
  %2 = getelementptr inbounds %struct.nv50_disp_overlay_channel_dma_v0, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %args, align 8
  %conv = trunc i32 %head to i8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %1, align 1
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 3
  %5 = call ptr @memset(ptr %2, i32 0, i32 14)
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %display.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wndw) #5
  %14 = ptrtoint ptr %wndw to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %wndw, align 4, !annotation !51
  %shl = shl nuw i32 1, %head
  %call3 = call i32 @nv50_wndw_new_(ptr noundef %func, ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %head, ptr noundef %format, i32 noundef %shl, i32 noundef 3, i32 noundef %interlock_data, ptr noundef nonnull %wndw) #5
  %15 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wndw, align 4
  %17 = ptrtoint ptr %pwndw to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %pwndw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 8
  %sync = getelementptr inbounds %struct.nv50_disp, ptr %13, i32 0, i32 3
  %20 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sync, align 8
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %offset, align 8
  %wndw5 = getelementptr inbounds %struct.nv50_wndw, ptr %16, i32 0, i32 7
  %call6 = call i32 @nv50_dmac_create(ptr noundef %device, ptr noundef %19, ptr noundef nonnull %oclass.addr, i8 noundef zeroext 0, ptr noundef nonnull %args, i32 noundef 16, i64 noundef %23, ptr noundef %wndw5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end16, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %drm11 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %drm11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drm11, align 8
  %dev12 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev12, align 8
  %dev13 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev13, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  %30 = ptrtoint ptr %oclass.addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %oclass.addr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %31, i32 noundef %call6) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %32 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wndw, align 4
  %wndw17 = getelementptr inbounds %struct.nv50_wndw, ptr %33, i32 0, i32 7
  %notify = getelementptr inbounds %struct.nv50_wndw, ptr %33, i32 0, i32 9
  %func18 = getelementptr inbounds %struct.nv50_wndw, ptr %33, i32 0, i32 9, i32 6
  %34 = ptrtoint ptr %func18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %func18, align 8
  %call20 = call i32 @nvif_notify_ctor(ptr noundef %wndw17, ptr noundef nonnull @.str.16, ptr noundef %35, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %.compoundliteral, i32 noundef 0, i32 noundef 0, ptr noundef %notify) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wndw, align 4
  %id = getelementptr inbounds %struct.nv50_wndw, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 8
  %.tr = trunc i32 %39 to i16
  %40 = shl i16 %.tr, 6
  %conv26 = add i16 %40, 352
  %ntfy = getelementptr inbounds %struct.nv50_wndw, ptr %37, i32 0, i32 10
  %41 = ptrtoint ptr %ntfy to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv26, ptr %ntfy, align 8
  %conv32 = add i16 %40, 320
  %sema = getelementptr inbounds %struct.nv50_wndw, ptr %37, i32 0, i32 11
  %42 = ptrtoint ptr %sema to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv32, ptr %sema, align 2
  %data = getelementptr inbounds %struct.nv50_wndw, ptr %37, i32 0, i32 12
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end16.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.body ], [ 0, %if.end23 ], [ %call3, %entry.cleanup_crit_edge ], [ %call20, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wndw) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_wndw_new_(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dmac_create(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovly507e_new(ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, ptr nocapture noundef writeonly %pwndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %head, 3
  %shl = shl i32 4, %mul
  %call = tail call i32 @ovly507e_new_(ptr noundef nonnull @ovly507e, ptr noundef nonnull @ovly507e_format, ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, i32 noundef %shl, ptr noundef %pwndw)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @base507c_ntfy_reset(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_set(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_clr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_wait_begun(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovly507e_image_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 12
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 12
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !50

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !50

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end117

if.end117:                                        ; preds = %do.end111, %if.end80.if.end117_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle, align 4
  %name134 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262276, i32 noundef 132, i32 noundef 1, ptr noundef nonnull @__func__.ovly507e_image_set) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262276, ptr %34, align 4
  %image = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8
  %36 = ptrtoint ptr %image to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %image, align 8
  %37 = shl i8 %bf.load, 2
  %38 = and i8 %37, -16
  %conv147 = zext i8 %38 to i32
  %39 = load ptr, ptr %cur.i, align 4
  %40 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %seg.i, align 8
  %cmp152.not = icmp ult ptr %39, %41
  br i1 %cmp152.not, label %if.end117.if.end177_crit_edge, label %do.end171, !prof !50

if.end117.if.end177_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.end171:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end177

if.end177:                                        ; preds = %do.end171, %if.end117.if.end177_crit_edge
  %42 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i, align 4
  %cmp191.not = icmp ult ptr %43, %45
  br i1 %cmp191.not, label %if.end177.if.end216_crit_edge, label %do.end210, !prof !50

if.end177.if.end216_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end216

do.end210:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end216

if.end216:                                        ; preds = %do.end210, %if.end177.if.end216_crit_edge
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %48 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast234 = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast235 = ptrtoint ptr %49 to i32
  %sub.ptr.sub236 = sub i32 %sub.ptr.lhs.cast234, %sub.ptr.rhs.cast235
  %50 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mem, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client, align 4
  %name248 = getelementptr inbounds %struct.nvif_object, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %name248 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name248, align 8
  %60 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handle, align 4
  %62 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %55(ptr noundef %mem, ptr noundef nonnull @.str.17, ptr noundef %59, i32 noundef %61, ptr noundef %63, i32 noundef %sub.ptr.sub236, i32 noundef %conv147) #5
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %incdec.ptr257 = getelementptr i32, ptr %65, i32 1
  store ptr %incdec.ptr257, ptr %cur.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv147, ptr %65, align 4
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %seg.i, align 8
  %cmp329.not = icmp ult ptr %67, %69
  br i1 %cmp329.not, label %if.end216.if.end354_crit_edge, label %do.end348, !prof !50

if.end216.if.end354_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end354

do.end348:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end354

if.end354:                                        ; preds = %do.end348, %if.end216.if.end354_crit_edge
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %cmp368.not = icmp ult ptr %71, %73
  br i1 %cmp368.not, label %if.end354.if.end393_crit_edge, label %do.end387, !prof !50

if.end354.if.end393_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end393

do.end387:                                        ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end393

if.end393:                                        ; preds = %do.end387, %if.end354.if.end393_crit_edge
  %74 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur.i, align 4
  %76 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast411 = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast412 = ptrtoint ptr %77 to i32
  %sub.ptr.sub413 = sub i32 %sub.ptr.lhs.cast411, %sub.ptr.rhs.cast412
  %78 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mem, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %client, align 4
  %name425 = getelementptr inbounds %struct.nvif_object, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %name425 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name425, align 8
  %88 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %handle, align 4
  %90 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %83(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %87, i32 noundef %89, ptr noundef %91, i32 noundef %sub.ptr.sub413, i32 noundef 262336, i32 noundef 192, i32 noundef 1, ptr noundef nonnull @__func__.ovly507e_image_set) #5
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %incdec.ptr434 = getelementptr i32, ptr %93, i32 1
  store ptr %incdec.ptr434, ptr %cur.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 262336, ptr %93, align 4
  %handle443 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 7
  %95 = ptrtoint ptr %handle443 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %handle443, align 4
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp448.not = icmp ult ptr %97, %99
  br i1 %cmp448.not, label %if.end393.if.end473_crit_edge, label %do.end467, !prof !50

if.end393.if.end473_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end473

do.end467:                                        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end473

if.end473:                                        ; preds = %do.end467, %if.end393.if.end473_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp487.not = icmp ult ptr %101, %103
  br i1 %cmp487.not, label %if.end473.if.end512_crit_edge, label %do.end506, !prof !50

if.end473.if.end512_crit_edge:                    ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end512

do.end506:                                        ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end512

if.end512:                                        ; preds = %do.end506, %if.end473.if.end512_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast530 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast531 = ptrtoint ptr %107 to i32
  %sub.ptr.sub532 = sub i32 %sub.ptr.lhs.cast530, %sub.ptr.rhs.cast531
  %108 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mem, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %114 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %client, align 4
  %name544 = getelementptr inbounds %struct.nvif_object, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %name544 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name544, align 8
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle, align 4
  %120 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub532, i32 noundef %96) #5
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr553 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr553, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %96, ptr %123, align 4
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %seg.i, align 8
  %cmp625.not = icmp ult ptr %125, %127
  br i1 %cmp625.not, label %if.end512.if.end650_crit_edge, label %do.end644, !prof !50

if.end512.if.end650_crit_edge:                    ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end650

do.end644:                                        ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end650

if.end650:                                        ; preds = %do.end644, %if.end512.if.end650_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i, align 4
  %cmp664.not = icmp ult ptr %129, %131
  br i1 %cmp664.not, label %if.end650.if.end689_crit_edge, label %do.end683, !prof !50

if.end650.if.end689_crit_edge:                    ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end689

do.end683:                                        ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end689

if.end689:                                        ; preds = %do.end683, %if.end650.if.end689_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast707 = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast708 = ptrtoint ptr %135 to i32
  %sub.ptr.sub709 = sub i32 %sub.ptr.lhs.cast707, %sub.ptr.rhs.cast708
  %136 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mem, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %142 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %client, align 4
  %name721 = getelementptr inbounds %struct.nvif_object, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %name721 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name721, align 8
  %146 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %handle, align 4
  %148 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %141(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %145, i32 noundef %147, ptr noundef %149, i32 noundef %sub.ptr.sub709, i32 noundef 262400, i32 noundef 256, i32 noundef 1, ptr noundef nonnull @__func__.ovly507e_image_set) #5
  %150 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cur.i, align 4
  %incdec.ptr730 = getelementptr i32, ptr %151, i32 1
  store ptr %incdec.ptr730, ptr %cur.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 262400, ptr %151, align 4
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %seg.i, align 8
  %cmp742.not = icmp ult ptr %153, %155
  br i1 %cmp742.not, label %if.end689.if.end767_crit_edge, label %do.end761, !prof !50

if.end689.if.end767_crit_edge:                    ; preds = %if.end689
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end767

do.end761:                                        ; preds = %if.end689
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end767

if.end767:                                        ; preds = %do.end761, %if.end689.if.end767_crit_edge
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %end.i, align 4
  %cmp781.not = icmp ult ptr %157, %159
  br i1 %cmp781.not, label %if.end767.if.end806_crit_edge, label %do.end800, !prof !50

if.end767.if.end806_crit_edge:                    ; preds = %if.end767
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end806

do.end800:                                        ; preds = %if.end767
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end806

if.end806:                                        ; preds = %do.end800, %if.end767.if.end806_crit_edge
  %160 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cur.i, align 4
  %162 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast824 = ptrtoint ptr %161 to i32
  %sub.ptr.rhs.cast825 = ptrtoint ptr %163 to i32
  %sub.ptr.sub826 = sub i32 %sub.ptr.lhs.cast824, %sub.ptr.rhs.cast825
  %164 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mem, align 8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %client, align 4
  %name838 = getelementptr inbounds %struct.nvif_object, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %name838 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name838, align 8
  %174 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %handle, align 4
  %176 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %169(ptr noundef %mem, ptr noundef nonnull @.str.19, ptr noundef %173, i32 noundef %175, ptr noundef %177, i32 noundef %sub.ptr.sub826, i32 noundef 2) #5
  %178 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cur.i, align 4
  %incdec.ptr847 = getelementptr i32, ptr %179, i32 1
  store ptr %incdec.ptr847, ptr %cur.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 2, ptr %179, align 4
  %181 = load ptr, ptr %cur.i, align 4
  %182 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %seg.i, align 8
  %cmp919.not = icmp ult ptr %181, %183
  br i1 %cmp919.not, label %if.end806.if.end944_crit_edge, label %do.end938, !prof !50

if.end806.if.end944_crit_edge:                    ; preds = %if.end806
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end944

do.end938:                                        ; preds = %if.end806
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end944

if.end944:                                        ; preds = %do.end938, %if.end806.if.end944_crit_edge
  %184 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cur.i, align 4
  %186 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %end.i, align 4
  %cmp958.not = icmp ult ptr %185, %187
  br i1 %cmp958.not, label %if.end944.if.end983_crit_edge, label %do.end977, !prof !50

if.end944.if.end983_crit_edge:                    ; preds = %if.end944
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end983

do.end977:                                        ; preds = %if.end944
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end983

if.end983:                                        ; preds = %do.end977, %if.end944.if.end983_crit_edge
  %188 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cur.i, align 4
  %190 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1001 = ptrtoint ptr %189 to i32
  %sub.ptr.rhs.cast1002 = ptrtoint ptr %191 to i32
  %sub.ptr.sub1003 = sub i32 %sub.ptr.lhs.cast1001, %sub.ptr.rhs.cast1002
  %192 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mem, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %198 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %client, align 4
  %name1015 = getelementptr inbounds %struct.nvif_object, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %name1015 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %name1015, align 8
  %202 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %handle, align 4
  %204 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %197(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %201, i32 noundef %203, ptr noundef %205, i32 noundef %sub.ptr.sub1003, i32 noundef 264192, i32 noundef 2048, i32 noundef 1, ptr noundef nonnull @__func__.ovly507e_image_set) #5
  %206 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1024 = getelementptr i32, ptr %207, i32 1
  store ptr %incdec.ptr1024, ptr %cur.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 264192, ptr %207, align 4
  %offset = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 8
  %209 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %offset, align 8
  %shr = lshr i64 %210, 8
  %conv1034 = trunc i64 %shr to i32
  %211 = load ptr, ptr %cur.i, align 4
  %212 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %seg.i, align 8
  %cmp1039.not = icmp ult ptr %211, %213
  br i1 %cmp1039.not, label %if.end983.if.end1064_crit_edge, label %do.end1058, !prof !50

if.end983.if.end1064_crit_edge:                   ; preds = %if.end983
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1064

do.end1058:                                       ; preds = %if.end983
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1064

if.end1064:                                       ; preds = %do.end1058, %if.end983.if.end1064_crit_edge
  %214 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cur.i, align 4
  %216 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %end.i, align 4
  %cmp1078.not = icmp ult ptr %215, %217
  br i1 %cmp1078.not, label %if.end1064.if.end1103_crit_edge, label %do.end1097, !prof !50

if.end1064.if.end1103_crit_edge:                  ; preds = %if.end1064
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1103

do.end1097:                                       ; preds = %if.end1064
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end1103

if.end1103:                                       ; preds = %do.end1097, %if.end1064.if.end1103_crit_edge
  %218 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cur.i, align 4
  %220 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1121 = ptrtoint ptr %219 to i32
  %sub.ptr.rhs.cast1122 = ptrtoint ptr %221 to i32
  %sub.ptr.sub1123 = sub i32 %sub.ptr.lhs.cast1121, %sub.ptr.rhs.cast1122
  %222 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mem, align 8
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  %228 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %client, align 4
  %name1135 = getelementptr inbounds %struct.nvif_object, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %name1135 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %name1135, align 8
  %232 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %handle, align 4
  %234 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %227(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %231, i32 noundef %233, ptr noundef %235, i32 noundef %sub.ptr.sub1123, i32 noundef %conv1034) #5
  %236 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1144 = getelementptr i32, ptr %237, i32 1
  store ptr %incdec.ptr1144, ptr %cur.i, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %conv1034, ptr %237, align 4
  %239 = load ptr, ptr %cur.i, align 4
  %240 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %seg.i, align 8
  %cmp1276.not = icmp ult ptr %239, %241
  br i1 %cmp1276.not, label %if.end1103.if.end1301_crit_edge, label %do.end1295, !prof !50

if.end1103.if.end1301_crit_edge:                  ; preds = %if.end1103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1301

do.end1295:                                       ; preds = %if.end1103
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1301

if.end1301:                                       ; preds = %do.end1295, %if.end1103.if.end1301_crit_edge
  %242 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %cur.i, align 4
  %244 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %end.i, align 4
  %cmp1315.not = icmp ult ptr %243, %245
  br i1 %cmp1315.not, label %if.end1301.if.end1340_crit_edge, label %do.end1334, !prof !50

if.end1301.if.end1340_crit_edge:                  ; preds = %if.end1301
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1340

do.end1334:                                       ; preds = %if.end1301
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end1340

if.end1340:                                       ; preds = %do.end1334, %if.end1301.if.end1340_crit_edge
  %246 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cur.i, align 4
  %248 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1358 = ptrtoint ptr %247 to i32
  %sub.ptr.rhs.cast1359 = ptrtoint ptr %249 to i32
  %sub.ptr.sub1360 = sub i32 %sub.ptr.lhs.cast1358, %sub.ptr.rhs.cast1359
  %250 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mem, align 8
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 4
  %256 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %client, align 4
  %name1372 = getelementptr inbounds %struct.nvif_object, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %name1372 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %name1372, align 8
  %260 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %handle, align 4
  %262 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %255(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %259, i32 noundef %261, ptr noundef %263, i32 noundef %sub.ptr.sub1360, i32 noundef 788488, i32 noundef 2056, i32 noundef 3, ptr noundef nonnull @__func__.ovly507e_image_set) #5
  %264 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1381 = getelementptr i32, ptr %265, i32 1
  store ptr %incdec.ptr1381, ptr %cur.i, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 788488, ptr %265, align 4
  %w = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 5
  %267 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %w, align 8
  %269 = and i16 %268, 32767
  %and1391 = zext i16 %269 to i32
  %h = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 6
  %270 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %h, align 2
  %272 = and i16 %271, 32767
  %and1395 = zext i16 %272 to i32
  %shl1396 = shl nuw nsw i32 %and1395, 16
  %or1397 = or i32 %shl1396, %and1391
  %273 = load ptr, ptr %cur.i, align 4
  %274 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %seg.i, align 8
  %cmp1403.not = icmp ult ptr %273, %275
  br i1 %cmp1403.not, label %if.end1340.if.end1428_crit_edge, label %do.end1422, !prof !50

if.end1340.if.end1428_crit_edge:                  ; preds = %if.end1340
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1428

do.end1422:                                       ; preds = %if.end1340
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1428

if.end1428:                                       ; preds = %do.end1422, %if.end1340.if.end1428_crit_edge
  %276 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cur.i, align 4
  %278 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %end.i, align 4
  %cmp1442.not = icmp ult ptr %277, %279
  br i1 %cmp1442.not, label %if.end1428.if.end1467_crit_edge, label %do.end1461, !prof !50

if.end1428.if.end1467_crit_edge:                  ; preds = %if.end1428
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1467

do.end1461:                                       ; preds = %if.end1428
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end1467

if.end1467:                                       ; preds = %do.end1461, %if.end1428.if.end1467_crit_edge
  %280 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %cur.i, align 4
  %282 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1485 = ptrtoint ptr %281 to i32
  %sub.ptr.rhs.cast1486 = ptrtoint ptr %283 to i32
  %sub.ptr.sub1487 = sub i32 %sub.ptr.lhs.cast1485, %sub.ptr.rhs.cast1486
  %284 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %mem, align 8
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %285, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %287, align 4
  %290 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %client, align 4
  %name1499 = getelementptr inbounds %struct.nvif_object, ptr %291, i32 0, i32 2
  %292 = ptrtoint ptr %name1499 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %name1499, align 8
  %294 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %handle, align 4
  %296 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %289(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %293, i32 noundef %295, ptr noundef %297, i32 noundef %sub.ptr.sub1487, i32 noundef %or1397) #5
  %298 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1508 = getelementptr i32, ptr %299, i32 1
  store ptr %incdec.ptr1508, ptr %cur.i, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %or1397, ptr %299, align 4
  %blockh = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 2
  %301 = ptrtoint ptr %blockh to i32
  call void @__asan_load2_noabort(i32 %301)
  %bf.load1517 = load i16, ptr %blockh, align 2
  %302 = lshr i16 %bf.load1517, 4
  %303 = and i16 %302, 15
  %conv1520 = zext i16 %303 to i32
  %pitch = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 4
  %304 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %pitch, align 4
  %306 = and i32 %305, 261888
  %or1529 = or i32 %306, %conv1520
  %blocks = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 3
  %307 = ptrtoint ptr %blocks to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %blocks, align 4
  %309 = and i16 %308, 1023
  %and1533 = zext i16 %309 to i32
  %shl1534 = shl nuw nsw i32 %and1533, 8
  %or1535 = or i32 %or1529, %shl1534
  %bf.lshr1538 = lshr i16 %bf.load1517, 8
  %310 = and i16 %bf.lshr1538, 1
  %311 = zext i16 %310 to i32
  %shl1543 = shl nuw nsw i32 %311, 20
  %or1544 = or i32 %or1535, %shl1543
  %312 = load ptr, ptr %cur.i, align 4
  %313 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %seg.i, align 8
  %cmp1550.not = icmp ult ptr %312, %314
  br i1 %cmp1550.not, label %if.end1467.if.end1575_crit_edge, label %do.end1569, !prof !50

if.end1467.if.end1575_crit_edge:                  ; preds = %if.end1467
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1575

do.end1569:                                       ; preds = %if.end1467
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1575

if.end1575:                                       ; preds = %do.end1569, %if.end1467.if.end1575_crit_edge
  %315 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %cur.i, align 4
  %317 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %end.i, align 4
  %cmp1589.not = icmp ult ptr %316, %318
  br i1 %cmp1589.not, label %if.end1575.if.end1614_crit_edge, label %do.end1608, !prof !50

if.end1575.if.end1614_crit_edge:                  ; preds = %if.end1575
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1614

do.end1608:                                       ; preds = %if.end1575
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end1614

if.end1614:                                       ; preds = %do.end1608, %if.end1575.if.end1614_crit_edge
  %319 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %cur.i, align 4
  %321 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1632 = ptrtoint ptr %320 to i32
  %sub.ptr.rhs.cast1633 = ptrtoint ptr %322 to i32
  %sub.ptr.sub1634 = sub i32 %sub.ptr.lhs.cast1632, %sub.ptr.rhs.cast1633
  %323 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %mem, align 8
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %324, align 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %326, align 4
  %329 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %client, align 4
  %name1646 = getelementptr inbounds %struct.nvif_object, ptr %330, i32 0, i32 2
  %331 = ptrtoint ptr %name1646 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %name1646, align 8
  %333 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %handle, align 4
  %335 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %328(ptr noundef %mem, ptr noundef nonnull @.str.22, ptr noundef %332, i32 noundef %334, ptr noundef %336, i32 noundef %sub.ptr.sub1634, i32 noundef %or1544) #5
  %337 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1655 = getelementptr i32, ptr %338, i32 1
  store ptr %incdec.ptr1655, ptr %cur.i, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %or1544, ptr %338, align 4
  %format = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 1
  %340 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %format, align 1
  %conv1664 = zext i8 %341 to i32
  %shl1666 = shl nuw nsw i32 %conv1664, 8
  %342 = ptrtoint ptr %image to i32
  call void @__asan_load1_noabort(i32 %342)
  %bf.load1668 = load i8, ptr %image, align 8
  %343 = and i8 %bf.load1668, 3
  %and1671 = zext i8 %343 to i32
  %or1673 = or i32 %shl1666, %and1671
  %344 = ptrtoint ptr %blockh to i32
  call void @__asan_load2_noabort(i32 %344)
  %bf.load1675 = load i16, ptr %blockh, align 2
  %bf.lshr1676 = lshr i16 %bf.load1675, 9
  %conv1678 = zext i16 %bf.lshr1676 to i32
  %shl1680 = shl nuw nsw i32 %conv1678, 16
  %or1681 = or i32 %shl1680, %or1673
  %345 = load ptr, ptr %cur.i, align 4
  %346 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %seg.i, align 8
  %cmp1688.not = icmp ult ptr %345, %347
  br i1 %cmp1688.not, label %if.end1614.if.end1713_crit_edge, label %do.end1707, !prof !50

if.end1614.if.end1713_crit_edge:                  ; preds = %if.end1614
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1713

do.end1707:                                       ; preds = %if.end1614
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1713

if.end1713:                                       ; preds = %do.end1707, %if.end1614.if.end1713_crit_edge
  %348 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %cur.i, align 4
  %350 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %end.i, align 4
  %cmp1727.not = icmp ult ptr %349, %351
  br i1 %cmp1727.not, label %if.end1713.if.end1752_crit_edge, label %do.end1746, !prof !50

if.end1713.if.end1752_crit_edge:                  ; preds = %if.end1713
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1752

do.end1746:                                       ; preds = %if.end1713
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end1752

if.end1752:                                       ; preds = %do.end1746, %if.end1713.if.end1752_crit_edge
  %352 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %cur.i, align 4
  %354 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1770 = ptrtoint ptr %353 to i32
  %sub.ptr.rhs.cast1771 = ptrtoint ptr %355 to i32
  %sub.ptr.sub1772 = sub i32 %sub.ptr.lhs.cast1770, %sub.ptr.rhs.cast1771
  %356 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %mem, align 8
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %357, align 4
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %359, align 4
  %362 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %client, align 4
  %name1784 = getelementptr inbounds %struct.nvif_object, ptr %363, i32 0, i32 2
  %364 = ptrtoint ptr %name1784 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %name1784, align 8
  %366 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %handle, align 4
  %368 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %361(ptr noundef %mem, ptr noundef nonnull @.str.23, ptr noundef %365, i32 noundef %367, ptr noundef %369, i32 noundef %sub.ptr.sub1772, i32 noundef %or1681) #5
  %370 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1793 = getelementptr i32, ptr %371, i32 1
  store ptr %incdec.ptr1793, ptr %cur.i, align 4
  %372 = ptrtoint ptr %371 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %or1681, ptr %371, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1752, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1752 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_image_clr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_update(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !15, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !31, !33, !35, !37, !38, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c", i32 44, i32 2}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.ovly507e_scale_set, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c", i32 158, i32 9}
!15 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c", i32 168, i32 3}
!17 = !{ptr @.str.13, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.14, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.15, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ovly507e_new_._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @ovly507e_new_._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c", i32 172, i32 48}
!24 = !{ptr @ovly507e, !25, !"ovly507e", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c", i32 123, i32 1}
!26 = !{ptr @__func__.ovly507e_image_set, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c", i32 66, i32 2}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c", i32 70, i32 2}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c", i32 72, i32 2}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c", i32 75, i32 2}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c", i32 77, i32 2}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ovly507e_format, !40, !"ovly507e_format", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly507e.c", i32 137, i32 1}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{!"auto-init"}
