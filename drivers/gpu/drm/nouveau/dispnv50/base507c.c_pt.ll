; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/base507c.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/base507c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.119, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.119 = type { ptr, %struct.list_head }
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
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.118 }
%struct.anon.118 = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
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
%struct.nv50_disp_base_channel_dma_v0 = type { i8, i8, [6 x i8], i64 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.117] }
%struct.anon.117 = type { [12 x %struct.ttm_pool_type] }
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
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
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

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/base507c.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.base507c_update = private unnamed_addr constant [16 x i8] c"base507c_update\00", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_UPDATE\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.base507c_image_clr = private unnamed_addr constant [19 x i8] c"base507c_image_clr\00", align 1
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SET_PRESENT_CONTROL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SET_CONTEXT_DMA_ISO\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.base507c_xlut_clr = private unnamed_addr constant [18 x i8] c"base507c_xlut_clr\00", align 1
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SET_BASE_LUT_LO\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.base507c_xlut_set = private unnamed_addr constant [18 x i8] c"base507c_xlut_set\00", align 1
@__func__.base507c_ntfy_clr = private unnamed_addr constant [18 x i8] c"base507c_ntfy_clr\00", align 1
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SET_CONTEXT_DMA_NOTIFIER\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.base507c_ntfy_set = private unnamed_addr constant [18 x i8] c"base507c_ntfy_set\00", align 1
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SET_NOTIFIER_CONTROL\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.base507c_sema_clr = private unnamed_addr constant [18 x i8] c"base507c_sema_clr\00", align 1
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SET_CONTEXT_DMA_SEMAPHORE\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.base507c_sema_set = private unnamed_addr constant [18 x i8] c"base507c_sema_set\00", align 1
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SET_SEMAPHORE_CONTROL\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SET_SEMAPHORE_ACQUIRE\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SET_SEMAPHORE_RELEASE\0A\00", [40 x i8] zeroinitializer }, align 32
@base507c_format = dso_local constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 538982467, i32 909199186, i32 892424792, i32 892424769, i32 875713112, i32 875713089, i32 808665688, i32 808665665, i32 875709016, i32 875708993, i32 1211384408, i32 1211384385, i32 0], [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"base\00", [27 x i8] zeroinitializer }, align 32
@base507c_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 327, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: base%04x allocation failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"base507c_new_\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@base507c_new_._entry_ptr = internal global ptr @base507c_new_._entry, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kmsBaseNtfy\00", [20 x i8] zeroinitializer }, align 32
@base507c = internal constant { %struct.nv50_wndw_func, [36 x i8] } { %struct.nv50_wndw_func { ptr @base507c_acquire, ptr @base507c_release, ptr null, ptr @base507c_sema_set, ptr @base507c_sema_clr, ptr @base507c_ntfy_reset, ptr @base507c_ntfy_set, ptr @base507c_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i8 1, ptr @base507c_xlut_set, ptr @base507c_xlut_clr, ptr @base507c_image_set, ptr @base507c_image_clr, ptr null, ptr null, ptr @base507c_update }, [36 x i8] zeroinitializer }, align 32
@__func__.base507c_image_set = private unnamed_addr constant [19 x i8] c"base507c_image_set\00", align 1
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SET_PROCESSING\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SET_CONVERSION\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SURFACE_SET_OFFSET(0, 0)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SURFACE_SET_SIZE(0)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SURFACE_SET_STORAGE(0)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507C_SURFACE_SET_PARAMS(0)\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 46, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 59, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 63, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 129, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 169, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 182, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 206, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 219, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"base507c_format\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 270, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 318, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 327, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 331, i32 48 }
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"base507c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 287, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 83, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 98, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/base507c.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 100, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @base507c_new_._entry, ptr @base507c_new_._entry_ptr, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @base507c_format, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @base507c, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base507c_format to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base507c_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base507c to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base507c_update(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %interlock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !71

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !71

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262272, i32 noundef 128, i32 noundef 1, ptr noundef nonnull @__func__.base507c_update) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262272, ptr %34, align 4
  %36 = ptrtoint ptr %interlock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %interlock, align 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %38, %40
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !71

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %42, %44
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !71

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end213

if.end213:                                        ; preds = %do.end207, %if.end175.if.end213_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast231 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast232 = ptrtoint ptr %48 to i32
  %sub.ptr.sub233 = sub i32 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  %49 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client, align 4
  %name245 = getelementptr inbounds %struct.nvif_object, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name245 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name245, align 8
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %61 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub233, i32 noundef %37) #6
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr254 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr254, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %37, ptr %64, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %kick.i, align 4
  tail call void %67(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end213, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end213 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base507c_image_clr(ptr nocapture noundef readonly %wndw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !71

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !71

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262276, i32 noundef 132, i32 noundef 1, ptr noundef nonnull @__func__.base507c_image_clr) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262276, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !71

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !71

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end213

if.end213:                                        ; preds = %do.end207, %if.end175.if.end213_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast231 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast232 = ptrtoint ptr %46 to i32
  %sub.ptr.sub233 = sub i32 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  %47 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 4
  %name245 = getelementptr inbounds %struct.nvif_object, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %name245 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name245, align 8
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle, align 4
  %59 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub233, i32 noundef 0) #6
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr254 = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr254, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %62, align 4
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %seg.i, align 8
  %cmp326.not = icmp ult ptr %64, %66
  br i1 %cmp326.not, label %if.end213.if.end350_crit_edge, label %do.end344, !prof !71

if.end213.if.end350_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end350

do.end344:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end350

if.end350:                                        ; preds = %do.end344, %if.end213.if.end350_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i, align 4
  %cmp364.not = icmp ult ptr %68, %70
  br i1 %cmp364.not, label %if.end350.if.end388_crit_edge, label %do.end382, !prof !71

if.end350.if.end388_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end388

do.end382:                                        ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end388

if.end388:                                        ; preds = %do.end382, %if.end350.if.end388_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast406 = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast407 = ptrtoint ptr %74 to i32
  %sub.ptr.sub408 = sub i32 %sub.ptr.lhs.cast406, %sub.ptr.rhs.cast407
  %75 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mem, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %client, align 4
  %name420 = getelementptr inbounds %struct.nvif_object, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %name420 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name420, align 8
  %85 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %handle, align 4
  %87 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %80(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %84, i32 noundef %86, ptr noundef %88, i32 noundef %sub.ptr.sub408, i32 noundef 262336, i32 noundef 192, i32 noundef 1, ptr noundef nonnull @__func__.base507c_image_clr) #6
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %incdec.ptr429 = getelementptr i32, ptr %90, i32 1
  store ptr %incdec.ptr429, ptr %cur.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 262336, ptr %90, align 4
  %92 = load ptr, ptr %cur.i, align 4
  %93 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %seg.i, align 8
  %cmp441.not = icmp ult ptr %92, %94
  br i1 %cmp441.not, label %if.end388.if.end465_crit_edge, label %do.end459, !prof !71

if.end388.if.end465_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end465

do.end459:                                        ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end465

if.end465:                                        ; preds = %do.end459, %if.end388.if.end465_crit_edge
  %95 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cur.i, align 4
  %97 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i, align 4
  %cmp479.not = icmp ult ptr %96, %98
  br i1 %cmp479.not, label %if.end465.if.end503_crit_edge, label %do.end497, !prof !71

if.end465.if.end503_crit_edge:                    ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end503

do.end497:                                        ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end503

if.end503:                                        ; preds = %do.end497, %if.end465.if.end503_crit_edge
  %99 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cur.i, align 4
  %101 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast521 = ptrtoint ptr %100 to i32
  %sub.ptr.rhs.cast522 = ptrtoint ptr %102 to i32
  %sub.ptr.sub523 = sub i32 %sub.ptr.lhs.cast521, %sub.ptr.rhs.cast522
  %103 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mem, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %109 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %client, align 4
  %name535 = getelementptr inbounds %struct.nvif_object, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %name535 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %name535, align 8
  %113 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %handle, align 4
  %115 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %108(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %112, i32 noundef %114, ptr noundef %116, i32 noundef %sub.ptr.sub523, i32 noundef 0) #6
  %117 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cur.i, align 4
  %incdec.ptr544 = getelementptr i32, ptr %118, i32 1
  store ptr %incdec.ptr544, ptr %cur.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %118, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end503, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end503 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base507c_xlut_clr(ptr nocapture noundef readonly %wndw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !71

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !71

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262368, i32 noundef 224, i32 noundef 1, ptr noundef nonnull @__func__.base507c_xlut_clr) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262368, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !71

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !71

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end213

if.end213:                                        ; preds = %do.end207, %if.end175.if.end213_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast231 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast232 = ptrtoint ptr %46 to i32
  %sub.ptr.sub233 = sub i32 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  %47 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 4
  %name245 = getelementptr inbounds %struct.nvif_object, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %name245 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name245, align 8
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle, align 4
  %59 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub233, i32 noundef 0) #6
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr254 = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr254, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end213, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end213 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base507c_xlut_set(ptr nocapture noundef readonly %wndw, ptr nocapture readnone %asyw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !71

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !71

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262368, i32 noundef 224, i32 noundef 1, ptr noundef nonnull @__func__.base507c_xlut_set) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262368, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !71

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !71

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end213

if.end213:                                        ; preds = %do.end207, %if.end175.if.end213_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast231 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast232 = ptrtoint ptr %46 to i32
  %sub.ptr.sub233 = sub i32 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  %47 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 4
  %name245 = getelementptr inbounds %struct.nvif_object, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %name245 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name245, align 8
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle, align 4
  %59 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub233, i32 noundef 1073741824) #6
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr254 = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr254, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1073741824, ptr %62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end213, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end213 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base507c_ntfy_wait_begun(ptr noundef %bo, i32 noundef %offset, ptr noundef %device) #0 align 64 {
entry:
  %_wait = alloca %struct.nvif_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %0 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvif_timer_wait_init(ptr noundef %device, i64 noundef 2000000000, ptr noundef nonnull %_wait) #6
  %div9 = lshr i32 %offset, 2
  %call11 = call i32 @nouveau_bo_rd32(ptr noundef %bo, i32 noundef %div9) #6
  %shr.mask12 = and i32 %call11, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask12)
  %cmp13 = icmp eq i32 %shr.mask12, 1073741824
  br i1 %cmp13, label %entry.do.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body:                                          ; preds = %if.end
  %call = call i32 @nouveau_bo_rd32(ptr noundef %bo, i32 noundef %div9) #6
  %shr.mask = and i32 %call, -1073741824
  %cmp = icmp eq i32 %shr.mask, 1073741824
  br i1 %cmp, label %do.body.do.end_crit_edge, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %do.body.if.end_crit_edge, %entry.if.end_crit_edge
  call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %call2 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call2)
  %cmp3 = icmp sgt i64 %call2, -1
  br i1 %cmp3, label %do.body, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge, %entry.do.end_crit_edge
  %_taken.1 = phi i64 [ 0, %entry.do.end_crit_edge ], [ %call2, %do.body.do.end_crit_edge ], [ %call2, %if.end.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  %1 = call i64 @llvm.smin.i64(i64 %_taken.1, i64 0)
  %2 = trunc i64 %1 to i32
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base507c_ntfy_clr(ptr nocapture noundef readonly %wndw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !71

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !71

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262308, i32 noundef 164, i32 noundef 1, ptr noundef nonnull @__func__.base507c_ntfy_clr) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262308, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !71

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !71

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end213

if.end213:                                        ; preds = %do.end207, %if.end175.if.end213_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast231 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast232 = ptrtoint ptr %46 to i32
  %sub.ptr.sub233 = sub i32 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  %47 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 4
  %name245 = getelementptr inbounds %struct.nvif_object, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %name245 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name245, align 8
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle, align 4
  %59 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub233, i32 noundef 0) #6
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr254 = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr254, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end213, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end213 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base507c_ntfy_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 3
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end74_crit_edge, label %if.then.i

entry.if.end74_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end74_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end74_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.end74:                                         ; preds = %if.then.i.if.end74_crit_edge, %entry.if.end74_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 3
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end74.if.end110_crit_edge, label %do.end104, !prof !71

if.end74.if.end110_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

do.end104:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end110

if.end110:                                        ; preds = %do.end104, %if.end74.if.end110_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp123.not = icmp ult ptr %12, %14
  br i1 %cmp123.not, label %if.end110.if.end147_crit_edge, label %do.end141, !prof !71

if.end110.if.end147_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

do.end141:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end147

if.end147:                                        ; preds = %do.end141, %if.end110.if.end147_crit_edge
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
  %name164 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 524448, i32 noundef 160, i32 noundef 2, ptr noundef nonnull @__func__.base507c_ntfy_set) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 524448, ptr %34, align 4
  %ntfy = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 3
  %awaken = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %awaken to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load = load i16, ptr %awaken, align 4
  %37 = lshr i16 %bf.load, 3
  %38 = and i16 %37, 1
  %and = zext i16 %38 to i32
  %shl = shl nuw nsw i32 %and, 30
  %39 = lshr i16 %bf.load, 4
  %40 = and i16 %39, 4092
  %shl183 = zext i16 %40 to i32
  %or = or i32 %shl, %shl183
  %41 = load ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %seg.i, align 8
  %cmp189.not = icmp ult ptr %41, %43
  br i1 %cmp189.not, label %if.end147.if.end214_crit_edge, label %do.end208, !prof !71

if.end147.if.end214_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

do.end208:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end214

if.end214:                                        ; preds = %do.end208, %if.end147.if.end214_crit_edge
  %44 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur.i, align 4
  %46 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i, align 4
  %cmp228.not = icmp ult ptr %45, %47
  br i1 %cmp228.not, label %if.end214.if.end253_crit_edge, label %do.end247, !prof !71

if.end214.if.end253_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end253

do.end247:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end253

if.end253:                                        ; preds = %do.end247, %if.end214.if.end253_crit_edge
  %48 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cur.i, align 4
  %50 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast271 = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast272 = ptrtoint ptr %51 to i32
  %sub.ptr.sub273 = sub i32 %sub.ptr.lhs.cast271, %sub.ptr.rhs.cast272
  %52 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mem, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %client, align 4
  %name285 = getelementptr inbounds %struct.nvif_object, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %name285 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name285, align 8
  %62 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %handle, align 4
  %64 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %57(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %61, i32 noundef %63, ptr noundef %65, i32 noundef %sub.ptr.sub273, i32 noundef %or) #6
  %66 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur.i, align 4
  %incdec.ptr294 = getelementptr i32, ptr %67, i32 1
  store ptr %incdec.ptr294, ptr %cur.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or, ptr %67, align 4
  %69 = ptrtoint ptr %ntfy to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ntfy, align 4
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %seg.i, align 8
  %cmp308.not = icmp ult ptr %71, %73
  br i1 %cmp308.not, label %if.end253.if.end333_crit_edge, label %do.end327, !prof !71

if.end253.if.end333_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end333

do.end327:                                        ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end333

if.end333:                                        ; preds = %do.end327, %if.end253.if.end333_crit_edge
  %74 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur.i, align 4
  %76 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end.i, align 4
  %cmp347.not = icmp ult ptr %75, %77
  br i1 %cmp347.not, label %if.end333.if.end372_crit_edge, label %do.end366, !prof !71

if.end333.if.end372_crit_edge:                    ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end372

do.end366:                                        ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end372

if.end372:                                        ; preds = %do.end366, %if.end333.if.end372_crit_edge
  %78 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur.i, align 4
  %80 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast390 = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast391 = ptrtoint ptr %81 to i32
  %sub.ptr.sub392 = sub i32 %sub.ptr.lhs.cast390, %sub.ptr.rhs.cast391
  %82 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mem, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %client, align 4
  %name404 = getelementptr inbounds %struct.nvif_object, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %name404 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name404, align 8
  %92 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %handle, align 4
  %94 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %87(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %91, i32 noundef %93, ptr noundef %95, i32 noundef %sub.ptr.sub392, i32 noundef %70) #6
  %96 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur.i, align 4
  %incdec.ptr413 = getelementptr i32, ptr %97, i32 1
  store ptr %incdec.ptr413, ptr %cur.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %70, ptr %97, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end372, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end372 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @base507c_ntfy_reset(ptr noundef %bo, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = lshr i32 %offset, 2
  tail call void @nouveau_bo_wr32(ptr noundef %bo, i32 noundef %div1, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base507c_sema_clr(ptr nocapture noundef readonly %wndw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !71

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !71

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262292, i32 noundef 148, i32 noundef 1, ptr noundef nonnull @__func__.base507c_sema_clr) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262292, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !71

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !71

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end213

if.end213:                                        ; preds = %do.end207, %if.end175.if.end213_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast231 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast232 = ptrtoint ptr %46 to i32
  %sub.ptr.sub233 = sub i32 %sub.ptr.lhs.cast231, %sub.ptr.rhs.cast232
  %47 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 4
  %name245 = getelementptr inbounds %struct.nvif_object, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %name245 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name245, align 8
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle, align 4
  %59 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub233, i32 noundef 0) #6
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr254 = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr254, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end213, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end213 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base507c_sema_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 5
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end134_crit_edge, label %if.then.i

entry.if.end134_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end134_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end134_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.end134:                                        ; preds = %if.then.i.if.end134_crit_edge, %entry.if.end134_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 5
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end134.if.end170_crit_edge, label %do.end164, !prof !71

if.end134.if.end170_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

do.end164:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end170

if.end170:                                        ; preds = %do.end164, %if.end134.if.end170_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp183.not = icmp ult ptr %12, %14
  br i1 %cmp183.not, label %if.end170.if.end207_crit_edge, label %do.end201, !prof !71

if.end170.if.end207_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

do.end201:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end207

if.end207:                                        ; preds = %do.end201, %if.end170.if.end207_crit_edge
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
  %name224 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name224 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name224, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 1048712, i32 noundef 136, i32 noundef 4, ptr noundef nonnull @__func__.base507c_sema_set) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1048712, ptr %34, align 4
  %sema = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 4
  %offset = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load = load i16, ptr %offset, align 4
  %bf.lshr = lshr i16 %bf.load, 4
  %conv = zext i16 %bf.lshr to i32
  %37 = load ptr, ptr %cur.i, align 4
  %38 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %seg.i, align 8
  %cmp241.not = icmp ult ptr %37, %39
  br i1 %cmp241.not, label %if.end207.if.end266_crit_edge, label %do.end260, !prof !71

if.end207.if.end266_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end266

do.end260:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end266

if.end266:                                        ; preds = %do.end260, %if.end207.if.end266_crit_edge
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %cmp280.not = icmp ult ptr %41, %43
  br i1 %cmp280.not, label %if.end266.if.end305_crit_edge, label %do.end299, !prof !71

if.end266.if.end305_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end305

do.end299:                                        ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end305

if.end305:                                        ; preds = %do.end299, %if.end266.if.end305_crit_edge
  %44 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur.i, align 4
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast323 = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast324 = ptrtoint ptr %47 to i32
  %sub.ptr.sub325 = sub i32 %sub.ptr.lhs.cast323, %sub.ptr.rhs.cast324
  %48 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mem, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client, align 4
  %name337 = getelementptr inbounds %struct.nvif_object, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %name337 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name337, align 8
  %58 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %handle, align 4
  %60 = ptrtoint ptr %name224 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name224, align 8
  tail call void (ptr, ptr, ...) %53(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %57, i32 noundef %59, ptr noundef %61, i32 noundef %sub.ptr.sub325, i32 noundef %conv) #6
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %incdec.ptr346 = getelementptr i32, ptr %63, i32 1
  store ptr %incdec.ptr346, ptr %cur.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv, ptr %63, align 4
  %acquire = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 4, i32 2
  %65 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %acquire, align 4
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %seg.i, align 8
  %cmp359.not = icmp ult ptr %67, %69
  br i1 %cmp359.not, label %if.end305.if.end384_crit_edge, label %do.end378, !prof !71

if.end305.if.end384_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end384

do.end378:                                        ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end384

if.end384:                                        ; preds = %do.end378, %if.end305.if.end384_crit_edge
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %cmp398.not = icmp ult ptr %71, %73
  br i1 %cmp398.not, label %if.end384.if.end423_crit_edge, label %do.end417, !prof !71

if.end384.if.end423_crit_edge:                    ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end423

do.end417:                                        ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end423

if.end423:                                        ; preds = %do.end417, %if.end384.if.end423_crit_edge
  %74 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur.i, align 4
  %76 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast441 = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast442 = ptrtoint ptr %77 to i32
  %sub.ptr.sub443 = sub i32 %sub.ptr.lhs.cast441, %sub.ptr.rhs.cast442
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
  %name455 = getelementptr inbounds %struct.nvif_object, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %name455 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name455, align 8
  %88 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %handle, align 4
  %90 = ptrtoint ptr %name224 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name224, align 8
  tail call void (ptr, ptr, ...) %83(ptr noundef %mem, ptr noundef nonnull @.str.17, ptr noundef %87, i32 noundef %89, ptr noundef %91, i32 noundef %sub.ptr.sub443, i32 noundef %66) #6
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %incdec.ptr464 = getelementptr i32, ptr %93, i32 1
  store ptr %incdec.ptr464, ptr %cur.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %66, ptr %93, align 4
  %release = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 4, i32 3
  %95 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %release, align 4
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp477.not = icmp ult ptr %97, %99
  br i1 %cmp477.not, label %if.end423.if.end502_crit_edge, label %do.end496, !prof !71

if.end423.if.end502_crit_edge:                    ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end502

do.end496:                                        ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end502

if.end502:                                        ; preds = %do.end496, %if.end423.if.end502_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp516.not = icmp ult ptr %101, %103
  br i1 %cmp516.not, label %if.end502.if.end541_crit_edge, label %do.end535, !prof !71

if.end502.if.end541_crit_edge:                    ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end541

do.end535:                                        ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end541

if.end541:                                        ; preds = %do.end535, %if.end502.if.end541_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast559 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast560 = ptrtoint ptr %107 to i32
  %sub.ptr.sub561 = sub i32 %sub.ptr.lhs.cast559, %sub.ptr.rhs.cast560
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
  %name573 = getelementptr inbounds %struct.nvif_object, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %name573 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name573, align 8
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle, align 4
  %120 = ptrtoint ptr %name224 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name224, align 8
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub561, i32 noundef %96) #6
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr582 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr582, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %96, ptr %123, align 4
  %125 = ptrtoint ptr %sema to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sema, align 4
  %127 = load ptr, ptr %cur.i, align 4
  %128 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %seg.i, align 8
  %cmp596.not = icmp ult ptr %127, %129
  br i1 %cmp596.not, label %if.end541.if.end621_crit_edge, label %do.end615, !prof !71

if.end541.if.end621_crit_edge:                    ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end621

do.end615:                                        ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end621

if.end621:                                        ; preds = %do.end615, %if.end541.if.end621_crit_edge
  %130 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cur.i, align 4
  %132 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %end.i, align 4
  %cmp635.not = icmp ult ptr %131, %133
  br i1 %cmp635.not, label %if.end621.if.end660_crit_edge, label %do.end654, !prof !71

if.end621.if.end660_crit_edge:                    ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end660

do.end654:                                        ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end660

if.end660:                                        ; preds = %do.end654, %if.end621.if.end660_crit_edge
  %134 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cur.i, align 4
  %136 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast678 = ptrtoint ptr %135 to i32
  %sub.ptr.rhs.cast679 = ptrtoint ptr %137 to i32
  %sub.ptr.sub680 = sub i32 %sub.ptr.lhs.cast678, %sub.ptr.rhs.cast679
  %138 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mem, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %144 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %client, align 4
  %name692 = getelementptr inbounds %struct.nvif_object, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %name692 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %name692, align 8
  %148 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %handle, align 4
  %150 = ptrtoint ptr %name224 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %name224, align 8
  tail call void (ptr, ptr, ...) %143(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %147, i32 noundef %149, ptr noundef %151, i32 noundef %sub.ptr.sub680, i32 noundef %126) #6
  %152 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur.i, align 4
  %incdec.ptr701 = getelementptr i32, ptr %153, i32 1
  store ptr %incdec.ptr701, ptr %cur.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %126, ptr %153, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end660, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end660 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @base507c_release(ptr nocapture readnone %wndw, ptr nocapture readnone %asyw, ptr nocapture noundef writeonly %asyh) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cpp = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %cpp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cpp, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base507c_acquire(ptr nocapture noundef readonly %wndw, ptr noundef %asyw, ptr noundef %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 2
  %0 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb1, align 8
  %call = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %asyw, ptr noundef %asyh, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wndw, align 8
  %ilut = getelementptr inbounds %struct.nv50_wndw_func, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ilut to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ilut, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then5:                                         ; preds = %if.end
  %cpp = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %cpp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cpp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp ne i8 %7, 1
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format, align 8
  %10 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp8 = icmp ne i8 %12, 1
  %xor69 = xor i1 %cmp, %cmp8
  br i1 %xor69, label %if.then11, label %if.then5.if.end14_crit_edge

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh, i32 0, i32 3
  %13 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %color_mgmt_changed, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then5.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %format15 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %format15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %format15, align 8
  %depth = getelementptr inbounds %struct.drm_format_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %depth, align 4
  %base16 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7
  %18 = ptrtoint ptr %base16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %base16, align 8
  %19 = load ptr, ptr %format15, align 8
  %20 = getelementptr inbounds %struct.drm_format_info, ptr %19, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 2
  %cpp21 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %cpp21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %cpp21, align 1
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 20
  %24 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src, align 4
  %26 = lshr i32 %25, 16
  %conv23 = trunc i32 %26 to i16
  %x = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %x to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv23, ptr %x, align 2
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 20, i32 1
  %28 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %y1, align 4
  %30 = lshr i32 %29, 16
  %conv28 = trunc i32 %30 to i16
  %y = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 3
  %31 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv28, ptr %y, align 4
  %32 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fb1, align 8
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width, align 8
  %conv32 = trunc i32 %35 to i16
  %w = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 4
  %36 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv32, ptr %w, align 2
  %37 = load ptr, ptr %fb1, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  %conv36 = trunc i32 %39 to i16
  %h = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 5
  %40 = ptrtoint ptr %h to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv36, ptr %h, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool40.not = icmp eq i8 %17, 0
  br i1 %tobool40.not, label %if.then41, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i8 %22, 3
  %41 = ptrtoint ptr %base16 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %mul, ptr %base16, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @base507c_new_(ptr noundef %func, ptr noundef %format, ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, i32 noundef %interlock_data, ptr nocapture noundef writeonly %pwndw) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.nvif_notify_uevent_req, align 1
  %oclass.addr = alloca i32, align 4
  %args = alloca %struct.nv50_disp_base_channel_dma_v0, align 8
  %wndw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oclass.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %oclass, ptr %oclass.addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #6
  %1 = getelementptr inbounds %struct.nv50_disp_base_channel_dma_v0, ptr %args, i32 0, i32 1
  %2 = getelementptr inbounds %struct.nv50_disp_base_channel_dma_v0, ptr %args, i32 0, i32 2
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
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %display.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wndw) #6
  %14 = ptrtoint ptr %wndw to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %wndw, align 4, !annotation !72
  %shl = shl nuw i32 1, %head
  %call5 = call i32 @nv50_wndw_new_(ptr noundef %func, ptr noundef %7, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %head, ptr noundef %format, i32 noundef %shl, i32 noundef 2, i32 noundef %interlock_data, ptr noundef nonnull %wndw) #6
  %15 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wndw, align 4
  %17 = ptrtoint ptr %pwndw to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %pwndw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3
  %disp6 = getelementptr inbounds %struct.nouveau_display, ptr %11, i32 0, i32 4
  %sync = getelementptr inbounds %struct.nv50_disp, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sync, align 8
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %offset, align 8
  %wndw8 = getelementptr inbounds %struct.nv50_wndw, ptr %16, i32 0, i32 7
  %call9 = call i32 @nv50_dmac_create(ptr noundef %device, ptr noundef %disp6, ptr noundef nonnull %oclass.addr, i8 noundef zeroext %conv, ptr noundef nonnull %args, i32 noundef 16, i64 noundef %21, ptr noundef %wndw8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %drm14 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %drm14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drm14, align 8
  %dev15 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev15, align 8
  %dev16 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev16, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  %28 = ptrtoint ptr %oclass.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %oclass.addr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %29, i32 noundef %call9) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %30 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wndw, align 4
  %wndw20 = getelementptr inbounds %struct.nv50_wndw, ptr %31, i32 0, i32 7
  %notify = getelementptr inbounds %struct.nv50_wndw, ptr %31, i32 0, i32 9
  %func21 = getelementptr inbounds %struct.nv50_wndw, ptr %31, i32 0, i32 9, i32 6
  %32 = ptrtoint ptr %func21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %func21, align 8
  %call23 = call i32 @nvif_notify_ctor(ptr noundef %wndw20, ptr noundef nonnull @.str.24, ptr noundef %33, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %.compoundliteral, i32 noundef 0, i32 noundef 0, ptr noundef %notify) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wndw, align 4
  %id = getelementptr inbounds %struct.nv50_wndw, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id, align 8
  %.tr = trunc i32 %37 to i16
  %38 = shl i16 %.tr, 6
  %conv29 = add i16 %38, 96
  %ntfy = getelementptr inbounds %struct.nv50_wndw, ptr %35, i32 0, i32 10
  %39 = ptrtoint ptr %ntfy to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv29, ptr %ntfy, align 8
  %conv35 = add i16 %38, 64
  %sema = getelementptr inbounds %struct.nv50_wndw, ptr %35, i32 0, i32 11
  %40 = ptrtoint ptr %sema to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv35, ptr %sema, align 2
  %data = getelementptr inbounds %struct.nv50_wndw, ptr %35, i32 0, i32 12
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end19.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.body ], [ 0, %if.end26 ], [ %call5, %entry.cleanup_crit_edge ], [ %call23, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wndw) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #6
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
define dso_local i32 @base507c_new(ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, ptr nocapture noundef writeonly %pwndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %head, 3
  %shl = shl i32 2, %mul
  %call = tail call i32 @base507c_new_(ptr noundef nonnull @base507c, ptr noundef nonnull @base507c_format, ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, i32 noundef %shl, ptr noundef %pwndw)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @base507c_image_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end44_crit_edge, label %if.then.i

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end44_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44:                                         ; preds = %if.then.i.if.end44_crit_edge, %entry.if.end44_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 13
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !71

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !71

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262276, i32 noundef 132, i32 noundef 1, ptr noundef nonnull @__func__.base507c_image_set) #6
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
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  %shl = shl nuw nsw i32 %conv, 8
  %37 = shl i8 %bf.load, 2
  %38 = and i8 %37, -16
  %shl152 = zext i8 %38 to i32
  %or = or i32 %shl, %shl152
  %39 = load ptr, ptr %cur.i, align 4
  %40 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %seg.i, align 8
  %cmp158.not = icmp ult ptr %39, %41
  br i1 %cmp158.not, label %if.end117.if.end183_crit_edge, label %do.end177, !prof !71

if.end117.if.end183_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

do.end177:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end183

if.end183:                                        ; preds = %do.end177, %if.end117.if.end183_crit_edge
  %42 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i, align 4
  %cmp197.not = icmp ult ptr %43, %45
  br i1 %cmp197.not, label %if.end183.if.end222_crit_edge, label %do.end216, !prof !71

if.end183.if.end222_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end222

do.end216:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end222

if.end222:                                        ; preds = %do.end216, %if.end183.if.end222_crit_edge
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %48 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast240 = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast241 = ptrtoint ptr %49 to i32
  %sub.ptr.sub242 = sub i32 %sub.ptr.lhs.cast240, %sub.ptr.rhs.cast241
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
  %name254 = getelementptr inbounds %struct.nvif_object, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %name254 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name254, align 8
  %60 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handle, align 4
  %62 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %55(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %59, i32 noundef %61, ptr noundef %63, i32 noundef %sub.ptr.sub242, i32 noundef %or) #6
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %incdec.ptr263 = getelementptr i32, ptr %65, i32 1
  store ptr %incdec.ptr263, ptr %cur.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or, ptr %65, align 4
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %seg.i, align 8
  %cmp335.not = icmp ult ptr %67, %69
  br i1 %cmp335.not, label %if.end222.if.end360_crit_edge, label %do.end354, !prof !71

if.end222.if.end360_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end360

do.end354:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end360

if.end360:                                        ; preds = %do.end354, %if.end222.if.end360_crit_edge
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %cmp374.not = icmp ult ptr %71, %73
  br i1 %cmp374.not, label %if.end360.if.end399_crit_edge, label %do.end393, !prof !71

if.end360.if.end399_crit_edge:                    ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end399

do.end393:                                        ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end399

if.end399:                                        ; preds = %do.end393, %if.end360.if.end399_crit_edge
  %74 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur.i, align 4
  %76 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast417 = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast418 = ptrtoint ptr %77 to i32
  %sub.ptr.sub419 = sub i32 %sub.ptr.lhs.cast417, %sub.ptr.rhs.cast418
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
  %name431 = getelementptr inbounds %struct.nvif_object, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %name431 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name431, align 8
  %88 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %handle, align 4
  %90 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %83(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %87, i32 noundef %89, ptr noundef %91, i32 noundef %sub.ptr.sub419, i32 noundef 262336, i32 noundef 192, i32 noundef 1, ptr noundef nonnull @__func__.base507c_image_set) #6
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %incdec.ptr440 = getelementptr i32, ptr %93, i32 1
  store ptr %incdec.ptr440, ptr %cur.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 262336, ptr %93, align 4
  %handle449 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 7
  %95 = ptrtoint ptr %handle449 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %handle449, align 4
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp454.not = icmp ult ptr %97, %99
  br i1 %cmp454.not, label %if.end399.if.end479_crit_edge, label %do.end473, !prof !71

if.end399.if.end479_crit_edge:                    ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end479

do.end473:                                        ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end479

if.end479:                                        ; preds = %do.end473, %if.end399.if.end479_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp493.not = icmp ult ptr %101, %103
  br i1 %cmp493.not, label %if.end479.if.end518_crit_edge, label %do.end512, !prof !71

if.end479.if.end518_crit_edge:                    ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end518

do.end512:                                        ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end518

if.end518:                                        ; preds = %do.end512, %if.end479.if.end518_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast536 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast537 = ptrtoint ptr %107 to i32
  %sub.ptr.sub538 = sub i32 %sub.ptr.lhs.cast536, %sub.ptr.rhs.cast537
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
  %name550 = getelementptr inbounds %struct.nvif_object, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %name550 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name550, align 8
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle, align 4
  %120 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub538, i32 noundef %96) #6
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr559 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr559, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %96, ptr %123, align 4
  %format = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 1
  %125 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %format, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -54, i8 %126)
  %cmp566 = icmp eq i8 %126, -54
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %seg.i, align 8
  %cmp666.not = icmp ult ptr %128, %130
  br i1 %cmp566, label %if.end649, label %if.end1090

if.end649:                                        ; preds = %if.end518
  br i1 %cmp666.not, label %if.end649.if.end691_crit_edge, label %do.end685, !prof !71

if.end649.if.end691_crit_edge:                    ; preds = %if.end649
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end691

do.end685:                                        ; preds = %if.end649
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end691

if.end691:                                        ; preds = %do.end685, %if.end649.if.end691_crit_edge
  %131 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cur.i, align 4
  %133 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %end.i, align 4
  %cmp705.not = icmp ult ptr %132, %134
  br i1 %cmp705.not, label %if.end691.if.end730_crit_edge, label %do.end724, !prof !71

if.end691.if.end730_crit_edge:                    ; preds = %if.end691
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end730

do.end724:                                        ; preds = %if.end691
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end730

if.end730:                                        ; preds = %do.end724, %if.end691.if.end730_crit_edge
  %135 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cur.i, align 4
  %137 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast748 = ptrtoint ptr %136 to i32
  %sub.ptr.rhs.cast749 = ptrtoint ptr %138 to i32
  %sub.ptr.sub750 = sub i32 %sub.ptr.lhs.cast748, %sub.ptr.rhs.cast749
  %139 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mem, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %145 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %client, align 4
  %name762 = getelementptr inbounds %struct.nvif_object, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %name762 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name762, align 8
  %149 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %handle, align 4
  %151 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %144(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %148, i32 noundef %150, ptr noundef %152, i32 noundef %sub.ptr.sub750, i32 noundef 524560, i32 noundef 272, i32 noundef 2, ptr noundef nonnull @__func__.base507c_image_set) #6
  %153 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cur.i, align 4
  %incdec.ptr771 = getelementptr i32, ptr %154, i32 1
  store ptr %incdec.ptr771, ptr %cur.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 524560, ptr %154, align 4
  %156 = load ptr, ptr %cur.i, align 4
  %157 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %seg.i, align 8
  %cmp783.not = icmp ult ptr %156, %158
  br i1 %cmp783.not, label %if.end730.if.end808_crit_edge, label %do.end802, !prof !71

if.end730.if.end808_crit_edge:                    ; preds = %if.end730
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end808

do.end802:                                        ; preds = %if.end730
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end808

if.end808:                                        ; preds = %do.end802, %if.end730.if.end808_crit_edge
  %159 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cur.i, align 4
  %161 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %end.i, align 4
  %cmp822.not = icmp ult ptr %160, %162
  br i1 %cmp822.not, label %if.end808.if.end847_crit_edge, label %do.end841, !prof !71

if.end808.if.end847_crit_edge:                    ; preds = %if.end808
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end847

do.end841:                                        ; preds = %if.end808
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end847

if.end847:                                        ; preds = %do.end841, %if.end808.if.end847_crit_edge
  %163 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cur.i, align 4
  %165 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast865 = ptrtoint ptr %164 to i32
  %sub.ptr.rhs.cast866 = ptrtoint ptr %166 to i32
  %sub.ptr.sub867 = sub i32 %sub.ptr.lhs.cast865, %sub.ptr.rhs.cast866
  %167 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mem, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %173 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %client, align 4
  %name879 = getelementptr inbounds %struct.nvif_object, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %name879 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %name879, align 8
  %177 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %handle, align 4
  %179 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %172(ptr noundef %mem, ptr noundef nonnull @.str.25, ptr noundef %176, i32 noundef %178, ptr noundef %180, i32 noundef %sub.ptr.sub867, i32 noundef 1) #6
  %181 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cur.i, align 4
  %incdec.ptr888 = getelementptr i32, ptr %182, i32 1
  store ptr %incdec.ptr888, ptr %cur.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %182, align 4
  %184 = load ptr, ptr %cur.i, align 4
  %185 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %seg.i, align 8
  %cmp900.not = icmp ult ptr %184, %186
  br i1 %cmp900.not, label %if.end847.if.end925_crit_edge, label %do.end919, !prof !71

if.end847.if.end925_crit_edge:                    ; preds = %if.end847
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end925

do.end919:                                        ; preds = %if.end847
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end925

if.end925:                                        ; preds = %do.end919, %if.end847.if.end925_crit_edge
  %187 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cur.i, align 4
  %189 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %end.i, align 4
  %cmp939.not = icmp ult ptr %188, %190
  br i1 %cmp939.not, label %if.end925.if.end964_crit_edge, label %do.end958, !prof !71

if.end925.if.end964_crit_edge:                    ; preds = %if.end925
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end964

do.end958:                                        ; preds = %if.end925
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end964

if.end964:                                        ; preds = %do.end958, %if.end925.if.end964_crit_edge
  %191 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cur.i, align 4
  %193 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast982 = ptrtoint ptr %192 to i32
  %sub.ptr.rhs.cast983 = ptrtoint ptr %194 to i32
  %sub.ptr.sub984 = sub i32 %sub.ptr.lhs.cast982, %sub.ptr.rhs.cast983
  %195 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mem, align 8
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 4
  %201 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %client, align 4
  %name996 = getelementptr inbounds %struct.nvif_object, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %name996 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %name996, align 8
  %205 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %handle, align 4
  %207 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %200(ptr noundef %mem, ptr noundef nonnull @.str.26, ptr noundef %204, i32 noundef %206, ptr noundef %208, i32 noundef %sub.ptr.sub984, i32 noundef 6553600) #6
  %209 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1005 = getelementptr i32, ptr %210, i32 1
  store ptr %incdec.ptr1005, ptr %cur.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 6553600, ptr %210, align 4
  br label %if.end1502

if.end1090:                                       ; preds = %if.end518
  br i1 %cmp666.not, label %if.end1090.if.end1132_crit_edge, label %do.end1126, !prof !71

if.end1090.if.end1132_crit_edge:                  ; preds = %if.end1090
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1132

do.end1126:                                       ; preds = %if.end1090
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end1132

if.end1132:                                       ; preds = %do.end1126, %if.end1090.if.end1132_crit_edge
  %212 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cur.i, align 4
  %214 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %end.i, align 4
  %cmp1146.not = icmp ult ptr %213, %215
  br i1 %cmp1146.not, label %if.end1132.if.end1171_crit_edge, label %do.end1165, !prof !71

if.end1132.if.end1171_crit_edge:                  ; preds = %if.end1132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1171

do.end1165:                                       ; preds = %if.end1132
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end1171

if.end1171:                                       ; preds = %do.end1165, %if.end1132.if.end1171_crit_edge
  %216 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cur.i, align 4
  %218 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1189 = ptrtoint ptr %217 to i32
  %sub.ptr.rhs.cast1190 = ptrtoint ptr %219 to i32
  %sub.ptr.sub1191 = sub i32 %sub.ptr.lhs.cast1189, %sub.ptr.rhs.cast1190
  %220 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mem, align 8
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %226 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %client, align 4
  %name1203 = getelementptr inbounds %struct.nvif_object, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %name1203 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %name1203, align 8
  %230 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %handle, align 4
  %232 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %225(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %229, i32 noundef %231, ptr noundef %233, i32 noundef %sub.ptr.sub1191, i32 noundef 524560, i32 noundef 272, i32 noundef 2, ptr noundef nonnull @__func__.base507c_image_set) #6
  %234 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1212 = getelementptr i32, ptr %235, i32 1
  store ptr %incdec.ptr1212, ptr %cur.i, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 524560, ptr %235, align 4
  %237 = load ptr, ptr %cur.i, align 4
  %238 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %seg.i, align 8
  %cmp1224.not = icmp ult ptr %237, %239
  br i1 %cmp1224.not, label %if.end1171.if.end1249_crit_edge, label %do.end1243, !prof !71

if.end1171.if.end1249_crit_edge:                  ; preds = %if.end1171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1249

do.end1243:                                       ; preds = %if.end1171
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end1249

if.end1249:                                       ; preds = %do.end1243, %if.end1171.if.end1249_crit_edge
  %240 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cur.i, align 4
  %242 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %end.i, align 4
  %cmp1263.not = icmp ult ptr %241, %243
  br i1 %cmp1263.not, label %if.end1249.if.end1288_crit_edge, label %do.end1282, !prof !71

if.end1249.if.end1288_crit_edge:                  ; preds = %if.end1249
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1288

do.end1282:                                       ; preds = %if.end1249
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end1288

if.end1288:                                       ; preds = %do.end1282, %if.end1249.if.end1288_crit_edge
  %244 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cur.i, align 4
  %246 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1306 = ptrtoint ptr %245 to i32
  %sub.ptr.rhs.cast1307 = ptrtoint ptr %247 to i32
  %sub.ptr.sub1308 = sub i32 %sub.ptr.lhs.cast1306, %sub.ptr.rhs.cast1307
  %248 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %mem, align 8
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %249, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %254 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %client, align 4
  %name1320 = getelementptr inbounds %struct.nvif_object, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %name1320 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %name1320, align 8
  %258 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %handle, align 4
  %260 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %253(ptr noundef %mem, ptr noundef nonnull @.str.25, ptr noundef %257, i32 noundef %259, ptr noundef %261, i32 noundef %sub.ptr.sub1308, i32 noundef 0) #6
  %262 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1329 = getelementptr i32, ptr %263, i32 1
  store ptr %incdec.ptr1329, ptr %cur.i, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %263, align 4
  %265 = load ptr, ptr %cur.i, align 4
  %266 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %seg.i, align 8
  %cmp1341.not = icmp ult ptr %265, %267
  br i1 %cmp1341.not, label %if.end1288.if.end1366_crit_edge, label %do.end1360, !prof !71

if.end1288.if.end1366_crit_edge:                  ; preds = %if.end1288
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1366

do.end1360:                                       ; preds = %if.end1288
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end1366

if.end1366:                                       ; preds = %do.end1360, %if.end1288.if.end1366_crit_edge
  %268 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cur.i, align 4
  %270 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %end.i, align 4
  %cmp1380.not = icmp ult ptr %269, %271
  br i1 %cmp1380.not, label %if.end1366.if.end1405_crit_edge, label %do.end1399, !prof !71

if.end1366.if.end1405_crit_edge:                  ; preds = %if.end1366
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1405

do.end1399:                                       ; preds = %if.end1366
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end1405

if.end1405:                                       ; preds = %do.end1399, %if.end1366.if.end1405_crit_edge
  %272 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cur.i, align 4
  %274 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1423 = ptrtoint ptr %273 to i32
  %sub.ptr.rhs.cast1424 = ptrtoint ptr %275 to i32
  %sub.ptr.sub1425 = sub i32 %sub.ptr.lhs.cast1423, %sub.ptr.rhs.cast1424
  %276 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %mem, align 8
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %277, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %279, align 4
  %282 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %client, align 4
  %name1437 = getelementptr inbounds %struct.nvif_object, ptr %283, i32 0, i32 2
  %284 = ptrtoint ptr %name1437 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %name1437, align 8
  %286 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %handle, align 4
  %288 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %281(ptr noundef %mem, ptr noundef nonnull @.str.26, ptr noundef %285, i32 noundef %287, ptr noundef %289, i32 noundef %sub.ptr.sub1425, i32 noundef 0) #6
  %290 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1446 = getelementptr i32, ptr %291, i32 1
  store ptr %incdec.ptr1446, ptr %cur.i, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 0, ptr %291, align 4
  br label %if.end1502

if.end1502:                                       ; preds = %if.end1405, %if.end964
  %293 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %cur.i, align 4
  %295 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %seg.i, align 8
  %cmp1519.not = icmp ult ptr %294, %296
  br i1 %cmp1519.not, label %if.end1502.if.end1544_crit_edge, label %do.end1538, !prof !71

if.end1502.if.end1544_crit_edge:                  ; preds = %if.end1502
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1544

do.end1538:                                       ; preds = %if.end1502
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end1544

if.end1544:                                       ; preds = %do.end1538, %if.end1502.if.end1544_crit_edge
  %297 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cur.i, align 4
  %299 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %end.i, align 4
  %cmp1558.not = icmp ult ptr %298, %300
  br i1 %cmp1558.not, label %if.end1544.if.end1583_crit_edge, label %do.end1577, !prof !71

if.end1544.if.end1583_crit_edge:                  ; preds = %if.end1544
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1583

do.end1577:                                       ; preds = %if.end1544
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end1583

if.end1583:                                       ; preds = %do.end1577, %if.end1544.if.end1583_crit_edge
  %301 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %cur.i, align 4
  %303 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1601 = ptrtoint ptr %302 to i32
  %sub.ptr.rhs.cast1602 = ptrtoint ptr %304 to i32
  %sub.ptr.sub1603 = sub i32 %sub.ptr.lhs.cast1601, %sub.ptr.rhs.cast1602
  %305 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %mem, align 8
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %306, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %308, align 4
  %311 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %client, align 4
  %name1615 = getelementptr inbounds %struct.nvif_object, ptr %312, i32 0, i32 2
  %313 = ptrtoint ptr %name1615 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %name1615, align 8
  %315 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %handle, align 4
  %317 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %310(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %314, i32 noundef %316, ptr noundef %318, i32 noundef %sub.ptr.sub1603, i32 noundef 264192, i32 noundef 2048, i32 noundef 1, ptr noundef nonnull @__func__.base507c_image_set) #6
  %319 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1624 = getelementptr i32, ptr %320, i32 1
  store ptr %incdec.ptr1624, ptr %cur.i, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 264192, ptr %320, align 4
  %offset = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 8
  %322 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %322)
  %323 = load i64, ptr %offset, align 8
  %shr = lshr i64 %323, 8
  %conv1634 = trunc i64 %shr to i32
  %324 = load ptr, ptr %cur.i, align 4
  %325 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %seg.i, align 8
  %cmp1639.not = icmp ult ptr %324, %326
  br i1 %cmp1639.not, label %if.end1583.if.end1664_crit_edge, label %do.end1658, !prof !71

if.end1583.if.end1664_crit_edge:                  ; preds = %if.end1583
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1664

do.end1658:                                       ; preds = %if.end1583
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end1664

if.end1664:                                       ; preds = %do.end1658, %if.end1583.if.end1664_crit_edge
  %327 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %cur.i, align 4
  %329 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %end.i, align 4
  %cmp1678.not = icmp ult ptr %328, %330
  br i1 %cmp1678.not, label %if.end1664.if.end1703_crit_edge, label %do.end1697, !prof !71

if.end1664.if.end1703_crit_edge:                  ; preds = %if.end1664
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1703

do.end1697:                                       ; preds = %if.end1664
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end1703

if.end1703:                                       ; preds = %do.end1697, %if.end1664.if.end1703_crit_edge
  %331 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %cur.i, align 4
  %333 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1721 = ptrtoint ptr %332 to i32
  %sub.ptr.rhs.cast1722 = ptrtoint ptr %334 to i32
  %sub.ptr.sub1723 = sub i32 %sub.ptr.lhs.cast1721, %sub.ptr.rhs.cast1722
  %335 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %mem, align 8
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %336, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %338, align 4
  %341 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %client, align 4
  %name1735 = getelementptr inbounds %struct.nvif_object, ptr %342, i32 0, i32 2
  %343 = ptrtoint ptr %name1735 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %name1735, align 8
  %345 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %handle, align 4
  %347 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %340(ptr noundef %mem, ptr noundef nonnull @.str.27, ptr noundef %344, i32 noundef %346, ptr noundef %348, i32 noundef %sub.ptr.sub1723, i32 noundef %conv1634) #6
  %349 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1744 = getelementptr i32, ptr %350, i32 1
  store ptr %incdec.ptr1744, ptr %cur.i, align 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %conv1634, ptr %350, align 4
  %352 = load ptr, ptr %cur.i, align 4
  %353 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %seg.i, align 8
  %cmp1876.not = icmp ult ptr %352, %354
  br i1 %cmp1876.not, label %if.end1703.if.end1901_crit_edge, label %do.end1895, !prof !71

if.end1703.if.end1901_crit_edge:                  ; preds = %if.end1703
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1901

do.end1895:                                       ; preds = %if.end1703
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end1901

if.end1901:                                       ; preds = %do.end1895, %if.end1703.if.end1901_crit_edge
  %355 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %cur.i, align 4
  %357 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %end.i, align 4
  %cmp1915.not = icmp ult ptr %356, %358
  br i1 %cmp1915.not, label %if.end1901.if.end1940_crit_edge, label %do.end1934, !prof !71

if.end1901.if.end1940_crit_edge:                  ; preds = %if.end1901
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1940

do.end1934:                                       ; preds = %if.end1901
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end1940

if.end1940:                                       ; preds = %do.end1934, %if.end1901.if.end1940_crit_edge
  %359 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %cur.i, align 4
  %361 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1958 = ptrtoint ptr %360 to i32
  %sub.ptr.rhs.cast1959 = ptrtoint ptr %362 to i32
  %sub.ptr.sub1960 = sub i32 %sub.ptr.lhs.cast1958, %sub.ptr.rhs.cast1959
  %363 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %mem, align 8
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %364, align 4
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %366, align 4
  %369 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %client, align 4
  %name1972 = getelementptr inbounds %struct.nvif_object, ptr %370, i32 0, i32 2
  %371 = ptrtoint ptr %name1972 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %name1972, align 8
  %373 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %handle, align 4
  %375 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %368(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %372, i32 noundef %374, ptr noundef %376, i32 noundef %sub.ptr.sub1960, i32 noundef 788488, i32 noundef 2056, i32 noundef 3, ptr noundef nonnull @__func__.base507c_image_set) #6
  %377 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1981 = getelementptr i32, ptr %378, i32 1
  store ptr %incdec.ptr1981, ptr %cur.i, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 788488, ptr %378, align 4
  %w = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 5
  %380 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %w, align 8
  %382 = and i16 %381, 32767
  %and1991 = zext i16 %382 to i32
  %h = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 6
  %383 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %h, align 2
  %385 = and i16 %384, 32767
  %and1995 = zext i16 %385 to i32
  %shl1996 = shl nuw nsw i32 %and1995, 16
  %or1997 = or i32 %shl1996, %and1991
  %386 = load ptr, ptr %cur.i, align 4
  %387 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %seg.i, align 8
  %cmp2003.not = icmp ult ptr %386, %388
  br i1 %cmp2003.not, label %if.end1940.if.end2028_crit_edge, label %do.end2022, !prof !71

if.end1940.if.end2028_crit_edge:                  ; preds = %if.end1940
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2028

do.end2022:                                       ; preds = %if.end1940
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end2028

if.end2028:                                       ; preds = %do.end2022, %if.end1940.if.end2028_crit_edge
  %389 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %cur.i, align 4
  %391 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %end.i, align 4
  %cmp2042.not = icmp ult ptr %390, %392
  br i1 %cmp2042.not, label %if.end2028.if.end2067_crit_edge, label %do.end2061, !prof !71

if.end2028.if.end2067_crit_edge:                  ; preds = %if.end2028
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2067

do.end2061:                                       ; preds = %if.end2028
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end2067

if.end2067:                                       ; preds = %do.end2061, %if.end2028.if.end2067_crit_edge
  %393 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %cur.i, align 4
  %395 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2085 = ptrtoint ptr %394 to i32
  %sub.ptr.rhs.cast2086 = ptrtoint ptr %396 to i32
  %sub.ptr.sub2087 = sub i32 %sub.ptr.lhs.cast2085, %sub.ptr.rhs.cast2086
  %397 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %mem, align 8
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %398, align 4
  %401 = ptrtoint ptr %400 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %400, align 4
  %403 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %client, align 4
  %name2099 = getelementptr inbounds %struct.nvif_object, ptr %404, i32 0, i32 2
  %405 = ptrtoint ptr %name2099 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %name2099, align 8
  %407 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %handle, align 4
  %409 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %402(ptr noundef %mem, ptr noundef nonnull @.str.28, ptr noundef %406, i32 noundef %408, ptr noundef %410, i32 noundef %sub.ptr.sub2087, i32 noundef %or1997) #6
  %411 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2108 = getelementptr i32, ptr %412, i32 1
  store ptr %incdec.ptr2108, ptr %cur.i, align 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %or1997, ptr %412, align 4
  %layout = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 2
  %414 = ptrtoint ptr %layout to i32
  call void @__asan_load2_noabort(i32 %414)
  %bf.load2117 = load i16, ptr %layout, align 2
  %bf.lshr2118 = lshr i16 %bf.load2117, 8
  %415 = and i16 %bf.lshr2118, 1
  %416 = zext i16 %415 to i32
  %shl2122 = shl nuw nsw i32 %416, 20
  %pitch = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 4
  %417 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %pitch, align 4
  %419 = and i32 %418, 261888
  %or2129 = or i32 %shl2122, %419
  %blocks = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 3
  %420 = ptrtoint ptr %blocks to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %blocks, align 4
  %422 = and i16 %421, 1023
  %and2133 = zext i16 %422 to i32
  %shl2134 = shl nuw nsw i32 %and2133, 8
  %423 = lshr i16 %bf.load2117, 4
  %424 = and i16 %423, 15
  %conv2141 = zext i16 %424 to i32
  %or2135 = or i32 %shl2134, %conv2141
  %or2144 = or i32 %or2135, %or2129
  %425 = load ptr, ptr %cur.i, align 4
  %426 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %seg.i, align 8
  %cmp2150.not = icmp ult ptr %425, %427
  br i1 %cmp2150.not, label %if.end2067.if.end2175_crit_edge, label %do.end2169, !prof !71

if.end2067.if.end2175_crit_edge:                  ; preds = %if.end2067
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2175

do.end2169:                                       ; preds = %if.end2067
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end2175

if.end2175:                                       ; preds = %do.end2169, %if.end2067.if.end2175_crit_edge
  %428 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %cur.i, align 4
  %430 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %end.i, align 4
  %cmp2189.not = icmp ult ptr %429, %431
  br i1 %cmp2189.not, label %if.end2175.if.end2214_crit_edge, label %do.end2208, !prof !71

if.end2175.if.end2214_crit_edge:                  ; preds = %if.end2175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2214

do.end2208:                                       ; preds = %if.end2175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end2214

if.end2214:                                       ; preds = %do.end2208, %if.end2175.if.end2214_crit_edge
  %432 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %cur.i, align 4
  %434 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2232 = ptrtoint ptr %433 to i32
  %sub.ptr.rhs.cast2233 = ptrtoint ptr %435 to i32
  %sub.ptr.sub2234 = sub i32 %sub.ptr.lhs.cast2232, %sub.ptr.rhs.cast2233
  %436 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %mem, align 8
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %437, align 4
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %439, align 4
  %442 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %client, align 4
  %name2246 = getelementptr inbounds %struct.nvif_object, ptr %443, i32 0, i32 2
  %444 = ptrtoint ptr %name2246 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %name2246, align 8
  %446 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %handle, align 4
  %448 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %441(ptr noundef %mem, ptr noundef nonnull @.str.29, ptr noundef %445, i32 noundef %447, ptr noundef %449, i32 noundef %sub.ptr.sub2234, i32 noundef %or2144) #6
  %450 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2255 = getelementptr i32, ptr %451, i32 1
  store ptr %incdec.ptr2255, ptr %cur.i, align 4
  %452 = ptrtoint ptr %451 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %or2144, ptr %451, align 4
  %453 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %format, align 1
  %conv2265 = zext i8 %454 to i32
  %shl2267 = shl nuw nsw i32 %conv2265, 8
  %455 = ptrtoint ptr %layout to i32
  call void @__asan_load2_noabort(i32 %455)
  %bf.load2272 = load i16, ptr %layout, align 2
  %bf.lshr2273 = lshr i16 %bf.load2272, 9
  %conv2275 = zext i16 %bf.lshr2273 to i32
  %shl2277 = shl nuw nsw i32 %conv2275, 16
  %or2278 = or i32 %shl2277, %shl2267
  %456 = load ptr, ptr %cur.i, align 4
  %457 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %seg.i, align 8
  %cmp2285.not = icmp ult ptr %456, %458
  br i1 %cmp2285.not, label %if.end2214.if.end2310_crit_edge, label %do.end2304, !prof !71

if.end2214.if.end2310_crit_edge:                  ; preds = %if.end2214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2310

do.end2304:                                       ; preds = %if.end2214
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end2310

if.end2310:                                       ; preds = %do.end2304, %if.end2214.if.end2310_crit_edge
  %459 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %cur.i, align 4
  %461 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %end.i, align 4
  %cmp2324.not = icmp ult ptr %460, %462
  br i1 %cmp2324.not, label %if.end2310.if.end2349_crit_edge, label %do.end2343, !prof !71

if.end2310.if.end2349_crit_edge:                  ; preds = %if.end2310
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2349

do.end2343:                                       ; preds = %if.end2310
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end2349

if.end2349:                                       ; preds = %do.end2343, %if.end2310.if.end2349_crit_edge
  %463 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %cur.i, align 4
  %465 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2367 = ptrtoint ptr %464 to i32
  %sub.ptr.rhs.cast2368 = ptrtoint ptr %466 to i32
  %sub.ptr.sub2369 = sub i32 %sub.ptr.lhs.cast2367, %sub.ptr.rhs.cast2368
  %467 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %mem, align 8
  %469 = ptrtoint ptr %468 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %468, align 4
  %471 = ptrtoint ptr %470 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %470, align 4
  %473 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %client, align 4
  %name2381 = getelementptr inbounds %struct.nvif_object, ptr %474, i32 0, i32 2
  %475 = ptrtoint ptr %name2381 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %name2381, align 8
  %477 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %handle, align 4
  %479 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %472(ptr noundef %mem, ptr noundef nonnull @.str.30, ptr noundef %476, i32 noundef %478, ptr noundef %480, i32 noundef %sub.ptr.sub2369, i32 noundef %or2278) #6
  %481 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2390 = getelementptr i32, ptr %482, i32 1
  store ptr %incdec.ptr2390, ptr %cur.i, align 4
  %483 = ptrtoint ptr %482 to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 %or2278, ptr %482, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2349, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2349 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !35, !36, !38, !40, !42, !43, !44, !45, !46, !47, !49, !51, !53, !55, !56, !58, !60, !61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 46, i32 2}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.base507c_update, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.base507c_image_clr, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 59, i32 2}
!11 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 63, i32 2}
!14 = !{ptr @__func__.base507c_xlut_clr, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 129, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__func__.base507c_xlut_set, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 143, i32 2}
!19 = !{ptr @__func__.base507c_ntfy_clr, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 169, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 182, i32 2}
!24 = !{ptr @__func__.base507c_ntfy_set, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__func__.base507c_sema_clr, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 206, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 219, i32 2}
!31 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__func__.base507c_sema_set, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @base507c_format, !37, !"base507c_format", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 270, i32 1}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 318, i32 9}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 327, i32 3}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @base507c_new_._entry, !41, !"_entry", i1 false, i1 false}
!46 = !{ptr @base507c_new_._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 331, i32 48}
!49 = !{ptr @base507c, !50, !"base507c", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 287, i32 1}
!51 = !{ptr @__func__.base507c_image_set, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 76, i32 2}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 83, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 98, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/dispnv50/base507c.c", i32 100, i32 2}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!"auto-init"}
