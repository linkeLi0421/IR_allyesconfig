; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c"
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
%struct.nvc37e_window_channel_dma_v0 = type { i8, i8, [6 x i8], i64 }
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

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.wndwc37e_blend_set = private unnamed_addr constant [19 x i8] c"wndwc37e_blend_set\00", align 1
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_COMPOSITION_CONTROL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_COMPOSITION_CONSTANT_ALPHA\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_COMPOSITION_FACTOR_SELECT\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_KEY_ALPHA\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_KEY_RED_CR\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_KEY_GREEN_Y\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_KEY_BLUE_CB\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.wndwc37e_image_clr = private unnamed_addr constant [19 x i8] c"wndwc37e_image_clr\00", align 1
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_PRESENT_CONTROL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_CONTEXT_DMA_ISO(0)\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.wndwc37e_ntfy_clr = private unnamed_addr constant [18 x i8] c"wndwc37e_ntfy_clr\00", align 1
@.str.21 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_CONTEXT_DMA_NOTIFIER\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.wndwc37e_ntfy_set = private unnamed_addr constant [18 x i8] c"wndwc37e_ntfy_set\00", align 1
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_NOTIFIER_CONTROL\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.wndwc37e_sema_clr = private unnamed_addr constant [18 x i8] c"wndwc37e_sema_clr\00", align 1
@.str.23 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_CONTEXT_DMA_SEMAPHORE\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.wndwc37e_sema_set = private unnamed_addr constant [18 x i8] c"wndwc37e_sema_set\00", align 1
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_SEMAPHORE_CONTROL\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_SEMAPHORE_ACQUIRE\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_SEMAPHORE_RELEASE\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.wndwc37e_update = private unnamed_addr constant [16 x i8] c"wndwc37e_update\00", align 1
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_INTERLOCK_FLAGS\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_WINDOW_INTERLOCK_FLAGS\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_UPDATE\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wndw\00", [27 x i8] zeroinitializer }, align 32
@wndwc37e_format = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 538982467, i32 1448695129, i32 1498831189, i32 875713112, i32 875713089, i32 909199186, i32 892424792, i32 892424769, i32 808665688, i32 808665665, i32 875709016, i32 875708993, i32 808669784, i32 808669761, i32 1211384408, i32 1211384385, i32 0], [60 x i8] zeroinitializer }, align 32
@wndwc37e_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 372, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: qndw%04x allocation failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wndwc37e_new_\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wndwc37e_new_._entry_ptr = internal global ptr @wndwc37e_new_._entry, section ".printk_index", align 4
@wndwc37e = internal constant { %struct.nv50_wndw_func, [36 x i8] } { %struct.nv50_wndw_func { ptr @wndwc37e_acquire, ptr @wndwc37e_release, ptr null, ptr @wndwc37e_sema_set, ptr @wndwc37e_sema_clr, ptr @corec37d_ntfy_init, ptr @wndwc37e_ntfy_set, ptr @wndwc37e_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr @wndwc37e_ilut, ptr @base907c_csc, ptr @wndwc37e_csc_set, ptr @wndwc37e_csc_clr, i8 0, i32 1024, i8 0, ptr @wndwc37e_ilut_set, ptr @wndwc37e_ilut_clr, ptr @wndwc37e_image_set, ptr @wndwc37e_image_clr, ptr null, ptr @wndwc37e_blend_set, ptr @wndwc37e_update }, [36 x i8] zeroinitializer }, align 32
@__func__.wndwc37e_csc_set = private unnamed_addr constant [17 x i8] c"wndwc37e_csc_set\00", align 1
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_CSC_RED2RED+0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.wndwc37e_ilut_set = private unnamed_addr constant [18 x i8] c"wndwc37e_ilut_set\00", align 1
@.str.36 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_CONTROL_INPUT_LUT\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_OFFSET_INPUT_LUT\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_CONTEXT_DMA_INPUT_LUT\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.wndwc37e_ilut_clr = private unnamed_addr constant [18 x i8] c"wndwc37e_ilut_clr\00", align 1
@__func__.wndwc37e_image_set = private unnamed_addr constant [19 x i8] c"wndwc37e_image_set\00", align 1
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_SIZE\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_STORAGE\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_PARAMS\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_PLANAR_STORAGE(0)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_CONTEXT_DMA_ISO(0)+0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_OFFSET(0)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_POINT_IN(0)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_SIZE_IN\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37E_SET_SIZE_OUT\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 104, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 149, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 153, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 219, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 232, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 249, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 262, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 278, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 282, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 362, i32 45 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"wndwc37e_format\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 306, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 372, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [9 x i8] c"wndwc37e\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 327, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 49, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 75, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 171, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 193, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 194, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 196, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 200, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 204, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @wndwc37e_new_._entry, ptr @wndwc37e_new_._entry_ptr, ptr @.str, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @wndwc37e_format, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @wndwc37e, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wndwc37e_format to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wndwc37e_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wndwc37e to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_blend_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %3, i32 8
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end224_crit_edge, label %if.then.i

entry.if.end224_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end224_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end224_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224

if.end224:                                        ; preds = %if.then.i.if.end224_crit_edge, %entry.if.end224_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 8
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end224.if.end260_crit_edge, label %do.end254, !prof !95

if.end224.if.end260_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end260

do.end254:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end260

if.end260:                                        ; preds = %do.end254, %if.end224.if.end260_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp273.not = icmp ult ptr %12, %14
  br i1 %cmp273.not, label %if.end260.if.end297_crit_edge, label %do.end291, !prof !95

if.end260.if.end297_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end297

do.end291:                                        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end297

if.end297:                                        ; preds = %do.end291, %if.end260.if.end297_crit_edge
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
  %name314 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name314 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name314, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 1835756, i32 noundef 748, i32 noundef 7, ptr noundef nonnull @__func__.wndwc37e_blend_set) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1835756, ptr %34, align 4
  %blend = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 11
  %36 = ptrtoint ptr %blend to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %blend, align 8
  %conv = zext i8 %37 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp332.not = icmp ult ptr %38, %40
  br i1 %cmp332.not, label %if.end297.if.end357_crit_edge, label %do.end351, !prof !95

if.end297.if.end357_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end357

do.end351:                                        ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end357

if.end357:                                        ; preds = %do.end351, %if.end297.if.end357_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp371.not = icmp ult ptr %42, %44
  br i1 %cmp371.not, label %if.end357.if.end396_crit_edge, label %do.end390, !prof !95

if.end357.if.end396_crit_edge:                    ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end396

do.end390:                                        ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end396

if.end396:                                        ; preds = %do.end390, %if.end357.if.end396_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast414 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast415 = ptrtoint ptr %48 to i32
  %sub.ptr.sub416 = sub i32 %sub.ptr.lhs.cast414, %sub.ptr.rhs.cast415
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
  %name428 = getelementptr inbounds %struct.nvif_object, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name428 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name428, align 8
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %61 = ptrtoint ptr %name314 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name314, align 8
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub416, i32 noundef %shl) #6
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr437 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr437, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shl, ptr %64, align 4
  %k1 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 11, i32 1
  %66 = ptrtoint ptr %k1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %k1, align 1
  %conv450 = zext i8 %67 to i32
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %seg.i, align 8
  %cmp455.not = icmp ult ptr %68, %70
  br i1 %cmp455.not, label %if.end396.if.end480_crit_edge, label %do.end474, !prof !95

if.end396.if.end480_crit_edge:                    ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end480

do.end474:                                        ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end480

if.end480:                                        ; preds = %do.end474, %if.end396.if.end480_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i, align 4
  %cmp494.not = icmp ult ptr %72, %74
  br i1 %cmp494.not, label %if.end480.if.end519_crit_edge, label %do.end513, !prof !95

if.end480.if.end519_crit_edge:                    ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end519

do.end513:                                        ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end519

if.end519:                                        ; preds = %do.end513, %if.end480.if.end519_crit_edge
  %75 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cur.i, align 4
  %77 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast537 = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast538 = ptrtoint ptr %78 to i32
  %sub.ptr.sub539 = sub i32 %sub.ptr.lhs.cast537, %sub.ptr.rhs.cast538
  %79 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mem, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %85 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %client, align 4
  %name551 = getelementptr inbounds %struct.nvif_object, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %name551 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name551, align 8
  %89 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %handle, align 4
  %91 = ptrtoint ptr %name314 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name314, align 8
  tail call void (ptr, ptr, ...) %84(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %88, i32 noundef %90, ptr noundef %92, i32 noundef %sub.ptr.sub539, i32 noundef %conv450) #6
  %93 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur.i, align 4
  %incdec.ptr560 = getelementptr i32, ptr %94, i32 1
  store ptr %incdec.ptr560, ptr %cur.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv450, ptr %94, align 4
  %src_color = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 11, i32 2
  %96 = ptrtoint ptr %src_color to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load = load i8, ptr %src_color, align 2
  %bf.lshr = lshr i8 %bf.load, 4
  %narrow = mul nuw i8 %bf.lshr, 17
  %or579 = zext i8 %narrow to i64
  %97 = and i8 %bf.load, 15
  %and583 = zext i8 %97 to i64
  %shl584 = shl nuw nsw i64 %and583, 8
  %or585 = or i64 %shl584, %or579
  %shl592 = shl nuw nsw i64 %and583, 12
  %or593 = or i64 %or585, %shl592
  %conv594 = trunc i64 %or593 to i32
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %seg.i, align 8
  %cmp599.not = icmp ult ptr %98, %100
  br i1 %cmp599.not, label %if.end519.if.end624_crit_edge, label %do.end618, !prof !95

if.end519.if.end624_crit_edge:                    ; preds = %if.end519
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end624

do.end618:                                        ; preds = %if.end519
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end624

if.end624:                                        ; preds = %do.end618, %if.end519.if.end624_crit_edge
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %103 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end.i, align 4
  %cmp638.not = icmp ult ptr %102, %104
  br i1 %cmp638.not, label %if.end624.if.end663_crit_edge, label %do.end657, !prof !95

if.end624.if.end663_crit_edge:                    ; preds = %if.end624
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end663

do.end657:                                        ; preds = %if.end624
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end663

if.end663:                                        ; preds = %do.end657, %if.end624.if.end663_crit_edge
  %105 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cur.i, align 4
  %107 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast681 = ptrtoint ptr %106 to i32
  %sub.ptr.rhs.cast682 = ptrtoint ptr %108 to i32
  %sub.ptr.sub683 = sub i32 %sub.ptr.lhs.cast681, %sub.ptr.rhs.cast682
  %109 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mem, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %115 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %client, align 4
  %name695 = getelementptr inbounds %struct.nvif_object, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %name695 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %name695, align 8
  %119 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %handle, align 4
  %121 = ptrtoint ptr %name314 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %name314, align 8
  tail call void (ptr, ptr, ...) %114(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %118, i32 noundef %120, ptr noundef %122, i32 noundef %sub.ptr.sub683, i32 noundef %conv594) #6
  %123 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur.i, align 4
  %incdec.ptr704 = getelementptr i32, ptr %124, i32 1
  store ptr %incdec.ptr704, ptr %cur.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv594, ptr %124, align 4
  %126 = load ptr, ptr %cur.i, align 4
  %127 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %seg.i, align 8
  %cmp716.not = icmp ult ptr %126, %128
  br i1 %cmp716.not, label %if.end663.if.end741_crit_edge, label %do.end735, !prof !95

if.end663.if.end741_crit_edge:                    ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end741

do.end735:                                        ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end741

if.end741:                                        ; preds = %do.end735, %if.end663.if.end741_crit_edge
  %129 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cur.i, align 4
  %131 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %end.i, align 4
  %cmp755.not = icmp ult ptr %130, %132
  br i1 %cmp755.not, label %if.end741.if.end780_crit_edge, label %do.end774, !prof !95

if.end741.if.end780_crit_edge:                    ; preds = %if.end741
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end780

do.end774:                                        ; preds = %if.end741
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end780

if.end780:                                        ; preds = %do.end774, %if.end741.if.end780_crit_edge
  %133 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cur.i, align 4
  %135 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast798 = ptrtoint ptr %134 to i32
  %sub.ptr.rhs.cast799 = ptrtoint ptr %136 to i32
  %sub.ptr.sub800 = sub i32 %sub.ptr.lhs.cast798, %sub.ptr.rhs.cast799
  %137 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mem, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %143 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %client, align 4
  %name812 = getelementptr inbounds %struct.nvif_object, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %name812 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %name812, align 8
  %147 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %handle, align 4
  %149 = ptrtoint ptr %name314 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %name314, align 8
  tail call void (ptr, ptr, ...) %142(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %146, i32 noundef %148, ptr noundef %150, i32 noundef %sub.ptr.sub800, i32 noundef -65536) #6
  %151 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cur.i, align 4
  %incdec.ptr821 = getelementptr i32, ptr %152, i32 1
  store ptr %incdec.ptr821, ptr %cur.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -65536, ptr %152, align 4
  %154 = load ptr, ptr %cur.i, align 4
  %155 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %seg.i, align 8
  %cmp833.not = icmp ult ptr %154, %156
  br i1 %cmp833.not, label %if.end780.if.end858_crit_edge, label %do.end852, !prof !95

if.end780.if.end858_crit_edge:                    ; preds = %if.end780
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end858

do.end852:                                        ; preds = %if.end780
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end858

if.end858:                                        ; preds = %do.end852, %if.end780.if.end858_crit_edge
  %157 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cur.i, align 4
  %159 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %end.i, align 4
  %cmp872.not = icmp ult ptr %158, %160
  br i1 %cmp872.not, label %if.end858.if.end897_crit_edge, label %do.end891, !prof !95

if.end858.if.end897_crit_edge:                    ; preds = %if.end858
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end897

do.end891:                                        ; preds = %if.end858
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end897

if.end897:                                        ; preds = %do.end891, %if.end858.if.end897_crit_edge
  %161 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cur.i, align 4
  %163 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast915 = ptrtoint ptr %162 to i32
  %sub.ptr.rhs.cast916 = ptrtoint ptr %164 to i32
  %sub.ptr.sub917 = sub i32 %sub.ptr.lhs.cast915, %sub.ptr.rhs.cast916
  %165 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mem, align 8
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %171 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %client, align 4
  %name929 = getelementptr inbounds %struct.nvif_object, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %name929 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %name929, align 8
  %175 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %handle, align 4
  %177 = ptrtoint ptr %name314 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %name314, align 8
  tail call void (ptr, ptr, ...) %170(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %174, i32 noundef %176, ptr noundef %178, i32 noundef %sub.ptr.sub917, i32 noundef -65536) #6
  %179 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cur.i, align 4
  %incdec.ptr938 = getelementptr i32, ptr %180, i32 1
  store ptr %incdec.ptr938, ptr %cur.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 -65536, ptr %180, align 4
  %182 = load ptr, ptr %cur.i, align 4
  %183 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %seg.i, align 8
  %cmp950.not = icmp ult ptr %182, %184
  br i1 %cmp950.not, label %if.end897.if.end975_crit_edge, label %do.end969, !prof !95

if.end897.if.end975_crit_edge:                    ; preds = %if.end897
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end975

do.end969:                                        ; preds = %if.end897
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end975

if.end975:                                        ; preds = %do.end969, %if.end897.if.end975_crit_edge
  %185 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cur.i, align 4
  %187 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %end.i, align 4
  %cmp989.not = icmp ult ptr %186, %188
  br i1 %cmp989.not, label %if.end975.if.end1014_crit_edge, label %do.end1008, !prof !95

if.end975.if.end1014_crit_edge:                   ; preds = %if.end975
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1014

do.end1008:                                       ; preds = %if.end975
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end1014

if.end1014:                                       ; preds = %do.end1008, %if.end975.if.end1014_crit_edge
  %189 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cur.i, align 4
  %191 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1032 = ptrtoint ptr %190 to i32
  %sub.ptr.rhs.cast1033 = ptrtoint ptr %192 to i32
  %sub.ptr.sub1034 = sub i32 %sub.ptr.lhs.cast1032, %sub.ptr.rhs.cast1033
  %193 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mem, align 8
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %199 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %client, align 4
  %name1046 = getelementptr inbounds %struct.nvif_object, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %name1046 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %name1046, align 8
  %203 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %handle, align 4
  %205 = ptrtoint ptr %name314 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %name314, align 8
  tail call void (ptr, ptr, ...) %198(ptr noundef %mem, ptr noundef nonnull @.str.17, ptr noundef %202, i32 noundef %204, ptr noundef %206, i32 noundef %sub.ptr.sub1034, i32 noundef -65536) #6
  %207 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1055 = getelementptr i32, ptr %208, i32 1
  store ptr %incdec.ptr1055, ptr %cur.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 -65536, ptr %208, align 4
  %210 = load ptr, ptr %cur.i, align 4
  %211 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %seg.i, align 8
  %cmp1067.not = icmp ult ptr %210, %212
  br i1 %cmp1067.not, label %if.end1014.if.end1092_crit_edge, label %do.end1086, !prof !95

if.end1014.if.end1092_crit_edge:                  ; preds = %if.end1014
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1092

do.end1086:                                       ; preds = %if.end1014
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end1092

if.end1092:                                       ; preds = %do.end1086, %if.end1014.if.end1092_crit_edge
  %213 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %cur.i, align 4
  %215 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %end.i, align 4
  %cmp1106.not = icmp ult ptr %214, %216
  br i1 %cmp1106.not, label %if.end1092.if.end1131_crit_edge, label %do.end1125, !prof !95

if.end1092.if.end1131_crit_edge:                  ; preds = %if.end1092
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1131

do.end1125:                                       ; preds = %if.end1092
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end1131

if.end1131:                                       ; preds = %do.end1125, %if.end1092.if.end1131_crit_edge
  %217 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cur.i, align 4
  %219 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1149 = ptrtoint ptr %218 to i32
  %sub.ptr.rhs.cast1150 = ptrtoint ptr %220 to i32
  %sub.ptr.sub1151 = sub i32 %sub.ptr.lhs.cast1149, %sub.ptr.rhs.cast1150
  %221 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %mem, align 8
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %222, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %227 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %client, align 4
  %name1163 = getelementptr inbounds %struct.nvif_object, ptr %228, i32 0, i32 2
  %229 = ptrtoint ptr %name1163 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %name1163, align 8
  %231 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %handle, align 4
  %233 = ptrtoint ptr %name314 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %name314, align 8
  tail call void (ptr, ptr, ...) %226(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %230, i32 noundef %232, ptr noundef %234, i32 noundef %sub.ptr.sub1151, i32 noundef -65536) #6
  %235 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1172 = getelementptr i32, ptr %236, i32 1
  store ptr %incdec.ptr1172, ptr %cur.i, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 -65536, ptr %236, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1131, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1131 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_image_clr(ptr nocapture noundef readonly %wndw) #0 align 64 {
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
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !95

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !95

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262920, i32 noundef 776, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_image_clr) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262920, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !95

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !95

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.19, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub233, i32 noundef 0) #6
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
  br i1 %cmp326.not, label %if.end213.if.end350_crit_edge, label %do.end344, !prof !95

if.end213.if.end350_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end350

do.end344:                                        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end350

if.end350:                                        ; preds = %do.end344, %if.end213.if.end350_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i, align 4
  %cmp364.not = icmp ult ptr %68, %70
  br i1 %cmp364.not, label %if.end350.if.end388_crit_edge, label %do.end382, !prof !95

if.end350.if.end388_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end388

do.end382:                                        ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %80(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %84, i32 noundef %86, ptr noundef %88, i32 noundef %sub.ptr.sub408, i32 noundef 262720, i32 noundef 576, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_image_clr) #6
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %incdec.ptr429 = getelementptr i32, ptr %90, i32 1
  store ptr %incdec.ptr429, ptr %cur.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 262720, ptr %90, align 4
  %92 = load ptr, ptr %cur.i, align 4
  %93 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %seg.i, align 8
  %cmp441.not = icmp ult ptr %92, %94
  br i1 %cmp441.not, label %if.end388.if.end465_crit_edge, label %do.end459, !prof !95

if.end388.if.end465_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end465

do.end459:                                        ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end465

if.end465:                                        ; preds = %do.end459, %if.end388.if.end465_crit_edge
  %95 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cur.i, align 4
  %97 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i, align 4
  %cmp479.not = icmp ult ptr %96, %98
  br i1 %cmp479.not, label %if.end465.if.end503_crit_edge, label %do.end497, !prof !95

if.end465.if.end503_crit_edge:                    ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end503

do.end497:                                        ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %108(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %112, i32 noundef %114, ptr noundef %116, i32 noundef %sub.ptr.sub523, i32 noundef 0) #6
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
define dso_local i32 @wndwc37e_ntfy_clr(ptr nocapture noundef readonly %wndw) #0 align 64 {
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
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !95

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !95

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262684, i32 noundef 540, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_ntfy_clr) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262684, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !95

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !95

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub233, i32 noundef 0) #6
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
define dso_local i32 @wndwc37e_ntfy_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
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
  br i1 %cmp.not, label %if.end74.if.end110_crit_edge, label %do.end104, !prof !95

if.end74.if.end110_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

do.end104:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end110

if.end110:                                        ; preds = %do.end104, %if.end74.if.end110_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp123.not = icmp ult ptr %12, %14
  br i1 %cmp123.not, label %if.end110.if.end147_crit_edge, label %do.end141, !prof !95

if.end110.if.end147_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

do.end141:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 524828, i32 noundef 540, i32 noundef 2, ptr noundef nonnull @__func__.wndwc37e_ntfy_set) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 524828, ptr %34, align 4
  %ntfy = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 3
  %36 = ptrtoint ptr %ntfy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ntfy, align 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp182.not = icmp ult ptr %38, %40
  br i1 %cmp182.not, label %if.end147.if.end206_crit_edge, label %do.end200, !prof !95

if.end147.if.end206_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

do.end200:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end206

if.end206:                                        ; preds = %do.end200, %if.end147.if.end206_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp220.not = icmp ult ptr %42, %44
  br i1 %cmp220.not, label %if.end206.if.end244_crit_edge, label %do.end238, !prof !95

if.end206.if.end244_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

do.end238:                                        ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end244

if.end244:                                        ; preds = %do.end238, %if.end206.if.end244_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast262 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast263 = ptrtoint ptr %48 to i32
  %sub.ptr.sub264 = sub i32 %sub.ptr.lhs.cast262, %sub.ptr.rhs.cast263
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
  %name276 = getelementptr inbounds %struct.nvif_object, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name276, align 8
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %61 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub264, i32 noundef %37) #6
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr285 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr285, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %37, ptr %64, align 4
  %awaken = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %awaken to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load = load i16, ptr %awaken, align 4
  %67 = lshr i16 %bf.load, 3
  %68 = and i16 %67, 1
  %69 = lshr i16 %bf.load, 4
  %70 = and i16 %69, 4080
  %or470 = or i16 %68, %70
  %conv301 = zext i16 %or470 to i32
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %seg.i, align 8
  %cmp306.not = icmp ult ptr %71, %73
  br i1 %cmp306.not, label %if.end244.if.end331_crit_edge, label %do.end325, !prof !95

if.end244.if.end331_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end331

do.end325:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end331

if.end331:                                        ; preds = %do.end325, %if.end244.if.end331_crit_edge
  %74 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur.i, align 4
  %76 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end.i, align 4
  %cmp345.not = icmp ult ptr %75, %77
  br i1 %cmp345.not, label %if.end331.if.end370_crit_edge, label %do.end364, !prof !95

if.end331.if.end370_crit_edge:                    ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end370

do.end364:                                        ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end370

if.end370:                                        ; preds = %do.end364, %if.end331.if.end370_crit_edge
  %78 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur.i, align 4
  %80 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast388 = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast389 = ptrtoint ptr %81 to i32
  %sub.ptr.sub390 = sub i32 %sub.ptr.lhs.cast388, %sub.ptr.rhs.cast389
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
  %name402 = getelementptr inbounds %struct.nvif_object, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %name402 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name402, align 8
  %92 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %handle, align 4
  %94 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %87(ptr noundef %mem, ptr noundef nonnull @.str.22, ptr noundef %91, i32 noundef %93, ptr noundef %95, i32 noundef %sub.ptr.sub390, i32 noundef %conv301) #6
  %96 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur.i, align 4
  %incdec.ptr411 = getelementptr i32, ptr %97, i32 1
  store ptr %incdec.ptr411, ptr %cur.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv301, ptr %97, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end370, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end370 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_sema_clr(ptr nocapture noundef readonly %wndw) #0 align 64 {
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
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !95

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !95

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262680, i32 noundef 536, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_sema_clr) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262680, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !95

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !95

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.23, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub233, i32 noundef 0) #6
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
define dso_local i32 @wndwc37e_sema_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
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
  br i1 %cmp.not, label %if.end134.if.end170_crit_edge, label %do.end164, !prof !95

if.end134.if.end170_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

do.end164:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end170

if.end170:                                        ; preds = %do.end164, %if.end134.if.end170_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp183.not = icmp ult ptr %12, %14
  br i1 %cmp183.not, label %if.end170.if.end207_crit_edge, label %do.end201, !prof !95

if.end170.if.end207_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

do.end201:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 1049100, i32 noundef 524, i32 noundef 4, ptr noundef nonnull @__func__.wndwc37e_sema_set) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1049100, ptr %34, align 4
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
  br i1 %cmp241.not, label %if.end207.if.end266_crit_edge, label %do.end260, !prof !95

if.end207.if.end266_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end266

do.end260:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end266

if.end266:                                        ; preds = %do.end260, %if.end207.if.end266_crit_edge
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %cmp280.not = icmp ult ptr %41, %43
  br i1 %cmp280.not, label %if.end266.if.end305_crit_edge, label %do.end299, !prof !95

if.end266.if.end305_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end305

do.end299:                                        ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %53(ptr noundef %mem, ptr noundef nonnull @.str.24, ptr noundef %57, i32 noundef %59, ptr noundef %61, i32 noundef %sub.ptr.sub325, i32 noundef %conv) #6
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
  br i1 %cmp359.not, label %if.end305.if.end384_crit_edge, label %do.end378, !prof !95

if.end305.if.end384_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end384

do.end378:                                        ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end384

if.end384:                                        ; preds = %do.end378, %if.end305.if.end384_crit_edge
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %cmp398.not = icmp ult ptr %71, %73
  br i1 %cmp398.not, label %if.end384.if.end423_crit_edge, label %do.end417, !prof !95

if.end384.if.end423_crit_edge:                    ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end423

do.end417:                                        ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %83(ptr noundef %mem, ptr noundef nonnull @.str.25, ptr noundef %87, i32 noundef %89, ptr noundef %91, i32 noundef %sub.ptr.sub443, i32 noundef %66) #6
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
  br i1 %cmp477.not, label %if.end423.if.end502_crit_edge, label %do.end496, !prof !95

if.end423.if.end502_crit_edge:                    ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end502

do.end496:                                        ; preds = %if.end423
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end502

if.end502:                                        ; preds = %do.end496, %if.end423.if.end502_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp516.not = icmp ult ptr %101, %103
  br i1 %cmp516.not, label %if.end502.if.end541_crit_edge, label %do.end535, !prof !95

if.end502.if.end541_crit_edge:                    ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end541

do.end535:                                        ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.26, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub561, i32 noundef %96) #6
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
  br i1 %cmp596.not, label %if.end541.if.end621_crit_edge, label %do.end615, !prof !95

if.end541.if.end621_crit_edge:                    ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end621

do.end615:                                        ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end621

if.end621:                                        ; preds = %do.end615, %if.end541.if.end621_crit_edge
  %130 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cur.i, align 4
  %132 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %end.i, align 4
  %cmp635.not = icmp ult ptr %131, %133
  br i1 %cmp635.not, label %if.end621.if.end660_crit_edge, label %do.end654, !prof !95

if.end621.if.end660_crit_edge:                    ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end660

do.end654:                                        ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %143(ptr noundef %mem, ptr noundef nonnull @.str.23, ptr noundef %147, i32 noundef %149, ptr noundef %151, i32 noundef %sub.ptr.sub680, i32 noundef %126) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_update(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %interlock) #0 align 64 {
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
  br i1 %cmp.not.i, label %entry.if.end74_crit_edge, label %if.then.i

entry.if.end74_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 5) #6
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
  %add.ptr4.i = getelementptr i32, ptr %9, i32 5
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end74.if.end110_crit_edge, label %do.end104, !prof !95

if.end74.if.end110_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

do.end104:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end110

if.end110:                                        ; preds = %do.end104, %if.end74.if.end110_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp123.not = icmp ult ptr %12, %14
  br i1 %cmp123.not, label %if.end110.if.end147_crit_edge, label %do.end141, !prof !95

if.end110.if.end147_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

do.end141:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 525168, i32 noundef 880, i32 noundef 2, ptr noundef nonnull @__func__.wndwc37e_update) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 525168, ptr %34, align 4
  %arrayidx = getelementptr i32, ptr %interlock, i32 1
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %37, 1
  %38 = ptrtoint ptr %interlock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %interlock, align 4
  %or = or i32 %shl, %39
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %seg.i, align 8
  %cmp182.not = icmp ult ptr %40, %42
  br i1 %cmp182.not, label %if.end147.if.end206_crit_edge, label %do.end200, !prof !95

if.end147.if.end206_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

do.end200:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end206

if.end206:                                        ; preds = %do.end200, %if.end147.if.end206_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i, align 4
  %cmp220.not = icmp ult ptr %44, %46
  br i1 %cmp220.not, label %if.end206.if.end244_crit_edge, label %do.end238, !prof !95

if.end206.if.end244_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

do.end238:                                        ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end244

if.end244:                                        ; preds = %do.end238, %if.end206.if.end244_crit_edge
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast262 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast263 = ptrtoint ptr %50 to i32
  %sub.ptr.sub264 = sub i32 %sub.ptr.lhs.cast262, %sub.ptr.rhs.cast263
  %51 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mem, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client, align 4
  %name276 = getelementptr inbounds %struct.nvif_object, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name276, align 8
  %61 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %handle, align 4
  %63 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %56(ptr noundef %mem, ptr noundef nonnull @.str.27, ptr noundef %60, i32 noundef %62, ptr noundef %64, i32 noundef %sub.ptr.sub264, i32 noundef %or) #6
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %incdec.ptr285 = getelementptr i32, ptr %66, i32 1
  store ptr %incdec.ptr285, ptr %cur.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or, ptr %66, align 4
  %arrayidx293 = getelementptr i32, ptr %interlock, i32 4
  %68 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx293, align 4
  %70 = load ptr, ptr %cur.i, align 4
  %71 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %seg.i, align 8
  %cmp298.not = icmp ult ptr %70, %72
  br i1 %cmp298.not, label %if.end244.if.end322_crit_edge, label %do.end316, !prof !95

if.end244.if.end322_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end322

do.end316:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end322

if.end322:                                        ; preds = %do.end316, %if.end244.if.end322_crit_edge
  %73 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %end.i, align 4
  %cmp336.not = icmp ult ptr %74, %76
  br i1 %cmp336.not, label %if.end322.if.end360_crit_edge, label %do.end354, !prof !95

if.end322.if.end360_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end360

do.end354:                                        ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end360

if.end360:                                        ; preds = %do.end354, %if.end322.if.end360_crit_edge
  %77 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cur.i, align 4
  %79 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast378 = ptrtoint ptr %78 to i32
  %sub.ptr.rhs.cast379 = ptrtoint ptr %80 to i32
  %sub.ptr.sub380 = sub i32 %sub.ptr.lhs.cast378, %sub.ptr.rhs.cast379
  %81 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mem, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %87 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %client, align 4
  %name392 = getelementptr inbounds %struct.nvif_object, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %name392 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name392, align 8
  %91 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %handle, align 4
  %93 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %86(ptr noundef %mem, ptr noundef nonnull @.str.28, ptr noundef %90, i32 noundef %92, ptr noundef %94, i32 noundef %sub.ptr.sub380, i32 noundef %69) #6
  %95 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cur.i, align 4
  %incdec.ptr401 = getelementptr i32, ptr %96, i32 1
  store ptr %incdec.ptr401, ptr %cur.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %69, ptr %96, align 4
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %seg.i, align 8
  %cmp473.not = icmp ult ptr %98, %100
  br i1 %cmp473.not, label %if.end360.if.end497_crit_edge, label %do.end491, !prof !95

if.end360.if.end497_crit_edge:                    ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end497

do.end491:                                        ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 284, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end497

if.end497:                                        ; preds = %do.end491, %if.end360.if.end497_crit_edge
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %103 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end.i, align 4
  %cmp511.not = icmp ult ptr %102, %104
  br i1 %cmp511.not, label %if.end497.if.end535_crit_edge, label %do.end529, !prof !95

if.end497.if.end535_crit_edge:                    ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end535

do.end529:                                        ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 284, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end535

if.end535:                                        ; preds = %do.end529, %if.end497.if.end535_crit_edge
  %105 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cur.i, align 4
  %107 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast553 = ptrtoint ptr %106 to i32
  %sub.ptr.rhs.cast554 = ptrtoint ptr %108 to i32
  %sub.ptr.sub555 = sub i32 %sub.ptr.lhs.cast553, %sub.ptr.rhs.cast554
  %109 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mem, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %115 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %client, align 4
  %name567 = getelementptr inbounds %struct.nvif_object, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %name567 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %name567, align 8
  %119 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %handle, align 4
  %121 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %114(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %118, i32 noundef %120, ptr noundef %122, i32 noundef %sub.ptr.sub555, i32 noundef 262656, i32 noundef 512, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_update) #6
  %123 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur.i, align 4
  %incdec.ptr576 = getelementptr i32, ptr %124, i32 1
  store ptr %incdec.ptr576, ptr %cur.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 262656, ptr %124, align 4
  %arrayidx584 = getelementptr i32, ptr %interlock, i32 5
  %126 = ptrtoint ptr %arrayidx584 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx584, align 4
  %data = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 3, i32 1
  %128 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %data, align 4
  %and = and i32 %129, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool586.not = icmp eq i32 %and, 0
  %conv594 = select i1 %tobool586.not, i32 1, i32 4097
  %130 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cur.i, align 4
  %132 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %seg.i, align 8
  %cmp599.not = icmp ult ptr %131, %133
  br i1 %cmp599.not, label %if.end535.if.end624_crit_edge, label %do.end618, !prof !95

if.end535.if.end624_crit_edge:                    ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end624

do.end618:                                        ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 284, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end624

if.end624:                                        ; preds = %do.end618, %if.end535.if.end624_crit_edge
  %134 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cur.i, align 4
  %136 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %end.i, align 4
  %cmp638.not = icmp ult ptr %135, %137
  br i1 %cmp638.not, label %if.end624.if.end663_crit_edge, label %do.end657, !prof !95

if.end624.if.end663_crit_edge:                    ; preds = %if.end624
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end663

do.end657:                                        ; preds = %if.end624
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 284, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end663

if.end663:                                        ; preds = %do.end657, %if.end624.if.end663_crit_edge
  %138 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cur.i, align 4
  %140 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast681 = ptrtoint ptr %139 to i32
  %sub.ptr.rhs.cast682 = ptrtoint ptr %141 to i32
  %sub.ptr.sub683 = sub i32 %sub.ptr.lhs.cast681, %sub.ptr.rhs.cast682
  %142 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mem, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %148 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %client, align 4
  %name695 = getelementptr inbounds %struct.nvif_object, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %name695 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %name695, align 8
  %152 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %handle, align 4
  %154 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %147(ptr noundef %mem, ptr noundef nonnull @.str.29, ptr noundef %151, i32 noundef %153, ptr noundef %155, i32 noundef %sub.ptr.sub683, i32 noundef %conv594) #6
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %incdec.ptr704 = getelementptr i32, ptr %157, i32 1
  store ptr %incdec.ptr704, ptr %cur.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %conv594, ptr %157, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 1
  %159 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %kick.i, align 4
  tail call void %160(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end663, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end663 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @wndwc37e_release(ptr nocapture %wndw, ptr nocapture %asyw, ptr nocapture %asyh) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_acquire(ptr nocapture readnone %wndw, ptr noundef %asyw, ptr noundef %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %asyw, ptr noundef %asyh, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_new_(ptr noundef %func, ptr noundef %drm, i32 noundef %type, i32 noundef %index, i32 noundef %oclass, i32 noundef %heads, ptr nocapture noundef writeonly %pwndw) local_unnamed_addr #0 align 64 {
entry:
  %oclass.addr = alloca i32, align 4
  %args = alloca %struct.nvc37e_window_channel_dma_v0, align 8
  %wndw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oclass.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %oclass, ptr %oclass.addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #6
  %1 = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %args, i32 0, i32 1
  %2 = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %args, i32 0, i32 2
  %3 = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %args, i32 0, i32 3
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %args, align 8
  %conv = trunc i32 %index to i8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %1, align 1
  %6 = call ptr @memset(ptr %2, i32 0, i32 6)
  %or = or i32 %index, -1342145024
  %conv2 = zext i32 %or to i64
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv2, ptr %3, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %display.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wndw) #6
  %16 = ptrtoint ptr %wndw to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %wndw, align 4, !annotation !96
  %shl = shl nuw i32 1, %index
  %call4 = call i32 @nv50_wndw_new_(ptr noundef %func, ptr noundef %9, i32 noundef %type, ptr noundef nonnull @.str.30, i32 noundef %index, ptr noundef nonnull @wndwc37e_format, i32 noundef %heads, i32 noundef 4, i32 noundef %shl, ptr noundef nonnull %wndw) #6
  %17 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wndw, align 4
  %19 = ptrtoint ptr %pwndw to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %pwndw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 8
  %sync = getelementptr inbounds %struct.nv50_disp, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sync, align 8
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %offset, align 8
  %wndw6 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 7
  %call7 = call i32 @nv50_dmac_create(ptr noundef %device, ptr noundef %21, ptr noundef nonnull %oclass.addr, i8 noundef zeroext 0, ptr noundef nonnull %args, i32 noundef 16, i64 noundef %25, ptr noundef %wndw6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end17, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %drm12 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %drm12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drm12, align 8
  %dev13 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev13, align 8
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev14, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  %32 = ptrtoint ptr %oclass.addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oclass.addr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.31, ptr noundef %name, i32 noundef %33, i32 noundef %call7) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
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
  %conv19 = add i16 %38, 96
  %ntfy = getelementptr inbounds %struct.nv50_wndw, ptr %35, i32 0, i32 10
  %39 = ptrtoint ptr %ntfy to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv19, ptr %ntfy, align 8
  %conv24 = add i16 %38, 64
  %sema = getelementptr inbounds %struct.nv50_wndw, ptr %35, i32 0, i32 11
  %40 = ptrtoint ptr %sema to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv24, ptr %sema, align 2
  %data = getelementptr inbounds %struct.nv50_wndw, ptr %35, i32 0, i32 12
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.body ], [ 0, %if.end17 ], [ %call4, %entry.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_new(ptr noundef %drm, i32 noundef %type, i32 noundef %index, i32 noundef %oclass, ptr nocapture noundef writeonly %pwndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %index, 1
  %shl = shl nuw i32 1, %shr
  %call = tail call i32 @wndwc37e_new_(ptr noundef nonnull @wndwc37e, ptr noundef %drm, i32 noundef %type, i32 noundef %index, i32 noundef %oclass, i32 noundef %shl, ptr noundef %pwndw)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @corec37d_ntfy_init(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_wait_begun(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wndwc37e_ilut(ptr nocapture noundef readnone %wndw, ptr nocapture noundef %asyw, i32 noundef %size) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %size)
  %cmp = icmp eq i32 %size, 1024
  %size1 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2, i32 1
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %size1, align 2
  %bf.clear = and i16 %bf.load, 1
  %bf.set = select i1 %cmp, i16 66, i16 2
  %bf.set11 = or i16 %bf.set, %bf.clear
  store i16 %bf.set11, ptr %size1, align 2
  %load = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2, i32 2
  %1 = ptrtoint ptr %load to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @head907d_olut_load, ptr %load, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @base907c_csc(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wndwc37e_csc_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
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
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !95

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !95

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 3146428, i32 noundef 700, i32 noundef 12, ptr noundef nonnull @__func__.wndwc37e_csc_set) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3146428, ptr %34, align 4
  %csc = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 7
  %incdec.ptr150 = getelementptr %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 7, i32 0, i32 1
  %36 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %csc, align 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp155.not = icmp ult ptr %38, %40
  br i1 %cmp155.not, label %if.end117.if.end179_crit_edge, label %do.end173, !prof !95

if.end117.if.end179_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179

do.end173:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end179

if.end179:                                        ; preds = %do.end173, %if.end117.if.end179_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp193.not = icmp ult ptr %42, %44
  br i1 %cmp193.not, label %if.end179.if.end217_crit_edge, label %do.end211, !prof !95

if.end179.if.end217_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

do.end211:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end217

if.end217:                                        ; preds = %do.end211, %if.end179.if.end217_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast235 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast236 = ptrtoint ptr %48 to i32
  %sub.ptr.sub237 = sub i32 %sub.ptr.lhs.cast235, %sub.ptr.rhs.cast236
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
  %name249 = getelementptr inbounds %struct.nvif_object, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name249 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name249, align 8
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %61 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem, ptr noundef nonnull @.str.35, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub237, i32 noundef %37, i32 noundef 0) #6
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr258 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr258, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %37, ptr %64, align 4
  br label %do.body263

do.body263:                                       ; preds = %if.end333.do.body263_crit_edge, %if.end217
  %dec261440 = phi i32 [ 10, %if.end217 ], [ %dec261, %if.end333.do.body263_crit_edge ]
  %_dd.0439 = phi ptr [ %incdec.ptr150, %if.end217 ], [ %incdec.ptr266, %if.end333.do.body263_crit_edge ]
  %_i.0438 = phi i32 [ 4, %if.end217 ], [ %add, %if.end333.do.body263_crit_edge ]
  %incdec.ptr266 = getelementptr i32, ptr %_dd.0439, i32 1
  %66 = ptrtoint ptr %_dd.0439 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %_dd.0439, align 4
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %seg.i, align 8
  %cmp271.not = icmp ult ptr %69, %71
  br i1 %cmp271.not, label %do.body263.if.end295_crit_edge, label %do.end289, !prof !95

do.body263.if.end295_crit_edge:                   ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295

do.end289:                                        ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end295

if.end295:                                        ; preds = %do.end289, %do.body263.if.end295_crit_edge
  %72 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i, align 4
  %cmp309.not = icmp ult ptr %73, %75
  br i1 %cmp309.not, label %if.end295.if.end333_crit_edge, label %do.end327, !prof !95

if.end295.if.end333_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end333

do.end327:                                        ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end333

if.end333:                                        ; preds = %do.end327, %if.end295.if.end333_crit_edge
  %76 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur.i, align 4
  %78 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast351 = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast352 = ptrtoint ptr %79 to i32
  %sub.ptr.sub353 = sub i32 %sub.ptr.lhs.cast351, %sub.ptr.rhs.cast352
  %80 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mem, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %86 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %client, align 4
  %name365 = getelementptr inbounds %struct.nvif_object, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %name365 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name365, align 8
  %90 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %handle, align 4
  %92 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %85(ptr noundef %mem, ptr noundef nonnull @.str.35, ptr noundef %89, i32 noundef %91, ptr noundef %93, i32 noundef %sub.ptr.sub353, i32 noundef %67, i32 noundef %_i.0438) #6
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %incdec.ptr374 = getelementptr i32, ptr %95, i32 1
  store ptr %incdec.ptr374, ptr %cur.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %67, ptr %95, align 4
  %add = add nuw nsw i32 %_i.0438, 4
  %dec261 = add nsw i32 %dec261440, -1
  %tobool262.not = icmp eq i32 %dec261440, 0
  br i1 %tobool262.not, label %if.end333.cleanup_crit_edge, label %if.end333.do.body263_crit_edge

if.end333.do.body263_crit_edge:                   ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body263

if.end333.cleanup_crit_edge:                      ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end333.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i.cleanup_crit_edge ], [ 0, %if.end333.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wndwc37e_csc_clr(ptr nocapture noundef readnone %wndw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wndwc37e_ilut_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
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
  br i1 %cmp.not.i, label %entry.if.end104_crit_edge, label %if.then.i

entry.if.end104_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end104_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end104_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp.not, label %if.end104.if.end140_crit_edge, label %do.end134, !prof !95

if.end104.if.end140_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

do.end134:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end140

if.end140:                                        ; preds = %do.end134, %if.end104.if.end140_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp153.not = icmp ult ptr %12, %14
  br i1 %cmp153.not, label %if.end140.if.end177_crit_edge, label %do.end171, !prof !95

if.end140.if.end177_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end177

do.end171:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 787120, i32 noundef 688, i32 noundef 3, ptr noundef nonnull @__func__.wndwc37e_ilut_set) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 787120, ptr %34, align 4
  %xlut = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6
  %i = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2
  %output_mode = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 6, i32 2, i32 1
  %36 = ptrtoint ptr %output_mode to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load = load i16, ptr %output_mode, align 2
  %37 = shl i16 %bf.load, 7
  %38 = and i16 %37, 768
  %shl = zext i16 %38 to i32
  %39 = zext i16 %bf.load to i32
  %40 = shl nuw nsw i32 %39, 1
  %41 = and i32 %40, 48
  %or = or i32 %41, %shl
  %bf.lshr219 = lshr i16 %bf.load, 5
  %42 = and i16 %bf.lshr219, 3
  %and221 = zext i16 %42 to i32
  %or223 = or i32 %or, %and221
  %43 = load ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %seg.i, align 8
  %cmp229.not = icmp ult ptr %43, %45
  br i1 %cmp229.not, label %if.end177.if.end254_crit_edge, label %do.end248, !prof !95

if.end177.if.end254_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254

do.end248:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end254

if.end254:                                        ; preds = %do.end248, %if.end177.if.end254_crit_edge
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %48 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i, align 4
  %cmp268.not = icmp ult ptr %47, %49
  br i1 %cmp268.not, label %if.end254.if.end293_crit_edge, label %do.end287, !prof !95

if.end254.if.end293_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end293

do.end287:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end293

if.end293:                                        ; preds = %do.end287, %if.end254.if.end293_crit_edge
  %50 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cur.i, align 4
  %52 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast311 = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast312 = ptrtoint ptr %53 to i32
  %sub.ptr.sub313 = sub i32 %sub.ptr.lhs.cast311, %sub.ptr.rhs.cast312
  %54 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client, align 4
  %name325 = getelementptr inbounds %struct.nvif_object, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %name325 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name325, align 8
  %64 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %handle, align 4
  %66 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %59(ptr noundef %mem, ptr noundef nonnull @.str.36, ptr noundef %63, i32 noundef %65, ptr noundef %67, i32 noundef %sub.ptr.sub313, i32 noundef %or223) #6
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %incdec.ptr334 = getelementptr i32, ptr %69, i32 1
  store ptr %incdec.ptr334, ptr %cur.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or223, ptr %69, align 4
  %71 = ptrtoint ptr %i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 6)
  %bf.load344 = load i48, ptr %i, align 8
  %bf.lshr345 = lshr i48 %bf.load344, 16
  %conv347 = trunc i48 %bf.lshr345 to i32
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %seg.i, align 8
  %cmp352.not = icmp ult ptr %72, %74
  br i1 %cmp352.not, label %if.end293.if.end377_crit_edge, label %do.end371, !prof !95

if.end293.if.end377_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end377

do.end371:                                        ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end377

if.end377:                                        ; preds = %do.end371, %if.end293.if.end377_crit_edge
  %75 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cur.i, align 4
  %77 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %end.i, align 4
  %cmp391.not = icmp ult ptr %76, %78
  br i1 %cmp391.not, label %if.end377.if.end416_crit_edge, label %do.end410, !prof !95

if.end377.if.end416_crit_edge:                    ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end416

do.end410:                                        ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end416

if.end416:                                        ; preds = %do.end410, %if.end377.if.end416_crit_edge
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %81 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast434 = ptrtoint ptr %80 to i32
  %sub.ptr.rhs.cast435 = ptrtoint ptr %82 to i32
  %sub.ptr.sub436 = sub i32 %sub.ptr.lhs.cast434, %sub.ptr.rhs.cast435
  %83 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mem, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %89 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %client, align 4
  %name448 = getelementptr inbounds %struct.nvif_object, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %name448 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name448, align 8
  %93 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %handle, align 4
  %95 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %88(ptr noundef %mem, ptr noundef nonnull @.str.37, ptr noundef %92, i32 noundef %94, ptr noundef %96, i32 noundef %sub.ptr.sub436, i32 noundef %conv347) #6
  %97 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cur.i, align 4
  %incdec.ptr457 = getelementptr i32, ptr %98, i32 1
  store ptr %incdec.ptr457, ptr %cur.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv347, ptr %98, align 4
  %100 = ptrtoint ptr %xlut to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %xlut, align 8
  %102 = load ptr, ptr %cur.i, align 4
  %103 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %seg.i, align 8
  %cmp471.not = icmp ult ptr %102, %104
  br i1 %cmp471.not, label %if.end416.if.end496_crit_edge, label %do.end490, !prof !95

if.end416.if.end496_crit_edge:                    ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end496

do.end490:                                        ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end496

if.end496:                                        ; preds = %do.end490, %if.end416.if.end496_crit_edge
  %105 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cur.i, align 4
  %107 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %end.i, align 4
  %cmp510.not = icmp ult ptr %106, %108
  br i1 %cmp510.not, label %if.end496.if.end535_crit_edge, label %do.end529, !prof !95

if.end496.if.end535_crit_edge:                    ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end535

do.end529:                                        ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end535

if.end535:                                        ; preds = %do.end529, %if.end496.if.end535_crit_edge
  %109 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cur.i, align 4
  %111 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast553 = ptrtoint ptr %110 to i32
  %sub.ptr.rhs.cast554 = ptrtoint ptr %112 to i32
  %sub.ptr.sub555 = sub i32 %sub.ptr.lhs.cast553, %sub.ptr.rhs.cast554
  %113 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mem, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %119 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %client, align 4
  %name567 = getelementptr inbounds %struct.nvif_object, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %name567 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %name567, align 8
  %123 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %handle, align 4
  %125 = ptrtoint ptr %name194 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %name194, align 8
  tail call void (ptr, ptr, ...) %118(ptr noundef %mem, ptr noundef nonnull @.str.38, ptr noundef %122, i32 noundef %124, ptr noundef %126, i32 noundef %sub.ptr.sub555, i32 noundef %101) #6
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %incdec.ptr576 = getelementptr i32, ptr %128, i32 1
  store ptr %incdec.ptr576, ptr %cur.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %101, ptr %128, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end535, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end535 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wndwc37e_ilut_clr(ptr nocapture noundef readonly %wndw) #0 align 64 {
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
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !95

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !95

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262840, i32 noundef 696, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_ilut_clr) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262840, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp151.not = icmp ult ptr %36, %38
  br i1 %cmp151.not, label %if.end117.if.end175_crit_edge, label %do.end169, !prof !95

if.end117.if.end175_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

do.end169:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end117.if.end175_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp189.not = icmp ult ptr %40, %42
  br i1 %cmp189.not, label %if.end175.if.end213_crit_edge, label %do.end207, !prof !95

if.end175.if.end213_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end207:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.38, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub233, i32 noundef 0) #6
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
define internal i32 @wndwc37e_image_set(ptr nocapture noundef readonly %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %3, i32 17
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
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 17) #6
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
  %add.ptr4.i = getelementptr i32, ptr %9, i32 17
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end44.if.end80_crit_edge, label %do.end74, !prof !95

if.end44.if.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end74:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %if.end44.if.end80_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp93.not = icmp ult ptr %12, %14
  br i1 %cmp93.not, label %if.end80.if.end117_crit_edge, label %do.end111, !prof !95

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end111:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.10) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262920, i32 noundef 776, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_image_set) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262920, ptr %34, align 4
  %image = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8
  %36 = ptrtoint ptr %image to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %image, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %conv154 = zext i8 %bf.lshr to i32
  %37 = load ptr, ptr %cur.i, align 4
  %38 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %seg.i, align 8
  %cmp159.not = icmp ult ptr %37, %39
  br i1 %cmp159.not, label %if.end117.if.end184_crit_edge, label %do.end178, !prof !95

if.end117.if.end184_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

do.end178:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end184

if.end184:                                        ; preds = %do.end178, %if.end117.if.end184_crit_edge
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %cmp198.not = icmp ult ptr %41, %43
  br i1 %cmp198.not, label %if.end184.if.end223_crit_edge, label %do.end217, !prof !95

if.end184.if.end223_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223

do.end217:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end223

if.end223:                                        ; preds = %do.end217, %if.end184.if.end223_crit_edge
  %44 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur.i, align 4
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast241 = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast242 = ptrtoint ptr %47 to i32
  %sub.ptr.sub243 = sub i32 %sub.ptr.lhs.cast241, %sub.ptr.rhs.cast242
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
  %name255 = getelementptr inbounds %struct.nvif_object, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %name255 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name255, align 8
  %58 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %handle, align 4
  %60 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %53(ptr noundef %mem, ptr noundef nonnull @.str.19, ptr noundef %57, i32 noundef %59, ptr noundef %61, i32 noundef %sub.ptr.sub243, i32 noundef %conv154) #6
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %incdec.ptr264 = getelementptr i32, ptr %63, i32 1
  store ptr %incdec.ptr264, ptr %cur.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv154, ptr %63, align 4
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %seg.i, align 8
  %cmp426.not = icmp ult ptr %65, %67
  br i1 %cmp426.not, label %if.end223.if.end451_crit_edge, label %do.end445, !prof !95

if.end223.if.end451_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end451

do.end445:                                        ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end451

if.end451:                                        ; preds = %do.end445, %if.end223.if.end451_crit_edge
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i, align 4
  %cmp465.not = icmp ult ptr %69, %71
  br i1 %cmp465.not, label %if.end451.if.end490_crit_edge, label %do.end484, !prof !95

if.end451.if.end490_crit_edge:                    ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end490

do.end484:                                        ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end490

if.end490:                                        ; preds = %do.end484, %if.end451.if.end490_crit_edge
  %72 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast508 = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast509 = ptrtoint ptr %75 to i32
  %sub.ptr.sub510 = sub i32 %sub.ptr.lhs.cast508, %sub.ptr.rhs.cast509
  %76 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mem, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %client, align 4
  %name522 = getelementptr inbounds %struct.nvif_object, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %name522 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name522, align 8
  %86 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %handle, align 4
  %88 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %81(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %85, i32 noundef %87, ptr noundef %89, i32 noundef %sub.ptr.sub510, i32 noundef 1049124, i32 noundef 548, i32 noundef 4, ptr noundef nonnull @__func__.wndwc37e_image_set) #6
  %90 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur.i, align 4
  %incdec.ptr531 = getelementptr i32, ptr %91, i32 1
  store ptr %incdec.ptr531, ptr %cur.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1049124, ptr %91, align 4
  %w = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 5
  %93 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %w, align 8
  %conv540 = zext i16 %94 to i32
  %h = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 6
  %95 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %h, align 2
  %conv544 = zext i16 %96 to i32
  %shl546 = shl nuw i32 %conv544, 16
  %or547 = or i32 %shl546, %conv540
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp553.not = icmp ult ptr %97, %99
  br i1 %cmp553.not, label %if.end490.if.end578_crit_edge, label %do.end572, !prof !95

if.end490.if.end578_crit_edge:                    ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end578

do.end572:                                        ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end578

if.end578:                                        ; preds = %do.end572, %if.end490.if.end578_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp592.not = icmp ult ptr %101, %103
  br i1 %cmp592.not, label %if.end578.if.end617_crit_edge, label %do.end611, !prof !95

if.end578.if.end617_crit_edge:                    ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end617

do.end611:                                        ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end617

if.end617:                                        ; preds = %do.end611, %if.end578.if.end617_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast635 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast636 = ptrtoint ptr %107 to i32
  %sub.ptr.sub637 = sub i32 %sub.ptr.lhs.cast635, %sub.ptr.rhs.cast636
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
  %name649 = getelementptr inbounds %struct.nvif_object, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %name649 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name649, align 8
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle, align 4
  %120 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.39, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub637, i32 noundef %or547) #6
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr658 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr658, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or547, ptr %123, align 4
  %blockh = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 2
  %125 = ptrtoint ptr %blockh to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load667 = load i16, ptr %blockh, align 2
  %126 = trunc i16 %bf.load667 to i8
  %127 = lshr i8 %126, 4
  %sh.diff = lshr i16 %bf.load667, 4
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %128 = and i8 %tr.sh.diff, 16
  %or6813026 = or i8 %128, %127
  %conv682 = zext i8 %or6813026 to i32
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %seg.i, align 8
  %cmp687.not = icmp ult ptr %129, %131
  br i1 %cmp687.not, label %if.end617.if.end712_crit_edge, label %do.end706, !prof !95

if.end617.if.end712_crit_edge:                    ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end712

do.end706:                                        ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end712

if.end712:                                        ; preds = %do.end706, %if.end617.if.end712_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %end.i, align 4
  %cmp726.not = icmp ult ptr %133, %135
  br i1 %cmp726.not, label %if.end712.if.end751_crit_edge, label %do.end745, !prof !95

if.end712.if.end751_crit_edge:                    ; preds = %if.end712
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end751

do.end745:                                        ; preds = %if.end712
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end751

if.end751:                                        ; preds = %do.end745, %if.end712.if.end751_crit_edge
  %136 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur.i, align 4
  %138 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast769 = ptrtoint ptr %137 to i32
  %sub.ptr.rhs.cast770 = ptrtoint ptr %139 to i32
  %sub.ptr.sub771 = sub i32 %sub.ptr.lhs.cast769, %sub.ptr.rhs.cast770
  %140 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mem, align 8
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %146 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %client, align 4
  %name783 = getelementptr inbounds %struct.nvif_object, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %name783 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name783, align 8
  %150 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %handle, align 4
  %152 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %145(ptr noundef %mem, ptr noundef nonnull @.str.40, ptr noundef %149, i32 noundef %151, ptr noundef %153, i32 noundef %sub.ptr.sub771, i32 noundef %conv682) #6
  %154 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i, align 4
  %incdec.ptr792 = getelementptr i32, ptr %155, i32 1
  store ptr %incdec.ptr792, ptr %cur.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %conv682, ptr %155, align 4
  %format = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 1
  %157 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %format, align 1
  %conv801 = zext i8 %158 to i32
  %159 = ptrtoint ptr %image to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load805 = load i8, ptr %image, align 8
  %160 = and i8 %bf.load805, 3
  %and808 = zext i8 %160 to i32
  %shl809 = shl nuw nsw i32 %and808, 8
  %or810 = or i32 %shl809, %conv801
  %valid = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 7, i32 1
  %161 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %valid, align 8, !range !97
  %163 = zext i8 %162 to i32
  %shl817 = shl nuw nsw i32 %163, 17
  %or818 = or i32 %or810, %shl817
  %164 = load ptr, ptr %cur.i, align 4
  %165 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %seg.i, align 8
  %cmp826.not = icmp ult ptr %164, %166
  br i1 %cmp826.not, label %if.end751.if.end851_crit_edge, label %do.end845, !prof !95

if.end751.if.end851_crit_edge:                    ; preds = %if.end751
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end851

do.end845:                                        ; preds = %if.end751
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end851

if.end851:                                        ; preds = %do.end845, %if.end751.if.end851_crit_edge
  %167 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cur.i, align 4
  %169 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %end.i, align 4
  %cmp865.not = icmp ult ptr %168, %170
  br i1 %cmp865.not, label %if.end851.if.end890_crit_edge, label %do.end884, !prof !95

if.end851.if.end890_crit_edge:                    ; preds = %if.end851
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end890

do.end884:                                        ; preds = %if.end851
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end890

if.end890:                                        ; preds = %do.end884, %if.end851.if.end890_crit_edge
  %171 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cur.i, align 4
  %173 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast908 = ptrtoint ptr %172 to i32
  %sub.ptr.rhs.cast909 = ptrtoint ptr %174 to i32
  %sub.ptr.sub910 = sub i32 %sub.ptr.lhs.cast908, %sub.ptr.rhs.cast909
  %175 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mem, align 8
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %181 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %client, align 4
  %name922 = getelementptr inbounds %struct.nvif_object, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %name922 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %name922, align 8
  %185 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %handle, align 4
  %187 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %180(ptr noundef %mem, ptr noundef nonnull @.str.41, ptr noundef %184, i32 noundef %186, ptr noundef %188, i32 noundef %sub.ptr.sub910, i32 noundef %or818) #6
  %189 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cur.i, align 4
  %incdec.ptr931 = getelementptr i32, ptr %190, i32 1
  store ptr %incdec.ptr931, ptr %cur.i, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %or818, ptr %190, align 4
  %blocks = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 3
  %192 = ptrtoint ptr %blocks to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %blocks, align 4
  %194 = and i16 %193, 8191
  %and941 = zext i16 %194 to i32
  %pitch = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 4
  %195 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %pitch, align 4
  %shr = lshr i32 %196, 6
  %197 = and i32 %shr, 8191
  %or948 = or i32 %197, %and941
  %198 = load ptr, ptr %cur.i, align 4
  %199 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %seg.i, align 8
  %cmp954.not = icmp ult ptr %198, %200
  br i1 %cmp954.not, label %if.end890.if.end979_crit_edge, label %do.end973, !prof !95

if.end890.if.end979_crit_edge:                    ; preds = %if.end890
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end979

do.end973:                                        ; preds = %if.end890
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end979

if.end979:                                        ; preds = %do.end973, %if.end890.if.end979_crit_edge
  %201 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %cur.i, align 4
  %203 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %end.i, align 4
  %cmp993.not = icmp ult ptr %202, %204
  br i1 %cmp993.not, label %if.end979.if.end1018_crit_edge, label %do.end1012, !prof !95

if.end979.if.end1018_crit_edge:                   ; preds = %if.end979
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1018

do.end1012:                                       ; preds = %if.end979
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end1018

if.end1018:                                       ; preds = %do.end1012, %if.end979.if.end1018_crit_edge
  %205 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cur.i, align 4
  %207 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1036 = ptrtoint ptr %206 to i32
  %sub.ptr.rhs.cast1037 = ptrtoint ptr %208 to i32
  %sub.ptr.sub1038 = sub i32 %sub.ptr.lhs.cast1036, %sub.ptr.rhs.cast1037
  %209 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mem, align 8
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %212, align 4
  %215 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %client, align 4
  %name1050 = getelementptr inbounds %struct.nvif_object, ptr %216, i32 0, i32 2
  %217 = ptrtoint ptr %name1050 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %name1050, align 8
  %219 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %handle, align 4
  %221 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %214(ptr noundef %mem, ptr noundef nonnull @.str.42, ptr noundef %218, i32 noundef %220, ptr noundef %222, i32 noundef %sub.ptr.sub1038, i32 noundef %or948) #6
  %223 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1059 = getelementptr i32, ptr %224, i32 1
  store ptr %incdec.ptr1059, ptr %cur.i, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %or948, ptr %224, align 4
  %226 = load ptr, ptr %cur.i, align 4
  %227 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %seg.i, align 8
  %cmp1131.not = icmp ult ptr %226, %228
  br i1 %cmp1131.not, label %if.end1018.if.end1156_crit_edge, label %do.end1150, !prof !95

if.end1018.if.end1156_crit_edge:                  ; preds = %if.end1018
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1156

do.end1150:                                       ; preds = %if.end1018
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 193, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end1156

if.end1156:                                       ; preds = %do.end1150, %if.end1018.if.end1156_crit_edge
  %229 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %cur.i, align 4
  %231 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %end.i, align 4
  %cmp1170.not = icmp ult ptr %230, %232
  br i1 %cmp1170.not, label %if.end1156.if.end1195_crit_edge, label %do.end1189, !prof !95

if.end1156.if.end1195_crit_edge:                  ; preds = %if.end1156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1195

do.end1189:                                       ; preds = %if.end1156
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 193, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end1195

if.end1195:                                       ; preds = %do.end1189, %if.end1156.if.end1195_crit_edge
  %233 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %cur.i, align 4
  %235 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1213 = ptrtoint ptr %234 to i32
  %sub.ptr.rhs.cast1214 = ptrtoint ptr %236 to i32
  %sub.ptr.sub1215 = sub i32 %sub.ptr.lhs.cast1213, %sub.ptr.rhs.cast1214
  %237 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mem, align 8
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %238, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 4
  %243 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %client, align 4
  %name1227 = getelementptr inbounds %struct.nvif_object, ptr %244, i32 0, i32 2
  %245 = ptrtoint ptr %name1227 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %name1227, align 8
  %247 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %handle, align 4
  %249 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %242(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %246, i32 noundef %248, ptr noundef %250, i32 noundef %sub.ptr.sub1215, i32 noundef 262720, i32 noundef 576, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_image_set) #6
  %251 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1236 = getelementptr i32, ptr %252, i32 1
  store ptr %incdec.ptr1236, ptr %cur.i, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 262720, ptr %252, align 4
  %handle1243 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 7
  %254 = ptrtoint ptr %handle1243 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %handle1243, align 4
  %256 = load ptr, ptr %cur.i, align 4
  %257 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %seg.i, align 8
  %cmp1254.not = icmp ult ptr %256, %258
  br i1 %cmp1254.not, label %if.end1195.if.end1279_crit_edge, label %do.end1273, !prof !95

if.end1195.if.end1279_crit_edge:                  ; preds = %if.end1195
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1279

do.end1273:                                       ; preds = %if.end1195
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 193, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end1279

if.end1279:                                       ; preds = %do.end1273, %if.end1195.if.end1279_crit_edge
  %259 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %cur.i, align 4
  %261 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %end.i, align 4
  %cmp1293.not = icmp ult ptr %260, %262
  br i1 %cmp1293.not, label %if.end1279.if.end1318_crit_edge, label %do.end1312, !prof !95

if.end1279.if.end1318_crit_edge:                  ; preds = %if.end1279
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1318

do.end1312:                                       ; preds = %if.end1279
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 193, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end1318

if.end1318:                                       ; preds = %do.end1312, %if.end1279.if.end1318_crit_edge
  %263 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %cur.i, align 4
  %265 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1336 = ptrtoint ptr %264 to i32
  %sub.ptr.rhs.cast1337 = ptrtoint ptr %266 to i32
  %sub.ptr.sub1338 = sub i32 %sub.ptr.lhs.cast1336, %sub.ptr.rhs.cast1337
  %267 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %mem, align 8
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %270, align 4
  %273 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %client, align 4
  %name1350 = getelementptr inbounds %struct.nvif_object, ptr %274, i32 0, i32 2
  %275 = ptrtoint ptr %name1350 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %name1350, align 8
  %277 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %handle, align 4
  %279 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %272(ptr noundef %mem, ptr noundef nonnull @.str.43, ptr noundef %276, i32 noundef %278, ptr noundef %280, i32 noundef %sub.ptr.sub1338, i32 noundef %255, i32 noundef 0) #6
  %281 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1359 = getelementptr i32, ptr %282, i32 1
  store ptr %incdec.ptr1359, ptr %cur.i, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %255, ptr %282, align 4
  %284 = load ptr, ptr %cur.i, align 4
  %285 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %seg.i, align 8
  %cmp1552.not = icmp ult ptr %284, %286
  br i1 %cmp1552.not, label %if.end1318.if.end1577_crit_edge, label %do.end1571, !prof !95

if.end1318.if.end1577_crit_edge:                  ; preds = %if.end1318
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1577

do.end1571:                                       ; preds = %if.end1318
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end1577

if.end1577:                                       ; preds = %do.end1571, %if.end1318.if.end1577_crit_edge
  %287 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cur.i, align 4
  %289 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %end.i, align 4
  %cmp1591.not = icmp ult ptr %288, %290
  br i1 %cmp1591.not, label %if.end1577.if.end1616_crit_edge, label %do.end1610, !prof !95

if.end1577.if.end1616_crit_edge:                  ; preds = %if.end1577
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1616

do.end1610:                                       ; preds = %if.end1577
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end1616

if.end1616:                                       ; preds = %do.end1610, %if.end1577.if.end1616_crit_edge
  %291 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cur.i, align 4
  %293 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1634 = ptrtoint ptr %292 to i32
  %sub.ptr.rhs.cast1635 = ptrtoint ptr %294 to i32
  %sub.ptr.sub1636 = sub i32 %sub.ptr.lhs.cast1634, %sub.ptr.rhs.cast1635
  %295 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mem, align 8
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %296, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %298, align 4
  %301 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %client, align 4
  %name1648 = getelementptr inbounds %struct.nvif_object, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %name1648 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %name1648, align 8
  %305 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %handle, align 4
  %307 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %300(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %304, i32 noundef %306, ptr noundef %308, i32 noundef %sub.ptr.sub1636, i32 noundef 262752, i32 noundef 608, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_image_set) #6
  %309 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1657 = getelementptr i32, ptr %310, i32 1
  store ptr %incdec.ptr1657, ptr %cur.i, align 4
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 262752, ptr %310, align 4
  %offset = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 8
  %312 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %offset, align 8
  %shr1667 = lshr i64 %313, 8
  %conv1668 = trunc i64 %shr1667 to i32
  %314 = load ptr, ptr %cur.i, align 4
  %315 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %seg.i, align 8
  %cmp1673.not = icmp ult ptr %314, %316
  br i1 %cmp1673.not, label %if.end1616.if.end1698_crit_edge, label %do.end1692, !prof !95

if.end1616.if.end1698_crit_edge:                  ; preds = %if.end1616
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1698

do.end1692:                                       ; preds = %if.end1616
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end1698

if.end1698:                                       ; preds = %do.end1692, %if.end1616.if.end1698_crit_edge
  %317 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %cur.i, align 4
  %319 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %end.i, align 4
  %cmp1712.not = icmp ult ptr %318, %320
  br i1 %cmp1712.not, label %if.end1698.if.end1737_crit_edge, label %do.end1731, !prof !95

if.end1698.if.end1737_crit_edge:                  ; preds = %if.end1698
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1737

do.end1731:                                       ; preds = %if.end1698
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end1737

if.end1737:                                       ; preds = %do.end1731, %if.end1698.if.end1737_crit_edge
  %321 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %cur.i, align 4
  %323 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1755 = ptrtoint ptr %322 to i32
  %sub.ptr.rhs.cast1756 = ptrtoint ptr %324 to i32
  %sub.ptr.sub1757 = sub i32 %sub.ptr.lhs.cast1755, %sub.ptr.rhs.cast1756
  %325 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %mem, align 8
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %326, align 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %328, align 4
  %331 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %client, align 4
  %name1769 = getelementptr inbounds %struct.nvif_object, ptr %332, i32 0, i32 2
  %333 = ptrtoint ptr %name1769 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %name1769, align 8
  %335 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %handle, align 4
  %337 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %330(ptr noundef %mem, ptr noundef nonnull @.str.44, ptr noundef %334, i32 noundef %336, ptr noundef %338, i32 noundef %sub.ptr.sub1757, i32 noundef %conv1668) #6
  %339 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1778 = getelementptr i32, ptr %340, i32 1
  store ptr %incdec.ptr1778, ptr %cur.i, align 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %conv1668, ptr %340, align 4
  %342 = load ptr, ptr %cur.i, align 4
  %343 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %seg.i, align 8
  %cmp1850.not = icmp ult ptr %342, %344
  br i1 %cmp1850.not, label %if.end1737.if.end1875_crit_edge, label %do.end1869, !prof !95

if.end1737.if.end1875_crit_edge:                  ; preds = %if.end1737
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1875

do.end1869:                                       ; preds = %if.end1737
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end1875

if.end1875:                                       ; preds = %do.end1869, %if.end1737.if.end1875_crit_edge
  %345 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %cur.i, align 4
  %347 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %end.i, align 4
  %cmp1889.not = icmp ult ptr %346, %348
  br i1 %cmp1889.not, label %if.end1875.if.end1914_crit_edge, label %do.end1908, !prof !95

if.end1875.if.end1914_crit_edge:                  ; preds = %if.end1875
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1914

do.end1908:                                       ; preds = %if.end1875
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end1914

if.end1914:                                       ; preds = %do.end1908, %if.end1875.if.end1914_crit_edge
  %349 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %cur.i, align 4
  %351 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1932 = ptrtoint ptr %350 to i32
  %sub.ptr.rhs.cast1933 = ptrtoint ptr %352 to i32
  %sub.ptr.sub1934 = sub i32 %sub.ptr.lhs.cast1932, %sub.ptr.rhs.cast1933
  %353 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %mem, align 8
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %354, align 4
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %356, align 4
  %359 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %client, align 4
  %name1946 = getelementptr inbounds %struct.nvif_object, ptr %360, i32 0, i32 2
  %361 = ptrtoint ptr %name1946 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %name1946, align 8
  %363 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %handle, align 4
  %365 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %358(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %362, i32 noundef %364, ptr noundef %366, i32 noundef %sub.ptr.sub1934, i32 noundef 262800, i32 noundef 656, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_image_set) #6
  %367 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1955 = getelementptr i32, ptr %368, i32 1
  store ptr %incdec.ptr1955, ptr %cur.i, align 4
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 262800, ptr %368, align 4
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 8
  %370 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %src_x, align 8
  %shr1963 = lshr i32 %371, 16
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 9
  %372 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %src_y, align 4
  %shr1968 = and i32 %373, -65536
  %or19723027 = or i32 %shr1968, %shr1963
  %374 = load ptr, ptr %cur.i, align 4
  %375 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %seg.i, align 8
  %cmp1978.not = icmp ult ptr %374, %376
  br i1 %cmp1978.not, label %if.end1914.if.end2003_crit_edge, label %do.end1997, !prof !95

if.end1914.if.end2003_crit_edge:                  ; preds = %if.end1914
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2003

do.end1997:                                       ; preds = %if.end1914
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end2003

if.end2003:                                       ; preds = %do.end1997, %if.end1914.if.end2003_crit_edge
  %377 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %cur.i, align 4
  %379 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %end.i, align 4
  %cmp2017.not = icmp ult ptr %378, %380
  br i1 %cmp2017.not, label %if.end2003.if.end2042_crit_edge, label %do.end2036, !prof !95

if.end2003.if.end2042_crit_edge:                  ; preds = %if.end2003
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2042

do.end2036:                                       ; preds = %if.end2003
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end2042

if.end2042:                                       ; preds = %do.end2036, %if.end2003.if.end2042_crit_edge
  %381 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %cur.i, align 4
  %383 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2060 = ptrtoint ptr %382 to i32
  %sub.ptr.rhs.cast2061 = ptrtoint ptr %384 to i32
  %sub.ptr.sub2062 = sub i32 %sub.ptr.lhs.cast2060, %sub.ptr.rhs.cast2061
  %385 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %mem, align 8
  %387 = ptrtoint ptr %386 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %386, align 4
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %388, align 4
  %391 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %client, align 4
  %name2074 = getelementptr inbounds %struct.nvif_object, ptr %392, i32 0, i32 2
  %393 = ptrtoint ptr %name2074 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %name2074, align 8
  %395 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %handle, align 4
  %397 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %390(ptr noundef %mem, ptr noundef nonnull @.str.45, ptr noundef %394, i32 noundef %396, ptr noundef %398, i32 noundef %sub.ptr.sub2062, i32 noundef %or19723027) #6
  %399 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2083 = getelementptr i32, ptr %400, i32 1
  store ptr %incdec.ptr2083, ptr %cur.i, align 4
  %401 = ptrtoint ptr %400 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %or19723027, ptr %400, align 4
  %402 = load ptr, ptr %cur.i, align 4
  %403 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %seg.i, align 8
  %cmp2155.not = icmp ult ptr %402, %404
  br i1 %cmp2155.not, label %if.end2042.if.end2180_crit_edge, label %do.end2174, !prof !95

if.end2042.if.end2180_crit_edge:                  ; preds = %if.end2042
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2180

do.end2174:                                       ; preds = %if.end2042
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end2180

if.end2180:                                       ; preds = %do.end2174, %if.end2042.if.end2180_crit_edge
  %405 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %cur.i, align 4
  %407 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %end.i, align 4
  %cmp2194.not = icmp ult ptr %406, %408
  br i1 %cmp2194.not, label %if.end2180.if.end2219_crit_edge, label %do.end2213, !prof !95

if.end2180.if.end2219_crit_edge:                  ; preds = %if.end2180
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2219

do.end2213:                                       ; preds = %if.end2180
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end2219

if.end2219:                                       ; preds = %do.end2213, %if.end2180.if.end2219_crit_edge
  %409 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %cur.i, align 4
  %411 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2237 = ptrtoint ptr %410 to i32
  %sub.ptr.rhs.cast2238 = ptrtoint ptr %412 to i32
  %sub.ptr.sub2239 = sub i32 %sub.ptr.lhs.cast2237, %sub.ptr.rhs.cast2238
  %413 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %mem, align 8
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %414, align 4
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %416, align 4
  %419 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %client, align 4
  %name2251 = getelementptr inbounds %struct.nvif_object, ptr %420, i32 0, i32 2
  %421 = ptrtoint ptr %name2251 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %name2251, align 8
  %423 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %handle, align 4
  %425 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %418(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %422, i32 noundef %424, ptr noundef %426, i32 noundef %sub.ptr.sub2239, i32 noundef 262808, i32 noundef 664, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_image_set) #6
  %427 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2260 = getelementptr i32, ptr %428, i32 1
  store ptr %incdec.ptr2260, ptr %cur.i, align 4
  %429 = ptrtoint ptr %428 to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 262808, ptr %428, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 11
  %430 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %src_w, align 4
  %shr2269 = lshr i32 %431, 16
  %432 = and i32 %shr2269, 32767
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 10
  %433 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %src_h, align 8
  %435 = and i32 %434, 2147418112
  %or22783028 = or i32 %432, %435
  %436 = load ptr, ptr %cur.i, align 4
  %437 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %seg.i, align 8
  %cmp2284.not = icmp ult ptr %436, %438
  br i1 %cmp2284.not, label %if.end2219.if.end2309_crit_edge, label %do.end2303, !prof !95

if.end2219.if.end2309_crit_edge:                  ; preds = %if.end2219
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2309

do.end2303:                                       ; preds = %if.end2219
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end2309

if.end2309:                                       ; preds = %do.end2303, %if.end2219.if.end2309_crit_edge
  %439 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %cur.i, align 4
  %441 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %end.i, align 4
  %cmp2323.not = icmp ult ptr %440, %442
  br i1 %cmp2323.not, label %if.end2309.if.end2348_crit_edge, label %do.end2342, !prof !95

if.end2309.if.end2348_crit_edge:                  ; preds = %if.end2309
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2348

do.end2342:                                       ; preds = %if.end2309
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end2348

if.end2348:                                       ; preds = %do.end2342, %if.end2309.if.end2348_crit_edge
  %443 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %cur.i, align 4
  %445 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2366 = ptrtoint ptr %444 to i32
  %sub.ptr.rhs.cast2367 = ptrtoint ptr %446 to i32
  %sub.ptr.sub2368 = sub i32 %sub.ptr.lhs.cast2366, %sub.ptr.rhs.cast2367
  %447 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %mem, align 8
  %449 = ptrtoint ptr %448 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %448, align 4
  %451 = ptrtoint ptr %450 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %450, align 4
  %453 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %client, align 4
  %name2380 = getelementptr inbounds %struct.nvif_object, ptr %454, i32 0, i32 2
  %455 = ptrtoint ptr %name2380 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %name2380, align 8
  %457 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %handle, align 4
  %459 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %452(ptr noundef %mem, ptr noundef nonnull @.str.46, ptr noundef %456, i32 noundef %458, ptr noundef %460, i32 noundef %sub.ptr.sub2368, i32 noundef %or22783028) #6
  %461 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2389 = getelementptr i32, ptr %462, i32 1
  store ptr %incdec.ptr2389, ptr %cur.i, align 4
  %463 = ptrtoint ptr %462 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %or22783028, ptr %462, align 4
  %464 = load ptr, ptr %cur.i, align 4
  %465 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %seg.i, align 8
  %cmp2461.not = icmp ult ptr %464, %466
  br i1 %cmp2461.not, label %if.end2348.if.end2486_crit_edge, label %do.end2480, !prof !95

if.end2348.if.end2486_crit_edge:                  ; preds = %if.end2348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2486

do.end2480:                                       ; preds = %if.end2348
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end2486

if.end2486:                                       ; preds = %do.end2480, %if.end2348.if.end2486_crit_edge
  %467 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %cur.i, align 4
  %469 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %end.i, align 4
  %cmp2500.not = icmp ult ptr %468, %470
  br i1 %cmp2500.not, label %if.end2486.if.end2525_crit_edge, label %do.end2519, !prof !95

if.end2486.if.end2525_crit_edge:                  ; preds = %if.end2486
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2525

do.end2519:                                       ; preds = %if.end2486
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end2525

if.end2525:                                       ; preds = %do.end2519, %if.end2486.if.end2525_crit_edge
  %471 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %cur.i, align 4
  %473 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2543 = ptrtoint ptr %472 to i32
  %sub.ptr.rhs.cast2544 = ptrtoint ptr %474 to i32
  %sub.ptr.sub2545 = sub i32 %sub.ptr.lhs.cast2543, %sub.ptr.rhs.cast2544
  %475 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %mem, align 8
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %476, align 4
  %479 = ptrtoint ptr %478 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %478, align 4
  %481 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %client, align 4
  %name2557 = getelementptr inbounds %struct.nvif_object, ptr %482, i32 0, i32 2
  %483 = ptrtoint ptr %name2557 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %name2557, align 8
  %485 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %handle, align 4
  %487 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %480(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %484, i32 noundef %486, ptr noundef %488, i32 noundef %sub.ptr.sub2545, i32 noundef 262820, i32 noundef 676, i32 noundef 1, ptr noundef nonnull @__func__.wndwc37e_image_set) #6
  %489 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2566 = getelementptr i32, ptr %490, i32 1
  store ptr %incdec.ptr2566, ptr %cur.i, align 4
  %491 = ptrtoint ptr %490 to i32
  call void @__asan_store4_noabort(i32 %491)
  store i32 262820, ptr %490, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 6
  %492 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %crtc_w, align 8
  %494 = and i32 %493, 32767
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 7
  %495 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %crtc_h, align 4
  %497 = shl i32 %496, 16
  %498 = and i32 %497, 2147418112
  %or25823029 = or i32 %498, %494
  %499 = load ptr, ptr %cur.i, align 4
  %500 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %seg.i, align 8
  %cmp2588.not = icmp ult ptr %499, %501
  br i1 %cmp2588.not, label %if.end2525.if.end2613_crit_edge, label %do.end2607, !prof !95

if.end2525.if.end2613_crit_edge:                  ; preds = %if.end2525
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2613

do.end2607:                                       ; preds = %if.end2525
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %if.end2613

if.end2613:                                       ; preds = %do.end2607, %if.end2525.if.end2613_crit_edge
  %502 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %cur.i, align 4
  %504 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %end.i, align 4
  %cmp2627.not = icmp ult ptr %503, %505
  br i1 %cmp2627.not, label %if.end2613.if.end2652_crit_edge, label %do.end2646, !prof !95

if.end2613.if.end2652_crit_edge:                  ; preds = %if.end2613
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2652

do.end2646:                                       ; preds = %if.end2613
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %if.end2652

if.end2652:                                       ; preds = %do.end2646, %if.end2613.if.end2652_crit_edge
  %506 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %cur.i, align 4
  %508 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2670 = ptrtoint ptr %507 to i32
  %sub.ptr.rhs.cast2671 = ptrtoint ptr %509 to i32
  %sub.ptr.sub2672 = sub i32 %sub.ptr.lhs.cast2670, %sub.ptr.rhs.cast2671
  %510 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %mem, align 8
  %512 = ptrtoint ptr %511 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %511, align 4
  %514 = ptrtoint ptr %513 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %513, align 4
  %516 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %client, align 4
  %name2684 = getelementptr inbounds %struct.nvif_object, ptr %517, i32 0, i32 2
  %518 = ptrtoint ptr %name2684 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %name2684, align 8
  %520 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %handle, align 4
  %522 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %name134, align 8
  tail call void (ptr, ptr, ...) %515(ptr noundef %mem, ptr noundef nonnull @.str.47, ptr noundef %519, i32 noundef %521, ptr noundef %523, i32 noundef %sub.ptr.sub2672, i32 noundef %or25823029) #6
  %524 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2693 = getelementptr i32, ptr %525, i32 1
  store ptr %incdec.ptr2693, ptr %cur.i, align 4
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %or25823029, ptr %525, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2652, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2652 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @head907d_olut_load(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53, !54, !55, !57, !59, !61, !62, !64, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 104, i32 2}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__func__.wndwc37e_blend_set, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__func__.wndwc37e_image_clr, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 149, i32 2}
!23 = !{ptr @.str.19, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.20, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 153, i32 2}
!26 = !{ptr @__func__.wndwc37e_ntfy_clr, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 219, i32 2}
!28 = !{ptr @.str.21, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__func__.wndwc37e_ntfy_set, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 232, i32 2}
!31 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__func__.wndwc37e_sema_clr, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 249, i32 2}
!34 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__func__.wndwc37e_sema_set, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 262, i32 2}
!37 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.25, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.26, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__func__.wndwc37e_update, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 278, i32 2}
!42 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 282, i32 2}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 362, i32 45}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 372, i32 3}
!50 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.34, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @wndwc37e_new_._entry, !49, !"_entry", i1 false, i1 false}
!54 = !{ptr @wndwc37e_new_._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @wndwc37e_format, !56, !"wndwc37e_format", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 306, i32 1}
!57 = !{ptr @wndwc37e, !58, !"wndwc37e", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 327, i32 1}
!59 = !{ptr @__func__.wndwc37e_csc_set, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 49, i32 2}
!61 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__func__.wndwc37e_ilut_set, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 75, i32 2}
!64 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__func__.wndwc37e_ilut_clr, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 62, i32 2}
!69 = !{ptr @__func__.wndwc37e_image_set, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 166, i32 2}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 171, i32 2}
!73 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 193, i32 2}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 194, i32 2}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 196, i32 2}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 200, i32 2}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c", i32 204, i32 2}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{!"auto-init"}
!97 = !{i8 0, i8 2}
