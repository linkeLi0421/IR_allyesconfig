; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/head507d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/head507d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.118, %struct.anon.119, %struct.anon.120, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
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
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.118 = type { i32, i8, i32, i32 }
%struct.anon.119 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.120 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.117 }
%struct.anon.117 = type { ptr, i64 }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.126, %struct.anon.127, %struct.anon.129, ptr, %struct.anon.130, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.131, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.143 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.126 = type { ptr, i32, i32, i8 }
%struct.anon.127 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.128] }
%struct.anon.128 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.129 = type { i64, i64 }
%struct.anon.130 = type { i32, i64 }
%struct.anon.131 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.138, %struct.anon.139, %struct.anon.140, %struct.anon.141 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.132, i8 }
%union.anon.132 = type { %struct.anon.136 }
%struct.anon.136 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.138 = type { i32 }
%struct.anon.139 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.140 = type { i16, i16 }
%struct.anon.141 = type { i16, i16, i16, %struct.anon.142, i16 }
%struct.anon.142 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, %struct.mutex, i8 }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.92, %struct.anon.93, %struct.nv50_head_mode, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.104, %struct.nv50_crc_atom, %struct.anon.105, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.94, %struct.anon.95 }
%struct.anon.94 = type { i16, i16, i16, i16 }
%struct.anon.95 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.96 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.97 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.98 = type { i8, i32, [6 x i8], i8 }
%struct.anon.99 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.100 = type { i8 }
%struct.anon.101 = type { i8 }
%struct.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i16, i16 }
%struct.anon.104 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.105 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.106 }
%struct.anon.106 = type { i16 }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.107, %struct.anon.108, [4 x i8], %struct.anon.109, %struct.anon.111, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.107 = type { i32, i16 }
%struct.anon.108 = type { i32, i16, i32, i32 }
%struct.anon.109 = type { i32, [4 x i8], %struct.anon.110 }
%struct.anon.110 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.111 = type { [12 x i32], i8 }
%struct.anon.112 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.113 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.114 = type { i16, i16 }
%struct.anon.115 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.116 }
%struct.anon.116 = type { i8 }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/head507d.c\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mthd\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.head507d_procamp = private unnamed_addr constant [17 x i8] c"head507d_procamp\00", align 1
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_PROCAMP(i)\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.head507d_dither = private unnamed_addr constant [16 x i8] c"head507d_dither\00", align 1
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_DITHER_CONTROL(i)\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.head507d_ovly = private unnamed_addr constant [14 x i8] c"head507d_ovly\00", align 1
@.str.8 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_BASE_CHANNEL_USAGE_BOUNDS(i)\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.head507d_base = private unnamed_addr constant [14 x i8] c"head507d_base\00", align 1
@__func__.head507d_core_clr = private unnamed_addr constant [18 x i8] c"head507d_core_clr\00", align 1
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_CONTEXT_DMA_ISO(i)\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.head507d_mode = private unnamed_addr constant [14 x i8] c"head507d_mode\00", align 1
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_PIXEL_CLOCK(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_CONTROL(i)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_OVERSCAN_COLOR(i)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_RASTER_SIZE(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_RASTER_SYNC_END(i)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_RASTER_BLANK_END(i)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_RASTER_BLANK_START(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_RASTER_VERT_BLANK2(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_RASTER_VERT_BLANK_DMI(i)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_DEFAULT_BASE_COLOR(i)\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.head507d_view = private unnamed_addr constant [14 x i8] c"head507d_view\00", align 1
@.str.26 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_CONTROL_OUTPUT_SCALER(i)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_VIEWPORT_SIZE_IN(i)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_VIEWPORT_SIZE_OUT(i)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_VIEWPORT_SIZE_OUT_MIN(i)\0A\00", [60 x i8] zeroinitializer }, align 32
@head507d = dso_local constant { %struct.nv50_head_func, [44 x i8] } { %struct.nv50_head_func { ptr @head507d_view, ptr @head507d_mode, ptr @head507d_olut, ptr null, i8 0, i32 256, ptr @head507d_olut_set, ptr @head507d_olut_clr, ptr @head507d_core_calc, ptr @head507d_core_set, ptr @head507d_core_clr, ptr @head507d_curs_layout, ptr @head507d_curs_format, ptr @head507d_curs_set, ptr @head507d_curs_clr, ptr @head507d_base, ptr @head507d_ovly, ptr @head507d_dither, ptr @head507d_procamp, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__func__.head507d_olut_set = private unnamed_addr constant [18 x i8] c"head507d_olut_set\00", align 1
@.str.30 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_BASE_LUT_LO(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_BASE_LUT_HI(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.head507d_olut_clr = private unnamed_addr constant [18 x i8] c"head507d_olut_clr\00", align 1
@__func__.head507d_core_set = private unnamed_addr constant [18 x i8] c"head507d_core_set\00", align 1
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_OFFSET(i, 0)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_SIZE(i)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_STORAGE(i)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_PARAMS(i)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_VIEWPORT_POINT_IN(i, 0)\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.head507d_curs_set = private unnamed_addr constant [18 x i8] c"head507d_curs_set\00", align 1
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_CONTROL_CURSOR(i)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_HEAD_SET_OFFSET_CURSOR(i)\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.head507d_curs_clr = private unnamed_addr constant [18 x i8] c"head507d_curs_clr\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 32, i64 64]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 39, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 58, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 90, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 198, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 356, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 365, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 393, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 410, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 416, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 420, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"head507d\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 431, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 303, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 212, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 215, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 233, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/head507d.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 149, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @head507d, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @head507d to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head507d_procamp(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body6_crit_edge, label %if.then.i

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

do.body6:                                         ; preds = %if.then.i.do.body6_crit_edge, %entry.do.body6_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 2216
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !80

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3240
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !80

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !80

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end133

if.end133:                                        ; preds = %do.end127, %if.end95.if.end133_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 4
  %name150 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head507d_procamp) #5
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %procamp = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 10
  %54 = ptrtoint ptr %procamp to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load = load i16, ptr %procamp, align 4
  %bf.lshr = lshr i16 %bf.load, 4
  %conv166 = zext i16 %bf.lshr to i32
  %shl168 = shl nuw nsw i32 %conv166, 8
  %sin = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 10, i32 0, i32 1
  %55 = ptrtoint ptr %sin to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load172 = load i16, ptr %sin, align 2
  %bf.lshr173 = lshr i16 %bf.load172, 4
  %conv174 = zext i16 %bf.lshr173 to i32
  %shl176 = shl nuw i32 %conv174, 20
  %or177 = or i32 %shl176, %shl168
  %56 = load ptr, ptr %cur.i, align 4
  %57 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %seg.i, align 8
  %cmp184.not = icmp ult ptr %56, %58
  br i1 %cmp184.not, label %if.end133.if.end209_crit_edge, label %do.end203, !prof !80

if.end133.if.end209_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end209

do.end203:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end209

if.end209:                                        ; preds = %do.end203, %if.end133.if.end209_crit_edge
  %59 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur.i, align 4
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i, align 4
  %cmp223.not = icmp ult ptr %60, %62
  br i1 %cmp223.not, label %if.end209.if.end248_crit_edge, label %do.end242, !prof !80

if.end209.if.end248_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248

do.end242:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end248

if.end248:                                        ; preds = %do.end242, %if.end209.if.end248_crit_edge
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast266 = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast267 = ptrtoint ptr %66 to i32
  %sub.ptr.sub268 = sub i32 %sub.ptr.lhs.cast266, %sub.ptr.rhs.cast267
  %67 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mem, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %73 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %client, align 4
  %name280 = getelementptr inbounds %struct.nvif_object, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %name280 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name280, align 8
  %77 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %handle, align 4
  %79 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %72(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %76, i32 noundef %78, ptr noundef %80, i32 noundef %sub.ptr.sub268, i32 noundef %or177) #5
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %incdec.ptr289 = getelementptr i32, ptr %82, i32 1
  store ptr %incdec.ptr289, ptr %cur.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or177, ptr %82, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end248, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end248 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head507d_dither(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body6_crit_edge, label %if.then.i

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

do.body6:                                         ; preds = %if.then.i.do.body6_crit_edge, %entry.do.body6_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 2208
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !80

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3232
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !80

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !80

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end133

if.end133:                                        ; preds = %do.end127, %if.end95.if.end133_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 4
  %name150 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head507d_dither) #5
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %dither = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 9
  %54 = ptrtoint ptr %dither to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %dither, align 1
  %bf.load.lobit = lshr i8 %bf.load, 7
  %55 = lshr i8 %bf.load, 4
  %56 = and i8 %55, 6
  %or175341 = or i8 %56, %bf.load.lobit
  %57 = shl i8 %bf.load, 2
  %58 = and i8 %57, 120
  %or183342 = or i8 %or175341, %58
  %conv185 = zext i8 %or183342 to i32
  %59 = load ptr, ptr %cur.i, align 4
  %60 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %seg.i, align 8
  %cmp190.not = icmp ult ptr %59, %61
  br i1 %cmp190.not, label %if.end133.if.end215_crit_edge, label %do.end209, !prof !80

if.end133.if.end215_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end215

do.end209:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end215

if.end215:                                        ; preds = %do.end209, %if.end133.if.end215_crit_edge
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %64 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i, align 4
  %cmp229.not = icmp ult ptr %63, %65
  br i1 %cmp229.not, label %if.end215.if.end254_crit_edge, label %do.end248, !prof !80

if.end215.if.end254_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end254

do.end248:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end254

if.end254:                                        ; preds = %do.end248, %if.end215.if.end254_crit_edge
  %66 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast272 = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast273 = ptrtoint ptr %69 to i32
  %sub.ptr.sub274 = sub i32 %sub.ptr.lhs.cast272, %sub.ptr.rhs.cast273
  %70 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mem, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %76 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %client, align 4
  %name286 = getelementptr inbounds %struct.nvif_object, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %name286 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name286, align 8
  %80 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %handle, align 4
  %82 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %75(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %79, i32 noundef %81, ptr noundef %83, i32 noundef %sub.ptr.sub274, i32 noundef %conv185) #5
  %84 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur.i, align 4
  %incdec.ptr295 = getelementptr i32, ptr %85, i32 1
  store ptr %incdec.ptr295, ptr %cur.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv185, ptr %85, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end254, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end254 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head507d_ovly(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %ovly = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 8
  %14 = ptrtoint ptr %ovly to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ovly, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %do.end [
    i8 0, label %if.else
    i8 4, label %entry.if.end34_crit_edge
    i8 2, label %sw.bb8
  ]

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #5
  br label %if.end34

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end34:                                         ; preds = %if.else, %do.end, %sw.bb8, %entry.if.end34_crit_edge
  %bounds.1 = phi i32 [ 256, %if.else ], [ 1, %do.end ], [ 257, %sw.bb8 ], [ 769, %entry.if.end34_crit_edge ]
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %17 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %18, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %20
  br i1 %cmp.not.i, label %if.end34.do.body41_crit_edge, label %if.then.i

if.end34.do.body41_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

if.then.i:                                        ; preds = %if.end34
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %22(ptr noundef %11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body41_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body41_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

do.body41:                                        ; preds = %if.then.i.do.body41_crit_edge, %if.end34.do.body41_crit_edge
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %24, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %25 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool44.not = icmp ult i32 %add, 4096
  br i1 %tobool44.not, label %do.body41.if.end99_crit_edge, label %do.end64, !prof !80

do.body41.if.end99_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

do.end64:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end99

if.end99:                                         ; preds = %do.end64, %do.body41.if.end99_crit_edge
  %26 = and i32 %add, 3328
  %27 = or i32 %26, 262144
  %28 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur.i, align 4
  %30 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %29, %31
  br i1 %cmp.not, label %if.end99.if.end142_crit_edge, label %do.end136, !prof !80

if.end99.if.end142_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

do.end136:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end142

if.end142:                                        ; preds = %do.end136, %if.end99.if.end142_crit_edge
  %32 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur.i, align 4
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i, align 4
  %cmp155.not = icmp ult ptr %33, %35
  br i1 %cmp155.not, label %if.end142.if.end180_crit_edge, label %do.end174, !prof !80

if.end142.if.end180_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end180

do.end174:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end180

if.end180:                                        ; preds = %do.end174, %if.end142.if.end180_crit_edge
  %36 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %39 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %40 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mem, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %50 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %handle, align 4
  %name197 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %52 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %45(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %49, i32 noundef %51, ptr noundef %53, i32 noundef %sub.ptr.sub, i32 noundef %27, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head507d_ovly) #5
  %54 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %55, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %27, ptr %55, align 4
  %57 = load ptr, ptr %cur.i, align 4
  %58 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %seg.i, align 8
  %cmp217.not = icmp ult ptr %57, %59
  br i1 %cmp217.not, label %if.end180.if.end242_crit_edge, label %do.end236, !prof !80

if.end180.if.end242_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242

do.end236:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end242

if.end242:                                        ; preds = %do.end236, %if.end180.if.end242_crit_edge
  %60 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i, align 4
  %cmp256.not = icmp ult ptr %61, %63
  br i1 %cmp256.not, label %if.end242.if.end281_crit_edge, label %do.end275, !prof !80

if.end242.if.end281_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end281

do.end275:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end281

if.end281:                                        ; preds = %do.end275, %if.end242.if.end281_crit_edge
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast299 = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast300 = ptrtoint ptr %67 to i32
  %sub.ptr.sub301 = sub i32 %sub.ptr.lhs.cast299, %sub.ptr.rhs.cast300
  %68 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client, align 4
  %name313 = getelementptr inbounds %struct.nvif_object, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %name313 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name313, align 8
  %78 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %handle, align 4
  %80 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %73(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %77, i32 noundef %79, ptr noundef %81, i32 noundef %sub.ptr.sub301, i32 noundef %bounds.1) #5
  %82 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cur.i, align 4
  %incdec.ptr322 = getelementptr i32, ptr %83, i32 1
  store ptr %incdec.ptr322, ptr %cur.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %bounds.1, ptr %83, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end281, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end281 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head507d_base(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cpp = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %cpp to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cpp, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %15, label %do.end [
    i8 0, label %entry.if.end40_crit_edge
    i8 8, label %entry.sw.epilog_crit_edge
    i8 4, label %sw.bb9
    i8 2, label %sw.bb13
    i8 1, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb17, %sw.bb13, %sw.bb9, %entry.sw.epilog_crit_edge
  %bounds.0 = phi i32 [ 1, %do.end ], [ 1, %sw.bb17 ], [ 257, %sw.bb13 ], [ 769, %sw.bb9 ], [ 1281, %entry.sw.epilog_crit_edge ]
  br label %if.end40

if.end40:                                         ; preds = %sw.epilog, %entry.if.end40_crit_edge
  %bounds.1 = phi i32 [ %bounds.0, %sw.epilog ], [ 0, %entry.if.end40_crit_edge ]
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %17 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %18, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %20
  br i1 %cmp.not.i, label %if.end40.do.body47_crit_edge, label %if.then.i

if.end40.do.body47_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body47

if.then.i:                                        ; preds = %if.end40
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %22(ptr noundef %11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body47_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body47_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body47

do.body47:                                        ; preds = %if.then.i.do.body47_crit_edge, %if.end40.do.body47_crit_edge
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %24, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %25 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool50.not = icmp ult i32 %add, 4096
  br i1 %tobool50.not, label %do.body47.if.end105_crit_edge, label %do.end70, !prof !80

do.body47.if.end105_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

do.end70:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end105

if.end105:                                        ; preds = %do.end70, %do.body47.if.end105_crit_edge
  %26 = and i32 %add, 3328
  %27 = or i32 %26, 262144
  %28 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur.i, align 4
  %30 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %29, %31
  br i1 %cmp.not, label %if.end105.if.end148_crit_edge, label %do.end142, !prof !80

if.end105.if.end148_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

do.end142:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end148

if.end148:                                        ; preds = %do.end142, %if.end105.if.end148_crit_edge
  %32 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur.i, align 4
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i, align 4
  %cmp161.not = icmp ult ptr %33, %35
  br i1 %cmp161.not, label %if.end148.if.end186_crit_edge, label %do.end180, !prof !80

if.end148.if.end186_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end186

do.end180:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end186

if.end186:                                        ; preds = %do.end180, %if.end148.if.end186_crit_edge
  %36 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %39 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %40 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mem, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %50 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %handle, align 4
  %name203 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %52 = ptrtoint ptr %name203 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name203, align 8
  tail call void (ptr, ptr, ...) %45(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %49, i32 noundef %51, ptr noundef %53, i32 noundef %sub.ptr.sub, i32 noundef %27, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head507d_base) #5
  %54 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %55, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %27, ptr %55, align 4
  %57 = load ptr, ptr %cur.i, align 4
  %58 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %seg.i, align 8
  %cmp223.not = icmp ult ptr %57, %59
  br i1 %cmp223.not, label %if.end186.if.end248_crit_edge, label %do.end242, !prof !80

if.end186.if.end248_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248

do.end242:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end248

if.end248:                                        ; preds = %do.end242, %if.end186.if.end248_crit_edge
  %60 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i, align 4
  %cmp262.not = icmp ult ptr %61, %63
  br i1 %cmp262.not, label %if.end248.if.end287_crit_edge, label %do.end281, !prof !80

if.end248.if.end287_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end287

do.end281:                                        ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end287

if.end287:                                        ; preds = %do.end281, %if.end248.if.end287_crit_edge
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast305 = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast306 = ptrtoint ptr %67 to i32
  %sub.ptr.sub307 = sub i32 %sub.ptr.lhs.cast305, %sub.ptr.rhs.cast306
  %68 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client, align 4
  %name319 = getelementptr inbounds %struct.nvif_object, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %name319 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name319, align 8
  %78 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %handle, align 4
  %80 = ptrtoint ptr %name203 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name203, align 8
  tail call void (ptr, ptr, ...) %73(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %77, i32 noundef %79, ptr noundef %81, i32 noundef %sub.ptr.sub307, i32 noundef %bounds.1) #5
  %82 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cur.i, align 4
  %incdec.ptr328 = getelementptr i32, ptr %83, i32 1
  store ptr %incdec.ptr328, ptr %cur.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %bounds.1, ptr %83, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end287, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end287 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head507d_curs_format(ptr nocapture readnone %head, ptr nocapture noundef readonly %asyw, ptr nocapture noundef writeonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %format, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -49, i8 %1)
  %cond = icmp eq i8 %1, -49
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %format1 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %format1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %format1, align 2
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef null) #5
  br label %return

return:                                           ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @head507d_curs_layout(ptr nocapture readnone %head, ptr nocapture noundef readonly %asyw, ptr nocapture noundef %asyh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %w = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 5
  %0 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %w, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %1, label %entry.return_crit_edge [
    i16 32, label %sw.bb
    i16 64, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %layout = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %layout to i32
  call void @__asan_loadN_noabort(i32 %3, i32 6)
  %bf.load = load i48, ptr %layout, align 8
  %bf.clear = and i48 %bf.load, -193
  store i48 %bf.clear, ptr %layout, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %layout3 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %layout3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 6)
  %bf.load4 = load i48, ptr %layout3, align 8
  %bf.clear5 = and i48 %bf.load4, -193
  %bf.set6 = or i48 %bf.clear5, 64
  store i48 %bf.set6, ptr %layout3, align 8
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head507d_core_clr(ptr nocapture noundef readonly %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body6_crit_edge, label %if.then.i

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

do.body6:                                         ; preds = %if.then.i.do.body6_crit_edge, %entry.do.body6_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 2164
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !80

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3188
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !80

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !80

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end133

if.end133:                                        ; preds = %do.end127, %if.end95.if.end133_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 4
  %name150 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head507d_core_clr) #5
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %54 = load ptr, ptr %cur.i, align 4
  %55 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %seg.i, align 8
  %cmp170.not = icmp ult ptr %54, %56
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !80

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !80

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end234

if.end234:                                        ; preds = %do.end228, %if.end195.if.end234_crit_edge
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast252 = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast253 = ptrtoint ptr %64 to i32
  %sub.ptr.sub254 = sub i32 %sub.ptr.lhs.cast252, %sub.ptr.rhs.cast253
  %65 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mem, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client, align 4
  %name266 = getelementptr inbounds %struct.nvif_object, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %name266 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name266, align 8
  %75 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %handle, align 4
  %77 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 0) #5
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr275 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr275, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %80, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end234, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end234 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @head507d_core_calc(ptr nocapture noundef readonly %head, ptr noundef %asyh) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %cpp = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %cpp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cpp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp ne i8 %9, 0
  %core = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5
  %frombool = zext i1 %cmp to i8
  %10 = ptrtoint ptr %core to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %core, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %x = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %x to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %x, align 2
  %x6 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 6
  %13 = ptrtoint ptr %x6 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %x6, align 4
  %y = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %y, align 4
  %y9 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 7
  %16 = ptrtoint ptr %y9 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %y9, align 2
  %w = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 4
  %17 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %w, align 2
  %w12 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 8
  %19 = ptrtoint ptr %w12 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %w12, align 8
  %h = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 5
  br label %if.end40.sink.split

if.else:                                          ; preds = %entry
  %ovly = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 8
  %20 = ptrtoint ptr %ovly to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ovly, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp18 = icmp ne i8 %21, 0
  %frombool22 = zext i1 %cmp18 to i8
  %22 = ptrtoint ptr %core to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool22, ptr %core, align 8
  br i1 %cmp18, label %if.else.if.then29_crit_edge, label %lor.lhs.false

if.else.if.then29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.else
  %curs = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6
  %23 = ptrtoint ptr %curs to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %curs, align 8, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  %25 = ptrtoint ptr %core to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %core, align 8
  br i1 %tobool.not, label %lor.lhs.false.if.end40_crit_edge, label %lor.lhs.false.if.then29_crit_edge

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.else.if.then29_crit_edge
  %x31 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 6
  %26 = ptrtoint ptr %x31 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %x31, align 4
  %y33 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 7
  %27 = ptrtoint ptr %y33 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %y33, align 2
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hdisplay, align 4
  %w35 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 8
  %30 = ptrtoint ptr %w35 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %w35, align 8
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh, i32 0, i32 8, i32 6
  br label %if.end40.sink.split

if.end40.sink.split:                              ; preds = %if.then29, %if.then
  %.sink.in = phi ptr [ %vdisplay, %if.then29 ], [ %h, %if.then ]
  %31 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %31)
  %.sink = load i16, ptr %.sink.in, align 2
  %h39 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 9
  %32 = ptrtoint ptr %h39 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %.sink, ptr %h39, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %lor.lhs.false.if.end40_crit_edge
  %core41 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %33 = ptrtoint ptr %core41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core41, align 4
  %handle = getelementptr inbounds %struct.nv50_core, ptr %34, i32 0, i32 1, i32 5, i32 3
  %35 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %handle, align 4
  %handle43 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %handle43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %handle43, align 4
  %offset = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %38, i32 5)
  store i40 0, ptr %offset, align 8
  %format = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 3
  %39 = ptrtoint ptr %format to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -49, ptr %format, align 1
  %kind = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 4
  %40 = ptrtoint ptr %kind to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load = load i16, ptr %kind, align 2
  %bf.clear49 = and i16 %bf.load, 15
  %bf.set50 = or i16 %bf.clear49, 256
  store i16 %bf.set50, ptr %kind, align 2
  %blocks = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 5
  %w60 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 8
  %41 = ptrtoint ptr %w60 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %w60, align 8
  %conv61 = zext i16 %42 to i32
  %add = shl nuw nsw i32 %conv61, 2
  %and = add nuw nsw i32 %add, 252
  %mul = and i32 %and, 524032
  %43 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul, ptr %blocks, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @head507d_olut(ptr nocapture readnone %head, ptr nocapture noundef %asyh, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %size)
  %cmp.not = icmp eq i32 %size, 256
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cpp = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %cpp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cpp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp1 = icmp eq i8 %1, 1
  %mode = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %2, i32 6)
  %bf.load = load i48, ptr %mode, align 8
  %bf.clear = and i48 %bf.load, -121
  %bf.set8 = or i48 %bf.clear, 8
  %bf.set8.sink = select i1 %cmp1, i48 %bf.clear, i48 %bf.set8
  store i48 %bf.set8.sink, ptr %mode, align 8
  %load = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 4
  %3 = ptrtoint ptr %load to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @head507d_olut_load, ptr %load, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @head507d_olut_load(ptr nocapture noundef readonly %in, i32 noundef %size, ptr noundef %mem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not57 = icmp eq i32 %size, 0
  br i1 %tobool.not57, label %entry.do.body17_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.do.body17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %in.addr.060 = phi ptr [ %incdec.ptr, %do.body.do.body_crit_edge ], [ %in, %entry.do.body_crit_edge ]
  %size.addr.059 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %size, %entry.do.body_crit_edge ]
  %mem.addr.058 = phi ptr [ %add.ptr16, %do.body.do.body_crit_edge ], [ %mem, %entry.do.body_crit_edge ]
  %dec = add i32 %size.addr.059, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %in.addr.060 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %in.addr.060, align 2
  %conv = zext i16 %1 to i32
  %add.i = add nuw nsw i32 %conv, 16
  %shr4.i = lshr i32 %add.i, 5
  %2 = tail call i32 @llvm.umin.i32(i32 %shr4.i, i32 2047) #5
  %call.tr = trunc i32 %2 to i16
  %conv1 = shl nuw nsw i16 %call.tr, 3
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv1)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mem.addr.058, i16 %3) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %green = getelementptr inbounds %struct.drm_color_lut, ptr %in.addr.060, i32 0, i32 1
  %4 = ptrtoint ptr %green to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %green, align 2
  %conv4 = zext i16 %5 to i32
  %add.i53 = add nuw nsw i32 %conv4, 16
  %shr4.i54 = lshr i32 %add.i53, 5
  %6 = tail call i32 @llvm.umin.i32(i32 %shr4.i54, i32 2047) #5
  %call5.tr = trunc i32 %6 to i16
  %conv7 = shl nuw nsw i16 %call5.tr, 3
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %add.ptr8 = getelementptr i8, ptr %mem.addr.058, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %7) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %blue = getelementptr inbounds %struct.drm_color_lut, ptr %in.addr.060, i32 0, i32 2
  %8 = ptrtoint ptr %blue to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %blue, align 2
  %conv11 = zext i16 %9 to i32
  %add.i55 = add nuw nsw i32 %conv11, 16
  %shr4.i56 = lshr i32 %add.i55, 5
  %10 = tail call i32 @llvm.umin.i32(i32 %shr4.i56, i32 2047) #5
  %call12.tr = trunc i32 %10 to i16
  %conv14 = shl nuw nsw i16 %call12.tr, 3
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv14)
  %add.ptr15 = getelementptr i8, ptr %mem.addr.058, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 %11) #5, !srcloc !83
  %incdec.ptr = getelementptr %struct.drm_color_lut, ptr %in.addr.060, i32 1
  %add.ptr16 = getelementptr i8, ptr %mem.addr.058, i32 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.do.body17_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body.do.body17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

do.body17:                                        ; preds = %do.body.do.body17_crit_edge, %entry.do.body17_crit_edge
  %mem.addr.0.lcssa = phi ptr [ %mem, %entry.do.body17_crit_edge ], [ %add.ptr16, %do.body.do.body17_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %add.ptr19 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -8
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mem.addr.0.lcssa, i16 %12) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %add.ptr27 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -6
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr27) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %add.ptr31 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr31, i16 %13) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %add.ptr36 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 -4
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr36) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %add.ptr40 = getelementptr i8, ptr %mem.addr.0.lcssa, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr40, i16 %14) #5, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head507d_mode(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %mode = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 13
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body5_crit_edge, label %if.then.i

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body5_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

do.body5:                                         ; preds = %if.then.i.do.body5_crit_edge, %entry.do.body5_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 13
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add7 = add i32 %mul, 2052
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add7)
  %tobool39.not = icmp ult i32 %add7, 4096
  br i1 %tobool39.not, label %do.body5.if.end94_crit_edge, label %do.end59, !prof !80

do.body5.if.end94_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

do.end59:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 363, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end94

if.end94:                                         ; preds = %do.end59, %do.body5.if.end94_crit_edge
  %23 = and i32 %add7, 3076
  %24 = or i32 %23, 524288
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp112.not = icmp ult ptr %26, %28
  br i1 %cmp112.not, label %if.end94.if.end137_crit_edge, label %do.end131, !prof !80

if.end94.if.end137_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

do.end131:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 363, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end94.if.end137_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp150.not = icmp ult ptr %30, %32
  br i1 %cmp150.not, label %if.end137.if.end175_crit_edge, label %do.end169, !prof !80

if.end137.if.end175_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

do.end169:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 363, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end137.if.end175_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 4
  %name192 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add7, i32 noundef 2, ptr noundef nonnull @__func__.head507d_mode) #5
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %clock = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %clock, align 4
  %56 = and i32 %55, 4194303
  %57 = or i32 %56, 8388608
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %seg.i, align 8
  %cmp219.not = icmp ult ptr %58, %60
  br i1 %cmp219.not, label %if.end175.if.end244_crit_edge, label %do.end238, !prof !80

if.end175.if.end244_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end244

do.end238:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 363, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end244

if.end244:                                        ; preds = %do.end238, %if.end175.if.end244_crit_edge
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i, align 4
  %cmp258.not = icmp ult ptr %62, %64
  br i1 %cmp258.not, label %if.end244.if.end283_crit_edge, label %do.end277, !prof !80

if.end244.if.end283_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end283

do.end277:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 363, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end283

if.end283:                                        ; preds = %do.end277, %if.end244.if.end283_crit_edge
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %67 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast301 = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast302 = ptrtoint ptr %68 to i32
  %sub.ptr.sub303 = sub i32 %sub.ptr.lhs.cast301, %sub.ptr.rhs.cast302
  %69 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mem, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %75 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %client, align 4
  %name315 = getelementptr inbounds %struct.nvif_object, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %name315 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name315, align 8
  %79 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %handle, align 4
  %81 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %74(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %78, i32 noundef %80, ptr noundef %82, i32 noundef %sub.ptr.sub303, i32 noundef %57) #5
  %83 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur.i, align 4
  %incdec.ptr324 = getelementptr i32, ptr %84, i32 1
  store ptr %incdec.ptr324, ptr %cur.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %57, ptr %84, align 4
  %86 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %mode, align 4, !range !81
  %88 = shl nuw nsw i8 %87, 1
  %conv336 = zext i8 %88 to i32
  %89 = load ptr, ptr %cur.i, align 4
  %90 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %seg.i, align 8
  %cmp341.not = icmp ult ptr %89, %91
  br i1 %cmp341.not, label %if.end283.if.end366_crit_edge, label %do.end360, !prof !80

if.end283.if.end366_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end366

do.end360:                                        ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 363, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end366

if.end366:                                        ; preds = %do.end360, %if.end283.if.end366_crit_edge
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %94 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %end.i, align 4
  %cmp380.not = icmp ult ptr %93, %95
  br i1 %cmp380.not, label %if.end366.if.end405_crit_edge, label %do.end399, !prof !80

if.end366.if.end405_crit_edge:                    ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end405

do.end399:                                        ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 363, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end405

if.end405:                                        ; preds = %do.end399, %if.end366.if.end405_crit_edge
  %96 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast423 = ptrtoint ptr %97 to i32
  %sub.ptr.rhs.cast424 = ptrtoint ptr %99 to i32
  %sub.ptr.sub425 = sub i32 %sub.ptr.lhs.cast423, %sub.ptr.rhs.cast424
  %100 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mem, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %106 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %client, align 4
  %name437 = getelementptr inbounds %struct.nvif_object, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %name437 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name437, align 8
  %110 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %handle, align 4
  %112 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %105(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %109, i32 noundef %111, ptr noundef %113, i32 noundef %sub.ptr.sub425, i32 noundef %conv336) #5
  %114 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cur.i, align 4
  %incdec.ptr446 = getelementptr i32, ptr %115, i32 1
  store ptr %incdec.ptr446, ptr %cur.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv336, ptr %115, align 4
  %add672 = add i32 %mul, 2064
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add672)
  %tobool717.not = icmp ult i32 %add672, 4096
  br i1 %tobool717.not, label %if.end405.if.end772_crit_edge, label %do.end737, !prof !80

if.end405.if.end772_crit_edge:                    ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end772

do.end737:                                        ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end772

if.end772:                                        ; preds = %do.end737, %if.end405.if.end772_crit_edge
  %117 = and i32 %add672, 3088
  %118 = or i32 %117, 1835008
  %119 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cur.i, align 4
  %121 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %seg.i, align 8
  %cmp797.not = icmp ult ptr %120, %122
  br i1 %cmp797.not, label %if.end772.if.end822_crit_edge, label %do.end816, !prof !80

if.end772.if.end822_crit_edge:                    ; preds = %if.end772
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end822

do.end816:                                        ; preds = %if.end772
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end822

if.end822:                                        ; preds = %do.end816, %if.end772.if.end822_crit_edge
  %123 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur.i, align 4
  %125 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end.i, align 4
  %cmp836.not = icmp ult ptr %124, %126
  br i1 %cmp836.not, label %if.end822.if.end861_crit_edge, label %do.end855, !prof !80

if.end822.if.end861_crit_edge:                    ; preds = %if.end822
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end861

do.end855:                                        ; preds = %if.end822
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end861

if.end861:                                        ; preds = %do.end855, %if.end822.if.end861_crit_edge
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast879 = ptrtoint ptr %128 to i32
  %sub.ptr.rhs.cast880 = ptrtoint ptr %130 to i32
  %sub.ptr.sub881 = sub i32 %sub.ptr.lhs.cast879, %sub.ptr.rhs.cast880
  %131 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mem, align 8
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %137 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %client, align 4
  %name893 = getelementptr inbounds %struct.nvif_object, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %name893 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %name893, align 8
  %141 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %handle, align 4
  %143 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %136(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %140, i32 noundef %142, ptr noundef %144, i32 noundef %sub.ptr.sub881, i32 noundef %118, i32 noundef %add672, i32 noundef 7, ptr noundef nonnull @__func__.head507d_mode) #5
  %145 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cur.i, align 4
  %incdec.ptr904 = getelementptr i32, ptr %146, i32 1
  store ptr %incdec.ptr904, ptr %cur.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %118, ptr %146, align 4
  %148 = load ptr, ptr %cur.i, align 4
  %149 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %seg.i, align 8
  %cmp916.not = icmp ult ptr %148, %150
  br i1 %cmp916.not, label %if.end861.if.end941_crit_edge, label %do.end935, !prof !80

if.end861.if.end941_crit_edge:                    ; preds = %if.end861
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end941

do.end935:                                        ; preds = %if.end861
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end941

if.end941:                                        ; preds = %do.end935, %if.end861.if.end941_crit_edge
  %151 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cur.i, align 4
  %153 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %end.i, align 4
  %cmp955.not = icmp ult ptr %152, %154
  br i1 %cmp955.not, label %if.end941.if.end980_crit_edge, label %do.end974, !prof !80

if.end941.if.end980_crit_edge:                    ; preds = %if.end941
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end980

do.end974:                                        ; preds = %if.end941
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end980

if.end980:                                        ; preds = %do.end974, %if.end941.if.end980_crit_edge
  %155 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cur.i, align 4
  %157 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast998 = ptrtoint ptr %156 to i32
  %sub.ptr.rhs.cast999 = ptrtoint ptr %158 to i32
  %sub.ptr.sub1000 = sub i32 %sub.ptr.lhs.cast998, %sub.ptr.rhs.cast999
  %159 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mem, align 8
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %165 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %client, align 4
  %name1012 = getelementptr inbounds %struct.nvif_object, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %name1012 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %name1012, align 8
  %169 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %handle, align 4
  %171 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %164(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %168, i32 noundef %170, ptr noundef %172, i32 noundef %sub.ptr.sub1000, i32 noundef 0) #5
  %173 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1021 = getelementptr i32, ptr %174, i32 1
  store ptr %incdec.ptr1021, ptr %cur.i, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %174, align 4
  %h = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2
  %176 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %h, align 4
  %178 = and i16 %177, 32767
  %and1030 = zext i16 %178 to i32
  %v = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3
  %179 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %v, align 4
  %181 = shl i32 %180, 16
  %182 = and i32 %181, 2147418112
  %or1036 = or i32 %182, %and1030
  %183 = load ptr, ptr %cur.i, align 4
  %184 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %seg.i, align 8
  %cmp1042.not = icmp ult ptr %183, %185
  br i1 %cmp1042.not, label %if.end980.if.end1067_crit_edge, label %do.end1061, !prof !80

if.end980.if.end1067_crit_edge:                   ; preds = %if.end980
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1067

do.end1061:                                       ; preds = %if.end980
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1067

if.end1067:                                       ; preds = %do.end1061, %if.end980.if.end1067_crit_edge
  %186 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cur.i, align 4
  %188 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %end.i, align 4
  %cmp1081.not = icmp ult ptr %187, %189
  br i1 %cmp1081.not, label %if.end1067.if.end1106_crit_edge, label %do.end1100, !prof !80

if.end1067.if.end1106_crit_edge:                  ; preds = %if.end1067
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1106

do.end1100:                                       ; preds = %if.end1067
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1106

if.end1106:                                       ; preds = %do.end1100, %if.end1067.if.end1106_crit_edge
  %190 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cur.i, align 4
  %192 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1124 = ptrtoint ptr %191 to i32
  %sub.ptr.rhs.cast1125 = ptrtoint ptr %193 to i32
  %sub.ptr.sub1126 = sub i32 %sub.ptr.lhs.cast1124, %sub.ptr.rhs.cast1125
  %194 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mem, align 8
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %200 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %client, align 4
  %name1138 = getelementptr inbounds %struct.nvif_object, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %name1138 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %name1138, align 8
  %204 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %handle, align 4
  %206 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %199(ptr noundef %mem, ptr noundef nonnull @.str.19, ptr noundef %203, i32 noundef %205, ptr noundef %207, i32 noundef %sub.ptr.sub1126, i32 noundef %or1036) #5
  %208 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1147 = getelementptr i32, ptr %209, i32 1
  store ptr %incdec.ptr1147, ptr %cur.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %or1036, ptr %209, align 4
  %synce = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2, i32 1
  %211 = ptrtoint ptr %synce to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %synce, align 2
  %213 = and i16 %212, 32767
  %and1157 = zext i16 %213 to i32
  %synce1160 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 1
  %214 = ptrtoint ptr %synce1160 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %synce1160, align 4
  %216 = and i16 %215, 32767
  %and1162 = zext i16 %216 to i32
  %shl1163 = shl nuw nsw i32 %and1162, 16
  %or1164 = or i32 %shl1163, %and1157
  %217 = load ptr, ptr %cur.i, align 4
  %218 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %seg.i, align 8
  %cmp1170.not = icmp ult ptr %217, %219
  br i1 %cmp1170.not, label %if.end1106.if.end1195_crit_edge, label %do.end1189, !prof !80

if.end1106.if.end1195_crit_edge:                  ; preds = %if.end1106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1195

do.end1189:                                       ; preds = %if.end1106
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1195

if.end1195:                                       ; preds = %do.end1189, %if.end1106.if.end1195_crit_edge
  %220 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %cur.i, align 4
  %222 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %end.i, align 4
  %cmp1209.not = icmp ult ptr %221, %223
  br i1 %cmp1209.not, label %if.end1195.if.end1234_crit_edge, label %do.end1228, !prof !80

if.end1195.if.end1234_crit_edge:                  ; preds = %if.end1195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1234

do.end1228:                                       ; preds = %if.end1195
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1234

if.end1234:                                       ; preds = %do.end1228, %if.end1195.if.end1234_crit_edge
  %224 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %cur.i, align 4
  %226 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1252 = ptrtoint ptr %225 to i32
  %sub.ptr.rhs.cast1253 = ptrtoint ptr %227 to i32
  %sub.ptr.sub1254 = sub i32 %sub.ptr.lhs.cast1252, %sub.ptr.rhs.cast1253
  %228 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %mem, align 8
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %231, align 4
  %234 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %client, align 4
  %name1266 = getelementptr inbounds %struct.nvif_object, ptr %235, i32 0, i32 2
  %236 = ptrtoint ptr %name1266 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %name1266, align 8
  %238 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %handle, align 4
  %240 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %233(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %237, i32 noundef %239, ptr noundef %241, i32 noundef %sub.ptr.sub1254, i32 noundef %or1164) #5
  %242 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1275 = getelementptr i32, ptr %243, i32 1
  store ptr %incdec.ptr1275, ptr %cur.i, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %or1164, ptr %243, align 4
  %blanke = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2, i32 2
  %245 = ptrtoint ptr %blanke to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %blanke, align 4
  %247 = and i16 %246, 32767
  %and1285 = zext i16 %247 to i32
  %blanke1288 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 2
  %248 = ptrtoint ptr %blanke1288 to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %blanke1288, align 2
  %250 = and i16 %249, 32767
  %and1290 = zext i16 %250 to i32
  %shl1291 = shl nuw nsw i32 %and1290, 16
  %or1292 = or i32 %shl1291, %and1285
  %251 = load ptr, ptr %cur.i, align 4
  %252 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %seg.i, align 8
  %cmp1298.not = icmp ult ptr %251, %253
  br i1 %cmp1298.not, label %if.end1234.if.end1323_crit_edge, label %do.end1317, !prof !80

if.end1234.if.end1323_crit_edge:                  ; preds = %if.end1234
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1323

do.end1317:                                       ; preds = %if.end1234
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1323

if.end1323:                                       ; preds = %do.end1317, %if.end1234.if.end1323_crit_edge
  %254 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %cur.i, align 4
  %256 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %end.i, align 4
  %cmp1337.not = icmp ult ptr %255, %257
  br i1 %cmp1337.not, label %if.end1323.if.end1362_crit_edge, label %do.end1356, !prof !80

if.end1323.if.end1362_crit_edge:                  ; preds = %if.end1323
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1362

do.end1356:                                       ; preds = %if.end1323
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1362

if.end1362:                                       ; preds = %do.end1356, %if.end1323.if.end1362_crit_edge
  %258 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cur.i, align 4
  %260 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1380 = ptrtoint ptr %259 to i32
  %sub.ptr.rhs.cast1381 = ptrtoint ptr %261 to i32
  %sub.ptr.sub1382 = sub i32 %sub.ptr.lhs.cast1380, %sub.ptr.rhs.cast1381
  %262 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mem, align 8
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %263, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %265, align 4
  %268 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %client, align 4
  %name1394 = getelementptr inbounds %struct.nvif_object, ptr %269, i32 0, i32 2
  %270 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %name1394, align 8
  %272 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %handle, align 4
  %274 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %267(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %271, i32 noundef %273, ptr noundef %275, i32 noundef %sub.ptr.sub1382, i32 noundef %or1292) #5
  %276 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1403 = getelementptr i32, ptr %277, i32 1
  store ptr %incdec.ptr1403, ptr %cur.i, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %or1292, ptr %277, align 4
  %blanks = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 2, i32 3
  %279 = ptrtoint ptr %blanks to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %blanks, align 2
  %281 = and i16 %280, 32767
  %and1413 = zext i16 %281 to i32
  %blanks1416 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 3
  %282 = ptrtoint ptr %blanks1416 to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %blanks1416, align 4
  %284 = and i16 %283, 32767
  %and1418 = zext i16 %284 to i32
  %shl1419 = shl nuw nsw i32 %and1418, 16
  %or1420 = or i32 %shl1419, %and1413
  %285 = load ptr, ptr %cur.i, align 4
  %286 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %seg.i, align 8
  %cmp1426.not = icmp ult ptr %285, %287
  br i1 %cmp1426.not, label %if.end1362.if.end1451_crit_edge, label %do.end1445, !prof !80

if.end1362.if.end1451_crit_edge:                  ; preds = %if.end1362
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1451

do.end1445:                                       ; preds = %if.end1362
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1451

if.end1451:                                       ; preds = %do.end1445, %if.end1362.if.end1451_crit_edge
  %288 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %cur.i, align 4
  %290 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %end.i, align 4
  %cmp1465.not = icmp ult ptr %289, %291
  br i1 %cmp1465.not, label %if.end1451.if.end1490_crit_edge, label %do.end1484, !prof !80

if.end1451.if.end1490_crit_edge:                  ; preds = %if.end1451
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1490

do.end1484:                                       ; preds = %if.end1451
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1490

if.end1490:                                       ; preds = %do.end1484, %if.end1451.if.end1490_crit_edge
  %292 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %cur.i, align 4
  %294 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1508 = ptrtoint ptr %293 to i32
  %sub.ptr.rhs.cast1509 = ptrtoint ptr %295 to i32
  %sub.ptr.sub1510 = sub i32 %sub.ptr.lhs.cast1508, %sub.ptr.rhs.cast1509
  %296 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %mem, align 8
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %297, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %299, align 4
  %302 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %client, align 4
  %name1522 = getelementptr inbounds %struct.nvif_object, ptr %303, i32 0, i32 2
  %304 = ptrtoint ptr %name1522 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %name1522, align 8
  %306 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %handle, align 4
  %308 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %301(ptr noundef %mem, ptr noundef nonnull @.str.22, ptr noundef %305, i32 noundef %307, ptr noundef %309, i32 noundef %sub.ptr.sub1510, i32 noundef %or1420) #5
  %310 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1531 = getelementptr i32, ptr %311, i32 1
  store ptr %incdec.ptr1531, ptr %cur.i, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %or1420, ptr %311, align 4
  %blank2s = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 4
  %313 = ptrtoint ptr %blank2s to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %blank2s, align 2
  %315 = and i16 %314, 32767
  %and1541 = zext i16 %315 to i32
  %blank2e = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 5
  %316 = ptrtoint ptr %blank2e to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %blank2e, align 4
  %318 = and i16 %317, 32767
  %and1545 = zext i16 %318 to i32
  %shl1546 = shl nuw nsw i32 %and1545, 16
  %or1547 = or i32 %shl1546, %and1541
  %319 = load ptr, ptr %cur.i, align 4
  %320 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %seg.i, align 8
  %cmp1553.not = icmp ult ptr %319, %321
  br i1 %cmp1553.not, label %if.end1490.if.end1578_crit_edge, label %do.end1572, !prof !80

if.end1490.if.end1578_crit_edge:                  ; preds = %if.end1490
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1578

do.end1572:                                       ; preds = %if.end1490
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1578

if.end1578:                                       ; preds = %do.end1572, %if.end1490.if.end1578_crit_edge
  %322 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %cur.i, align 4
  %324 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %end.i, align 4
  %cmp1592.not = icmp ult ptr %323, %325
  br i1 %cmp1592.not, label %if.end1578.if.end1617_crit_edge, label %do.end1611, !prof !80

if.end1578.if.end1617_crit_edge:                  ; preds = %if.end1578
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1617

do.end1611:                                       ; preds = %if.end1578
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1617

if.end1617:                                       ; preds = %do.end1611, %if.end1578.if.end1617_crit_edge
  %326 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %cur.i, align 4
  %328 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1635 = ptrtoint ptr %327 to i32
  %sub.ptr.rhs.cast1636 = ptrtoint ptr %329 to i32
  %sub.ptr.sub1637 = sub i32 %sub.ptr.lhs.cast1635, %sub.ptr.rhs.cast1636
  %330 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %mem, align 8
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %331, align 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %333, align 4
  %336 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %client, align 4
  %name1649 = getelementptr inbounds %struct.nvif_object, ptr %337, i32 0, i32 2
  %338 = ptrtoint ptr %name1649 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %name1649, align 8
  %340 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %handle, align 4
  %342 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %335(ptr noundef %mem, ptr noundef nonnull @.str.23, ptr noundef %339, i32 noundef %341, ptr noundef %343, i32 noundef %sub.ptr.sub1637, i32 noundef %or1547) #5
  %344 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1658 = getelementptr i32, ptr %345, i32 1
  store ptr %incdec.ptr1658, ptr %cur.i, align 4
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %or1547, ptr %345, align 4
  %blankus = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 3, i32 3, i32 6
  %347 = ptrtoint ptr %blankus to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %blankus, align 2
  %349 = and i16 %348, 4095
  %conv1670 = zext i16 %349 to i32
  %350 = load ptr, ptr %cur.i, align 4
  %351 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %seg.i, align 8
  %cmp1675.not = icmp ult ptr %350, %352
  br i1 %cmp1675.not, label %if.end1617.if.end1700_crit_edge, label %do.end1694, !prof !80

if.end1617.if.end1700_crit_edge:                  ; preds = %if.end1617
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1700

do.end1694:                                       ; preds = %if.end1617
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1700

if.end1700:                                       ; preds = %do.end1694, %if.end1617.if.end1700_crit_edge
  %353 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %cur.i, align 4
  %355 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %end.i, align 4
  %cmp1714.not = icmp ult ptr %354, %356
  br i1 %cmp1714.not, label %if.end1700.if.end1739_crit_edge, label %do.end1733, !prof !80

if.end1700.if.end1739_crit_edge:                  ; preds = %if.end1700
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1739

do.end1733:                                       ; preds = %if.end1700
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1739

if.end1739:                                       ; preds = %do.end1733, %if.end1700.if.end1739_crit_edge
  %357 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %cur.i, align 4
  %359 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1757 = ptrtoint ptr %358 to i32
  %sub.ptr.rhs.cast1758 = ptrtoint ptr %360 to i32
  %sub.ptr.sub1759 = sub i32 %sub.ptr.lhs.cast1757, %sub.ptr.rhs.cast1758
  %361 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %mem, align 8
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %362, align 4
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %364, align 4
  %367 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %client, align 4
  %name1771 = getelementptr inbounds %struct.nvif_object, ptr %368, i32 0, i32 2
  %369 = ptrtoint ptr %name1771 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %name1771, align 8
  %371 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %handle, align 4
  %373 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %366(ptr noundef %mem, ptr noundef nonnull @.str.24, ptr noundef %370, i32 noundef %372, ptr noundef %374, i32 noundef %sub.ptr.sub1759, i32 noundef %conv1670) #5
  %375 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1780 = getelementptr i32, ptr %376, i32 1
  store ptr %incdec.ptr1780, ptr %cur.i, align 4
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %conv1670, ptr %376, align 4
  %add1790 = add i32 %mul, 2092
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add1790)
  %tobool1793.not = icmp ult i32 %add1790, 4096
  br i1 %tobool1793.not, label %if.end1739.if.end1848_crit_edge, label %do.end1813, !prof !80

if.end1739.if.end1848_crit_edge:                  ; preds = %if.end1739
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1848

do.end1813:                                       ; preds = %if.end1739
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end1848

if.end1848:                                       ; preds = %do.end1813, %if.end1739.if.end1848_crit_edge
  %378 = and i32 %add1790, 3116
  %379 = or i32 %378, 262144
  %380 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %cur.i, align 4
  %382 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %seg.i, align 8
  %cmp1873.not = icmp ult ptr %381, %383
  br i1 %cmp1873.not, label %if.end1848.if.end1898_crit_edge, label %do.end1892, !prof !80

if.end1848.if.end1898_crit_edge:                  ; preds = %if.end1848
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1898

do.end1892:                                       ; preds = %if.end1848
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1898

if.end1898:                                       ; preds = %do.end1892, %if.end1848.if.end1898_crit_edge
  %384 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %cur.i, align 4
  %386 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %end.i, align 4
  %cmp1912.not = icmp ult ptr %385, %387
  br i1 %cmp1912.not, label %if.end1898.if.end1937_crit_edge, label %do.end1931, !prof !80

if.end1898.if.end1937_crit_edge:                  ; preds = %if.end1898
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1937

do.end1931:                                       ; preds = %if.end1898
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1937

if.end1937:                                       ; preds = %do.end1931, %if.end1898.if.end1937_crit_edge
  %388 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %cur.i, align 4
  %390 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1955 = ptrtoint ptr %389 to i32
  %sub.ptr.rhs.cast1956 = ptrtoint ptr %391 to i32
  %sub.ptr.sub1957 = sub i32 %sub.ptr.lhs.cast1955, %sub.ptr.rhs.cast1956
  %392 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %mem, align 8
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %393, align 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %395, align 4
  %398 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %client, align 4
  %name1969 = getelementptr inbounds %struct.nvif_object, ptr %399, i32 0, i32 2
  %400 = ptrtoint ptr %name1969 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %name1969, align 8
  %402 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %handle, align 4
  %404 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %397(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %401, i32 noundef %403, ptr noundef %405, i32 noundef %sub.ptr.sub1957, i32 noundef %379, i32 noundef %add1790, i32 noundef 1, ptr noundef nonnull @__func__.head507d_mode) #5
  %406 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1980 = getelementptr i32, ptr %407, i32 1
  store ptr %incdec.ptr1980, ptr %cur.i, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %379, ptr %407, align 4
  %409 = load ptr, ptr %cur.i, align 4
  %410 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %seg.i, align 8
  %cmp1992.not = icmp ult ptr %409, %411
  br i1 %cmp1992.not, label %if.end1937.if.end2017_crit_edge, label %do.end2011, !prof !80

if.end1937.if.end2017_crit_edge:                  ; preds = %if.end1937
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2017

do.end2011:                                       ; preds = %if.end1937
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end2017

if.end2017:                                       ; preds = %do.end2011, %if.end1937.if.end2017_crit_edge
  %412 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %cur.i, align 4
  %414 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %end.i, align 4
  %cmp2031.not = icmp ult ptr %413, %415
  br i1 %cmp2031.not, label %if.end2017.if.end2056_crit_edge, label %do.end2050, !prof !80

if.end2017.if.end2056_crit_edge:                  ; preds = %if.end2017
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2056

do.end2050:                                       ; preds = %if.end2017
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end2056

if.end2056:                                       ; preds = %do.end2050, %if.end2017.if.end2056_crit_edge
  %416 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %cur.i, align 4
  %418 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2074 = ptrtoint ptr %417 to i32
  %sub.ptr.rhs.cast2075 = ptrtoint ptr %419 to i32
  %sub.ptr.sub2076 = sub i32 %sub.ptr.lhs.cast2074, %sub.ptr.rhs.cast2075
  %420 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %mem, align 8
  %422 = ptrtoint ptr %421 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %421, align 4
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %423, align 4
  %426 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %client, align 4
  %name2088 = getelementptr inbounds %struct.nvif_object, ptr %427, i32 0, i32 2
  %428 = ptrtoint ptr %name2088 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %name2088, align 8
  %430 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %handle, align 4
  %432 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %425(ptr noundef %mem, ptr noundef nonnull @.str.25, ptr noundef %429, i32 noundef %431, ptr noundef %433, i32 noundef %sub.ptr.sub2076, i32 noundef 0) #5
  %434 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2097 = getelementptr i32, ptr %435, i32 1
  store ptr %incdec.ptr2097, ptr %cur.i, align 4
  %436 = ptrtoint ptr %435 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 0, ptr %435, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2056, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2056 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @head507d_view(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 7
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body6_crit_edge, label %if.then.i

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

do.body6:                                         ; preds = %if.then.i.do.body6_crit_edge, %entry.do.body6_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 7
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 2212
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !80

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3236
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !80

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !80

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end133

if.end133:                                        ; preds = %do.end127, %if.end95.if.end133_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 4
  %name150 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head507d_view) #5
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %54 = load ptr, ptr %cur.i, align 4
  %55 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %seg.i, align 8
  %cmp170.not = icmp ult ptr %54, %56
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !80

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !80

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end234

if.end234:                                        ; preds = %do.end228, %if.end195.if.end234_crit_edge
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast252 = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast253 = ptrtoint ptr %64 to i32
  %sub.ptr.sub254 = sub i32 %sub.ptr.lhs.cast252, %sub.ptr.rhs.cast253
  %65 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mem, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client, align 4
  %name266 = getelementptr inbounds %struct.nvif_object, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %name266 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name266, align 8
  %75 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %handle, align 4
  %77 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.26, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 0) #5
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr275 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr275, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %80, align 4
  %add285 = add i32 %mul, 2248
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add285)
  %tobool288.not = icmp ult i32 %add285, 4096
  br i1 %tobool288.not, label %if.end234.if.end343_crit_edge, label %do.end308, !prof !80

if.end234.if.end343_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end343

do.end308:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end343

if.end343:                                        ; preds = %do.end308, %if.end234.if.end343_crit_edge
  %82 = and i32 %add285, 3272
  %83 = or i32 %82, 262144
  %84 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur.i, align 4
  %86 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %seg.i, align 8
  %cmp368.not = icmp ult ptr %85, %87
  br i1 %cmp368.not, label %if.end343.if.end393_crit_edge, label %do.end387, !prof !80

if.end343.if.end393_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end393

do.end387:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end393

if.end393:                                        ; preds = %do.end387, %if.end343.if.end393_crit_edge
  %88 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur.i, align 4
  %90 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i, align 4
  %cmp407.not = icmp ult ptr %89, %91
  br i1 %cmp407.not, label %if.end393.if.end432_crit_edge, label %do.end426, !prof !80

if.end393.if.end432_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end432

do.end426:                                        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end432

if.end432:                                        ; preds = %do.end426, %if.end393.if.end432_crit_edge
  %92 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cur.i, align 4
  %94 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast450 = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast451 = ptrtoint ptr %95 to i32
  %sub.ptr.sub452 = sub i32 %sub.ptr.lhs.cast450, %sub.ptr.rhs.cast451
  %96 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mem, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %102 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %client, align 4
  %name464 = getelementptr inbounds %struct.nvif_object, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %name464 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name464, align 8
  %106 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %handle, align 4
  %108 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %101(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %105, i32 noundef %107, ptr noundef %109, i32 noundef %sub.ptr.sub452, i32 noundef %83, i32 noundef %add285, i32 noundef 1, ptr noundef nonnull @__func__.head507d_view) #5
  %110 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cur.i, align 4
  %incdec.ptr475 = getelementptr i32, ptr %111, i32 1
  store ptr %incdec.ptr475, ptr %cur.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %83, ptr %111, align 4
  %view = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 2
  %113 = ptrtoint ptr %view to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %view, align 8
  %115 = and i16 %114, 32767
  %and484 = zext i16 %115 to i32
  %iH = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 2, i32 1
  %116 = ptrtoint ptr %iH to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %iH, align 2
  %118 = and i16 %117, 32767
  %and488 = zext i16 %118 to i32
  %shl489 = shl nuw nsw i32 %and488, 16
  %or490 = or i32 %shl489, %and484
  %119 = load ptr, ptr %cur.i, align 4
  %120 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %seg.i, align 8
  %cmp496.not = icmp ult ptr %119, %121
  br i1 %cmp496.not, label %if.end432.if.end521_crit_edge, label %do.end515, !prof !80

if.end432.if.end521_crit_edge:                    ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end521

do.end515:                                        ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end521

if.end521:                                        ; preds = %do.end515, %if.end432.if.end521_crit_edge
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %124 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %end.i, align 4
  %cmp535.not = icmp ult ptr %123, %125
  br i1 %cmp535.not, label %if.end521.if.end560_crit_edge, label %do.end554, !prof !80

if.end521.if.end560_crit_edge:                    ; preds = %if.end521
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end560

do.end554:                                        ; preds = %if.end521
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end560

if.end560:                                        ; preds = %do.end554, %if.end521.if.end560_crit_edge
  %126 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur.i, align 4
  %128 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast578 = ptrtoint ptr %127 to i32
  %sub.ptr.rhs.cast579 = ptrtoint ptr %129 to i32
  %sub.ptr.sub580 = sub i32 %sub.ptr.lhs.cast578, %sub.ptr.rhs.cast579
  %130 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mem, align 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %client, align 4
  %name592 = getelementptr inbounds %struct.nvif_object, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %name592 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %name592, align 8
  %140 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %handle, align 4
  %142 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %135(ptr noundef %mem, ptr noundef nonnull @.str.27, ptr noundef %139, i32 noundef %141, ptr noundef %143, i32 noundef %sub.ptr.sub580, i32 noundef %or490) #5
  %144 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cur.i, align 4
  %incdec.ptr601 = getelementptr i32, ptr %145, i32 1
  store ptr %incdec.ptr601, ptr %cur.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or490, ptr %145, align 4
  %add612 = add i32 %mul, 2264
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add612)
  %tobool656.not = icmp ult i32 %add612, 4096
  br i1 %tobool656.not, label %if.end560.if.end711_crit_edge, label %do.end676, !prof !80

if.end560.if.end711_crit_edge:                    ; preds = %if.end560
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end711

do.end676:                                        ; preds = %if.end560
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end711

if.end711:                                        ; preds = %do.end676, %if.end560.if.end711_crit_edge
  %147 = and i32 %add612, 3288
  %148 = or i32 %147, 524288
  %149 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cur.i, align 4
  %151 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %seg.i, align 8
  %cmp736.not = icmp ult ptr %150, %152
  br i1 %cmp736.not, label %if.end711.if.end761_crit_edge, label %do.end755, !prof !80

if.end711.if.end761_crit_edge:                    ; preds = %if.end711
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end761

do.end755:                                        ; preds = %if.end711
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end761

if.end761:                                        ; preds = %do.end755, %if.end711.if.end761_crit_edge
  %153 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cur.i, align 4
  %155 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %end.i, align 4
  %cmp775.not = icmp ult ptr %154, %156
  br i1 %cmp775.not, label %if.end761.if.end800_crit_edge, label %do.end794, !prof !80

if.end761.if.end800_crit_edge:                    ; preds = %if.end761
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end800

do.end794:                                        ; preds = %if.end761
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end800

if.end800:                                        ; preds = %do.end794, %if.end761.if.end800_crit_edge
  %157 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cur.i, align 4
  %159 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast818 = ptrtoint ptr %158 to i32
  %sub.ptr.rhs.cast819 = ptrtoint ptr %160 to i32
  %sub.ptr.sub820 = sub i32 %sub.ptr.lhs.cast818, %sub.ptr.rhs.cast819
  %161 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mem, align 8
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %167 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %client, align 4
  %name832 = getelementptr inbounds %struct.nvif_object, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %name832 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %name832, align 8
  %171 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %handle, align 4
  %173 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %166(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %170, i32 noundef %172, ptr noundef %174, i32 noundef %sub.ptr.sub820, i32 noundef %148, i32 noundef %add612, i32 noundef 2, ptr noundef nonnull @__func__.head507d_view) #5
  %175 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cur.i, align 4
  %incdec.ptr843 = getelementptr i32, ptr %176, i32 1
  store ptr %incdec.ptr843, ptr %cur.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %148, ptr %176, align 4
  %oW = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 2, i32 2
  %178 = ptrtoint ptr %oW to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %oW, align 4
  %180 = and i16 %179, 32767
  %and853 = zext i16 %180 to i32
  %oH = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 2, i32 3
  %181 = ptrtoint ptr %oH to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %oH, align 2
  %183 = and i16 %182, 32767
  %and857 = zext i16 %183 to i32
  %shl858 = shl nuw nsw i32 %and857, 16
  %or859 = or i32 %shl858, %and853
  %184 = load ptr, ptr %cur.i, align 4
  %185 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %seg.i, align 8
  %cmp865.not = icmp ult ptr %184, %186
  br i1 %cmp865.not, label %if.end800.if.end890_crit_edge, label %do.end884, !prof !80

if.end800.if.end890_crit_edge:                    ; preds = %if.end800
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end890

do.end884:                                        ; preds = %if.end800
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end890

if.end890:                                        ; preds = %do.end884, %if.end800.if.end890_crit_edge
  %187 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cur.i, align 4
  %189 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %end.i, align 4
  %cmp904.not = icmp ult ptr %188, %190
  br i1 %cmp904.not, label %if.end890.if.end929_crit_edge, label %do.end923, !prof !80

if.end890.if.end929_crit_edge:                    ; preds = %if.end890
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end929

do.end923:                                        ; preds = %if.end890
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end929

if.end929:                                        ; preds = %do.end923, %if.end890.if.end929_crit_edge
  %191 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cur.i, align 4
  %193 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast947 = ptrtoint ptr %192 to i32
  %sub.ptr.rhs.cast948 = ptrtoint ptr %194 to i32
  %sub.ptr.sub949 = sub i32 %sub.ptr.lhs.cast947, %sub.ptr.rhs.cast948
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
  %name961 = getelementptr inbounds %struct.nvif_object, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %name961 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %name961, align 8
  %205 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %handle, align 4
  %207 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %200(ptr noundef %mem, ptr noundef nonnull @.str.28, ptr noundef %204, i32 noundef %206, ptr noundef %208, i32 noundef %sub.ptr.sub949, i32 noundef %or859) #5
  %209 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cur.i, align 4
  %incdec.ptr970 = getelementptr i32, ptr %210, i32 1
  store ptr %incdec.ptr970, ptr %cur.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %or859, ptr %210, align 4
  %212 = ptrtoint ptr %oW to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %oW, align 4
  %214 = and i16 %213, 32767
  %and981 = zext i16 %214 to i32
  %215 = ptrtoint ptr %oH to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %oH, align 2
  %217 = and i16 %216, 32767
  %and986 = zext i16 %217 to i32
  %shl987 = shl nuw nsw i32 %and986, 16
  %or988 = or i32 %shl987, %and981
  %218 = load ptr, ptr %cur.i, align 4
  %219 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %seg.i, align 8
  %cmp994.not = icmp ult ptr %218, %220
  br i1 %cmp994.not, label %if.end929.if.end1019_crit_edge, label %do.end1013, !prof !80

if.end929.if.end1019_crit_edge:                   ; preds = %if.end929
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1019

do.end1013:                                       ; preds = %if.end929
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1019

if.end1019:                                       ; preds = %do.end1013, %if.end929.if.end1019_crit_edge
  %221 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cur.i, align 4
  %223 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %end.i, align 4
  %cmp1033.not = icmp ult ptr %222, %224
  br i1 %cmp1033.not, label %if.end1019.if.end1058_crit_edge, label %do.end1052, !prof !80

if.end1019.if.end1058_crit_edge:                  ; preds = %if.end1019
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1058

do.end1052:                                       ; preds = %if.end1019
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1058

if.end1058:                                       ; preds = %do.end1052, %if.end1019.if.end1058_crit_edge
  %225 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %cur.i, align 4
  %227 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1076 = ptrtoint ptr %226 to i32
  %sub.ptr.rhs.cast1077 = ptrtoint ptr %228 to i32
  %sub.ptr.sub1078 = sub i32 %sub.ptr.lhs.cast1076, %sub.ptr.rhs.cast1077
  %229 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %mem, align 8
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %232, align 4
  %235 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %client, align 4
  %name1090 = getelementptr inbounds %struct.nvif_object, ptr %236, i32 0, i32 2
  %237 = ptrtoint ptr %name1090 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %name1090, align 8
  %239 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %handle, align 4
  %241 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %234(ptr noundef %mem, ptr noundef nonnull @.str.29, ptr noundef %238, i32 noundef %240, ptr noundef %242, i32 noundef %sub.ptr.sub1078, i32 noundef %or988) #5
  %243 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1099 = getelementptr i32, ptr %244, i32 1
  store ptr %incdec.ptr1099, ptr %cur.i, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %or988, ptr %244, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1058, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1058 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head507d_olut_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 3
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body5_crit_edge, label %if.then.i

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body5_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

do.body5:                                         ; preds = %if.then.i.do.body5_crit_edge, %entry.do.body5_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 3
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add7 = add i32 %mul, 2112
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add7)
  %tobool39.not = icmp ult i32 %add7, 4096
  br i1 %tobool39.not, label %do.body5.if.end94_crit_edge, label %do.end59, !prof !80

do.body5.if.end94_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

do.end59:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end94

if.end94:                                         ; preds = %do.end59, %do.body5.if.end94_crit_edge
  %23 = and i32 %add7, 3136
  %24 = or i32 %23, 524288
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp112.not = icmp ult ptr %26, %28
  br i1 %cmp112.not, label %if.end94.if.end137_crit_edge, label %do.end131, !prof !80

if.end94.if.end137_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

do.end131:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end94.if.end137_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp150.not = icmp ult ptr %30, %32
  br i1 %cmp150.not, label %if.end137.if.end175_crit_edge, label %do.end169, !prof !80

if.end137.if.end175_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

do.end169:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end137.if.end175_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 4
  %name192 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add7, i32 noundef 2, ptr noundef nonnull @__func__.head507d_olut_set) #5
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %mode = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %54, i32 6)
  %bf.load = load i48, ptr %mode, align 8
  %55 = trunc i48 %bf.load to i32
  %56 = shl i32 %55, 27
  %shl210 = and i32 %56, 1073741824
  %or211 = or i32 %shl210, -2147483648
  %57 = load ptr, ptr %cur.i, align 4
  %58 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %seg.i, align 8
  %cmp218.not = icmp ult ptr %57, %59
  br i1 %cmp218.not, label %if.end175.if.end243_crit_edge, label %do.end237, !prof !80

if.end175.if.end243_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end243

do.end237:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end243

if.end243:                                        ; preds = %do.end237, %if.end175.if.end243_crit_edge
  %60 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i, align 4
  %cmp257.not = icmp ult ptr %61, %63
  br i1 %cmp257.not, label %if.end243.if.end282_crit_edge, label %do.end276, !prof !80

if.end243.if.end282_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end282

do.end276:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end282

if.end282:                                        ; preds = %do.end276, %if.end243.if.end282_crit_edge
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast300 = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast301 = ptrtoint ptr %67 to i32
  %sub.ptr.sub302 = sub i32 %sub.ptr.lhs.cast300, %sub.ptr.rhs.cast301
  %68 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client, align 4
  %name314 = getelementptr inbounds %struct.nvif_object, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %name314 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name314, align 8
  %78 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %handle, align 4
  %80 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %73(ptr noundef %mem, ptr noundef nonnull @.str.30, ptr noundef %77, i32 noundef %79, ptr noundef %81, i32 noundef %sub.ptr.sub302, i32 noundef %or211) #5
  %82 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cur.i, align 4
  %incdec.ptr323 = getelementptr i32, ptr %83, i32 1
  store ptr %incdec.ptr323, ptr %cur.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or211, ptr %83, align 4
  %85 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %85, i32 6)
  %bf.load332 = load i48, ptr %mode, align 8
  %bf.lshr333 = lshr i48 %bf.load332, 16
  %conv338 = trunc i48 %bf.lshr333 to i32
  %86 = load ptr, ptr %cur.i, align 4
  %87 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %seg.i, align 8
  %cmp343.not = icmp ult ptr %86, %88
  br i1 %cmp343.not, label %if.end282.if.end368_crit_edge, label %do.end362, !prof !80

if.end282.if.end368_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end368

do.end362:                                        ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end368

if.end368:                                        ; preds = %do.end362, %if.end282.if.end368_crit_edge
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %91 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %end.i, align 4
  %cmp382.not = icmp ult ptr %90, %92
  br i1 %cmp382.not, label %if.end368.if.end407_crit_edge, label %do.end401, !prof !80

if.end368.if.end407_crit_edge:                    ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end407

do.end401:                                        ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end407

if.end407:                                        ; preds = %do.end401, %if.end368.if.end407_crit_edge
  %93 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur.i, align 4
  %95 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast425 = ptrtoint ptr %94 to i32
  %sub.ptr.rhs.cast426 = ptrtoint ptr %96 to i32
  %sub.ptr.sub427 = sub i32 %sub.ptr.lhs.cast425, %sub.ptr.rhs.cast426
  %97 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mem, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %103 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %client, align 4
  %name439 = getelementptr inbounds %struct.nvif_object, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %name439 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %name439, align 8
  %107 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %handle, align 4
  %109 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %102(ptr noundef %mem, ptr noundef nonnull @.str.31, ptr noundef %106, i32 noundef %108, ptr noundef %110, i32 noundef %sub.ptr.sub427, i32 noundef %conv338) #5
  %111 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cur.i, align 4
  %incdec.ptr448 = getelementptr i32, ptr %112, i32 1
  store ptr %incdec.ptr448, ptr %cur.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv338, ptr %112, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end407, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end407 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head507d_olut_clr(ptr nocapture noundef readonly %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body6_crit_edge, label %if.then.i

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

do.body6:                                         ; preds = %if.then.i.do.body6_crit_edge, %entry.do.body6_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 2112
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !80

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3136
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !80

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !80

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end133

if.end133:                                        ; preds = %do.end127, %if.end95.if.end133_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 4
  %name150 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head507d_olut_clr) #5
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %54 = load ptr, ptr %cur.i, align 4
  %55 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %seg.i, align 8
  %cmp170.not = icmp ult ptr %54, %56
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !80

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !80

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end234

if.end234:                                        ; preds = %do.end228, %if.end195.if.end234_crit_edge
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast252 = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast253 = ptrtoint ptr %64 to i32
  %sub.ptr.sub254 = sub i32 %sub.ptr.lhs.cast252, %sub.ptr.rhs.cast253
  %65 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mem, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client, align 4
  %name266 = getelementptr inbounds %struct.nvif_object, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %name266 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name266, align 8
  %75 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %handle, align 4
  %77 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.30, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 0) #5
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr275 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr275, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %80, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end234, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end234 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head507d_core_set(ptr nocapture noundef readonly %head, ptr nocapture noundef %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 9
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body6_crit_edge, label %if.then.i

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

do.body6:                                         ; preds = %if.then.i.do.body6_crit_edge, %entry.do.body6_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 9
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 2144
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool8.not = icmp ult i32 %add, 4096
  br i1 %tobool8.not, label %do.body6.if.end54_crit_edge, label %do.end, !prof !80

do.body6.if.end54_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end54

if.end54:                                         ; preds = %do.end, %do.body6.if.end54_crit_edge
  %23 = and i32 %add, 3168
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end54.if.end97_crit_edge, label %do.end91, !prof !80

if.end54.if.end97_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

do.end91:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %if.end54.if.end97_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp110.not = icmp ult ptr %30, %32
  br i1 %cmp110.not, label %if.end97.if.end135_crit_edge, label %do.end129, !prof !80

if.end97.if.end135_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

do.end129:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end135

if.end135:                                        ; preds = %do.end129, %if.end97.if.end135_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 4
  %name152 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head507d_core_set) #5
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %offset = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 2
  %54 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %54, i32 5)
  %bf.load = load i40, ptr %offset, align 8
  %55 = lshr i40 %bf.load, 8
  %conv173 = trunc i40 %55 to i32
  %56 = load ptr, ptr %cur.i, align 4
  %57 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %seg.i, align 8
  %cmp178.not = icmp ult ptr %56, %58
  br i1 %cmp178.not, label %if.end135.if.end203_crit_edge, label %do.end197, !prof !80

if.end135.if.end203_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end203

do.end197:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end203

if.end203:                                        ; preds = %do.end197, %if.end135.if.end203_crit_edge
  %59 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur.i, align 4
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i, align 4
  %cmp217.not = icmp ult ptr %60, %62
  br i1 %cmp217.not, label %if.end203.if.end242_crit_edge, label %do.end236, !prof !80

if.end203.if.end242_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242

do.end236:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end242

if.end242:                                        ; preds = %do.end236, %if.end203.if.end242_crit_edge
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast260 = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast261 = ptrtoint ptr %66 to i32
  %sub.ptr.sub262 = sub i32 %sub.ptr.lhs.cast260, %sub.ptr.rhs.cast261
  %67 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mem, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %73 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %client, align 4
  %name274 = getelementptr inbounds %struct.nvif_object, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %name274 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name274, align 8
  %77 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %handle, align 4
  %79 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %72(ptr noundef %mem, ptr noundef nonnull @.str.32, ptr noundef %76, i32 noundef %78, ptr noundef %80, i32 noundef %sub.ptr.sub262, i32 noundef %conv173) #5
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %incdec.ptr283 = getelementptr i32, ptr %82, i32 1
  store ptr %incdec.ptr283, ptr %cur.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv173, ptr %82, align 4
  %add379 = add i32 %mul, 2152
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add379)
  %tobool424.not = icmp ult i32 %add379, 4096
  br i1 %tobool424.not, label %if.end242.if.end479_crit_edge, label %do.end444, !prof !80

if.end242.if.end479_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end479

do.end444:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end479

if.end479:                                        ; preds = %do.end444, %if.end242.if.end479_crit_edge
  %84 = and i32 %add379, 3176
  %85 = or i32 %84, 1048576
  %86 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cur.i, align 4
  %88 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %seg.i, align 8
  %cmp504.not = icmp ult ptr %87, %89
  br i1 %cmp504.not, label %if.end479.if.end529_crit_edge, label %do.end523, !prof !80

if.end479.if.end529_crit_edge:                    ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end529

do.end523:                                        ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end529

if.end529:                                        ; preds = %do.end523, %if.end479.if.end529_crit_edge
  %90 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur.i, align 4
  %92 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i, align 4
  %cmp543.not = icmp ult ptr %91, %93
  br i1 %cmp543.not, label %if.end529.if.end568_crit_edge, label %do.end562, !prof !80

if.end529.if.end568_crit_edge:                    ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end568

do.end562:                                        ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end568

if.end568:                                        ; preds = %do.end562, %if.end529.if.end568_crit_edge
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %96 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast586 = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast587 = ptrtoint ptr %97 to i32
  %sub.ptr.sub588 = sub i32 %sub.ptr.lhs.cast586, %sub.ptr.rhs.cast587
  %98 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mem, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %104 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %client, align 4
  %name600 = getelementptr inbounds %struct.nvif_object, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %name600 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name600, align 8
  %108 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %handle, align 4
  %110 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %103(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %107, i32 noundef %109, ptr noundef %111, i32 noundef %sub.ptr.sub588, i32 noundef %85, i32 noundef %add379, i32 noundef 4, ptr noundef nonnull @__func__.head507d_core_set) #5
  %112 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cur.i, align 4
  %incdec.ptr611 = getelementptr i32, ptr %113, i32 1
  store ptr %incdec.ptr611, ptr %cur.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %85, ptr %113, align 4
  %w = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 8
  %115 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %w, align 8
  %117 = and i16 %116, 32767
  %and621 = zext i16 %117 to i32
  %h = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 9
  %118 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %h, align 2
  %120 = and i16 %119, 32767
  %and625 = zext i16 %120 to i32
  %shl626 = shl nuw nsw i32 %and625, 16
  %or627 = or i32 %shl626, %and621
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %seg.i, align 8
  %cmp633.not = icmp ult ptr %121, %123
  br i1 %cmp633.not, label %if.end568.if.end658_crit_edge, label %do.end652, !prof !80

if.end568.if.end658_crit_edge:                    ; preds = %if.end568
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end658

do.end652:                                        ; preds = %if.end568
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end658

if.end658:                                        ; preds = %do.end652, %if.end568.if.end658_crit_edge
  %124 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end.i, align 4
  %cmp672.not = icmp ult ptr %125, %127
  br i1 %cmp672.not, label %if.end658.if.end697_crit_edge, label %do.end691, !prof !80

if.end658.if.end697_crit_edge:                    ; preds = %if.end658
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end697

do.end691:                                        ; preds = %if.end658
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end697

if.end697:                                        ; preds = %do.end691, %if.end658.if.end697_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast715 = ptrtoint ptr %129 to i32
  %sub.ptr.rhs.cast716 = ptrtoint ptr %131 to i32
  %sub.ptr.sub717 = sub i32 %sub.ptr.lhs.cast715, %sub.ptr.rhs.cast716
  %132 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mem, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %138 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %client, align 4
  %name729 = getelementptr inbounds %struct.nvif_object, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %name729 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %name729, align 8
  %142 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %handle, align 4
  %144 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %137(ptr noundef %mem, ptr noundef nonnull @.str.33, ptr noundef %141, i32 noundef %143, ptr noundef %145, i32 noundef %sub.ptr.sub717, i32 noundef %or627) #5
  %146 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cur.i, align 4
  %incdec.ptr738 = getelementptr i32, ptr %147, i32 1
  store ptr %incdec.ptr738, ptr %cur.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or627, ptr %147, align 4
  %blockh = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 4
  %149 = ptrtoint ptr %blockh to i32
  call void @__asan_load2_noabort(i32 %149)
  %bf.load747 = load i16, ptr %blockh, align 2
  %150 = lshr i16 %bf.load747, 4
  %151 = and i16 %150, 15
  %conv749 = zext i16 %151 to i32
  %pitch = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 5
  %152 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %152)
  %bf.load753 = load i32, ptr %pitch, align 8
  %153 = and i32 %bf.load753, 261888
  %or759 = or i32 %153, %conv749
  %154 = lshr i32 %bf.load753, 12
  %155 = and i32 %154, 261888
  %or767 = or i32 %or759, %155
  %bf.lshr770 = lshr i16 %bf.load747, 8
  %156 = and i16 %bf.lshr770, 1
  %157 = zext i16 %156 to i32
  %shl775 = shl nuw nsw i32 %157, 20
  %or776 = or i32 %or767, %shl775
  %158 = load ptr, ptr %cur.i, align 4
  %159 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %seg.i, align 8
  %cmp782.not = icmp ult ptr %158, %160
  br i1 %cmp782.not, label %if.end697.if.end807_crit_edge, label %do.end801, !prof !80

if.end697.if.end807_crit_edge:                    ; preds = %if.end697
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end807

do.end801:                                        ; preds = %if.end697
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end807

if.end807:                                        ; preds = %do.end801, %if.end697.if.end807_crit_edge
  %161 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cur.i, align 4
  %163 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %end.i, align 4
  %cmp821.not = icmp ult ptr %162, %164
  br i1 %cmp821.not, label %if.end807.if.end846_crit_edge, label %do.end840, !prof !80

if.end807.if.end846_crit_edge:                    ; preds = %if.end807
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end846

do.end840:                                        ; preds = %if.end807
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end846

if.end846:                                        ; preds = %do.end840, %if.end807.if.end846_crit_edge
  %165 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cur.i, align 4
  %167 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast864 = ptrtoint ptr %166 to i32
  %sub.ptr.rhs.cast865 = ptrtoint ptr %168 to i32
  %sub.ptr.sub866 = sub i32 %sub.ptr.lhs.cast864, %sub.ptr.rhs.cast865
  %169 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %mem, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %175 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %client, align 4
  %name878 = getelementptr inbounds %struct.nvif_object, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %name878 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %name878, align 8
  %179 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %handle, align 4
  %181 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %174(ptr noundef %mem, ptr noundef nonnull @.str.34, ptr noundef %178, i32 noundef %180, ptr noundef %182, i32 noundef %sub.ptr.sub866, i32 noundef %or776) #5
  %183 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cur.i, align 4
  %incdec.ptr887 = getelementptr i32, ptr %184, i32 1
  store ptr %incdec.ptr887, ptr %cur.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %or776, ptr %184, align 4
  %format = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 3
  %186 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %format, align 1
  %conv896 = zext i8 %187 to i32
  %shl898 = shl nuw nsw i32 %conv896, 8
  %188 = ptrtoint ptr %blockh to i32
  call void @__asan_load2_noabort(i32 %188)
  %bf.load900 = load i16, ptr %blockh, align 2
  %bf.lshr901 = lshr i16 %bf.load900, 9
  %conv903 = zext i16 %bf.lshr901 to i32
  %shl905 = shl nuw nsw i32 %conv903, 16
  %or906 = or i32 %shl905, %shl898
  %189 = load ptr, ptr %cur.i, align 4
  %190 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %seg.i, align 8
  %cmp913.not = icmp ult ptr %189, %191
  br i1 %cmp913.not, label %if.end846.if.end938_crit_edge, label %do.end932, !prof !80

if.end846.if.end938_crit_edge:                    ; preds = %if.end846
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end938

do.end932:                                        ; preds = %if.end846
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end938

if.end938:                                        ; preds = %do.end932, %if.end846.if.end938_crit_edge
  %192 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cur.i, align 4
  %194 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %end.i, align 4
  %cmp952.not = icmp ult ptr %193, %195
  br i1 %cmp952.not, label %if.end938.if.end977_crit_edge, label %do.end971, !prof !80

if.end938.if.end977_crit_edge:                    ; preds = %if.end938
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end977

do.end971:                                        ; preds = %if.end938
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end977

if.end977:                                        ; preds = %do.end971, %if.end938.if.end977_crit_edge
  %196 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cur.i, align 4
  %198 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast995 = ptrtoint ptr %197 to i32
  %sub.ptr.rhs.cast996 = ptrtoint ptr %199 to i32
  %sub.ptr.sub997 = sub i32 %sub.ptr.lhs.cast995, %sub.ptr.rhs.cast996
  %200 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mem, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  %206 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %client, align 4
  %name1009 = getelementptr inbounds %struct.nvif_object, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %name1009 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %name1009, align 8
  %210 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %handle, align 4
  %212 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %205(ptr noundef %mem, ptr noundef nonnull @.str.35, ptr noundef %209, i32 noundef %211, ptr noundef %213, i32 noundef %sub.ptr.sub997, i32 noundef %or906) #5
  %214 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1018 = getelementptr i32, ptr %215, i32 1
  store ptr %incdec.ptr1018, ptr %cur.i, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %or906, ptr %215, align 4
  %handle1027 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 1
  %217 = ptrtoint ptr %handle1027 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %handle1027, align 4
  %219 = load ptr, ptr %cur.i, align 4
  %220 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %seg.i, align 8
  %cmp1036.not = icmp ult ptr %219, %221
  br i1 %cmp1036.not, label %if.end977.if.end1061_crit_edge, label %do.end1055, !prof !80

if.end977.if.end1061_crit_edge:                   ; preds = %if.end977
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1061

do.end1055:                                       ; preds = %if.end977
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1061

if.end1061:                                       ; preds = %do.end1055, %if.end977.if.end1061_crit_edge
  %222 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cur.i, align 4
  %224 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %end.i, align 4
  %cmp1075.not = icmp ult ptr %223, %225
  br i1 %cmp1075.not, label %if.end1061.if.end1100_crit_edge, label %do.end1094, !prof !80

if.end1061.if.end1100_crit_edge:                  ; preds = %if.end1061
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1100

do.end1094:                                       ; preds = %if.end1061
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1100

if.end1100:                                       ; preds = %do.end1094, %if.end1061.if.end1100_crit_edge
  %226 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cur.i, align 4
  %228 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1118 = ptrtoint ptr %227 to i32
  %sub.ptr.rhs.cast1119 = ptrtoint ptr %229 to i32
  %sub.ptr.sub1120 = sub i32 %sub.ptr.lhs.cast1118, %sub.ptr.rhs.cast1119
  %230 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %mem, align 8
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %231, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 4
  %236 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %client, align 4
  %name1132 = getelementptr inbounds %struct.nvif_object, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %name1132 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %name1132, align 8
  %240 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %handle, align 4
  %242 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %235(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %239, i32 noundef %241, ptr noundef %243, i32 noundef %sub.ptr.sub1120, i32 noundef %218) #5
  %244 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1141 = getelementptr i32, ptr %245, i32 1
  store ptr %incdec.ptr1141, ptr %cur.i, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %218, ptr %245, align 4
  %add1151 = add i32 %mul, 2240
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add1151)
  %tobool1155.not = icmp ult i32 %add1151, 4096
  br i1 %tobool1155.not, label %if.end1100.if.end1210_crit_edge, label %do.end1175, !prof !80

if.end1100.if.end1210_crit_edge:                  ; preds = %if.end1100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1210

do.end1175:                                       ; preds = %if.end1100
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end1210

if.end1210:                                       ; preds = %do.end1175, %if.end1100.if.end1210_crit_edge
  %247 = and i32 %add1151, 3264
  %248 = or i32 %247, 262144
  %249 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %cur.i, align 4
  %251 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %seg.i, align 8
  %cmp1236.not = icmp ult ptr %250, %252
  br i1 %cmp1236.not, label %if.end1210.if.end1261_crit_edge, label %do.end1255, !prof !80

if.end1210.if.end1261_crit_edge:                  ; preds = %if.end1210
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1261

do.end1255:                                       ; preds = %if.end1210
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1261

if.end1261:                                       ; preds = %do.end1255, %if.end1210.if.end1261_crit_edge
  %253 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %cur.i, align 4
  %255 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %end.i, align 4
  %cmp1275.not = icmp ult ptr %254, %256
  br i1 %cmp1275.not, label %if.end1261.if.end1300_crit_edge, label %do.end1294, !prof !80

if.end1261.if.end1300_crit_edge:                  ; preds = %if.end1261
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1300

do.end1294:                                       ; preds = %if.end1261
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1300

if.end1300:                                       ; preds = %do.end1294, %if.end1261.if.end1300_crit_edge
  %257 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %cur.i, align 4
  %259 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1318 = ptrtoint ptr %258 to i32
  %sub.ptr.rhs.cast1319 = ptrtoint ptr %260 to i32
  %sub.ptr.sub1320 = sub i32 %sub.ptr.lhs.cast1318, %sub.ptr.rhs.cast1319
  %261 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %mem, align 8
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %262, align 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %264, align 4
  %267 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %client, align 4
  %name1332 = getelementptr inbounds %struct.nvif_object, ptr %268, i32 0, i32 2
  %269 = ptrtoint ptr %name1332 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %name1332, align 8
  %271 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %handle, align 4
  %273 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %266(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %270, i32 noundef %272, ptr noundef %274, i32 noundef %sub.ptr.sub1320, i32 noundef %248, i32 noundef %add1151, i32 noundef 1, ptr noundef nonnull @__func__.head507d_core_set) #5
  %275 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1344 = getelementptr i32, ptr %276, i32 1
  store ptr %incdec.ptr1344, ptr %cur.i, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %248, ptr %276, align 4
  %x = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 6
  %278 = ptrtoint ptr %x to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %x, align 4
  %280 = and i16 %279, 32767
  %and1354 = zext i16 %280 to i32
  %y = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 5, i32 7
  %281 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %y, align 2
  %283 = and i16 %282, 32767
  %and1358 = zext i16 %283 to i32
  %shl1359 = shl nuw nsw i32 %and1358, 16
  %or1360 = or i32 %shl1359, %and1354
  %284 = load ptr, ptr %cur.i, align 4
  %285 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %seg.i, align 8
  %cmp1366.not = icmp ult ptr %284, %286
  br i1 %cmp1366.not, label %if.end1300.if.end1391_crit_edge, label %do.end1385, !prof !80

if.end1300.if.end1391_crit_edge:                  ; preds = %if.end1300
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1391

do.end1385:                                       ; preds = %if.end1300
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1391

if.end1391:                                       ; preds = %do.end1385, %if.end1300.if.end1391_crit_edge
  %287 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cur.i, align 4
  %289 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %end.i, align 4
  %cmp1405.not = icmp ult ptr %288, %290
  br i1 %cmp1405.not, label %if.end1391.if.end1430_crit_edge, label %do.end1424, !prof !80

if.end1391.if.end1430_crit_edge:                  ; preds = %if.end1391
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1430

do.end1424:                                       ; preds = %if.end1391
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1430

if.end1430:                                       ; preds = %do.end1424, %if.end1391.if.end1430_crit_edge
  %291 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cur.i, align 4
  %293 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1448 = ptrtoint ptr %292 to i32
  %sub.ptr.rhs.cast1449 = ptrtoint ptr %294 to i32
  %sub.ptr.sub1450 = sub i32 %sub.ptr.lhs.cast1448, %sub.ptr.rhs.cast1449
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
  %name1462 = getelementptr inbounds %struct.nvif_object, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %name1462 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %name1462, align 8
  %305 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %handle, align 4
  %307 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %name152, align 8
  tail call void (ptr, ptr, ...) %300(ptr noundef %mem, ptr noundef nonnull @.str.36, ptr noundef %304, i32 noundef %306, ptr noundef %308, i32 noundef %sub.ptr.sub1450, i32 noundef %or1360) #5
  %309 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1471 = getelementptr i32, ptr %310, i32 1
  store ptr %incdec.ptr1471, ptr %cur.i, align 4
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %or1360, ptr %310, align 4
  %curs = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6
  %312 = ptrtoint ptr %curs to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %curs, align 8, !range !81
  %set = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 14
  %314 = zext i8 %313 to i16
  %315 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %315)
  %bf.load1477 = load i16, ptr %set, align 8
  %bf.shl = shl nuw nsw i16 %314, 13
  %bf.clear1478 = and i16 %bf.load1477, 24575
  %bf.set = or i16 %bf.clear1478, %bf.shl
  %handle1480 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 4, i32 1
  %316 = ptrtoint ptr %handle1480 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %handle1480, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %cmp1481.not = icmp eq i32 %317, 0
  %bf.shl1485 = select i1 %cmp1481.not, i16 0, i16 -32768
  %bf.set1487 = or i16 %bf.shl1485, %bf.set
  %318 = ptrtoint ptr %set to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 %bf.set1487, ptr %set, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end1430, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1430 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head507d_curs_set(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 3
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body5_crit_edge, label %if.then.i

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body5_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

do.body5:                                         ; preds = %if.then.i.do.body5_crit_edge, %entry.do.body5_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 3
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add7 = add i32 %mul, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add7)
  %tobool39.not = icmp ult i32 %add7, 4096
  br i1 %tobool39.not, label %do.body5.if.end94_crit_edge, label %do.end59, !prof !80

do.body5.if.end94_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

do.end59:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end94

if.end94:                                         ; preds = %do.end59, %do.body5.if.end94_crit_edge
  %23 = and i32 %add7, 3200
  %24 = or i32 %23, 524288
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp112.not = icmp ult ptr %26, %28
  br i1 %cmp112.not, label %if.end94.if.end137_crit_edge, label %do.end131, !prof !80

if.end94.if.end137_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

do.end131:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end94.if.end137_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp150.not = icmp ult ptr %30, %32
  br i1 %cmp150.not, label %if.end137.if.end175_crit_edge, label %do.end169, !prof !80

if.end137.if.end175_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

do.end169:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end175

if.end175:                                        ; preds = %do.end169, %if.end137.if.end175_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 4
  %name192 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add7, i32 noundef 2, ptr noundef nonnull @__func__.head507d_curs_set) #5
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %format = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 3
  %54 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %format, align 2
  %55 = and i8 %bf.load, 3
  %and209 = zext i8 %55 to i32
  %shl210 = shl nuw nsw i32 %and209, 24
  %layout = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 2
  %56 = ptrtoint ptr %layout to i32
  call void @__asan_loadN_noabort(i32 %56, i32 6)
  %bf.load213 = load i48, ptr %layout, align 8
  %57 = trunc i48 %bf.load213 to i32
  %58 = shl i32 %57, 20
  %shl216 = and i32 %58, 67108864
  %or211 = or i32 %shl216, %shl210
  %or217 = or i32 %or211, -2147483648
  %59 = load ptr, ptr %cur.i, align 4
  %60 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %seg.i, align 8
  %cmp227.not = icmp ult ptr %59, %61
  br i1 %cmp227.not, label %if.end175.if.end252_crit_edge, label %do.end246, !prof !80

if.end175.if.end252_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end252

do.end246:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end252

if.end252:                                        ; preds = %do.end246, %if.end175.if.end252_crit_edge
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %64 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i, align 4
  %cmp266.not = icmp ult ptr %63, %65
  br i1 %cmp266.not, label %if.end252.if.end291_crit_edge, label %do.end285, !prof !80

if.end252.if.end291_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end291

do.end285:                                        ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end291

if.end291:                                        ; preds = %do.end285, %if.end252.if.end291_crit_edge
  %66 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast309 = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast310 = ptrtoint ptr %69 to i32
  %sub.ptr.sub311 = sub i32 %sub.ptr.lhs.cast309, %sub.ptr.rhs.cast310
  %70 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mem, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %76 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %client, align 4
  %name323 = getelementptr inbounds %struct.nvif_object, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %name323 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name323, align 8
  %80 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %handle, align 4
  %82 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %75(ptr noundef %mem, ptr noundef nonnull @.str.37, ptr noundef %79, i32 noundef %81, ptr noundef %83, i32 noundef %sub.ptr.sub311, i32 noundef %or217) #5
  %84 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cur.i, align 4
  %incdec.ptr332 = getelementptr i32, ptr %85, i32 1
  store ptr %incdec.ptr332, ptr %cur.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or217, ptr %85, align 4
  %87 = ptrtoint ptr %layout to i32
  call void @__asan_loadN_noabort(i32 %87, i32 6)
  %bf.load341 = load i48, ptr %layout, align 8
  %bf.lshr342 = lshr i48 %bf.load341, 16
  %conv345 = trunc i48 %bf.lshr342 to i32
  %88 = load ptr, ptr %cur.i, align 4
  %89 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %seg.i, align 8
  %cmp350.not = icmp ult ptr %88, %90
  br i1 %cmp350.not, label %if.end291.if.end375_crit_edge, label %do.end369, !prof !80

if.end291.if.end375_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end375

do.end369:                                        ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end375

if.end375:                                        ; preds = %do.end369, %if.end291.if.end375_crit_edge
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %93 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i, align 4
  %cmp389.not = icmp ult ptr %92, %94
  br i1 %cmp389.not, label %if.end375.if.end414_crit_edge, label %do.end408, !prof !80

if.end375.if.end414_crit_edge:                    ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end414

do.end408:                                        ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end414

if.end414:                                        ; preds = %do.end408, %if.end375.if.end414_crit_edge
  %95 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cur.i, align 4
  %97 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast432 = ptrtoint ptr %96 to i32
  %sub.ptr.rhs.cast433 = ptrtoint ptr %98 to i32
  %sub.ptr.sub434 = sub i32 %sub.ptr.lhs.cast432, %sub.ptr.rhs.cast433
  %99 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mem, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %105 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %client, align 4
  %name446 = getelementptr inbounds %struct.nvif_object, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %name446 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name446, align 8
  %109 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %handle, align 4
  %111 = ptrtoint ptr %name192 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %name192, align 8
  tail call void (ptr, ptr, ...) %104(ptr noundef %mem, ptr noundef nonnull @.str.38, ptr noundef %108, i32 noundef %110, ptr noundef %112, i32 noundef %sub.ptr.sub434, i32 noundef %conv345) #5
  %113 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cur.i, align 4
  %incdec.ptr455 = getelementptr i32, ptr %114, i32 1
  store ptr %incdec.ptr455, ptr %cur.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv345, ptr %114, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end414, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end414 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @head507d_curs_clr(ptr nocapture noundef readonly %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body6_crit_edge, label %if.then.i

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

do.body6:                                         ; preds = %if.then.i.do.body6_crit_edge, %entry.do.body6_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !80

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3200
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !80

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !80

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end133

if.end133:                                        ; preds = %do.end127, %if.end95.if.end133_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 4
  %name150 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.head507d_curs_clr) #5
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %54 = load ptr, ptr %cur.i, align 4
  %55 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %seg.i, align 8
  %cmp170.not = icmp ult ptr %54, %56
  br i1 %cmp170.not, label %if.end133.if.end195_crit_edge, label %do.end189, !prof !80

if.end133.if.end195_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

do.end189:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end195

if.end195:                                        ; preds = %do.end189, %if.end133.if.end195_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp209.not = icmp ult ptr %58, %60
  br i1 %cmp209.not, label %if.end195.if.end234_crit_edge, label %do.end228, !prof !80

if.end195.if.end234_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end234

do.end228:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end234

if.end234:                                        ; preds = %do.end228, %if.end195.if.end234_crit_edge
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast252 = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast253 = ptrtoint ptr %64 to i32
  %sub.ptr.sub254 = sub i32 %sub.ptr.lhs.cast252, %sub.ptr.rhs.cast253
  %65 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mem, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client, align 4
  %name266 = getelementptr inbounds %struct.nvif_object, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %name266 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name266, align 8
  %75 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %handle, align 4
  %77 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %70(ptr noundef %mem, ptr noundef nonnull @.str.37, ptr noundef %74, i32 noundef %76, ptr noundef %78, i32 noundef %sub.ptr.sub254, i32 noundef 83886080) #5
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %incdec.ptr275 = getelementptr i32, ptr %80, i32 1
  store ptr %incdec.ptr275, ptr %cur.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 83886080, ptr %80, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end234, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end234 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !14, !15, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !54, !56, !58, !59, !61, !62, !63, !65, !67, !68, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 39, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.head507d_procamp, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.head507d_dither, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 58, i32 2}
!11 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__func__.head507d_ovly, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 90, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__func__.head507d_base, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 118, i32 2}
!17 = !{ptr @__func__.head507d_core_clr, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 198, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 356, i32 2}
!22 = !{ptr @__func__.head507d_mode, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 365, i32 2}
!27 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.20, !26, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.21, !26, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.22, !26, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.23, !26, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.24, !26, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 393, i32 2}
!40 = !{ptr @__func__.head507d_view, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 410, i32 2}
!42 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 416, i32 2}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 420, i32 2}
!47 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @head507d, !49, !"head507d", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 431, i32 1}
!50 = !{ptr @__func__.head507d_olut_set, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 303, i32 2}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @__func__.head507d_olut_clr, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 288, i32 2}
!56 = !{ptr @__func__.head507d_core_set, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 212, i32 2}
!58 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 215, i32 2}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 233, i32 2}
!65 = !{ptr @__func__.head507d_curs_set, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 149, i32 2}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__func__.head507d_curs_clr, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/nouveau/dispnv50/head507d.c", i32 132, i32 2}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i8 0, i8 2}
!82 = !{i64 2158161106}
!83 = !{i64 5401484}
!84 = !{i64 2158161627}
!85 = !{i64 2158162148}
!86 = !{i64 2158163311}
!87 = !{i64 5401684}
!88 = !{i64 2158164166}
!89 = !{i64 2158165062}
!90 = !{i64 2158165917}
!91 = !{i64 2158166813}
!92 = !{i64 2158167668}
